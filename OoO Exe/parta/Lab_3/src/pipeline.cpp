//////////////////////////////////////////////////////////////////////
// In part B, you must modify this file to implement the following: //
// - void pipe_cycle_issue(Pipeline *p)                             //
// - void pipe_cycle_schedule(Pipeline *p)                          //
// - void pipe_cycle_writeback(Pipeline *p)                         //
// - void pipe_cycle_commit(Pipeline *p)                            //
//////////////////////////////////////////////////////////////////////

// pipeline.cpp
// Implements the out-of-order pipeline.

#include "pipeline.h"
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

/**
 * The width of the pipeline; that is, the maximum number of instructions that
 * can be processed during any given cycle in each of the issue, schedule, and
 * commit stages of the pipeline.
 * 
 * (Note that this does not apply to the writeback stage: as many as
 * MAX_WRITEBACKS instructions can be written back to the ROB in a single
 * cycle!)
 * 
 * When the width is 1, the pipeline is scalar.
 * When the width is greater than 1, the pipeline is superscalar.
 */
extern uint32_t PIPE_WIDTH;

/**
 * The number of entries in the ROB; that is, the maximum number of
 * instructions that can be stored in the ROB at any given time.
 * 
 * You should use only this many entries of the ROB::entries array.
 */
extern uint32_t NUM_ROB_ENTRIES;

/**
 * Whether to use in-order scheduling or out-of-order scheduling.
 * 
 * The possible values are SCHED_IN_ORDER for in-order scheduling and
 * SCHED_OUT_OF_ORDER for out-of-order scheduling.
 * 
 * Your implementation of pipe_cycle_sched() should check this value and
 * implement scheduling of instructions accordingly.
 */
extern SchedulingPolicy SCHED_POLICY;

/**
 * The number of cycles an LD instruction should take to execute.
 * 
 * This is used by the code in exeq.cpp to determine how long to wait before
 * considering the execution of an LD instruction done.
 */
extern uint32_t LOAD_EXE_CYCLES;

/**
 * Read a single trace record from the trace file and use it to populate the
 * given fe_latch.
 * 
 * You should not modify this function.
 * 
 * @param p the pipeline whose trace file should be read
 * @param fe_latch the PipelineLatch struct to populate
 */
void pipe_fetch_inst(Pipeline *p, PipelineLatch *fe_latch)
{
    InstInfo *inst = &fe_latch->inst;
    TraceRec trace_rec;
    uint8_t *trace_rec_buf = (uint8_t *)&trace_rec;
    size_t bytes_read_total = 0;
    ssize_t bytes_read_last = 0;
    size_t bytes_left = sizeof(TraceRec);

    // Read a total of sizeof(TraceRec) bytes from the trace file.
    while (bytes_left > 0)
    {
        bytes_read_last = read(p->trace_fd, trace_rec_buf, bytes_left);
        if (bytes_read_last <= 0)
        {
            // EOF or error
            break;
        }

        trace_rec_buf += bytes_read_last;
        bytes_read_total += bytes_read_last;
        bytes_left -= bytes_read_last;
    }

    // Check for error conditions.
    if (bytes_left > 0 || trace_rec.op_type >= NUM_OP_TYPES)
    {
        fe_latch->valid = false;
        p->halt_inst_num = p->last_inst_num;

        if (p->stat_retired_inst >= p->halt_inst_num)
        {
            p->halt = true;
        }

        if (bytes_read_last == -1)
        {
            fprintf(stderr, "\n");
            perror("Couldn't read from pipe");
            return;
        }

        if (bytes_read_total == 0)
        {
            // No more trace records to read
            return;
        }

        // Too few bytes read or invalid op_type
        fprintf(stderr, "\n");
        fprintf(stderr, "Error: Invalid trace file\n");
        return;
    }

    // Got a valid trace record!
    fe_latch->valid = true;
    fe_latch->stall = false;
    inst->inst_num = ++p->last_inst_num;
    inst->op_type = (OpType)trace_rec.op_type;

    inst->dest_reg = trace_rec.dest_needed ? trace_rec.dest_reg : -1;
    inst->src1_reg = trace_rec.src1_needed ? trace_rec.src1_reg : -1;
    inst->src2_reg = trace_rec.src2_needed ? trace_rec.src2_reg : -1;

    inst->dr_tag = -1;
    inst->src1_tag = -1;
    inst->src2_tag = -1;
    inst->src1_ready = false;
    inst->src2_ready = false;
    inst->exe_wait_cycles = 0;
}

