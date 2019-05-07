#include "my_ip_hls.hpp"
#include <iostream>
#include <stdint.h>

// Try to solve problem using arrays
#ifdef ARRAY_SOLUTION

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
						  rulesCnts[i] ++;
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

#else

void core(stream<axiWord> &ps2ipIntFifo,stream<axiWord> &ip2psIntFifo,uint32 rule0Reg, uint32 rule1Reg, uint32 rule2Reg, uint32 &rule0cntReg, uint32 &rule1cntReg, uint32 &rule2cntReg){
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
				  if (newInWord.data == rule0Reg){
					  rule0cntReg ++;
				  }
				  else if (newInWord.data == rule1Reg){
					  rule1cntReg ++;
				  }
				  else if (newInWord.data == rule2Reg){
					  rule2cntReg ++;
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

#endif
