-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Version: 2022.1
-- Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity fft_fft_exec_Pipeline_All_Loop is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    Stage0_I_address0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    Stage0_I_ce0 : OUT STD_LOGIC;
    Stage0_I_we0 : OUT STD_LOGIC;
    Stage0_I_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    X_R_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
    X_R_ce0 : OUT STD_LOGIC;
    X_R_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    Stage0_R_address0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    Stage0_R_ce0 : OUT STD_LOGIC;
    Stage0_R_we0 : OUT STD_LOGIC;
    Stage0_R_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    Stage0_R_1_address0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    Stage0_R_1_ce0 : OUT STD_LOGIC;
    Stage0_R_1_we0 : OUT STD_LOGIC;
    Stage0_R_1_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    Stage0_R_2_address0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    Stage0_R_2_ce0 : OUT STD_LOGIC;
    Stage0_R_2_we0 : OUT STD_LOGIC;
    Stage0_R_2_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    Stage0_R_3_address0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    Stage0_R_3_ce0 : OUT STD_LOGIC;
    Stage0_R_3_we0 : OUT STD_LOGIC;
    Stage0_R_3_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    X_I_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
    X_I_ce0 : OUT STD_LOGIC;
    X_I_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    Stage0_I_1_address0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    Stage0_I_1_ce0 : OUT STD_LOGIC;
    Stage0_I_1_we0 : OUT STD_LOGIC;
    Stage0_I_1_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    Stage0_I_2_address0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    Stage0_I_2_ce0 : OUT STD_LOGIC;
    Stage0_I_2_we0 : OUT STD_LOGIC;
    Stage0_I_2_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    Stage0_I_3_address0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    Stage0_I_3_ce0 : OUT STD_LOGIC;
    Stage0_I_3_we0 : OUT STD_LOGIC;
    Stage0_I_3_d0 : OUT STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of fft_fft_exec_Pipeline_All_Loop is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv2_2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv2_3 : STD_LOGIC_VECTOR (1 downto 0) := "11";
    constant ap_const_lv11_0 : STD_LOGIC_VECTOR (10 downto 0) := "00000000000";
    constant ap_const_lv11_400 : STD_LOGIC_VECTOR (10 downto 0) := "10000000000";
    constant ap_const_lv11_1 : STD_LOGIC_VECTOR (10 downto 0) := "00000000001";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_9 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001001";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal icmp_ln90_fu_210_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter0_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal trunc_ln93_fu_222_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal trunc_ln93_reg_278 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal lshr_ln_reg_282 : STD_LOGIC_VECTOR (7 downto 0);
    signal zext_ln95_fu_246_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal zext_ln95_1_fu_257_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal i_fu_60 : STD_LOGIC_VECTOR (10 downto 0);
    signal i_2_fu_216_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal ap_sig_allocacmp_i_1 : STD_LOGIC_VECTOR (10 downto 0);
    signal or_ln93_8_fu_236_p4 : STD_LOGIC_VECTOR (9 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component fft_flow_control_loop_pipe_sequential_init IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_start_int : OUT STD_LOGIC;
        ap_loop_init : OUT STD_LOGIC;
        ap_ready_int : IN STD_LOGIC;
        ap_loop_exit_ready : IN STD_LOGIC;
        ap_loop_exit_done : IN STD_LOGIC;
        ap_continue_int : OUT STD_LOGIC;
        ap_done_int : IN STD_LOGIC );
    end component;



