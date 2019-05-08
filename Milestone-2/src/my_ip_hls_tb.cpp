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

int main() {

	uint32 i = 0;
	stream<axiWord> slaveIn("slaveIn");
	stream<axiWord> masterOut("masterOut");

	uint32 rule0cnt = 0, rule1cnt = 0, rule2cnt = 0;		// Rule Counters

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
