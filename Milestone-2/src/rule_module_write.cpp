#include "my_ip_hls.hpp"
#include <inttypes.h>

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
