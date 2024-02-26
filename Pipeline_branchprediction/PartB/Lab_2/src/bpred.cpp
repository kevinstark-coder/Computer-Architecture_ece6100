// --------------------------------------------------------------------- //
// For part B, you will need to modify this file.                        //
// You may add any code you need, as long as you correctly implement the //
// three required BPred methods already listed in this file.             //
// --------------------------------------------------------------------- //

// bpred.cpp
// Implements the branch predictor class.

#include "bpred.h"
#include <iostream>
using namespace std;
/**
 * Construct a branch predictor with the given policy.
 *
 * In part B of the lab, you must implement this constructor.
 *
 * @param policy the policy this branch predictor should use
 */
BPred::BPred(BPredPolicy policy)
{
    // TODO: Initialize member variables here.
    this->policy = policy;
    for (int i = 0; i < 4096; i++)
    {
        this->PHT[i] = 2;
    }
    this->GHR = 0;


}

// As a reminder, you can declare any additional member variables you need
// in the BPred class in bpred.h and initialize them here.


/**
 * Get a prediction for the branch with the given address.
 *
 * In part B of the lab, you must implement this method.
 *
 * @param pc the address (program counter) of the branch to predict
 * @return the prediction for whether the branch is taken or not taken
 */
BranchDirection BPred::predict(uint64_t pc)
{
    // TODO: Return a prediction for whether the branch at address pc will be
    // TAKEN or NOT_TAKEN according to this branch predictor's policy.

    if (this->policy == BPRED_ALWAYS_TAKEN)
    {
        return TAKEN;
    }
    else if (this->policy == BPRED_GSHARE)
    {
        //uint64_t max=0;
        //for (int i = 0; i < 4096; i++) {
        //    if (this->PHT[i] > max) {
        //        max = this->PHT[i];  
        //    }
        //}
        //cout << max << endl;
        uint64_t dir = this->PHT[(pc & 0xFFF) ^ (this->GHR & 0xFFF)];
        if ((dir == 0) || (dir == 1))
        {
            return NOT_TAKEN;
        }
        else if ((dir == 2) || (dir == 3))
        {
            return TAKEN;
        }
        // Handle other cases for dir if necessary
        // For now, we'll default to returning TAKEN
        return TAKEN;
    }
    else
    {
        return TAKEN;
    }
    // Note that you do not have to handle the BPRED_PERFECT policy here; this
    // function will not be called for that policy.

}


/**
 * Update the branch predictor statistics (stat_num_branches and
 * stat_num_mispred), as well as any other internal state you may need to
 * update in the branch predictor.
 *
 * In part B of the lab, you must implement this method.
 *
 * @param pc the address (program counter) of the branch
 * @param prediction the prediction made by the branch predictor
 * @param resolution the actual outcome of the branch
 *
 */


void BPred::update(uint64_t pc, BranchDirection prediction,
    BranchDirection resolution)
{
    uint64_t index;
    index = (pc & 0xFFF) ^ (this->GHR & 0xFFF);
    //cout << index << "     s" << endl;


    // TODO: Update the stat_num_branches and stat_num_mispred member variables
    // according to the prediction and resolution of the branch.


    if (this->policy == BPRED_PERFECT) {; }
    else if (this->policy == BPRED_GSHARE) {
        if (resolution) {
            //cout << "res1" << endl;
            //cout << this->PHT[index] << endl;
            this->PHT[index]=sat_increment(this->PHT[index], 3);
            //cout << this->PHT[index] << "     s" << endl;
            //cout << this->PHT[index] << endl;
            this->GHR = (this->GHR << 1) + 1;

        }
        else 
        {
            //cout << "res0" << endl;
            //cout << this->PHT[index] << endl;
            this->PHT[index]=sat_decrement(this->PHT[index]);
            //cout << this->PHT[index] << endl;
            this->GHR = this->GHR << 1;
        }
    }
    // TODO: Update any other internal state you may need to keep track of.
    else { ; }


    // Note that you do not have to handle the BPRED_PERFECT policy here; this
    // function will not be called for that policy.

}

