#include "my_ip_hls.hpp"


void my_ip_hls(stream<axiWord> &slaveIn,stream<axiWord> &MasterOut) {
#pragma HLS PIPELINE II=1 enable_flush
#pragma HLS INTERFACE axis register both port=slaveIn
#pragma HLS INTERFACE axis register both port=MasterOut
#pragma HLS INTERFACE ap_ctrl_none port=return

	static enum inStates 	{	IN_STATE_IDLE = 0
							} curState;


	switch(curState) {

		  case (IN_STATE_IDLE): {
			  if (!slaveIn.empty()) {
				  axiWord newInWord = {0,0,0};
				  slaveIn.read(newInWord);
				  MasterOut.write(newInWord);
			  }
			  curState = IN_STATE_IDLE;
			  break;
	      }
	};

	return;

}





