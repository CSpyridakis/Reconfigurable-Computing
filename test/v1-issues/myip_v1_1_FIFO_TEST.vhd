----------------------------------------------------------------------------------
-- Company/University:        Technical University of Crete (TUC) - GR
-- Engineer:                  Spyridakis Christos 
--                            Vittis Vasilis
-- 
-- Create Date:               16/3/2019
-- Design Name: 	 
-- Module Name:   				/FIFO/myip_v1_1_FIFO_TEST.vhd
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
 
ENTITY myip_v1_1_FIFO_TEST IS
END myip_v1_1_FIFO_TEST;
 
ARCHITECTURE behavior OF myip_v1_1_FIFO_TEST IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT myip_v1_1_FIFO
    PORT(
         FIFO_ACLK : IN  std_logic;
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
   signal FIFO_ACLK : std_logic := '0';
   signal FIFO_ARESETN : std_logic := '0';
   signal FIFO_WEN : std_logic := '0';
   signal FIFO_REN : std_logic := '0';
   signal FIFO_DATA_IN : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal FIFO_FULL : std_logic;
   signal FIFO_EMPTY : std_logic;
   signal FIFO_DATA_OUT : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant FIFO_ACLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: myip_v1_1_FIFO PORT MAP (
          FIFO_ACLK => FIFO_ACLK,
          FIFO_ARESETN => FIFO_ARESETN,
          FIFO_WEN => FIFO_WEN,
          FIFO_REN => FIFO_REN,
          FIFO_FULL => FIFO_FULL,
          FIFO_EMPTY => FIFO_EMPTY,
          FIFO_DATA_IN => FIFO_DATA_IN,
          FIFO_DATA_OUT => FIFO_DATA_OUT
        );

   -- Clock process definitions
   FIFO_ACLK_process :process
   begin
		FIFO_ACLK <= '0';
		wait for FIFO_ACLK_period/2;
		FIFO_ACLK <= '1';
		wait for FIFO_ACLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

		-------------------------------------------------- CC:1  - Reset 
		FIFO_ARESETN <= '0';
		FIFO_WEN     <= '0';
		FIFO_REN		 <= '0';
		FIFO_DATA_IN <= "00000000000000000000000000000000";
      wait for FIFO_ACLK_period*1;

		-------------------------------------------------- CC:2	- Nop 
		FIFO_ARESETN <= '1';
		FIFO_WEN     <= '0';
		FIFO_REN		 <= '0';
		FIFO_DATA_IN <= "00000000000000000000000000000001";
      wait for FIFO_ACLK_period*1;
		
		-------------------------------------------------- CC:3	- Push 2 (Empty)
		FIFO_ARESETN <= '1';
		FIFO_WEN     <= '1';
		FIFO_REN		 <= '0';
		FIFO_DATA_IN <= "00000000000000000000000000000010";
      wait for FIFO_ACLK_period*1;
		
		-------------------------------------------------- CC:4	- Pop (Failed, is empty)
		FIFO_ARESETN <= '1';
		FIFO_WEN     <= '0';
		FIFO_REN		 <= '1';
		FIFO_DATA_IN <= "00000000000000000000000000000011";
      wait for FIFO_ACLK_period*1;
		
		-------------------------------------------------- CC:5	- Push 3 and Pop (Failed, there are not data yet)
		FIFO_ARESETN <= '1';
		FIFO_WEN     <= '1';
		FIFO_REN		 <= '1';
		FIFO_DATA_IN <= "00000000000000000000000000000011";
      wait for FIFO_ACLK_period*1;
		
		-------------------------------------------------- CC:6-71	- Push 5 (Empty)
		FIFO_ARESETN <= '1';
		FIFO_WEN     <= '1';
		FIFO_REN		 <= '0';
		FIFO_DATA_IN <= "00001000000001000000000000000101";
      wait for FIFO_ACLK_period*30;
		
		------------------------------------------------- CC:6-71	- Push 5 (Empty)
		FIFO_ARESETN <= '1';
		FIFO_WEN     <= '1';
		FIFO_REN		 <= '0';
		FIFO_DATA_IN <= "00000000100001001000000001000101";
      wait for FIFO_ACLK_period*35;
		
		-------------------------------------------------- CC:72
		FIFO_ARESETN <= '1';
		FIFO_WEN     <= '0';
		FIFO_REN		 <= '0';
		FIFO_DATA_IN <= "00000000000000000000000000000101";
      wait for FIFO_ACLK_period*10;

		-------------------------------------------------- CC:73-	- Push 5 (Empty)
		FIFO_ARESETN <= '1';
		FIFO_WEN     <= '0';
		FIFO_REN		 <= '1';
		FIFO_DATA_IN <= "00000000000000000000000000000000";
      wait for FIFO_ACLK_period*64;
		
		-------------------------------------------------- CC:12
		FIFO_ARESETN <= '1';
		FIFO_WEN     <= '0';
		FIFO_REN		 <= '0';
		FIFO_DATA_IN <= "00000000000000000000000000000101";
      wait for FIFO_ACLK_period*10;
		
      wait;
   end process;

END;
