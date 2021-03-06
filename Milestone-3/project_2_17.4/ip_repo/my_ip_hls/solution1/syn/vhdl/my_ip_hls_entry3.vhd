-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2017.4
-- Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity my_ip_hls_entry3 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    start_full_n : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    start_out : OUT STD_LOGIC;
    start_write : OUT STD_LOGIC;
    rule0_V : IN STD_LOGIC_VECTOR (31 downto 0);
    rule1_V : IN STD_LOGIC_VECTOR (31 downto 0);
    rule2_V : IN STD_LOGIC_VECTOR (31 downto 0);
    rule0_V_out_din : OUT STD_LOGIC_VECTOR (31 downto 0);
    rule0_V_out_full_n : IN STD_LOGIC;
    rule0_V_out_write : OUT STD_LOGIC;
    rule1_V_out_din : OUT STD_LOGIC_VECTOR (31 downto 0);
    rule1_V_out_full_n : IN STD_LOGIC;
    rule1_V_out_write : OUT STD_LOGIC;
    rule2_V_out_din : OUT STD_LOGIC_VECTOR (31 downto 0);
    rule2_V_out_full_n : IN STD_LOGIC;
    rule2_V_out_write : OUT STD_LOGIC );
end;


architecture behav of my_ip_hls_entry3 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal real_start : STD_LOGIC;
    signal start_once_reg : STD_LOGIC := '0';
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal internal_ap_ready : STD_LOGIC;
    signal rule0_V_out_blk_n : STD_LOGIC;
    signal rule1_V_out_blk_n : STD_LOGIC;
    signal rule2_V_out_blk_n : STD_LOGIC;
    signal ap_block_state1 : BOOLEAN;
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
                elsif ((not(((real_start = ap_const_logic_0) or (rule2_V_out_full_n = ap_const_logic_0) or (rule1_V_out_full_n = ap_const_logic_0) or (rule0_V_out_full_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    start_once_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                start_once_reg <= ap_const_logic_0;
            else
                if (((internal_ap_ready = ap_const_logic_0) and (real_start = ap_const_logic_1))) then 
                    start_once_reg <= ap_const_logic_1;
                elsif ((internal_ap_ready = ap_const_logic_1)) then 
                    start_once_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    ap_NS_fsm_assign_proc : process (real_start, ap_done_reg, ap_CS_fsm, ap_CS_fsm_state1, rule0_V_out_full_n, rule1_V_out_full_n, rule2_V_out_full_n)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);

    ap_block_state1_assign_proc : process(real_start, ap_done_reg, rule0_V_out_full_n, rule1_V_out_full_n, rule2_V_out_full_n)
    begin
                ap_block_state1 <= ((real_start = ap_const_logic_0) or (rule2_V_out_full_n = ap_const_logic_0) or (rule1_V_out_full_n = ap_const_logic_0) or (rule0_V_out_full_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1));
    end process;


    ap_done_assign_proc : process(real_start, ap_done_reg, ap_CS_fsm_state1, rule0_V_out_full_n, rule1_V_out_full_n, rule2_V_out_full_n)
    begin
        if ((not(((real_start = ap_const_logic_0) or (rule2_V_out_full_n = ap_const_logic_0) or (rule1_V_out_full_n = ap_const_logic_0) or (rule0_V_out_full_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_done_reg;
        end if; 
    end process;


    ap_idle_assign_proc : process(real_start, ap_CS_fsm_state1)
    begin
        if (((real_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;

    ap_ready <= internal_ap_ready;

    internal_ap_ready_assign_proc : process(real_start, ap_done_reg, ap_CS_fsm_state1, rule0_V_out_full_n, rule1_V_out_full_n, rule2_V_out_full_n)
    begin
        if ((not(((real_start = ap_const_logic_0) or (rule2_V_out_full_n = ap_const_logic_0) or (rule1_V_out_full_n = ap_const_logic_0) or (rule0_V_out_full_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            internal_ap_ready <= ap_const_logic_1;
        else 
            internal_ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    real_start_assign_proc : process(ap_start, start_full_n, start_once_reg)
    begin
        if (((start_full_n = ap_const_logic_0) and (start_once_reg = ap_const_logic_0))) then 
            real_start <= ap_const_logic_0;
        else 
            real_start <= ap_start;
        end if; 
    end process;


    rule0_V_out_blk_n_assign_proc : process(ap_CS_fsm_state1, rule0_V_out_full_n)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state1)) then 
            rule0_V_out_blk_n <= rule0_V_out_full_n;
        else 
            rule0_V_out_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    rule0_V_out_din <= rule0_V;

    rule0_V_out_write_assign_proc : process(real_start, ap_done_reg, ap_CS_fsm_state1, rule0_V_out_full_n, rule1_V_out_full_n, rule2_V_out_full_n)
    begin
        if ((not(((real_start = ap_const_logic_0) or (rule2_V_out_full_n = ap_const_logic_0) or (rule1_V_out_full_n = ap_const_logic_0) or (rule0_V_out_full_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            rule0_V_out_write <= ap_const_logic_1;
        else 
            rule0_V_out_write <= ap_const_logic_0;
        end if; 
    end process;


    rule1_V_out_blk_n_assign_proc : process(ap_CS_fsm_state1, rule1_V_out_full_n)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state1)) then 
            rule1_V_out_blk_n <= rule1_V_out_full_n;
        else 
            rule1_V_out_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    rule1_V_out_din <= rule1_V;

    rule1_V_out_write_assign_proc : process(real_start, ap_done_reg, ap_CS_fsm_state1, rule0_V_out_full_n, rule1_V_out_full_n, rule2_V_out_full_n)
    begin
        if ((not(((real_start = ap_const_logic_0) or (rule2_V_out_full_n = ap_const_logic_0) or (rule1_V_out_full_n = ap_const_logic_0) or (rule0_V_out_full_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            rule1_V_out_write <= ap_const_logic_1;
        else 
            rule1_V_out_write <= ap_const_logic_0;
        end if; 
    end process;


    rule2_V_out_blk_n_assign_proc : process(ap_CS_fsm_state1, rule2_V_out_full_n)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state1)) then 
            rule2_V_out_blk_n <= rule2_V_out_full_n;
        else 
            rule2_V_out_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    rule2_V_out_din <= rule2_V;

    rule2_V_out_write_assign_proc : process(real_start, ap_done_reg, ap_CS_fsm_state1, rule0_V_out_full_n, rule1_V_out_full_n, rule2_V_out_full_n)
    begin
        if ((not(((real_start = ap_const_logic_0) or (rule2_V_out_full_n = ap_const_logic_0) or (rule1_V_out_full_n = ap_const_logic_0) or (rule0_V_out_full_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            rule2_V_out_write <= ap_const_logic_1;
        else 
            rule2_V_out_write <= ap_const_logic_0;
        end if; 
    end process;

    start_out <= real_start;

    start_write_assign_proc : process(real_start, start_once_reg)
    begin
        if (((start_once_reg = ap_const_logic_0) and (real_start = ap_const_logic_1))) then 
            start_write <= ap_const_logic_1;
        else 
            start_write <= ap_const_logic_0;
        end if; 
    end process;

end behav;
