// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="my_ip_hls,hls_ip_2017_4,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z045ffg900-2,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=dataflow,HLS_SYN_CLOCK=3.401000,HLS_SYN_LAT=6,HLS_SYN_TPT=1,HLS_SYN_MEM=4,HLS_SYN_DSP=0,HLS_SYN_FF=361,HLS_SYN_LUT=735}" *)

module my_ip_hls (
        slaveIn_TDATA,
        slaveIn_TSTRB,
        slaveIn_TLAST,
        masterOut_TDATA,
        masterOut_TSTRB,
        masterOut_TLAST,
        ap_clk,
        ap_rst_n,
        slaveIn_TVALID,
        slaveIn_TREADY,
        masterOut_TVALID,
        masterOut_TREADY
);


input  [31:0] slaveIn_TDATA;
input  [3:0] slaveIn_TSTRB;
input  [0:0] slaveIn_TLAST;
output  [31:0] masterOut_TDATA;
output  [3:0] masterOut_TSTRB;
output  [0:0] masterOut_TLAST;
input   ap_clk;
input   ap_rst_n;
input   slaveIn_TVALID;
output   slaveIn_TREADY;
output   masterOut_TVALID;
input   masterOut_TREADY;

reg    ap_rst_n_inv;
wire    ps2ip_fifo_U0_ap_start;
wire    ps2ip_fifo_U0_ap_done;
wire    ps2ip_fifo_U0_ap_continue;
wire    ps2ip_fifo_U0_ap_idle;
wire    ps2ip_fifo_U0_ap_ready;
wire    ps2ip_fifo_U0_start_out;
wire    ps2ip_fifo_U0_start_write;
wire    ps2ip_fifo_U0_slaveIn_TREADY;
wire   [31:0] ps2ip_fifo_U0_ps2ipFifo_V_data_V_din;
wire    ps2ip_fifo_U0_ps2ipFifo_V_data_V_write;
wire   [3:0] ps2ip_fifo_U0_ps2ipFifo_V_strb_V_din;
wire    ps2ip_fifo_U0_ps2ipFifo_V_strb_V_write;
wire   [0:0] ps2ip_fifo_U0_ps2ipFifo_V_last_V_din;
wire    ps2ip_fifo_U0_ps2ipFifo_V_last_V_write;
wire    core_U0_ap_start;
wire    core_U0_ap_done;
wire    core_U0_ap_continue;
wire    core_U0_ap_idle;
wire    core_U0_ap_ready;
wire    core_U0_start_out;
wire    core_U0_start_write;
wire    core_U0_ps2ipFifo_V_data_V_read;
wire    core_U0_ps2ipFifo_V_strb_V_read;
wire    core_U0_ps2ipFifo_V_last_V_read;
wire   [31:0] core_U0_ip2psFifo_V_data_V_din;
wire    core_U0_ip2psFifo_V_data_V_write;
wire   [3:0] core_U0_ip2psFifo_V_strb_V_din;
wire    core_U0_ip2psFifo_V_strb_V_write;
wire   [0:0] core_U0_ip2psFifo_V_last_V_din;
wire    core_U0_ip2psFifo_V_last_V_write;
wire    ip2ps_fifo_U0_ap_start;
wire    ip2ps_fifo_U0_ap_done;
wire    ip2ps_fifo_U0_ap_continue;
wire    ip2ps_fifo_U0_ap_idle;
wire    ip2ps_fifo_U0_ap_ready;
wire   [31:0] ip2ps_fifo_U0_masterOut_TDATA;
wire    ip2ps_fifo_U0_masterOut_TVALID;
wire   [3:0] ip2ps_fifo_U0_masterOut_TSTRB;
wire   [0:0] ip2ps_fifo_U0_masterOut_TLAST;
wire    ip2ps_fifo_U0_ip2psFifo_V_data_V_read;
wire    ip2ps_fifo_U0_ip2psFifo_V_strb_V_read;
wire    ip2ps_fifo_U0_ip2psFifo_V_last_V_read;
wire    ap_sync_continue;
wire    ps2ipFifo_V_data_V_full_n;
wire   [31:0] ps2ipFifo_V_data_V_dout;
wire    ps2ipFifo_V_data_V_empty_n;
wire    ps2ipFifo_V_strb_V_full_n;
wire   [3:0] ps2ipFifo_V_strb_V_dout;
wire    ps2ipFifo_V_strb_V_empty_n;
wire    ps2ipFifo_V_last_V_full_n;
wire   [0:0] ps2ipFifo_V_last_V_dout;
wire    ps2ipFifo_V_last_V_empty_n;
wire    ip2psFifo_V_data_V_full_n;
wire   [31:0] ip2psFifo_V_data_V_dout;
wire    ip2psFifo_V_data_V_empty_n;
wire    ip2psFifo_V_strb_V_full_n;
wire   [3:0] ip2psFifo_V_strb_V_dout;
wire    ip2psFifo_V_strb_V_empty_n;
wire    ip2psFifo_V_last_V_full_n;
wire   [0:0] ip2psFifo_V_last_V_dout;
wire    ip2psFifo_V_last_V_empty_n;
wire   [0:0] start_for_core_U0_din;
wire    start_for_core_U0_full_n;
wire   [0:0] start_for_core_U0_dout;
wire    start_for_core_U0_empty_n;
wire   [0:0] start_for_ip2ps_fifo_U0_din;
wire    start_for_ip2ps_fifo_U0_full_n;
wire   [0:0] start_for_ip2ps_fifo_U0_dout;
wire    start_for_ip2ps_fifo_U0_empty_n;
wire    ip2ps_fifo_U0_start_full_n;
wire    ip2ps_fifo_U0_start_write;

