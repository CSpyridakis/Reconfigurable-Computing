----------------------------------------------------------------------------------
-- Company/University:        Technical University of Crete (TUC) - GR
-- Engineer:                  Spyridakis Christos 
--                            Vittis Vasilis
-- 
-- Create Date: 
-- Design Name:   
-- Module Name:   	      /myip_v1_1_FIFO_TEST_WRW.vhd
-- Project Name:              Reconfigurable Computing
-- Target Devices:            zc706  evaluation board
-- Tool versions:             Vivado 2017.4
-- Description:               FIFO test for cycle writing/reading
-- 
-- Dependencies:              ieee.numeric_std.all
-- 
-- Revision:
-- Revision                   3.0 - FIFO -> 32b x 64 available slots
-- Additional Comments:
--
--------------------------------------------------------------------------------
LIBRARY ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 
ENTITY myip_v1_1_FIFO_TEST_WRW IS
END myip_v1_1_FIFO_TEST_WRW;
 
ARCHITECTURE behavior OF myip_v1_1_FIFO_TEST_WRW IS 
 
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
		FIFO_R_ACLK <= '1';
		wait for FIFO_R_ACLK_period/2;
		FIFO_R_ACLK <= '0';
		wait for FIFO_R_ACLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc_w: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for FIFO_W_ACLK_period*10;

	--------------------------------------------- CC 1 : RESET 
	FIFO_ARESETN <= '0';
	FIFO_WEN 	 <= '0';
	FIFO_DATA_IN <= "00000000000000000000000000000000";
	wait for FIFO_W_ACLK_period*1;

	--------------------------------------------- CC ~2-10 : Nop for 9 CCs 
	FIFO_ARESETN <= '1';
	FIFO_WEN     <= '0';
	FIFO_DATA_IN <= "00000000000000000000000000000000";
	wait for FIFO_W_ACLK_period*9;

	--------------------------------------------- CC ~11-70 : Push 70 values (Completed: 64 | Failed: 6)
	FIFO_ARESETN <= '1';
	for I in 1 to 70 loop
		FIFO_WEN     <= '1';
		FIFO_DATA_IN <= std_logic_vector(to_unsigned(I,32));
		wait for FIFO_W_ACLK_period*1;
	end loop;

	--------------------------------------------- CC ~71 - 171 : Nop  (Reading time) 
	FIFO_ARESETN <= '1';
	FIFO_WEN     <= '0';
	FIFO_DATA_IN <= "00000000000000000000000000000000";
	wait for FIFO_W_ACLK_period*100;


	--------------------------------------------- CC ~172-242 : Push 70 values (Completed: 64 | Failed: 6)
	FIFO_ARESETN <= '1';
	for I in 71 to 140 loop
		FIFO_WEN     <= '1';
		FIFO_DATA_IN <= std_logic_vector(to_unsigned(I,32));
		wait for FIFO_W_ACLK_period*1;
	end loop;

	--------------------------------------------- CC ~243-. : Nop 
	FIFO_ARESETN <= '1';
	FIFO_WEN     <= '0';
	FIFO_DATA_IN <= "00000000000000000000000000000000";
	wait for FIFO_W_ACLK_period*100;
     wait;
   end process;

    -- Stimulus process
   stim_proc_r: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      ------------------------------------------- CC ~1-100 : Nop for 100 CCs (Writing Time) 
      FIFO_REN     <= '0';
      wait for FIFO_R_ACLK_period*100;
		
      ------------------------------------------- CC ~101-171 : Read 70  values (Completed: 64 | Failed: 6)
      FIFO_REN     <= '1';
      wait for FIFO_R_ACLK_period*70;

      ------------------------------------------- CC ~172:. : Nop  
      FIFO_REN     <= '0';
      wait for FIFO_R_ACLK_period*1;
      wait;
   end process;
END;
