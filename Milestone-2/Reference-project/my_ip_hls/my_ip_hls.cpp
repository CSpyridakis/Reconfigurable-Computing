#include "my_ip_hls.hpp"


void my_ip_hls(stream<axiWord> &slaveIn,stream<axiWord> &masterOut) {

#pragma HLS DATAFLOW interval=1
#pragma HLS INTERFACE axis register both port=slaveIn
#pragma HLS INTERFACE axis register both port=masterOut
#pragma HLS INTERFACE ap_ctrl_none port=return

//internal fifos
	static stream<axiWord> ps2ipFifo("ps2ipFifo");
#pragma HLS STREAM variable=ps2ipFifo depth=64 dim=1
	static stream<axiWord> ip2psFifo("ip2psFifo");
#pragma HLS STREAM variable=ip2psFifo depth=64 dim=1


	//TODO: add function for configuration registers / counters via AXI Lite

	//fifo that keeps input data
	ps2ip_fifo(slaveIn,ps2ipFifo);
	//core of the IP
	core(ps2ipFifo,ip2psFifo);
	//fifo that keeps output data
	ip2ps_fifo(ip2psFifo,masterOut);

	return;

}





