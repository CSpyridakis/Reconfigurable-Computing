-- (c) Copyright 1995-2019 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:hls:my_ip_hls:1.1
-- IP Revision: 1905290955

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY base_zynq_my_ip_hls_0_0 IS
  PORT (
    s_axi_psAxiLite_AWADDR : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
    s_axi_psAxiLite_AWVALID : IN STD_LOGIC;
    s_axi_psAxiLite_AWREADY : OUT STD_LOGIC;
    s_axi_psAxiLite_WDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_psAxiLite_WSTRB : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_psAxiLite_WVALID : IN STD_LOGIC;
    s_axi_psAxiLite_WREADY : OUT STD_LOGIC;
    s_axi_psAxiLite_BRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_psAxiLite_BVALID : OUT STD_LOGIC;
    s_axi_psAxiLite_BREADY : IN STD_LOGIC;
    s_axi_psAxiLite_ARADDR : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
    s_axi_psAxiLite_ARVALID : IN STD_LOGIC;
    s_axi_psAxiLite_ARREADY : OUT STD_LOGIC;
    s_axi_psAxiLite_RDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_psAxiLite_RRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_psAxiLite_RVALID : OUT STD_LOGIC;
    s_axi_psAxiLite_RREADY : IN STD_LOGIC;
    ap_clk : IN STD_LOGIC;
    ap_rst_n : IN STD_LOGIC;
    slaveIn_TVALID : IN STD_LOGIC;
    slaveIn_TREADY : OUT STD_LOGIC;
    slaveIn_TDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    slaveIn_TSTRB : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    slaveIn_TLAST : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    masterOut_TVALID : OUT STD_LOGIC;
    masterOut_TREADY : IN STD_LOGIC;
    masterOut_TDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    masterOut_TSTRB : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    masterOut_TLAST : OUT STD_LOGIC_VECTOR(0 DOWNTO 0)
  );
END base_zynq_my_ip_hls_0_0;

