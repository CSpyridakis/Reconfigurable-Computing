----------------------------------------------------------------------------------
-- Company/University:        Technical University of Crete (TUC) - GR
-- Engineer:                  Spyridakis Christos 
--                            Vittis Vasilis
-- 
-- Create Date:               16/3/2019
-- Design Name: 	 
-- Module Name:               FIFO - Behavioral 
-- Project Name:              Reconfigurable Computing
-- Target Devices:            zc706  evaluation board
-- Tool versions:             Vivado 2017.4
-- Description:                	 
--
-- Dependencies:              
--
-- Revision:                  1.0
-- Revision                   1.0 - Created
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
		FIFO_ACLK	   : in std_logic;
		--
		FIFO_ARESETN	: in std_logic;
		
		-- If you want to push data in FIFO use this signal
		FIFO_WEN	      : in std_logic;
		-- In order to pop data from FIFO you have to assert this signal
		FIFO_REN	      : in std_logic;
		-- If FIFO is full this signal is high
		FIFO_FULL	   : out std_logic;
		-- When there are not valid data inside FIFO this signal's state is 1
		FIFO_EMPTY	   : out std_logic;
		-- Data you want to push in 
		FIFO_DATA_IN	: in std_logic_vector(FIFO_DATA_WIDTH-1 downto 0);
		-- Data that came out FIFO during pop action
		FIFO_DATA_OUT	: out std_logic_vector(FIFO_DATA_WIDTH-1 downto 0)
	);
end myip_v1_1_FIFO;

architecture Behavioral of myip_v1_1_FIFO is
	
	-- FIFO's actual Length
	constant FIFO_DEPTH : integer := 64; 
	
	-- Implement FIFO as an array of logic_vectors
	type FIFO_TYPE is array (0 to (FIFO_DEPTH-1)) of std_logic_vector((FIFO_DATA_WIDTH-1) downto 0);
	signal FIFO : FIFO_TYPE;
	
	
	-- Indicators
	signal full : std_logic;
	signal empty : std_logic;
	
	-- Data out
	signal data_out : std_logic_vector(FIFO_DATA_WIDTH-1 downto 0);
	
	-- FIFO's valid states for FSM
	type FIFO_STATES is ( IDLE,        		-- This is the initial/idle state 
								 READ_FIFO,   		-- Read data from FIFO
	                      WRITE_FIFO,		-- In this state FIFO pushes data
								 READ_WRITE_FIFO);-- Read and write in FIFO simultaneously 		 
	signal  STATE : FIFO_STATES; 
	
	
	-- Use this signal only for DEBUG purposes
	type DEBUG_STATES is( RESETED,
								 NOP,
								 READ_DONE_WRITE_DONE,   		
	                      READ_DONE_WRITE_FAILED,
								 READ_FAILED_WRITE_DONE, 
								 READ_DONE,   		
	                      READ_FAILED,
								 WRITE_DONE,   		
	                      WRITE_FAILED); 		 
	signal ACTION : DEBUG_STATES; 
	
begin
	-- Indicator signals
--	full  <= '1' when (write_pointer + 1 = read_pointer OR (read_pointer = 0 AND write_pointer = FIFO_DEPTH - 1)) else '0';
--	empty <= '1' when (read_pointer = write_pointer) else '0';
		
	-- Actual connections
	FIFO_FULL     <= full;
	FIFO_EMPTY    <= empty;
	FIFO_DATA_OUT <= data_out;
	
	-- In this process exists the implementation of FIFO's control logic 
	process(FIFO_ACLK) 
		-- Write pointer is an integer with strictly acceptable values
		variable write_pointer : integer;
		-- Read pointer is an integer with strictly acceptable values 
		variable read_pointer : integer;
	begin   
	  if (rising_edge (FIFO_ACLK)) then
			-- Synchronous reset (active low) 
			if (FIFO_ARESETN= '0') then
				data_out      <= (others => '0');
				write_pointer := 62;
				read_pointer  := write_pointer;
				ACTION <= RESETED;
			else
				-- Full check
				if (write_pointer + 1 = read_pointer OR (read_pointer = 0 AND write_pointer = FIFO_DEPTH - 1)) then 
					full <= '1';
				else
					full <='0';
				end if;
				
				-- Empty Check
				if (read_pointer = write_pointer) then 
					empty <= '1';
				else
					empty <='0';
				end if;
				
				-- Both read and write actions are asserted at the same cc
				if (FIFO_WEN = '1' AND FIFO_REN = '1') then 
					STATE <= READ_WRITE_FIFO;
					
					-- Do Actions
					if (full = '0' AND empty = '0') then 			-- Both Actions are valid
						-- Push Data
						FIFO(write_pointer) <= FIFO_DATA_IN;
						-- Increment write position
						write_pointer := write_pointer + 1;
						
						-- If out of bounds make correction
						if (write_pointer > FIFO_DEPTH-1) then 
							write_pointer := 0;
						end if;
						
						-- Pop Data
						data_out <= FIFO(read_pointer);
						-- Increment write position
						read_pointer := read_pointer + 1;
						
						-- If out of bounds make correction
						if (read_pointer > FIFO_DEPTH-1) then 
							read_pointer := 0;
						end if;
						
						ACTION<=READ_DONE_WRITE_DONE;
					elsif (full = '0' AND empty = '1') then	-- Only push is legal	
						-- Push Data
						FIFO(write_pointer) <= FIFO_DATA_IN;
						-- Increment write position
						write_pointer := write_pointer + 1;
						
						-- If out of bounds make correction
						if (write_pointer > FIFO_DEPTH-1) then 
							write_pointer := 0;
						end if;
						
						ACTION<=READ_FAILED_WRITE_DONE;
					elsif (full = '1' AND empty = '0') then	-- Only pop is legal
						-- Pop Data
						data_out <= FIFO(read_pointer);
						-- Increment write position
						read_pointer := read_pointer + 1;
						
						-- If out of bounds make correction
						if (read_pointer > FIFO_DEPTH-1) then 
							read_pointer := 0;
						end if;
						
						ACTION<=READ_DONE_WRITE_FAILED;
					end if;
					
				-- FIFO has to push data only
				elsif (FIFO_WEN = '1') THEN
					STATE <= WRITE_FIFO;
					
					-- DO ACTION AND DEBUG SIGNAL
					if (full = '0') then 
						-- Push Data
						FIFO(write_pointer) <= FIFO_DATA_IN;
						-- Increment write position
						write_pointer := write_pointer + 1;
						
						-- If out of bounds make correction
						if (write_pointer > FIFO_DEPTH-1) then 
							write_pointer := 0;
						end if;
						ACTION <= WRITE_DONE;
					else
						ACTION <= WRITE_FAILED;
					end if;
				
				-- FIFO has to pop data only
				elsif (FIFO_REN = '1') THEN
					STATE <= READ_FIFO;
					
					-- DO ACTION AND DEBUG SIGNAL
					if (empty = '0') then 
						-- Pop Data
						data_out <= FIFO(read_pointer);
						-- Increment write position
						read_pointer := read_pointer + 1;
						
						-- If out of bounds make correction
						if (read_pointer > FIFO_DEPTH-1) then 
							read_pointer := 0;
						end if;
						 ACTION <= READ_DONE;
					else
						 ACTION <= READ_FAILED;
					end if;
				else
					STATE <= IDLE;
					ACTION <= NOP;
				end if;
			end if;
	  end if;                                                                                   
	end process;   
end Behavioral;