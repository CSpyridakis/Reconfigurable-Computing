-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2017.4
-- Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity rules_in is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    rule0_V_dout : IN STD_LOGIC_VECTOR (31 downto 0);
    rule0_V_empty_n : IN STD_LOGIC;
    rule0_V_read : OUT STD_LOGIC;
    rule1_V_dout : IN STD_LOGIC_VECTOR (31 downto 0);
    rule1_V_empty_n : IN STD_LOGIC;
    rule1_V_read : OUT STD_LOGIC;
    rule2_V_dout : IN STD_LOGIC_VECTOR (31 downto 0);
    rule2_V_empty_n : IN STD_LOGIC;
    rule2_V_read : OUT STD_LOGIC;
    ap_return_0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    ap_return_1 : OUT STD_LOGIC_VECTOR (31 downto 0);
    ap_return_2 : OUT STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of rules_in is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal rule0_V_blk_n : STD_LOGIC;
    signal rule1_V_blk_n : STD_LOGIC;
    signal rule2_V_blk_n : STD_LOGIC;
    signal ap_block_state1 : BOOLEAN;
    signal ap_return_0_preg : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    signal ap_return_1_preg : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    signal ap_return_2_preg : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);


begin




    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif ((not(((ap_start = ap_const_logic_0) or (rule2_V_empty_n = ap_const_logic_0) or (rule1_V_empty_n = ap_const_logic_0) or (rule0_V_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_return_0_preg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_return_0_preg <= ap_const_lv32_0;
            else
                if ((not(((ap_start = ap_const_logic_0) or (rule2_V_empty_n = ap_const_logic_0) or (rule1_V_empty_n = ap_const_logic_0) or (rule0_V_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                    ap_return_0_preg <= rule0_V_dout;
                end if; 
            end if;
        end if;
    end process;


    ap_return_1_preg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_return_1_preg <= ap_const_lv32_0;
            else
                if ((not(((ap_start = ap_const_logic_0) or (rule2_V_empty_n = ap_const_logic_0) or (rule1_V_empty_n = ap_const_logic_0) or (rule0_V_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                    ap_return_1_preg <= rule1_V_dout;
                end if; 
            end if;
        end if;
    end process;


    ap_return_2_preg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_return_2_preg <= ap_const_lv32_0;
            else
                if ((not(((ap_start = ap_const_logic_0) or (rule2_V_empty_n = ap_const_logic_0) or (rule1_V_empty_n = ap_const_logic_0) or (rule0_V_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                    ap_return_2_preg <= rule2_V_dout;
                end if; 
            end if;
        end if;
    end process;


    ap_NS_fsm_assign_proc : process (ap_start, ap_done_reg, ap_CS_fsm, ap_CS_fsm_state1, rule0_V_empty_n, rule1_V_empty_n, rule2_V_empty_n)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);

    ap_block_state1_assign_proc : process(ap_start, ap_done_reg, rule0_V_empty_n, rule1_V_empty_n, rule2_V_empty_n)
    begin
                ap_block_state1 <= ((ap_start = ap_const_logic_0) or (rule2_V_empty_n = ap_const_logic_0) or (rule1_V_empty_n = ap_const_logic_0) or (rule0_V_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1));
    end process;


    ap_done_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, rule0_V_empty_n, rule1_V_empty_n, rule2_V_empty_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (rule2_V_empty_n = ap_const_logic_0) or (rule1_V_empty_n = ap_const_logic_0) or (rule0_V_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_done_reg;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, rule0_V_empty_n, rule1_V_empty_n, rule2_V_empty_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (rule2_V_empty_n = ap_const_logic_0) or (rule1_V_empty_n = ap_const_logic_0) or (rule0_V_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    ap_return_0_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, rule0_V_dout, rule0_V_empty_n, rule1_V_empty_n, rule2_V_empty_n, ap_return_0_preg)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (rule2_V_empty_n = ap_const_logic_0) or (rule1_V_empty_n = ap_const_logic_0) or (rule0_V_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_return_0 <= rule0_V_dout;
        else 
            ap_return_0 <= ap_return_0_preg;
        end if; 
    end process;


    ap_return_1_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, rule0_V_empty_n, rule1_V_dout, rule1_V_empty_n, rule2_V_empty_n, ap_return_1_preg)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (rule2_V_empty_n = ap_const_logic_0) or (rule1_V_empty_n = ap_const_logic_0) or (rule0_V_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_return_1 <= rule1_V_dout;
        else 
            ap_return_1 <= ap_return_1_preg;
        end if; 
    end process;


    ap_return_2_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, rule0_V_empty_n, rule1_V_empty_n, rule2_V_dout, rule2_V_empty_n, ap_return_2_preg)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (rule2_V_empty_n = ap_const_logic_0) or (rule1_V_empty_n = ap_const_logic_0) or (rule0_V_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_return_2 <= rule2_V_dout;
        else 
            ap_return_2 <= ap_return_2_preg;
        end if; 
    end process;


    rule0_V_blk_n_assign_proc : process(ap_CS_fsm_state1, rule0_V_empty_n)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state1)) then 
            rule0_V_blk_n <= rule0_V_empty_n;
        else 
            rule0_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    rule0_V_read_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, rule0_V_empty_n, rule1_V_empty_n, rule2_V_empty_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (rule2_V_empty_n = ap_const_logic_0) or (rule1_V_empty_n = ap_const_logic_0) or (rule0_V_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            rule0_V_read <= ap_const_logic_1;
        else 
            rule0_V_read <= ap_const_logic_0;
        end if; 
    end process;


    rule1_V_blk_n_assign_proc : process(ap_CS_fsm_state1, rule1_V_empty_n)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state1)) then 
            rule1_V_blk_n <= rule1_V_empty_n;
        else 
            rule1_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    rule1_V_read_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, rule0_V_empty_n, rule1_V_empty_n, rule2_V_empty_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (rule2_V_empty_n = ap_const_logic_0) or (rule1_V_empty_n = ap_const_logic_0) or (rule0_V_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            rule1_V_read <= ap_const_logic_1;
        else 
            rule1_V_read <= ap_const_logic_0;
        end if; 
    end process;


    rule2_V_blk_n_assign_proc : process(ap_CS_fsm_state1, rule2_V_empty_n)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state1)) then 
            rule2_V_blk_n <= rule2_V_empty_n;
        else 
            rule2_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    rule2_V_read_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, rule0_V_empty_n, rule1_V_empty_n, rule2_V_empty_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (rule2_V_empty_n = ap_const_logic_0) or (rule1_V_empty_n = ap_const_logic_0) or (rule0_V_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            rule2_V_read <= ap_const_logic_1;
        else 
            rule2_V_read <= ap_const_logic_0;
        end if; 
    end process;

end behav;
