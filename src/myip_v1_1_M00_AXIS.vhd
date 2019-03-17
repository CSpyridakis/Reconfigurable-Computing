library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity myip_v1_1_M00_AXIS is
	generic (
		-- Users to add parameters here

		-- User parameters ends
		-- Do not modify the parameters beyond this line

		-- Width of S_AXIS address bus. The slave accepts the read and write addresses of width C_M_AXIS_TDATA_WIDTH.
		C_M_AXIS_TDATA_WIDTH	: integer	:= 32;
		-- Start count is the number of clock cycles the master will wait before initiating/issuing any transaction.
		C_M_START_COUNT	: integer	:= 32
	);
	port (
		-- Users to add ports here
        FIFO_DATA_OUT	: in std_logic_vector(C_M_AXIS_TDATA_WIDTH-1 downto 0);
        FIFO_REN        : out std_logic;
        FIFO_EMPTY      : in std_logic;

		-- Global ports
		M_AXIS_ACLK	: in std_logic;
		-- 
		M_AXIS_ARESETN	: in std_logic;
		-- Master Stream Ports. TVALID indicates that the master is driving a valid transfer, A transfer takes place when both TVALID and TREADY are asserted. 
		M_AXIS_TVALID	: out std_logic;
		-- TDATA is the primary payload that is used to provide the data that is passing across the interface from the master.
		M_AXIS_TDATA	: out std_logic_vector(C_M_AXIS_TDATA_WIDTH-1 downto 0);
		-- TSTRB is the byte qualifier that indicates whether the content of the associated byte of TDATA is processed as a data byte or a position byte.
		M_AXIS_TSTRB	: out std_logic_vector((C_M_AXIS_TDATA_WIDTH/8)-1 downto 0);
		-- TLAST indicates the boundary of a packet.
		M_AXIS_TLAST	: out std_logic;
		-- TREADY indicates that the slave can accept a transfer in the current cycle.
		M_AXIS_TREADY	: in std_logic
	);
end myip_v1_1_M00_AXIS;

architecture implementation of myip_v1_1_M00_AXIS is
                                                     
	--FIFO implementation signals
	signal stream_data_out	: std_logic_vector(C_M_AXIS_TDATA_WIDTH-1 downto 0);
begin
	-- I/O Connections assignments
	stream_data_out <= FIFO_DATA_OUT;
    
	M_AXIS_TVALID	<= NOT FIFO_EMPTY;
	M_AXIS_TSTRB	<= (others => '1');
	
    FIFO_REN  <= M_AXIS_TREADY AND (NOT FIFO_EMPTY);
                          
	process(M_AXIS_ACLK)                                                                           
	begin                                                                                    
	  if (rising_edge (M_AXIS_ACLK)) then                                               
	    if(M_AXIS_ARESETN = '0') then                                                              
            M_AXIS_TDATA <= "00000000000000000000000000000000";    
            M_AXIS_TLAST <= '0' ;                                         
	    else                                                                                       
            M_AXIS_TDATA <= stream_data_out; 
            M_AXIS_TLAST <= FIFO_EMPTY ;  
	    end if;                                                                                    
  end if;                                                                                      
end process;                                                                                   

end implementation;
