#include <hls_stream.h>
#include <ap_int.h>
#include <iostream>
#include <stdint.h>
#include <stdio.h>

using namespace hls;

#include "my_ip_hls.hpp"


#define STREAM_TEST_ITERATIONS 10

int main() {

	uint32 i = 0;

	stream<axiWord> slaveIn("slaveIn");
	stream<axiWord> masterOut("masterOut");

	uint32 MDATA [] = {10,12,10,50,60,10,20,12,50,60,40,80,90,12,40,10};
	int DLeng = sizeof(MDATA)/sizeof(uint32);
	static uint32 ruleOutcounter0=0;
	static uint32 ruleOutcounter1=0;
	static uint32 ruleOutcounter2=0;

//	printf("Dleng: %d\n", DLeng);

	for (i=0;i<DLeng;i++) {
		axiWord dataIn = {0,0,0};
		dataIn.data = MDATA[i];
		dataIn.strb = 0b1111;
		if (i == STREAM_TEST_ITERATIONS-1)
			dataIn.last = 1;
		else
			dataIn.last = 0;
		printf("---------------------------------\n");
		slaveIn.write(dataIn);

		if(i<=6){

			my_ip_hls(slaveIn, masterOut, 10, 50, 12,ruleOutcounter0,ruleOutcounter1,ruleOutcounter2);
		}
		else {
			my_ip_hls(slaveIn, masterOut, 60, 50, 12,ruleOutcounter0,ruleOutcounter1,ruleOutcounter2);
		}




		if (!masterOut.empty()) {
			axiWord dataOut = {0,0,0};
			masterOut.read(dataOut);
			printf("%d: read data: %u\n",(int)i, (int)dataOut.data);
		}
		else {
			printf("%d: no data available!\n",(int)i);
		}
	}
	printf("Counter0 : %d \n", int(ruleOutcounter0));
	printf("Counter1 : %d \n", int(ruleOutcounter1));
	printf("Counter2 : %d \n", int(ruleOutcounter2));



	return 0;
}