ps2ip_fifo ps2ip_fifo_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(ps2ip_fifo_U0_ap_start),
    .start_full_n(start_for_core_U0_full_n),
    .ap_done(ps2ip_fifo_U0_ap_done),
    .ap_continue(ps2ip_fifo_U0_ap_continue),
    .ap_idle(ps2ip_fifo_U0_ap_idle),
    .ap_ready(ps2ip_fifo_U0_ap_ready),
    .slaveIn_TVALID(slaveIn_TVALID),
    .start_out(ps2ip_fifo_U0_start_out),
    .start_write(ps2ip_fifo_U0_start_write),
    .slaveIn_TDATA(slaveIn_TDATA),
    .slaveIn_TREADY(ps2ip_fifo_U0_slaveIn_TREADY),
    .slaveIn_TSTRB(slaveIn_TSTRB),
    .slaveIn_TLAST(slaveIn_TLAST),
    .ps2ipFifo_V_data_V_din(ps2ip_fifo_U0_ps2ipFifo_V_data_V_din),
    .ps2ipFifo_V_data_V_full_n(ps2ipFifo_V_data_V_full_n),
    .ps2ipFifo_V_data_V_write(ps2ip_fifo_U0_ps2ipFifo_V_data_V_write),
    .ps2ipFifo_V_strb_V_din(ps2ip_fifo_U0_ps2ipFifo_V_strb_V_din),
    .ps2ipFifo_V_strb_V_full_n(ps2ipFifo_V_strb_V_full_n),
    .ps2ipFifo_V_strb_V_write(ps2ip_fifo_U0_ps2ipFifo_V_strb_V_write),
    .ps2ipFifo_V_last_V_din(ps2ip_fifo_U0_ps2ipFifo_V_last_V_din),
    .ps2ipFifo_V_last_V_full_n(ps2ipFifo_V_last_V_full_n),
    .ps2ipFifo_V_last_V_write(ps2ip_fifo_U0_ps2ipFifo_V_last_V_write)
);

