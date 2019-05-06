#include "my_ip_hls.hpp"
#include <iostream>
#include <stdint.h>

void core(stream<axiWord> &ps2ipIntFifo,stream<axiWord> &ip2psIntFifo,uint32 rules[],uint32 rulesCnts[]) {
#pragma HLS PIPELINE II=1 enable_flush
#pragma HLS INTERFACE ap_ctrl_none port=return

	static enum inStates {
		IN_STATE_IDLE = 0
	} curState;

	static axiWord newInWord = {0,0,0};

	switch(curState) {
		  case (IN_STATE_IDLE): {
			  if (!ps2ipIntFifo.empty()) {
				  ps2ipIntFifo.read(newInWord);

				  // Check if this packet triggers one of the rules
				  int flag = 0 ;
				  for(int i=0; i<3; i++){
					  if (newInWord.data == rules[i]){
						  rulesCnts[i] = rulesCnts[i] + 1;
						  flag = 1;
					  }
				  }

				  // Write back packet only in case none
				  // of the rules has been triggered
				  if(flag == 0){
					 ip2psIntFifo.write(newInWord);
				  }
			  }
			  curState = IN_STATE_IDLE;

			  break;
	      }
	};
	return;
}