begin
    flow_control_loop_pipe_sequential_init_U : component fft_flow_control_loop_pipe_sequential_init
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => ap_start,
        ap_ready => ap_ready,
        ap_done => ap_done,
        ap_start_int => ap_start_int,
        ap_loop_init => ap_loop_init,
        ap_ready_int => ap_ready_int,
        ap_loop_exit_ready => ap_condition_exit_pp0_iter0_stage0,
        ap_loop_exit_done => ap_done_int,
        ap_continue_int => ap_continue_int,
        ap_done_int => ap_done_int);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
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
                if ((ap_continue_int = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_loop_exit_ready = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_condition_exit_pp0_iter0_stage0)) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_enable_reg_pp0_iter1 <= ap_start_int;
                end if; 
            end if;
        end if;
    end process;


    i_fu_60_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((icmp_ln90_fu_210_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                    i_fu_60 <= i_2_fu_216_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    i_fu_60 <= ap_const_lv11_0;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln90_fu_210_p2 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                lshr_ln_reg_282 <= ap_sig_allocacmp_i_1(9 downto 2);
                trunc_ln93_reg_278 <= trunc_ln93_fu_222_p1;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_CS_fsm)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    Stage0_I_1_address0 <= zext_ln95_1_fu_257_p1(8 - 1 downto 0);

    Stage0_I_1_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            Stage0_I_1_ce0 <= ap_const_logic_1;
        else 
            Stage0_I_1_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    Stage0_I_1_d0 <= X_I_q0;

    Stage0_I_1_we0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, trunc_ln93_reg_278, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (trunc_ln93_reg_278 = ap_const_lv2_1))) then 
            Stage0_I_1_we0 <= ap_const_logic_1;
        else 
            Stage0_I_1_we0 <= ap_const_logic_0;
        end if; 
    end process;

    Stage0_I_2_address0 <= zext_ln95_1_fu_257_p1(8 - 1 downto 0);

    Stage0_I_2_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            Stage0_I_2_ce0 <= ap_const_logic_1;
        else 
            Stage0_I_2_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    Stage0_I_2_d0 <= X_I_q0;

    Stage0_I_2_we0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, trunc_ln93_reg_278, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (trunc_ln93_reg_278 = ap_const_lv2_2))) then 
            Stage0_I_2_we0 <= ap_const_logic_1;
        else 
            Stage0_I_2_we0 <= ap_const_logic_0;
        end if; 
    end process;

    Stage0_I_3_address0 <= zext_ln95_1_fu_257_p1(8 - 1 downto 0);

    Stage0_I_3_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            Stage0_I_3_ce0 <= ap_const_logic_1;
        else 
            Stage0_I_3_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    Stage0_I_3_d0 <= X_I_q0;

    Stage0_I_3_we0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, trunc_ln93_reg_278, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (trunc_ln93_reg_278 = ap_const_lv2_3))) then 
            Stage0_I_3_we0 <= ap_const_logic_1;
        else 
            Stage0_I_3_we0 <= ap_const_logic_0;
        end if; 
    end process;

    Stage0_I_address0 <= zext_ln95_1_fu_257_p1(8 - 1 downto 0);

    Stage0_I_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            Stage0_I_ce0 <= ap_const_logic_1;
        else 
            Stage0_I_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    Stage0_I_d0 <= X_I_q0;

    Stage0_I_we0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, trunc_ln93_reg_278, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (trunc_ln93_reg_278 = ap_const_lv2_0))) then 
            Stage0_I_we0 <= ap_const_logic_1;
        else 
            Stage0_I_we0 <= ap_const_logic_0;
        end if; 
    end process;

    Stage0_R_1_address0 <= zext_ln95_1_fu_257_p1(8 - 1 downto 0);

    Stage0_R_1_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            Stage0_R_1_ce0 <= ap_const_logic_1;
        else 
            Stage0_R_1_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    Stage0_R_1_d0 <= X_R_q0;

    Stage0_R_1_we0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, trunc_ln93_reg_278, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (trunc_ln93_reg_278 = ap_const_lv2_1))) then 
            Stage0_R_1_we0 <= ap_const_logic_1;
        else 
            Stage0_R_1_we0 <= ap_const_logic_0;
        end if; 
    end process;

    Stage0_R_2_address0 <= zext_ln95_1_fu_257_p1(8 - 1 downto 0);

    Stage0_R_2_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            Stage0_R_2_ce0 <= ap_const_logic_1;
        else 
            Stage0_R_2_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    Stage0_R_2_d0 <= X_R_q0;

    Stage0_R_2_we0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, trunc_ln93_reg_278, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (trunc_ln93_reg_278 = ap_const_lv2_2))) then 
            Stage0_R_2_we0 <= ap_const_logic_1;
        else 
            Stage0_R_2_we0 <= ap_const_logic_0;
        end if; 
    end process;

    Stage0_R_3_address0 <= zext_ln95_1_fu_257_p1(8 - 1 downto 0);

    Stage0_R_3_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            Stage0_R_3_ce0 <= ap_const_logic_1;
        else 
            Stage0_R_3_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    Stage0_R_3_d0 <= X_R_q0;

    Stage0_R_3_we0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, trunc_ln93_reg_278, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (trunc_ln93_reg_278 = ap_const_lv2_3))) then 
            Stage0_R_3_we0 <= ap_const_logic_1;
        else 
            Stage0_R_3_we0 <= ap_const_logic_0;
        end if; 
    end process;

    Stage0_R_address0 <= zext_ln95_1_fu_257_p1(8 - 1 downto 0);

    Stage0_R_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            Stage0_R_ce0 <= ap_const_logic_1;
        else 
            Stage0_R_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    Stage0_R_d0 <= X_R_q0;

    Stage0_R_we0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, trunc_ln93_reg_278, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (trunc_ln93_reg_278 = ap_const_lv2_0))) then 
            Stage0_R_we0 <= ap_const_logic_1;
        else 
            Stage0_R_we0 <= ap_const_logic_0;
        end if; 
    end process;

    X_I_address0 <= zext_ln95_fu_246_p1(10 - 1 downto 0);

    X_I_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            X_I_ce0 <= ap_const_logic_1;
        else 
            X_I_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    X_R_address0 <= zext_ln95_fu_246_p1(10 - 1 downto 0);

    X_R_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            X_R_ce0 <= ap_const_logic_1;
        else 
            X_R_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state1_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state2_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_exit_pp0_iter0_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone, icmp_ln90_fu_210_p2)
    begin
        if (((icmp_ln90_fu_210_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_subdone, ap_loop_exit_ready, ap_done_reg)
    begin
        if (((ap_loop_exit_ready = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_done_int <= ap_const_logic_1;
        else 
            ap_done_int <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);
    ap_enable_reg_pp0_iter0 <= ap_start_int;

    ap_idle_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_idle_pp0, ap_start_int)
    begin
        if (((ap_idle_pp0 = ap_const_logic_1) and (ap_start_int = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_loop_exit_ready <= ap_condition_exit_pp0_iter0_stage0;

    ap_ready_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_allocacmp_i_1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, i_fu_60, ap_loop_init)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
            ap_sig_allocacmp_i_1 <= ap_const_lv11_0;
        else 
            ap_sig_allocacmp_i_1 <= i_fu_60;
        end if; 
    end process;

    i_2_fu_216_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_i_1) + unsigned(ap_const_lv11_1));
    icmp_ln90_fu_210_p2 <= "1" when (ap_sig_allocacmp_i_1 = ap_const_lv11_400) else "0";
    
    or_ln93_8_fu_236_p4_proc : process(ap_sig_allocacmp_i_1)
    variable vlo_cpy : STD_LOGIC_VECTOR(11+32 - 1 downto 0);
    variable vhi_cpy : STD_LOGIC_VECTOR(11+32 - 1 downto 0);
    variable v0_cpy : STD_LOGIC_VECTOR(11 - 1 downto 0);
    variable or_ln93_8_fu_236_p4_i : integer;
    variable section : STD_LOGIC_VECTOR(11 - 1 downto 0);
    variable tmp_mask : STD_LOGIC_VECTOR(11 - 1 downto 0);
    variable resvalue, res_value, res_mask : STD_LOGIC_VECTOR(11 - 1 downto 0);
    begin
        vlo_cpy := (others => '0');
        vlo_cpy(4 - 1 downto 0) := ap_const_lv32_9(4 - 1 downto 0);
        vhi_cpy := (others => '0');
        vhi_cpy(4 - 1 downto 0) := ap_const_lv32_0(4 - 1 downto 0);
        v0_cpy := ap_sig_allocacmp_i_1;
        if (vlo_cpy(4 - 1 downto 0) > vhi_cpy(4 - 1 downto 0)) then
            vhi_cpy(4-1 downto 0) := std_logic_vector(11-1-unsigned(ap_const_lv32_0(4-1 downto 0)));
            vlo_cpy(4-1 downto 0) := std_logic_vector(11-1-unsigned(ap_const_lv32_9(4-1 downto 0)));
            for or_ln93_8_fu_236_p4_i in 0 to 11-1 loop
                v0_cpy(or_ln93_8_fu_236_p4_i) := ap_sig_allocacmp_i_1(11-1-or_ln93_8_fu_236_p4_i);
            end loop;
        end if;
        res_value := std_logic_vector(shift_right(unsigned(v0_cpy), to_integer(unsigned('0' & vlo_cpy(4-1 downto 0)))));

        section := (others=>'0');
        section(4-1 downto 0) := std_logic_vector(unsigned(vhi_cpy(4-1 downto 0)) - unsigned(vlo_cpy(4-1 downto 0)));
        tmp_mask := (others => '1');
        res_mask := std_logic_vector(shift_left(unsigned(tmp_mask),to_integer(unsigned('0' & section(11-1 downto 0)))));
        res_mask := res_mask(11-2 downto 0) & '0';
        resvalue := res_value and not res_mask;
        or_ln93_8_fu_236_p4 <= resvalue(10-1 downto 0);
    end process;

    trunc_ln93_fu_222_p1 <= ap_sig_allocacmp_i_1(2 - 1 downto 0);
    zext_ln95_1_fu_257_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(lshr_ln_reg_282),64));
    zext_ln95_fu_246_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(or_ln93_8_fu_236_p4),64));
end behav;
