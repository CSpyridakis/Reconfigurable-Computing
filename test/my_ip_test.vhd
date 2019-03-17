-- Testbench created online at:
--   www.doulos.com/knowhow/perl/testbench_creation/
-- Copyright Doulos Ltd
-- SD, 03 November 2002

library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity myip_v1_1_tb is
end;

architecture bench of myip_v1_1_tb is

  component myip_v1_1
  	generic (
  		C_M00_AXIS_TDATA_WIDTH	: integer	:= 32;
  		C_M00_AXIS_START_COUNT	: integer	:= 32;
  		C_S00_AXIS_TDATA_WIDTH	: integer	:= 32
  	);
  	port (
  		m00_axis_aclk	: in std_logic;
  		m00_axis_aresetn	: in std_logic;
  		m00_axis_tvalid	: out std_logic;
  		m00_axis_tdata	: out std_logic_vector(C_M00_AXIS_TDATA_WIDTH-1 downto 0);
  		m00_axis_tstrb	: out std_logic_vector((C_M00_AXIS_TDATA_WIDTH/8)-1 downto 0);
  		m00_axis_tlast	: out std_logic;
  		m00_axis_tready	: in std_logic;
  		s00_axis_aclk	: in std_logic;
  		s00_axis_aresetn	: in std_logic;
  		s00_axis_tready	: out std_logic;
  		s00_axis_tdata	: in std_logic_vector(C_S00_AXIS_TDATA_WIDTH-1 downto 0);
  		s00_axis_tstrb	: in std_logic_vector((C_S00_AXIS_TDATA_WIDTH/8)-1 downto 0);
  		s00_axis_tlast	: in std_logic;
  		s00_axis_tvalid	: in std_logic
  	);
  end component;

  signal m00_axis_aclk: std_logic;
  signal m00_axis_aresetn: std_logic;
  signal m00_axis_tvalid: std_logic;
  signal m00_axis_tdata: std_logic_vector(32-1 downto 0);
  signal m00_axis_tstrb: std_logic_vector((32/8)-1 downto 0);
  signal m00_axis_tlast: std_logic;
  signal m00_axis_tready: std_logic;
  signal s00_axis_aclk: std_logic;
  signal s00_axis_aresetn: std_logic;
  signal s00_axis_tready: std_logic;
  signal s00_axis_tdata: std_logic_vector(32-1 downto 0);
  signal s00_axis_tstrb: std_logic_vector((32/8)-1 downto 0);
  signal s00_axis_tlast: std_logic;
  signal s00_axis_tvalid: std_logic ;
  constant Clk_period : time := 10 ns;
begin

  -- Insert values for generic parameters !!
  uut: myip_v1_1 generic map ( C_M00_AXIS_TDATA_WIDTH => 32,
                               C_M00_AXIS_START_COUNT => 32,
                               C_S00_AXIS_TDATA_WIDTH => 32 )
                    port map ( m00_axis_aclk          => m00_axis_aclk,
                               m00_axis_aresetn       => m00_axis_aresetn,
                               m00_axis_tvalid        => m00_axis_tvalid,
                               m00_axis_tdata         => m00_axis_tdata,
                               m00_axis_tstrb         => m00_axis_tstrb,
                               m00_axis_tlast         => m00_axis_tlast,
                               m00_axis_tready        => m00_axis_tready,
                               
                               s00_axis_aclk          => s00_axis_aclk,
                               s00_axis_aresetn       => s00_axis_aresetn,
                               s00_axis_tready        => s00_axis_tready,
                               s00_axis_tdata         => s00_axis_tdata,
                               s00_axis_tstrb         => s00_axis_tstrb,
                               s00_axis_tlast         => s00_axis_tlast,
                               s00_axis_tvalid        => s00_axis_tvalid );
   -- Clock process definitions
                               MASTER_ACLK_process :process
                               begin
                                    m00_axis_aclk <= '1';
                                    wait for Clk_period/2;
                                    m00_axis_aclk <= '0';
                                    wait for Clk_period/2;
                               end process;
                                 SLAVE_ACLK_process :process
                                 begin
                                     s00_axis_aclk <= '1';
                                     wait for Clk_period/2;
                                     s00_axis_aclk <= '0';
                                     wait for Clk_period/2;
                                end process;
  stimulus: process
  begin
    s00_axis_aresetn <= '0';
    m00_axis_aresetn <='0';
    s00_axis_tvalid<= '0';
    s00_axis_tdata<= "00000000000000000000000000000111";
    s00_axis_tlast<= '0';
    m00_axis_tready<= '0';
   wait for Clk_period*3;
   
    m00_axis_aresetn <='1';
    s00_axis_aresetn <= '1';
    s00_axis_tvalid<= '0';
    s00_axis_tdata<= "00000000000000000000000000000110";
    wait for Clk_period*3;
    
    s00_axis_tvalid <= '1';
    s00_axis_aresetn <= '1';
    m00_axis_tready<= '1';
    s00_axis_tdata<= "00000000000000000000000000000000";
    wait for Clk_period;
    --8
    s00_axis_tvalid <= '1';
    s00_axis_aresetn <= '1';
    s00_axis_tdata<= "00000000000000000000000000001000";
    wait for Clk_period;
    -- 7
    s00_axis_tvalid <= '1';
    s00_axis_aresetn <= '1';
    s00_axis_tdata<= "00000000000000000000000000000111";
    wait for Clk_period;
    -- 6
    s00_axis_tvalid <= '1';
    s00_axis_aresetn <= '1';
    s00_axis_tdata<= "00000000000000000000000000000110";
    wait for Clk_period;
    -- 5
    s00_axis_tvalid <= '1';
    s00_axis_aresetn <= '1';
    
    s00_axis_tdata<= "00000000000000000000000000000101";
    wait for Clk_period;
    --4 
    s00_axis_tvalid <= '1';
    s00_axis_aresetn <= '1';
    s00_axis_tdata<= "00000000000000000000000000000100";
   wait for Clk_period;
   --3 
    s00_axis_tvalid <= '1';
    s00_axis_aresetn <= '1';
    s00_axis_tdata<= "00000000000000000000000000000011";
    wait for Clk_period;
  --2
    s00_axis_tvalid <= '1';
    s00_axis_aresetn <= '1';
    s00_axis_tdata<= "00000000000000000000000000000010";
    wait for Clk_period*70;
    --1
    s00_axis_tvalid <= '0';
    s00_axis_aresetn <= '1';  
    s00_axis_tlast<= '1';
    s00_axis_tdata<= "00000000000000000000000000000001";
    wait for Clk_period;
    
   s00_axis_tvalid <= '0';
   s00_axis_aresetn <= '1';
   s00_axis_tlast<= '0';
   s00_axis_tdata<= "00000000000000010000000000001110";
   wait for Clk_period*3;

    wait;
  end process;


end;