/**
 * Allocate and initialize a new pipeline.
 * 
 * You should not need to modify this function.
 * 
 * @param trace_fd the file descriptor from which to read trace records
 * @return a pointer to a newly allocated pipeline
 */
Pipeline *pipe_init(int trace_fd)
{
    printf("\n** PIPELINE IS %d WIDE **\n\n", PIPE_WIDTH);

    // Allocate pipeline.
    Pipeline *p = (Pipeline *)calloc(1, sizeof(Pipeline));

    // Initialize pipeline.
    p->rat = rat_init();
    p->rob = rob_init();
    p->exeq = exeq_init();
    p->trace_fd = trace_fd;
    p->halt_inst_num = (uint64_t)(-1) - 3;

    for (unsigned int i = 0; i < PIPE_WIDTH; i++)
    {
        p->FE_latch[i].valid = false;
        p->ID_latch[i].valid = false;
        p->SC_latch[i].valid = false;
    }
    for (unsigned int i = 0; i < MAX_WRITEBACKS; i++)
    {
        p->EX_latch[i].valid = false;
    }

    return p;
}

/**
 * Commit the given instruction.
 * 
 * This updates counters and flags on the pipeline.
 * 
 * This function is implemented for you. You should not modify it.
 * 
 * @param p the pipeline to update.
 * @param inst the instruction to commit.
 */
void pipe_commit_inst(Pipeline *p, InstInfo inst)
{
    p->stat_retired_inst++;

    if (inst.inst_num >= p->halt_inst_num)
    {
        p->halt = true;
    }
}

/**
 * Print out the state of the pipeline for debugging purposes.
 * 
 * You may use this function to help debug your pipeline implementation, but
 * please remove calls to this function before submitting the lab.
 * 
 * @param p the pipeline
 */
void pipe_print_state(Pipeline *p)
{
    printf("\n");
    // Print table header
    for (unsigned int latch_type = 0; latch_type < 4; latch_type++)
    {
        switch (latch_type)
        {
        case 0:
            printf(" FE:    ");
            break;
        case 1:
            printf(" ID:    ");
            break;
        case 2:
            printf(" SCH:   ");
            break;
        case 3:
            printf(" EX:    ");
            break;
        default:
            printf(" ------ ");
        }
    }
    printf("\n");

    // Print row for each lane in pipeline width
    unsigned int ex_i = 0;
    for (unsigned int i = 0; i < PIPE_WIDTH; i++)
    {
        if (p->FE_latch[i].valid)
        {
            printf(" %6lu ",
                   (unsigned long)p->FE_latch[i].inst.inst_num);
        }
        else
        {
            printf(" ------ ");
        }
        if (p->ID_latch[i].valid)
        {
            printf(" %6lu ",
                   (unsigned long)p->ID_latch[i].inst.inst_num);
        }
        else
        {
            printf(" ------ ");
        }
        if (p->SC_latch[i].valid)
        {
            printf(" %6lu ",
                   (unsigned long)p->SC_latch[i].inst.inst_num);
        }
        else
        {
            printf(" ------ ");
        }
        bool flag = false;
        for (; ex_i < MAX_WRITEBACKS; ex_i++)
        {
            if (p->EX_latch[ex_i].valid)
            {
                printf(" %6lu ",
                       (unsigned long)p->EX_latch[ex_i].inst.inst_num);
                ex_i++;
                flag = true;
                break;
            }
        }
        if (!flag) {
            printf(" ------ ");
        }
        printf("\n");
    }
    printf("\n");

    rat_print_state(p->rat);
    exeq_print_state(p->exeq);
    rob_print_state(p->rob);
}

/**
 * Simulate one cycle of all stages of a pipeline.
 * 
 * You should not need to modify this function except for debugging purposes.
 * If you add code to print debug output in this function, remove it or comment
 * it out before you submit the lab.
 * 
 * @param p the pipeline to simulate
 */
