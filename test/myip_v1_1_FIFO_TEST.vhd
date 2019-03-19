----------------------------------------------------------------------------------
-- Company/University:        Technical University of Crete (TUC) - GR
-- Engineer:                  Spyridakis Christos 
--                            Vittis Vasilis
-- 
-- Create Date: 
-- Design Name:   
-- Module Name:   				/myip_v1_1_FIFO_TEST.vhd
-- Project Name:              Reconfigurable Computing
-- Target Devices:            zc706  evaluation board
-- Tool versions:             Vivado 2017.4
-- Description:    
-- 
-- VHDL Test Bench Created by ISE for module: myip_v1_1_FIFO
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY myip_v1_1_FIFO_TEST IS
END myip_v1_1_FIFO_TEST;
 
ARCHITECTURE behavior OF myip_v1_1_FIFO_TEST IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT myip_v1_1_FIFO
    PORT(
         FIFO_W_ACLK : IN  std_logic;
         FIFO_R_ACLK : IN  std_logic;
         FIFO_ARESETN : IN  std_logic;
         FIFO_WEN : IN  std_logic;
         FIFO_REN : IN  std_logic;
         FIFO_FULL : OUT  std_logic;
         FIFO_EMPTY : OUT  std_logic;
         FIFO_DATA_IN : IN  std_logic_vector(31 downto 0);
         FIFO_DATA_OUT : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal FIFO_W_ACLK : std_logic := '0';
   signal FIFO_R_ACLK : std_logic := '0';
   signal FIFO_ARESETN : std_logic := '0';
   signal FIFO_WEN : std_logic := '0';
   signal FIFO_REN : std_logic := '0';
   signal FIFO_DATA_IN : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal FIFO_FULL : std_logic;
   signal FIFO_EMPTY : std_logic;
   signal FIFO_DATA_OUT : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant FIFO_W_ACLK_period : time := 10 ns;
   constant FIFO_R_ACLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: myip_v1_1_FIFO PORT MAP (
          FIFO_W_ACLK => FIFO_W_ACLK,
          FIFO_R_ACLK => FIFO_R_ACLK,
          FIFO_ARESETN => FIFO_ARESETN,
          FIFO_WEN => FIFO_WEN,
          FIFO_REN => FIFO_REN,
          FIFO_FULL => FIFO_FULL,
          FIFO_EMPTY => FIFO_EMPTY,
          FIFO_DATA_IN => FIFO_DATA_IN,
          FIFO_DATA_OUT => FIFO_DATA_OUT
        );

   -- Clock process definitions
   FIFO_W_ACLK_process :process
   begin
		FIFO_W_ACLK <= '0';
		wait for FIFO_W_ACLK_period/2;
		FIFO_W_ACLK <= '1';
		wait for FIFO_W_ACLK_period/2;
   end process;
 
   FIFO_R_ACLK_process :process
   begin
		FIFO_R_ACLK <= '0';
		wait for FIFO_R_ACLK_period/2;
		FIFO_R_ACLK <= '1';
		wait for FIFO_R_ACLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for FIFO_W_ACLK_period*10;

      --------------------------------------------- CC : 
		FIFO_ARESETN <= '1';
		FIFO_WEN 	 <= '0';
		FIFO_DATA_IN <= "00000000000000000000000000000000";
		wait for FIFO_W_ACLK_period*1;
		
		--------------------------------------------- CC : 
		FIFO_ARESETN <= '1';
		FIFO_REN 	 <= '0';
		wait for FIFO_R_ACLK_period*10;
		
      wait;
   end process;

END;
