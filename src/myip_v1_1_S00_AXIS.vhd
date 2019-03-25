----------------------------------------------------------------------------------
-- Company/University:        Technical University of Crete (TUC) - GR
-- Engineer:                  Spyridakis Christos 
--                            Vittis Vasilis
-- 
-- Create Date:               
-- Design Name: 	 
-- Module Name:               myip_v1_1_S00_AXIS - Behavioral 
-- Project Name:              Reconfigurable-Computing
-- Target Devices:            zc706  evaluation board
-- Tool versions:             Vivado 2017.4
-- Description:                	 
--
-- Dependencies:              
--
-- Revision:                  2.0
-- Revision                   2.0 - FIFO logic implemented
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity myip_v1_1_S00_AXIS is
	generic (
		-- AXI4Stream sink: Data Width
		C_S_AXIS_TDATA_WIDTH	: integer	:= 32
	);
	port (
		-- This is the same as the global signal S_AXIS_ACLK
		FIFO_W_ACLK		: out std_logic;
		-- Global Reset signal
		FIFO_W_ARSTN 		: out std_logic;
		-- Information about full FIFO's state
		FIFO_FULL 		: in std_logic;
		-- Write data in FIFO using this signal
		FIFO_WEN	 	: out std_logic;
		-- Data that you want to write
		FIFO_DATA_IN 		: out std_logic_vector(C_S_AXIS_TDATA_WIDTH-1 downto 0);
		   
		-- AXI4Stream sink: Clock
		S_AXIS_ACLK		: in std_logic;
		-- AXI4Stream sink: Reset
		S_AXIS_ARESETN		: in std_logic;
		-- Ready to accept data in
		S_AXIS_TREADY		: out std_logic;
		-- Data in
		S_AXIS_TDATA		: in std_logic_vector(C_S_AXIS_TDATA_WIDTH-1 downto 0);
		-- Byte qualifier
		S_AXIS_TSTRB		: in std_logic_vector((C_S_AXIS_TDATA_WIDTH/8)-1 downto 0);
		-- Indicates boundary of last packet
		S_AXIS_TLAST		: in std_logic;
		-- Data is in valid
		S_AXIS_TVALID		: in std_logic
	);
end myip_v1_1_S00_AXIS;

architecture arch_imp of myip_v1_1_S00_AXIS is
    signal DONE					: std_logic;
    signal FIFO_WEN_TMP	: std_logic;
begin
	-- This signal is only for DEBUG purposes,
	-- indicates that transaction ended
	DONE <= S_AXIS_TLAST AND (NOT FIFO_FULL);
	 
	-- Just wiring
	FIFO_W_ACLK  <= S_AXIS_ACLK;
	FIFO_W_ARSTN <= S_AXIS_ARESETN; 
	FIFO_DATA_IN <= S_AXIS_TDATA;
	
	-- We are ready to receive data only when we are not busy
	-- (not implemented because there are not other jobs to do)
	-- and there is available space to write data inside FIFO
	S_AXIS_TREADY	<= NOT FIFO_FULL;
	
	-- Select FIFO_WEN state based on availability and valid data 
	-- Αccording to AXIS4 and AXIS4 Stream Protocols
	-- handshake has to be preceded and then on the next cc we receive data
	FIFO_WEN 	<= S_AXIS_TVALID and (NOT FIFO_FULL); 

end arch_imp;
