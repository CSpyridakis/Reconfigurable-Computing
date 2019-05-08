#include "my_ip_hls.hpp"


void my_ip_hls( stream<axiWord> &slaveIn,stream<axiWord> &masterOut,
				uint32 rule0, uint32 rule1, uint32 rule2){//,
				//uint32 &rule0cnt, uint32 &rule1cnt, uint32 &rule2cnt) {

// AXI 4 Stream interface
#pragma HLS DATAFLOW interval=1
#pragma HLS INTERFACE axis register both port=slaveIn
#pragma HLS INTERFACE axis register both port=masterOut
#pragma HLS INTERFACE ap_ctrl_none port=return

// ----------------------------------------------------
// PS <-> My IP data transfer using AXI 4 Lite protocol
// ----------------------------------------------------
// Rules
#pragma HLS INTERFACE s_axilite port=rule0 bundle=psAxiLite
#pragma HLS INTERFACE s_axilite port=rule1 bundle=psAxiLite
#pragma HLS INTERFACE s_axilite port=rule2 bundle=psAxiLite
// Rules' Counters
//#pragma HLS INTERFACE s_axilite port=rule0cnt bundle=psAxiLite
//#pragma HLS INTERFACE s_axilite port=rule1cnt bundle=psAxiLite
//#pragma HLS INTERFACE s_axilite port=rule2cnt bundle=psAxiLite

//internal fifos
	static stream<axiWord> ps2ipFifo("ps2ipFifo");
#pragma HLS STREAM variable=ps2ipFifo depth=64 dim=1
	static stream<axiWord> ip2psFifo("ip2psFifo");
#pragma HLS STREAM variable=ip2psFifo depth=64 dim=1

	// Rules registers
	static uint32 rule0Reg=0;
	static uint32 rule1Reg=0;
	static uint32 rule2Reg=0;
	// Rules' Counters registers
	static uint32 cnt0Reg=0;
	static uint32 cnt1Reg=0;
	static uint32 cnt2Reg=0;

	// Save Rules and their counters in registers
	rules_in(rule0, rule1, rule2, rule0Reg, rule1Reg, rule2Reg);

	//fifo that keeps input data
	ps2ip_fifo(slaveIn,ps2ipFifo);
	//core of the IP
	core(ps2ipFifo, ip2psFifo, rule0Reg, rule1Reg, rule2Reg, cnt0Reg, cnt1Reg, cnt2Reg);
	//fifo that keeps output data
	ip2ps_fifo(ip2psFifo,masterOut);

	// Give back rules' counters
	// TODO
	//counters_out(cnt0Reg, cnt1Reg, cnt2Reg, rule0cnt, rule1cnt, rule2cnt);
	//printf("\nResults:\n  Counter 0 : %d\n  Counter 1 : %d\n  Counter 2 : %d\n---------------------------------\n\n",(int)cnt0Reg,(int)cnt1Reg,(int)cnt2Reg);

	return;

}