void pipe_cycle(Pipeline *p)
{
    p->stat_num_cycle++;

    #ifdef DEBUG
        printf("\n--------------------------------------------\n");
        printf("Cycle count: %lu, retired instructions: %lu\n\n",
           (unsigned long)p->stat_num_cycle,
           (unsigned long)p->stat_retired_inst);
    #endif
    
    // In our simulator, stages are processed in reverse order.
    pipe_cycle_commit(p);
    pipe_cycle_writeback(p);
    //printf(" ccc3  %d\n", int(p->rob->entries[31].valid));
    pipe_cycle_exe(p);
    //printf(" ccc4  %d\n", int(p->rob->entries[31].valid));
    pipe_cycle_schedule(p);
    //printf(" ccc5  %d\n", int(p->rob->entries[31].valid));
    pipe_cycle_issue(p);
    //printf(" ccc6  %d\n", int(p->rob->entries[31].valid));
    pipe_cycle_decode(p);
    pipe_cycle_fetch(p);

    // Compile with "make debug" to have this show!
    #ifdef DEBUG
        pipe_print_state(p);
    #endif

}

/**
 * Simulate one cycle of the fetch stage of a pipeline.
 * 
 * This function is implemented for you. You should not modify it.
 * 
 * @param p the pipeline to simulate
 */
void pipe_cycle_fetch(Pipeline *p)
{
    for (unsigned int i = 0; i < PIPE_WIDTH; i++)
    {
        if (!p->FE_latch[i].stall && !p->FE_latch[i].valid)
        {
            //printf("fetch\n");
            //printf("------------------------------------------------------------");
            //printf("%d\n", p->FE_latch[i].stall);
            //printf("%d\n", p->FE_latch[i].valid);
            // No stall and latch empty, so fetch a new instruction.
            pipe_fetch_inst(p, &p->FE_latch[i]);
        }
    }


}

/**
 * Simulate one cycle of the instruction decode stage of a pipeline.
 * 
 * This function is implemented for you. You should not modify it.
 * 
 * @param p the pipeline to simulate
 */
void pipe_cycle_decode(Pipeline *p)
{
    
    static uint64_t next_inst_num = 1;
    for (unsigned int i = 0; i < PIPE_WIDTH; i++)
    {
        //printf("p->ID_latch[i].valid");
        //printf("            %d\n", p->ID_latch[i].valid);
        //printf("p->ID_latch[i].stall");
        //printf("            %d\n", p->ID_latch[i].stall);
        if (!p->ID_latch[i].stall && !p->ID_latch[i].valid)
        {
            //printf("decode\n");
            // No stall and latch empty, so decode the next instruction.
            // Loop to find the next in-order instruction.
            for (unsigned int j = 0; j < PIPE_WIDTH; j++)
            {
                if (p->FE_latch[j].valid &&
                    p->FE_latch[j].inst.inst_num == next_inst_num)
                {
                    p->ID_latch[i] = p->FE_latch[j];
                    p->FE_latch[j].valid = false;
                    next_inst_num++;
                    break;
                }
            }
        }
    }

}

/**
 * Simulate one cycle of the execute stage of a pipeline. This handles
 * instructions that take multiple cycles to execute.
 * 
 * This function is implemented for you. You should not modify it.
 * 
 * @param p the pipeline to simulate
 */
void pipe_cycle_exe(Pipeline *p)
{
    //printf("exe\n");
    // If all operations are single-cycle, just copy SC latches to EX latches.
    if (LOAD_EXE_CYCLES == 1)
    {
        for (unsigned int i = 0; i < PIPE_WIDTH; i++)
        {
            if (p->SC_latch[i].valid)
            {
                p->EX_latch[i] = p->SC_latch[i];
                p->SC_latch[i].valid = false;
                printf("valid ex %d", p->SC_latch[0].valid);
            }
        }
        return;
    }

    // Otherwise, we need to handle multi-cycle instructions with EXEQ.

    // All valid entries from the SC latches are inserted into the EXEQ.
    for (unsigned int i = 0; i < PIPE_WIDTH; i++)
    {
        if (p->SC_latch[i].valid)
        {
            if (!exeq_insert(p->exeq, p->SC_latch[i].inst))
            {
                fprintf(stderr, "Error: EXEQ full\n");
                p->halt = true;
                return;
            }
            /*printf("way 3 %d\n", int(p->SC_latch[i].valid));*/
            p->SC_latch[i].valid = false;
        }
    }

    // Cycle the EXEQ to reduce wait time for each instruction by 1 cycle.
    exeq_cycle(p->exeq);

    // Transfer all finished entries from the EXEQ to the EX latch.
    for (unsigned int i = 0; i < MAX_WRITEBACKS && exeq_check_done(p->exeq); i++)
    {
        p->EX_latch[i].valid = true;
        p->EX_latch[i].stall = false;
        p->EX_latch[i].inst = exeq_remove(p->exeq);
    }
    //printf("valid ex2 %d", p->SC_latch[0].valid);
}

