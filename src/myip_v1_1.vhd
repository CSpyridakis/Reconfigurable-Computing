----------------------------------------------------------------------------------
-- Company/University:        Technical University of Crete (TUC) - GR
-- Engineer:                  Spyridakis Christos 
--                            Vittis Vasilis
-- 
-- Create Date:               
-- Design Name: 	 
-- Module Name:               myip_v1_1 - Behavioral 
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

entity myip_v1_1 is
	generic (
		-- Parameters of Axi Master Bus Interface M00_AXIS
		C_M00_AXIS_TDATA_WIDTH	: integer	:= 32

		-- Parameters of Axi Slave Bus Interface S00_AXIS
		C_S00_AXIS_TDATA_WIDTH	: integer	:= 32
	);
	port (
		-- Ports of Axi Master Bus Interface M00_AXIS
		m00_axis_aclk		: in std_logic;
		m00_axis_aresetn	: in std_logic;
		m00_axis_tvalid		: out std_logic;
		m00_axis_tdata		: out std_logic_vector(C_M00_AXIS_TDATA_WIDTH-1 downto 0);
		m00_axis_tstrb		: out std_logic_vector((C_M00_AXIS_TDATA_WIDTH/8)-1 downto 0);
		m00_axis_tlast		: out std_logic;
		m00_axis_tready		: in std_logic;

		-- Ports of Axi Slave Bus Interface S00_AXIS
		s00_axis_aclk		: in std_logic;
		s00_axis_aresetn	: in std_logic;
		s00_axis_tready		: out std_logic;
		s00_axis_tdata		: in std_logic_vector(C_S00_AXIS_TDATA_WIDTH-1 downto 0);
		s00_axis_tstrb		: in std_logic_vector((C_S00_AXIS_TDATA_WIDTH/8)-1 downto 0);
		s00_axis_tlast		: in std_logic;
		s00_axis_tvalid		: in std_logic
	);
end myip_v1_1;

architecture arch_imp of myip_v1_1 is

	-- components declaration
	component myip_v1_1_M00_AXIS is
		generic (
		C_M_AXIS_TDATA_WIDTH	: integer	:= 32
		);
		port (
		FIFO_R_ACLK		: out std_logic;
		FIFO_EMPTY      : in std_logic;
		FIFO_REN        : out std_logic;
		FIFO_DATA_OUT	: in std_logic_vector(C_M_AXIS_TDATA_WIDTH-1 downto 0);
        
		M_AXIS_ACLK		: in std_logic;
		M_AXIS_ARESETN	: in std_logic;
		M_AXIS_TVALID	: out std_logic;
		M_AXIS_TDATA	: out std_logic_vector(C_M_AXIS_TDATA_WIDTH-1 downto 0);
		M_AXIS_TSTRB	: out std_logic_vector((C_M_AXIS_TDATA_WIDTH/8)-1 downto 0);
		M_AXIS_TLAST	: out std_logic;
		M_AXIS_TREADY	: in std_logic
		);
	end component myip_v1_1_M00_AXIS;

	component myip_v1_1_S00_AXIS is
		generic (
		C_S_AXIS_TDATA_WIDTH	: integer	:= 32
		);
		port (
		FIFO_W_ACLK		: out std_logic;
		FIFO_ARSTN 		: out std_logic;
		FIFO_FULL 		: in std_logic;
		FIFO_WEN	 	: out std_logic;
		FIFO_DATA_IN 	: out std_logic_vector(C_S_AXIS_TDATA_WIDTH-1 downto 0);
               
		S_AXIS_ACLK		: in std_logic;
		S_AXIS_ARESETN	: in std_logic;
		S_AXIS_TREADY	: out std_logic;
		S_AXIS_TDATA	: in std_logic_vector(C_S_AXIS_TDATA_WIDTH-1 downto 0);
		S_AXIS_TSTRB	: in std_logic_vector((C_S_AXIS_TDATA_WIDTH/8)-1 downto 0);
		S_AXIS_TLAST	: in std_logic;
		S_AXIS_TVALID	: in std_logic
		);
	end component myip_v1_1_S00_AXIS;

	component myip_v1_1_FIFO is
		generic (
		-- Width of data in FIFO
		FIFO_DATA_WIDTH		: integer	:= 32
		);
		port (
		FIFO_W_ACLK	   		: in std_logic;
		FIFO_R_ACLK	   		: in std_logic;
		FIFO_ARESETN		: in std_logic;
		FIFO_WEN	      	: in std_logic;
		FIFO_REN	      	: in std_logic;
		FIFO_FULL	   		: out std_logic;
		FIFO_EMPTY	   		: out std_logic;
		FIFO_DATA_IN		: in std_logic_vector(FIFO_DATA_WIDTH-1 downto 0);
		FIFO_DATA_OUT		: out std_logic_vector(FIFO_DATA_WIDTH-1 downto 0)
		);
	end component myip_v1_1_FIFO;

