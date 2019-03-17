library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity myip_v1_1_S00_AXIS is
	generic (
		-- Users to add parameters here

		-- User parameters ends
		-- Do not modify the parameters beyond this line

		-- AXI4Stream sink: Data Width
		C_S_AXIS_TDATA_WIDTH	: integer	:= 32
	);
	port (
		-- Users to add ports here
        FIFO_FULL : in std_logic;
        FIFO_EN : out std_logic;
        FIFO_DATA_IN : out std_logic_vector(C_S_AXIS_TDATA_WIDTH-1 downto 0);
        FIFO_ARSTN : out std_logic;
        FIFO_ACLK : out std_logic;
        
		-- AXI4Stream sink: Clock
		S_AXIS_ACLK	: in std_logic;
		-- AXI4Stream sink: Reset
		S_AXIS_ARESETN	: in std_logic;
		-- Ready to accept data in
		S_AXIS_TREADY	: out std_logic;
		-- Data in
		S_AXIS_TDATA	: in std_logic_vector(C_S_AXIS_TDATA_WIDTH-1 downto 0);
		-- Byte qualifier
		S_AXIS_TSTRB	: in std_logic_vector((C_S_AXIS_TDATA_WIDTH/8)-1 downto 0);
		-- Indicates boundary of last packet
		S_AXIS_TLAST	: in std_logic;
		-- Data is in valid
		S_AXIS_TVALID	: in std_logic
	);
end myip_v1_1_S00_AXIS;

architecture arch_imp of myip_v1_1_S00_AXIS is
    signal DONE	: std_logic;
    signal FIFO_EN_TMP	: std_logic;
begin
    DONE <= S_AXIS_TLAST AND (NOT FIFO_FULL);
   
    FIFO_ACLK    <= S_AXIS_ACLK;
    FIFO_ARSTN   <= S_AXIS_ARESETN; 
    FIFO_DATA_IN <= S_AXIS_TDATA;
	
	-- I/O Connections assignments
	S_AXIS_TREADY	<= NOT FIFO_FULL;
	
	-- FIFO write enable generation
   

    
	process(S_AXIS_ACLK)                                                                           
    begin                
    FIFO_EN_TMP <= S_AXIS_TVALID and (NOT FIFO_FULL);                                                                               
      if (rising_edge (S_AXIS_ACLK)) then                       
        if(S_AXIS_ARESETN = '0') then                                                              
          FIFO_EN_TMP <= '0';                                                                                                                               
        else                                                                                       
           FIFO_EN <= FIFO_EN_TMP;                                   
        end if;                                                                                    
      end if;                                                                                      
    end process;   
end arch_imp;
