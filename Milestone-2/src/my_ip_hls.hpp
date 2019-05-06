#include <hls_stream.h>
#include <ap_int.h>
#include <iostream>
#include <stdint.h>
#include <stdio.h>

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

void core(stream<axiWord> &ps2ipIntFifo,stream<axiWord> &ip2psIntFifo,uint32 rules[],uint32 rulesCnts[]);

void my_ip_hls(stream<axiWord> &slaveIn,stream<axiWord> &masterOut, uint32 rule0, uint32 rule1, uint32 rule2, uint32 &rule0cnt, uint32 &rule1cnt, uint32 &rule2cnt);

/**
 *	\brief  This function saves rules' values from axi 4 lite interface in internal registers.
 *			Moreover re-initialize the value of a counter when this rule is replaced.
 *
 *	\param rule0 		First rule value
 *	\param rule1 		Second rule value
 *	\param rule2 		Third rule value
 *
 *	\param rules 		The array style registers that rules are saved
 *	\param rulesCnts	The array style registers that rules counters are located
 */
void give_rules(uint32 rule0, uint32 rule1, uint32 rule2, uint32 rules[], uint32 rulesCnts[]);

/**
 *	\brief  The actual wiring between rules' counters internal registers and
 *			axi 4 lite interface.
 *
 *	\param rulesCnts		The array style registers that rules' counters are located
 *
 *	\param rule0cnt 		First rule counter value
 *	\param rule1cnt 		Second rule counter value
 *	\param rule2cnt 		Third rule counter value
 */
void read_rules_counters(uint32 rulesCnts[] ,uint32 &rule0cnt, uint32 &rule1cnt, uint32 &rule2cnt);
