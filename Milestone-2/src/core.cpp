#include "my_ip_hls.hpp"

void core(	stream<axiWord> &ps2ipIntFifo,stream<axiWord> &ip2psIntFifo,
			uint32 rule0Reg, uint32 rule1Reg, uint32 rule2Reg,
			uint32 &cnt0Reg, uint32 &cnt1Reg, uint32 &cnt2Reg) {

#pragma HLS PIPELINE II=1 enable_flush
#pragma HLS INTERFACE ap_ctrl_none port=return

	static enum inStates 	{
								IN_STATE_IDLE = 0
							} curState;

	static axiWord newInWord = {0,0,0};

	switch(curState) {

		  case (IN_STATE_IDLE): {
			  if (!ps2ipIntFifo.empty()) {
				  ps2ipIntFifo.read(newInWord);

				  // Check if this packet triggers one of the rules
				  if (rule0Reg == newInWord.data){
					  cnt0Reg++;
				  }
				  else if(rule1Reg == newInWord.data){
					  cnt1Reg++;
				  }
				  else if (rule2Reg == newInWord.data){
					  cnt2Reg++;
				  }
				  // Write back packet only in case none
				  // of the rules has been triggered
				  else{
					  ip2psIntFifo.write(newInWord);
				  }
			  }

			  curState = IN_STATE_IDLE;

			  break;
	      }
	};

	return;

}





