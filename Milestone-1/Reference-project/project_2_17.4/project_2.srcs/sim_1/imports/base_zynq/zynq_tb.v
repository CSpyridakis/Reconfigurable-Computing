//---------------------------------------------------------------------------
// Testbench  
//---------------------------------------------------------------------------
//
//***************************************************************************
// DISCLAIMER OF LIABILITY
//
// This file contains proprietary and confidential information of
// Xilinx, Inc. ("Xilinx"), that is distributed under a license
// from Xilinx, and may be used, copied and/or disclosed only
// pursuant to the terms of a valid license agreement with Xilinx.
//
// XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION
// ("MATERIALS") "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER
// EXPRESSED, IMPLIED, OR STATUTORY, INCLUDING WITHOUT
// LIMITATION, ANY WARRANTY WITH RESPECT TO NONINFRINGEMENT,
// MERCHANTABILITY OR FITNESS FOR ANY PARTICULAR PURPOSE. Xilinx
// does not warrant that functions included in the Materials will
// meet the requirements of Licensee, or that the operation of the
// Materials will be uninterrupted or error-free, or that defects
// in the Materials will be corrected. Furthermore, Xilinx does
// not warrant or make any representations regarding use, or the
// results of the use, of the Materials in terms of correctness,
// accuracy, reliability or otherwise.
//
// Xilinx products are not designed or intended to be fail-safe,
// or for use in any application requiring fail-safe performance,
// such as life-support or safety devices or systems, Class III
// medical devices, nuclear facilities, applications related to
// the deployment of airbags, or any other applications that could
// lead to death, personal injury or severe property or
// environmental damage (individually and collectively, "critical
// applications"). Customer assumes the sole risk and liability
// of any use of Xilinx products in critical applications,
// subject only to applicable laws and regulations governing
// limitations on product liability.
//
// Copyright 2009 Xilinx, Inc.
// All rights reserved.
//
// This disclaimer and copyright notice must be retained as part
// of this file at all times.
//***************************************************************************
//