core core_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(core_U0_ap_start),
    .start_full_n(start_for_ip2ps_fifo_U0_full_n),
    .ap_done(core_U0_ap_done),
    .ap_continue(core_U0_ap_continue),
    .ap_idle(core_U0_ap_idle),
    .ap_ready(core_U0_ap_ready),
    .start_out(core_U0_start_out),
    .start_write(core_U0_start_write),
    .ps2ipFifo_V_data_V_dout(ps2ipFifo_V_data_V_dout),
    .ps2ipFifo_V_data_V_empty_n(ps2ipFifo_V_data_V_empty_n),
    .ps2ipFifo_V_data_V_read(core_U0_ps2ipFifo_V_data_V_read),
    .ps2ipFifo_V_strb_V_dout(ps2ipFifo_V_strb_V_dout),
    .ps2ipFifo_V_strb_V_empty_n(ps2ipFifo_V_strb_V_empty_n),
    .ps2ipFifo_V_strb_V_read(core_U0_ps2ipFifo_V_strb_V_read),
    .ps2ipFifo_V_last_V_dout(ps2ipFifo_V_last_V_dout),
    .ps2ipFifo_V_last_V_empty_n(ps2ipFifo_V_last_V_empty_n),
    .ps2ipFifo_V_last_V_read(core_U0_ps2ipFifo_V_last_V_read),
    .ip2psFifo_V_data_V_din(core_U0_ip2psFifo_V_data_V_din),
    .ip2psFifo_V_data_V_full_n(ip2psFifo_V_data_V_full_n),
    .ip2psFifo_V_data_V_write(core_U0_ip2psFifo_V_data_V_write),
    .ip2psFifo_V_strb_V_din(core_U0_ip2psFifo_V_strb_V_din),
    .ip2psFifo_V_strb_V_full_n(ip2psFifo_V_strb_V_full_n),
    .ip2psFifo_V_strb_V_write(core_U0_ip2psFifo_V_strb_V_write),
    .ip2psFifo_V_last_V_din(core_U0_ip2psFifo_V_last_V_din),
    .ip2psFifo_V_last_V_full_n(ip2psFifo_V_last_V_full_n),
    .ip2psFifo_V_last_V_write(core_U0_ip2psFifo_V_last_V_write)
);

ip2ps_fifo ip2ps_fifo_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(ip2ps_fifo_U0_ap_start),
    .ap_done(ip2ps_fifo_U0_ap_done),
    .ap_continue(ip2ps_fifo_U0_ap_continue),
    .ap_idle(ip2ps_fifo_U0_ap_idle),
    .ap_ready(ip2ps_fifo_U0_ap_ready),
    .masterOut_TREADY(masterOut_TREADY),
    .masterOut_TDATA(ip2ps_fifo_U0_masterOut_TDATA),
    .masterOut_TVALID(ip2ps_fifo_U0_masterOut_TVALID),
    .masterOut_TSTRB(ip2ps_fifo_U0_masterOut_TSTRB),
    .masterOut_TLAST(ip2ps_fifo_U0_masterOut_TLAST),
    .ip2psFifo_V_data_V_dout(ip2psFifo_V_data_V_dout),
    .ip2psFifo_V_data_V_empty_n(ip2psFifo_V_data_V_empty_n),
    .ip2psFifo_V_data_V_read(ip2ps_fifo_U0_ip2psFifo_V_data_V_read),
    .ip2psFifo_V_strb_V_dout(ip2psFifo_V_strb_V_dout),
    .ip2psFifo_V_strb_V_empty_n(ip2psFifo_V_strb_V_empty_n),
    .ip2psFifo_V_strb_V_read(ip2ps_fifo_U0_ip2psFifo_V_strb_V_read),
    .ip2psFifo_V_last_V_dout(ip2psFifo_V_last_V_dout),
    .ip2psFifo_V_last_V_empty_n(ip2psFifo_V_last_V_empty_n),
    .ip2psFifo_V_last_V_read(ip2ps_fifo_U0_ip2psFifo_V_last_V_read)
);

fifo_w32_d64_A ps2ipFifo_V_data_V_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(ps2ip_fifo_U0_ps2ipFifo_V_data_V_din),
    .if_full_n(ps2ipFifo_V_data_V_full_n),
    .if_write(ps2ip_fifo_U0_ps2ipFifo_V_data_V_write),
    .if_dout(ps2ipFifo_V_data_V_dout),
    .if_empty_n(ps2ipFifo_V_data_V_empty_n),
    .if_read(core_U0_ps2ipFifo_V_data_V_read)
);

fifo_w4_d64_A ps2ipFifo_V_strb_V_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(ps2ip_fifo_U0_ps2ipFifo_V_strb_V_din),
    .if_full_n(ps2ipFifo_V_strb_V_full_n),
    .if_write(ps2ip_fifo_U0_ps2ipFifo_V_strb_V_write),
    .if_dout(ps2ipFifo_V_strb_V_dout),
    .if_empty_n(ps2ipFifo_V_strb_V_empty_n),
    .if_read(core_U0_ps2ipFifo_V_strb_V_read)
);

