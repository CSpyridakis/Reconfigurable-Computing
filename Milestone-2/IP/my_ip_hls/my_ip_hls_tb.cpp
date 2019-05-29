#include <hls_stream.h>
#include <ap_int.h>
#include <iostream>
#include <stdint.h>
#include <stdio.h>
#include "my_ip_hls.hpp"

using namespace hls;

// Custom simulation
// Packets that we are going to test and static rules that we want to test
//#define static0Rule 70
//#define static1Rule 10
//#define static2Rule 30
//#define STREAM_TEST_ITERATIONS 30
//uint32 MDATA [STREAM_TEST_ITERATIONS] = {10,15,20,25,30,35,40,45,50,55,
//										 60,65,70,65,60,55,50,45,40,35,
//										 30,25,20,15,10,15,20,25,30,35};

//// Reference Simulation
//// Packets that we are going to test and static rules that we want to test
#define static0Rule 10
#define static1Rule 30
#define static2Rule 50
#define STREAM_TEST_ITERATIONS 8
uint32 MDATA [STREAM_TEST_ITERATIONS] = {10,20,30,40,50,60,70,50};

#define DEBUG 1

int main() {

	uint32 i = 0;
	stream<axiWord> slaveIn("slaveIn");
	stream<axiWord> masterOut("masterOut");

	uint32 rule0cnt = 0, rule1cnt = 0, rule2cnt = 0;		// Rule Counters

	if (DEBUG){
		printf("\n\nRule0: %d\t| Rule1: %d\t| Rule2: %d\nStream Data:\n", (int)static0Rule,(int)static1Rule,(int)static2Rule);
		for (i=0;i<STREAM_TEST_ITERATIONS;i++){
			if (i+1<STREAM_TEST_ITERATIONS)
				printf(" %d,", (int)MDATA[i]);
			else
				printf(" %d", (int)MDATA[i]);
			if (i%10==0 && i!=0)
				printf("\n");
		}
	}

	printf("\n---------------------------------\nBegin Simulation...\n");

	for (i=0;i<STREAM_TEST_ITERATIONS;i++) {
		axiWord dataIn = {0,0,0};
		dataIn.data = MDATA[i];
		dataIn.strb = 0b1111;

		if (i == STREAM_TEST_ITERATIONS-1)
			dataIn.last = 1;
		else
			dataIn.last = 0;

		slaveIn.write(dataIn);

		// my_ip behavior
		my_ip_hls(slaveIn, masterOut, static0Rule, static1Rule, static2Rule, rule0cnt, rule1cnt, rule2cnt);

		if (!masterOut.empty()) {
			axiWord dataOut = {0,0,0};
			masterOut.read(dataOut);
			printf("%d: read data: %u\n",(int)i, (int)dataOut.data);
		}
		else {
			printf("%d: no data available!\n",(int)i);
		}

	}
	printf("\nResults:\n  Counter 0 : %d\n  Counter 1 : %d\n  Counter 2 : %d\n---------------------------------\n\n",(int)rule0cnt,(int)rule1cnt, (int)rule2cnt);

	return 0;
}
