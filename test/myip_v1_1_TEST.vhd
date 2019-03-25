----------------------------------------------------------------------------------
-- Company/University:        Technical University of Crete (TUC) - GR
-- Engineer:                  Spyridakis Christos 
--                            Vittis Vasilis
-- 
-- Create Date: 
-- Design Name:   
-- Module Name:   	      /myip_v1_1_TEST.vhd
-- Project Name:              Reconfigurable Computing
-- Target Devices:            zc706  evaluation board
-- Tool versions:             Vivado 2017.4
-- Description:               MY-IP simple test
-- 
-- Dependencies:              ieee.numeric_std.all
-- 
-- Revision:
-- Revision                   3.0 - FIFO -> 32b x 64 available slots
-- Additional Comments:
--
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;

ENTITY myip_v1_1_TEST IS
END myip_v1_1_TEST;
 
ARCHITECTURE behavior OF myip_v1_1_TEST IS 
 
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
      
      ----------------------------------- CC 2 : Nop   
      s00_axis_aresetn <= '1';
      m00_axis_aresetn <= '1';
      --
      s00_axis_tvalid  <= '0';
      s00_axis_tdata   <= std_logic_vector(to_unsigned(0,32));
      s00_axis_tlast   <= '0';
      --
      m00_axis_tready  <= '0';
      wait for s00_axis_aclk_period*1;
      

      ----------------------------------- CC 3-12  
      s00_axis_aresetn <= '1';
      m00_axis_aresetn <= '1';
      --
      for I in 1 to 12 loop
         -- Write Valid
         if (I=1) then
            s00_axis_tvalid  <= '0';
            s00_axis_tdata   <= std_logic_vector(to_unsigned(0,32));
            s00_axis_tlast   <= '0';
            m00_axis_tready  <= '0';
         --Write data
         elsif (I=2) then
            s00_axis_tvalid  <= '1';
            s00_axis_tdata   <= std_logic_vector(to_unsigned(I,32));
            s00_axis_tlast   <= '0';
            m00_axis_tready  <= '0';
         -- Write valid
         elsif (I=3) then
            s00_axis_tvalid  <= '0';
            s00_axis_tdata   <= std_logic_vector(to_unsigned(0,32));
            s00_axis_tlast   <= '0';
            m00_axis_tready  <= '0';
         -- Write data
         elsif (I=4) then
            s00_axis_tvalid  <= '1';
            s00_axis_tdata   <= std_logic_vector(to_unsigned(I,32));
            s00_axis_tlast   <= '0';
            m00_axis_tready  <= '0';
         -- Read and Write
         elsif (I<8) then
            s00_axis_tvalid  <= '1';
            s00_axis_tdata   <= std_logic_vector(to_unsigned(I,32));
            s00_axis_tlast   <= '0';
            m00_axis_tready  <= '1';
         -- Write last and continue reading
         elsif (I=8) then
            s00_axis_tvalid  <= '1';
            s00_axis_tdata   <= std_logic_vector(to_unsigned(I,32));
            s00_axis_tlast   <= '1';
            m00_axis_tready  <= '1';
         -- Read only
         elsif (I=9) then
            s00_axis_tvalid  <= '0';
            s00_axis_tdata   <= std_logic_vector(to_unsigned(0,32));
            s00_axis_tlast   <= '0';
            m00_axis_tready  <= '1';
         -- Nop 
         elsif (I=10) then
            s00_axis_tvalid  <= '0';
            s00_axis_tdata   <= std_logic_vector(to_unsigned(0,32));
            s00_axis_tlast   <= '0';
            m00_axis_tready  <= '0';
         -- Read
         elsif (I=11) then
            s00_axis_tvalid  <= '0';
            s00_axis_tdata   <= std_logic_vector(to_unsigned(0,32));
            s00_axis_tlast   <= '0';
            m00_axis_tready  <= '1';
         -- Read ready without handshake
         elsif (I=12) then
            s00_axis_tvalid  <= '0';
            s00_axis_tdata   <= std_logic_vector(to_unsigned(0,32));
            s00_axis_tlast   <= '0';
            m00_axis_tready  <= '1';		
         end if;

         wait for s00_axis_aclk_period*1;
      end loop;

      ----------------------------------- CC  : Nop  
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

END;
