// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Version: 2022.1
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module fft_fft_Pipeline_3 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        m_axi_output_1_AWVALID,
        m_axi_output_1_AWREADY,
        m_axi_output_1_AWADDR,
        m_axi_output_1_AWID,
        m_axi_output_1_AWLEN,
        m_axi_output_1_AWSIZE,
        m_axi_output_1_AWBURST,
        m_axi_output_1_AWLOCK,
        m_axi_output_1_AWCACHE,
        m_axi_output_1_AWPROT,
        m_axi_output_1_AWQOS,
        m_axi_output_1_AWREGION,
        m_axi_output_1_AWUSER,
        m_axi_output_1_WVALID,
        m_axi_output_1_WREADY,
        m_axi_output_1_WDATA,
        m_axi_output_1_WSTRB,
        m_axi_output_1_WLAST,
        m_axi_output_1_WID,
        m_axi_output_1_WUSER,
        m_axi_output_1_ARVALID,
        m_axi_output_1_ARREADY,
        m_axi_output_1_ARADDR,
        m_axi_output_1_ARID,
        m_axi_output_1_ARLEN,
        m_axi_output_1_ARSIZE,
        m_axi_output_1_ARBURST,
        m_axi_output_1_ARLOCK,
        m_axi_output_1_ARCACHE,
        m_axi_output_1_ARPROT,
        m_axi_output_1_ARQOS,
        m_axi_output_1_ARREGION,
        m_axi_output_1_ARUSER,
        m_axi_output_1_RVALID,
        m_axi_output_1_RREADY,
        m_axi_output_1_RDATA,
        m_axi_output_1_RLAST,
        m_axi_output_1_RID,
        m_axi_output_1_RFIFONUM,
        m_axi_output_1_RUSER,
        m_axi_output_1_RRESP,
        m_axi_output_1_BVALID,
        m_axi_output_1_BREADY,
        m_axi_output_1_BRESP,
        m_axi_output_1_BID,
        m_axi_output_1_BUSER,
        sext_ln36,
        OUT_R_o_0_address0,
        OUT_R_o_0_ce0,
        OUT_R_o_0_q0,
        OUT_R_o_1_address0,
        OUT_R_o_1_ce0,
        OUT_R_o_1_q0,
        OUT_R_o_2_address0,
        OUT_R_o_2_ce0,
        OUT_R_o_2_q0,
        OUT_R_o_3_address0,
        OUT_R_o_3_ce0,
        OUT_R_o_3_q0
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output   m_axi_output_1_AWVALID;
input   m_axi_output_1_AWREADY;
output  [63:0] m_axi_output_1_AWADDR;
output  [0:0] m_axi_output_1_AWID;
output  [31:0] m_axi_output_1_AWLEN;
output  [2:0] m_axi_output_1_AWSIZE;
output  [1:0] m_axi_output_1_AWBURST;
output  [1:0] m_axi_output_1_AWLOCK;
output  [3:0] m_axi_output_1_AWCACHE;
output  [2:0] m_axi_output_1_AWPROT;
output  [3:0] m_axi_output_1_AWQOS;
output  [3:0] m_axi_output_1_AWREGION;
output  [0:0] m_axi_output_1_AWUSER;
output   m_axi_output_1_WVALID;
input   m_axi_output_1_WREADY;
output  [31:0] m_axi_output_1_WDATA;
output  [3:0] m_axi_output_1_WSTRB;
output   m_axi_output_1_WLAST;
output  [0:0] m_axi_output_1_WID;
output  [0:0] m_axi_output_1_WUSER;
output   m_axi_output_1_ARVALID;
input   m_axi_output_1_ARREADY;
output  [63:0] m_axi_output_1_ARADDR;
output  [0:0] m_axi_output_1_ARID;
output  [31:0] m_axi_output_1_ARLEN;
output  [2:0] m_axi_output_1_ARSIZE;
output  [1:0] m_axi_output_1_ARBURST;
output  [1:0] m_axi_output_1_ARLOCK;
output  [3:0] m_axi_output_1_ARCACHE;
output  [2:0] m_axi_output_1_ARPROT;
output  [3:0] m_axi_output_1_ARQOS;
output  [3:0] m_axi_output_1_ARREGION;
output  [0:0] m_axi_output_1_ARUSER;
input   m_axi_output_1_RVALID;
output   m_axi_output_1_RREADY;
input  [31:0] m_axi_output_1_RDATA;
input   m_axi_output_1_RLAST;
input  [0:0] m_axi_output_1_RID;
input  [8:0] m_axi_output_1_RFIFONUM;
input  [0:0] m_axi_output_1_RUSER;
input  [1:0] m_axi_output_1_RRESP;
input   m_axi_output_1_BVALID;
output   m_axi_output_1_BREADY;
input  [1:0] m_axi_output_1_BRESP;
input  [0:0] m_axi_output_1_BID;
input  [0:0] m_axi_output_1_BUSER;
input  [61:0] sext_ln36;
output  [7:0] OUT_R_o_0_address0;
output   OUT_R_o_0_ce0;
input  [31:0] OUT_R_o_0_q0;
output  [7:0] OUT_R_o_1_address0;
output   OUT_R_o_1_ce0;
input  [31:0] OUT_R_o_1_q0;
output  [7:0] OUT_R_o_2_address0;
output   OUT_R_o_2_ce0;
input  [31:0] OUT_R_o_2_q0;
output  [7:0] OUT_R_o_3_address0;
output   OUT_R_o_3_ce0;
input  [31:0] OUT_R_o_3_q0;

