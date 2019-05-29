#include "my_ip_hls.hpp"

void rules_in(	uint32 rule0, uint32 rule1, uint32 rule2,
				uint32 &rule0Reg, uint32 &rule1Reg, uint32 &rule2Reg){

	// Save rules in registers
	rule0Reg = rule0;
	rule1Reg = rule1;
	rule2Reg = rule2;

}
