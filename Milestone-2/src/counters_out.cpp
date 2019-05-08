#include "my_ip_hls.hpp"

void counters_out(	uint32 cnt0Reg, uint32 cnt1Reg, uint32 cnt2Reg,
					uint32 &rule0cnt, uint32 &rule1cnt, uint32 &rule2cnt){

	// Read rules' Counters
	rule0cnt = cnt0Reg;
	rule1cnt = cnt1Reg;
	rule2cnt = cnt2Reg;
}