reg ap_idle;
reg m_axi_output_1_WVALID;
reg OUT_R_o_0_ce0;
reg OUT_R_o_1_ce0;
reg OUT_R_o_2_ce0;
reg OUT_R_o_3_ce0;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] exitcond107_fu_144_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    output_1_blk_n_W;
wire    ap_block_pp0_stage0;
reg    ap_block_pp0_stage0_11001;
reg   [0:0] exitcond107_reg_217;
wire   [1:0] empty_47_fu_156_p1;
reg   [1:0] empty_47_reg_221;
wire   [31:0] tmp_fu_188_p6;
reg   [31:0] tmp_reg_251;
reg    ap_condition_exit_pp0_iter1_stage0;
wire   [63:0] p_cast3_fu_170_p1;
wire    ap_block_pp0_stage0_01001;
reg   [10:0] loop_index3_fu_62;
wire   [10:0] empty_46_fu_150_p2;
wire    ap_loop_init;
reg   [10:0] ap_sig_allocacmp_loop_index3_load;
wire   [7:0] tmp_s_fu_160_p4;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_done_reg = 1'b0;
end

fft_mux_42_32_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .din2_WIDTH( 32 ),
    .din3_WIDTH( 32 ),
    .din4_WIDTH( 2 ),
    .dout_WIDTH( 32 ))
mux_42_32_1_1_U655(
    .din0(OUT_R_o_0_q0),
    .din1(OUT_R_o_1_q0),
    .din2(OUT_R_o_2_q0),
    .din3(OUT_R_o_3_q0),
    .din4(empty_47_reg_221),
    .dout(tmp_fu_188_p6)
);

fft_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter1_stage0)) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((exitcond107_fu_144_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            loop_index3_fu_62 <= empty_46_fu_150_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            loop_index3_fu_62 <= 11'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        exitcond107_reg_217 <= exitcond107_fu_144_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond107_fu_144_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        empty_47_reg_221 <= empty_47_fu_156_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (exitcond107_reg_217 == 1'd0))) begin
        tmp_reg_251 <= tmp_fu_188_p6;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        OUT_R_o_0_ce0 = 1'b1;
    end else begin
        OUT_R_o_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        OUT_R_o_1_ce0 = 1'b1;
    end else begin
        OUT_R_o_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        OUT_R_o_2_ce0 = 1'b1;
    end else begin
        OUT_R_o_2_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        OUT_R_o_3_ce0 = 1'b1;
    end else begin
        OUT_R_o_3_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond107_fu_144_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (exitcond107_reg_217 == 1'd1))) begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_loop_index3_load = 11'd0;
    end else begin
        ap_sig_allocacmp_loop_index3_load = loop_index3_fu_62;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        m_axi_output_1_WVALID = 1'b1;
    end else begin
        m_axi_output_1_WVALID = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        output_1_blk_n_W = m_axi_output_1_WREADY;
    end else begin
        output_1_blk_n_W = 1'b1;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign OUT_R_o_0_address0 = p_cast3_fu_170_p1;

assign OUT_R_o_1_address0 = p_cast3_fu_170_p1;

assign OUT_R_o_2_address0 = p_cast3_fu_170_p1;

assign OUT_R_o_3_address0 = p_cast3_fu_170_p1;

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((m_axi_output_1_WREADY == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((m_axi_output_1_WREADY == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1));
end

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign empty_46_fu_150_p2 = (ap_sig_allocacmp_loop_index3_load + 11'd1);

assign empty_47_fu_156_p1 = ap_sig_allocacmp_loop_index3_load[1:0];

assign exitcond107_fu_144_p2 = ((ap_sig_allocacmp_loop_index3_load == 11'd1024) ? 1'b1 : 1'b0);

assign m_axi_output_1_ARADDR = 64'd0;

assign m_axi_output_1_ARBURST = 2'd0;

assign m_axi_output_1_ARCACHE = 4'd0;

assign m_axi_output_1_ARID = 1'd0;

assign m_axi_output_1_ARLEN = 32'd0;

assign m_axi_output_1_ARLOCK = 2'd0;

assign m_axi_output_1_ARPROT = 3'd0;

assign m_axi_output_1_ARQOS = 4'd0;

assign m_axi_output_1_ARREGION = 4'd0;

assign m_axi_output_1_ARSIZE = 3'd0;

assign m_axi_output_1_ARUSER = 1'd0;

assign m_axi_output_1_ARVALID = 1'b0;

assign m_axi_output_1_AWADDR = 64'd0;

assign m_axi_output_1_AWBURST = 2'd0;

assign m_axi_output_1_AWCACHE = 4'd0;

assign m_axi_output_1_AWID = 1'd0;

assign m_axi_output_1_AWLEN = 32'd0;

assign m_axi_output_1_AWLOCK = 2'd0;

assign m_axi_output_1_AWPROT = 3'd0;

assign m_axi_output_1_AWQOS = 4'd0;

assign m_axi_output_1_AWREGION = 4'd0;

assign m_axi_output_1_AWSIZE = 3'd0;

assign m_axi_output_1_AWUSER = 1'd0;

assign m_axi_output_1_AWVALID = 1'b0;

assign m_axi_output_1_BREADY = 1'b0;

assign m_axi_output_1_RREADY = 1'b0;

assign m_axi_output_1_WDATA = tmp_reg_251;

assign m_axi_output_1_WID = 1'd0;

assign m_axi_output_1_WLAST = 1'b0;

assign m_axi_output_1_WSTRB = 4'd15;

assign m_axi_output_1_WUSER = 1'd0;

assign p_cast3_fu_170_p1 = tmp_s_fu_160_p4;

assign tmp_s_fu_160_p4 = {{ap_sig_allocacmp_loop_index3_load[9:2]}};

endmodule //fft_fft_Pipeline_3
