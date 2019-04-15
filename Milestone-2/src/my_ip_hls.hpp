#include <hls_stream.h>
#include <ap_int.h>
#include <iostream>
#include <stdint.h>
#include <stdio.h>

//#define DEBUG 1

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
void core(stream<axiWord> &ps2ipIntFifo,stream<axiWord> &ip2psIntFifo,uint32 ruleOut[],uint32 ruleOutcnt[]);
void my_ip_hls(stream<axiWord> &slaveIn,stream<axiWord> &masterOut, uint32,uint32,uint32,uint32 &,uint32 &,uint32 &);
void rule_module_write(uint32 rule1 ,uint32 rule2, uint32 rule3, uint32 ruleOut[],uint32 ruleOutcnt[]);
void rule_module_read(uint32 ruleOutcnt[] ,uint32  &ruleOutcounter0, uint32 &ruleOutcounter1,uint32 &ruleOutcounter2);