signal FIFO_W_ACLK_TMP 		: std_logic;
signal FIFO_R_ACLK_TMP 		: std_logic;
signal FIFO_ARST_TMP 		: std_logic;
signal FIFO_FULL_TMP 		: std_logic;
signal FIFO_EMPTY_TMP 		: std_logic;
signal FIFO_WEN_TMP 		: std_logic;
signal FIFO_REN_TMP 		: std_logic;
signal FIFO_DATA_IN_TMP 	: std_logic_vector(C_S00_AXIS_TDATA_WIDTH-1 downto 0);
signal FIFO_DATA_OUT_TMP 	: std_logic_vector(C_S00_AXIS_TDATA_WIDTH-1 downto 0);


begin

-- Instantiation of Axi Bus Interface M00_AXIS
myip_v1_1_M00_AXIS_inst : myip_v1_1_M00_AXIS
	generic map (
		C_M_AXIS_TDATA_WIDTH	=> C_M00_AXIS_TDATA_WIDTH,
	)
	port map (
		FIFO_R_ACLK      		=> FIFO_R_ACLK_TMP,
		FIFO_EMPTY      		=> FIFO_EMPTY_TMP,
		FIFO_REN        		=> FIFO_REN_TMP,
	    FIFO_DATA_OUT			=> FIFO_DATA_OUT_TMP,
    
		M_AXIS_ACLK				=> m00_axis_aclk,
		M_AXIS_ARESETN			=> m00_axis_aresetn,
		M_AXIS_TVALID			=> m00_axis_tvalid,
		M_AXIS_TDATA			=> m00_axis_tdata,
		M_AXIS_TSTRB			=> m00_axis_tstrb,
		M_AXIS_TLAST			=> m00_axis_tlast,
		M_AXIS_TREADY			=> m00_axis_tready
	);

-- Instantiation of Axi Bus Interface S00_AXIS
myip_v1_1_S00_AXIS_inst : myip_v1_1_S00_AXIS
	generic map (
		C_S_AXIS_TDATA_WIDTH	=> C_S00_AXIS_TDATA_WIDTH
	)
	port map (
		FIFO_W_ACLK       		=> FIFO_W_ACLK_TMP,
		FIFO_ARSTN      		=> FIFO_ARST_TMP,
	    FIFO_FULL       		=> FIFO_FULL_TMP,
        FIFO_WEN         		=> FIFO_WEN_TMP,
        FIFO_DATA_IN    		=> FIFO_DATA_IN_TMP,

		S_AXIS_ACLK	    		=> s00_axis_aclk,
		S_AXIS_ARESETN			=> s00_axis_aresetn,
		S_AXIS_TREADY			=> s00_axis_tready,
		S_AXIS_TDATA			=> s00_axis_tdata,
		S_AXIS_TSTRB			=> s00_axis_tstrb,
		S_AXIS_TLAST			=> s00_axis_tlast,
		S_AXIS_TVALID			=> s00_axis_tvalid
	);

-- Instantiation of FIFO module
myip_v1_1_FIFO : myip_v1_1_FIFO
	generic map(
			FIFO_DATA_WIDTH	=> 32
	)
	port map(
			FIFO_W_ACLK     => FIFO_W_ACLK_TMP,
			FIFO_R_ACLK     => FIFO_R_ACLK_TMP,
			FIFO_ARESETN    => FIFO_ARST_TMP,
			FIFO_WEN        => FIFO_WEN_TMP,
			FIFO_REN        => FIFO_REN_TMP,
			FIFO_FULL       => FIFO_FULL_TMP,
			FIFO_EMPTY      => FIFO_EMPTY_TMP,
			FIFO_DATA_IN    => FIFO_DATA_IN_TMP,
			FIFO_DATA_OUT   => FIFO_DATA_OUT_TMP);
end arch_imp;
