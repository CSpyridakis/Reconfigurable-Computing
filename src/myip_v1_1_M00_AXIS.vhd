----------------------------------------------------------------------------------
-- Company/University:        Technical University of Crete (TUC) - GR
-- Engineer:                  Spyridakis Christos 
--                            Vittis Vasilis
-- 
-- Create Date:               
-- Design Name: 	 
-- Module Name:               myip_v1_1_M00_AXIS - Behavioral 
-- Project Name:              Reconfigurable Computing
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

entity myip_v1_1_M00_AXIS is
	generic (
		-- Width of S_AXIS address bus. The slave accepts the read and write addresses of width C_M_AXIS_TDATA_WIDTH.
		C_M_AXIS_TDATA_WIDTH	: integer	:= 32
	);
	port (
		-- This is the same as the global signal M_AXIS_ACLK
		FIFO_R_ACLK		: out std_logic;
		-- Global Reset signal
		FIFO_R_ARSTN 		: out std_logic;
		-- Information about empty FIFO's state
		FIFO_EMPTY      	: in std_logic;
		-- Read from FIFO using this signal
		FIFO_REN        	: out std_logic;
		-- Data that came out
		FIFO_DATA_OUT		: in std_logic_vector(C_M_AXIS_TDATA_WIDTH-1 downto 0);

		-- Global ports
		M_AXIS_ACLK		: in std_logic;
		-- 
		M_AXIS_ARESETN	: in std_logic;
		-- Master Stream Ports. TVALID indicates that the master is driving a valid transfer, A transfer takes place when both TVALID and TREADY are asserted. 
		M_AXIS_TVALID		: out std_logic;
		-- TDATA is the primary payload that is used to provide the data that is passing across the interface from the master.
		M_AXIS_TDATA		: out std_logic_vector(C_M_AXIS_TDATA_WIDTH-1 downto 0);
		-- TSTRB is the byte qualifier that indicates whether the content of the associated byte of TDATA is processed as a data byte or a position byte.
		M_AXIS_TSTRB		: out std_logic_vector((C_M_AXIS_TDATA_WIDTH/8)-1 downto 0);
		-- TLAST indicates the boundary of a packet.
		M_AXIS_TLAST		: out std_logic;
		-- TREADY indicates that the slave can accept a transfer in the current cycle.
		M_AXIS_TREADY		: in std_logic
	);
end myip_v1_1_M00_AXIS;

architecture implementation of myip_v1_1_M00_AXIS is                                                    
	signal stream_data_out	: std_logic_vector(C_M_AXIS_TDATA_WIDTH-1 downto 0);
begin
	


	-- Same as template code 
	M_AXIS_TSTRB	<= (others => '1');

	-- Just wiring
	FIFO_R_ACLK	<= M_AXIS_ACLK;
	FIFO_R_ARSTN    <= M_AXIS_ARESETN;
	
	-- Data that we actually read
	stream_data_out <= FIFO_DATA_OUT;

	-- We delay data and last signals for 1 cc
	-- This is important because according to AXIS4 and AXIS4 Stream Protocols
	-- handshake has to be preceded and then on the next cc when send them
	process(M_AXIS_ACLK)                                                                           
	begin    
		-- We are valid only when we are not busy (not implemented because there are not other jobs to do)
		-- and there are valid data inside FIFO that we could potentially read
		M_AXIS_TVALID	<= NOT FIFO_EMPTY;

		-- We ask from FIFO to pop data only when there is a 
		-- valid transaction handshake between MY-IP and DMAe, this means that
		-- DMAe is ready and we have valid data to send
		FIFO_REN  	<= M_AXIS_TREADY AND (NOT FIFO_EMPTY); 
		                                                                               
		if (rising_edge (M_AXIS_ACLK)) then                                               
			if(M_AXIS_ARESETN = '0') then                                                              
				M_AXIS_TDATA <= "00000000000000000000000000000000";    
				M_AXIS_TLAST <= '0' ;                                         
			else                                                                                       
				M_AXIS_TDATA <= stream_data_out; 
				M_AXIS_TLAST <= '0' ;  
			end if;                                                                                    
  		end if;                                                                                      
	end process;                                                                                   

end implementation;
