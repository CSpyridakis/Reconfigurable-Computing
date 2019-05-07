#include <hls_stream.h>
#include <ap_int.h>
#include <iostream>
#include <stdint.h>
#include <stdio.h>
#include "my_ip_hls.hpp"

using namespace hls;

// Packets that we are going to test and static rules that we want to test
#define static0Rule 70
#define static1Rule 10
#define static2Rule 30
#define STREAM_TEST_ITERATIONS 30
uint32 MDATA [STREAM_TEST_ITERATIONS] = {10,15,20,25,30,35,40,45,50,55,
										 60,65,70,65,60,55,50,45,40,35,
										 30,25,20,15,10,15,20,25,30,35};


//--------------------------------------------------------------------------------------------
//			This part of the code is just for testing and DEBUGING purposes
//			If you need to test what is going to happen in case that you would like
//			to change/give one or more of the rules at a specific point of execution
// 			uncomment DEBUG and use below variables and function as needed

//#define DEBUG 0

const int numOfChanges = 2;
// Rules values that we want to test
uint32 rules[3][numOfChanges] = {
		{10,40},	//Rule 0
		{65,35},	//Rule 1
		{35,0}};	//Rule 2
// The domain of iterations that we are going to use for each rule value
uint32 rulesChangeOnIteration[3][numOfChanges+1] = {
		{0,15,1000},	//Rule 0
		{0,15,1000},	//Rule 1
		{0,1000,1000},};	//Rule 2

// The value that each rule has at a specific time of operation
uint32 ruleXState(uint32 rule, uint32 i){
	uint32 j = 0;
	for (j=0; j<(uint32)numOfChanges; j++) {
		if (i>=rulesChangeOnIteration[rule][j] && i<rulesChangeOnIteration[rule][j+1]){
			return rules[rule][j];
		}
	}
	return uint32(0);
}
//--------------------------------------------------------------------------------------------



int main() {

	uint32 i = 0;
	stream<axiWord> slaveIn("slaveIn");
	stream<axiWord> masterOut("masterOut");

	static uint32 rule0cnt = 0, rule1cnt = 0, rule2cnt = 0;		// Rule Counters

	printf("\n---------------------------------\n");
#ifdef ARRAY_SOLUTION
	printf("Array solution\n");
#else
	printf("Simple Solution\n");
#endif
	printf("Begin Simulation...\n");
	for (i=0;i<STREAM_TEST_ITERATIONS;i++) {
		axiWord dataIn = {0,0,0};
		dataIn.data = MDATA[i];
		dataIn.strb = 0b1111;

		if (i == STREAM_TEST_ITERATIONS-1)
			dataIn.last = 1;
		else
			dataIn.last = 0;

		slaveIn.write(dataIn);

#ifdef DEBUG
		my_ip_hls(slaveIn, masterOut, ruleXState(0,i), ruleXState(1,i), ruleXState(2,i), rule0cnt, rule1cnt, rule2cnt);
#else
		my_ip_hls(slaveIn, masterOut, static0Rule, static1Rule, static2Rule, rule0cnt, rule1cnt, rule2cnt);
#endif

		if (!masterOut.empty()) {
			axiWord dataOut = {0,0,0};
			masterOut.read(dataOut);
			printf("%d: read data: %u\n",(int)i, (int)dataOut.data);
		}
		else {
			printf("%d: no data available!\n",(int)i);
		}

#ifdef DEBUG
		printf("R0: %d  | R1: %d  | R2: %d\n", (int)ruleXState(0,i), (int)ruleXState(1,i), (int)ruleXState(2,i));
		printf("C0: %d   | C1: %d   | C2: %d\n--\n", (int)rule0cnt, (int)rule1cnt, (int)rule2cnt);
#endif

	}
	printf("\nResults:\n");
	printf("  Counter 0 : %d\n", (int)rule0cnt);
	printf("  Counter 1 : %d\n", (int)rule1cnt);
	printf("  Counter 2 : %d\n", (int)rule2cnt);
	printf("---------------------------------\n\n");

	return 0;
}
