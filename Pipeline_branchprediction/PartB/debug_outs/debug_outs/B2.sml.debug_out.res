Opening trace file with gunzip: ../traces/sml.ptr.gz

** PIPELINE IS 2 WIDE **

Retiring NOP!
Retiring NOP!
Moving NOP from EX to MA...
Moving NOP from EX to MA...
Moving NOP from ID to EX...
Moving NOP from ID to EX...
Moving NOP from IF to ID...
Moving NOP from IF to ID...
Fetching 1!
	Prediction: 1, Actual: 1
	GHR: 0x001
	Updated PHT @ index 984: 3
Fetching 2!

--------------------------------------------
Cycle count: 1, retired instructions: 0
 IF:     ID:     EX:     MA:    
      1  ------  ------  ------ 
      2  ------  ------  ------ 
(1 : BR) dest: -1, src1: -1, src2: -1 , ccread: 1, ccwrite: 0, br_dir: 1
 ------ 
 ------ 
 ------ 

(2 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
 ------ 
 ------ 
 ------ 

Retiring NOP!
Retiring NOP!
Moving NOP from EX to MA...
Moving NOP from EX to MA...
Moving NOP from ID to EX...
Moving NOP from ID to EX...
Moving I1 from IF to ID...
Moving I2 from IF to ID...
Fetching 3!
Fetching 4!

--------------------------------------------
Cycle count: 2, retired instructions: 0
 IF:     ID:     EX:     MA:    
      3       1  ------  ------ 
      4       2  ------  ------ 
(3 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(1 : BR) dest: -1, src1: -1, src2: -1 , ccread: 1, ccwrite: 0, br_dir: 1
 ------ 
 ------ 

(4 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(2 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
 ------ 
 ------ 

Retiring NOP!
Retiring NOP!
Moving NOP from EX to MA...
Moving NOP from EX to MA...
Moving I1 from ID to EX...
Moving I2 from ID to EX...
Moving I3 from IF to ID...
Moving I4 from IF to ID...
Fetching 5!
Fetching 6!

--------------------------------------------
Cycle count: 3, retired instructions: 0
 IF:     ID:     EX:     MA:    
      5       3       1  ------ 
      6       4       2  ------ 
(5 : LD) dest: 19, src1: -1, src2: -1 , ccread: 0, ccwrite: 1, br_dir: 0
(3 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(1 : BR) dest: -1, src1: -1, src2: -1 , ccread: 1, ccwrite: 0, br_dir: 1
 ------ 

(6 : LD) dest: 19, src1: -1, src2: -1 , ccread: 0, ccwrite: 1, br_dir: 0
(4 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(2 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
 ------ 

Retiring NOP!
Retiring NOP!
Moving I1 from EX to MA...
Moving I2 from EX to MA...
Moving I3 from ID to EX...
Moving I4 from ID to EX...
Moving I5 from IF to ID...
Moving I6 from IF to ID...
Fetching 7!
Fetching 8!

--------------------------------------------
Cycle count: 4, retired instructions: 0
 IF:     ID:     EX:     MA:    
      7       5       3       1 
      8       6       4       2 
(7 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(5 : LD) dest: 19, src1: -1, src2: -1 , ccread: 0, ccwrite: 1, br_dir: 0
(3 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(1 : BR) dest: -1, src1: -1, src2: -1 , ccread: 1, ccwrite: 0, br_dir: 1

(8 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(6 : LD) dest: 19, src1: -1, src2: -1 , ccread: 0, ccwrite: 1, br_dir: 0
(4 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(2 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0

Retiring I1!
Retiring I2!
Moving I3 from EX to MA...
Moving I4 from EX to MA...
Moving I5 from ID to EX...
Moving I6 from ID to EX...
Moving I7 from IF to ID...
Moving I8 from IF to ID...
Fetching 9!
Fetching 10!

--------------------------------------------
Cycle count: 5, retired instructions: 2
 IF:     ID:     EX:     MA:    
      9       7       5       3 
     10       8       6       4 
(9 : ALU) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 1, br_dir: 0
(7 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(5 : LD) dest: 19, src1: -1, src2: -1 , ccread: 0, ccwrite: 1, br_dir: 0
(3 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0

(10 : ALU) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 1, br_dir: 0
(8 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(6 : LD) dest: 19, src1: -1, src2: -1 , ccread: 0, ccwrite: 1, br_dir: 0
(4 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0

Retiring I3!
Retiring I4!
Moving I5 from EX to MA...
Moving I6 from EX to MA...
Moving I7 from ID to EX...
Moving I8 from ID to EX...
Moving I9 from IF to ID...
Moving I10 from IF to ID...
Fetching 11!
	Prediction: 1, Actual: 0
	Mispredicted! Stalling our pipeline!
	GHR: 0x002
	Updated PHT @ index 1215: 1
Stalling P1's IF because fetch_cbr_stall is on!

--------------------------------------------
Cycle count: 6, retired instructions: 4
 IF:     ID:     EX:     MA:    
     11       9       7       5 
 ------      10       8       6 
(11 : BR) dest: -1, src1: -1, src2: -1 , ccread: 1, ccwrite: 0, br_dir: 0
(9 : ALU) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 1, br_dir: 0
(7 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(5 : LD) dest: 19, src1: -1, src2: -1 , ccread: 0, ccwrite: 1, br_dir: 0

 ------ 
(10 : ALU) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 1, br_dir: 0
(8 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(6 : LD) dest: 19, src1: -1, src2: -1 , ccread: 0, ccwrite: 1, br_dir: 0

Retiring I5!
Retiring I6!
Moving I7 from EX to MA...
Moving I8 from EX to MA...
Moving I9 from ID to EX...
Moving I10 from ID to EX...
Moving I11 from IF to ID...
Moving NOP from IF to ID...
Stalling P0's IF because fetch_cbr_stall is on!
Stalling P1's IF because fetch_cbr_stall is on!

--------------------------------------------
Cycle count: 7, retired instructions: 6
 IF:     ID:     EX:     MA:    
 ------      11       9       7 
 ------  ------      10       8 
 ------ 
(11 : BR) dest: -1, src1: -1, src2: -1 , ccread: 1, ccwrite: 0, br_dir: 0
(9 : ALU) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 1, br_dir: 0
(7 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0

 ------ 
 ------ 
(10 : ALU) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 1, br_dir: 0
(8 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0

Retiring I7!
Retiring I8!
Moving I9 from EX to MA...
Moving I10 from EX to MA...
Moving I11 from ID to EX...
Moving NOP from ID to EX...
Moving NOP from IF to ID...
Moving NOP from IF to ID...
Stalling P0's IF because fetch_cbr_stall is on!
Stalling P1's IF because fetch_cbr_stall is on!

--------------------------------------------
Cycle count: 8, retired instructions: 8
 IF:     ID:     EX:     MA:    
 ------  ------      11       9 
 ------  ------  ------      10 
 ------ 
 ------ 
(11 : BR) dest: -1, src1: -1, src2: -1 , ccread: 1, ccwrite: 0, br_dir: 0
(9 : ALU) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 1, br_dir: 0

 ------ 
 ------ 
 ------ 
(10 : ALU) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 1, br_dir: 0

Retiring I9!
Retiring I10!
Moving I11 from EX to MA...
Moving NOP from EX to MA...
Moving NOP from ID to EX...
Moving NOP from ID to EX...
Moving NOP from IF to ID...
Moving NOP from IF to ID...
Stalling P0's IF because fetch_cbr_stall is on!
Stalling P1's IF because fetch_cbr_stall is on!

--------------------------------------------
Cycle count: 9, retired instructions: 10
 IF:     ID:     EX:     MA:    
 ------  ------  ------      11 
 ------  ------  ------  ------ 
 ------ 
 ------ 
 ------ 
(11 : BR) dest: -1, src1: -1, src2: -1 , ccread: 1, ccwrite: 0, br_dir: 0

 ------ 
 ------ 
 ------ 
 ------ 

Retiring I11!
	I11 had is_mispred_cbr set to 1! Alleviating pipeline stall!
Retiring NOP!
Moving NOP from EX to MA...
Moving NOP from EX to MA...
Moving NOP from ID to EX...
Moving NOP from ID to EX...
Moving NOP from IF to ID...
Moving NOP from IF to ID...
Fetching 12!
Fetching 13!

--------------------------------------------
Cycle count: 10, retired instructions: 11
 IF:     ID:     EX:     MA:    
     12  ------  ------  ------ 
     13  ------  ------  ------ 
(12 : LD) dest: 19, src1: -1, src2: -1 , ccread: 0, ccwrite: 1, br_dir: 0
 ------ 
 ------ 
 ------ 

(13 : LD) dest: 19, src1: -1, src2: -1 , ccread: 0, ccwrite: 1, br_dir: 0
 ------ 
 ------ 
 ------ 

Retiring NOP!
Retiring NOP!
Moving NOP from EX to MA...
Moving NOP from EX to MA...
Moving NOP from ID to EX...
Moving NOP from ID to EX...
Moving I12 from IF to ID...
Moving I13 from IF to ID...
Fetching 14!
Fetching 15!

--------------------------------------------
Cycle count: 11, retired instructions: 11
 IF:     ID:     EX:     MA:    
     14      12  ------  ------ 
     15      13  ------  ------ 
(14 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(12 : LD) dest: 19, src1: -1, src2: -1 , ccread: 0, ccwrite: 1, br_dir: 0
 ------ 
 ------ 

(15 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(13 : LD) dest: 19, src1: -1, src2: -1 , ccread: 0, ccwrite: 1, br_dir: 0
 ------ 
 ------ 

Retiring NOP!
Retiring NOP!
Moving NOP from EX to MA...
Moving NOP from EX to MA...
Moving I12 from ID to EX...
Moving I13 from ID to EX...
Moving I14 from IF to ID...
Moving I15 from IF to ID...
Fetching 16!
Fetching 17!

--------------------------------------------
Cycle count: 12, retired instructions: 11
 IF:     ID:     EX:     MA:    
     16      14      12  ------ 
     17      15      13  ------ 
(16 : ALU) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 1, br_dir: 0
(14 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(12 : LD) dest: 19, src1: -1, src2: -1 , ccread: 0, ccwrite: 1, br_dir: 0
 ------ 

(17 : ALU) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 1, br_dir: 0
(15 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(13 : LD) dest: 19, src1: -1, src2: -1 , ccread: 0, ccwrite: 1, br_dir: 0
 ------ 

Retiring NOP!
Retiring NOP!
Moving I12 from EX to MA...
Moving I13 from EX to MA...
Moving I14 from ID to EX...
Moving I15 from ID to EX...
Moving I16 from IF to ID...
Moving I17 from IF to ID...
Fetching 18!
	Prediction: 1, Actual: 0
	Mispredicted! Stalling our pipeline!
	GHR: 0x004
	Updated PHT @ index 1233: 1
Stalling P1's IF because fetch_cbr_stall is on!

--------------------------------------------
Cycle count: 13, retired instructions: 11
 IF:     ID:     EX:     MA:    
     18      16      14      12 
 ------      17      15      13 
(18 : BR) dest: -1, src1: -1, src2: -1 , ccread: 1, ccwrite: 0, br_dir: 0
(16 : ALU) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 1, br_dir: 0
(14 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(12 : LD) dest: 19, src1: -1, src2: -1 , ccread: 0, ccwrite: 1, br_dir: 0

 ------ 
(17 : ALU) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 1, br_dir: 0
(15 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(13 : LD) dest: 19, src1: -1, src2: -1 , ccread: 0, ccwrite: 1, br_dir: 0

Retiring I12!
Retiring I13!
Moving I14 from EX to MA...
Moving I15 from EX to MA...
Moving I16 from ID to EX...
Moving I17 from ID to EX...
Moving I18 from IF to ID...
Moving NOP from IF to ID...
Stalling P0's IF because fetch_cbr_stall is on!
Stalling P1's IF because fetch_cbr_stall is on!

--------------------------------------------
Cycle count: 14, retired instructions: 13
 IF:     ID:     EX:     MA:    
 ------      18      16      14 
 ------  ------      17      15 
 ------ 
(18 : BR) dest: -1, src1: -1, src2: -1 , ccread: 1, ccwrite: 0, br_dir: 0
(16 : ALU) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 1, br_dir: 0
(14 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0

 ------ 
 ------ 
(17 : ALU) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 1, br_dir: 0
(15 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0

Retiring I14!
Retiring I15!
Moving I16 from EX to MA...
Moving I17 from EX to MA...
Moving I18 from ID to EX...
Moving NOP from ID to EX...
Moving NOP from IF to ID...
Moving NOP from IF to ID...
Stalling P0's IF because fetch_cbr_stall is on!
Stalling P1's IF because fetch_cbr_stall is on!

--------------------------------------------
Cycle count: 15, retired instructions: 15
 IF:     ID:     EX:     MA:    
 ------  ------      18      16 
 ------  ------  ------      17 
 ------ 
 ------ 
(18 : BR) dest: -1, src1: -1, src2: -1 , ccread: 1, ccwrite: 0, br_dir: 0
(16 : ALU) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 1, br_dir: 0

 ------ 
 ------ 
 ------ 
(17 : ALU) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 1, br_dir: 0

Retiring I16!
Retiring I17!
Moving I18 from EX to MA...
Moving NOP from EX to MA...
Moving NOP from ID to EX...
Moving NOP from ID to EX...
Moving NOP from IF to ID...
Moving NOP from IF to ID...
Stalling P0's IF because fetch_cbr_stall is on!
Stalling P1's IF because fetch_cbr_stall is on!

--------------------------------------------
Cycle count: 16, retired instructions: 17
 IF:     ID:     EX:     MA:    
 ------  ------  ------      18 
 ------  ------  ------  ------ 
 ------ 
 ------ 
 ------ 
(18 : BR) dest: -1, src1: -1, src2: -1 , ccread: 1, ccwrite: 0, br_dir: 0

 ------ 
 ------ 
 ------ 
 ------ 

Retiring I18!
	I18 had is_mispred_cbr set to 1! Alleviating pipeline stall!
Retiring NOP!
Moving NOP from EX to MA...
Moving NOP from EX to MA...
Moving NOP from ID to EX...
Moving NOP from ID to EX...
Moving NOP from IF to ID...
Moving NOP from IF to ID...
Fetching 19!
Fetching 20!

--------------------------------------------
Cycle count: 17, retired instructions: 18
 IF:     ID:     EX:     MA:    
     19  ------  ------  ------ 
     20  ------  ------  ------ 
(19 : LD) dest: 24, src1: -1, src2: -1 , ccread: 0, ccwrite: 1, br_dir: 0
 ------ 
 ------ 
 ------ 

(20 : LD) dest: 24, src1: -1, src2: -1 , ccread: 0, ccwrite: 1, br_dir: 0
 ------ 
 ------ 
 ------ 

Retiring NOP!
Retiring NOP!
Moving NOP from EX to MA...
Moving NOP from EX to MA...
Moving NOP from ID to EX...
Moving NOP from ID to EX...
Moving I19 from IF to ID...
Moving I20 from IF to ID...
Fetching 21!
Fetching 22!

--------------------------------------------
Cycle count: 18, retired instructions: 18
 IF:     ID:     EX:     MA:    
     21      19  ------  ------ 
     22      20  ------  ------ 
(21 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(19 : LD) dest: 24, src1: -1, src2: -1 , ccread: 0, ccwrite: 1, br_dir: 0
 ------ 
 ------ 

(22 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(20 : LD) dest: 24, src1: -1, src2: -1 , ccread: 0, ccwrite: 1, br_dir: 0
 ------ 
 ------ 

Retiring NOP!
Retiring NOP!
Moving NOP from EX to MA...
Moving NOP from EX to MA...
Moving I19 from ID to EX...
Moving I20 from ID to EX...
Moving I21 from IF to ID...
Moving I22 from IF to ID...
Fetching 23!
	Prediction: 1, Actual: 0
	Mispredicted! Stalling our pipeline!
	GHR: 0x008
	Updated PHT @ index 1248: 1
Stalling P1's IF because fetch_cbr_stall is on!

--------------------------------------------
Cycle count: 19, retired instructions: 18
 IF:     ID:     EX:     MA:    
     23      21      19  ------ 
 ------      22      20  ------ 
(23 : BR) dest: -1, src1: -1, src2: -1 , ccread: 1, ccwrite: 0, br_dir: 0
(21 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(19 : LD) dest: 24, src1: -1, src2: -1 , ccread: 0, ccwrite: 1, br_dir: 0
 ------ 

 ------ 
(22 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(20 : LD) dest: 24, src1: -1, src2: -1 , ccread: 0, ccwrite: 1, br_dir: 0
 ------ 

Retiring NOP!
Retiring NOP!
Moving I19 from EX to MA...
Moving I20 from EX to MA...
Moving I21 from ID to EX...
Moving I22 from ID to EX...
Moving I23 from IF to ID...
Moving NOP from IF to ID...
Stalling P0's IF because fetch_cbr_stall is on!
Stalling P1's IF because fetch_cbr_stall is on!

--------------------------------------------
Cycle count: 20, retired instructions: 18
 IF:     ID:     EX:     MA:    
 ------      23      21      19 
 ------  ------      22      20 
 ------ 
(23 : BR) dest: -1, src1: -1, src2: -1 , ccread: 1, ccwrite: 0, br_dir: 0
(21 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(19 : LD) dest: 24, src1: -1, src2: -1 , ccread: 0, ccwrite: 1, br_dir: 0

 ------ 
 ------ 
(22 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(20 : LD) dest: 24, src1: -1, src2: -1 , ccread: 0, ccwrite: 1, br_dir: 0

Retiring I19!
Retiring I20!
Moving I21 from EX to MA...
Moving I22 from EX to MA...
Moving I23 from ID to EX...
Moving NOP from ID to EX...
Moving NOP from IF to ID...
Moving NOP from IF to ID...
Stalling P0's IF because fetch_cbr_stall is on!
Stalling P1's IF because fetch_cbr_stall is on!

--------------------------------------------
Cycle count: 21, retired instructions: 20
 IF:     ID:     EX:     MA:    
 ------  ------      23      21 
 ------  ------  ------      22 
 ------ 
 ------ 
(23 : BR) dest: -1, src1: -1, src2: -1 , ccread: 1, ccwrite: 0, br_dir: 0
(21 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0

 ------ 
 ------ 
 ------ 
(22 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0

Retiring I21!
Retiring I22!
Moving I23 from EX to MA...
Moving NOP from EX to MA...
Moving NOP from ID to EX...
Moving NOP from ID to EX...
Moving NOP from IF to ID...
Moving NOP from IF to ID...
Stalling P0's IF because fetch_cbr_stall is on!
Stalling P1's IF because fetch_cbr_stall is on!

--------------------------------------------
Cycle count: 22, retired instructions: 22
 IF:     ID:     EX:     MA:    
 ------  ------  ------      23 
 ------  ------  ------  ------ 
 ------ 
 ------ 
 ------ 
(23 : BR) dest: -1, src1: -1, src2: -1 , ccread: 1, ccwrite: 0, br_dir: 0

 ------ 
 ------ 
 ------ 
 ------ 

Retiring I23!
	I23 had is_mispred_cbr set to 1! Alleviating pipeline stall!
Retiring NOP!
Moving NOP from EX to MA...
Moving NOP from EX to MA...
Moving NOP from ID to EX...
Moving NOP from ID to EX...
Moving NOP from IF to ID...
Moving NOP from IF to ID...
Fetching 24!
Fetching 25!

--------------------------------------------
Cycle count: 23, retired instructions: 23
 IF:     ID:     EX:     MA:    
     24  ------  ------  ------ 
     25  ------  ------  ------ 
(24 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
 ------ 
 ------ 
 ------ 

(25 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
 ------ 
 ------ 
 ------ 

Retiring NOP!
Retiring NOP!
Moving NOP from EX to MA...
Moving NOP from EX to MA...
Moving NOP from ID to EX...
Moving NOP from ID to EX...
Moving I24 from IF to ID...
Moving I25 from IF to ID...
Fetching 26!
	Prediction: 1, Actual: 0
	Mispredicted! Stalling our pipeline!
	GHR: 0x010
	Updated PHT @ index 1272: 1
Stalling P1's IF because fetch_cbr_stall is on!

--------------------------------------------
Cycle count: 24, retired instructions: 23
 IF:     ID:     EX:     MA:    
     26      24  ------  ------ 
 ------      25  ------  ------ 
(26 : BR) dest: -1, src1: -1, src2: -1 , ccread: 1, ccwrite: 0, br_dir: 0
(24 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
 ------ 
 ------ 

 ------ 
(25 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
 ------ 
 ------ 

Retiring NOP!
Retiring NOP!
Moving NOP from EX to MA...
Moving NOP from EX to MA...
Moving I24 from ID to EX...
Moving I25 from ID to EX...
Moving I26 from IF to ID...
Moving NOP from IF to ID...
Stalling P0's IF because fetch_cbr_stall is on!
Stalling P1's IF because fetch_cbr_stall is on!

--------------------------------------------
Cycle count: 25, retired instructions: 23
 IF:     ID:     EX:     MA:    
 ------      26      24  ------ 
 ------  ------      25  ------ 
 ------ 
(26 : BR) dest: -1, src1: -1, src2: -1 , ccread: 1, ccwrite: 0, br_dir: 0
(24 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
 ------ 

 ------ 
 ------ 
(25 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
 ------ 

Retiring NOP!
Retiring NOP!
Moving I24 from EX to MA...
Moving I25 from EX to MA...
Moving I26 from ID to EX...
Moving NOP from ID to EX...
Moving NOP from IF to ID...
Moving NOP from IF to ID...
Stalling P0's IF because fetch_cbr_stall is on!
Stalling P1's IF because fetch_cbr_stall is on!

--------------------------------------------
Cycle count: 26, retired instructions: 23
 IF:     ID:     EX:     MA:    
 ------  ------      26      24 
 ------  ------  ------      25 
 ------ 
 ------ 
(26 : BR) dest: -1, src1: -1, src2: -1 , ccread: 1, ccwrite: 0, br_dir: 0
(24 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0

 ------ 
 ------ 
 ------ 
(25 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0

Retiring I24!
Retiring I25!
Moving I26 from EX to MA...
Moving NOP from EX to MA...
Moving NOP from ID to EX...
Moving NOP from ID to EX...
Moving NOP from IF to ID...
Moving NOP from IF to ID...
Stalling P0's IF because fetch_cbr_stall is on!
Stalling P1's IF because fetch_cbr_stall is on!

--------------------------------------------
Cycle count: 27, retired instructions: 25
 IF:     ID:     EX:     MA:    
 ------  ------  ------      26 
 ------  ------  ------  ------ 
 ------ 
 ------ 
 ------ 
(26 : BR) dest: -1, src1: -1, src2: -1 , ccread: 1, ccwrite: 0, br_dir: 0

 ------ 
 ------ 
 ------ 
 ------ 

Retiring I26!
	I26 had is_mispred_cbr set to 1! Alleviating pipeline stall!
Retiring NOP!
Moving NOP from EX to MA...
Moving NOP from EX to MA...
Moving NOP from ID to EX...
Moving NOP from ID to EX...
Moving NOP from IF to ID...
Moving NOP from IF to ID...
Fetching 27!
Fetching 28!

--------------------------------------------
Cycle count: 28, retired instructions: 26
 IF:     ID:     EX:     MA:    
     27  ------  ------  ------ 
     28  ------  ------  ------ 
(27 : LD) dest: 13, src1: -1, src2: -1 , ccread: 0, ccwrite: 1, br_dir: 0
 ------ 
 ------ 
 ------ 

(28 : LD) dest: 13, src1: -1, src2: -1 , ccread: 0, ccwrite: 1, br_dir: 0
 ------ 
 ------ 
 ------ 

Retiring NOP!
Retiring NOP!
Moving NOP from EX to MA...
Moving NOP from EX to MA...
Moving NOP from ID to EX...
Moving NOP from ID to EX...
Moving I27 from IF to ID...
Moving I28 from IF to ID...
Fetching 29!
Fetching 30!
	Prediction: 1, Actual: 1
	GHR: 0x021
	Updated PHT @ index 1261: 3

--------------------------------------------
Cycle count: 29, retired instructions: 26
 IF:     ID:     EX:     MA:    
     29      27  ------  ------ 
     30      28  ------  ------ 
(29 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(27 : LD) dest: 13, src1: -1, src2: -1 , ccread: 0, ccwrite: 1, br_dir: 0
 ------ 
 ------ 

(30 : BR) dest: -1, src1: -1, src2: -1 , ccread: 1, ccwrite: 0, br_dir: 1
(28 : LD) dest: 13, src1: -1, src2: -1 , ccread: 0, ccwrite: 1, br_dir: 0
 ------ 
 ------ 

Retiring NOP!
Retiring NOP!
Moving NOP from EX to MA...
Moving NOP from EX to MA...
Moving I27 from ID to EX...
Moving I28 from ID to EX...
Moving I29 from IF to ID...
Moving I30 from IF to ID...
	(STALL) Highest op-id cc_read/cc_write RAW hazard in EX is LD! Stalling I30 in P1!
Fetching 31!
Stalling P1's IF because I30 is stalled in ID!

--------------------------------------------
Cycle count: 30, retired instructions: 26
 IF:     ID:     EX:     MA:    
     31      29      27  ------ 
     30      30      28  ------ 
(31 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(29 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(27 : LD) dest: 13, src1: -1, src2: -1 , ccread: 0, ccwrite: 1, br_dir: 0
 ------ 

(30 : BR) dest: -1, src1: -1, src2: -1 , ccread: 1, ccwrite: 0, br_dir: 1
(30 : BR) dest: -1, src1: -1, src2: -1 , ccread: 1, ccwrite: 0, br_dir: 1
(28 : LD) dest: 13, src1: -1, src2: -1 , ccread: 0, ccwrite: 1, br_dir: 0
 ------ 

Retiring NOP!
Retiring NOP!
Moving I27 from EX to MA...
Moving I28 from EX to MA...
Moving I29 from ID to EX...
Moving I30 from ID to EX...
Moving I31 from IF to ID...
Moving I30 from IF to ID...
Fetching 32!
Fetching 33!

--------------------------------------------
Cycle count: 31, retired instructions: 26
 IF:     ID:     EX:     MA:    
     32      31      29      27 
     33      30  ------      28 
(32 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(31 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(29 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(27 : LD) dest: 13, src1: -1, src2: -1 , ccread: 0, ccwrite: 1, br_dir: 0

(33 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(30 : BR) dest: -1, src1: -1, src2: -1 , ccread: 1, ccwrite: 0, br_dir: 1
 ------ 
(28 : LD) dest: 13, src1: -1, src2: -1 , ccread: 0, ccwrite: 1, br_dir: 0

Retiring I27!
Retiring I28!
Moving I29 from EX to MA...
Moving NOP from EX to MA...
Moving I31 from ID to EX...
Moving I30 from ID to EX...
Moving I32 from IF to ID...
Moving I33 from IF to ID...
Fetching 34!
Fetching 35!
	Prediction: 1, Actual: 1
	GHR: 0x043
	Updated PHT @ index 1327: 3

--------------------------------------------
Cycle count: 32, retired instructions: 28
 IF:     ID:     EX:     MA:    
     34      32      31      29 
     35      33      30  ------ 
(34 : ALU) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 1, br_dir: 0
(32 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(31 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(29 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0

(35 : BR) dest: -1, src1: -1, src2: -1 , ccread: 1, ccwrite: 0, br_dir: 1
(33 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(30 : BR) dest: -1, src1: -1, src2: -1 , ccread: 1, ccwrite: 0, br_dir: 1
 ------ 

Retiring I29!
Retiring NOP!
Moving I31 from EX to MA...
Moving I30 from EX to MA...
Moving I32 from ID to EX...
Moving I33 from ID to EX...
Moving I34 from IF to ID...
Moving I35 from IF to ID...
	(STALL) I35 in P1's ID stage has a RAW hazard on I34 in P0's ID stage! (cc dependency)
Fetching 36!
Stalling P1's IF because I35 is stalled in ID!

--------------------------------------------
Cycle count: 33, retired instructions: 29
 IF:     ID:     EX:     MA:    
     36      34      32      31 
     35      35      33      30 
(36 : ALU) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 1, br_dir: 0
(34 : ALU) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 1, br_dir: 0
(32 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(31 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0

(35 : BR) dest: -1, src1: -1, src2: -1 , ccread: 1, ccwrite: 0, br_dir: 1
(35 : BR) dest: -1, src1: -1, src2: -1 , ccread: 1, ccwrite: 0, br_dir: 1
(33 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(30 : BR) dest: -1, src1: -1, src2: -1 , ccread: 1, ccwrite: 0, br_dir: 1

Retiring I31!
Retiring I30!
Moving I32 from EX to MA...
Moving I33 from EX to MA...
Moving I34 from ID to EX...
Moving I35 from ID to EX...
Moving I36 from IF to ID...
Moving I35 from IF to ID...
Fetching 37!
	Prediction: 1, Actual: 1
	GHR: 0x087
	Updated PHT @ index 1366: 3
Fetching 38!

--------------------------------------------
Cycle count: 34, retired instructions: 31
 IF:     ID:     EX:     MA:    
     37      36      34      32 
     38      35  ------      33 
(37 : BR) dest: -1, src1: -1, src2: -1 , ccread: 1, ccwrite: 0, br_dir: 1
(36 : ALU) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 1, br_dir: 0
(34 : ALU) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 1, br_dir: 0
(32 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0

(38 : ALU) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 1, br_dir: 0
(35 : BR) dest: -1, src1: -1, src2: -1 , ccread: 1, ccwrite: 0, br_dir: 1
 ------ 
(33 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0

Retiring I32!
Retiring I33!
Moving I34 from EX to MA...
Moving NOP from EX to MA...
Moving I36 from ID to EX...
Moving I35 from ID to EX...
Moving I37 from IF to ID...
Moving I38 from IF to ID...
Fetching 39!
	Prediction: 1, Actual: 1
	GHR: 0x10F
	Updated PHT @ index 1435: 3
Fetching 40!

--------------------------------------------
Cycle count: 35, retired instructions: 33
 IF:     ID:     EX:     MA:    
     39      37      36      34 
     40      38      35  ------ 
(39 : BR) dest: -1, src1: -1, src2: -1 , ccread: 1, ccwrite: 0, br_dir: 1
(37 : BR) dest: -1, src1: -1, src2: -1 , ccread: 1, ccwrite: 0, br_dir: 1
(36 : ALU) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 1, br_dir: 0
(34 : ALU) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 1, br_dir: 0

(40 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(38 : ALU) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 1, br_dir: 0
(35 : BR) dest: -1, src1: -1, src2: -1 , ccread: 1, ccwrite: 0, br_dir: 1
 ------ 

Retiring I34!
Retiring NOP!
Moving I36 from EX to MA...
Moving I35 from EX to MA...
Moving I37 from ID to EX...
Moving I38 from ID to EX...
Moving I39 from IF to ID...
Moving I40 from IF to ID...
Fetching 41!
Fetching 42!
	Prediction: 1, Actual: 0
	Mispredicted! Stalling our pipeline!
	GHR: 0x21E
	Updated PHT @ index 1069: 1

--------------------------------------------
Cycle count: 36, retired instructions: 34
 IF:     ID:     EX:     MA:    
     41      39      37      36 
     42      40      38      35 
(41 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(39 : BR) dest: -1, src1: -1, src2: -1 , ccread: 1, ccwrite: 0, br_dir: 1
(37 : BR) dest: -1, src1: -1, src2: -1 , ccread: 1, ccwrite: 0, br_dir: 1
(36 : ALU) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 1, br_dir: 0

(42 : BR) dest: -1, src1: -1, src2: -1 , ccread: 1, ccwrite: 0, br_dir: 0
(40 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(38 : ALU) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 1, br_dir: 0
(35 : BR) dest: -1, src1: -1, src2: -1 , ccread: 1, ccwrite: 0, br_dir: 1

Retiring I36!
Retiring I35!
Moving I37 from EX to MA...
Moving I38 from EX to MA...
Moving I39 from ID to EX...
Moving I40 from ID to EX...
Moving I41 from IF to ID...
Moving I42 from IF to ID...
Stalling P0's IF because fetch_cbr_stall is on!
Stalling P1's IF because fetch_cbr_stall is on!

--------------------------------------------
Cycle count: 37, retired instructions: 36
 IF:     ID:     EX:     MA:    
 ------      41      39      37 
 ------      42      40      38 
 ------ 
(41 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(39 : BR) dest: -1, src1: -1, src2: -1 , ccread: 1, ccwrite: 0, br_dir: 1
(37 : BR) dest: -1, src1: -1, src2: -1 , ccread: 1, ccwrite: 0, br_dir: 1

 ------ 
(42 : BR) dest: -1, src1: -1, src2: -1 , ccread: 1, ccwrite: 0, br_dir: 0
(40 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(38 : ALU) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 1, br_dir: 0

Retiring I37!
Retiring I38!
Moving I39 from EX to MA...
Moving I40 from EX to MA...
Moving I41 from ID to EX...
Moving I42 from ID to EX...
Moving NOP from IF to ID...
Moving NOP from IF to ID...
Stalling P0's IF because fetch_cbr_stall is on!
Stalling P1's IF because fetch_cbr_stall is on!

--------------------------------------------
Cycle count: 38, retired instructions: 38
 IF:     ID:     EX:     MA:    
 ------  ------      41      39 
 ------  ------      42      40 
 ------ 
 ------ 
(41 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(39 : BR) dest: -1, src1: -1, src2: -1 , ccread: 1, ccwrite: 0, br_dir: 1

 ------ 
 ------ 
(42 : BR) dest: -1, src1: -1, src2: -1 , ccread: 1, ccwrite: 0, br_dir: 0
(40 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0

Retiring I39!
Retiring I40!
Moving I41 from EX to MA...
Moving I42 from EX to MA...
Moving NOP from ID to EX...
Moving NOP from ID to EX...
Moving NOP from IF to ID...
Moving NOP from IF to ID...
Stalling P0's IF because fetch_cbr_stall is on!
Stalling P1's IF because fetch_cbr_stall is on!

--------------------------------------------
Cycle count: 39, retired instructions: 40
 IF:     ID:     EX:     MA:    
 ------  ------  ------      41 
 ------  ------  ------      42 
 ------ 
 ------ 
 ------ 
(41 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0

 ------ 
 ------ 
 ------ 
(42 : BR) dest: -1, src1: -1, src2: -1 , ccread: 1, ccwrite: 0, br_dir: 0

Retiring I41!
Retiring I42!
	I42 had is_mispred_cbr set to 1! Alleviating pipeline stall!
Moving NOP from EX to MA...
Moving NOP from EX to MA...
Moving NOP from ID to EX...
Moving NOP from ID to EX...
Moving NOP from IF to ID...
Moving NOP from IF to ID...
Fetching 43!
Fetching 44!

--------------------------------------------
Cycle count: 40, retired instructions: 42
 IF:     ID:     EX:     MA:    
     43  ------  ------  ------ 
     44  ------  ------  ------ 
(43 : ALU) dest: -1, src1: 13, src2: 26 , ccread: 0, ccwrite: 1, br_dir: 0
 ------ 
 ------ 
 ------ 

(44 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
 ------ 
 ------ 
 ------ 

Retiring NOP!
Retiring NOP!
Moving NOP from EX to MA...
Moving NOP from EX to MA...
Moving NOP from ID to EX...
Moving NOP from ID to EX...
Moving I43 from IF to ID...
Moving I44 from IF to ID...
Fetching 45!
	Prediction: 1, Actual: 1
	GHR: 0x43D
	Updated PHT @ index 1838: 3
Fetching 46!

--------------------------------------------
Cycle count: 41, retired instructions: 42
 IF:     ID:     EX:     MA:    
     45      43  ------  ------ 
     46      44  ------  ------ 
(45 : BR) dest: -1, src1: -1, src2: -1 , ccread: 1, ccwrite: 0, br_dir: 1
(43 : ALU) dest: -1, src1: 13, src2: 26 , ccread: 0, ccwrite: 1, br_dir: 0
 ------ 
 ------ 

(46 : ALU) dest: -1, src1: 18, src2: 26 , ccread: 0, ccwrite: 1, br_dir: 0
(44 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
 ------ 
 ------ 

Retiring NOP!
Retiring NOP!
Moving NOP from EX to MA...
Moving NOP from EX to MA...
Moving I43 from ID to EX...
Moving I44 from ID to EX...
Moving I45 from IF to ID...
Moving I46 from IF to ID...
Fetching 47!
	Prediction: 1, Actual: 1
	GHR: 0x87B
	Updated PHT @ index 264: 3
Fetching 48!

--------------------------------------------
Cycle count: 42, retired instructions: 42
 IF:     ID:     EX:     MA:    
     47      45      43  ------ 
     48      46      44  ------ 
(47 : BR) dest: -1, src1: -1, src2: -1 , ccread: 1, ccwrite: 0, br_dir: 1
(45 : BR) dest: -1, src1: -1, src2: -1 , ccread: 1, ccwrite: 0, br_dir: 1
(43 : ALU) dest: -1, src1: 13, src2: 26 , ccread: 0, ccwrite: 1, br_dir: 0
 ------ 

(48 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(46 : ALU) dest: -1, src1: 18, src2: 26 , ccread: 0, ccwrite: 1, br_dir: 0
(44 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
 ------ 

Retiring NOP!
Retiring NOP!
Moving I43 from EX to MA...
Moving I44 from EX to MA...
Moving I45 from ID to EX...
Moving I46 from ID to EX...
Moving I47 from IF to ID...
Moving I48 from IF to ID...
Fetching 49!
Fetching 50!

--------------------------------------------
Cycle count: 43, retired instructions: 42
 IF:     ID:     EX:     MA:    
     49      47      45      43 
     50      48      46      44 
(49 : LD) dest: 17, src1: -1, src2: -1 , ccread: 0, ccwrite: 1, br_dir: 0
(47 : BR) dest: -1, src1: -1, src2: -1 , ccread: 1, ccwrite: 0, br_dir: 1
(45 : BR) dest: -1, src1: -1, src2: -1 , ccread: 1, ccwrite: 0, br_dir: 1
(43 : ALU) dest: -1, src1: 13, src2: 26 , ccread: 0, ccwrite: 1, br_dir: 0

(50 : LD) dest: 17, src1: -1, src2: -1 , ccread: 0, ccwrite: 1, br_dir: 0
(48 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(46 : ALU) dest: -1, src1: 18, src2: 26 , ccread: 0, ccwrite: 1, br_dir: 0
(44 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0

Retiring I43!
Retiring I44!
Moving I45 from EX to MA...
Moving I46 from EX to MA...
Moving I47 from ID to EX...
Moving I48 from ID to EX...
Moving I49 from IF to ID...
Moving I50 from IF to ID...
Fetching 51!
Fetching 52!

--------------------------------------------
Cycle count: 44, retired instructions: 44
 IF:     ID:     EX:     MA:    
     51      49      47      45 
     52      50      48      46 
(51 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(49 : LD) dest: 17, src1: -1, src2: -1 , ccread: 0, ccwrite: 1, br_dir: 0
(47 : BR) dest: -1, src1: -1, src2: -1 , ccread: 1, ccwrite: 0, br_dir: 1
(45 : BR) dest: -1, src1: -1, src2: -1 , ccread: 1, ccwrite: 0, br_dir: 1

(52 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(50 : LD) dest: 17, src1: -1, src2: -1 , ccread: 0, ccwrite: 1, br_dir: 0
(48 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(46 : ALU) dest: -1, src1: 18, src2: 26 , ccread: 0, ccwrite: 1, br_dir: 0

Retiring I45!
Retiring I46!
Moving I47 from EX to MA...
Moving I48 from EX to MA...
Moving I49 from ID to EX...
Moving I50 from ID to EX...
Moving I51 from IF to ID...
Moving I52 from IF to ID...
Fetching 53!
Fetching 54!

--------------------------------------------
Cycle count: 45, retired instructions: 46
 IF:     ID:     EX:     MA:    
     53      51      49      47 
     54      52      50      48 
(53 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(51 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(49 : LD) dest: 17, src1: -1, src2: -1 , ccread: 0, ccwrite: 1, br_dir: 0
(47 : BR) dest: -1, src1: -1, src2: -1 , ccread: 1, ccwrite: 0, br_dir: 1

(54 : ALU) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 1, br_dir: 0
(52 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(50 : LD) dest: 17, src1: -1, src2: -1 , ccread: 0, ccwrite: 1, br_dir: 0
(48 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0

Retiring I47!
Retiring I48!
Moving I49 from EX to MA...
Moving I50 from EX to MA...
Moving I51 from ID to EX...
Moving I52 from ID to EX...
Moving I53 from IF to ID...
Moving I54 from IF to ID...
Fetching 55!
	Prediction: 1, Actual: 0
	Mispredicted! Stalling our pipeline!
	GHR: 0x0F6
	Updated PHT @ index 3685: 1
Stalling P1's IF because fetch_cbr_stall is on!

--------------------------------------------
Cycle count: 46, retired instructions: 48
 IF:     ID:     EX:     MA:    
     55      53      51      49 
 ------      54      52      50 
(55 : BR) dest: -1, src1: -1, src2: -1 , ccread: 1, ccwrite: 0, br_dir: 0
(53 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(51 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(49 : LD) dest: 17, src1: -1, src2: -1 , ccread: 0, ccwrite: 1, br_dir: 0

 ------ 
(54 : ALU) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 1, br_dir: 0
(52 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(50 : LD) dest: 17, src1: -1, src2: -1 , ccread: 0, ccwrite: 1, br_dir: 0

Retiring I49!
Retiring I50!
Moving I51 from EX to MA...
Moving I52 from EX to MA...
Moving I53 from ID to EX...
Moving I54 from ID to EX...
Moving I55 from IF to ID...
Moving NOP from IF to ID...
Stalling P0's IF because fetch_cbr_stall is on!
Stalling P1's IF because fetch_cbr_stall is on!

--------------------------------------------
Cycle count: 47, retired instructions: 50
 IF:     ID:     EX:     MA:    
 ------      55      53      51 
 ------  ------      54      52 
 ------ 
(55 : BR) dest: -1, src1: -1, src2: -1 , ccread: 1, ccwrite: 0, br_dir: 0
(53 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(51 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0

 ------ 
 ------ 
(54 : ALU) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 1, br_dir: 0
(52 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0

Retiring I51!
Retiring I52!
Moving I53 from EX to MA...
Moving I54 from EX to MA...
Moving I55 from ID to EX...
Moving NOP from ID to EX...
Moving NOP from IF to ID...
Moving NOP from IF to ID...
Stalling P0's IF because fetch_cbr_stall is on!
Stalling P1's IF because fetch_cbr_stall is on!

--------------------------------------------
Cycle count: 48, retired instructions: 52
 IF:     ID:     EX:     MA:    
 ------  ------      55      53 
 ------  ------  ------      54 
 ------ 
 ------ 
(55 : BR) dest: -1, src1: -1, src2: -1 , ccread: 1, ccwrite: 0, br_dir: 0
(53 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0

 ------ 
 ------ 
 ------ 
(54 : ALU) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 1, br_dir: 0

Retiring I53!
Retiring I54!
Moving I55 from EX to MA...
Moving NOP from EX to MA...
Moving NOP from ID to EX...
Moving NOP from ID to EX...
Moving NOP from IF to ID...
Moving NOP from IF to ID...
Stalling P0's IF because fetch_cbr_stall is on!
Stalling P1's IF because fetch_cbr_stall is on!

--------------------------------------------
Cycle count: 49, retired instructions: 54
 IF:     ID:     EX:     MA:    
 ------  ------  ------      55 
 ------  ------  ------  ------ 
 ------ 
 ------ 
 ------ 
(55 : BR) dest: -1, src1: -1, src2: -1 , ccread: 1, ccwrite: 0, br_dir: 0

 ------ 
 ------ 
 ------ 
 ------ 

Retiring I55!
	I55 had is_mispred_cbr set to 1! Alleviating pipeline stall!
Retiring NOP!
Moving NOP from EX to MA...
Moving NOP from EX to MA...
Moving NOP from ID to EX...
Moving NOP from ID to EX...
Moving NOP from IF to ID...
Moving NOP from IF to ID...
Fetching 56!
Fetching 57!

--------------------------------------------
Cycle count: 50, retired instructions: 55
 IF:     ID:     EX:     MA:    
     56  ------  ------  ------ 
     57  ------  ------  ------ 
(56 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
 ------ 
 ------ 
 ------ 

(57 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
 ------ 
 ------ 
 ------ 

Retiring NOP!
Retiring NOP!
Moving NOP from EX to MA...
Moving NOP from EX to MA...
Moving NOP from ID to EX...
Moving NOP from ID to EX...
Moving I56 from IF to ID...
Moving I57 from IF to ID...
Fetching 58!
	Prediction: 1, Actual: 0
	Mispredicted! Stalling our pipeline!
	GHR: 0x1EC
	Updated PHT @ index 1757: 1
Stalling P1's IF because fetch_cbr_stall is on!

--------------------------------------------
Cycle count: 51, retired instructions: 55
 IF:     ID:     EX:     MA:    
     58      56  ------  ------ 
 ------      57  ------  ------ 
(58 : BR) dest: -1, src1: -1, src2: -1 , ccread: 1, ccwrite: 0, br_dir: 0
(56 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
 ------ 
 ------ 

 ------ 
(57 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
 ------ 
 ------ 

Retiring NOP!
Retiring NOP!
Moving NOP from EX to MA...
Moving NOP from EX to MA...
Moving I56 from ID to EX...
Moving I57 from ID to EX...
Moving I58 from IF to ID...
Moving NOP from IF to ID...
Stalling P0's IF because fetch_cbr_stall is on!
Stalling P1's IF because fetch_cbr_stall is on!

--------------------------------------------
Cycle count: 52, retired instructions: 55
 IF:     ID:     EX:     MA:    
 ------      58      56  ------ 
 ------  ------      57  ------ 
 ------ 
(58 : BR) dest: -1, src1: -1, src2: -1 , ccread: 1, ccwrite: 0, br_dir: 0
(56 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
 ------ 

 ------ 
 ------ 
(57 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
 ------ 

Retiring NOP!
Retiring NOP!
Moving I56 from EX to MA...
Moving I57 from EX to MA...
Moving I58 from ID to EX...
Moving NOP from ID to EX...
Moving NOP from IF to ID...
Moving NOP from IF to ID...
Stalling P0's IF because fetch_cbr_stall is on!
Stalling P1's IF because fetch_cbr_stall is on!

--------------------------------------------
Cycle count: 53, retired instructions: 55
 IF:     ID:     EX:     MA:    
 ------  ------      58      56 
 ------  ------  ------      57 
 ------ 
 ------ 
(58 : BR) dest: -1, src1: -1, src2: -1 , ccread: 1, ccwrite: 0, br_dir: 0
(56 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0

 ------ 
 ------ 
 ------ 
(57 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0

Retiring I56!
Retiring I57!
Moving I58 from EX to MA...
Moving NOP from EX to MA...
Moving NOP from ID to EX...
Moving NOP from ID to EX...
Moving NOP from IF to ID...
Moving NOP from IF to ID...
Stalling P0's IF because fetch_cbr_stall is on!
Stalling P1's IF because fetch_cbr_stall is on!

--------------------------------------------
Cycle count: 54, retired instructions: 57
 IF:     ID:     EX:     MA:    
 ------  ------  ------      58 
 ------  ------  ------  ------ 
 ------ 
 ------ 
 ------ 
(58 : BR) dest: -1, src1: -1, src2: -1 , ccread: 1, ccwrite: 0, br_dir: 0

 ------ 
 ------ 
 ------ 
 ------ 

Retiring I58!
	I58 had is_mispred_cbr set to 1! Alleviating pipeline stall!
Retiring NOP!
Moving NOP from EX to MA...
Moving NOP from EX to MA...
Moving NOP from ID to EX...
Moving NOP from ID to EX...
Moving NOP from IF to ID...
Moving NOP from IF to ID...
Fetching 59!
Fetching 60!

--------------------------------------------
Cycle count: 55, retired instructions: 58
 IF:     ID:     EX:     MA:    
     59  ------  ------  ------ 
     60  ------  ------  ------ 
(59 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
 ------ 
 ------ 
 ------ 

(60 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
 ------ 
 ------ 
 ------ 

Retiring NOP!
Retiring NOP!
Moving NOP from EX to MA...
Moving NOP from EX to MA...
Moving NOP from ID to EX...
Moving NOP from ID to EX...
Moving I59 from IF to ID...
Moving I60 from IF to ID...
Fetching 61!
Fetching 62!
	Prediction: 1, Actual: 1
	GHR: 0x3D9
	Updated PHT @ index 1963: 3

--------------------------------------------
Cycle count: 56, retired instructions: 58
 IF:     ID:     EX:     MA:    
     61      59  ------  ------ 
     62      60  ------  ------ 
(61 : ALU) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 1, br_dir: 0
(59 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
 ------ 
 ------ 

(62 : BR) dest: -1, src1: -1, src2: -1 , ccread: 1, ccwrite: 0, br_dir: 1
(60 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
 ------ 
 ------ 

Retiring NOP!
Retiring NOP!
Moving NOP from EX to MA...
Moving NOP from EX to MA...
Moving I59 from ID to EX...
Moving I60 from ID to EX...
Moving I61 from IF to ID...
Moving I62 from IF to ID...
	(STALL) I62 in P1's ID stage has a RAW hazard on I61 in P0's ID stage! (cc dependency)
Fetching 63!
Stalling P1's IF because I62 is stalled in ID!

--------------------------------------------
Cycle count: 57, retired instructions: 58
 IF:     ID:     EX:     MA:    
     63      61      59  ------ 
     62      62      60  ------ 
(63 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(61 : ALU) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 1, br_dir: 0
(59 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
 ------ 

(62 : BR) dest: -1, src1: -1, src2: -1 , ccread: 1, ccwrite: 0, br_dir: 1
(62 : BR) dest: -1, src1: -1, src2: -1 , ccread: 1, ccwrite: 0, br_dir: 1
(60 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
 ------ 

Retiring NOP!
Retiring NOP!
Moving I59 from EX to MA...
Moving I60 from EX to MA...
Moving I61 from ID to EX...
Moving I62 from ID to EX...
Moving I63 from IF to ID...
Moving I62 from IF to ID...
Fetching 64!
Fetching 65!

--------------------------------------------
Cycle count: 58, retired instructions: 58
 IF:     ID:     EX:     MA:    
     64      63      61      59 
     65      62  ------      60 
(64 : LD) dest: 21, src1: -1, src2: -1 , ccread: 0, ccwrite: 1, br_dir: 0
(63 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(61 : ALU) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 1, br_dir: 0
(59 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0

(65 : LD) dest: 21, src1: -1, src2: -1 , ccread: 0, ccwrite: 1, br_dir: 0
(62 : BR) dest: -1, src1: -1, src2: -1 , ccread: 1, ccwrite: 0, br_dir: 1
 ------ 
(60 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0

Retiring I59!
Retiring I60!
Moving I61 from EX to MA...
Moving NOP from EX to MA...
Moving I63 from ID to EX...
Moving I62 from ID to EX...
Moving I64 from IF to ID...
Moving I65 from IF to ID...
Fetching 66!
Fetching 67!

--------------------------------------------
Cycle count: 59, retired instructions: 60
 IF:     ID:     EX:     MA:    
     66      64      63      61 
     67      65      62  ------ 
(66 : LD) dest: 20, src1: -1, src2: -1 , ccread: 0, ccwrite: 1, br_dir: 0
(64 : LD) dest: 21, src1: -1, src2: -1 , ccread: 0, ccwrite: 1, br_dir: 0
(63 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(61 : ALU) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 1, br_dir: 0

(67 : LD) dest: 20, src1: -1, src2: -1 , ccread: 0, ccwrite: 1, br_dir: 0
(65 : LD) dest: 21, src1: -1, src2: -1 , ccread: 0, ccwrite: 1, br_dir: 0
(62 : BR) dest: -1, src1: -1, src2: -1 , ccread: 1, ccwrite: 0, br_dir: 1
 ------ 

Retiring I61!
Retiring NOP!
Moving I63 from EX to MA...
Moving I62 from EX to MA...
Moving I64 from ID to EX...
Moving I65 from ID to EX...
Moving I66 from IF to ID...
Moving I67 from IF to ID...
Fetching 68!
Fetching 69!

--------------------------------------------
Cycle count: 60, retired instructions: 61
 IF:     ID:     EX:     MA:    
     68      66      64      63 
     69      67      65      62 
(68 : LD) dest: 18, src1: -1, src2: -1 , ccread: 0, ccwrite: 1, br_dir: 0
(66 : LD) dest: 20, src1: -1, src2: -1 , ccread: 0, ccwrite: 1, br_dir: 0
(64 : LD) dest: 21, src1: -1, src2: -1 , ccread: 0, ccwrite: 1, br_dir: 0
(63 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0

(69 : LD) dest: 18, src1: -1, src2: -1 , ccread: 0, ccwrite: 1, br_dir: 0
(67 : LD) dest: 20, src1: -1, src2: -1 , ccread: 0, ccwrite: 1, br_dir: 0
(65 : LD) dest: 21, src1: -1, src2: -1 , ccread: 0, ccwrite: 1, br_dir: 0
(62 : BR) dest: -1, src1: -1, src2: -1 , ccread: 1, ccwrite: 0, br_dir: 1

Retiring I63!
Retiring I62!
Moving I64 from EX to MA...
Moving I65 from EX to MA...
Moving I66 from ID to EX...
Moving I67 from ID to EX...
Moving I68 from IF to ID...
Moving I69 from IF to ID...
Fetching 70!
Fetching 71!

--------------------------------------------
Cycle count: 61, retired instructions: 63
 IF:     ID:     EX:     MA:    
     70      68      66      64 
     71      69      67      65 
(70 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(68 : LD) dest: 18, src1: -1, src2: -1 , ccread: 0, ccwrite: 1, br_dir: 0
(66 : LD) dest: 20, src1: -1, src2: -1 , ccread: 0, ccwrite: 1, br_dir: 0
(64 : LD) dest: 21, src1: -1, src2: -1 , ccread: 0, ccwrite: 1, br_dir: 0

(71 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(69 : LD) dest: 18, src1: -1, src2: -1 , ccread: 0, ccwrite: 1, br_dir: 0
(67 : LD) dest: 20, src1: -1, src2: -1 , ccread: 0, ccwrite: 1, br_dir: 0
(65 : LD) dest: 21, src1: -1, src2: -1 , ccread: 0, ccwrite: 1, br_dir: 0

Retiring I64!
Retiring I65!
Moving I66 from EX to MA...
Moving I67 from EX to MA...
Moving I68 from ID to EX...
Moving I69 from ID to EX...
Moving I70 from IF to ID...
Moving I71 from IF to ID...
Fetching 72!
Fetching 73!

--------------------------------------------
Cycle count: 62, retired instructions: 65
 IF:     ID:     EX:     MA:    
     72      70      68      66 
     73      71      69      67 
(72 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(70 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(68 : LD) dest: 18, src1: -1, src2: -1 , ccread: 0, ccwrite: 1, br_dir: 0
(66 : LD) dest: 20, src1: -1, src2: -1 , ccread: 0, ccwrite: 1, br_dir: 0

(73 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(71 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(69 : LD) dest: 18, src1: -1, src2: -1 , ccread: 0, ccwrite: 1, br_dir: 0
(67 : LD) dest: 20, src1: -1, src2: -1 , ccread: 0, ccwrite: 1, br_dir: 0

Retiring I66!
Retiring I67!
Moving I68 from EX to MA...
Moving I69 from EX to MA...
Moving I70 from ID to EX...
Moving I71 from ID to EX...
Moving I72 from IF to ID...
Moving I73 from IF to ID...
Fetching 74!
Fetching 75!

--------------------------------------------
Cycle count: 63, retired instructions: 67
 IF:     ID:     EX:     MA:    
     74      72      70      68 
     75      73      71      69 
(74 : ST) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(72 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(70 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(68 : LD) dest: 18, src1: -1, src2: -1 , ccread: 0, ccwrite: 1, br_dir: 0

(75 : ST) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(73 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(71 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(69 : LD) dest: 18, src1: -1, src2: -1 , ccread: 0, ccwrite: 1, br_dir: 0

Retiring I68!
Retiring I69!
Moving I70 from EX to MA...
Moving I71 from EX to MA...
Moving I72 from ID to EX...
Moving I73 from ID to EX...
Moving I74 from IF to ID...
Moving I75 from IF to ID...
Fetching 76!
Fetching 77!

--------------------------------------------
Cycle count: 64, retired instructions: 69
 IF:     ID:     EX:     MA:    
     76      74      72      70 
     77      75      73      71 
(76 : ST) dest: -1, src1: 27, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(74 : ST) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(72 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(70 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0

(77 : ST) dest: -1, src1: 27, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(75 : ST) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(73 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(71 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0

Retiring I70!
Retiring I71!
Moving I72 from EX to MA...
Moving I73 from EX to MA...
Moving I74 from ID to EX...
Moving I75 from ID to EX...
Moving I76 from IF to ID...
Moving I77 from IF to ID...
Fetching 78!
Fetching 79!

--------------------------------------------
Cycle count: 65, retired instructions: 71
 IF:     ID:     EX:     MA:    
     78      76      74      72 
     79      77      75      73 
(78 : ST) dest: -1, src1: 26, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(76 : ST) dest: -1, src1: 27, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(74 : ST) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(72 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0

(79 : ST) dest: -1, src1: 26, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(77 : ST) dest: -1, src1: 27, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(75 : ST) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(73 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0

Retiring I72!
Retiring I73!
Moving I74 from EX to MA...
Moving I75 from EX to MA...
Moving I76 from ID to EX...
Moving I77 from ID to EX...
Moving I78 from IF to ID...
Moving I79 from IF to ID...
Fetching 80!
Fetching 81!

--------------------------------------------
Cycle count: 66, retired instructions: 73
 IF:     ID:     EX:     MA:    
     80      78      76      74 
     81      79      77      75 
(80 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(78 : ST) dest: -1, src1: 26, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(76 : ST) dest: -1, src1: 27, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(74 : ST) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0

(81 : ST) dest: -1, src1: 25, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(79 : ST) dest: -1, src1: 26, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(77 : ST) dest: -1, src1: 27, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(75 : ST) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0

Retiring I74!
Retiring I75!
Moving I76 from EX to MA...
Moving I77 from EX to MA...
Moving I78 from ID to EX...
Moving I79 from ID to EX...
Moving I80 from IF to ID...
Moving I81 from IF to ID...
Fetching 82!
Fetching 83!

--------------------------------------------
Cycle count: 67, retired instructions: 75
 IF:     ID:     EX:     MA:    
     82      80      78      76 
     83      81      79      77 
(82 : ST) dest: -1, src1: 25, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(80 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(78 : ST) dest: -1, src1: 26, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(76 : ST) dest: -1, src1: 27, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0

(83 : ST) dest: -1, src1: 24, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(81 : ST) dest: -1, src1: 25, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(79 : ST) dest: -1, src1: 26, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(77 : ST) dest: -1, src1: 27, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0

Retiring I76!
Retiring I77!
Moving I78 from EX to MA...
Moving I79 from EX to MA...
Moving I80 from ID to EX...
Moving I81 from ID to EX...
Moving I82 from IF to ID...
Moving I83 from IF to ID...
Fetching 84!
Fetching 85!

--------------------------------------------
Cycle count: 68, retired instructions: 77
 IF:     ID:     EX:     MA:    
     84      82      80      78 
     85      83      81      79 
(84 : ST) dest: -1, src1: 24, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(82 : ST) dest: -1, src1: 25, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(80 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(78 : ST) dest: -1, src1: 26, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0

(85 : ST) dest: -1, src1: 14, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(83 : ST) dest: -1, src1: 24, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(81 : ST) dest: -1, src1: 25, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(79 : ST) dest: -1, src1: 26, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0

Retiring I78!
Retiring I79!
Moving I80 from EX to MA...
Moving I81 from EX to MA...
Moving I82 from ID to EX...
Moving I83 from ID to EX...
Moving I84 from IF to ID...
Moving I85 from IF to ID...
Fetching 86!
Fetching 87!

--------------------------------------------
Cycle count: 69, retired instructions: 79
 IF:     ID:     EX:     MA:    
     86      84      82      80 
     87      85      83      81 
(86 : ST) dest: -1, src1: 14, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(84 : ST) dest: -1, src1: 24, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(82 : ST) dest: -1, src1: 25, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(80 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0

(87 : ST) dest: -1, src1: 16, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(85 : ST) dest: -1, src1: 14, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(83 : ST) dest: -1, src1: 24, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(81 : ST) dest: -1, src1: 25, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0

Retiring I80!
Retiring I81!
Moving I82 from EX to MA...
Moving I83 from EX to MA...
Moving I84 from ID to EX...
Moving I85 from ID to EX...
Moving I86 from IF to ID...
Moving I87 from IF to ID...
Fetching 88!
Fetching 89!

--------------------------------------------
Cycle count: 70, retired instructions: 81
 IF:     ID:     EX:     MA:    
     88      86      84      82 
     89      87      85      83 
(88 : ST) dest: -1, src1: 16, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(86 : ST) dest: -1, src1: 14, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(84 : ST) dest: -1, src1: 24, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(82 : ST) dest: -1, src1: 25, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0

(89 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(87 : ST) dest: -1, src1: 16, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(85 : ST) dest: -1, src1: 14, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(83 : ST) dest: -1, src1: 24, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0

Retiring I82!
Retiring I83!
Moving I84 from EX to MA...
Moving I85 from EX to MA...
Moving I86 from ID to EX...
Moving I87 from ID to EX...
Moving I88 from IF to ID...
Moving I89 from IF to ID...
Fetching 90!
Fetching 91!

--------------------------------------------
Cycle count: 71, retired instructions: 83
 IF:     ID:     EX:     MA:    
     90      88      86      84 
     91      89      87      85 
(90 : ALU) dest: 15, src1: 15, src2: -1 , ccread: 0, ccwrite: 1, br_dir: 0
(88 : ST) dest: -1, src1: 16, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(86 : ST) dest: -1, src1: 14, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(84 : ST) dest: -1, src1: 24, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0

(91 : ST) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(89 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(87 : ST) dest: -1, src1: 16, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(85 : ST) dest: -1, src1: 14, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0

Retiring I84!
Retiring I85!
Moving I86 from EX to MA...
Moving I87 from EX to MA...
Moving I88 from ID to EX...
Moving I89 from ID to EX...
Moving I90 from IF to ID...
Moving I91 from IF to ID...
Fetching 92!
Fetching 93!

--------------------------------------------
Cycle count: 72, retired instructions: 85
 IF:     ID:     EX:     MA:    
     92      90      88      86 
     93      91      89      87 
(92 : ST) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(90 : ALU) dest: 15, src1: 15, src2: -1 , ccread: 0, ccwrite: 1, br_dir: 0
(88 : ST) dest: -1, src1: 16, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(86 : ST) dest: -1, src1: 14, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0

(93 : ST) dest: -1, src1: 18, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(91 : ST) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(89 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(87 : ST) dest: -1, src1: 16, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0

Retiring I86!
Retiring I87!
Moving I88 from EX to MA...
Moving I89 from EX to MA...
Moving I90 from ID to EX...
Moving I91 from ID to EX...
Moving I92 from IF to ID...
Moving I93 from IF to ID...
Fetching 94!
Fetching 95!

--------------------------------------------
Cycle count: 73, retired instructions: 87
 IF:     ID:     EX:     MA:    
     94      92      90      88 
     95      93      91      89 
(94 : ST) dest: -1, src1: 18, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(92 : ST) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(90 : ALU) dest: 15, src1: 15, src2: -1 , ccread: 0, ccwrite: 1, br_dir: 0
(88 : ST) dest: -1, src1: 16, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0

(95 : ST) dest: -1, src1: 20, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(93 : ST) dest: -1, src1: 18, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(91 : ST) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(89 : OTHER) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0

Retiring I88!
Retiring I89!
Moving I90 from EX to MA...
Moving I91 from EX to MA...
Moving I92 from ID to EX...
Moving I93 from ID to EX...
Moving I94 from IF to ID...
Moving I95 from IF to ID...
Fetching 96!
Fetching 97!

--------------------------------------------
Cycle count: 74, retired instructions: 89
 IF:     ID:     EX:     MA:    
     96      94      92      90 
     97      95      93      91 
(96 : ST) dest: -1, src1: 20, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(94 : ST) dest: -1, src1: 18, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(92 : ST) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(90 : ALU) dest: 15, src1: 15, src2: -1 , ccread: 0, ccwrite: 1, br_dir: 0

(97 : ST) dest: -1, src1: 21, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(95 : ST) dest: -1, src1: 20, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(93 : ST) dest: -1, src1: 18, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(91 : ST) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0

Retiring I90!
Retiring I91!
Moving I92 from EX to MA...
Moving I93 from EX to MA...
Moving I94 from ID to EX...
Moving I95 from ID to EX...
Moving I96 from IF to ID...
Moving I97 from IF to ID...
Fetching 98!
Fetching 99!

--------------------------------------------
Cycle count: 75, retired instructions: 91
 IF:     ID:     EX:     MA:    
     98      96      94      92 
     99      97      95      93 
(98 : ST) dest: -1, src1: 21, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(96 : ST) dest: -1, src1: 20, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(94 : ST) dest: -1, src1: 18, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(92 : ST) dest: -1, src1: -1, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0

(99 : LD) dest: 27, src1: -1, src2: -1 , ccread: 0, ccwrite: 1, br_dir: 0
(97 : ST) dest: -1, src1: 21, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(95 : ST) dest: -1, src1: 20, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(93 : ST) dest: -1, src1: 18, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0

Retiring I92!
Retiring I93!
Moving I94 from EX to MA...
Moving I95 from EX to MA...
Moving I96 from ID to EX...
Moving I97 from ID to EX...
Moving I98 from IF to ID...
Moving I99 from IF to ID...
Fetching 100!
Fetching NOP!

--------------------------------------------
Cycle count: 76, retired instructions: 93
 IF:     ID:     EX:     MA:    
    100      98      96      94 
 ------      99      97      95 
(100 : LD) dest: 27, src1: -1, src2: -1 , ccread: 0, ccwrite: 1, br_dir: 0
(98 : ST) dest: -1, src1: 21, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(96 : ST) dest: -1, src1: 20, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(94 : ST) dest: -1, src1: 18, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0

 ------ 
(99 : LD) dest: 27, src1: -1, src2: -1 , ccread: 0, ccwrite: 1, br_dir: 0
(97 : ST) dest: -1, src1: 21, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(95 : ST) dest: -1, src1: 20, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0

Retiring I94!
Retiring I95!
Moving I96 from EX to MA...
Moving I97 from EX to MA...
Moving I98 from ID to EX...
Moving I99 from ID to EX...
Moving I100 from IF to ID...
Moving NOP from IF to ID...
Fetching NOP!
Fetching NOP!

--------------------------------------------
Cycle count: 77, retired instructions: 95
 IF:     ID:     EX:     MA:    
 ------     100      98      96 
 ------  ------      99      97 
 ------ 
(100 : LD) dest: 27, src1: -1, src2: -1 , ccread: 0, ccwrite: 1, br_dir: 0
(98 : ST) dest: -1, src1: 21, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0
(96 : ST) dest: -1, src1: 20, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0

 ------ 
 ------ 
(99 : LD) dest: 27, src1: -1, src2: -1 , ccread: 0, ccwrite: 1, br_dir: 0
(97 : ST) dest: -1, src1: 21, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0

Retiring I96!
Retiring I97!
Moving I98 from EX to MA...
Moving I99 from EX to MA...
Moving I100 from ID to EX...
Moving NOP from ID to EX...
Moving NOP from IF to ID...
Moving NOP from IF to ID...
Instruction in ID is not valid; must've reached the end of the trace!
Instruction in ID is not valid; must've reached the end of the trace!

--------------------------------------------
Cycle count: 78, retired instructions: 97
 IF:     ID:     EX:     MA:    
 ------  ------     100      98 
 ------  ------  ------      99 
 ------ 
 ------ 
(100 : LD) dest: 27, src1: -1, src2: -1 , ccread: 0, ccwrite: 1, br_dir: 0
(98 : ST) dest: -1, src1: 21, src2: -1 , ccread: 0, ccwrite: 0, br_dir: 0

 ------ 
 ------ 
 ------ 
(99 : LD) dest: 27, src1: -1, src2: -1 , ccread: 0, ccwrite: 1, br_dir: 0

Retiring I98!
Retiring I99!
Moving I100 from EX to MA...
Moving NOP from EX to MA...
Moving NOP from ID to EX...
Moving NOP from ID to EX...
Moving NOP from IF to ID...
Moving NOP from IF to ID...
Instruction in ID is not valid; must've reached the end of the trace!
Instruction in ID is not valid; must've reached the end of the trace!

--------------------------------------------
Cycle count: 79, retired instructions: 99
 IF:     ID:     EX:     MA:    
 ------  ------  ------     100 
 ------  ------  ------  ------ 
 ------ 
 ------ 
 ------ 
(100 : LD) dest: 27, src1: -1, src2: -1 , ccread: 0, ccwrite: 1, br_dir: 0

 ------ 
 ------ 
 ------ 
 ------ 

Retiring I100!
Retiring NOP!
Moving NOP from EX to MA...
Moving NOP from EX to MA...
Moving NOP from ID to EX...
Moving NOP from ID to EX...
Moving NOP from IF to ID...
Moving NOP from IF to ID...
Instruction in ID is not valid; must've reached the end of the trace!
Instruction in ID is not valid; must've reached the end of the trace!

--------------------------------------------
Cycle count: 80, retired instructions: 100
 IF:     ID:     EX:     MA:    
 ------  ------  ------  ------ 
 ------  ------  ------  ------ 
 ------ 
 ------ 
 ------ 
 ------ 

 ------ 
 ------ 
 ------ 
 ------ 



LAB2_NUM_INST           	 :        100
LAB2_NUM_CYCLES         	 :         80
LAB2_CPI                	 :      0.800
LAB2_BPRED_BRANCHES     	 :         15
LAB2_BPRED_MISPRED      	 :          7
LAB2_MISPRED_RATE       	 :     46.667

