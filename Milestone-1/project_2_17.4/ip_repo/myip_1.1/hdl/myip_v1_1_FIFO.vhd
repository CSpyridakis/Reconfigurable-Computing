----------------------------------------------------------------------------------
-- Company/University:        Technical University of Crete (TUC) - GR
-- Engineer:                  Spyridakis Christos 
--                            Vittis Vasilis
-- 
-- Create Date:               16/3/2019
-- Design Name: 	 
-- Module Name:               FIFO - Behavioral 
-- Project Name:              Reconfigurable-Computing
-- Target Devices:            zc706  evaluation board
-- Tool versions:             Vivado 2017.4
-- Description:                	 
--
-- Dependencies:              
--
-- Revision:                  3.0
-- Revision                   3.0 - FIFO -> 32b x 64 available slots
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity myip_v1_1_FIFO is
	generic (
		-- Width of data in FIFO
		FIFO_DATA_WIDTH	: integer	:= 32
	);
	port (
		-- Global ports
		FIFO_W_ACLK	   	: in std_logic;
		FIFO_R_ACLK	   	: in std_logic;
		--
		FIFO_ARESETN		: in std_logic;
		
		-- If you want to push data in FIFO use this signal
		FIFO_WEN	      	: in std_logic;
		-- In order to pop data from FIFO you have to assert this signal
		FIFO_REN	      	: in std_logic;
		-- If FIFO is full this signal is high
		FIFO_FULL	   	: out std_logic;
		-- When there are not valid data inside FIFO this signal's state is high
		FIFO_EMPTY		: out std_logic;
		-- Data you want to push in 
		FIFO_DATA_IN		: in std_logic_vector(FIFO_DATA_WIDTH-1 downto 0);
		-- Data that came out FIFO during pop (read) action
		FIFO_DATA_OUT		: out std_logic_vector(FIFO_DATA_WIDTH-1 downto 0)
	);
end myip_v1_1_FIFO;

architecture Behavioral of myip_v1_1_FIFO is
	
	-- FIFO's actual Length
	constant FIFO_DEPTH : integer := 64; 
	
	-- Implement FIFO as an array of logic_vectors
	type FIFO_TYPE is array (0 to (FIFO_DEPTH)) of std_logic_vector((FIFO_DATA_WIDTH-1) downto 0);
	signal FIFO : FIFO_TYPE := (others => (others => '0'));
	
	-- Write pointer is an integer with strictly acceptable values
	signal write_pointer : integer range 0 to FIFO_DEPTH + 1;
	-- Read pointer is an integer with strictly acceptable values 
	signal read_pointer : integer range 0 to FIFO_DEPTH + 1;
	
	-- This signal represents the initial value of the two pointers 
	-- (the value they take during reset)  
	constant BEGIN_POINTER : integer := 62;

	-- Indicators
	signal full : std_logic;
	signal empty : std_logic;
	
	-- FIFO's valid states for each (read/write) FSMs
	type FIFO_STATES is ( 	IDLE,        		-- This is the initial/idle state 
				READ_FIFO,   		-- Read data from FIFO
	                      	WRITE_FIFO);		-- In this state FIFO pushes data
	signal  W_STATE : FIFO_STATES; 
	signal  R_STATE : FIFO_STATES; 
	
	-- Use this type of signal only for DEBUG purposes
	type DEBUG_STATES is( 	RESETED,
				NOP,
				READ_DONE,   		
				READ_FAILED,
				WRITE_DONE,   		
				WRITE_FAILED); 		 
	signal W_ACTION : DEBUG_STATES; 
	signal R_ACTION : DEBUG_STATES; 

begin
	-- Indicator signals
	full  <= '1' when (write_pointer + 1 = read_pointer OR (read_pointer = 0 AND write_pointer = FIFO_DEPTH)) else '0';
	empty <= '1' when (read_pointer = write_pointer) else '0';
		
	-- Actual connections
	FIFO_FULL     <= full;
	FIFO_EMPTY    <= empty;
	FIFO_DATA_OUT <= FIFO(read_pointer);
	
	-- In this process exists the implementation of FIFO's push control logic 
	process(FIFO_W_ACLK) 
	begin   
	  if (rising_edge (FIFO_W_ACLK)) then
			-- Synchronous reset (active low) 
			if (FIFO_ARESETN = '0') then
				write_pointer <= BEGIN_POINTER;
				W_STATE <= IDLE;
				W_ACTION <= RESETED;
			else
				if (FIFO_WEN = '1') THEN
					W_STATE <= WRITE_FIFO;
					
					-- Push to FIFO only if it is possible
					if (full = '0') then
						-- Push Data
						FIFO(write_pointer) <= FIFO_DATA_IN;
						-- Increment write position (post increment implementation)
						write_pointer <= write_pointer + 1;
						-- If write pointer is out of bounds make correction
						if (write_pointer >= FIFO_DEPTH) then 
							write_pointer <= 0;
						end if;
						
						W_ACTION <= WRITE_DONE;
					else
						W_ACTION <= WRITE_FAILED;
					end if;
				else
					W_STATE <= IDLE;
					W_ACTION <= NOP;
				end if;
			end if;
	  end if;                                                                                   
	end process;   


	-- In this process exists the implementation of FIFO's pop control logic 
	process(FIFO_R_ACLK) 
	begin   
	  if (rising_edge (FIFO_R_ACLK)) then
			-- Synchronous reset (active low) 
			if (FIFO_ARESETN= '0') then
				read_pointer  <= BEGIN_POINTER;
				R_STATE <= IDLE;
				R_ACTION <= RESETED;
			else
				if (FIFO_REN = '1') THEN
					R_STATE <= READ_FIFO;
					
					-- Pop data from FIFO only if it is possible
					if (empty = '0') then 
						-- Increment write position
						read_pointer <= read_pointer + 1;
						-- If read pointer is out of bounds make correction
						if (read_pointer >= FIFO_DEPTH) then 
							read_pointer <= 0;
						end if;
						
						R_ACTION <= READ_DONE;
					else
						R_ACTION <= READ_FAILED;
					end if;
				else
					R_STATE <= IDLE;
					R_ACTION <= NOP;
				end if;
			end if;
	  end if;                                                                                   
	end process;  
end Behavioral;