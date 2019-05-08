#include <hls_stream.h>
#include <ap_int.h>
#include <iostream>
#include <stdint.h>

using namespace hls;

struct axiWord {
   ap_uint<32>  data;
   ap_uint<4>   strb;
   ap_uint<1>   last;
};

typedef ap_uint<32> uint32;
typedef ap_uint<1> uint1;
typedef ap_uint<2> uint2;

void ps2ip_fifo(stream<axiWord> &ps2ip,stream<axiWord> &ps2ipIntFifo);
void ip2ps_fifo(stream<axiWord> &ip2psIntFifo,stream<axiWord> &ip2ps);

void core(	stream<axiWord> &ps2ipIntFifo,stream<axiWord> &ip2psIntFifo,
			uint32 rule0Reg, uint32 rule1Reg, uint32 rule2Reg,
			uint32 &cnt0Reg, uint32 &cnt1Reg, uint32 &cnt2Reg);

//TODO: AXI 4 Lite counters out
void my_ip_hls(	stream<axiWord> &slaveIn,stream<axiWord> &masterOut,
				uint32 rule0, uint32 rule1, uint32 rule2);
				//uint32 &rule0cnt, uint32 &rule1cnt, uint32 &rule2cnt);

/**
 *	\brief  This function saves rules' values from axi 4 lite interface in internal registers.
 *			Moreover re-initialize the value of a counter when this rule is replaced.
 *
 *	\param rule0 		First rule value
 *	\param rule1 		Second rule value
 *	\param rule2 		Third rule value
 *
 *	\param rule0Reg 	Registers that first rule is located
 *	\param rule1Reg 	Registers that second rule is located
 *	\param rule2Reg 	Registers that third rule is located
 */
void rules_in(	uint32 rule0, uint32 rule1, uint32 rule2,
				uint32 &rule0Reg, uint32 &rule1Reg, uint32 &rule2Reg);

/**
 *	\brief  The actual wiring between rules' counters internal registers and
 *			axi 4 lite interface.
 *
 *	\param cnt0Reg			Registers that first counter value is located
 *	\param cnt1Reg			Registers that second counter value is located
 *	\param cnt2Reg			Registers that third counter value is located
 *
 *	\param rule0cnt			first counter to Axi 4 Lite
 *	\param rule1cnt			second counter to Axi 4 Lite
 *	\param rule2cnt			third counter to Axi 4 Lite
 *
 */
void counters_out(	uint32 cnt0Reg, uint32 cnt1Reg, uint32 cnt2Reg,
					uint32 &rule0cnt, uint32 &rule1cnt, uint32 &rule2cnt);
