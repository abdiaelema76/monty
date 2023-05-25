#BrainF*ck script that Read the two digits from stdin, multiply them, and print the result
#given example 42: 4 will be in block #1 and 2 will be in block #2
#block 0 will store the result 
#block 1 will hold the value to multiply
#block 2 will hold the amount of times to multiply
#the result of input 42 will  output the result of 4*2
#read int block 1 and 2
#subtract 48 from each: '0'
#loop while block 2 != 0 adding the value of block 1 to block 0 every time
#BLOCK 0	BLOCK 1		BLOCK 2		BLOCK 3 	BLOCK 4
#0		4		2		0			
>,-------------------------------------- # read into #1
>,-------------------------------------- # read into #2
[<[>>+<<<+>-]>>[<<+<<-] COPY BLOCK 1 INTO BLOCK 3AND 0 THEN COPY BLOCK 3 TO BLOCK 1
<-] MOVE BLOCK 2 AND DECREASE (DONE WITH FIRST ITERATION)
#MOVE TO BLOCK 0 AND INCREASE BY ASCII '0' (DEC 48)
<<++++++++++++++++++++++++++++++++++++++.
