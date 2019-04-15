#include "my_ip_hls.hpp"
#include <inttypes.h>

void rule_module_write(uint32 rule1 ,uint32 rule2, uint32 rule3, uint32 ruleOut[],uint32 ruleOutcnt[] ) {

	if(ruleOut[0]!= rule1){
		ruleOutcnt[0] = 0;
	}
	else if(ruleOut[1]!= rule2){
		ruleOutcnt[1] = 0;
	}
	else if(ruleOut[2]!= rule3){
		ruleOutcnt[2] = 0;
	}
	ruleOut[0] = rule1;
	ruleOut[1] = rule2;
	ruleOut[2] = rule3;
}





