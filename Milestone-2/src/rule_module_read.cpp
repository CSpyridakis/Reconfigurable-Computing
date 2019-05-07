#include "my_ip_hls.hpp"
#include <inttypes.h>


// Try to solve problem using arrays
#ifdef ARRAY_SOLUTION

void read_rules_counters(uint32 rulesCnts[] ,uint32 &rule0cnt, uint32 &rule1cnt,uint32 &rule2cnt){
	// Read rules' Counters
	rule0cnt = rulesCnts[0];
	rule1cnt = rulesCnts[1];
	rule2cnt = rulesCnts[2];
}

#else

void read_rules_counters(uint32 rule0cntReg, uint32 rule1cntReg, uint32 rule2cntReg ,uint32 &rule0cnt, uint32 &rule1cnt, uint32 &rule2cnt){
	// Read rules' Counters
	rule0cnt = rule0cntReg;
	rule1cnt = rule1cntReg;
	rule2cnt = rule2cntReg;
}

#endif
