#include "my_ip_hls.hpp"
#include <iostream>
#include <stdint.h>
#include <hls_stream.h>
#include <ap_int.h>
#include <stdio.h>

void my_ip_hls(stream<axiWord> &slaveIn,stream<axiWord> &masterOut,uint32 rule1,uint32 rule2,uint32 rule3,uint32 &ruleOutcounter0, uint32 &ruleOutcounter1, uint32 &ruleOutcounter2) {
#pragma HLS INTERFACE s_axilite port=rule1 bundle=thanasis
#pragma HLS INTERFACE s_axilite port=rule2 bundle=thanasis
#pragma HLS INTERFACE s_axilite port=rule3 bundle=thanasis

#pragma HLS INTERFACE s_axilite port=ruleOutcounter0 bundle=thanasis
#pragma HLS INTERFACE s_axilite port=ruleOutcounter1 bundle=thanasis
#pragma HLS INTERFACE s_axilite port=ruleOutcounter2 bundle=thanasis

#pragma HLS DATAFLOW interval=1
#pragma HLS INTERFACE axis register both port=slaveIn
#pragma HLS INTERFACE axis register both port=masterOut
#pragma HLS INTERFACE ap_ctrl_none port=return

//internal fifos
	static stream<axiWord> ps2ipFifo("ps2ipFifo");
#pragma HLS STREAM variable=ps2ipFifo depth=64 dim=1
	static stream<axiWord> ip2psFifo("ip2psFifo");
#pragma HLS STREAM variable=ip2psFifo depth=64 dim=1
	static uint32 ruleOutcnt [3] = { 0, 0, 0 };
	static uint32 ruleOut [3] = { -1 , -1 , -1 };
	// pasing rule = 4 to  register 0
	rule_module_write(rule1, rule2, rule3, ruleOut,ruleOutcnt);
	// passing rule = 1 to register 2
#ifdef DEBUG
	for(int j = 0; j < 3; j++) {
	        printf("%d ", int(ruleOut[j]));
	    }
	printf("\n");
#endif
	//TODO: add function for configuration registers / counters via AXI Lite

	//fifo that keeps input datas

	ps2ip_fifo(slaveIn,ps2ipFifo);
	//core of the IP


#ifdef DEBUG
	for(int i = 0; i < 3; i++) {
			printf("C%d: %d ",i,int(ruleOutcnt[i]));
		}
		printf("\n");
#endif
	core(ps2ipFifo,ip2psFifo,ruleOut,ruleOutcnt);
#ifndef DEBUG
	for(int i = 0; i < 3; i++) {
			printf("C%d: %d ",i,int(ruleOutcnt[i]));
		}
		printf("\n");
#endif
	rule_module_read(ruleOutcnt , ruleOutcounter0, ruleOutcounter1,ruleOutcounter2);
	//fifo that keeps output data
	ip2ps_fifo(ip2psFifo,masterOut);

#ifdef DEBUG
	for(int i = 0; i < 3; i++) {
		printf("Counters %d ",int(ruleOutcnt[i]));
	}
	printf("\n");
#endif
	return;

}