/**
 * Simulate one cycle of the issue stage of a pipeline: insert decoded
 * instructions into the ROB and perform register renaming.
 * 
 * You must implement this function in pipeline.cpp in part B of the
 * assignment.
 * 
 * @param p the pipeline to simulate
 */
void pipe_cycle_issue(Pipeline *p)
{

    // TODO: For each valid instruction from the ID stage:
    for (unsigned int i = 0; i < PIPE_WIDTH; i++)
    {
        if (p->ID_latch[i].valid)
        {
            //printf("issue\n");
            InstInfo inst = p->ID_latch[i].inst;
            // TODO: If there is space in the ROB, insert the instruction.
            int prf_id = rob_insert(p->rob, inst); //set valid,exe,ready,info
            //printf("value of prf-id %d\n", prf_id);
            if(prf_id!=-1)//enough space
            {
                //printf("        issue2\n");
                InstInfo &inst = p->rob->entries[prf_id].inst;
                //printf("value of tag %d\n", inst.src1_tag);
                //printf("value of seg %d\n", inst.src1_reg);
                // TODO: Set the entry invalid in the previous latch when you do so.
                p->ID_latch[i].valid = false;
                // TODO: Then, check RAT for this instruction's source operands:
                if (inst.src1_reg == -1) //not mapped or no use of r1
                {
                    /*printf("src1 ready %d\n", inst.src1_reg);*/
                    inst.src1_ready = true;
                    /*printf("src1_ready 1 %d", p->rob->entries[prf_id].inst.src1_ready);*/
                }
                else
                {
                    //printf("src1_ready 2  %d", p->rob->entries[prf_id].inst.src1_ready);
                    inst.src1_tag = rat_get_remap(p->rat, inst.src1_reg);
                    //printf("value of src1 tag %d", inst.src1_tag);
                    if (inst.src1_tag == -1)
                    {
                        inst.src1_ready = true;
                        //printf("src1_ready 3  %d", p->rob->entries[prf_id].inst.src1_ready);
                    }
                    else
                    {
                        if (p->rob->entries[inst.src1_tag].ready)
                            inst.src1_ready = true;
                        else 
                        {
                            //printf("value of src1 tag false %d", inst.src1_tag);
                            inst.src1_ready = false;
                        }
                    }
                }
                if (inst.src2_reg == -1) //not mapped or no use of r1
                {

                    inst.src2_ready = true;
                }
                else
                {
                    int src2_tag = rat_get_remap(p->rat, inst.src2_reg);
                    if (src2_tag == -1)
                        inst.src2_ready = true;
                    else
                    {
                        if (p->rob->entries[src2_tag].ready)
                            inst.src2_ready = true;
                        else
                            inst.src2_ready = false;
                    }
                }
                //printf(" ccc7  %d\n", int(p->rat->entries[24].valid));
                
                if (inst.dest_reg != -1)
                {
                    //printf("value of dest_reg %d\n", int(inst.dest_reg));
                    //printf("value of prf_id %d\n", int(prf_id));
                    //printf("value of ins_num %d\n", int(inst.inst_num));
                    inst.dr_tag = prf_id;
                    rat_set_remap(p->rat, inst.dest_reg, prf_id);
                }
                //printf(" ccc8  %d\n", int(p->rat->entries[24].valid));
            }
            else 
            {
                ;
            }

        }

    }
    // TODO: If src1 is not remapped, mark src1 as ready.
    // TODO: If src1 is remapped, set src1 tag accordingly, and set src1 ready
    //       according to whether the ROB entry with that tag is ready.
    // TODO: If src2 is not remapped, mark src2 as ready.
    // TODO: If src2 is remapped, set src2 tag accordingly, and set src2 ready
    //       according to whether the ROB entry with that tag is ready.

    // TODO: Set the tag for this instruction's destination register.
    // TODO: If this instruction writes to a register, update the RAT
    //       accordingly.


}

/**
 * Simulate one cycle of the scheduling stage of a pipeline: schedule
 * instructions to execute if they are ready.
 * 
 * You must implement this function in pipeline.cpp in part B of the
 * assignment.
 * 
 * @param p the pipeline to simulate
 */