`timescale 1ns / 1ps

module tb;    

    parameter DMA_TEST_SIZE_WORDS = 8;  //32bit words
    parameter DMA_TEST_SIZE_BYTES = DMA_TEST_SIZE_WORDS*4;  //bytes
    parameter C_USE_S_AXI_ACP = 1;
    parameter BRAM_BASE_ADDR = 32'h40000000;
    parameter BRAM_BASE_SIZE_BYTES = 32'h10000;
    parameter BRAM_HIGH_ADDR = 32'h4000FFFC;
    parameter DMA_AXI_LITE_BASE_ADDR = 32'h40400000;
    
    //MM2S domain
    parameter DMA_MM2S_BRAM_SPACE_START = BRAM_BASE_ADDR;
    parameter DMA_MM2S_BRAM_SPACE_END = BRAM_BASE_ADDR + BRAM_BASE_SIZE_BYTES/2 - 4;
    //DMA AXI LITE configuration    
    parameter DMA_MM2S_DMACR_REG = DMA_AXI_LITE_BASE_ADDR;
    parameter DMA_MM2S_DMASR_REG = DMA_AXI_LITE_BASE_ADDR + 32'h4;
    parameter DMA_MM2S_DMASA_REG = DMA_AXI_LITE_BASE_ADDR + 32'h18;
    parameter DMA_MM2S_LENGTH_REG = DMA_AXI_LITE_BASE_ADDR + 32'h28;
    
    //S2MM domain
    parameter DMA_S2MM_BRAM_SPACE_START = BRAM_BASE_ADDR + BRAM_BASE_SIZE_BYTES/2;
    parameter DMA_S2MM_BRAM_SPACE_END = BRAM_HIGH_ADDR;
    //DMA AXI LITE configuration
    parameter DMA_S2MM_DMACR_REG = DMA_AXI_LITE_BASE_ADDR + 32'h30;
    parameter DMA_S2MM_DMASR_REG = DMA_AXI_LITE_BASE_ADDR + 32'h34;
    parameter DMA_S2MM_DMADA_REG = DMA_AXI_LITE_BASE_ADDR + 32'h48;
    parameter DMA_S2MM_LENGTH_REG = DMA_AXI_LITE_BASE_ADDR + 32'h58;
    
    reg tb_ACLK;
    reg tb_ARESETn;
   
    wire temp_clk;
    wire temp_rstn; 
   
    reg [31:0] read_data;
    reg resp;
    
    reg [7:0]  irq_status;
    

    initial 
    begin       
        tb_ACLK = 1'b0;
    end
    
    //------------------------------------------------------------------------
    // Simple Clock Generator
    //------------------------------------------------------------------------
    
    always #10 tb_ACLK = !tb_ACLK;
	
	initial 
    begin
	`ifndef XILINX_SIMULATOR
           tb.zynq_sys.base_zynq_i.processing_system7_0.inst.M_AXI_GP0.master.IF.PC.fatal_to_warnings=1;
           #40;
           tb.zynq_sys.base_zynq_i.processing_system7_0.inst.M_AXI_GP0.master.IF.PC.fatal_to_warnings=0;
	 `endif 		
    end
	
	
       
    initial
    begin
    
        $display ("running the tb");
        
        tb_ARESETn = 1'b0;
        repeat(2)@(posedge tb_ACLK);        
        tb_ARESETn = 1'b1;
        @(posedge tb_ACLK);
        
        repeat(50) @(posedge tb_ACLK);
          
        //Reset the PL
        tb.zynq_sys.base_zynq_i.processing_system7_0.inst.fpga_soft_reset(32'h1);
        tb.zynq_sys.base_zynq_i.processing_system7_0.inst.fpga_soft_reset(32'h0);
                
        //Write into the BRAM through GP0 and read back
        tb.zynq_sys.base_zynq_i.processing_system7_0.inst.write_data((BRAM_BASE_ADDR + 4*0),4, 32'h10, resp);
        tb.zynq_sys.base_zynq_i.processing_system7_0.inst.read_data((BRAM_BASE_ADDR + 4*0),4,read_data,resp);
        $display ("%t, running the testbench, data read from BRAM was 32'h%x",$time, read_data);
        tb.zynq_sys.base_zynq_i.processing_system7_0.inst.write_data((BRAM_BASE_ADDR + 4*1),4, 32'h20, resp);
        tb.zynq_sys.base_zynq_i.processing_system7_0.inst.read_data((BRAM_BASE_ADDR + 4*1),4,read_data,resp);
        $display ("%t, running the testbench, data read from BRAM was 32'h%x",$time, read_data);
        tb.zynq_sys.base_zynq_i.processing_system7_0.inst.write_data((BRAM_BASE_ADDR + 4*2),4, 32'h30, resp);
        tb.zynq_sys.base_zynq_i.processing_system7_0.inst.read_data((BRAM_BASE_ADDR + 4*2),4,read_data,resp);
        $display ("%t, running the testbench, data read from BRAM was 32'h%x",$time, read_data);
        tb.zynq_sys.base_zynq_i.processing_system7_0.inst.write_data((BRAM_BASE_ADDR + 4*3),4, 32'h40, resp);
        tb.zynq_sys.base_zynq_i.processing_system7_0.inst.read_data((BRAM_BASE_ADDR + 4*3),4,read_data,resp);
        $display ("%t, running the testbench, data read from BRAM was 32'h%x",$time, read_data);
        tb.zynq_sys.base_zynq_i.processing_system7_0.inst.write_data((BRAM_BASE_ADDR + 4*4),4, 32'h50, resp);
        tb.zynq_sys.base_zynq_i.processing_system7_0.inst.read_data((BRAM_BASE_ADDR + 4*4),4,read_data,resp);
        $display ("%t, running the testbench, data read from BRAM was 32'h%x",$time, read_data);
        tb.zynq_sys.base_zynq_i.processing_system7_0.inst.write_data((BRAM_BASE_ADDR + 4*5),4, 32'h60, resp);
        tb.zynq_sys.base_zynq_i.processing_system7_0.inst.read_data((BRAM_BASE_ADDR + 4*5),4,read_data,resp);
        $display ("%t, running the testbench, data read from BRAM was 32'h%x",$time, read_data);
        tb.zynq_sys.base_zynq_i.processing_system7_0.inst.write_data((BRAM_BASE_ADDR + 4*6),4, 32'h70, resp);
        tb.zynq_sys.base_zynq_i.processing_system7_0.inst.read_data((BRAM_BASE_ADDR + 4*6),4,read_data,resp);
        $display ("%t, running the testbench, data read from BRAM was 32'h%x",$time, read_data);
        tb.zynq_sys.base_zynq_i.processing_system7_0.inst.write_data((BRAM_BASE_ADDR + 4*7),4, 32'h80, resp);
        tb.zynq_sys.base_zynq_i.processing_system7_0.inst.read_data((BRAM_BASE_ADDR + 4*7),4,read_data,resp);
        $display ("%t, running the testbench, data read from BRAM was 32'h%x",$time, read_data);        
        
        //start the S2MM channel by setting the run/stop bit to 1 RS = 1   
        tb.zynq_sys.base_zynq_i.processing_system7_0.inst.write_data(DMA_S2MM_DMACR_REG,4, 32'b00000000000000000000000000000001, resp);
        //write a valid address to the DMA_S2MM_DMADA_REG where data will be written  
        tb.zynq_sys.base_zynq_i.processing_system7_0.inst.write_data(DMA_S2MM_DMADA_REG,4, DMA_S2MM_BRAM_SPACE_START, resp);  
        //start the DMA write transfer by writing the number of data that are expected to be written
        tb.zynq_sys.base_zynq_i.processing_system7_0.inst.write_data(DMA_S2MM_LENGTH_REG,4, DMA_TEST_SIZE_BYTES, resp);  
          
        //start the MM2S channel by setting the run/stop bit to 1 RS = 1      
        tb.zynq_sys.base_zynq_i.processing_system7_0.inst.write_data(DMA_MM2S_DMACR_REG,4, 32'b00000000000000000000000000000001, resp);        
        //write a valid address to the DMA_MM2S_DMASA_REG from where data will be read
        tb.zynq_sys.base_zynq_i.processing_system7_0.inst.write_data(DMA_MM2S_DMASA_REG,4, DMA_MM2S_BRAM_SPACE_START, resp);        
        //start the DMA read transfer by writing the number of data to be read
        tb.zynq_sys.base_zynq_i.processing_system7_0.inst.write_data(DMA_MM2S_LENGTH_REG,4, DMA_TEST_SIZE_BYTES, resp);
        
        $display ("Simulation completed!");
        $stop;
    end

    assign temp_clk = tb_ACLK;
    assign temp_rstn = tb_ARESETn;
   
base_zynq_wrapper zynq_sys
   (.DDR_addr(),
    .DDR_ba(),
    .DDR_cas_n(),
    .DDR_ck_n(),
    .DDR_ck_p(),
    .DDR_cke(),
    .DDR_cs_n(),
    .DDR_dm(),
    .DDR_dq(),
    .DDR_dqs_n(),
    .DDR_dqs_p(),
    .DDR_odt(),
    .DDR_ras_n(),
    .DDR_reset_n(),
    .DDR_we_n(),
    .FIXED_IO_ddr_vrn(),
    .FIXED_IO_ddr_vrp(),
    .FIXED_IO_mio(),
    .FIXED_IO_ps_clk(temp_clk),
    .FIXED_IO_ps_porb(temp_rstn ),
    .FIXED_IO_ps_srstb(temp_rstn));

endmodule

