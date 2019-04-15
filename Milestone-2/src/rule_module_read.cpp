#include "my_ip_hls.hpp"
#include <inttypes.h>

void rule_module_read(uint32 ruleOutcnt[] ,uint32 &ruleOutcounter0, uint32 &ruleOutcounter1,uint32 &ruleOutcounter2){
	ruleOutcounter0 = ruleOutcnt[0];
	ruleOutcounter1 = ruleOutcnt[1];
	ruleOutcounter2 = ruleOutcnt[2];
}





