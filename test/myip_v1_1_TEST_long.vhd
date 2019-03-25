----------------------------------------------------------------------------------
-- Company/University:        Technical University of Crete (TUC) - GR
-- Engineer:                  Spyridakis Christos 
--                            Vittis Vasilis
-- 
-- Create Date: 
-- Design Name:   
-- Module Name:   	      /myip_v1_1_TEST_long.vhd
-- Project Name:              Reconfigurable Computing
-- Target Devices:            zc706  evaluation board
-- Tool versions:             Vivado 2017.4
-- Description:               Push data, pop data and do both actions at the same time
-- 
-- Dependencies:              ieee.numeric_std.all
-- 
-- Revision:
-- Revision                    3 - FIFO -> 32b x 64 available slots
-- Additional Comments:
--
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;

ENTITY myip_v1_1_TEST_long IS
END myip_v1_1_TEST_long;
 
ARCHITECTURE behavior OF myip_v1_1_TEST_long IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT myip_v1_1
    PORT(
         m00_axis_aclk : IN  std_logic;
         m00_axis_aresetn : IN  std_logic;
         m00_axis_tvalid : OUT  std_logic;
         m00_axis_tdata : OUT  std_logic_vector(31 downto 0);
         m00_axis_tstrb : OUT  std_logic_vector(3 downto 0);
         m00_axis_tlast : OUT  std_logic;
         m00_axis_tready : IN  std_logic;
         s00_axis_aclk : IN  std_logic;
         s00_axis_aresetn : IN  std_logic;
         s00_axis_tready : OUT  std_logic;
         s00_axis_tdata : IN  std_logic_vector(31 downto 0);
         s00_axis_tstrb : IN  std_logic_vector(3 downto 0);
         s00_axis_tlast : IN  std_logic;
         s00_axis_tvalid : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal m00_axis_aclk : std_logic := '0';
   signal m00_axis_aresetn : std_logic := '0';
   signal m00_axis_tready : std_logic := '0';
   signal s00_axis_aclk : std_logic := '0';
   signal s00_axis_aresetn : std_logic := '0';
   signal s00_axis_tdata : std_logic_vector(31 downto 0) := (others => '0');
   signal s00_axis_tstrb : std_logic_vector(3 downto 0) := (others => '0');
   signal s00_axis_tlast : std_logic := '0';
   signal s00_axis_tvalid : std_logic := '0';

 	--Outputs
   signal m00_axis_tvalid : std_logic;
   signal m00_axis_tdata : std_logic_vector(31 downto 0);
   signal m00_axis_tstrb : std_logic_vector(3 downto 0);
   signal m00_axis_tlast : std_logic;
   signal s00_axis_tready : std_logic;

   -- Clock period definitions
   constant m00_axis_aclk_period : time := 10 ns;
   constant s00_axis_aclk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: myip_v1_1 PORT MAP (
          m00_axis_aclk => m00_axis_aclk,
          m00_axis_aresetn => m00_axis_aresetn,
          m00_axis_tvalid => m00_axis_tvalid,
          m00_axis_tdata => m00_axis_tdata,
          m00_axis_tstrb => m00_axis_tstrb,
          m00_axis_tlast => m00_axis_tlast,
          m00_axis_tready => m00_axis_tready,
          s00_axis_aclk => s00_axis_aclk,
          s00_axis_aresetn => s00_axis_aresetn,
          s00_axis_tready => s00_axis_tready,
          s00_axis_tdata => s00_axis_tdata,
          s00_axis_tstrb => s00_axis_tstrb,
          s00_axis_tlast => s00_axis_tlast,
          s00_axis_tvalid => s00_axis_tvalid
        );

   -- Clock process definitions
   m00_axis_aclk_process :process
   begin
		m00_axis_aclk <= '0';
		wait for m00_axis_aclk_period/2;
		m00_axis_aclk <= '1';
		wait for m00_axis_aclk_period/2;
   end process;
 
   s00_axis_aclk_process :process
   begin
		s00_axis_aclk <= '0';
		wait for s00_axis_aclk_period/2;
		s00_axis_aclk <= '1';
		wait for s00_axis_aclk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for m00_axis_aclk_period*10;

      ----------------------------------- CC 1 : Reset 
      m00_axis_aresetn <= '0';
      s00_axis_aresetn <= '0';
      wait for m00_axis_aclk_period*1;
      
      --------------------------------------------------------------------------------------------------

      ----------------------------------- CC 2-3 : Nop x2  
      s00_axis_aresetn <= '1';
      m00_axis_aresetn <= '1';
      --
      s00_axis_tvalid  <= '0';
      s00_axis_tdata   <= std_logic_vector(to_unsigned(0,32));
      s00_axis_tlast   <= '0';
      --
      m00_axis_tready  <= '0';
      wait for s00_axis_aclk_period*2;
      
      ----------------------------------- CC 4 : Handshake for writing data
      s00_axis_tvalid  <= '1';
      m00_axis_tready  <= '0';
      --
      s00_axis_tdata   <= std_logic_vector(to_unsigned(0,32));
      s00_axis_tlast   <= '0';
      wait for s00_axis_aclk_period*1;
      

      ----------------------------------- CC 5 : First packet with valid data + valid = 1 
      s00_axis_tvalid  <= '1';
      m00_axis_tready  <= '0';
      --
      s00_axis_tdata   <= std_logic_vector(to_unsigned(1,32));
      s00_axis_tlast   <= '0';
      wait for s00_axis_aclk_period*1;

      ----------------------------------- CC 6 : Second packet with valid data + valid = 1 
      s00_axis_tvalid  <= '1';
      m00_axis_tready  <= '0';
      --
      s00_axis_tdata   <= std_logic_vector(to_unsigned(2,32));
      s00_axis_tlast   <= '0';
      wait for s00_axis_aclk_period*1;

      ----------------------------------- CC 7-106 : Push and Pop simultaneously for 98 CCs (not exacly | DMAe is ready to receive data)
      for I in 3 to 101 loop
         if (I=48) then
            m00_axis_tready  <= '1';
            --
            s00_axis_tvalid  <= '0';
            s00_axis_tlast   <= '0';
            s00_axis_tdata   <= std_logic_vector(to_unsigned(I,32));
         elsif (I>48 AND I<52) then 
            m00_axis_tready  <= '0';
            --
            s00_axis_tvalid  <= '0';
            s00_axis_tlast   <= '0';
            s00_axis_tdata   <= std_logic_vector(to_unsigned(0,32));
         elsif (I=52) then 
            m00_axis_tready  <= '0';
            --
            s00_axis_tvalid  <= '1';
            s00_axis_tlast   <= '0';
            s00_axis_tdata   <= std_logic_vector(to_unsigned(0,32));
         elsif (I<100) then 
            m00_axis_tready  <= '1';
            --
            s00_axis_tvalid  <= '1';
            s00_axis_tlast   <= '0';
            s00_axis_tdata   <= std_logic_vector(to_unsigned(I,32));
         elsif (I=100) then 
            m00_axis_tready  <= '1';
            --
            s00_axis_tvalid  <= '0';
            s00_axis_tlast   <= '1';
            s00_axis_tdata   <= std_logic_vector(to_unsigned(I,32));
         else
            m00_axis_tready  <= '1';
            --
            s00_axis_tvalid  <= '0';
            s00_axis_tlast   <= '0';
            s00_axis_tdata   <= std_logic_vector(to_unsigned(0,32));
         end if;
         wait for s00_axis_aclk_period*1;
      end loop;

      ----------------------------------- CC 107-111 : Read last value  (Note: there is not reading error because we are not valid)
      m00_axis_tready  <= '1';
      --
      s00_axis_tvalid  <= '0';
      s00_axis_tlast   <= '0';
      s00_axis_tdata   <= std_logic_vector(to_unsigned(0,32));
      wait for s00_axis_aclk_period*3;


      ----------------------------------- CC 112 : Nop  
      s00_axis_aresetn <= '1';
      m00_axis_aresetn <= '1';
      --
      s00_axis_tvalid  <= '0';
      s00_axis_tdata   <= std_logic_vector(to_unsigned(0,32));
      s00_axis_tlast   <= '0';
      --
      m00_axis_tready  <= '0';
      wait for s00_axis_aclk_period;
      wait;
   end process;

   -- Stimulus process
   stim_proc_r: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for m00_axis_aclk_period*1;
      
      wait;
   end process;
END;
