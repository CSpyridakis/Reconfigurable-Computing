#include "my_ip_hls.hpp"
#include <inttypes.h>

// Try to solve problem using arrays
#ifdef ARRAY_SOLUTION

void give_rules(uint32 rule0 ,uint32 rule1, uint32 rule2, uint32 rules[],uint32 rulesCnts[]) {

	// Re-initialize counters if one or more of the rules changed
	rulesCnts[0] = (rules[0] == rule0) ? rulesCnts[0] : (uint32)0;
	rulesCnts[1] = (rules[1] == rule1) ? rulesCnts[1] : (uint32)0;
	rulesCnts[2] = (rules[2] == rule2) ? rulesCnts[2] : (uint32)0;

	// Save rules in registers
	rules[0] = rule0;
	rules[1] = rule1;
	rules[2] = rule2;
}

#else

void give_rules(uint32 rule0, uint32 rule1, uint32 rule2, uint32 &rule0Reg, uint32 &rule1Reg, uint32 &rule2Reg, uint32 &rule0cntReg, uint32 &rule1cntReg, uint32 &rule2cntReg){

	// Re-initialize counters if one or more of the rules changed
	rule0cntReg = (rule0Reg == rule0) ? rule0cntReg : (uint32)0;
	rule1cntReg = (rule1Reg == rule1) ? rule1cntReg : (uint32)0;
	rule2cntReg = (rule2Reg == rule2) ? rule2cntReg : (uint32)0;

	// Save rules in registers
	rule0Reg = rule0;
	rule1Reg = rule1;
	rule2Reg = rule2;
}

#endif


