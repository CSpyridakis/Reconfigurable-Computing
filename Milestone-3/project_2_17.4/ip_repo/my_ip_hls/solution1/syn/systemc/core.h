// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _core_HH_
#define _core_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct core : public sc_module {
    // Port declarations 34
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_in< sc_logic > start_full_n;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_logic > start_out;
    sc_out< sc_logic > start_write;
    sc_in< sc_lv<32> > p_read;
    sc_in< sc_lv<32> > p_read1;
    sc_in< sc_lv<32> > p_read2;
    sc_in< sc_lv<32> > ps2ipFifo_V_data_V_dout;
    sc_in< sc_logic > ps2ipFifo_V_data_V_empty_n;
    sc_out< sc_logic > ps2ipFifo_V_data_V_read;
    sc_in< sc_lv<4> > ps2ipFifo_V_strb_V_dout;
    sc_in< sc_logic > ps2ipFifo_V_strb_V_empty_n;
    sc_out< sc_logic > ps2ipFifo_V_strb_V_read;
    sc_in< sc_lv<1> > ps2ipFifo_V_last_V_dout;
    sc_in< sc_logic > ps2ipFifo_V_last_V_empty_n;
    sc_out< sc_logic > ps2ipFifo_V_last_V_read;
    sc_out< sc_lv<32> > ip2psFifo_V_data_V_din;
    sc_in< sc_logic > ip2psFifo_V_data_V_full_n;
    sc_out< sc_logic > ip2psFifo_V_data_V_write;
    sc_out< sc_lv<4> > ip2psFifo_V_strb_V_din;
    sc_in< sc_logic > ip2psFifo_V_strb_V_full_n;
    sc_out< sc_logic > ip2psFifo_V_strb_V_write;
    sc_out< sc_lv<1> > ip2psFifo_V_last_V_din;
    sc_in< sc_logic > ip2psFifo_V_last_V_full_n;
    sc_out< sc_logic > ip2psFifo_V_last_V_write;
    sc_out< sc_lv<32> > ap_return_0;
    sc_out< sc_lv<32> > ap_return_1;
    sc_out< sc_lv<32> > ap_return_2;


    // Module declarations
    core(sc_module_name name);
    SC_HAS_PROCESS(core);

    ~core();

    sc_trace_file* mVcdFile;

    sc_signal< sc_logic > real_start;
    sc_signal< sc_logic > start_once_reg;
    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<1> > ap_CS_iter0_fsm;
    sc_signal< sc_logic > ap_CS_iter0_fsm_state1;
    sc_signal< sc_lv<2> > ap_CS_iter1_fsm;
    sc_signal< sc_logic > ap_CS_iter1_fsm_state0;
    sc_signal< sc_logic > internal_ap_ready;
    sc_signal< sc_logic > ps2ipFifo_V_data_V0_status;
    sc_signal< sc_lv<1> > tmp_nbreadreq_fu_74_p5;
    sc_signal< bool > ap_block_state1_pp0_stage0_iter0;
    sc_signal< sc_logic > ip2psFifo_V_data_V1_status;
    sc_signal< sc_lv<1> > tmp_reg_256;
    sc_signal< sc_lv<1> > tmp_6_i_i_reg_275;
    sc_signal< sc_lv<1> > tmp_8_i_i_reg_300;
    sc_signal< sc_lv<1> > tmp_i_i_reg_304;
    sc_signal< bool > ap_predicate_op39_write_state2;
    sc_signal< bool > ap_block_state2_pp0_stage0_iter1;
    sc_signal< sc_logic > ap_CS_iter1_fsm_state2;
    sc_signal< sc_lv<32> > cnt0Reg_core_V;
    sc_signal< sc_lv<32> > cnt1Reg_core_V;
    sc_signal< sc_lv<32> > cnt2Reg_core_V;
    sc_signal< sc_logic > ps2ipFifo_V_data_V_blk_n;
    sc_signal< sc_logic > ps2ipFifo_V_strb_V_blk_n;
    sc_signal< sc_logic > ps2ipFifo_V_last_V_blk_n;
    sc_signal< sc_logic > ip2psFifo_V_data_V_blk_n;
    sc_signal< sc_logic > ip2psFifo_V_strb_V_blk_n;
    sc_signal< sc_logic > ip2psFifo_V_last_V_blk_n;
    sc_signal< sc_lv<32> > tmp_data_V_reg_260;
    sc_signal< sc_lv<4> > tmp_strb_V_reg_265;
    sc_signal< sc_lv<1> > tmp_last_V_reg_270;
    sc_signal< sc_lv<1> > tmp_6_i_i_fu_172_p2;
    sc_signal< sc_lv<1> > tmp_8_i_i_fu_190_p2;
    sc_signal< sc_lv<1> > tmp_i_i_fu_196_p2;
    sc_signal< sc_lv<32> > tmp_1_i_i_fu_202_p2;
    sc_signal< sc_lv<32> > tmp_9_i_i_fu_214_p2;
    sc_signal< sc_lv<32> > tmp_7_i_i_fu_226_p2;
    sc_signal< sc_lv<32> > ap_phi_reg_pp0_iter0_cnt1Reg_V_write_assi_reg_109;
    sc_signal< sc_lv<32> > ap_phi_reg_pp0_iter1_cnt1Reg_V_write_assi_reg_109;
    sc_signal< sc_lv<32> > ap_phi_reg_pp0_iter0_cnt2Reg_V_write_assi_reg_126;
    sc_signal< sc_lv<32> > ap_phi_reg_pp0_iter1_cnt2Reg_V_write_assi_reg_126;
    sc_signal< sc_lv<32> > ap_phi_reg_pp0_iter0_cnt0Reg_V_write_assi_reg_143;
    sc_signal< sc_lv<32> > ap_phi_reg_pp0_iter1_cnt0Reg_V_write_assi_reg_143;
    sc_signal< sc_logic > ps2ipFifo_V_data_V0_update;
    sc_signal< sc_logic > ip2psFifo_V_data_V1_update;
    sc_signal< sc_lv<32> > ap_return_0_preg;
    sc_signal< sc_lv<32> > ap_return_1_preg;
    sc_signal< sc_lv<32> > ap_return_2_preg;
    sc_signal< sc_lv<1> > ap_NS_iter0_fsm;
    sc_signal< sc_lv<2> > ap_NS_iter1_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<1> ap_ST_iter0_fsm_state1;
    static const sc_lv<2> ap_ST_iter1_fsm_state2;
    static const sc_lv<2> ap_ST_iter1_fsm_state0;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_iter0_fsm_state1();
    void thread_ap_CS_iter1_fsm_state0();
    void thread_ap_CS_iter1_fsm_state2();
    void thread_ap_block_state1_pp0_stage0_iter0();
    void thread_ap_block_state2_pp0_stage0_iter1();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_phi_reg_pp0_iter0_cnt0Reg_V_write_assi_reg_143();
    void thread_ap_phi_reg_pp0_iter0_cnt1Reg_V_write_assi_reg_109();
    void thread_ap_phi_reg_pp0_iter0_cnt2Reg_V_write_assi_reg_126();
    void thread_ap_predicate_op39_write_state2();
    void thread_ap_ready();
    void thread_ap_return_0();
    void thread_ap_return_1();
    void thread_ap_return_2();
    void thread_internal_ap_ready();
    void thread_ip2psFifo_V_data_V1_status();
    void thread_ip2psFifo_V_data_V1_update();
    void thread_ip2psFifo_V_data_V_blk_n();
    void thread_ip2psFifo_V_data_V_din();
    void thread_ip2psFifo_V_data_V_write();
    void thread_ip2psFifo_V_last_V_blk_n();
    void thread_ip2psFifo_V_last_V_din();
    void thread_ip2psFifo_V_last_V_write();
    void thread_ip2psFifo_V_strb_V_blk_n();
    void thread_ip2psFifo_V_strb_V_din();
    void thread_ip2psFifo_V_strb_V_write();
    void thread_ps2ipFifo_V_data_V0_status();
    void thread_ps2ipFifo_V_data_V0_update();
    void thread_ps2ipFifo_V_data_V_blk_n();
    void thread_ps2ipFifo_V_data_V_read();
    void thread_ps2ipFifo_V_last_V_blk_n();
    void thread_ps2ipFifo_V_last_V_read();
    void thread_ps2ipFifo_V_strb_V_blk_n();
    void thread_ps2ipFifo_V_strb_V_read();
    void thread_real_start();
    void thread_start_out();
    void thread_start_write();
    void thread_tmp_1_i_i_fu_202_p2();
    void thread_tmp_6_i_i_fu_172_p2();
    void thread_tmp_7_i_i_fu_226_p2();
    void thread_tmp_8_i_i_fu_190_p2();
    void thread_tmp_9_i_i_fu_214_p2();
    void thread_tmp_i_i_fu_196_p2();
    void thread_tmp_nbreadreq_fu_74_p5();
    void thread_ap_NS_iter0_fsm();
    void thread_ap_NS_iter1_fsm();
};

}

using namespace ap_rtl;

#endif