void pipe_cycle_schedule(Pipeline *p)
{
    // TODO: Implement two scheduling policies:

    if (SCHED_POLICY == SCHED_IN_ORDER)
    {
        // In-order scheduling:
        // TODO: Find the oldest valid entry in the ROB that is not already
        //       executing.
        //printf("sche\n");
        for (unsigned int i = 0; i < PIPE_WIDTH; i++)
        {
            int stop;
            int* stop_ptr = &stop;
            if ((p->rob->head_ptr) >= (p->rob->tail_ptr))
                stop = 32 + p->rob->tail_ptr;
            else
            {
                stop = p->rob->tail_ptr;
                //printf("p->rob->head_ptr %d\n", p->rob->head_ptr);
                /*printf("p->rob->tail_ptr %d\n", p->rob->tail_ptr);*/
            }
            //printf("stop %d\n", stop  );
            //printf("p->rob->head_ptr %d\n", p->rob->head_ptr);

            for (int ii = p->rob->head_ptr; ii < stop; ii++)
            {

                //skip

                //printf("value of ii %d\n", ii);
                //printf("value of tail ptr %d\n", int(p->rob->tail_ptr));
                //printf("value of stop %d\n", stop);
                if ((p->rob->entries[ii].exec == true && p->rob->entries[ii].valid == true) || (p->rob->entries[ii].valid == false))
                {
                    if ((ii == 31) && (*stop_ptr >= 31))
                    {
                        ii = ii - 32;
                        stop = stop - 32;
                    }
                    continue;
                }
                else
                {
                    /*printf("way2 %d\n", ii);*/
                    //check if need to be stalled
                    //printf("valid sc %d", p->SC_latch[0].valid);
                    if ((p->rob->entries[ii].inst.src1_ready != true) || (p->rob->entries[ii].inst.src2_ready != true))
                    {
                        //printf("wrong way");
                        if (ii == stop - 1)
                        {

                            p->SC_latch[i].valid = false;
                            /*printf("wrong way 1 \n");*/
                        }
                        continue;
                    }

                    else
                    {
                        if (p->SC_latch[i].valid == true)
                        {
                            //printf("wrong way 2 \n");
                            break;
                            if ((ii == 31) && (*stop_ptr >= 31))
                            {
                                /*printf("b");*/
                                ii = ii - 31;
                                stop = stop - 32;
                            }
                        }
                        else
                        {
                            //printf("wrong way 3 \n");
                            p->SC_latch[i].valid = true;
                            p->SC_latch[i].inst = p->rob->entries[ii].inst;
                            //printf("schedule instruction number%d", int(p->SC_latch[i].inst.inst_num));
                            p->rob->entries[ii].exec = true;
                            if ((ii == 31) && (*stop_ptr >= 31))
                            {
                                /*printf("b");*/
                                ii = ii - 31;
                                stop = stop - 32;
                            }
                            break;
                        }
                    }
                }



            }
        }

        // TODO: Check if it is stalled, i.e., if at least one source operand
        //       is not ready.
        
        // TODO: If so, stop scheduling instructions.
        // TODO: Otherwise, mark it as executing in the ROB and send it to the
        //       next latch.
        // TODO: Repeat for each lane of the pipeline.
    }

    if (SCHED_POLICY == SCHED_OUT_OF_ORDER)
    {
        for (unsigned int i = 0; i < PIPE_WIDTH; i++)
        {
            int stop;
            int *stop_ptr = &stop;
            if ((p->rob->head_ptr) >= (p->rob->tail_ptr))
                stop = 32 + p->rob->tail_ptr;
            else
            {
                stop = p->rob->tail_ptr;               
                //printf("p->rob->head_ptr %d\n", p->rob->head_ptr);
                /*printf("p->rob->tail_ptr %d\n", p->rob->tail_ptr);*/
            }
            //printf("stop %d\n", stop  );
            //printf("p->rob->head_ptr %d\n", p->rob->head_ptr);

            for (int ii = p->rob->head_ptr; ii < stop; ii++)
            {

                //skip
                
                //printf("value of ii %d\n", ii);
                //printf("value of tail ptr %d\n", int(p->rob->tail_ptr));
                //printf("value of stop %d\n", stop);
                if ((p->rob->entries[ii].exec == true && p->rob->entries[ii].valid == true) || (p->rob->entries[ii].valid == false))
                {
                    if ((ii == 31) && (*stop_ptr >= 31))
                    {
                        ii = ii - 32;
                        stop = stop - 32;
                    }
                    continue;
                }
                else
                {   
                    /*printf("way2 %d\n", ii);*/
                    //check if need to be stalled
                    //printf("valid sc %d", p->SC_latch[0].valid);
                    if ((p->rob->entries[ii].inst.src1_ready != true) || (p->rob->entries[ii].inst.src2_ready != true))
                    {   
                        //printf("wrong way");
                        if (ii == stop - 1) 
                        {
                            
                            p->SC_latch[i].valid = false;
                            /*printf("wrong way 1 \n");*/
                        }
                        continue;
                    }
                    
                    else
                    {
                        if (p->SC_latch[i].valid == true) 
                        {
                            //printf("wrong way 2 \n");
                            break;
                            if ((ii == 31) && (*stop_ptr >= 31))
                            {
                                /*printf("b");*/
                                ii = ii - 31;
                                stop = stop - 32;
                            }
                        }
                        else
                        {
                            //printf("wrong way 3 \n");
                            p->SC_latch[i].valid = true;
                            p->SC_latch[i].inst = p->rob->entries[ii].inst;
                            //printf("schedule instruction number%d", int(p->SC_latch[i].inst.inst_num));
                            p->rob->entries[ii].exec = true;                
                            if ((ii == 31) && (*stop_ptr >= 31))
                            {
                                /*printf("b");*/
                                ii = ii - 31;
                                stop = stop - 32;
                            }
                            break;
                        }
                    }
                }



            }
        }
        // Out-of-order scheduling:
        // TODO: Find the oldest valid entry in the ROB that has both source
        
        //       operands ready but is not already executing.
        // TODO: Mark it as executing in the ROB and send it to the next latch.
        
        // TODO: Repeat for each lane of the pipeline.

    }
    
}