ARCHITECTURE base_zynq_my_ip_hls_0_0_arch OF base_zynq_my_ip_hls_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF base_zynq_my_ip_hls_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT my_ip_hls IS
    GENERIC (
      C_S_AXI_PSAXILITE_ADDR_WIDTH : INTEGER;
      C_S_AXI_PSAXILITE_DATA_WIDTH : INTEGER
    );
    PORT (
      s_axi_psAxiLite_AWADDR : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
      s_axi_psAxiLite_AWVALID : IN STD_LOGIC;
      s_axi_psAxiLite_AWREADY : OUT STD_LOGIC;
      s_axi_psAxiLite_WDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_psAxiLite_WSTRB : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_psAxiLite_WVALID : IN STD_LOGIC;
      s_axi_psAxiLite_WREADY : OUT STD_LOGIC;
      s_axi_psAxiLite_BRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_psAxiLite_BVALID : OUT STD_LOGIC;
      s_axi_psAxiLite_BREADY : IN STD_LOGIC;
      s_axi_psAxiLite_ARADDR : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
      s_axi_psAxiLite_ARVALID : IN STD_LOGIC;
      s_axi_psAxiLite_ARREADY : OUT STD_LOGIC;
      s_axi_psAxiLite_RDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_psAxiLite_RRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_psAxiLite_RVALID : OUT STD_LOGIC;
      s_axi_psAxiLite_RREADY : IN STD_LOGIC;
      ap_clk : IN STD_LOGIC;
      ap_rst_n : IN STD_LOGIC;
      slaveIn_TVALID : IN STD_LOGIC;
      slaveIn_TREADY : OUT STD_LOGIC;
      slaveIn_TDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      slaveIn_TSTRB : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      slaveIn_TLAST : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      masterOut_TVALID : OUT STD_LOGIC;
      masterOut_TREADY : IN STD_LOGIC;
      masterOut_TDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      masterOut_TSTRB : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      masterOut_TLAST : OUT STD_LOGIC_VECTOR(0 DOWNTO 0)
    );
  END COMPONENT my_ip_hls;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF masterOut_TLAST: SIGNAL IS "xilinx.com:interface:axis:1.0 masterOut TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF masterOut_TSTRB: SIGNAL IS "xilinx.com:interface:axis:1.0 masterOut TSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF masterOut_TDATA: SIGNAL IS "xilinx.com:interface:axis:1.0 masterOut TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF masterOut_TREADY: SIGNAL IS "xilinx.com:interface:axis:1.0 masterOut TREADY";
  ATTRIBUTE X_INTERFACE_PARAMETER OF masterOut_TVALID: SIGNAL IS "XIL_INTERFACENAME masterOut, TDATA_NUM_BYTES 4, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 32}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN base_zynq_processing_system7_0_0_FCLK_CLK0";
  ATTRIBUTE X_INTERFACE_INFO OF masterOut_TVALID: SIGNAL IS "xilinx.com:interface:axis:1.0 masterOut TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF slaveIn_TLAST: SIGNAL IS "xilinx.com:interface:axis:1.0 slaveIn TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF slaveIn_TSTRB: SIGNAL IS "xilinx.com:interface:axis:1.0 slaveIn TSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF slaveIn_TDATA: SIGNAL IS "xilinx.com:interface:axis:1.0 slaveIn TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF slaveIn_TREADY: SIGNAL IS "xilinx.com:interface:axis:1.0 slaveIn TREADY";
  ATTRIBUTE X_INTERFACE_PARAMETER OF slaveIn_TVALID: SIGNAL IS "XIL_INTERFACENAME slaveIn, TDATA_NUM_BYTES 4, TUSER_WIDTH 0, LAYERED_METADATA undef, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN base_zynq_processing_system7_0_0_FCLK_CLK0";
  ATTRIBUTE X_INTERFACE_INFO OF slaveIn_TVALID: SIGNAL IS "xilinx.com:interface:axis:1.0 slaveIn TVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF ap_rst_n: SIGNAL IS "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {RST {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF ap_rst_n: SIGNAL IS "xilinx.com:signal:reset:1.0 ap_rst_n RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF ap_clk: SIGNAL IS "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_psAxiLite:slaveIn:masterOut, ASSOCIATED_RESET ap_rst_n, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN base_zynq_processing_system7_0_0_FCLK_CLK0";
  ATTRIBUTE X_INTERFACE_INFO OF ap_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 ap_clk CLK";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_psAxiLite_RREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_psAxiLite RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_psAxiLite_RVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_psAxiLite RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_psAxiLite_RRESP: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_psAxiLite RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_psAxiLite_RDATA: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_psAxiLite RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_psAxiLite_ARREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_psAxiLite ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_psAxiLite_ARVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_psAxiLite ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_psAxiLite_ARADDR: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_psAxiLite ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_psAxiLite_BREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_psAxiLite BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_psAxiLite_BVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_psAxiLite BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_psAxiLite_BRESP: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_psAxiLite BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_psAxiLite_WREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_psAxiLite WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_psAxiLite_WVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_psAxiLite WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_psAxiLite_WSTRB: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_psAxiLite WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_psAxiLite_WDATA: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_psAxiLite WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_psAxiLite_AWREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_psAxiLite AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_psAxiLite_AWVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_psAxiLite AWVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_axi_psAxiLite_AWADDR: SIGNAL IS "XIL_INTERFACENAME s_axi_psAxiLite, ADDR_WIDTH 6, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, FREQ_HZ 50000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN base_zynq_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_psAxiLite_AWADDR: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_psAxiLite AWADDR";
BEGIN
  U0 : my_ip_hls
    GENERIC MAP (
      C_S_AXI_PSAXILITE_ADDR_WIDTH => 6,
      C_S_AXI_PSAXILITE_DATA_WIDTH => 32
    )
    PORT MAP (
      s_axi_psAxiLite_AWADDR => s_axi_psAxiLite_AWADDR,
      s_axi_psAxiLite_AWVALID => s_axi_psAxiLite_AWVALID,
      s_axi_psAxiLite_AWREADY => s_axi_psAxiLite_AWREADY,
      s_axi_psAxiLite_WDATA => s_axi_psAxiLite_WDATA,
      s_axi_psAxiLite_WSTRB => s_axi_psAxiLite_WSTRB,
      s_axi_psAxiLite_WVALID => s_axi_psAxiLite_WVALID,
      s_axi_psAxiLite_WREADY => s_axi_psAxiLite_WREADY,
      s_axi_psAxiLite_BRESP => s_axi_psAxiLite_BRESP,
      s_axi_psAxiLite_BVALID => s_axi_psAxiLite_BVALID,
      s_axi_psAxiLite_BREADY => s_axi_psAxiLite_BREADY,
      s_axi_psAxiLite_ARADDR => s_axi_psAxiLite_ARADDR,
      s_axi_psAxiLite_ARVALID => s_axi_psAxiLite_ARVALID,
      s_axi_psAxiLite_ARREADY => s_axi_psAxiLite_ARREADY,
      s_axi_psAxiLite_RDATA => s_axi_psAxiLite_RDATA,
      s_axi_psAxiLite_RRESP => s_axi_psAxiLite_RRESP,
      s_axi_psAxiLite_RVALID => s_axi_psAxiLite_RVALID,
      s_axi_psAxiLite_RREADY => s_axi_psAxiLite_RREADY,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      slaveIn_TVALID => slaveIn_TVALID,
      slaveIn_TREADY => slaveIn_TREADY,
      slaveIn_TDATA => slaveIn_TDATA,
      slaveIn_TSTRB => slaveIn_TSTRB,
      slaveIn_TLAST => slaveIn_TLAST,
      masterOut_TVALID => masterOut_TVALID,
      masterOut_TREADY => masterOut_TREADY,
      masterOut_TDATA => masterOut_TDATA,
      masterOut_TSTRB => masterOut_TSTRB,
      masterOut_TLAST => masterOut_TLAST
    );
END base_zynq_my_ip_hls_0_0_arch;