fifo_w1_d64_A ps2ipFifo_V_last_V_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(ps2ip_fifo_U0_ps2ipFifo_V_last_V_din),
    .if_full_n(ps2ipFifo_V_last_V_full_n),
    .if_write(ps2ip_fifo_U0_ps2ipFifo_V_last_V_write),
    .if_dout(ps2ipFifo_V_last_V_dout),
    .if_empty_n(ps2ipFifo_V_last_V_empty_n),
    .if_read(core_U0_ps2ipFifo_V_last_V_read)
);

fifo_w32_d64_A ip2psFifo_V_data_V_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(core_U0_ip2psFifo_V_data_V_din),
    .if_full_n(ip2psFifo_V_data_V_full_n),
    .if_write(core_U0_ip2psFifo_V_data_V_write),
    .if_dout(ip2psFifo_V_data_V_dout),
    .if_empty_n(ip2psFifo_V_data_V_empty_n),
    .if_read(ip2ps_fifo_U0_ip2psFifo_V_data_V_read)
);

fifo_w4_d64_A ip2psFifo_V_strb_V_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(core_U0_ip2psFifo_V_strb_V_din),
    .if_full_n(ip2psFifo_V_strb_V_full_n),
    .if_write(core_U0_ip2psFifo_V_strb_V_write),
    .if_dout(ip2psFifo_V_strb_V_dout),
    .if_empty_n(ip2psFifo_V_strb_V_empty_n),
    .if_read(ip2ps_fifo_U0_ip2psFifo_V_strb_V_read)
);

fifo_w1_d64_A ip2psFifo_V_last_V_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(core_U0_ip2psFifo_V_last_V_din),
    .if_full_n(ip2psFifo_V_last_V_full_n),
    .if_write(core_U0_ip2psFifo_V_last_V_write),
    .if_dout(ip2psFifo_V_last_V_dout),
    .if_empty_n(ip2psFifo_V_last_V_empty_n),
    .if_read(ip2ps_fifo_U0_ip2psFifo_V_last_V_read)
);

start_for_core_U0 start_for_core_U0_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_core_U0_din),
    .if_full_n(start_for_core_U0_full_n),
    .if_write(ps2ip_fifo_U0_start_write),
    .if_dout(start_for_core_U0_dout),
    .if_empty_n(start_for_core_U0_empty_n),
    .if_read(core_U0_ap_ready)
);

start_for_ip2ps_fbkb start_for_ip2ps_fbkb_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_ip2ps_fifo_U0_din),
    .if_full_n(start_for_ip2ps_fifo_U0_full_n),
    .if_write(core_U0_start_write),
    .if_dout(start_for_ip2ps_fifo_U0_dout),
    .if_empty_n(start_for_ip2ps_fifo_U0_empty_n),
    .if_read(ip2ps_fifo_U0_ap_ready)
);

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign ap_sync_continue = 1'b0;

assign core_U0_ap_continue = 1'b1;

assign core_U0_ap_start = start_for_core_U0_empty_n;

assign ip2ps_fifo_U0_ap_continue = 1'b1;

assign ip2ps_fifo_U0_ap_start = start_for_ip2ps_fifo_U0_empty_n;

assign ip2ps_fifo_U0_start_full_n = 1'b1;

assign ip2ps_fifo_U0_start_write = 1'b0;

assign masterOut_TDATA = ip2ps_fifo_U0_masterOut_TDATA;

assign masterOut_TLAST = ip2ps_fifo_U0_masterOut_TLAST;

assign masterOut_TSTRB = ip2ps_fifo_U0_masterOut_TSTRB;

assign masterOut_TVALID = ip2ps_fifo_U0_masterOut_TVALID;

assign ps2ip_fifo_U0_ap_continue = 1'b1;

assign ps2ip_fifo_U0_ap_start = 1'b1;

assign slaveIn_TREADY = ps2ip_fifo_U0_slaveIn_TREADY;

assign start_for_core_U0_din = 1'b1;

assign start_for_ip2ps_fifo_U0_din = 1'b1;

endmodule //my_ip_hls
