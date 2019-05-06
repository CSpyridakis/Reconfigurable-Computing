#include "my_ip_hls.hpp"
#include <inttypes.h>

void read_rules_counters(uint32 rulesCnts[] ,uint32 &rule0cnt, uint32 &rule1cnt,uint32 &rule2cnt){
	// Read rules' Counters
	rule0cnt = rulesCnts[0];
	rule1cnt = rulesCnts[1];
	rule2cnt = rulesCnts[2];
}