/**
 * Simulate one cycle of the writeback stage of a pipeline: update the ROB
 * with information from instructions that have finished executing.
 * 
 * You must implement this function in pipeline.cpp in part B of the
 * assignment.
 * 
 * @param p the pipeline to simulate
 */
void pipe_cycle_writeback(Pipeline *p)
{

    // TODO: For each valid instruction from the EX stage:
    for (unsigned int i = 0; i < MAX_EXEQ_ENTRIES; i++)
    {
        //printf("writeback\n");
        // TODO: Broadcast the result to all ROB entries.
        if (p->EX_latch[i].valid)
        {
            //printf("dr tag   %d", int(p->EX_latch[i].inst.dr_tag));
            rob_wakeup(p->rob, p->EX_latch[i].inst.dr_tag);
            
        // TODO: Update the ROB: mark the instruction ready to commit.
            //printf("end1  %10d \n", int(p->rat->entries[29].prf_id));
            rob_mark_ready(p->rob, p->EX_latch[i].inst);
            //printf("end5  %10d \n", int(p->rat->entries[29].prf_id));
        // TODO: Invalidate the instruction in the previous latch.
            p->EX_latch[i].valid = false;
            
        }
        
    }
    // Remember: how many instructions can the EX stage send to the WB stage
    // in one cycle?

}

/**
 * Simulate one cycle of the commit stage of a pipeline: commit instructions
 * in the ROB that are ready to commit.
 * 
 * You must implement this function in pipeline.cpp in part B of the
 * assignment.
 * 
 * @param p the pipeline to simulate
 */
void pipe_cycle_commit(Pipeline *p)
{
    //printf("------------");

    // TODO: Check if the instruction at the head of the ROB is ready to
    //       commit.
    for (unsigned int i = 0; i < PIPE_WIDTH; i++)
    {
        
        if(p->rob->entries[p->rob->head_ptr].valid)
        {

            //printf("commit\n");
            if (rob_check_ready(p->rob, p->rob->head_ptr))
            {
                /*printf("p->rob->head_ptr %d", p->rob->head_ptr);*/
                
                pipe_commit_inst(p, p->rob->entries[p->rob->head_ptr].inst);

                int dr_prf = rat_get_remap(p->rat, p->rob->entries[p->rob->head_ptr].inst.dest_reg);
                
                if (dr_prf == p->rob->entries[p->rob->head_ptr].inst.dr_tag)
                {
                    rat_reset_entry(p->rat, p->rob->entries[p->rob->head_ptr].inst.dest_reg);
                }
                rob_remove_head(p->rob);
            }
            //printf(" ccc2  %d\n", int(p->rat->entries[24].valid));
        }

        
    }
    // TODO: If so, remove it from the ROB.
    // TODO: Commit that instruction.
    // TODO: If a RAT mapping exists and is still relevant, update the RAT.
    // TODO: Repeat for each lane of the pipeline.

    // The following code is DUMMY CODE to ensure that the base code compiles
    // and that the simulation terminates. Replace it with a correct
    // implementation!

}
