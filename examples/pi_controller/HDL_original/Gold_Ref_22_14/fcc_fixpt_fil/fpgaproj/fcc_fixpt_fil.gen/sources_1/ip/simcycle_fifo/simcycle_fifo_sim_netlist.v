// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Mon Dec  1 15:48:01 2025
// Host        : DESKTOP-2HRT285 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/llillo/Desktop/cosas_ordenadas/uni/memoria/fcc/HDL_original/Gold_Ref_22_14/fcc_fixpt_fil/fpgaproj/fcc_fixpt_fil.gen/sources_1/ip/simcycle_fifo/simcycle_fifo_sim_netlist.v
// Design      : simcycle_fifo
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "simcycle_fifo,fifo_generator_v13_2_8,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_8,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module simcycle_fifo
   (rst,
    wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty,
    wr_rst_busy,
    rd_rst_busy);
  input rst;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME write_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input wr_clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME read_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input rd_clk;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [15:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [15:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  output wr_rst_busy;
  output rd_rst_busy;

  wire [15:0]din;
  wire [15:0]dout;
  wire empty;
  wire full;
  wire rd_clk;
  wire rd_en;
  wire rd_rst_busy;
  wire rst;
  wire wr_clk;
  wire wr_en;
  wire wr_rst_busy;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_almost_full_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_prog_full_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_valid_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [3:0]NLW_U0_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [3:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [3:0]NLW_U0_wr_data_count_UNCONNECTED;

  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "0" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "4" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "16" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "16" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "1" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_FULL_FLAGS_RST_VAL = "1" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "2" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "1" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "1" *) 
  (* C_PRELOAD_REGS = "0" *) 
  (* C_PRIM_FIFO_TYPE = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "13" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "12" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "4" *) 
  (* C_RD_DEPTH = "16" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "4" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "4" *) 
  (* C_WR_DEPTH = "16" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "4" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  simcycle_fifo_fifo_generator_v13_2_8 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(1'b0),
        .data_count(NLW_U0_data_count_UNCONNECTED[3:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(rd_clk),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[3:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(rd_rst_busy),
        .rst(rst),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(NLW_U0_valid_UNCONNECTED),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(wr_clk),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[3:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(wr_rst_busy));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "4" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module simcycle_fifo_xpm_cdc_gray
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [3:0]src_in_bin;
  input dest_clk;
  output [3:0]dest_out_bin;

  wire [3:0]async_path;
  wire [2:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[1] ;
  wire [3:0]dest_out_bin;
  wire [2:0]gray_enc;
  wire src_clk;
  wire [3:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [3]),
        .I3(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[3]),
        .Q(async_path[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "4" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module simcycle_fifo_xpm_cdc_gray__2
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [3:0]src_in_bin;
  input dest_clk;
  output [3:0]dest_out_bin;

  wire [3:0]async_path;
  wire [2:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[1] ;
  wire [3:0]dest_out_bin;
  wire [2:0]gray_enc;
  wire src_clk;
  wire [3:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [3]),
        .I3(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[3]),
        .Q(async_path[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SINGLE" *) 
module simcycle_fifo_xpm_cdc_single
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [4:0]syncstages_ff;

  assign dest_out = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SINGLE" *) 
module simcycle_fifo_xpm_cdc_single__2
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [4:0]syncstages_ff;

  assign dest_out = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b1" *) (* DEST_SYNC_FF = "5" *) (* INIT = "1" *) 
(* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "SYNC_RST" *) 
module simcycle_fifo_xpm_cdc_sync_rst
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [4:0]syncstages_ff;

  assign dest_rst = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b1" *) (* DEST_SYNC_FF = "5" *) (* INIT = "1" *) 
(* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "SYNC_RST" *) 
module simcycle_fifo_xpm_cdc_sync_rst__2
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [4:0]syncstages_ff;

  assign dest_rst = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
aMT3usC6uizzcwnzOCX4OsS16Ob+YxFcsGovFpFklbnaIaD1S0lVdxenTwHPp6ByIEi+ehwr6Rgg
z/3AlTheI5NFTM8ihiMA18/wmUxI7EbaftJACA1LykUKCuj5myy0T+DACuv3sGYIZS38TZTZnnBC
FGAlvTZmRWs+JzneH3o=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lR9ZerhYSAb39nzEkeYvhnwEs5t9y/+yTDf8KuoUtR1BGeHZq8pA/YxtjzQLtaOW1R1IQUb0FtSI
e3CYAb7WHYbIjcpw3vKHvW1SqcGn9CMGa556CYKmD2oF12Kow8xRaFvMSBUVxX7HsHxNWnRd+PU1
+C0YayU2KFIY/7Yl6cZ5luAzhw/6SW3PFYUIyyqWy5MCIXweHOwQR2IpQEdlDur5nluN7i7BeB+i
fxwwHh8TU/g7T4mhZFkiTuBKdLAtQOjxWxzqTMxgcuAjlTylY16FgMFOASdvvSbqBZJjbxMdVloU
rYjS8O/8rWktv8GXcaIdBJ2BRj01q7jsChsbwA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Qvl63GHz9mq2xOB7elt/vAQ7URLGdD1Lkcz7f3Wtw31dwjjjbP62Ny/Jr6OmBIheWlgejx38qxAT
TrHiiEyjKmGcnPn1Tn2n+cH4RAxCbOFnCI9n6+YsYMTe9JkplGhGGr39SkFgJz0I2IKpPsuqTjCj
rhf49TAryNMQeRpREJA=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
MA+9Ro+dh339m0iZrkKbqTKN8gQ5xkxN/SPCfhkOn+5jjgCTS5IOKLHil+HsZDjX333ebxnornwG
MOBxyEdFfLM8SA+bs2r41J/j0af2VVMmCM3hOh8JmZxB4X9Jg/glegNCbvwzqxMbOQNEy+zt7j5t
TFVD82RtPFmYVVYZZyll/WvAA+0aVpyjzLCIM1GznFky0RWLv65Wp4MJJnNRRrtG3muMznVO/u2s
tACsJ9jzv9M0IlMYjYH9BixhG6cZX02I4LEXXaPkhdOINlMMhsbArXtc9NphzmS4bY1/1yF1D6YD
EKLyS2Sr3HDl0O/lefN+jvfG8iKuVl55PNNrVQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
wpMTg7STjFkUDhOqdNPa0FHXTnHQgKmhvqDv+rRVBvMiQ8O7u8oj7ibITq3o+jugJsMJ60B410gQ
JFTcqCJKYmYJvqi8rPLLOYDmFG6ZLP/Ixr3n62IyIaCeDltBahi3yV009QN0X+iuzuFCL+Y7g9ff
IvAgyBly+Z3Itv2H9EJMZPMl17Sa7IkgjmWqzVXIKNMKn0iDVYsQw6ZgzQDYQ8N8IvTIEggU3/lh
6Nf0hV0ev3qOv/2P+4w0U766Ux3yLuzPJSI7bKm3/ip9NjhOytxOiKKqVXhKG8dzbbuS5u3EE/eq
q6YxkL7gpvNltVqqBnJB6vHSyWrD6+MqsCtR9A==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Q7Q4SSp70lxFryaopuic9VVP/Ire0pSsPEIMYdURBAczC7ShkuYeV02U7L3BlAiyBE4vBKcwYSQd
cWiaj8sVP7q4kxoRHKxLV1R5PIO6l4DsLWE2E+1MLyUPME0w5KTular/oX8EPCJ5n/8VCtW7x4Vf
dpeyki1/IAPJkAyi3zVZKHzgKhEwnZaZZtZYuMWoPZMt4V38sAcE42Raf+7yfFWG5HO74JY6iEnW
gJeRk58K+avB/XLF2/j2RQZfjTYizrprT2tUMBK6e7DRWZZtk8AOcsMhUikev44IFGNbNXjP8BXC
0J3y3P7pCFT6l+saU83nRwi/H25fSA34diJtNw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
a/8ooC+s+6nfvfa1+oBhsvYWLJjFgp83DI1kNyOi5Am+ugPbGRmgGZudfyo6yw6Yd5gGbLm5aToQ
5G4cGF5HaXD5TU6A0ZZFMTIbzFLE76JMjjIxX8JcaJIZpSmrXqlru8l5gDINUEAmwUY3mRQnjcGJ
0Z+kMRH8iAEF+gEviPiFZSBbJeOPqivIS217kimQJX3BeNbNPQTP+GUidcRywpGMh5avxtA0kDRO
F9SoCSyTm9hr2v9hsK1IUAYQLb7n2/R+z5YNKNzt1oN4qgJH1wZfdI8if2K8+ohyOdnxrrgJOWdj
cOqr7cGqEOYfBMTIQeHVZzb7NGWVN+9B8XSUaQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
FLPvOUNRWNW2GU+FEGmt2XWthOT5bY/31DRbol2cUmEGNF6b2XzpCosNKGx/o2n6sQvGP39KRFCs
nJu0ihe2dUGee9nEZZUcpwPjnEfXVI3yJaRVYy8iL+rm59lXq0jX4sjAPieDvv8shgAnoXLTZGlq
K+2c1JhaHt+nFi27TDrYar/+P8nP1MhocOS7BjzCvSs0foEXj92/qD+71Sm/LqGr8cjlH2qTJJ8B
ynxoH6iT+bksVA2VbtPT9o6h1kJ/zwP4wcsL9l+qSlJhd4GI11JPux26DlNyIi41WmufQcfiT0PB
r6O9+0E9lV9ODwKdjaxfZRK29rjKeq2yr0jWhMV38XKKqHAJli7MIypGRXcCo+u89H87KgYt+ebw
s3foIqCe0JKR57WzI8VD6XdNtOL8eBxK539oemx4vkE0cGYECZKYru6A2hPeZOYDD5eyWSUlQl1R
EciK49WM8HnssyRVcmE6di6bISMbVi0TZG/v98bz+9UZa8DtqMVYH0tz

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
fphquQOeFuqByo36Gh2C1zEC1J6u9swSMbMzsKldIvLm+SZ6/hr/N8KJ/G2vBABzX6UtbVuP1ZXx
AxdftP4Aqis1B3Bs6989aQG9eo0SOHA7r6aFLtFb3qoD5Pvqw4aVNU4z4EtTpFpn/jCWD21lKROf
q5X32HRfFq1jwqod+9vIbUNRRzz5y9VHvXfacZlxDazSPmcCF4hxB1KqWqT44KmYVkDedgkgnYgb
ZGidHnTb3W7C8tSqC9ac4kNJCL429QndtddweESJNlpX+65pt9Irok9pkOodwoj0QScswOIFjhBZ
/GrzZLQcFWiD3gXRU4DazzxQnGdRH4qEIRWziw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
1lUYYHPCt1BUJOvcBbgMU2GSQiqfxItz4ntieMaenjrtsE9SLwaU6xB0tBl8Atw5yP/RRNww1kX/
9uZbTz5He3r9mPVt+mGxB4N3f9BbCrQRb4USVPgKO/+vWUfMQERGklScy0+fz75WuxH74CjRUoDI
8iyssb2cUNnfDe13jIoI8gM1w4w/Pkxkmb6Mef53QMxacHAWEZeytcH3fuL/adO263D8P90U3XJv
vBXJmbjkRVi9qzjBzfMxuOy2KbZaZgR3BLzaffIfFnMwg/Rb8sGls5pQsZv5jL2wk3+Bj3OXBYdd
pDyjGoalJBzObKzd/t15kNHwY4FXYFcZLQPncw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YRmSEzaa2WFVvMH1BwWc1TIUpVbzSEIP0VbI6n0sEgct/X4PiTfMQmK1jBVCaISIzwBxscKQwZOt
mb/nmINGg6I7ih39LSbBMtx6cdCUiyaLkPeRbqfyPpKhvnUIFmdKVvTd1dYzxeOeuDnhSVaBaAcN
3lngSg7lIbmhLIGjC29yQrBTiLArbVZi6IRGronMK51e3UrYa6GspsznhiuRcXjEb4bHKrJ2CM5Z
BUwA+E9949sQgyOagFZbLVle2ESbwBaoxcAPn2gxfRHlT0leqyLgUGDZLsfArzGzw9BTGzyEG2TR
XOrKFNYRfMXMrnGsBM7acIelY4LdAMgsKgDH/A==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 99792)
`pragma protect data_block
gJ+BoOjNGw6Q+cvSrBxDGLJ6ONwThQDKao3YPVpFXyBCd51rNqrBWt0lfYr2FnOSajRuD4mEikIo
EJ0Tl72Esp76oP2Jaz2b/t72hGEUNpizT/eQdumM4geBHSfhow7znegmYMm/Y7gzxIfMbgPliLt0
1QVs/rdu1c7yEk9AIiwDEBGc9eZVPoE+VYHTvXIqVMjEEC3NoIgkRlnTfsNH+ZCm3ujmTl9iuXvh
zgS1CRV38vbOhaGj3MFrxAWR+mWvQqLO+hln2i7qsP5iWJwDebx/NcPBJt37ig2Sbe7DjE3w5cre
ZOuGa9m5QmAOHSA0h7BFHyqKpDZmun8GpPlg9fil7CFpurSL5aU0S6dGmBLN80YHyK5at8+ooOHO
fS23HMK4lj+vLub+i+cHZf5Qfryo+RnqAIgl6P0DpIxlijAxnuPSQGQ04Brhe69WgIhiZIa8co5F
/JtZCWrRMq+X/KZa+rCGPF5iIs2LQUPoEsSXBD7bsVaULK3FtMBn0AILb3ZJrc+QrZhq5Jxkc/ys
tC9R6VbxJmz8UwUZYWrojHO2HgL4lsQ0LCmxrXbS+384LAhBttsKxOUVpVCNeN4hTQmWcMv6mRPy
FUjp+TANYF+UHSFYTnZ+Men/3c3EMSAVVMFOipQp9bhnfyk6NdfQKoMJ5r4eaxcfQXwXQuiOSCeR
oPsWBN6A4YIYBm0f3svRUTij3c7tsDwedI21X0Bt2hs18vgo5se+Vx6LLTlRr0hCPcdidI29/do1
Vyqr89MXh7WQ36xAQfhjZokVF1k6r2wgD6uNFlbLgexGPwOR/kYVvdGSlET3kxBKFVaRtZgoAX3A
cZeX7zoZxwBl7M5+5XjsMsGpRtqpPctylk3ZGBlB4CYGVG+/+Y/eELzL8sBMQk5DE8bYWzVi+1jP
km5kgM/Baz3F1avUmYhsaoCdiurVOc1yTxEsEp6w2OrINy5tzbBdgkxGkCxNx4nSSlJAXaCPFdg8
v7HNEEYQRAQm5ARhm5IpXz51AZsMNMakNxYmWXUYhbYIJcteCjeyPch65ua8qga3V6COViRoJT+4
2LnBN65hHsyYnskX9MBOWCFM0zawbukoj7/xtFaSQxJOfjnv2GAiQEMUneJhBnTk4IOTsQ+N3zb/
LM46/gmWL+XxpUG2FmhPKWk4DMRfsC8H4WAgzJg0bTBLg2fvLYYIsGKgjdlRApS6+HAtICyE+WKF
f844o4GGhto4NsGb4lUpTVPIzrFCKcO9ayW+J1SSmbVeyO2XjGn3YEVLoDP2RddGncO049eZzP1h
Kfh+YF04LgsNVaPipCDoCeoHV9imY3xSWrLduR7z2OeXhvirJnsebobyxjqk7UUM4t366azfB8ei
ZwX2aA+PiGFupHAWT22jcnWNfA+NrdiSuD8WbaUfelLjUxg6bBs+L/JKJGZsX7rKpO9iNjrykZR9
vKZaGmsULIwl8PDCilO9or78ZM353Znw+w/354JOHa9je5rMz+h1xO6dJafchgN0x4Onc+vGcZlt
7crjCuV8FOGYR1S/RQ6Ao+vhAX9mjELRPLIPhQu+VTtWd9RFYZm0U6L8yWi58+B6V+JSwglUQNzh
ySGyAelI5xUhSaf2Z+glXG6+pXFzrgDyMOGR/RwHULtaJ0f8kI+NMtnadGW79JqMkHTE2DQj77NQ
IHjKldJdfVyWoMqB95fhwECgmV3u1iPq9CzIMpbESG+FHhY2VgtPi3JkFGVB/qxqdao1dgxhamC3
aPcgQX9xE7qk5Cwds6Mi3ZaBgw1oTpmst53gNx75go54acxb1CiVTnRVk9FolQJFuD0Wq5q6GLtv
WHvCpjzYI3u1jPu326tsvxjBXnFHWKXyHdvkLhJNql3uY+fR3sRn6e/D2Ui5y/u0jGLqM4fXcGdU
ILRpCL+ZTo9WdSHniqyXg4qK/a0Z4v7mYDyETjNI43m3GNB6B3F7RR9vLQwE06w3Y98xX8Yh/lz6
iFGW3S9W/37wNNYNvXJujSfn57mZUQDj6jq2RAtiNgAZw8Ldzb8RpEL2yvVohrNCAFZxjf6WHnPa
oB5jknTbQgtrRdj+DolWZOXUeh6VoMC/KHDQIc8VNvE2TkMNo7TTaz0qqGo0eshvbxNepGKT13aW
oEzo//lzY3VheMGaYEnd254o81kN0pKRIGOKCeh/Lw3l3h4ryqRn/tDVhrqPSDNi541dYny1G51l
jv+6+p+lFLG3caLpWMvhZsdVE1QitRg6NvX31I7+i6U3UVaRDWEvjQQT5hb9GFj4t7m4zC+4vQu+
uXRHGLCP7Lqf6Owg7f4jTNO1E82ls+k/r3FCc5ILh9e2SmTrXQpXo6WG9a3kUT3QawI+W6xxxprs
L9R38NwiWeYRhdOb1cgvdC/PIr1hs7qm49nhBem0beGiqwqIHsG/gcDucdEUrZc4tnfcWj3fSUI0
jqzGj26fKgfpOn1Di6bknT3pjJAOsjjPLVUM8qrGb1eVS8ReGgeT4i9JYa7Cp1JmgliqTzswgdfl
IB7K4nHOtz0F4rOiGaFDI1UJX7QN0OSxHRiib0vEjAvuN2b23lfGGw+Yhpi3fWIHxHksjteDKnAj
fM5+itAqGRsor09LAfpRqn10ecZLeikLrp1c5cJFyafsI5zF1ZTTfX3Z0lB82SZJPbSEwOvVTRjR
t+Qinyf/LXpR/pi1125L8+LpgM97wTY28+WeBvxfQkyQ23sxNQGM0ca75qNV7+YoVN/ZdIYOPe5x
IdniJDxXd3/RUgK8X0VtRn8wxl3HZfDvxyTdKi+TBgzRR6MZCkYhZEC1atdtlcy7TaKBDtsGQNgV
/9cPf2dnRI7A2NWAFT001rmIYF2KJszMYyIqWfm9ot4ct8m/NQe+VajfpJOlH2b1U5aCJUMc2AHV
N/smJMbnoBlHUQmenAHRo7CZsWrcnrpws+PFbVFnXRvDm3xzFm7BYcaLEVt2qk2D5pKnON90SMqA
dHaEKg4ftnlcqQbNkOIrRuuq2UL8t3N8ibNoGylpkl05PD7UOg6bY+qJEzz0YRQcbFgmbgKBp/L+
FkNrZBETJKicCl4UG0117z9XALHB1css9kShJIv5bq7xxYnVQMvAYhaqf2Fh20IEn9TCGE4lnvJE
uV7K96FM4rTjpo2Iwb2+8OdyjlJcickHfM9eA4RFgBFP0/RHuUwMy0MnlF55oQLhGtwRA/hva2hI
1ipl12tM62SJuGGo9ZadfpyRAtdnFolTXqNpISryrWji3bCSex8wzq35QvkkEvRUmvX0ZKYQiJGb
36qKKX1wcvfuHIPL0Ayr7rMEq/ErJBIucroiq4QJ3sKF/khaYwZtg6V+1Y0KI6FMQcjoxzCiQ3Dd
WteEJQmHvK7wr6682RHRBc47ZfGnd/pdqJ+xvgR7W79TN+sdwY18EkyZiq8FtJjkcAEbHoNo7gm7
tZcxkaDh52aiL5hcmbVEB99ljCk+CV04pbGAexJC7umlXDdpCrPOw39xj9kY1+1t/ywx6OWqoJhu
vsxWcA+pXWYy7/GG+FrJ9FbjAm+L7pitciWiSx1l1Q50pmAV6XtJXEfMZH9SScRDW+nq2xjfvtzA
2aXUBy9Pm0UBDpL6Ns0qQ65+ZERS9RqHg5l1QkZlRBkyE8AtHabSiFIjSloE9QHUQ+Pk171i6Xxj
m6lFLkVsFziNcjUW4C2C86uT079nbo2bTHMkVsZFgk4ajWao3sT5l3PqmIM5iNGAXV3vHzeIn1JW
WZ6iaBth8gIkjB9GNqDLw9ttHtSecdMynMwbHLlGsm5fCPzPgKq5t4706BsN8wW1xg6Iy+BezkjB
4yQF5tFq9FqU/uWPDNGwfGjSq2j+LKhU/nI/y/HWmdRgMieRI9Mn3n+f/9kazLwubHkFWRJHfUQx
KN525rctVFceHR5yJoyEn3BRU2CpNzfUzmnkJkHoBqYsNzpuwTO88azV0yE+MEXn4WhAexAkQG1F
9FqNI1qeiR8RVmQBCK6KVOOERBe6lfO0DwYFi5C9eB0DMVWvTLsRMic/otkVyX+VsXEcLHZEWG+P
0RRLCa1oRwChNmLkzrmXuODMSrlqLYSpwFw6pSfv5ss3qPe6YKBIY2afTWC0LrMKSRWTzxed6eyS
28Is8J0ncvC99FI87VlZ5NOllSYXoUvjgGjmeSjBNta2wLLIr/F64O/2J2Hvh+XYZLT/jmT+JIac
sKEiUppAIZ/T+WYJge6/h28jlh28H0YsVRkpECueeSpEsUcyq/tj14djie8tyRWPtuZ7XGqGmLuQ
m/zWZnhUlPdR1qzKS+UlNvwOh7IyQlC4fr0GY38m4gpP+RC36IFjP/y0X+8B6/irU01TFV19+Frs
KWxEe53SGNoSYZH8qTpHL0eodbQJD5FVzAzKBlMDJ2jmexpG9TkGAK8ya4P8n6tSBLvs5W3SGeCY
5PTXfw0xhLTN05NGHT0qiCNaivC62n14SodCSXx68ZPkCwOQHYS24tsKd95ed7TZGlENaAz6d2wt
Nw+9VbhATd75SMU5H01H97SRqsSvvTQwLbACWsuvSAaqT0jqBnA2vihSWpUa8PPzlzgsaRA3edmm
WJ9srRaPOi744FDqo3PprNVEG3lqXY/O39VU1eQqqnp9C/2ff7uBnS2sy3V6IQaNhwzrMiLZBBnj
6E5oOuEJAsL17xMsY6MyARPDdZprMtC4ps+yHqTlZBKrr61XEdB3wRLKlsBx1/80VMwVopDaOmMC
8MMcRYdhOrlNfaKz84N9Eqo8k+WjujqICq07MjYwYsit7tIma3RVV1Lq/EYcrZf81f+G1LQYxjhU
flJniBlfioiil0ECqZZ2egWrSU/vRo5Glc4kpDpUZJGnZuGACk5lJBIYEaeXVn54MtxPQrzqQr44
amLPCgKD4yuEcUfBlAfgtucYcC2mbfkQoLRPjxeL+FLRZ5DW6ijMPal9ren7asONU3gmlVtV+j+n
Ok6F4If5+ACT/scrGJ9qn1ifQvrvvdpUHf2Z2kXtLbqOa4T0kajvtXXo6b9FdT6q33QsIGVLwjtG
UDkD3Rz2kKdSbqYKugNKGmN4fxTMa8oYC7KF8SDUbasPlwM/VU3jz88Iyk1NVtKM9RN/GNSrgCCi
yApBOej91lLHpQg25v/jvAZs4bjeccGt6ZIhfqrqzNo75ko6R0yVWe4T7fxYsXvksNXbM5ZqDdKs
Llheszx21zs8zfmpadnSlRYTqELefTIX5hykbMpyf22JyIaOVz8OzAOHWj8XRYqDT5wbAKZs2/qs
jSNxLQJMEdgPPyi58dp0ej45FwD6yBunbwL97aYPX83nhQInUPsgD5UQRIjgHEqEp/JMiLKp8WY6
HdlcwYVZ81OdtRjqiHrbbg2PqZjnrYdh+7d69GYHIk79TN3/ZpZyx22Xly5jixqTWHnK5QRVzTP3
4EMCD+pyxsS0zSdqTyHsDFHaB3a1mtE771wtwEw1wuHUHOuIiNxCr8taf6pfj9EBARpG8yAjhnmQ
6PaAod7GWFCNlIgzijLWcR4T6CS3dO+KWwIoexqjdoPYZj99EN64lSPGYjkn9mU3qoIyEN1Ih0im
1QZROMrOmW87nGfvpmiZxlwXE3zg/Spz8bDNmcwy6LvPgFmn6odAk9jIJeeXPzC81IpMHrFakpL+
kZ7INEfCmwO5q2B1N9sbGL+p5n9niHd03vF4fcWXfP9/1loh8WKh5O/Xfys1ABz20mbeJ4j/4dBh
/tYv6TSeDgHan97YM+Xawatbo85BI6x/NNzP8gkeg1+NZS86hZlVi47ImGgqjIYATKlgxk5fmeQk
qYJriIABlLBbdBDJ5pm/yL5lfe2Mn+7JsN86KdquhTfu3VnxhiY1neGgNjcR9Vu4HLMzKzflLXb8
cByXy75UF/JRCLX5x5HHcSN9CdfkhFD8n5J2fOGEqhe8AAw3Irp1+XNoX2el3bapPKPfo9z8zkpb
5JbAo1bMl2ruauXpH+yZs6vvvJdq+hMmbCxD6668p9IeuG8LGvK1CCR9rG5ywei3xrkQhOIzwG/R
dkxxDdpJll9BV8J4D51Tgr4wrSG9Tdnf9TIzW8VBu0qHWDZtRW70OamauSir4y0qi9Iu6UBoq8AI
c/nlP1h4tVHiuD7gZHNnW/DU5TdNz/olN6JV0qjtvx/wpF0kjhQM1RcPWvVnkYXUlNYU4S7BgasJ
M/UGngPWzE0p+EVxhI9dzceuk+qiEGnsia5XZSkEJW31nh76BIdgpoRwu1RfMX2IUrQy2yxth0cw
U7R1Ih1XZCQcmAvkj8HVe/IcCDHpuPHGjfmhDI0F8ZP+Wf/0d413pcRHWENgY3bgM0yEECkpuFVt
MoDL/kPDxThwjkUS0FbG2jm3osUUCBzCCn0QAZvh6oOgNmAze0vkArKggaWWB2dsGjoB9yKZ9Jfm
aj/0V2u8aQLaDxLthrmkZCi2HMAKALnJTkbveKThi9PD13NjZfI0mQMS0189uYygC6+KBB0an/pJ
UxPopyRMHar85P17/9Vpw2w9BEZ+exzy8ycqqReWeAYtzyOEHujVXHX13Er5WRI1fRcCENFk5x73
x+hh52M3FGiYE5Teot+7OLuusBgpuQ0RAs/DyafUxUEnkxut46xpC7q2DLhL3HfHDtezhNip+RKV
TFgjUu967MkHdMsZj4WeW96uETI+OBV8P1cVlFEib5SfAIiZi0FKcEc1ueV6sBDa789AUmMfUStA
YHoS+3DxbseAhekeb0WY/4cIyjeot/MbVYFhoT08CS2hBwoF1CXnlZW2ODaAE0f0T+sXRx7DrFov
pbID5rkap2WktK4YPRTKaSQ5UPmvKgkkgccKS188KopOr6YwvZwY4OPCZEc/x8a7da38mcAX9DKi
ZEIQ19k0oFEX1CFVqgeb8sUb3Y+0rDwRNsIHJHethkESChhThtWIe0+WnGZ5KyR0dUmtdec2yZml
WWJ9DbMU7Tyr7OAy4EmHFEd++fBvWnT1qTQjxqEf17lyrTRkNzwWiYgT2TmbRKhptFnipzuMSNWA
k7OsnpS0YVfSr3LMV5KZbBmmOlag1/5fHApjAAMQd/1k4QsKa5JID3uTcEEvmCg1iaK40kHZxG+z
HPrZMzG8m5KiRZtujfXaKlAw2oOyAtXqhR+Opc3hg7PhbPxkoc9lM9IYFpOMoaUYY4cTlI+aDM4O
HypCc9lKC8hHL3N0zcDXx1v+5KYZh4nZYtwGRN9mZLxXB8/GPxIMEv1+BlxxuNQM0k0Dwk4vCXPY
9UpwKIGLnzY1B6rwgigGflsGa+XPP12r54A9QxW+37+bIaiF1NsIJnOlBu8WRyu0RkaB4xtsxh3d
lYSUANhJbvPVQP11BB1tnaxT+bC4YU/n+vduDPUA0yPVmGWK4UiIKYzVvqtIMIrcIHV0vZXePmW3
nJMB1YKG27cY0Gs858p8WcZWNJLZCufezczfKQEstAdTqp7YIo0035lN8DneZyQaQk/qXqkPMyjH
I/+6nAvqpD2+4HwqQe92WpMBjq237roRleIEWdJ6++VVCXm9l/A0FcV4+ZLdEGWA/mb7/JLTr05F
2Im1azV6zLG3ZUpVCGHDEXKp/Lr82lhYVncJUzWR1KxAu1vb31xClfz1h2+7LK7AGR3lTDAGTUHd
NknYaIwnI4v4rDpF4SbtONjLLxpGsVnSCig6JNupjJM3XslCzq1Rx45zKZxlG9yI3q4vLkveib4n
HmchaWWE4VUN70qHlvSfc2LfQ71Qt4GgVdz6uU1f0wI0XSjD8lfqdAnRZ8TWd5QeI38TySHGaeag
fI8SHzNfHxEdc8gRh2F9W6E+HP4wp6dMhO0kAVHT7RiRlKKBY51v8nmcumuU5okAipN5y12I+v+M
y8iulef/pVfU1LjiN1w2LIS0CfILhanTSYWbmp1YAr1i4Lc6qO6BKvB6zv0lDMkbEdrkup97/Nml
HX16gwmb//yF68kWyf8o4D/PJYa1UuBuYmRMLaW4Z9ivo/b3eEAau704rJdmduV2ufCncLZ1Ub/a
Pu8WIjA9r8F+dzw9x1rnygUKhR44YmjY0wDE6wiFS3fEi9XxJwxwK/5YItTNn3klwyHynNPwIsCt
EayKBnlmRtkT8w6KtIuwgfxpz8vtd1vJ26YDkw1BVUePilosr7M4P4UNxwJSVkfmX0ekHLp6B//O
K/y0HYuMOkM0cm5UabqN25QXSKqcgvYvpHCRzFhzRcz234vyBDMgCiNvNSXMhqF/nmUymTw1rse+
4sGDtecGxqZunmvKz/nF66A7xJxSHDOnhsnN50/S97E1YDeBROO4vI8iCARGplLeqBb23RwQEwZx
caIWWBOksgefaS9tWBpz+3vApNi1qF3j5ViCtiZoGcVekcA32NpNAKigZTXpxH3ORLvZPL18wIlS
T2cgIyZCOZUnicnyyqvjza/5ot3vxzTy9ihbKht4+aOr1ZUtj2m1iEL379bKTBcEpICAizkO55dr
ogLCRHobDXJMaLscWQzNnewFUkFfEeS8E9xrVkugeSSsZw9npmWklZ0aTCSEZU7RI2e+2iXoTxaH
i3Q8DHrtbute9pqMPiWrlpLdRxdhp0VYBNETkKJCiw70XgWkZU825kS3VTQnlLBdwvVHAlZ9C3NL
XFMgGP0DsQcBUxrnFvAayBHYOMv7A8aDGfbQn/wrBSz2VTBQC9p3PyKbqHsQQGY4pO8LIxGO7gnm
hV7YSOZxyNWwWX4qiCcNyeyQRLtI6f4Dl5sqOBgbKpxIiknBK8eTfki6Udaoy8sKEzx+4JUYwjtT
dtEb90WRvcm4odoue/GJ5hwRxOa4Vt70D9qUcSrmbRBy34lSq4kGh3+h7vIlN90hBE4mIWN3a6J/
OW7ehu1WJeevTq8ukbaaGHIuMY8hs9h8R+E8d9jk+g4Wg0yddCSTwT+mrTs62VZP8gQjwLNdYr/k
BB+MEHcxv33mQyTWa+L+fGGuC+GMxeGzDXc0ktkJqyT91xznGXJP9GxxgGJEVVIb8Ufno8jlZviU
CQOPd4QfHmtwfWKF9s2gONVhLluO+q/mAzsVtmmLzQjA1RKgsAD+3Q8Ijt5STuCKJ/afP5b60wjT
3y4cO/8ue4TmjsIsHsTunGKbEEyvqAOdiKBWUhNN8+715oCgpvhXyQI0I9JxXB0MowF9feO5fiSM
wZlj5t+cOoUzWIbK2Vl69KjvYk6Pe5dwait1BrkqWPWjxiYdTt7NCPVSO7YHdAcDTrWmMuZBPkzk
tEH/q8uLaeoNrjIbTgEeKDHbHk0R9UxqeqhHXUsQq9EiZ6GdwBaMyrpMtOqOHdI1MYlIX1T/4Tbc
3yu2IhUjy8H8H357stadpFERJqJ7acK/Dy76CG1vDBqDfVhNZegpVtxUiEqEVLdW0/ALEChb+Sfb
GOXbz1Ry6oWPzSFR059P3OLbmZ6wasj4aAG8kyUIiSuwKItIuAlRJosm5cd4lcshj3j/GrSlsJwB
RwIWzYQJWqnFKPMFad5bq3nGcW6y9ykbdhvtNBqgSiwpIXtfOt/sIKr7Zr7Zv3PJiTvYeGMHoBXG
AXwQFijyI9R4EU7MDBEW+QSxqq5hWQp90SAkL7ZBknIfnTzLlDFkyiJ24YW6CmO5xWvcsO0LzO9j
TfOPNCE5dsIs/m6vO5ltwbwKBCXqPjKr/q6l6uPKCClFBhq4tNJ+les/XbgwG2lrZ8obY4b+d9oC
5OsWiTu0KmTBc56N7wMFzbP/piA8rESG1wabzF5ToU0w28dCTQfg1w27u5qDl5okc/Ap+33Icpfz
LM9+yXVJh2WDjeEBoUvoXU611oG84VFlRVg9TQfpRWlO9TDryYeLLKjR+Mdk1a9CBVArG4NcS0hv
HXju9YTLAYnaHOTGsc3FmqExuu6bxkT2XW1xNB5PBAm4KQrWF9JC3d7nPWj78dOgHPcKGPQz59JQ
tzVDNptxs6u4m8Gig47RCT+XJjsSzJpgwjUWZCKwbf4sSI7MuhZP470dI5pETd74heD1wHnTqso1
O7czC4jVMnZnxo0x53wX1HNszH8z+Z95ITBQvlc+G4PK/wJCke/B24iFXmSN4RFFKKMKipE6sKfK
+aT2L22JzI+v+ufpVJnuHzOzYxpkPr+vghHWw4EZMmJNPOjnjf+OxPuey3cZCaFDmErEbnJA762Y
ZwKknNTeLuLQuPSrGDdT/vmnJKCexzGxCiLUwb5telkcHLlb8At5JrYdVou3bJnR4vK5SoOkm0wD
S89Q/UerFFviK4CRC5xv3gh1SQNxCy/WqrQJ5O2NPE61Hs4vxAYgZj673HOY735vX4qiQ1ye7bam
ckv2QbMT3bxlQPzpa1KHLVPPZ8ZJb2LwHpCbX9UC0PX3M5iqKlJLdELRRbztaTFmx94vIQNMUfKy
aJYYwXZsRrg00lze2kuWW4bG56p9cpSiXNpGCbPNRiHkjuz2ZEC3zh0hYBMOLbUgjvpkbBoX5WJQ
hAakJXbekuQDodpTuTp1ZTw9a008spdigpg5DxezwDECpZrIxldk2DOS2H4IN+YlA9XoOz7Us6g0
93LKYjcj/patPyzuZ14k4b3SzuknOM9gJN9JpKOEPHi/x/0zjC3gujPvQPLwrpdFV81I75yRbpbW
TjzPcTtESAw/oCjtmkxKHAGaCxDIjQP4G8HlmnJk/+a5qRtbJFO7YjZTBMOSk5Uzs0gw3AkQkuCy
yGIpRIpmIgbS+RWj/6KV6OrmWyYkkRSj/J8HovLmVLOC8VA2z1Lj+J5q1SVzkKM1MAabXVo0h9+g
CvXSR7FGzzaQAF9sb1cBHxdI+mcOQ2IiQyW1E3uV8LFUQaIKDW5IYAKd3Zipqx47joRa9kms5fIz
7R8WM66r67xCphyUvc1wx3ZvJI6ngVqM8w7lbp5yLeL78HiVfOFDd1N89HtZyNmGj5tFhqgssHoQ
plLnu8n4OX3J1VQ730hsRCmtIl6AgyjsRCPXotu+6BDCsMvbsos31f7FKGZA5XoPX6cvasaKNxTd
uvtj0mg5OQIH0xmd7jRLGVjlx676dWvJxhyC5xlogqmH9fUn1YfoBznIBxZhxUJk/JyG154c6WZ6
E0iR/8LDRUi6RLhyH6SFq0+V9gHhqTskpSv5FC4nFObgdxWvXw8L+YKblsq+3KVLBIxScRKjHbDe
onRLdWpstTuXqZ5T9S94+u32FyWgYffJVNtt7KMn2vNSc0QjMHDNXNVuTELt6KfuG922CWHvUr8C
8Gj3m6Z7XdoU8BrxlcavXDKvi/s5Mwj9hY8koewe2OCUIfYvx17Il2z4c7QMPDeOQWTeKhp6Sggu
2qsyiS/yjRyTOMltNXKV3vfpv17CYpRyZL00Sqrzq1lbCccLTmwAwbZxn/xY7OtmLJzzO9co520x
4o+LxEW0v4/LxjsLZ1cDU7MBv6TJFIeMh9TSP7DHW3x8fjLXyynD3aCQms9FdLwrU+RUbpZGKlPG
R3kEjIG8pR5Ota5vzogl/TIjsy5yZKiGqwQqJ2JwQr06ItuCp7AOHsGIrqjW0SF7MOnkvcrGyzI7
AfF5JAI3oKkqgW1EJUbe/Ca1KFn8w5qs5iH7pSBHZy9/SDpNncGrMH1eQuxLWZiRsb9agt3LBXOR
Vcui0d0CU9BOL+eSOettp/AGDB/LwS+m8z3Xymqy/xKnNDUBsOmzWpcDE35bX+YJSTMqfeKzJsaN
CQCrk+cU5SosFPHR5fMqIdEJsCh6mz8/sbmCYgBk+dxqBnxbGi0t6ggm2i/KBclWdyXeveHzMW72
iWfknXJkUqBV2Lrg37BAf1sTX4eDFk8kvlz9hocGitcd9Oi/m68UgPfMvh+fYPoEA4JUhfV7wldc
a5Qtw78s3hlhUWEo7W5nJkJZ/E1c4/c9sEPNkWUbaemNbnjfHUMucFZfYSh+mWgEx+8diNHqBB1K
Np6SWhOXAPs5dOL5tZzLtK4gsntCOqUtyZ1ovPaK5NoJKi1xXxvwA+QM9/nEaQnLT+1+a7gu5q/m
Tcq5HBdki+yCwjYPryc4cZ6dMeOWKIqPrZRZqfIYMshbEq8pNJwC6ubAU/ADYbJMHyfHMiqboLzN
CWRywuR8+j0fuiipL1wX7I5QYdCzX/F1t6U4ScGexMcqB0SF8tg4IfccQHRXPf2c7Y6+IPYNMcE5
/iwQ+l+YjB0ODHhvNlAvU4DEQK9kXnARGEpXO5wkSpZk3gOchrjNsiVEPJv50uNMY14y14LOjigR
31xisB/cNuspxjv7kH1V81q6213s2J4zFGa6ywNqdZDzeAd7Z7tYw8V9oz0cRKl37cOWqXE7cdjJ
jtjZpPBvmiXgZbRGeteWqVn3TSzxVWioOHb6wuwF8L7ank7UvukUrjiC+jQvuHHDNNkkug9mgsCJ
7IKwuEGpxAUKAUCAUWppDBtdpPq5KmNC3bAz+b7pyMN+CMRdz9/6WkT9aBR6ZbGfx3n2rsDEPZlF
7H2LV6vT/FZTjVCxqpRWP9Qh2WWopuIJWIUh3klqTA3EQ1W+A8shTSCqNi9hBahQO5qA7RV32qx0
eszgYstjWmNhnhdT1+mtx/DFEL0q+/fXpSmIJjr557Z4veldZHSfxrmW98MDB0lMwNboliJRU25g
cJCTpJsUmdT7Gq8hw3pUFjoQOC0V9i7rBG7RkxnyrBpEgzo1sOtaG6sJkLeTxGcl5Ncc+wUQ+MZ+
ap9LnTalUDZPVM+fXlhWzwt62AU3bF2daYFzxTglp8s5UuW10lTL6sQoe7YS1RlKhTm2ldACPzuU
ENlcoiIQu83sP0rsCZBWmBReM2fsItrMbxQMONegbg0bx8hyCExG6aSeLB2Dy5taQeFuvPyp+6eT
mEwatUSEqmhff+cOQjvSiuPaXGbhlraRDIrNL5Dd5NTRwLc8ZHl2djpzsA7D0Br8aJ0F870hiIfz
IkI5YoEw/X4zLq4e9Q5vcCiCcrn25fX1wgnW7ghVz4TTWvnnLrqyEsHy+ijLWWds6gLx5lcjEdAR
cpCqiT7I3F01umjVA/jBUc/eQ6V939xjMPudxdc3tPa2qTrVp5Mv32WYgFknZQxG5gxkdGJhLuCS
aM0c4QAIMfioCdLaliHJye2K+P3y4QEPQhVY+0MQK0BGIxsciHi245cAz1n9DkhE9kLx+vPvyZxh
WdnQyhgwuIlPsjVAp+eUDNFiz2IIPqay1ZS6Tlm5aYcohzntsgWtNopzBsSupukd0DkfMCVpIo6i
Kz+WYRVugYaModO9yrkG2tbau9N72zNuYcP63u1LQr0auEDHdEyGXQDvkWDn0A0Ipua6SEPZ844G
wDm3SQh6aYDiMAuqagVSuvtJr1fbNoUiG7sgLlGIJXZFeMefyQmQvUaV7pxLP5+o1oyEhzp3LLEP
wBgmghDvqExBlzX+4cnqbMx8W97AdyswlOf6M9RYzBhRbVMqE3zs8s3CMzbUfRmQYW3xBFWVjEOf
hxXiac8NYEkyxN1AkSnsCa8gKKM7sly95hMtwJS8rakUNcRy6sxhyMIItVVkJAcB0MuOsQl2+NGW
3LI6K/7tAm3UHdbHfpvsqw1XMfRL44cSUcYtV/J1TG+37/qCVWfSK0NvU/khrt6KHZWfILrHD676
Gk4JVcxopdh1jgXeh4M2Utp2M8cklY8mdXYUfMtFckqhi8TzNTsCjr4k4Il0qzlzcKP74bvPjjyj
aumdbFy4DcNAEiL9FDHgpNvhUe4+7JJxgOkG8kTesMJ6kxSgRrYvKp3Psvzn2GLwIJq2RfSagCDK
MVFk6OnrxQaNOQ97JH788Zr9CoPTTpoEKyQejkkYsGT5UotkkSQjpi9QDr/h6jfeLeZdrhQLvMiA
k6wrzRkK7jDc0QH1qOhIsrFr2lC0K+HTTMVdmhhnIxGfYIOhbffDSFcdUkyrGeFbViOec00nJMGO
8awjbVN8lbU0/9HkEHAmmO8OWBnEjUV1CJw2RbKV8wGeOyXa2mOSp1dLzjg9F0CEb/EFiwWRdVsw
atsCRCZy5fYLsevfcKXg6jO4gBgpXXJA2SQxqclIWzsBC4BX194UpZepbWTPakAH1U6wh3LsyJdP
/ZNz8jDJ6ys+jMtznVgdUN2E2ZwY3EknBv1yV4FiqMNap3JLiF3gL9FtjDz/IHQ1P/28/t5WBotc
o3iCuLmOxebYV8QcARxjE9qSs8Bns4duI+lXtWwzQP6rCw57OmnHaGtveOLPyegtJpJ7+bSxWKSH
tB2bFCrB8B/2y9paVUqLfSgDweWkaZrbP6DHSJB8ay1MDjlatmc9Qfd7VDY6zduLcxNWZlqdHG/M
uTQCUpi43PsrG1ORdC/Y7+tpjDICuGcjPqhNHaWBBO7I1wTvEjgv8JlHy6G9QvtXhQL3NjjvDSjo
eC+9hPJugiJAR/SIxzMyd0gnasnK5cdg6RNyke69heb6PjVGR+ybC2fHqLQOLlQ0Indp3SkOzZ2G
KtKOJduHmYUGeEI7ug9CW+CfCDq6W5mQjI/qOUkWfZrLacmNcHQiyXB6M9WAPwXkfPWzNXtOX56d
Lvyfk/UnD6ceILJMs8g/XXD/j+1391X/ONs6vxBARzx9eGJ9VRw0hdLcdNoKb6S62JPuhbsIHyk1
eeFcEU+U8hzEjtzRcyWfGMrUfUow9zNQ07so0eVS1BdRiod5T2zlGKDR9/SoJd1lOhBPLyT1YR9W
Tbb8Vttn1a1fjIfRgDUNacnh2j8alWmIw0dxOC1C9EKa9bzC4uMcM/p31o2GqJAYHP1V4a4e6B9S
wqoFc9BumQWDUD3FhPW6jYBcFQAY/z0ib6423SkUtFXxcp2heEZulEHB+Dc58ss+Kbwitfxnzeo4
fXRt+yeYhdlKnVOm4Fm3gPBjFl0Sxv/DE5VHvkxCaBS7gLqrjrLBdfyeH0cJ08z/r22skRvq+wfR
Z2XjA2adK9jMKjoSWZkz+XRDmJ3g6s/h9d/Fwi0nO2Z37ytPiqF4G7yztH5Am9j00PCwEN+eJffN
4sgvYsVmM95p5Bz2yOH6JrFuMxkt1RPrQ4YsS/qa/fJfjSIep1MlOaVZS7HKhtxBs6ZNnFss96k1
QHPjkoJ8FOL5Ntn5vyD2DMWOFwFvGJbw1BEZcW1nUaWQYN5zHuW1+8+OCJpJJiusgWeQFfuSaslr
UE/tD1Q9lPVQ8SgbKuAAYwqw70vRjTCnwRAg2S0IVtl08Z+tJbiJh4HNkdG33erq76DLoGLTZmHq
uufbQuwvdAD7V/MKlJBJMEarfRqt91BCuJf8rj1pp3HueQGaXMrYkQIQ73WIt5vMC5O8+ir583nA
WAL5ysti5fnMDDG8/v0YBHsOZf5CBk5e3kFuo6RP4KNMzve8jKxf9L4pKsYSUJrNZ7eKWV1yJ6rt
1XrZyUqoqW7Oqcy0wJBuQhvujUIUvEcB48C9dI6s8uCu7vsdtm/ixTvPC4/c7XgbvzDmvCoIRTMb
aSW5VoW6LWlnZA9nohWDODe9uQrU0ATGjHo6HKtKC0PK0wkyFcBzNNNzbln6DyMFw4ZK3yb/yt3g
sBq6/4is5XuDIN2WBz7hjvnFY6BgNoBCVJTqE3cOk4Va4BpdERGWpDu/v4YTp0XhP8PeGPZus79Z
UR+ooKx9nE03ob60iMgsnwRJh/lB80q3hQTaL1n7J/NJ0LPC07aW6ebBxVsq1XkobFYzk5KAZ0tZ
KSnaW/G7fdKoURAM2gFJVCD5aWvsxQltrqDmb0u2SKFjHLPNj4mAW/anajbMSLyXugIylxObdaBv
MbflhJXA2wXvYgnMTumVAsHEWultDqh4epLq3bYUfDaeVu3RhamPDPO0jZHKp2KjKPgpx+nmJpMB
aCjykVHAptpC46/mOM55Vv6b7f6jwoTZlOBpkTKrDefhHHOucRq0ysNQYwF2PN2MszjKE5T1Dz5J
RvYfnBzrehwoYfzRdAKensMg4HEbp6ujzfP0/oRDjVAO3YxSa3PoMCTyO4hn00GjZjw8+8X9eCvq
FZY/DcBu6Ox+rr8EJd1c5DA6Pf1mAGmZGtq99Unbi802WT5qPPaUAJjYiDcXhtqjgUko7SC/6uiB
VWuVQPOdznD4r738hu7/ao2kXT1zi/q6VFmbN3ZkWSOCbbPPJb8gobfVoVBnIvw4mepYFSjE3FfE
v166uGHBuUQxCI3CiGyHXoPZbMie9gveqW0ISGIMCEkzYu8pL9nxGOlZ/OM25+6jZHfJ9hzuDeU1
GLcy5lzN0R4h27vCP+YMdtumUU/Cfq8LshgjMAyLrz1guJo006Jm9nQZE+u77BC6SIBGr05oACTd
O2QYB/49Z1qtnEklmOW1linSg11EJZsdU2FF9s94borB+YRGOHZcAfogRPCqVz1b0bL0dtH72bT9
Cj1iXKgUaVd44uomNx+p/JqCoUWQNVI2mcAqAUyh/zKM6b5FfBMoYsezpXVBiARvQuD6+E3i8LPI
a2AqWeoRS4Yeyr2G0yboVne7eqFmAiw4fCLTa4nZltU/ze+Q5YONx2RLM1nB/TNWPz3nErtzHQ5U
9SD595RP7A62x1ba6WGEXABGs1gmziEPVJ5btnRtGFiKcN9RceE5XN1Q492AaQ4nyCzV7QU7HtDD
ZFklC1J0+1NGP73RiVeHeV7WxgPgdBg1GcFITygJKgukc5SZ7JdUmikv1jWXwduYtP9w7bC/d32w
IGTu0BxxDtMzJ+F358VroqJ0B/zYtAQntP7CUvuT8Xuv7MMxOtBd2BoBjFjfUbTIJJCeehYT/M8U
FViUpUtEdtBwzXR/RfGKiSiTmL5kHzD1p6NFRK9oK3kF+2eXqg/uOEUmqP8lvhYt/ORmgzPX1Cl9
uT0OnGvPPZqDIG/cCFMfvOmkEH94YNVUlsrlRgFr39AUSQmx//6KxqDRslZ6m7Tjeg/hjFuXWeYr
A5D3CC75RJX9lwgclYG69NOYqUST6T4bbtt06sdseOjG4uVEJzu25GdcAJZg52IsQ2sdudrTZpe7
YyCR/Qja8wcJVDOrAsoRd3Am46PHrekeXKBORX37M2Q/9dcLnOrCuiUW6j99mXbF0cLCzEUrMc9Y
LgGN00z9QI5zbmrL8FJ/K1IgdmzGOtHHsbQwSz2w5xGhUstQkkb3P2TjOyeb7Ng71+/kKrP4pi4c
mRrxeQd9XXX6ON5HJnhggiB2Bx59nFQSZs0X3iiAYZy2rF8rXV2ZvtAmrpKibybxCtik0Q7vAerm
VEro0X/f0j0XIwdo0UFtf5FiRdlzh/RAyEowFifb3lnWCO7L0fD/v0a4vfBgtcVy2f6JatNNCRCk
KHL5w2PIfCausekSyBLD8fvX1FRiuQ4kYEPFmE+hHBszZKIQhrwdo8LcTOeS5TMVp5r9dXlbF6bF
LGR2qAarMEoV0fWk+vQjneQYU90btZovprrNmFIpOPGdk97m4hecZKgbbcwsg083bKZmJKk+v5iW
r0/EIzQxuWcCim8FWFC6QsFe24saV4m5LVLSHyPkO8k6iKnhqqUApp62O3vV8aVP48683bdGSRZX
ztFJ0Z3pefBtBEdtQAbdSXbgLw6HH9d2vtsGjpTXPQQMtoSfcc14NAZKCSCsN+2ZPuOgshBrskP/
vbGmwhfgqWEhVAfN9DxacQMJriY8yxdNRG3vORYRCb1dyKDs+CyQdzybqfnn8HQMetADw2wIIXuJ
s+2JNr9CmRtQW/xUn25n9CR2j6tAgWJ6idd1EWW2WmCwHsyoLgixLOoh5BVIDWGRGYLXdYIPbvmW
oPFobeeW3sb+naNpOU61KihKoTNymkr0eJ/7EK9RV/zpIF3Hx4GHw80L8tgQ+Q7XkWPw7qc9hOHG
Q+sJPZwwPV0Z1nAVcfg678VO6MA5g9DFaFD1tO4k0/5OtB6KW0Emg6NUn4ERU7iznbvAg6QGDPUp
tkYPJVVcqH8b+NqM8mSf13GA8kVhmb4FVkyD+NSSI3E5ZZAoWV+VuYV3QGe1lrH8hm7j9OUOojcI
KCT/SC7cAh5nig2kJUKJ2mI36w9MFee+9f4eQrYD399cIMTnRZ63cq8FXiJzfbuDNAYw9yAj866z
A1UPN2eA5thvCpN7flLLr/MSnyo9ibebB/uBWWHY+15WihZ7DMw+n9MoVaZCVnV/lpqLwuk/0SdR
yFMXK8SjoXrqAiyYI48EkTKA9cCbokqIqlRYEsO9ZRZzkDM2NCXPCJx/J48UimU8WYakWskqsVzu
+okkwRqlA4LszqmGZc36C7eFqgbtMBKE+thqB7Nb/pk0JHeNZULAwv8phXKDFThu1fXjFS2l9YFN
xYS89sxQVYycuC+R49Gr1Ey9G0St4SmKlE61BIYsb1UuEw1bpx/P8UuY+lKAiyFC9Tw+Nym5uMZZ
WPxAb76VSfXyM//OUQKeZr/VI687G+GPlsupcCi6p946zzld/kPKNi3QI6IwooftYUgSH5dIwMXU
M/PhoqRSgBZXYMtKZAeTdyHiXPVebDdgN2tlEfITXQlh4UhhXmmHiYktQsdK8l9aFAie7Ivgk6bG
4wk4IIS2dXEiMe6dhrGlgqimozKyTAVQtNGrUEvpsnYhVQS3myfKPXt3p3K7cDkMCp83uJ0b5JWl
Yb97y8h7sASoSh9A2HKdMzWBEaBQyGToqPTQh+IbA6zLFz+q963LXoSo0LG5MUtv/lN56xA4WpOP
yAogaVE5mXyarWXPFecux2VHGCdW56Wxj+6xMgDHTjf8kZhhdoCUaHmkXioE7HUeRWPTYe80LW+N
bkaWT0jMMfwgw8L16x72nHYD223lUmm64pscZSSi3GV41rgzaQlk89zZMrZzY3nAe/X+s0ZHm/JS
tn5x8jeGEYG1gDuQfZy9xhwTXDc1B5y2DmCcPJqWemQpOpYCsthZ+iXu8iHxhfQtoosRGMqeZWEf
kdisVE2myzDa1X9R0nTO7Xsimg1MNMPHCLt229Kjzw1JQpla1OWSbi60OMbDOnE7PItl5bzQ/5dY
yPr5rWA5bCxM4pn/sZsxR4WB9ArD91wea/XNcwz+qLpqPQcgGflk45H0m2zhNwQlaM1XLcUvPJl/
Ktsi5vhZ/ayGeOjqRTv+EPQzTVLyPK094x47+lGjyBuHmXArwjpS/EkKo2DnC0huSAxTzyrFFD+g
MXNiN2Yxzt4fPIqwB7A47zoq1kT/UAmAILBCv9qbq5oD+qkVrVU0weifYFlR/l8WH6qiKM+1yoIw
wvOfvZKwEO6D7pusmSnWYs0KsUXEzfeyQNkSyD5pCo+0DSOC0XPTpf5P7Qwg5q9+R8RN60sAuWNR
p38csYhIn+SplUrxF3K0CUrSa9jcp96yC70pZUwAolHW3v6/3A/c6ICg10jqBH5hg0rK0LFCWUtl
8o95XH+STuv+s5Q629/aaqIXDoUwxEf3FNLN4fR4Ach/1dCHnNyKtE+FaAlhyGluLtzKk14BNmB4
xrw1k7k8x2BiqDQjtD6MX2RfPVrnRCG6goHoH7LARVTznkgUVhNQSoV2nrWy3dmDanqdRh3G5ki1
3B4POaPxmwIgcR/aWOw7EMs9kpfFyC/Vo1typSt8jG47I7wHW0kN2PWQbYHR5GSurayUd9F6RfMf
sXHPpOz9mgHXee3Br4OJkNIPnp9yQcsZlHyd4gAacWxQPT2yUa8xNYDVQR7cGPKXLujUdKkAFDmh
9EqGejf9OAAZv1TK0LET75JJ/f/UPb/28Ocg6DjEF/WWOa97GCYOjujWk/eqptAH3tVjz42sJ6Hd
crQoLpzIcCI7acR7Vf55NDIZ+JoKvSgcAKr+YGyvqnCchcgGEozM/s1dkXkP7eFeHm/puNboJaqz
ub55PiTJ5nUy419oeL5PnEVE3U8gtsY8yBSWwUdSdfF7xjabBn8IxT2DDN7qZOgCIHRT0C8MhT6w
XT54yWl2yxdH0PhnCURVKCanoh2KzFXJHJT8aTm9MkR4zH6MeEJmeMt5F8tPM94ZiDUkmf00fCfo
oVvlYdcR6waUpdtACPJf6SkE8KwGGYQQ85Wd2J54+K0pVLQeNY3vzJI8j/wFr0QaPaubOSCtWrzh
MFi4VmXnecyDwZ1AG7ptd8ItRj0Ect9yKEwO1IdaQQ0e2cNhkL7v6e0JskaqaLCbYRIMLcau+wX6
mT3NK25zo/FI2PftqANrG99+a8EwHe265++GCwM5jQdq2XqU8DGUq0ogcIK7Kekdwg4h6eu0bq78
bjVndczoG9JpNGPso/lRW4SLF4Me78ZRX4bCEIQqyeIWU1yuPeMaLkrRDb+PTS/TYhJQt8+8H4mP
WQub9QcsueKet4wpsD/zx/oFciSlL6k1vatidSmCqIvUavMVniBeGhkk0X3lyt8wt6rEdaHYpVqx
D6/ZVNtxIQq5mWZMN6fq47Nq78teexrwOTAPbTN7ciC0qb9d4a/Mf0pOJS4HRKN/Cm1DqUxjbaLV
UflC1TxSQqtl8mOyFP4N/DiAwWYaDiN0WYYLryvveHrL23o5Ng/isjoVhOWg8h6kCppLf/tc+M0k
HBcll6oIKWsQKj4h6ChXU062oMCBagmtOJJyCEUZHTvUKMCq9scs7xlBGaGaDcD+O/eOA8a6LXjz
KBJztrjE9thw8Sf8bs8tD4evoqCGO6eJ/kio50yTTV5TB/2VUUZzH2JFLcDmQVijvJBtFDf1+Vz8
I4G6IfdVd7z06iBjEai2xnjOAwpMP76iXzicSk/WDirVokEtspEuS2CbsaZUC3YYmv70mMiztAnG
vpCHUNn0tR+nsUJVWOcmSPIUau8XwxPjUOiiFLrJ5OXOkJNEipEc6102b9FBuB+Q5k7ZC59vMWQl
4Ksbm2OOh5LMoSkPcrIepWxp/gylZmIl5JodLPA2xxfYELjFOnv6B/nWU06LkRHmR0x2AcBYRzSP
W/1XyfwkBAtLUy2Y6qpAUYInlsfAuV1SiE/NkfTgTHGwoLTY84855O6C4LC+Dz9OGXJxpmqrX1ti
yTooM4S90gJq+Tu+flH9EvqwUoatKf7lRWVdfpP9rWV4aHB5GYWnX5MxPoRRZOBQiC2v8qB+5ML3
jnBMgydzelPN4R4WzT8ZrF1SpSP5AF9UXj2vJnQ9Q0yQ4HcVkYV2DAdHIRLG1+l577gxkpD3UZ6u
xxaXA0+C4Pi2vlejhVp/wla22SCLIbd+GIwlhZ2SvMLieCHhzEzg+noo1cLrQrxBZDe1APTbEsiM
KptB6Q3tswZRSEZfO+D/F4RofLQ8UmOkpsOm2wBHIcBzMnwak+UPBC0MdPqvKj01w3t86dJZckSk
2OZDpgMCpUGLIbQxr8SZcqHV4JoVgzx8ISErGMFGZj41GPAigXQDIwvwSnXPGxh05hmP/PRgcPpF
sl9DROJg5kEwNsatUQ4b7dGdf47Owgn2JZmdzjmHnb3jO5MUjtay8wCqYzw/CTN5nI5cnwbdhqbb
plxL/t9heuuxvt5aXnQVGLlQGYM6j3lgofG7LN0wKod+CAbMdi4/7CHFQ3z2HcNJFCcu1j9v+vZC
gPv2NMWDOW71otTxFAM6/T6yFYToBTiCqbGC1M6aPBnz9zh4RQ2S0gyFvFWROOw7XIg69ipgkQd2
VeN2zYwBAS4Hpd5p+SYVW0Hu9rL33OkE1TyUsqObON6/+Df2UX8ksnVwf9x/5LmRFUj9AmU3vMUn
crZVwmy0DZRw5jf/0iHXyxGysDBlSfzzQTesma531J+21CLX5UOok7Ne88fUyu7fHbDiRI3MViVP
l2mUiT3c524H15r/ZXtSGMFXa+ohq5Uh7jskP/8cvrgOE+REgOfwve8z2ifXhdZHsDaagV6mcYVN
Gm7C0Jr/ryBaodxzyzQop5JWIS/3sac0zGONJJ9ygTep9Rs50lRIBEgJ6NSO6lJ7K08lrhk5TRoa
MZL14hnJd8+Ad/OyfbaUU9mHI4GeJaVL3bJKy5rpesErue/eCqeactRRb2KovbMgT4SvIwHrkdjR
s3pOOZJTvd6VT5hIS5w1pJAll+zf2HXKUtRoeq5W67b8LLFUkKlWEhZjw4a5pZ01ZxZ34QZKfwBu
LdDlK9lzRKXH9hL6PzCcoOnPsHsNc+ADHuOGkCikAQOqX5veNi5boRb3LGby+H2goSSdlz26vVBO
aJV+lGVM8l8QT/9md7cavBMEoJUUsdQNDLtfJqNItrG74ana/D+scOCeZb2rMbGf1noil5Ua9i3y
Gk2mfKDjuPpLwNOv/KuvHuyi2YkXXq8Ki/FSSU36gkfKq9jdL4/HHFp+82qN5dn2YenWhCOMmlTz
6l4rfUHei8YldCMK7dl+oF3znpyZqe0vYFnQd4AXON9S31EmKzFgSlOIwC323NTwVn4nM5TsT+ec
YCwOWdGWSxnle75e5QAABFebpfkImVq88Xzb60yzj8vY/wnZ+DJnziKjDtElemhWQmUcKZZdBFtz
vf0lk8Ro+4Kq43oY7vTkfAWj/UPDYpeAilHz1s6ffE7ruCmxD/+SVru1yuc7ISe8pNKHmqwxNMrQ
mnXfOtAYkRJlnCSntK1GwfUM2c1fNBbIKJvP53goaael6pjyXUett4M1jDF23IKl9+3UXcAKBxfl
xEuz6zwr4SXNg2S2hMzyrJiSRctXQTZ9aT0hFgtfLXVChrg5S1Grws/4P4pnOokBbJQ5ncxsdBvK
xawPshO9cMa7MJ+hGH2PlAAVs4TGUkM1UfjWfWF7NrPj4pdH9g4gfz64LDMBbFpbPm9DRKHdWBQG
hyPZbA84sz5vAc7Ue2I+W+/6ckYT6/Bf5dlYH/WAsliI6zh43RX2eOJmAnXL0Z5RyTwjxaDGvvqZ
87HrXkCcWPOlcCJwm+hmo/T36CN76QMuq+G4s8tbwovQV5obIgw9KgkRqHAQF4jSVPvY8OTE0ja/
Unvr65GK0m9tpFL5GvIuqyatcIx7paaZ8rDb5bjDueJ4W1D9zVckxKqOSbyYHB3ofL7DUSKWFD3I
bWtBgJjQodTGeSejLevSRqWjmWcwxt/H0aViPRUiqUBnsOC318/GprtIfJjvgdwp3nsM406v34VV
IddvJzZIM6qMuR/JZoWm3C23JrMnKFWWG63QKb9sF4wMqp8PNoXtVGk5SXW3xEWKZORIwWjXhhyq
eaXDwhJhalvArYMNr1G34odB9WrvWPW7K1p4eMU6ou+Q8GHS8RFqZxSSH08+T2uOdS/+4GE6/69Q
CZkgj6uSHLgdFkd2MCNYJiiABz0EVYmMdoWyQYYbB0j/K1N+HqRWVNT32PMsvxCrAtSDr1oCfYnd
syrIr1J59mVHeK8/56Hx3Hy6Ny2LFMgTr+9sBoN9XZNELZNvFT65XQz+uoDtTNKcucnYiki8zhH9
lbNnLAfbP41b3eY0SwBwBeAMgRk91h7LPnc9i5M47csJOKfkfZYAI2mIvJCCIpzW4u3R5u4HoXk1
pX4r/qB7oJTk91Gw/CJGBGo8XJ7WfFYfxEYp0Y8o5F+/3lS+ZS6aafAETIamyNEZesAcf3GHwD/x
cSI9RRULf06pyPUfUfW9K5Mj7i/Ppz+KIIxaapkqxmskmZ5gaTZ25qRcGQR5LNbij1XqER9iE/US
8a4QldrKiAT4ARSYx11XaSLZF0jGVNPLHDV0cHyzOPyp/KAFy7ilhy9QKgzfg8ClZjmURpx3MB1c
41gbYHVVLPiiWZ8ksZyQa99GzY0uwu8tSJF2LN9x0kW7KkzUjMZ3cwEyKRRC7xV4e+HCt6fxTg+r
2//ECPGLxXOC0wEBqezBDA/fBayh794eAp6yoCoP8u4pVz/jEf66eevoH6v0c/C5rodXzSxsDVDI
6rIqEaMqi3dflhS1VtYRs7K00PfeiJp1IJAT7SzsPbYo1bxI3ML3ndWFYzI6MzDbx8WfrpJhuX0r
NylA2w+w3Z68+6TVsE2IYCmdNxFyM+R4VScj4JaUvl7e4qHtPuKwslSBdCNeKglK5L/cjhP+3TJf
7jqgt0LlBjvwU9AmyImOorfV+Vdwko8Qh2J/v5DbWVKATZ6El7H+s5X0ja5cdHz7GYxzCThvhUTp
3goNeA7YyzeZLqU4o+f3QA5Jl5MKGyNOvH/rnKES6NArDf9KmQceVPQ95eA+VLR0MeYlSGEB6L26
BSkJxYdA6cKWe9yUo9biXlTw7J7b885QdcLYhDeWrpF0OBF+rPVA+APP643oGvdkegc7TA4ogQAm
hONJxa66VZJzPm0ohQMGRfCW5zSc7XSHAuGhgID1S5qVbEBKTxjpI8LqWRxz9tK8mg/164OTazg0
LuJMfUfyhqZoJ04dXwBqnsZKW+jr6GZe0AL5HyW/tZsIbmidJfmlrcx+vXdBxt++HrHb99w661gP
76FAD4trgbo6DF5RpFyJa2UK/umiAxntXqf/h1QNR8xvTdTCrICO26tqiumgcb4p6ZeJ1XEVVbe5
15cyTCQbGL0CYu6jW4rbi4jop2l+J/Xr+C9FEVGRIEfLgxccngVO+eSF35Lu+hD3GLdtBhXOygfo
MwKZ5S9c62ShmWM/gjEhLMxrCZ9fJmaUCDNsS+OWiKnD3rdYClsJvndKZX6LDYHE0L2lkmKjg615
mG+LlgGujwhBL6LJNZ04uNIcQ4A4Emq0M53K2R/Ei8iCWHghcxZYcpmJKdiSA81ONmKWWRqxSaux
Jpothif79iSO+cgfQLI3AK0dywpr1kK8OaRjdcEDQS2fw59tzO7/l2PDrTACA5VadwZqSYrSA2Vr
SSFyvKQUm1EHL/UKAaZoCPO/1qwyvJqlmVrtVGdrRVUTOQXreSh7A4rhJ+rn69EkVzk7T62KeZku
k5MyJXi/DB5KVIlCe0NQ//7y3JaSFdfmEXqMQDStQEioKaHoxR09YB9cuFTNxV5iPIM215v878nZ
Dbm1l+XiCrti1II2yk+/HdxIyUvU0CwvDr1B5GDztEFTsjMOwbrw7La+Hibmidc2KAp/m6D0stpX
3ytYL8dZQOPcCIlT/LpJxlt0QusCcHAlzJn9+oxjlyPXIBGZzCjY58jnaCDc7aOQ0FUlvh9zqmim
btGkHX5DlfdnRxjZR7HMQnXr5vTM1iszWNBuuz2woABa6x9XN64fkDE2cyirAoYoBgyfNaSLwyaT
kp4oYKOV3f83QW+HUict8f3MNxHKWFTzjf3UNEc4qSVrRtnfm8nrBo1L8+xaKdXW44HLGsvM/035
62zutsw8Jr9IoFUTuUbT5zDgp9r4MTU1IUWIqWoGokCNZ7N2VPJ1TIizTQNQ5QshxmXkghq+HnpB
QXrojvE0QJ/RgqouGuodrbJcdeqwofX11UR+9eFKpoXRHlbWAshlKiZ7lN/Mk6diSBEygn3efdSm
vmEzkAeDspddyiyhrWJd8pD5bJFuYBVjcjV/cxlPS4SMAYpw5AN7R1kAL6ncHvs/lm3tlHY83feS
m6VKNqoDt3fEWgEweTF/Sc7YIlB6PuvFdlp4zMvzma9JzSOGVu8RntWd7NJgKOnwzFsWT+lfd3Uv
HSfnIWPcwogby7ZNjpqngSjT9nVN4G0AzoEWO4UO8NelU3jfjE4MAKv1LHpVLGlcm6ayJqg9/0fW
0Z4oBJCe7sIk2JXJa8mg9yvpWLF5gk+OYrjB/41LT1lQST/5oQDs53xYGF3w/HhSsXJq+wqPpYq/
da1zfy0Ug9WNr7vY8mgfctamColIGO+W6mRyC1ICInbnRrS2ij4l8nCtHH7Aq+uZws/7gj9QPrEA
nx2pzPoODJ4kTBMl/RFXfgtsFalkGU951pd2orRAnwy///9eBdgaCTJogUkMr+TZvxjQnLQwQrf9
ePkQIwLcmr6MUfLvY4mGxsvFL4221ZcxYsTd+Amdpv20WljCxSusOd8S5y4cJuzsMnZdob34Qm4q
Bkoo6ZdPGMYgyvOKbn00zbKfRXTfY4IPJyXFTXyUWu/2uMZYnqOWRTnVpl+ZZTW8frJ59XbbivOk
B5wK7HdtdCiv2CnAEuXhWUTOOaqUDOoMsVBTGVM1kljJYZnzCHqjuio8/6HdCQdkN63h7sD0zbL/
hufIPRLKPEKntrja6OV332yL7lKRWMo0r3BQvurB6y25edlelfNhzVt6WJU742Nqqq3pF2KKcFv1
ikSLtHqz12mI2mvERAghUYFcLYdRk6CSKcoHsftKt+ZVYPpn7hNtwTwOiUeMHu4oPCLPuB8cQKws
dC+KxVBV4Px4UVtNjO6zd8efjU6hZqCqhpR5/TK46oWzCm1MpczgeCRgg/LW7ejhTltw794pyoKb
BTOWciYaL4JkkeO4/u0fX8n/ImKSi6r4TILQhq+Xr3tqA1U5/K7u52kUa7adZa2Nf/C4eI5r/NmK
9fMuknWiGBQ+x8uEURRvtDaqcVAw0BG3GWUt+DgC/XDwVtIqScAZfT+BIHHz39UkkYu2g288gOyD
PQ9DJOU5NZk2xDv1Cbu2ICKIPPCB7Ojd/rks+P5F0GFTb+i1wdPC9RUN2HhXhc56opBNPdnX0+rO
uOSZftQaWui23R2ymoXw5RTWpQhHGXpv1BNtqFxjedxxWGZtF8aqYFMKlTx7q9Na+r4PCdkcLHjF
HJpB91iCpvw4XfzubZgRZrXEYcUpd8kcy3iIxEFt+xo+CQiu7mBmT0yEGU3FeoeoEdK2IB6ZBgMH
jBa7zT60OX3VnJR5qHmHdbr26OTBiohy/azeaKgJbIyBhktOguVVuoHrWvfgra5hV3aTpeL2yJ55
pGJFel2fregv6RD52ENIb2KrnyVZ0M89Bb0FBJqw3MGaP9EG5MYkkz8GfLFJrKgkttlWwX4S4zjm
JE7CMHTIYm3+t1zvitwvhPShE3yOukPN/k395poPu0NqTCVzksFtKBK/epR1M1d/Prz8+iF0PNgH
YMaZAV5fPTN4MYjfdYIGjr5DrjGtAGYM16FJfEdYB7N9FntAmCopzbG40gMmTOeqpSFFU7uALLAh
KFk8fHOr+cThBG0vRwyFaQr9YDcuxdgpxjW8ck96bSkvIKw5//MDULygCd2DVGkP+yD8KEVf+K6O
NqwLPr6p/9Dk3JtJNHL7T9A5Ui5CnGHRdBx68wRI5Phg9kjMmYzKxOoKdAQ7mn9OX7qaMQZRn1EU
8gzOGuCD6IKPydlrh3ZF8qnPn8SsbDER6a8XFbrykx/HM8W4WBkoj+4h9LMwZtzbSoBJJezgz+ri
2TXHu4RuP+iFcpHUK9ajKGUi6/QuLj3WrbWkRXg1qcAT9AHcaq5xypj7rbF0kTf8obHW/fkGh4BT
ZHYLo7tYGTyIWaGLyVKOqQeFVo82JaKXXM02zhlkfZhJ7HSgp2by6AWhAXR3KFHZtWYJx+m8/Y4S
n0JF6lWPGlXG2S0LK6+WBh48nNRJF/AlZKmMRPFY9acYCqUBTZMjMmnaS6Cttm79BwcI9zBNv83S
mmiUfe78QOngU/qBQHV3RRULSwIVpn+tdmG+Z7/GpC2EXVqYEcqQu7tXsG7QalwhdpBYaSKO8hoj
c4sh0WQA+8Wy2rU7hH16pv+GJsoUbSOZz4vIXYeExIzFjiW6y0mnxi0JQRpXrWeSadUBKMD2PwFr
7uO61Xj1E97gy6clpBDRvP1V1/bhBF0EV7I+FDR5wlZOrmlJ2zsti2skLrpJK+15FAhRrMGufw+C
ucRxBNn2C29EaVKv5XRJFsDr51jH28O4zGDNp4FHRTyThEMo9Quz5N+P00jG/0axkPQV1Uywoo1R
ccXXwhfPdXXgBcoz+VQJGdfC6AETl85jSAcsApH1obbqzTg3Lk+OfUMaPFGut3mG2xQW74FPsIiT
uc/wIT11FzQ7sf4MgbC7viJU3S6r93wKRwBxf8B2GAbRuOIRWLVUv6EiPf8bmWFXvMHu2dCyEJoy
Wmdk93D/AJyxkPyn5qm5sQjWoHPxeiKWKs/eXdu4NBjEOJVV7GIfV4mv/PzZUPVRBwD6cxlMn76L
4nKo1oYvVMwgYcnWUcSgBkZ7SBFXbKGfG6NK1+r6/qp074ncBUBGe7dlC6V5vme0r2g8SYkxSxDY
LYngG7xIqTjr/zt0ecIPvoWgekXKmPFOiiQaVBtmAOKjC9aOFpyONSMA39vYAdIaW3ha7dE/z4rb
k90qlACmV9JOOmY6VlDNihynOJvf3vknz3p0SLC28x+R7c8UwsUGOMcGnHI3e7vJxCJwwLvlexsF
Q9vOv87Er19I6IqWzPNWHI+ypyEbb8UT2Oduavz3svjOlInGI7C5yiblCWCAiIHuJ5vgjrCC7T9h
geFAdQTUaznZc74E3VwH/nhY8aMOMYUMczDRTjY2jQM11YfHnYH7qFt0bfaxQ8m7ePNa1NvUGGoY
xvDdgGOOkRPXsx2WeD00liiA2mLg191Cysaoo79e0kZjIahTcdwyGfm1799D0jsxtJM/lv/yvo8U
z/LwfCm3aFiX27NNBS4f5NrHJTryG5tXdq19awxuvmO2gk5ZHuk5Iada5WD0P40DLaGXdjsVbhlL
1vjwPRN/9Yyf1HdDBAv1X3x732Frkcy5HyKZDkQyaYAKKPDZNLudnkX4niypL75GrSykrYaAkXww
cC5Icq8hbjPtncDurty0tsKHxbTRJCwVurlkR1IkvuKKWjVNPMCrbjjWJMFy3+5eSja9MK0RQL2l
3zRArCtJusQUX4f8FwIQy6wACaKIKPijhZeH10ltv842R78F7ZEPz6eeTLvaMaepMwVhBgEfUJBw
40I4n1JIVE1NGVi69Z5bL178ON6LoHqOAyyDjkY4seODwJLxdMi3EpCLIgg4ClRqJdCLeIQ68Yt1
wyz7ANzHF2gbssPm6Ey7iuGBoRnARF2D75PZR9SfgiyhvGBJaaZ4mmr+StbmqlUsHvRylxzuBEcy
5Qv7/9RFoMDsGa2I94hDmr/07jM4O6IiSeCcLAiqHZI/TewXswDOhgzPVIS4hLNbdf6T8xt+675X
HhAv18TXiQUUExQIxN1QDvM6My3oKwrtS/jceyOsG09M0YzNXkj57XB0rEl0I58qWwE7nhlAvy6N
yuCueAj5zOvFXUf4dBTsxlMnqDga9WV7At9JxFoRrYoGkWb8V4EJrZZ9EzWrsp4ojkICussNJmrp
4TRswecJghRlD0Db4K0wruY+YaMS0vyC8gIFpLIZAJOrXhP5OB/0z8W9yB9sajkOZscb/w5ZNS7m
oJlEwxTtSA9cTKLbNOnIKQQjoMrSLM7Qkyh+84WWqPN4lFYdVTky65t457v9S7KhOnYLMPzriSFG
IKX1gCC9a7bC+Xh06+mh4cO4rtsPZB/50WOr4DbMbbaAvOP7UnoCerpXBuFVx8Sgc+M/q96yoeZX
GgNsQIVzlAhUFxaaXpbsoyDLWj0/5eEBXv5s8NR/JlIkAeGyo+YSVW7Rmv1y3NiTL+82q/Eonggo
UVygPlF83fJycUJud/dtPP324e6HIXRcVIP3OYf0KhRnLDSTNxRLBGsw4XozDn7+HhWVjb4DZ2z5
C/VSmbJNZcelepqTfIXvRAnPHaHluyEsSQjdOJLFxPdT3plqpFyRNtpDou2rl375OLtc1Rhjzkg+
4KGIWfgg7EqQ9GLI6RR7sbFO0UGtLoLqabu+PyeYHMXqs4hB3kGEcL9zMBaBYROMrVQWKEESt8g3
s6Lcp4xen3idI+g5wc5sH42RwNNEBe+h3Dp57hTY8jI6YSFQKh6eIvBaxDk61m7KU9csO8iFhWY6
Am2o/90sihAOIA7skSPW/dKid4rQ9p6GX3s9MqpEkS9BXdvvZwUoTLhQ/m6prukuV8g6oBWtDmeT
ubdM6ec8hM6nUikiFSyhE3hF5kt0+i0+7VHWHQJEMVwKr0H1SKOwC7+iwmE5Cdk7/S3u44OOTW3U
hNdWL/V8xFeeAjGy4UEU2RkD44TA6qPxVjGAtBaPrnkbj/qrL9m5pNqHnXIPHwg+/4ceL6ncB2kO
65d7qogql3MYca7e7XjR3oSR91S/aH6FbGxNbk64obyDM0oCMgexocx3EmAgQqVdQfpTs2o6pvDl
213jPIxZug4JjL/mulErYFSLGaK2uWH8RXKJdNML/KwRot3rcTEbwQJY+KO0QHo85QcjDvCwPVNX
92EdSieuXh8IBn2bXRllQ1U2qmk4Wp62DbNktuDI2pVUasO1n7wmorDpLr7LSG5RUXOeHvNdHaSQ
x/i217xioY13kQjI1A4CUZP55jYXfKKlVAgqK4GBiejhRbRXpQu8RwkRJO4SQDd7hgbkCec9oBTg
ENXzkcZw5tGUK4VBM3YYGwqP+XuMP2fk4TCpZ1OwRx2wpyx23dOEj9n7JcJHrCyAYhpE/GHd2WI0
LJOia5GqNB/V5c8mypHv/1Nvk+MRiPH7b3NCrAnFd7h3ccE8PYrwvQyCn/jE+6y+MH1TOvQdG+QT
gn6M21E5mPXkpnbiXD0HNMmisLMxM5b7BhcMWOu6xruA/1hfp3iD035e8mGFFYQR1XmfT+fjwB2P
x2K7E2RI+tJKZkuPqRYYBe9WysAA/lALC1/L93BzV0iSbrKdQi6/jaRLo6aZFOYPI7HpOSk4+2j4
B2GI7NX13jEFJS66kjYlB6ZGqvO1iIXAiLH98xtfaf3f374v9m56npPSEb0c2QnNNLTV/+2MNENU
HpEAnNywDdii/UdeU+vvmilzpksEWfI+0yTG/Ot2hQuiY2/ySP6fG3F1tKl2maTHVUkQvB5C0PJF
6JojFGOHEycgxJ4F7f2E6O6M0Hti5mfEAL6st/TIrHNunKccKrgitxK1z741gaDqWvpLQC37TEwQ
BDbWOYQcq2fQAEOVpFrw5qy6ZBRB7HypzjDEWKCJb/qC3azqHiLZnoJr4Lk1FnEna/0wrUO43B5p
+CmMJlfeggcZNQkCIvBlDfKqOH5Qytxg/6/1igJWwvf9uP/fnyr1sgCo4NBTACSx01v1W1hDscNN
v0uLqFHvYVGzACnhFGTKs+YK9ekwWcSWf1ZI8ErHOZITqlOy6zTDUydwGEYSRG1Xvm/W9GE++YoJ
LQzudXYZ2hhFix8wSUtckqmBeXA+UHZ/4bI5RlUZppTEq3ImsWemHNkLuJY3xEnh1SeXnfQAX3DF
Q5xw2WLhUA06uXoeYdV7l9NWcrie1cL9QtKPTZdVvoKVQCX8XVBP4IXRyoHQMxHYUzTynIg1GywL
Z5fIoQda51XD4OoppPMmnmHT8vfdBmorrlDQaBwOxm7mCsdI0sQVAXHs8Pu5qN3Y6GOlOsLeLufD
9R7ko8KCN+2AcaNY5h1DxKcGO3HOwTW6YuUVUq1Je63DSL2bSdu/s7hXkKv4xohRffsBHIEGh+Ju
s7jPrWlfUNTPERA+kTfTTTSzNd+MbMv0QTBZqaEMGdqDLpHV1G77a8FU+ez6p8H5c4XX4gT2am7q
m6sRR3H+ZHrIO1rmzPUU8KIXa70hyypgVb3nvru2mniD6cmfaiKjG4am67ejLNEokJLPwu5IWyro
0skcEzg2q+yQm6GDwGTMXXI1ln/RkQgG2CwSlNI7n1WmxmsyevON9VpvckdMAARxu1XIi1rxN/uX
1Uv0Z/0SiWw4SOOxl4D2BRVrUsekKpFQ7MqEAEHo3oIB9leijnIam4oCQsBlhf+LnVxA1bTBbbwm
78FxrusKHIGkMdQLM5daBxPW5EuRbyvmP/P71ytiyQ5Orn6ycNt0mmWgL8ApOo63ryRBzvAtkfab
5BY0PO62mHO/5dIj6JLDClcYoZkhv9DwKx2Y8f9jIekaO+FCFwqS0mzB/+poORaLDS7V7L7ciW4A
5suMU7WohWvQ+id8PAzX5wUPSokTVN7sgIJDwyKgdS1kCH+uIx0Vk+kLA3VyVovjmzIF/kXkGNPD
7LBUP0UnuUZA/khnZOifXGbqT+7bFHKxfbXbWdb6Z7KJdD9FqQzOLKaUrFCvP0uMzaZb03UKo/Rc
yU8IKxb4t2TrkO7v8tbf2W9xGacyAIO1g8OgGtcSOMIpYJp7VY1jtkziV/s/4Rrgm0volBbGAgFX
ez1nnPdq3NgFtkpKHC8L9viWB3aV6yRiZ2gVBkdW7fpEVv9ldUzWn9Ym0Q0Kde/fL74iycm2GA4r
8yYFgUL+Gru6+R79O9rF6sOu649Ne9lpwDh9JLk3B2Lyw0rUr6RGQVF6jzuYlCqhxxoJoyopDRpo
SqUw0TGF6cvxX9H3kjTG6eZFPGhUbACCozufw3ZOtdxqTib3KSh0yQ6ljkhktOuPcuxVGagA6xJR
d7kCs+gnO8kYBfrTc6P6isD/5L74ex28y/01KHe2pTCFlP7hGS7bVPdz8exbviVvrLNxWh+19TdP
CVNjwvnP8n7/pW9OhPV81xc+iNCgz/SEVgamySRPvfo6P/rzvpQJgV3fnd3SF5VkdFVihwGNrtFH
EpEH7TBbbUMMxdaXHiAoCd9O0fRXwNF18pLTaDvoqRL0vnoy1JHvAmc9Hdw/UZf0Jb8rUojmM5/G
QmENRGdWhtH91kvzxJpBnndxFlDpoa0A76kUDj749RR/d3VyZvRQ/S+pMEY/oLaqHYQKRJwsCPb0
5shlDK0cPeeA+tJR7W7XgcpU4T9zUBSVYQcxGztGj3hiXThv3ulaJgUhNogZXgXJOTxSFumbrNfa
8RyvzHpTbRZJDmaiuwMpOZjhXu/uJiHbXA5PEX6DRwgVObSFmHkZKxY9vyzRyVFuoh+CBOBe2Cuy
8YIr7kIRC4eGlEHi1sAY344NJBIATc/4g53GWJRCo0ezKBH10KO+djIGefp08rqeiY/c7lgXR1xW
V7pWoVGU4vdci4NjDaEAQldXsQLH27GEcdvG4zk2Xeww7WY22uPVJzf/M0RWViQtehM1ukX/ArNU
UG5Da/bQejzsZzZ8JNBbIFyAaDro0HwptiJMaUrwDbAPR1svRaLa0t+OLEexZewVkCKF6I5LBFu4
TJSecCfRo1uWqNwcBFpNs+fsa4OfEO0UmPZ5lfW1scNoiefnJ2SSgwGYgQgxaLwBgtSQ408RTm/u
ds66HOx3YFMFqYSr2Lnp8Lv8sQIaNICnaQeBvJeo941IA8eogRamX6zFGXitt0PW8DYLs47c9/58
Lnt+1wRqn8CWXjQL1V5ur2MYZ6Vk0Vi0mo7eVx6+L2UO7eFiYIE6WtSLd5HWt9hty3XdN6al6uGe
0gNnVSnxEgL9p3VFYglkSJ5eGgVI/WKJ1v2VlgQXjqCh2SG8EhqaOid7dZiKRQP6dM3c7WnS2aas
HxuFKHiPXIZArDpppjc109Qp2wpDtVI/SmAAUVW4fvff8t/HjgR4bQdiuxk66s8hurpVq6W7cRfH
wqpakrg2pk2oMgnY//Vm5hMQE1C72D7OssY1NcEZ1VP+6dDfJVRqGYMON+iG67CYdMvzqZmYRLkK
OzYbIZg6S+dVufs0Nm6CbHj4zAMDq+AFYEyRbSSM33a9HQmM4+nVyGjMmySxyMn7x5l+Pu1kNNjO
2MBhsKwVdV0hZ/TS7/Wu3g/L+0uqWyI3eEWMdXEza1Tf0cYAKC/eT09QmpUza7J5Q4ju1l23NVM3
c1QXFV98SK7/K7BpTUdQ7h7LnHAfxkwFRZ26378hyOT+sr+7ec+uLJyEoiJcPGcEpTJGk5lZRnYo
2WNX8MHZheMiRJcpRfc5Z1sOYVFK6TnFFgCrYCEZkTCMSoLGrDz2oVlNfhtubpxnBituKkBjjArF
7xs0/dwMMNGlPgvyod3gvdliQuDr1E3OCxquOp67Lsk4AUw7iV52aai2s+28r6Knrud3ENC3jpfq
PuQb3eWXaaqBhf6gf/ajYkDkrHlsucn+ZwZFy2J0JfpMMDKbqXiio4yWXJckNEJJ7pS+VgyuaPq4
dq2RTYrQOCkXhpk9HkK1EtzFreSYMRdQZ5AV5JvQCe4vKk0Q566MyzJntqhsRF1dl8Pqlr6J/OjP
FR+bre5tlQsBpqlR3Y+TTFO+Dqgw7n9nfFCl+chZZvtArtLd4PPpSY2lamChYy5k6lLdeJy/e6u2
x7wZTSIup6tR7YplyaY3zAbamtenZ6mSxQfEH42Xk5TZJzfRryLXKce8ZtQ2z17XLz1nkQxN2bkj
nRwD46nG4MhLR5UjGwiHG2OKrzLvwKXDiBvtdBshBggsWMoOhdW/diVJq/3O4g/g77p17BFU8bXQ
DwQdgby+WiUV0m1edGpPEBsXnN+tj3ebNqC3x7wJV3FHeNDaOkfcWaBzQPPWsR+OlBDKVxUFluC6
nwTxJe/jpAYNWfEpU+zNuGvi3hwYkRKhqBeH5k6RLz4dVhe/2aP+am7BjME8AvpLTpQsbYqUHG8g
ZrrRRYctiNZE7T6t2giNaTSQOSUqdP5qAlfNQmKDNSBpzBZ9zSEozGF3TvuU6+wtYqsOBePZZhxX
bDpzkA1t5MzqZWhiD9iorhJnnrBwA9fG1EyBGqVudlex7BOVCKrlS39YiIb9GgfVKvmi3J9db0Hq
G0np9UeRy2sqbRqa8RM1H+dSj25jDyZdmgAb91x4qvQf40/cFG8XeZP5UrPzbKOTy4uF+6nCZ/O8
6KWtML1y9joC7Vufte7LzfuYb4lyDsQYL4RApwmohBUksg+DZJPuL/Or6rB+quCgDAAYlpOOVvZ8
lQy3BKfKokHcDAQ3TTd94RvAXbcH9xDhaGLZgQX1gat2VYenBEggsEhxEFG9mWA0H2qSFFk/Rfvr
CkQI6eriZAPhEnLxZ5poJ2Bg1XYKHTx4sc56RwCuNqEgCZkTiy55DSId4UvMV/wnYT0eDVZMXwcd
0TAeZiaFzUMnfppeuh98uAGD8G3jStUsxB4q+6T5BxWIXf4M1nPYg3nfBKOO+WtZ682obCGV1Itb
19nJ8lKHO7PRZW8OCqhpePO1A4Es4/vQXaqfby1PUNqB1Tk/t6PEVXmw+W75S7KgIPxxJtW/hy/u
N9OTojRRSRA5VqO6BJurDTCfzCp0f0gwmBxh0JdPwxVsxTAyBkIx+W/af0FJUndE0Kunznu6GiTb
5aZxY/Y6MO5m7JcxrtoQPDjPlzy4PFFO9oWoP281bIbO0HVSbylpuMdiP+pqakS2AtZb0iWbEhVB
jpG4C77wf07WMslfL50PrgpieBRxprVOT/qvfWQ9B83eTOAGwPOr4DD8Qub8L+0n6RacyBKjq+Jo
Jr3+4I67PtIs6vdJSiom4jn5Z1DDdDpi1jkxVjHGz/XwIwAZX0abnpositG7U2T6tWMAYg/2rHMr
n9t4j32Mu+dxetDz5CuH90H+1XEil+A/wzW2M21PNYTS9vBAKMzH0JPeEbd0CXkgXlC4Bu8IkuTL
MJ/xgHO9wBo2yINk6osFTCgL7RNDirvdi6TrHC4GQJxjc1EQY1XeQPNVR7bAYbgTqoPJeR7uVA2q
Xg8gevCxlDeJYZkiLCvMivWyG6e3+fj+kbNhfaA/AgGwmvuwdJSZynIVS5CaScMagagPog9YuxZt
mkWZMWuLag5QBY/2xeiR4SVSvz+B4cLtt5/U/6BKrNnG/mNFDjEoDVSFeJJQTcdm5QQe6twEDvyX
49kGgn9DQA9LdJ8oSQMHh7J4tZrLo7gvagpe2UCmbuvgOvCaCdyetV9Px3cR/RQvrwvr3Nd2umPT
zpcfMPErL6XZraVTMex7mudqXrRehWbYQrYxYoeIaZJBtkRJ5bZGsLmB8QcAkqWQ0vnM9e22VHOD
CJ44ddDsA7Hc00KYyNKyAaXg7qtxlblMQTip/cHXMUsE5WTOjlQBsoertTz6zpuMkxG4gsg0qI45
gbqEng2Gi9yF4NxvDF/UP85p0J1l9lOxXQyqBun/Zo4hlYa22fnbGuHUWX5kcf+x4wkicHo1IiFC
nyHidt6K5OR+PhK+E4S8C3OrKQwZjIs55civbviYjrC1LEBuxBxuWTOm1byaGL09irNdEzswGZMP
8NlzrJm07kfAtdeSOhrhq0bjdr6MdjkWz+Jx3DziuSKMBbWlj333F8OATHJfSWpiaYLTFpwByeW9
OyfhbytVPuVNe2OuSOfdQIQVYKzz6mI/DB72wRA3yCv1XRZ7D2rREbS5eNKuaYNGEiwVLooXZCVe
7qFgwNOo8GmdFeByP3+DbfdjzpyMKLkosEXeUU7BOwmOMFQuMvTrm9r/1BV914TKlUIXDp8aG6Xt
R8Zl70VBod6WhW/mhheIoyEQl8UI5AAA5EW2Jrz2mnghj+XqbSjds5dNaXhnVfldQq4R97Ttjv4b
PFZMug22+PwIL7x1CIqyhDs7LGKikkqmr3N9j1v4YEzTfZXOEpak4sE4Mac12jhgNVhl4pH5OTjW
+gA0bkfcSc1JvjbfodPP8IiIn8BzG5crMB7khGV4+HWBUJeaBqKXcfoMRJxacAbohtt1K2YRg4lo
DMwJcHWjnPpj4AyltEKmHcuHkJqLrJK+AGnokf6XYQJ9qPDcq7fq2DuBps+UM+KcLFBYE7hAxxbB
wosBzWDgNC3cqCgngseK/zt80IKV2ZbcsnC3JyfH2hVQsvvYSC0iMtXMatZhpCPTKrU6ftg61vug
0R//nqGFZIH1DQIZPecwUhtt1JoMdrxjMfQXXKnkO53cAWZeD49iYNE2EBetNVD6N7Z6b2xvgnGm
rRAAbDtYChAm/m1lZLkd5qKSF8dTR5IXGgZPn2MX9AZ5UieHUrG6vM65xQVVZsDpVk1dehYPnVp3
y1lMJCztc19Ijp8jNQiishVf9S6QD4S4c4v9sNHCCKp0FtS6DU4WIE+C8ocjpc2bA+LzA8Bx3UO3
y+pxLVyiVuCyEpXJ7aGiTS9k6WMsAfTTwfArU0moJUAWBCQqlj8e1lDTq0Q9bq5FMC03IGS4h7T2
DqTkGpxlZ75rS3uBCqOoXuTPCWx04sjVsgrGXqe3sOsG+csmAQcKYecxsTY9DCOOh+2/Gpqi/tU6
ywhqgTUxNe+bpfcFd6OlrULtzkZv+VfJJLylGNbEcD3Qgfdejlp2f4qxCQ7n/9OVsNhe5ty9pkXS
07mt1Pyh3Ia1exmKmIEY2OwALVmtfaaESZuEXa2bNCAKvfGZvwxADZtBb03AtcfZGZPP/9U7w5lQ
JBMinOHZiy4+cU/yUxGWvGW6Ode++mt9T3ZBDHHKea3JGB6emj5JmSw58BJdaSBBlBGgjY0kgYkB
ty35iRadLh+cDjv9rLK9blqpVGWunJ1vL450Fw69DdpmK8df91W9NYUa6uHatJ1cas+In/1pzJwX
QvmOeV0NfO8TdC+qJu3P98S03Xae3ijlzjVK0JXJNHWjGoCMZvLPAXGDNWxq1LAReE+ZJZHygukq
X2y/sSGQ2+O4+SgPaeC/Hf7ICAu4jQIWb7y9XqBJK8ZwC6IMnC275M6vmzJtX5Mo7ADSRwraacO5
qCPsIZbIXHmW5YmalHmCyabI6Y0P6oZeFdzOI14ATaNQrT9EiCu2Ccxi2+ykBMqJ/ZTFlIXbaMiQ
u9yc+y2Y8vB9CckWfo3/EAfGPQMZMlazG344r7JBBAfYK5mkdshFXWTjfMhoQ4v82Ych0h+hGmNI
ycCF1nABrWZWXvyRHBiq8Hk7zY5LDS3j8zKJe3UTdO6zOCt0PCKK10gX+CdOl+PW3yIfAmwGjLCd
rh1QDSqrJUktqmhi3kY6QjsU7nsiLhaSbFM4VnT1vMNCI8CXqqNAh/r7vIiTryi8MkFzaN9tuDKp
XrdVoMkNiqRkQPhHklv6ZKq9Y4Z3qEnVRVcSGfqyxvsj7Zz+XmY5XQuM8Yz/O+7kpuLUGzIvuxRS
R4Dl8KHgYGD2iYVtxRPa+J9hEYITI3G15jrFwVjF7Z9w7kUQKtkhpHIrWmnO/HyC3IjBYE0kyjRO
HaQ1iMYNrdUoDnkQ9JmTvyp7z4y5wOLL6NYyXIEzGCr397IlaN9L5OoxCimSA9twknOU4CwtWkVa
AiJkLhzRqMLsNXnj43rmDgeJMdcnbAXEGgNVP9rxFrs4JRxkaCRdmvYY+/QBynjdcr57o9uRG2PE
mGrNWgLgobCv4cJHtB4KtDvyl3lazbO4XZcql+e/d6qBnY9qvPbzJnjZh7hEawzeel4Q3nms6zVJ
TPgtp+QrIufZmv6CK8wtiHFR3vOyYkbcN/RLTd5HrzQRG1xABZOCYNmMUTiHiTsINZsvk/nKwJg/
dlBH0EWku3bdsrBf/ji5NHD8FfUB+e0i0jacoDCwWeCYeyX9Bvnlx5Fiz7TYr+fe9JxbNStFs7Rh
xHSuoHimiztFRSp3O+po37YaptpXB1N7zql0O0dzkkESTNTBgIg8JI7ncNPgzBeo32dr1nkrsF8x
q1FyHBoo3nTSw/y0BLSB0vjhxfcWmu4lxrqxzdVdtEa9tENIzdJ+MpRtgPL1eqx9B9u9mVD3L/bT
nP2A69K16y4ZsyFtxb9Dx3m4qylLpHEaf1qpYW8Xaedc1mpPfuUfoygReDHCqMEHiAHy3E4E3x/t
oJnCeOFlyuUGCVVnHxzFHY1sT+cNYGqk1eymknnd5G1KsJyIAPkes0/mKfPutiTjkGRU4Lu6TKrD
XdTpqinfb0JN+6hPeQvFd0Runp/aDzcO9hS80ojvvPwS/47eUMYZATtXl7hYIqRw2x6v/ihUpbEf
IoF9Stbg6LsTKuF8gMLgr5ah6AprDRp5GBHMqoHjJ8hOMKzSaW94+d51+UeoKKIuDAS6PNgIStXc
XA6uRrzb4FL+zW0EoHL+aDXpuft4xl3hIMMBfSM+FQk4cOeljS0EIhNPKBH98dCGW8CuuECnlHFi
oVVqQOcJbWiDexe7I8HeQvR7R/QIG+xr0NdqyLJczaFBwxxKjYYA3MlqlUyTx2iXtbgoiRo7Kp7t
FZZzSFM9ajEweFKxl94Km52oPZV/ds6zCplweWCVYm48+q11j+AVcSH7QqIlgvZRkERRhgKe0iBr
IAdL9irct6ZqhqBogsHJw/jBmDWXdd4iyOs2CoRdeGtDvfXaiZUx4UXvOyXOO6FmQNyuR32kWXCj
J4SfGKQYImvgzQp9ZRWSuzpNXuCJ9d2ZuyOec+ZJSg3F2FX7idg/Nvm8F3ELZdqs2lVkRM3UstGJ
gkrbk76tGp3NXcSsjoP2XRbBkyQu4jLSn+hz7TTb1RXuGaVSoX/YSgIjTmbzMxK4rSGo/OhJ6FAw
QhYz6BULjUktDGluoEqxGQ26lmGgsbv9ZXGYGpEzIpmO/NhsXgvrjiC5v6kvYXsP8tDmsHeiv4pD
gxzFjKN9k7owjDMAv0T7Eqg4B27I5Z9Cwj6FBiKEAdmrxQJSrjD+TzbGVWhJy6iDwe6xPIIeR0aX
tkUxBxbvx+Zd6N3rZFyhbRFjCBta132q9jQqHidEKgAWzaN+I7i+8eMw1eIMEPyI4IybhAx+Q65M
+fWVREY6qUhT5HHtygeHK6kT2VkqPim0HfYno1rCHsgEcoXkaLxEIfWN0Mf1qQQOfsF9b1A/l87H
y39c+bhhHoeAmZcma+2IbqCluuFMwCu/lN8A3ZWL3MWvlCIoCJnv2QCXBYq1/GQs07afuWaJDMD1
bbAckVOnRPq0OwXxsH50xBdMCSkfHQxbT8fE9PV/fsuLJkzZ6X6bXuoZIvuQgrQF/J8uQZQjuqHc
b+5lMculidLLlWa6UQU4jXjwWi38EPoDGT6Urd7Wu/chuRZ1McA9y9fjw8FOMMhawVG8312SyALr
hCWCUuT1VHDagfO06VmwGunHo543PNsbt8D5pGKQHhi/+jMQ4Ftex0xNKNM1olv5g+MVE9F3Ct26
JZii7OSAgkWjyl66XiFhU2srwHo2G45xTR9CHy2OeHOP1gG/pWTCuKcgvQVEMtl7H4Zk7By2QVFm
F5KyM9vPhysN+GSH/CEfAdOsnMfaTTE1yY8ocVtKLNlBv6l4urn46kclfZ1p22DESY9sOa0P8CPQ
I8CoSGQAaS1LIIb1v6FTcxMIwPBgNT7iEC5yI35cn4+dGd6KCEToWtOFtSDg2D0lqSKlNXWojPT1
eIe84AcuLWNdPqSsNIHoZTqDq5wYL0jB98a+piKDwVm/vnGFKL12eJYjTx5U12g/jlLzsUUQA4vF
mcBTdD2HUNUI33eaS6EERQVLvDdCOPV2DaYiZ0jFJq0CZ2IuZErra4OJ308VcM5U62mJdX5mKxQ9
wtWbtMn1eiDfWmQr1pAEJ/A+h5B5NI0W0uVPwdJ/5djhAB0JOkbOpXQuBe3XyvLykvHJDYQ4xJR2
GhjFQyogSbp/vx1bRxqyFKRPOff+0leIKrmDieaILQY4NvAibsSVw4Xzf40AW1CKb/HJwc9XVe/1
s2/N1vNZQJokvu4y6Lgu7R+sybCZOxfzj7vwKyjmEkC8HsFAGZ9eEnsZDHpgX3HNf8jsy48Zirop
rJXh4DcEQfex40RwwyGgtts/IC0dBcvMwXZHwhEv9UQ8IGA6vQQ1EV368GQhqIXu6ZnE8lkrpo0R
zwv56pTbe0S0JkQNVPLmapdMs6ZbI6Jyx1wTq33LMkQEgkfaeLcbER7hfEwTUB0w8apgKAQeNffv
X7hl2iGu3PT5tvTmqeYQnsUzqAvPX0bwJkkeBUtYzrzLCfVb2O2kvlZ15rKvclENZ4bM2wmxcPo+
v1ZaRHJwul+FTHUOa+Aw0NDoRCTCGKRunMkXAXpGQgROyhLA0S8gwaxHaAvVFcD6wCxr5EznPkK4
ogTMbvaKOPN75eq027mu2hG6tpttIB094s5kJ5ANcNXgocz+TbFABbDSJ/kPMTILcamW2aFf0rfM
/WfmWhfKHqyE/RkpNYidlOEzA88lnbC5v+6QybLTRvUHD70r9VMGIKkSzmoUQwgPPYNdR1uZnzdR
seAN9EMhBJiw131cgYw6d0LNGyyKdcIXhx6EdWjeWMi7jCtOmMmpZL0o8ZAHXQTS+9z2yfYCW/dV
gHlBeYrbsBoDb6ERklHFVTbq3uTa5heHLaDMkOzusXd5A0+mKUoAelUvqErdPcVIDG0DUJcdVxH/
GryqusMyWXWlcjCcxjRlrDgG50sUmqCTttzvd7f6T/xCm1XW8Yi0EW353jnEsODOQt8qk8rsNtaA
KK4HvW3q183q8SrOEGjheJ3sV149j71GvfdJnYa7uStQ3ksIgelTwiKQLWAn8q9dp71xuY2wwlwH
SPxYiRwG0qeHsHWYpSk+0w6MsIXQq4yEo+O2RtFnNeLaj3sCnxR05w1OHpYm2asNOyrGo3kD3HgC
K1JYVw9diT6F/XCTtW8myUBQWuYm9llRlenE+pNrCxoQjNHUnAL2miZCHp87q1HwnGwv+TquZlj5
WSDhnInjWVoOnWVtPptM+mn7lVMFcBWGpjjZ3rwPNVxrwv62toheuvyRTh7FDNf2etNeS1hWEh7l
xcwZ5o6YQzvpUYrHRXfV9Fi6CPCLRVUKsu60vTaTIfmQva4vITo6WCsL6qEah3VmuXT+kQ5ACSiC
UjhkdJICGBSXFCPKKPHu1F4D37YqYoakYsFUH94WaoMnQGEJD128HomLyOlUCD8XZbd3Flwgfax/
Q+cRLnDBwMXysOah0UoqoRljp0WMMqlfWy/22fqEu6E/umHxm+0TtHOTTofj4gKDwjhDMgWT1MUO
djCNnFHOUn0qt2xyD7Xu8uhdQh/OgFn2RtXIwsFtfvqDU/+DabLNI3SGW8D59Xemyx8OA5uqHjTK
TJ9nQozBf0+s4WGOGxBeoGXncnUsh9/FNTeFOmRm0jUVglOghVE1NbcMz3pimGtZHIe4/HhOS3oP
rdUR/Cko4QpgjzyWffL8qrflFIm2+SDCzq5I0h+/8CZtUUbCdzGuuLBFdM6RloknYmyP/LrBsYBm
hkakZQdvivLjpwgo++dhbt7kx4S6e92qYzmC+BhLvcodQeclYBveozPTx4f6aOfSOvwH8qDETx+L
QyqfDIgLzTU/rKmO9W3IDKDHAn1+/5ObLCHrHb3EfVRZRe5hdegWS/sOqflnoi4IOGPI0ps/flwj
iGI69MyQW8rELEJAXoSdB1D3PrP38rXhXCZ45x974iTu5v2BHPJI7bm/N+VgBb3R0GAtch9bpXkb
Uvh+JmV1BFrInP6c8MPprxdNb+wgjOP614kygpj1XUsheEXJQA5qdndzRpd8ddfstjtgUQzaD7AH
ZVQmykb0Sg/s0hH30zB4RQPRrEi1Mfk4ghzcx0UIdwEOEUXqvwZ9H7U99hDdwqr7nlUtxpGPB/1H
awK6zZknRhVrYTPOWYkKCBR12FZo+KI4hnCkAVH2dT2X8OYhEOnAy6/IRjNXpAX16JXLscjsyam0
ID6pjV/PBJhAS7hJ7PD67hJ37x8ndIrKXQU6/3q3k5u4OM8q+m9RcS4sWXBIT/Er9eETjJMPeBFp
HrIJXinNc/Q9I0RetyJruCRm18gSVYz41ks7CWgsJq/V9UZ/Y59ZQYWn47raMN4bpJC/R3P+H0XL
GIeP6/5tV0Vt78AvJ+kIAhesqerrEriiO2sNlmWUR4rU0QgIk3cDNL02tXfMu512dk+AwAiLJPfc
Nrc6Ohr3ncDFSq6FLdoB+GAMteD1Tcqw/1gQiGX6i68ZkL7WEdr9j0223Tk8f38Cs2OGqc5J0z3k
Wbt4LVzkbA6kdYiYZnjzAc0YDastn1wHSLYecSKM9fSIC4swANTjpfLfwF4IZjqgQVK7hL3VXlz5
19/y3wjmdedrNbRcjy+KW9JepSkttkkG+ZMQKehLguLgzJQhDYo6eKSK13IBipy+dhoybkgrZNrO
4lH/whoV7Tk08gVVjU5+EG7t3bnJjFhClcKJbJCyc7Hus2slG91cvKCDv7DMCBDimBtC+1pCDmja
1mKtB5ALfRGPnPz7iEk5T/zI1qJKadqNYihw1x5L6mcmEF9XQO6T3xLyiG+xqNc5XqTT+q47y3ds
+46pe8kNm6beuHu5Lh1u48DMV8FZUyfcvusUpW+Qk3YXHCW73NJcJgdE9wk4kpnRpz3eFKEW0NLo
DFcjb+VsZt+sTTPztuf59uoGvN5db/ogOvnCTMcVQhAAubCU/m8++SZsoB/ITiWNfXIswWL++8b/
z4rbm42RwQpuQyFQWKvvShlCMVdt1GLWhMsExuWWNekYczUvg2Swsn6NvTD5CuMELDgS18q1OY6s
2cOcBaHEf40aauDD76hotkN8ar/AifcaJs8bTijsHfKobn5vcqgF89go8jIjWtMD2ayKUD8IlxcO
FXroP366mOPBU6vS095rWQq7f6dMw7MxIAO5QslHOycYyY5G7uBzRxzfPhgc4rWgKLQ4MrILypOl
lWYOKmMZ+SCbBlkf2ybrBNOddqwEoTC4OkJIaeILuomUNym7FMkE0he5pAhcLsO+aNWo0NCa33it
hef+6Rz1mRHQuJSdQiZL83YAU31B8KT+g/ds9iYaMPaqLnTc7IJDW3gpXJKkJqEmJHkWuwtu3J18
0B2N9Iwq69Yy/gFlPSP1Ll/5dNQxE1aTK19EC0vCknYCV+DZ/XSGL+aLYAnK1J5qkb3uW9HQ45Yr
TDiRM2PU7+rCJbcjtDPVxHMke5oX+PoomghMlVwcGq87LTPnPRGZpYNblam4f2hE9MhB8WGz7sZt
zmjj9bID/0wxIzfEhzKJelij86+EfCkLdvvk8pzCGW6t1J2D56YMDgLSOuBOUcwc4/ivBhBrYSUp
SMQlnGT11E0LdmZFjXjTeE24DlFcKz4QS4ChIDQHaw/7IOztYFnRL4ydU4kFuyUTgkQkRZB6d66L
1lKpzzCYHyfNqYmKf3vpcSWlBIbMtN+dAEbO2ajxgeNeGZg5j9Kpd/ylqgQpevmiGc+Ny6x3+o+9
xpFyn0bC50RmGJdp0iKtPpJAWI44LV8p9Fm69eQcK5K+e+49cPwTAku4sl+Z8aL341Pl5OjcE03f
xrFshH1h3zCpmCiyFEM4R+7C22o0nX6Akwo7iV1vwEvyGxGArkdcEAswCc5sx/tpUvT9Sw/8G/0E
r/R2B7cVZ+SWdnyOux6rBDCyxmg/6RLr8FcCJ41dqanrcAZ6GOi7I+eIQ4Fr7T4oF3gv43xhAkx4
BtzfQHfUlk83bUfZLOEQdelnFKomOOu1nn7Lxla9U3Sd5pU+V8+MVHFdS/BA1A56eA2rhXraey+l
9X4EQYRdQK765Bb/gd9haOj/yAbt/+w37bkxUIQ8aRCua0uINJiGj9+mRr4C4NcA8ExX4TTy+KDE
uPGfih5BBSCf1PMSAhLgD9ZSXVFUp2acp/QnkinMU1a0H3OPIK1pCbtzYTllYfIgWrLti5ORt7uZ
xq5w5XsfhvZv0eMZ6lBl/zHlVzt2xnZm1C5zn9moZSyda5WTzMn02YkL5ck8Rc6JbpUQJ7y2qngu
HA19+VkLv1wG2SdrmtOeBBrwZB6yiGDIf2CgWRoDpVLOq0Xalv7RxWZfetZ16XVGorh9Bo08s4Do
q5xb2IInOEHgDLU/jMIZKOVX+TOFG6qm0ihXj1ybuEtJ77L6nOnQnWCJNImEwHXysWIjGoR5sOnw
7z4SwC43ud967FR8od3/C1d1hPSUEvWgTBku01vgtDAriGQn4tcLl78H+ktZkVN63/k7UQdmhqbo
kAHkRuYJKQUbixVzjXWSHxuZCEBlhLAxoQVffJX+1mwmRYObFVb2+bCUwWqIVvalUp8utgj+iO0A
OOTM28cwZ6irJJZb0Bpc4f9ftBTQoa4sfbFk1L/pA0hMLV8gYAS9OTUwg5kNe+EvnNvYj/e2FjwM
Vq0EQDhkPTJjqWLUGveKfJINKFg/xdfz4uITuYg/AnB+ybivWFlEouUk7AsTBHmlkB8oQQ7zR8Em
lIvMhuvqQbgHOu0CmVjxdIeXcwqtDPuFZzhJkdF9KCq4N/9WWsOKb5ReL9O8A+e4X7KMQ4mNmKiG
JXx4jkMH7LGCpI/qnu0mp6AcNfvQhod4zONYRZgpOmLk6Pf3JXWzCPmqltDh5e2ILJX1B5ZDDwvp
BV68ZzoETPI1G7inIQaPoHkl4i2i4zV7KFmqvay0a9sSZHqbAfxaCiEKfhApx2M3dUR3Ig+5MODU
P/y2MEwjtfc8PjtoOGqXLmTqVNqK8JlF42dZV4fATzSUEvSHvznSz4F9ioYVtN1idyjxduOcEcp9
9dzZdso8WkhXrpOvujUvwd6XXaGg5qa0/4lG1gPMzy6nJNiaLeysFIcHqUY9AqbWgTXPpW0YEqjX
LbKo+lON1+vODNO88Lbrym8apnIPi5t3m6g9YO35145vO0iNoyjsDpv/OShsWc4vxp2XRt8lbW0H
4mmBS/YYXznp+sueYhlIOV5LZnvoDZF2vgqtBdpJtUbw/zOvjrieFqeaN4JtKmCsQx9EV6ATcw6/
qJppbBWtExP8qGwAGSaSUNLm45qopsXvIMOktH9NjQaPjWDsC6uB7QwP7QimENevGpY8MRp0AkDr
YZ0Fp3XR8UGJ69JgzYI/spBo7nFIvQItmGq9m4tvOJRxUyblkjAQlZYnlU9D4HocANPBR7f87kg5
mPu164mQzjC5xetU9YAXCPBZkbPVaWtroz8+jPjgJ2zLtJQbIxeoZQfMDwmFzVeVZtoMt6CDF1w6
NnFhIY0oukEE89UmUDu2rbOoqxmlkvSAVA97TOp5qzTv/+xXUU7ruxMjCZNXTv7CwwKXkaf9ztjY
g9jv3sH8BF4FST6xl6UIjR8ZgrbKbPngJKEIqERcMy7zFVs0uS622NWM2XJz8zTvAS+DqusxQ+36
pNNoN8HVE1RIJNFNata1hQMrwZayjBtSSk/FRJisAqTCYUHu73FEq2Ay2i4bQ9kunti5YXcsKL0S
TUNLqjscR5ixofWB5/cepbXw9A00XmcHuRpJZUqEOHOCTgRFjWgRGlF1jzNcLgmGdbt58EK/ZtF2
8nwrEkjgrP11eojHCBe9Lz8LV9f9OduWNDdUWVapQUJFPOy1bZs/s3B8yG9ic2bTxkmftmDWm72U
JXnCcLS4g8Yn1/fFRkACSHq+XCJFue8DiPeuWY6yoBtu9TL2Mo1M3v3pjJqe4kpUj34RXnIrDw8E
gxuM+K4NdEXsnKoO1FiIagINk0YFFkMWhp+PnCfyLpQh7gQ+WN8hOT35xRMEdOVQ8Y8ff45qmC0h
nsnR4zRtKAKYYtwJ0khhrnxXZchR1W6y/R70A2riUtqYaU/zybvg9lAaRwX/vqrHIAIHHb+p/CnD
i8nKD+8qUQ5T5trLZTNCF5Md6TC8KKeLqC3inGZxKsu3GsdwS/+KN0kn29Sv2Tdstk+GmhkiU1kI
w0G8xLJXU9FYZfiiP4buMJOBxjkZF35oPd1c5OzQheFoIqo4eLSUhsKW9IXbnYhzRpS+AKzHLgUW
KaPq8//+DYNAwX54hCJfkMvbF942x+LXXP7ttzLTq6+BFtQpEBGp48bZTczCfh9cvbjJDLslGCVg
G5AL5+ft85H95ePp83GgFh9TcGQtJYqUpfn+eFztNEAdkdP9vRK2//YrMGGDdF+MLX6yidyoHlq8
sDLOqgL4ApyzBOkDHiYtYmClB+igCBYQ+sQ0KBNoAICWRweT/9t9hH/1ppYL+5pGoxtRH8i0VI8O
odS+2rOzGTdbE/ah0+1EGu63bTG+J1VxdKUCmjRXJ+QzfiS+64TSI/FCUWDt58ZB699yKutoTj2u
oHB9rswUdlsapQkILgaRlgbUMAuvcRJp4QOf3QyALvdbx1qiA1qF7MB1YhZTG1x9YI7mGGXc4Rcn
AtC1Q3BmhO6+lP3NfhoghHHXRbW2Hjzxl7qqRsUftsXEW6b1fm1pmV2xZhw0fQaKx4as97Mp2wOZ
hsKi7APYJ6Hk5Cv8LCaSb3nKKnH50WYoQ7u/uo+bptwyzRqTr3NklMbzhorUrdVE0mKD4aivBQaE
Z+jYxj5R54NoTjJU3EcthU5VkQUwnr3GbOV7FOIBLbTtPmIjrs91OlRMLDvWB7x3j6twqKLdGOwh
RerJ+Hy6TANH6ZzHgSYVzkXIr71AT5ecSCnVxM9QTNwM2S2KyR51TBEy3xNbZiL2tFPDYSIQdSLW
LyTMCbql64BQM3fuIOtDdHfsjx7Oi5C4uTHfTTomXOrdWkBVZmwoVjo1YbdX9UF0qSZvfrA2+N3Y
T0FfLPutI+9hBk0mv/WchzlJN+qO8M37x0TQfW/G5ALNpqZdEc3dstzA98Ami2tQBzWaC4XuPMjy
l83FIwP/Ug5GroIPRJrXM85cTp/XCUdnlyyW8Uo+WHb76DLJ/Yr4VVhNpz/TflmtIZQcRaRkgOlC
VfreFw5A8uYPmKW6x2fxlF+3mDQJbY37lNfUT/CHhnPIyUvo9zIlX3CU+rRwOFE5Xa6VGDYb84TU
7X3lCONp99vNJgz1KVHVf2YGKCefOHLINxD7AnD/qceHM8/VFX8Ao9OE/r6GpDIrWP9Vni3Cx3sB
FNWIaIN0lb1F/ZPv74v8C5uvVvbnBH2UdE/MVMdAL8aKNz604188lUMGqLc8u/F0y4k39MR9IhEK
Esq45HNwA1s1zTp714erPOLkm96J9Jois6E3iMyMIumZzS3tDubmdxuuww63j0iywvfjcDYCVv3b
6UJeRJrPJp/Dcbr3ppFJkKdxx/g8TLyYyzYsDWgADBIDH51tQrAZ3uP1yaeSX2qDK0TvM13rEl9P
ga41BJ2HenLDKMjlcbeaV2vVA4PoBCYlMH4D6HO0h9we495Fo0hX4VydMYa7kk4GFoU1Q+B5uptd
Y5Le5StqH10kW7bD8noL+bg0C+ZfuYY4caeAa22TPH7hbtffFg7PfIrt4ANZSfO8MhzEo2GWz83Z
9oSd922UX6Qp2C/WPFJTMMd/+xyAdOY6u8Jjzkg/Op+G6pVurdAqF4f/3vZAjieCLD4TS1NeZZC9
nRh+DlWHzOmxPQFYPnRCg6mY6XsrcJmkkZzoVmjXD4kzEkZ++IIzxZrYhnF516cFBSzCnV/QbfhR
iQ5ecS0SG95swth5s37zIkc6Evx5SYKRwokGzNIcQofez8ef9oTG9j20bcfN2om8aF1QAVcBkKiI
/ia/ZlqjRQShtwLWXj41arlJkDL8ckPjSBQjHpsbx6ie0fbRtOrNQLNW0axyNwcc3glrp7WR5+da
oekD/Kr/Dlf3SihRwY7Hq2/gac+LL5mbzZ+9u9cSAdXXW98dyMcldSgsDyfNATbfQ8loy3h78ejJ
K6VnrhQ6szTgPa5U/JR7JLGAJ2g63PQjZC1Mna42oLmCUaBMbwyYJNX6ZQy2y+w3Mvcvetj7F8Pb
eVckk8MT3CwWUY6PRwH9xkMJ7XoDUjFGbJ3tvT8AFCnhjOGN+YvCkXd8oa4C6DAnRxu3dfGi9sLi
7D1iBbrJ16AvrmS6/EMJ3YFcUepK22LkYDvRmr1YQNmfD/TI8v2rbVwBMNYncm1/AN0vtetFk4MN
xfmogXg3XGXWcj9RPsYUYzaJIoxJ7RrK8TrANOmMn4aWMAXyPq4Ykghz91WXasVUe2u35b9ha7pr
ZwHFPS3KeNtHF3nPcVBSC5GDQ6uFt6zjuqqv5DQ3Xa3Qb8cDccA7OLrw3Fzjp3ZS1qtQVUnxKqcl
06E9sQDkweCh0Ext4dW3f2HQJKPeXwOHxvKH2YuXEyblEIPPoATBGUIwXoRh2shhVpPYmiGMHksB
BMPK18RJplYdPzZB1MK4akDKOTIqH5r+n3ovGa6L45qFU1dJT6rsr8zmjHAH63ISwt3SrU8rBCeD
a8q2qjAXjNCaXYcUA5dkj8RW5SJpG/+Krly3lbEIyMiiwwntHJdfsiSxa7ADy6ZzJps4STatTC5V
/WoGTSKAT6sA/puEIIPxuDT9TvApbNou/T7U05PA8Hb51H67GGHz7VkbfZ/FqWqYPTQrbzmjgQhn
HIX3mkkQgds0t06kKjdBm2LmDZbTkMbQFz/4jSv14B1VyB7DCankWP6Jr6pV69G5g0Fyk6AipSau
E+jmHKkWQCzODmW0rvylY98mRDgNS/un6vN2RmeEy+MYONpn8MNp4qeTm1qW2/A/MWLbrpNjPVZJ
a1u3BQO3c5Mm14RKS6bjOaHl5AH7j0A9XPaMunkutgrJSjUVzMXe2Rm9lj/aiwECb1WsCtAmLpU9
iIQTrmvh3H0GsFhh0sMg62ikmivo6wnxYPwWiQPe2gC/sk1bZGPUrhqKDbNVsmVJcs65fbGf95Ps
+GwjX0ggcp/SyNoF0dLCPLSE6VU1ohiVGqsSGbqhlZ3ja6ZZ1IJJq2vdFTmlJBJJ5YwjCCaUAA7R
BttmN543iD8wp7gEF3fc1mIunXSKm/UOn3t+eel+ApzIohs/OV7FmqW1OlYQJwkatk68eGEMRiN9
ROJ5Nq1xWJDUbHDZqSicgcSy3J8RQJn+mSXDRmZdmNtlg0hZg8bb0jZxzGpLIuHV1hdh/cTraVXu
n9X5RVDnRt4Uj7jZ952VlXP15FSCcmUr9DuuVOEek2RlMLC1G4Gr2npUWxsBmIm7r6NrC8oywvTZ
JZALXeRBipGzbb+GA5kSYpguaUv1mPOA62dn7uJYY7eFZTcQW05gxY9B6S1XTwCwOmm+dzEJR2ly
nqPvCJYtafvVwzUtEeP67RCng3qFXt5uRfFpfgWOdhTWf8PQid0XP0M8dzyXSRajIp6Nx/kD2Rol
J9ruGnK4kTHcgmp48d64W+JHBCDNrxg6iU1+9OMhMpI1Iqf1zsI87kmTWs8y3oYKKpVeD/S5ZjU1
mQeWojAtjfOcAgn3EzWiDdCT/RNbxQ0bYKP72as4/DZfbOTKxS5czedHpFUeQMw2iPFu7rkPTVZC
qeHHgijDjZUjDDYCT505UF5C7vC3Z5NxKeA61GYrjxHjNzgnrkf4e1bXlBambNFS6/1HHngqAMOz
ws3GEc1K/15hOJ3FxCozS19hikJ465abfFbfb4UymaD8d41s5eXdZYh4PFMPwAHSI0hTdMHdzfdK
9kjXkGSLS+rS6UzGKmQGE+ez1R4QDmvmgwpgstPA3dl0NcR1AQE+dwVCUkPxto5fBgnReBD1iF4m
SkJpNOF6cj/VKB0MPKuPttN46NpGx1ZWKayZO9SY4WvhxQv7BdxNsIJiJZrTlA6T5U12cAnCHsZl
8oni4aWAmBlKwwoEKjNOeRpvvVXnbfR9QZ39l5Qey55JX92lJWM2E+EPpsmxhNojTPy66tMnBbje
9YSKGlYJo6LYyYgJSiKi7JyXSBsRCWk0kVyH9kjFGoVRYLaB7Rc7KqCBhFgm6s1t5/ph6lKXBlCZ
CcccR0xMSz9ZH1ZCf8hYqNZE2fTAJ/6+T4H3YM7sOLifE+7wPqWrbejFLwe8g/x84nps4JUQO657
R+mUh4tYEvWCn/AD/hvMT5C44vjNZkecIf1WvcHZ//x1/Ss5phBEkHhkSC4Phw6LzVpG/4eMdxiW
uVGqouQO71vd3OS+ImkZ8XIceNjXInI+PsUcZKsrvzGB+xKWTTW3U94oPvqHlngUF87uGDgjoYmw
TDuykXkZ987n5zdFMz2wK/SR4II1oO5tRGLtqlebl80NS0RjpWR9SyzxuualOTlB1vXCDtG35f1x
XAW5RfD7s5qYcmRvZ1oerDjQoatMOjsAztmxK5A+TFYAerF4+iV52NXR0Ia1BiyVFJ8DRR5QXukG
TyuzuHvdPe4xMhRGDqFYcVwetkeiCTZn9eWEUZc1t1+PXMdru404u4ad1BNXv1Nq902ProJDv0+n
zDuB/sKbiEGvhhRHiBjJRjbvhMRBrs8w8py9s1XPjEunP/xrb5/Wy/+TX+1WGaOVoEA/Igk9zR0e
1MCtclfKv3QUNhMukS++3EPsgj1KNeFg21cvu20neuWA+ZHmT1JFIZ4viOJHE+nKs6mcVCNoOzdm
t5+zCVFguBP3Wu1TuUfOpy/FjM3D7PvEZ6duE1yahYzCo69GwAM4JtMWL4+8swLjMKqUpsUfd8bX
Hsk3rH2A84T0YpypWtKb1U8HU20AWfZRX73lgpYj1rgfiqT2K7gkqm3oB4NZwQuYyvMDggYynayz
sqLUd6aVGbWw7c0kqY9WDHp17xZ8Y2jie0f5wVEPxSaA6BYTUVW7kBMEFkicBPxk1bKZ4JKPESA7
IrePbLa+bkmIM0DoSycdGZoqc0ajaAg6tTxEmPFllmQm2WQqKFJGISAMKmRjUBVtCLsMVvMuLdcV
xckExGmZPz1feRSaiNT37mUj8ov5Yvzhvj13f9XAms3LItin5wK3ZjI0c+XJ1/zJoRq6arItG7Co
HbnwlBTddLP4z3Q5/4zlwNk/g1gjkcJeNDPyVs0GurbHbfIZyXNeU5Oc37zsyf/fe4Xz+1zKmIQb
WL29VX46vjgbNK2qJkUVDcqvl6DssvwKVW331NfeqVYHJHdIJFPBecV78Cz8Bfl2nQYCiXOnBd3n
QU8nGUDxVWwt7/zpdhpkoSeU8vroa1mH827QF+vcDLWHgSPK419I7drflnNCOkVN1u7Rt7lPSXer
hvX1fiFZVVCSOAV59bWN6Heyrum++4x1if0ITkx/9ICDXoJCCf8Dfa9zAkTWdh/I9T3PNEMea8/3
EMu8y5AeeoUIwCQJl5vgHqYp22YeHXaS0F8jMcqUtau2GJCAsurJgnS7mtn85B2r2lH2Fg8RF9qM
+sH4385JRwh6ui2EwGzsJWUx9ty7lbrbEC8jm5UZRUV+AildsGUhcINokl/M8zqFLAdFpqiaSR9Q
8DPQqcvH21EmX0K6O5AgQiZQJVUGvgl3Bf4yiDkZTJ5mqtCtNWqwITRFa1ojq90G+WA89ztUkmHo
Yb4flOsqEAvrMjBpb6+/Mjj7ejwG5UykoP0W8Ymi2uNHgKnqrtZ2W+yu7Sk8FTdgoAVLwe/lco78
7MsycCWfS/B+3kpmvLTjmp8SAnbAO3By++GaCle5vf8WBhc3nejo8ueRnGg6PSWvcOr/RQO5Ec2w
KkgFd8BXxi42KHRWwKw3mGPAVPchY0PRx+68W3A1dbtemyJOa6rvvkqizeQrpWzuG8WPlQnFVdrs
S+/zzY8Z0+59oPWY+5sCF7yOp67V0UyMWM6Gh/I7YyOGozC1xSljF4Qh6EARc7WgnWEYWACyZrFT
CvxRv8eKE2GYagzrNftWqT/VPpYruGKoUPDl4/DlO7fVxt+2oECE81nu1wHMoKGs7sN1tuDkD5BB
PsocQ0DjBLE+CRV5aSJVWxD5/uVVCRuEgo+w6b1PEu8K6HTCUThRfxaDRajH65/AAzGjyDeAoPZd
TEAu/OnnuO0YXKWOzY2IK5DWLl7HO6LjfXF4TaXXENDSdl7zKdqCKd0CeqsQBXCdFrSuBahQvXx/
KBOpXNNsrRxoE+RxtZT4bR5VVUMJ6424SvmcQd1JRpmAvPw3OTVGxHKNW6z87xWiUygsLvp8G0sT
lseNqRczUBKXJMYBqyLa8wtYhH5WxwWPYFcjmClDDs5PBLOfqtvscD2U8t1YTYB48quHP/BaEJw2
DBCwFdEHzkZq+fyPlj7SyptxAWYFNVtrKVUsTtdgAK8KR1DXLh7A6aLSu10WVdCgEifaIBlT/mmR
DJc8frDi3P0+tRKuxfecGDCIPQWKm5VjUwcmOoRlFHTq8A7qODh2K9eFd9PoNjQk5OfylC5OAQGA
WgF0evQwuJ5THLyEdiQ7rlbhln3Ay1tzN3ATHXei+iVCasAiWWyBsrtCYCrJZjtaRG9j3BgpC2Ob
j9EGPrx+/+pRIjgoZasVO3l4c1BJ4zKKd4wQAHCsbS2qTVTS8RriOihjVfdIVHisQXgrnrm2rd83
6ej1I3YSVcc17ZxnG1GoOXLcUksiDpWambhqm/s0ENFKPlbjZOVj4Rr8OIzwvAEaPYCX41XhL8Sm
FiSmYYsW7/0x3Dp97EG5mGGThfaH2aEH+/Z6mk661wfPsNQnJC53600IDWM2zn5M8HtacZjricKa
HzXVtLuy6FBSLulvCQoVA29oAIIb34TWdksGRRbClH5W5+Jqwe94clb1e/JRHqA/oGjgwq56I+6w
Z7Pe46IXMon55/yLsEGOK9INbQer1bZmf1BEMkM7SfMnnIAcuVHuF2Clsvo0ZEFdFeWMM8jF/QU7
Ky4bwo/YZoFms709G87GOPKn97b2OGclXjqyIlR+W2HcT5vfkM05PpOmdY870BagWQkoPqhzMK3r
4GnprgmJNKYbo9FASID5npE0eyERwhLNbbXFIbiZOO0ptn5dEVcHA3yBW6anAlpc7NTXsaGprvBn
wacAbvJYOy3RTbX7xjkpeK0VdaZT0GEs18OMmgxm15pVHBMwlV2BEOLowT0Z5mG8tb3QJb4LljaS
3HpTlEbIiiQbIFKXMa/B2Q2yjzIWFh9XUcXMG0R53LIxah1uNR+L4u75tSzPqbnu6Y0Abgft8oAV
Ok8XdZGspjj2+JUbUV+K24lUm+oXND5I3pguddfRo884mdDkh+RQ2q7q4ffByFJDxsMxC8/9iqGD
LcEafZ3W5CNP6LUpXfjBbf9soVU2uSV2uzeFcaYjW6zZcactVpEFz6mPRlQ1t6GzaE256fT5FioP
knIyYpYL48WiNFPB/QSOomvKfYSIjGKfJtmDUE+da5sKbks6nXf1mhde7seK7eN9NjdFzpR0wRyC
IgmvkZJ9KqQS5V7a/6s9td9hHBMuroVRZKDLAzITCZeHPgGgGCfyL7S4Cqy3gwab+Zlzkg802MgQ
mzhwcqZZzeS8G440tKKwgAW+opTMqacozrBMJ/sNQbGD4MszsFKN4fPI6lIVpQaxg22IdnFk1mWH
kARYMYN4qz71icWGJmDwq3XGs7YCGHPP5sXCPQjBBQATlKBG+U9l4vQQH3x9gTbQ6iRWniatuldB
N6cMX66TUtm6taDJS2x3qt8OuVoJ7fMWqJMt+HjOYZXcAqEElwN2lQ0VFST3kLPcddRl5xwa1Y1g
MSQDJNAhEcuCZdcUVa+/F5YbiBOKgF08WT6j7hIAkNtT4dmNzRU388HZ8S3wARtsp8B13Nv/LyXH
J39uP/AEsXZiZiiQNFuXjzFl/c7yyK0lwV1vUcA2etp666p6ebKm8Fj80YWWM5VMC7RKX87kBevA
bRMWZZNagzgzHsGKMRJTD78PoM6m/05yfTuqV/70wKvPSgn/QO6OGmhQe+xeU0UV+sbU/ONIM4R7
hO4heJc1TQJ3oeapng5pYjmV9L4AW6twWYBq1tTmXtFchAEXujNuOmcyg811fTqvdkwSBh4xCY/9
MdrQGhLdugdSsBt6mFpaK1Iqjd/E/ym93Ket7LizEefb7iUWh/iyoqgQS61YZ8/f4AufSwR4VGjr
5x+oXp96TBDsGemTln598fD9yZHa04dHp3qU8G7ebpigD/bvK9gaRoRXY5LwB2AGEcykRqbg5fVi
v3ErZahjOMhhbbDNC9+Rv7d4hmW1ICTUKqiOa+oJrOXuNpz2gdPebdK+OhFbSeuUoFLVsMyWdJIQ
eWCaxktBRGLVaV5HbPyskyLclQm9PFw7wh/KT0p4RTDrhLL5C7rt2idrVL7nuhjDC+ga4Mq9Dx7t
69A8U3UptPbYvh6ZlfTeiMQUn2hTKQRcb2Ou2FwM5UbbeUxcm0LYJgWcIxe8uyJC7Y1GZi7nV6gD
s6uCuLExi/Y8/rIpo6f9Y6A9MG4oPUhEqXyrr4BlGId/N5s1qGqMGlrROGujqsRRMybJMqBcRUSO
3g8HWItqMaHeEBqKVZXyOLjym99cdu+vF0sQEr7HtyAE3HmPD6mj2HMJ9Y15a8afMMvZ9bT1s1MA
y9R+FrtoGPAUFzBmDJ5e/FKD2+adD3gZpNEzgRNEsKw35jwYp0h0Rv3mfiF9K7Eim+4rWqh+M0JS
oSHOKFedTLrbkCvt9uenD7zsWKlX+tMw0RLZ5N3gRf2V0sgjohUMUhxnZzFr6++I2A92OClR8FBf
1c20BC8Su5FYeBLAUw3BERsMGu77/L0yw9CZ3n1vCh5a9br39gcK29ZQDpWAVzXcwfuI82DUvrK4
Dyy2OIgsLIRwDUbxof9aL4OkMgJ9a4wtlSf7lIXNwqfhtpGEzrALZL5p/M6RfbYkuVtOsQEZTxAj
4EtO/M23yLYwZQzpNwloltAVrIXXZ9aCe2pfyV82dVO6S8Ud3wG7Ssg1pbxl0wO1arK2M5C+s4EE
Fnvx9qISzJ8MTU9XXi4pQ3feQjp6Zcb/F/yD0AWPWNf2/UsFpQKts5qYsEOYEOzc5ihnukVqGzag
aPAIDF2HvhoXOXt/GwiIIg8eIn9T8vO1rJXENu10Ngl9W6TeSw1UgV4OjBSEBGokajagZzmkoiax
MSIA4bxa+New+z1dYz1kZa1piZL4lstGGen4l7MiAvX69NPbSOpIHqjqNLwDmQw4JSwoq4bev6zs
9kqWUCNo+qMWPoKSUMbAkiUVgbDWZy7NcKIKN3/CXLcfb5Ki6oVKyKRL2JsOTTlzC04V99IE+sdB
mbQKkszM7GujEvKCtWV0sbtjopsSPsa0tPvcB+3wurGIYLx1cCewgKlDM80FUaT4AgJ72poEQtQd
IFyr0iHn93UDMsArHRIjklwTs6Jb50gs/CUzfQJVwmRaK0POibwJdd2c93XnkHenAnUzdIGoOS9A
MB5vJPKSkFHFR5RyJODyBeNrRsmU1la5UcA4B3622Ai6vWyuiA+bMJ4xZRDBvULxFL5oxBuZ2E6B
ZIzi33x6ERlso7o5wo/ysQxLURq7q+LinygyLFD6yptnTtordxZXXn4G7xBvFIV6TUkqwGDW2rOT
kuERoLcieL2NUIZZJL6MVhDrGrQhXfgP8z7l6RcPXmwIAn2v66il2EDUnC2j+askYJ1Uud9eJ/Zp
v75wc+9kEm08zLvShAkdH0daaOs2DkNdbaWYKG4YU6QuzUKitXqfk3OQDU9KF09GBCYqgyZHgfpa
AGhWcAm/EEYg34pwOoQg3kBw9zbnsdlUUOjx+/zF86C6vBCDds8FuKv2KU/6xDShj23om1+bUqOv
S7dnXQxc3xdjmOMO8I5mdtJCB1fHGBNzYINPXBW91igGBcKaTftChscwF7j5MnfayGW6UeiRVGAn
T0cA4aPsUkY8ao2HjX3Ky7c5AH5q/MnhPHuUI648U4O/FiRQ2R4LJpZCHLc0NCmytzkg4LnX9K2j
ij0X9J3/iyWnOmyzjM7FIninxiaIwsYl1ljl1IqmUWY2OcI6Ok3NgHWC2od+QQVhLOm4RMMJHoEw
ZYHBLG9VTuLXrS9ksfWVaBSu6sKEo9ANwxJQy7wMkEXGiO3eu3BK+3ZG7Z1aD7LfMjikYEqP4lF0
RhiEb1sHZ4SCaraQEfXowpwXEirxMhaRisGnqRMVuYFxJ8XlfdjkaDcU44vOsRd/GDpC+sWue4o+
nidQ1AFq3XAItvBS+KvTau25r8/N8hDcR/g3dFUkzRMB/MpDE1Hi/Ca4NOvG7H5B++fqeopxw0zi
HM211M6aA+EbdEkR8saDSc5Y4x88EMbsgUMCbDfn/ZqIut4nDQJSvmyQf2NW5QCMttODwENXHCbg
rop6E/6C0NvAqcVkScfRapoRchPN+eeZKTl4WrOGhnWzd0cmvo3jZJVICPUeIn3tsO3Btt2crKiR
tDB53eep0g/fO87sNcZaqFc+LjoTsg6u+rGJ3KiGa0bz68r0x+yCX9TNHWcJ1XHVbO7oeqw7zyvz
ivbzYcfyl3PrHoROCGteck7v1eZMNmCypkNk6EwUT0xPM49xr4hIxcLqOAJ7tzf5WjBoQqxOFJ+T
TNsBlZ2OtK7ybY50m2GhS9Kztrd2Ph8Z+JEaQvxEE0KEz93VHMPg68CGOaHjcE9w3E/T7epV56W/
tIIzInkgNIF24VG+tIPs4oIMud6WZSjgTn1be2qA9CpVNg5AOdc1YZ9YtYa6Z/thQLSXElCa5+oJ
laQJHrgi+amCAjtkW9jevR+cEzjTRsctDPMWhTEKcpqzUyLyaVHpTsuiwpaEb1+a1IkbuNLdZThD
TDWWOFSgWuBzBCzZc/BwJTgMbeCSHkLNm6htgxwiitp76BgYiHa4rFZrUG4r+ADPqs4pNEs15qDR
zvfqf1ZExUfzN+Hk5cPrIW7wfJR+cZIZ9ddgNfnJWDYEnY9qWIVK/dOXBhRiLI63CE1sWC9go43p
zOx608sQfi33eSRewnnhCWc10nZ+YV02ZFn7JbcgCJRSx3PGwAmU9gMMjQJyDbIRXhmkj3Z1BfVg
PouLg9DysTSDAo3ZhJsuQWS6bXZSu5Ul1gYBnjM5oieRSAGu3WK1Jk/vLTm7tAtYlDVjONcIT41o
h65zZgsGtkMhemAQw7YP0V/1GnlvXQMeyv9km2fFHdKPyeUHM8/wO47d7rxYwLLyT42FA4EdDfAy
LxnxTn32uLijH7IV/XJuY0P/z5EPMsneYWHsH4hiaIdFwyz3OYqZevQuyAPOrdFNnmrkEDvJCxmM
v97bDmKBtZbkyfkPXTOsL6Gt9UMGEMFbSot79Fn2kjlbmZzPheh1AI0v7i3+WjDie4ZrLvNq0qK6
6URX7wp7S+BETr5PEzRK8HH5MTko3OKRG5PCgLadu9Sx6IrEU6hUgDQf91WvCqXqu3jYbTsH5nr3
3mR4EWJUNbLgVZ1T0Axw6H2gtUJa79UrbQCbql5Uu/TPQG4kVundiXD9MCeAHWGYBzCxFj2fxDMr
zijO9PGfUv+EQA5tujoeACKs5qsqMWoxNT3Et9vyETRAXbx7/YknRuOMeQTSE58WOMv+LrE/TEqR
bCQcuDMfQkth54cR1XgLqp0OePihz63ycsnkXHc4wvpcPzZ92ba8cj/GYKiRxpE9txI5Rve8pKhs
dJ1l+bLwYQ4sQTMQCw4YJm7UY95p6z/6E7a3MxpIde/BIcnt8FroAdnqDxx87juvL392kySIJoq5
XFTJMtwbE0YmhZ3dn+bTizRMISmvJMowmHMn4pCD+jarmgLVFbl2gzJ3fL7hu/v4+ktSvK39oa9Q
x7SR1v2QqvPPNjSPohUXdyfHcvt12jtsUpnVuW98p5S1zutegbNUkK+Yq1PHfl5IckPqszUIW327
oqEj82qwu5OBHiF2qMr+sGgGqcjGOdqhs3CkEyr9V9T8AsY4m5pvpzAHs9q2yDUZnxMzLL1rK2aR
GJnKIB++uYvEeV9QaU+1xhSBc+D7MS4Ty6djkKF7I2m0W3JJ/eUw57vepXUquaXrJDWzbO1vUZdP
zvK8FdvqcxFEmgqVZeoZg09F9mYjaKzznTn8o1oAsv7j4YO/XSb6UWB4Eu5hTQ3Dv/nxlSp5s0eG
HIoQD2d0BybUwPAjI8biC+/TtPX2aUfYTY2/UaArY4oQ302DYUlVchr1i29gdFQRS/2fE4MlL5SA
DTyxk6Bw3DjVXqeXKP3sTR6x+rjWyKpYOJHV76Vdp7b53pMu/7Ktbu+dtmAGJ5ThMNMAYtKF5SPx
0FBdlvTdFUfodONjB41Yl8ZT8slNiLWH8sXu3rMcFsxxY5fQOkSmnSF6jqqg5QzPE5bfM6gqnEHu
IR8lHZbsg+iF5AVgfUBtV2K5up5Rx2j979XgEudWt4pjK+kbpNbKJHINiDxR6uarcBCBFmmm7WnL
8xh1ZWN2QopYPvRU3/5le1v/nAj62FbIHsZkeEzGPHOrx2JZSeY+1VaGWZ8gQmKyieWoPqCowAAa
a7HPOtc7cPW7HzBcWXbrExGsRZwCqPUFJ16amL+FiuwY/0Dz2skfO/MjQlLv0lQjvPxPnht8iZtY
CRhcm33CPx+Wv4hNce7ofM6NaShX4AHGmGl+Fe/iTPXQ+oBQXEhmtVImiSva++NU7cc6BZqi5pwV
P1hfgrL7vwuvO3Xs0AtCK//1GfrzFdNR1VJ7tuTGB4wXt0IYyPrC4FJM8tMFfHd60V7+LnDohFHd
SckWFqLxyix68dMRsLayWGphqAyx9VT0vsg9LThYrdT0TN76Ttoha2NeKcmY3xBRRJ1snboQ//0U
qtuFzOBmwRe44kJDO3I2j4Zzywz2EVxCmm9R4N1ohFrJXUZ2QdtPn711Ds6kVTfOSCQipcumoxEY
8nrNxTdT5Shkie23i4+888F3pG70pNvmHcK/3sg05AcRjvMCwYwSypCjICDiwbgxNhJdQP/q1DfK
MWAoZOCZrw0GD2xQaZvyD7I2pU8pF6eVzqo8xfTsSEMF29NirTSFuKPWVHKt3NVQgHdJFK/0hvvV
vCet/rz6vfbtu7DYAEztUochLlbdXY6TFk+F1ZBITYf4AYk2UI68Gy8APyfTA2lmlLJsc9Q3F6F1
NFv9FnI2S0xJTfhXW/A1pnqB4FIMZ3rG4ggBEQjlcW3SexmsLUe6i8A3PEyWWq3c8dd9MMlI9FNt
NiCYbruL+hcl07qBdffIUax+iW53Azkf+dyowwtzhSETgPTp5HQ4Ml7CAXNObvYa57fDIHDiglZM
bVZ2JNujwtrAj7qhLTdYxGlthUww64gBubFowS7Fb1Bs8eoGRm1yg2YDGoBOwzJSkkt9PF7mzn3/
kFVDLjuu4LeFuQrvx9CYb2b5fEPcPzh6pFExW+yTkyg8UuYQrZ9Hakl0RGCiqj5gBscM3wIrgDZG
8pj6CHO0GZ7hdc6RIPXrpKC7ki/eLHN8TpRAY3+gXQ0Mjd8j6G9rf04wRKjZ28gY9a2nK3oSAs2N
kaF4+KvYJUFwrmnmoXGrbwqHFgf9VcBgxRmrqqhakD4PRGrqFeWIU27qA+aDdAbvfB80ZN2U6jNJ
GgfHcD4qxAMyUU0suic2f9jJhzThOd8pbhwIovfZLt3dsbO5UG/n8l84DUyy5H+vgY+YEOOXw9xf
TlxxvwW+sLiPdFVqQrLzNvAHyIphVt/iamBIzVSwgVIi5Q87mMNiqTZnUj1yaB4sVCg7r1OResV1
G/Ybh295IUo2Dal7F6nAEFxR+eOZ4hMrTR3Yp+usl9Job+O6YztutPMuccVbY1BUfk6o1xkBmj6D
2Y427QL4woOYjPQz1zQ+dm57PZ179/zFDZeg/7lv5Sai/vzHPPUx9NJQZd576eFhbWuPe5mMOOkL
NfMumw4Xwv8oH439u2CSHeX4iltvBXBrlyblqRi492ZIFpfoNsX6JGQse9TUN6h6sK0f5R83UDpE
lv52TYBzmizP+QRh3zf3uKlS+QkT64HHueS5Q8WKBVxZ3f/oeKlT/M47i+YnJB41A7PqJdgfuJzv
myEEJNPmRXnMGruZ7C96Y64u+Qs4fd74Vmt6hbrnK5fDDlsc3VKoU+I0pZ9qqnC63RzZGiKuc2iY
xwygCNwRJUaqpTqWI2DP8jfLg/c5DwUGZNBF6Svo4JF/urc29OSOUs/69qdBVjiOYnK+cAKl/Lnt
h6aYA9mbTfZ80L08pD5Zu/NhgK8duA8aYkl2CQ4S/u7sxwHkktCVgCMnZijsgKit9Fgs3JyXvTXU
2r53u5sONAhJf/UO1kOj2N0Rok/8hJbwjgqMAWektRWCoiMzjthsORJcubpBTvjXbM2yxU9fht2U
qiXadna1gYeszjjBrr079Mwz3nNivXvAdumkAXQhEEXMCN+KVgs5uNU1kKgNvvuPEVcW+/KVXLQR
3BysPNWN3Xqaqxl2zxLUhdZoo244Ib415fEDgaOJD+bRJTlJY7lMH2Lsej6DdnJ9NUlEFtmpqvKl
emlYEKVTJemEMkmzXnI8NEk8zMEoVtxtfxXqW7b5b5H/X4v4MIm073GSaBWbcI2mMotv69ftnPWb
fCWNe86u41N4RjuOIs7+LFEU7V0ERttdhe36NM/TRHQPG7c0WttoqojOUGEGMtUeezoMpC+VZ93R
L4sVnqYF5/p91pZiZHohtmBAngWYvemGVKvq2laUHv4K4+04xTZ1fBTZ/aPuqPQpVekrLtHBlLox
euunyKRDZ84Y1g4VIDnOzrA+HrBACTbmmLIsntWUmCxaId29vEZHkN/bGWcEPqwEfZBfwcBKAa/L
le0F+J5r+evXFLbRB5ZZNAlyXAaR4jVirSlkorFujkFk0sy7ih2O4oS5CxhAL2XHCdxCivLQo7ls
6BhjBOHKeembuOg5PpQE0QkjqUvZWgjhqjXqbkpMmgPgN3m8T+lpGQ7GfDfJW3w4z+KU8t4U8lz5
CCKGb/vKJoHjmkVj3yuOrUhmnPrhNqq1yzrOgUin1oTf4OyRMLqMB/Va1og9WA1Gk8Xt4f/+IdqI
Ke2amD3opS7v/JGuCU9Nui6o91QCNQDg/8IGULU6eQwlkErSHPE88vx8h/paXhv7mQxJbZDZEyuI
PKOZhCbhhWTOkgKk6i1Q7FoVJ+1/+Jq+P8t+Z1fRzd4+UztcAVJRjaUeHRzCDhDlqNy5apuOMmPD
r5irEwBkCi0JkNKH/0sanBLqNRVxDNdOHHc0hgF3qccqxSpQ+z8Rld6uTRzB1K7tNBBGheed6qFa
q/rSCzNX0Qpmc91MGuZJa9u6R2UMJvlMCFifvwiLQctRrl4WNqNTmZU7OfKi+qaaolXiINLRGXMt
6Zko+CRPRQ9Uum/vcunW1qKUzxT2D0vIRBh/i3OO+LoCv9/b+ecUmR7eBMBu4BohpPFDSqeXmCzY
uASUAnufqhc8AYBKTlNWGPJGZexkt4/dsPG1hWWE8OZpwdqoKVuKvqNn5/POyveyMxyy34AWJtFW
+rK1+XaTXsMnoXS6zmvBl800SJbjqEUtesQQ6FSS7i7ahRQu1S2MXDcGKcHECKByo/bC9wXIQiUI
YFSCHUFWccQMU/W79J9E6voKWXMdz19xLWm2KiJvSwH/uiUdc5lb0cPOCLUO/Zqyp7Y6ZvegMXII
5Jt6S9cZiIY083hqRna+Bk/kvoYLVoeZ8ZPFtsbZV6uSnsuxHlmUAuhlrb5xyzB5eGlZF2rH2pxX
BI2jwE3QfN1QHmxZcdCuYCmLXQVb5VRJrXPhdODfpM0FQD0kD1gO5J4OlheedEqyekOaLJ5ysjgL
jSNkYqJa68810czeoUSZdsiIDYS1SdNxcTlpuiciY6pTN2hRzmyMSIdsbkQu0ONGeBPB6vTSAsdf
jGthbD/ptTs3dI3eyu/z6x3dSUTo5fz6KD4z+WU2JMW0stoBiNPdVsrbs8uXtrsHEe8t/0VoynsB
PTSduWJSTnDY6OsMznNGFsZGs7K1lOSOIsw9U3ETHbpfmYvhgsr9mp26axoxG/VTJybcOxtcoFoR
Khe5ijFt/+ikLnFSezUrrQsSJgVSEblwE2gbUebbv5rzJH7i3lw+PDYLIJ2osbucTEcXHOHntTw/
fQjBCowPOXkDn+1lkzaU61/+Oh+pSUcleTKb+ss0jo5ZpOu2EVy4QxGXmDZVziOGKE826UE2hrQz
ZlcJ92jfykZejAbyFiEKn/31AqCvk7lV4wN549AXIsRCWnQ/GTcOucfZYA6YyJCrlKH2OHeWXhxS
EM+0oaTnwbVSloZ1/kNur7/LJSaQ3isxllDg2OEgKvxM+GDu6MwssGXasIw5aW7e4AxiWDLjqLci
Nw/XBWB2XWONvPGNFNhfko1/Zl3iXjd9Pm3BNVlPcY6XZgKdKCq3tflOQen23eRg1YxrIcp+vJPL
vLaJ4XC7PiwdH+NTEkVQ7FDn7qq4MKjVVl33BHKsuqw+j4TlDF0mbDt4OaHq9n+5+tXTzauWPsni
PXt8gU1KaxJ2p2M6EvW/NAhsh7Ei7IIWqJUEV5YciDxaPpgshu8Uczr/YIsX1x0e94b4RD8vsAtH
eJYNW2ETtHjbqaEDVW5z0ApeRHhI3nkJUD5DFJYcVU+nbaLrQY2dN0Ueb9uLi61MeXkKqrdJK19P
vwe9qgci5aBmJwRAkn9vMtOwitaJilYt+ODecUkFEjdnIGy/tG5ooVJwsaCdoaeHNlyP9YDWibs3
NFAmZeOQ22v6ywbxekPssh8F8zGlJNo7Goui8qvBP5cSQP8kI+F6LvI/rP4uLFhSz/9lS6MLlpY/
bTSrts39/4SHhNXmZ4XkKlhmtq+zwQ2L4T/ZSgwAlaNJ/cB4gviZqrys6/qCKc5qlOgVnYiLSWjS
zBEj6VNyMTsPrN1O4o7M95Ga7n/6dIYUAc9EYYkJVgm61SOTUcmrTBNnxQvxBEpaW3WfiZFwXouu
3OtySk3XCOhh4jVyhvZnznpocYoygHTfS87XIY1S56vhEHeNIjHj77wiVanobqjoO6aOgQZnL7yq
lGVGrKgbo09JEVQSVYVzztsLFt0MwgEuvUfY5A2F7XhD3AjGMUYez1I2MVgVDlF5kIyNEOs9DOPz
QI1BvU7SXS//HMoHs4hL0dC7msMwWk6gqZtgWzvliKlErjQ7rv3k6buOwB6PxyAYmvyhg8ftccQh
ZIfpe6INajyz1RwV8+UThFk+Ipfyj/C6hxu4zZgAnFOnTtscNvfZ3pkZjXUScfIMBNl7HrmfQBjF
YH9iG18k+Ovs5loXfUyEc6zzI/ZmwPJXfM8kUY3rq2GY1leioaix+sBInGa5gwjFBbhMRLYN4pGn
ax8i9iZIrdcumR5dTG5iRox+AhErfGVKQ8kgtruXPO/6R9LFzW77uOZt8PqkiD5OZOrLvrGp7Yik
spL6iVoBeyffZxBOvhAhSYVs/JUh4huH/eDK85ubxjTPLIirRnQOCGi1qVgLPqxU3FDEdWYD1uCT
pnTABAAXt1EjLZzWoICYBKntrzYF0lvRn3fqTB1L2vrywK7DViHZlFuKK+XJ7roLa3xgfs4WCNXa
nUIKuA+6hyniPFZq58YH6/joVrB2bsx8nqDTkkuDw/QbxPoXtgha4Ghi+bxORURnduPFIoMfeT4E
xnZu/qXcXdADrdTAE7g3msFBi9/4a/o03BWLifnHzEmywPuPwx1n/Iu8yfKIaV32BAXN9HwaVfhE
89eh8rhyPEA3xXZJQsslFj175Gv1w97N3zMTzCY3uTU1Vv5HxcDvJsb3l1680Q0LGiPw/DBo6Uov
KYybEcUxOrCtlku6/Wcc+4FyvOGgGbhQtKp8LBSJpbXVNnPWueyfdYKiqym4Ce8AG0H5HcOHjtRY
HHO/OWZDsKj2SYerSQF1g9OrIMT1gh1E6zSGujpIEnHbAFPQdYq4AH98GiR8bdpXKfiWYfkzobrS
2Y/8PvjyHh9kD6xDMHXgHvSvE/A0vd2f+LgkYGdZP3a02ay3RLvsFjAVg3ek0JcnnvJ+S5YYtU28
pWL0v22IODNXoKfuxLfCi86YiygShzTRIGz5JkcnKc/29Cu0kZOr8GmKgffwbGRnqRY+IJrr1QA+
/9ud0EFGznW43dGI3vijfNprT++aw+7KTw+PStJ1j6KUrrHzlB6L2Q8YLeia6kuO6cN6oEpBRYtK
eIh7BYNoRR6qasD+5NdFWzDQh/X4iBNUK6ouaL+2EN4UUpQ0A2rq3ZBUvePrkNh2XNlp3WyNqDap
Yjf8uQE22QsSw5KaTr+FIqsbuxljGVs/SOcP/1/W6YaNutJ9lVmlSLvZnJ1Y8iunKn90u6hES8MP
aI7MOReKPHGaXj86zcto4Ye4rNUYE+d1eiiH8aeqab3zDBqC/bEZxJuWj2PwuWV6Lu5esKvwUbfx
fVvg4vlbKU6CWcFlVesPDYhANzOT5SXkQuJ3JQ8bxonuA2kr/o8Y4npjP0w37C+oWdmTQRaqOGQ4
WZm2+vjinzmL8P+U/XhKOxVM3AdwT/lTsDMfKFD5xvcWFE3HrR0tcTwQMWLkw1FlGeEwfUlpdCPI
bJGh4+Cxc6plhsPqdW4HTZad4GSn/GEPfdeKV+QLO4CKDjmhe6EGkkJjBBr7c3TI5ikRkJNNFAKQ
2/jo6rx7nkdORn1T56lDU5LCMIRqFSSvJ3luwf/KTJm//P0FaTWQF/3NFDZHTkBbTtx3RTCXKe5C
Odb5reZXK15SHQH+QdcOiipwAmM3ZSCVShS22l6yYeSbHmNtzfqPHVw5eZNyP/VkrKR0sqqVjjCm
ltGVnAnBQsF5kqej9tjRpTk0F88/U3f54fzHozniOdIbygDKbjtL0F25yIflZljNzqbzVC/ZXzpt
+2B8MjXrJgjDiTB5FaDyq8PMzFawZlKGRg7/ir2ie99HNphIXgBGghBFQn01wtXl52qYafbyINij
7V8boVllH1gQj7agg83a6z1ihKyrR3FIo+zP5tsOSUiks6y2TY1qvc3BcMbkeA2V3TxQjNZuUWmY
UmFVYM6GKUqstQBPVWCrb4hs8U7r/94M+ApX4yug8EyKZy2UYe+4h96IjnOr+t7SQt0R0WFpWsSb
67TClJOH5IbfbNLbyBosQKCsopceofrcf2qgRPr8jId0iKqzva79adu3MbwIWYtHD40BIGmB+D4V
2l5mTXZUqhBrHfyMGuHNwiy4VfU6y69QrnXceYogJEp7jJJbIyMEZqBSt/KJj4nb3Qyqzp6hPKQ4
c73H/UOBxQa3su8t3lBOV1nxhm3H0tHiNcJb3thvHWvW3c/BBPV7IgvvxnmU9qK1jqJklTa0vY9z
3R94SjqdKH5Ejy+bbptqix4vLC9Td2dBUGQYLHmCd4VfKZkAeRqPcjjuRaVYmMFAAGrcuUJFVmqN
q52zGAtEjSOsh95IkAyoueUuBvCCpwM4yGz5Sfw7GKysWUSzjNrgYrp2AJyrksLY1HHJ77g5mP0x
HMCay4osRGtCs+feD5IAh/2E+WDxNMJtdOHJtAdUfzhhCtVVSjPTUw9mSVg3tBtDsEAnmc3xb2Lw
E6FiOrGSjFzb1Jw6osQScducLZHC4lkPrqW5SlFD5+rHaCXgseQfdzu7Fki0RIQ07ujSzfNz1nom
76IgjWphEQVCoISktl0jx3UPTUb45CuB2z6mTWW48rzvr4ryia4gmAgR7ABYC6tMODcJdavUK+eY
RuLKQrL9fxhgbgWeXNHwa7ktPCuVXlkV1XlT8wfuEbJIoYANrGsJ75WvxzEQyA+Y9l1Zdkssh3rA
UZfzvo5/Dz8XCBb7p81rHc4FAUz2l9JJTc/HzGNA+AGDY6UinCXvPo6pSU7cKeIvadRWwaFdW9Xi
ONcb1js7BR8Cc+SUyQ9LbQRok842uMFY6hAdPK4T6Fb2FFbEbJjY+88DWcUQaxMJImaSf70iPNPq
i734vEJURNx5DqgskhAorXtjbnciGrKe6UvolR8LGHW4Y6mVHEsxCl+BQgAITayRfBMh/5iMgDZg
kJjNFIUhE01pwOeKs28Q2W7Dy3dARgefdDV8Ot3V1EOTTMnPrA0+PTKQDh7Bxo54gJCklpw3BUb/
JOHTT2/IFDtM+Kg5jhjEmw/YLPl8xC6TfvwWqMhYuCfNQvHiWs4Mm0MN/IqPPm1qWNV0rzdawnGK
Anze34qLzpCggodqZMHt8VP3TQiNY9ItUPMrzZAje1TYrOX2LRD50p7j+9FErHkKD8c7a5kiMPtR
vewoHH+uQRXHDS+Vd2g9cVEFzvdqZGledlaJJkuQBploX2dXeOpuEBjVOpssDEUlgz4qm6Mt4ERq
Fvj68aanW7QZ8emBSB5SBEq6W9Xq3qYF1cyfaWA87UHsRfqfp1vtEwX+KEK32sC8mo3RAC0UStlG
PdgaIXM4Vf6QKlxgvYo+uWuDeykLcEWZLT1TUmXZL8gWrhJsF+svMfBFRmqFS9RHp6gDOcmUmEUn
iBIHpxjd2PuV5BORbUAAwTS47psdEklMji+HmDO95e/+VxNxAuW+/M7yafG3+2td77D2q9HuRA+T
M99D/n0z/q4dupgNk9EDqvwSQYY+X1oxLTrRyM3Ner4Q/5H2bZwQgs3FtrbwbpObPMKii63I+zIj
6XwBgmjvkzoudPDMbIdfZzgRSHl2McTTo94Ce2ZyCwIXrVGaICIi0Vp+JCVCtThZMUmvf/b64f3e
DAM8c6uOURySz7uMiTqHCYG8VmNVLANW1oWE7wYu8Bu+ecUvToV9ExW64VHLvCyfv23VT12iC3Xw
MzQpcC+onRNdu5dnYDlbt/gkerf5PucTza9GkKougciTwuUr8vaiXkxHLY288deD6NBhShNRxYHO
x5wE85dt2n+YtfhIVnt1/C5C7rMlSNuo5FHqTzfD7yWvd0sxVeovfl0mfmyBy6QvCbKEpJoFgAdb
stHxhpo3YaRIdAOOtEXURwty5GbwlQHUbLw03t5orYLQD2D9nnVfrpjBauthPhvOzQXMiBJJ5IQA
R7XQT5zns0eQI8DJs1e144GVt7DfWhPQtCOLkNjUvW6Ci0INWrg1M5+YtlVKRetHwNnANriqvyjN
/nUBkXP2Bgp8ffQxQjdjyLcFDMmMKWq7Iuku0+EoUxW9iYN+jwt0yULAdBs9LPX7YzdkNG2G+4DB
l3BeUT2/I5xEycrT1tHuYdcPC2W5/ftBLgJFoxjRW7GNX5Z4JW6dULwNtcHZGXUS2QAaJ5emEd8c
vRQX6K2mJhk02pT5BWkmpiNDSGqDa9P1yuqLhBrrv4xVvY1EigSTS5j2FsCxaPa5oTgj20PG3vjr
87yh8sjcb5XsWDE0qhdVSolcUH0213+kkICBDl1SPdgQp3cbd3klv2dOUI/nuntlq6S1sz3KAncO
hYLtTgzdwb99CAEnNoF7eMEvulMfFza6tGJq5qmwx/NB/FQW1D0GFo5CPPJSlZCjlNMIzZA4BQCT
MuN6e7NKhD9tBVRzUJpOPJEfWRw/wfwFxvpjn1IBDLsk4hQjm1HO8b1PBTxndFhsE3NnCz6wkp4i
GCS9G5qN+Pvs/5eowcLLnQdZxhkrKq6PawGnxuGN4RmBtKE5i5RZ5QbbIoDirb+Yr6GEjdlHabRE
F8HzFx3KshyapLJkhxf0FoXTuMS2CMFs1l7wYlxO+Ru+lbF26DQLe/yX1RepHFuYHlxmdaXizlbc
CIT2DWKFC92W2LODXVhF48oay2WXgvP8EKcQVdYZomM44TPsK+0AFdxR7NOyZcBiZ9huo2p8dKjZ
iy3ZntyBQ+mxxd0fK9T+0yDsMhmAHbVaMJsE60SaH66xRXQMCm0EXUdJzksLO3YHuLcqyDM4Qpgl
MPTZmbEmDZj+aOJxcevYpDKz4kQPYj1hfI0c2y33EiSzvHUCWwbK7Q+sEmRn4EbyCoutM0BSw5Li
ppY/U2qWMM/0AbmIxPxuubGJeuE21mTbc5tDW54UKP5+JJdcnF6uLNoW/hnGPs9VHwNkzPs4aHuk
I5T6fZW/WortcNUq4OxF5pxajTKGJZt7KfVoKKh+N/NMhVcxOxB8uRRE0+0Sj8m09mOLeNPXpTuN
17Kx2KZoXUrcd/iHBEqz6fqdaY8XYApqRtf93m3O5R2Rb7yBpI09MqEmP5P1obgC5yGn5/cnNQ9Y
IDlOIC7mzWhxM6WQ9ui85+MD9+vow1nugAAkKqjwkb4YUiudAzl2sv7eQ0XLfve50cS3MalleEAD
7OohuTHq64gLFId9GKaLyiIhRVwnB5zb00gCwNifyKyyY2jqVtyJFfC3wepK/PwwfXBSRZOtmOCW
L0803KLZG7ne7JMhxIdUJ1S9ij6sZ5yZd6f+ClWj26ktMU3F4ejkE7lGar8QQME+pRFjW6Gs/Upi
Wj+i0m9J49MJ6qE83h+FXxlHSw8w+IyLxGPltixYQT+FQDHV9DTJOWVfXMHSDFCmyM7rD+JdhStt
BdLuItp7yacU5859lzKA8K+vPqbUxdh1vNzYMmJX19YqNlqYJrrR8e8lVObvLXJH0c8RcavrD2EG
mYBjASG56lLM4M3aQssvjEtm/YuAqkkvFYG8l+0LusMmPlZs/mz8hDXj+/iuH6G4l4bwZNEiKU15
RxVkUyEBEO6VAxMGAs35WqDtQ/6nR7PyxbRiNxOlY1K13cp7/GGapOogMzxMKQrDlJXbWhajH1nY
+MtaD1EVM0qFBT54S8Gw5OBPQavJojuQMRVKLfCITiJ6iivhRCF1BMREzaiGwjv+0JEby9UpzvlG
CPj/PUDLdrfWev1CNoxFHUPHWPqLjJtIyH0qTg2JPathVepqJPphtOvqFNgNE7dr4d7TwqvPMzkQ
aIgBuYno44356XRzze+cAIoADmKjlcMNn+f2qzurNVM5XYnmqja/TnJhO7nWqbnCJoT6Qi3jR0Y/
sIYG1njZhlSGFvhWUz0t2bL7xR83VHtoa/TN8hAapQpSG4fdrtEmZVhbsFWaCyB6FJR7GhqsMEg0
OBs1B6Xoo6kvcs15HCdhNFHA9W8kRKFQErj5/tflAOPLO4LEEoxyarPDoYsQuh2yLbgnTUDiK5cj
hgqbEDD0g4CGm2TPURXgQ0hOCIUvcMgvnhjmL3cY+t7x8CfofLJNMXkUq4NLrf7hmx+FpOgEhCkG
nKYXdBSJ7/NsDKYFREHDhOFIPcF0HxotmtKF4Q+aVL/Yp+bxC4m54W5WQmbMqiJgpQ0mDMb1e/DI
Qh8YBI9cYAMNsYcvKCuE0Cdh/mDfdgzftL3wo/+K6Qp1k9gBq9A1LHWxLS/O1Cct8uujSx08JO9j
W+Bei7epJfrfZ+o1G+F4Ehj9PP7aqG4hG4clvFWScT4zDoun5xFVaIvKsik3F2B5Z/eaehdBU+of
w02jR0ex2JKOTkVlV72BTsFSR3e0D1dy1s2eUJRSvCkYZfW7NvZRqnZELsqpLCTsS1KTGY13X/87
8w7Rxsi0L4a5Z/8MCMjAy41KDHxy2OVaXRb/M64PuUjtQl2gdswKovR30dyXIUkmwQOISmC5nMUQ
sy86jK1cCUlESHCIxIDF7ifFtF/Kxjk1Tgs2ixmHDFeBlg45Z1j9G88pl7JxAAc+GpsiLv+a+bNr
jxSUDWRKJrHVoU36hsg+Fpchl1RSMvlijLhFZeuWGntUIb5B8WIseucehclDP3tBPHDmyjqMpbLT
Qn2dTUDegJBr0p9S3mTgpItxwIpnJoEttTkrxgwO8ITrdGerTNhCiBQBkAnyIQONqOrLuY2byk24
l/ek01vVTC9AJx4mYz6Ka12NmxGotkgyOAluDbXv36o51nJIDt39Z3/uUY9+PcYXiXwsJymALsf5
jLIa+fbynqstDd+orwNsBWt9caL9oOkm0x3dNR3Qz2jQfH2oM7YtCVEDVqltPrylmikV0mHNoBWM
LoDRnAa5yBjKf3k0SE1K+f5XPiKTrRHe7VPXkfSJwBJ3erLlUmrM/2+0DZyVnUWc+6dlKumGJd5t
CBagWayzJpzxK4kBRMrFAEi4THGC7FtGxdDkLlLBKzHpq/6k8ZjMB9gopWBaRgH2j4bDys/UIzOe
v0hbgwDS6a1PKwepBUab9+s3M33WDTGdr/wun2gbtJTq/3DuGN7tx2A+0BR76bifG13ayEDwLNbi
+8OTYI3gD0OPSoZ3/MHeIuiRImmcKF44Le5/gaDMUL9n51LQ9MeGd+5kTOAkLcxoYThPW1OgwSFT
gBjPirRBnQgazq/sC8xu84ll/AI3IUFSreSK0r4+MoC0SQLOLaVJ1T/oPIPOWi23ApSSUdh1JUh+
TgFNo8w6I9A6fjHH9er9dhxM2aKbkiO5gNovh+PI+CTjcEWx5IDEX1DlXEFOFZ7xSJdLI7/IqASX
uwspiZtNguf7hefjAqnneIk33fTmBjw+aHEuFIHEel80hKhoM81cl1KCzsUnQB3maHQF0agnEfGt
bMQlo1jsKRkZwcMj9ZucqYNuIJ8k5ksdTeynKZ5+arrjK5OI1hv0AGCI7RA5VuTSXitbsc00F4cF
wZ0MXSi1hAC+NbjfJ4sdYTElVYhlcWjr9qTtwAFi5HqXcivIfJOB2rVBbS7SBU1csDCnM9dl1beW
uDSm784CcF8hskjTj2YAt3FOvwGitVpSJgTOjOznCE2Elc4QlozArPqZF0Y890W4hyX/Jgt/4Mx8
7X8Do7zMSsozTM1oKSoizQu+C4eQKB/O/y4WpqHbJlKrJW9YImCo7RgD5ZogHUEMT7+5dRWahLnc
0pnMAediE/1UAtwZzf76Zxx5nl5yuWvTic0h3fEzYpBcVcarpQfmw3BsGweCVOcpKaBFntYT2H9E
dJlq6QEJTbkNyTpvX6JuwBTeTJR6yuIZdY/TWh4YfKWJOtfLaTCNLAVjg/YpzdZywyjydxykpWMB
Q1zY2K1+Xp9xwbRPVgvxa4kx2bSzVqwZLLUeebuMwGyhoYnm1uU3JlQQrFA+O+k71O80uQ87nYi1
La8KJYemfFS7CfmziQ0wSHwzC2naflLtfinN62YpGtLLGChjs/Jom0uwwt1OJBx1bKvB1Q+3Mhco
8HI+mFf91a8qV9j2WwJNGVeAfxduqXhEF4dbXW05iLetlewwLFGhiPy1RnUDhy97JyIgN3W1hI5S
YcDdmOsf41L0Ke4Tbgur5nurCTYxwmT+/WWpwNxD1K47g8D8Jk7DWp8BCRwYzBWQ9BmXA49QdkZK
qdtrwFmWdUjNmPSgtIlY5+52hninGls1vhUg/Qm/OD8fRAUSmDwCp2Jh/IsrIP3gsz7khmGRipbO
b9U90MhACj5tg+c0quB6DmQEIEmw/K1DFL4pg17CImNwtOS/O8IML/dJAmPZ5sbDVpqA/7kSGAvc
u/7NVU+/oL9YIEQvCRrijJCFCuUXlAc5IRsvnrlz0wf6xY4uA3Y2lbS+5fM1Y6YSet7IJ/eC39SD
70VtDBBAbfguxBv7Q8KLIpUiVaDS/rWTnOy5uDJ7YKT+AXofoXTw1eswGIL2HzYo6OzWjgCq78hD
B2iIt2VqkK3SlaqLrpSDRsbNQGHFfIiALWX91a9Txhs2Chi3FwMZHleDc4Ujl4CI9v/mcWbH/nyZ
b0BoTqQTtckQsk0VVOIbNAO5LiCymFBWzgHAoBKc/Zo5BXPR3PDL08H3AylFu+rTe9w2Ckgnclw/
7SkJVZHE1UY4K+hfQieOPow7DcxF5F+w9Cq2jCQ4yiioXx4yrMC4OC3yA1KeevwlLE2TzUsKpNo6
q9up34xRGLAO03ARuBAiD9RaYPRVS7p7SaFyi+I/kZh5IBCWrdDmJHoqqxuYBqmPtzneS+yFV+Ki
3qhiX7SOfrW+YbgMxLDXfOWK+BqOJxqEpO1df/cUAe8Rk8YmReDkuLn4ydlDPgofG31MRFOBOlcY
xFXF8oSF8A/f0V04OoCyKAdzLYlUsjQJp8lyXAF8jddvku5keXIjaF3/0+h6IDoyehQz9Lqc96Fv
MUAkycArfmMoxmdo7u2P3jdFw+S4zmD1t3EvVhrUZjurRiSBUwrIWdbzetlmJtuxQqO5FqFUkysF
+PXOzhwklMiF9GEkvkvJzsOPviKxvDSfsqBKBQ0jZbaoQvzOoQPS92XY/Yc1+5h0d7x0t5YcHrEN
L0v/dq36A3JHl9x7VKn0QOPGyB/mJ/N9b/S3v9EWcT6Y48EyDGZIRP0qiB2oy9uiQOSE/DDQIZim
IzADecMo3O4/VHXhg48pz+OPHoq6/zZ5XCMCPYOgdpjF9l0opMHDrERKgGIYOiqVioQYGmM7C1Jh
mizB+DvYT1NfdI9TtAFPfdq9YtV6xw2F2KTJbq5qVZyheBHYV5Br9MQbS0qZrUuq4iBiye6RYo7d
HanjkTGstNgcM5zTSFF3qpO6Kq/apV0ubXPy4pSoT63wT7fUtHEIIJQP9b0p2atxPvKtiJzXWb/C
2Vd7ifWIt+2aWQAkzqgDGsNNprtkv71f1EmC7KYnSszI3nSKD7V5sLkvaLKn694osf0/DnjovxXO
1tIl5n+AJLTcUyktBXlV6z+H+x5LBB+DIKCOkK0UINXrOj/8JZru8V/+xCvXaZ62OBOIXF10Aw4j
tIzZy5PvuTa4xhcbrm+MlNZtMTmwu4qCpU3oV13XBxvhhzjqKqRA1ChLUqmyvNGMzcDRdLPyzx6x
243WYFRZUHzf5uXP7CoqbZWwvDkCm7ELWdW+cxSqNdGx19Wl7Huyc0xmMRZMMH021568COW3OcLu
vSCsz4nUkCkMRb59b44zVFfa7XGO553YKz6ZiRLquWcHJbZzPvntq3ksRaPElL036I56o60H0v6+
EYyS1iaEjZhi1//ZlE2pTKJYDU1t9RUasmNCFVcyAn//vTPL0ZBuCkcbn3ukuZoP7TouO8x3sxWJ
aPiXJcfiVfCtqTPt02aapSbF7NPmIrJuI+Pb3OtYwXEeqvi7FSoA6aYaT8wZghXRm2hsgYwPXF/F
NAk0WwlHJ6Yg2gA8l1/dc3fgyaXBQtdIb+iDac7m1jc5GKk5+n9tnJTiZbrQosc4mBOpWTIDtj0/
kVv9jhW21bhMfB+7NI8Z77Cl83IDV4Xq9+ewkfb5iEt0I0YpEnMPrzid/QPQbfx244SsRReojEcU
3bBa12nZqK937zIv4SZic6CenoGHHAdSRVtLjloVY0gGsWafmLuYACXRS4x8Y94qhrxJoK3pBH16
9CSuIzPFKyx/Ojz4TWG8/KCppFFtUw9Tg6E5pKEgm74Cl33gU1VoF3GedP4niePDXTZ4zYJPVDtU
c4eBAeVhGz3rnsG7Wz7+mQbmza6IWtRebhZh7ahFbz77yNYgJJir9iot2grbZNUnsIYY7uIykxow
TlfRRLOOovqV9pVAK9r8IjMx8MlNDnd2zScKAkQ02PhNXLAD314VdxcdZMfJS2TYc6Rs7cv20dG1
H/ds8EaANvSAUecdPkRLp4yEw83QbKzy6EimE91m247QTBbnrtucSoXbCSb1Cw5vblRVGqjadIOL
b7QN5sW8OstWhla7RuWJncXqeX3jFQHpG7IWx9eYuK7rqO1xe0dHOuUhNFOdqAUk0AA8VrcgTjKM
//qfl36m8Z/c4gFwNcUSKeO74Pn93gjjRTe2fAfjalPCAOf1Ivox5Udo17WYAhX4zW0GnUdbmnJ7
QrQdvZMII4GOP8Cyga3Fs15OrnIru7ya4z43fGW5DONNN3JqsfJVvDuyyQdqgNxPzKJ/h/+PzZW1
HEbWxQ/o76LLSprZwk+eV/f7K6RlPL8L7SkbbVK11l0uWHiKOu4W1R3D3z3BAUqR7ddW3rjweLDA
HbfGb+ggcd5kki4zaI4PpVS8dnVxY8xX3xnNdyynXM2fWb/mSDgBHO9LLw9jLZgmF87zIPrcEKNI
6cxfbh8bjudplL50tCYtwATugRveuQaGUaKFVxPrUaH47uYTpXOd9NFIUgZLs8L1XYRxG14IiPWp
2BHnbCjiCk7UnKxrb1qYVseBfW9b1+TRPsEl7DC4Se79XnTs5SPd4QkOccfJOa5PsuQNy9lQuRPr
cli8hTiMM9iNwAPFx7XrEWnBpQukVjVNR0IVb2GrnyCLeBwcn2KjNhlG7abkZbESKArFD1fLX7jb
3rCOpqBQQXgU2zjCUjttVnbP4EDw3HfqtTl3KtRJmtLVXFwOBysXCm4LDEDpEj99rEq6JZxB1uc1
1LySyxARXhiF2k2RNHasZDmee+jNsM8LCi/y9duMrTZiYr1g6sFQZCO3oKGqlNZRqKzv3PqBS1Jt
RvRn4K/gEkEX/vy6TS0o2HrQ+z6m/MIJgoQKQ78fg9PYwFvPWPnret68VUYJqoMranGrS1wprPd6
nc5V+Ufobs4ykdqFq2xm6AqNHhpv+Eta6msd48gcpVoQVx2x51v+15fr+W5Q7vBgXhhl1nLuuhvi
X5jdrIe7odErm/2vWaZJ1Y2RieWFiM4vrURPkLXCMHQlYAWF2L+CEQLr+H7oenOiIr8d74tI5d4r
bOurcqlZ0TCfd4HAG/Wp3Z9SXkslJxAbFEfBMtRk4gQwNx4u2QmHswWXJI2BVFSf1rFpDP7nIAVt
Pf1PBGlTYnQ9O8X9MI1ILsSTrWCD6oGGkhxkgTpfaKxlodqLWPOfuFMx7m9HafvVi9YoKM+mEbtG
TyJ5v7smmqp/j42A9cJ+lI+RRIBZg4/kzDgPWnraHhhGKhXp9Q8SCFb2NZROyqGcEyzdDZt4a2ff
ATFlfR+AVeGocSip4uqPmQQR3MTnRt/XBwEh/qWPGkhQ15EsaY/HBlqCO8JxapkBtV1XJ40ljEWB
wRFbqtD/rMXvOMbiO7RfNSxPrVE9GVZzBh41QjtIMyhVz/GH1mSAHDQ5yZpTzmgLqCf1zlGlpz5Z
a5uIvSrv/AaJV6cK4Ulx0r6VUH7oe/Sv0/coFtlUbgBoVarx06Y+B7BRmOyyvmQTfNCpzECaCW/3
y8TclNJm7w1ToLGBWCmJeHO+qzPmAwKHjXOZCwGWdepHlwreIw6rRy3P+YaViWirGs0Lrz8ggrSL
BWOJLRvi1WUk4Wer4wO0D203LAPU5G58NgPmokfmCcikGVlw5nNBfPWbrfSwbO9MdRQ1yZwYaUTx
j2jrAGAdpFPyRr52sucrj+22KUHhB44pEMvfXOr2SCB6XPW9pMbFTrw8KLJfHDgifADrviMFLfA7
fKKbalrJ0M71EMh3sKGG1JjnwXMV+7m6nna2sBz1a1R0Tf9GnsPy8+qAck9sok5ViEH1bw+JX0rG
doITZO/w/31+Ui3dq2z1LLp+1zEoPamEqsfNaXqdGg1KvbYTr1kplDqNisQRyFFRkE0zi6MIXtTO
4sAokeaaqmRRC7CdCUYcTB1YrZxdRMjsKpkkJzpPK+LDAFHNyL5ifjLQWUBXkSaeDNL749NoMpox
RhXUcOfmI7oBT7k3+1T7lBeltuP/Mee5dtRVdJVcnWizDLjkTfBnFclb9mr2y3FSkrjc+FvL9nXT
z5J8qkqVKHdCmacUvv8Aw5fo3yYxzoLHRi8780FC+UBga2sIyeHhCN4GB0TOY98J6citxYmH+Uuy
YF9rlZp5rxT/4RKEjxtDti7EQG6qTLkSR30ZaFzmAVtDBHJ3/JPQMudBaWE9E8qQJeQQDBJNo5xh
9dxK2bv/xohWBVkaCeNC+OYtmlVkDc2due4tJ2gP/+fjlN0+Tv+okN3cjXK5OqLD5ddDol6rr3AQ
XVLfVs0L34nhuhCYtWotNIlx2eHsrZZ/bGfGitOf9lb49ynxsQurv5cF6hvIQiKwJop40d7Iat/g
b7SoZdTyb7BNxJFfPqhhAL9Xdx5icPxqhqaYDOJQiHy8nO/StjbEduq4eryEsT0Rgs7yEfdVQ3LK
EtIBxSgUl45jIi91Xg7RlRFtEgInTSVRliPjf8xxgSaIYgz0vBZUwOAd0I5ZvrFMZXBG8vMrOVlT
p61fv4Q1E0HugSjkve0ZhJH2IOb1y2F2+XPGDHMRajkOs1XfvC6rZr+uu8ADgMYX8PNbB5tnUFWI
2khUV6PKdWYSOSyfJf1MQEUAtKY1K+HP5ElO07Anf2XPixPZ4SnhhROXIro3TBmuy9kG3PjuoxQH
o79tSwV79n2bN46mn43ELD/odWgx+UwKt6fLuWHVcbi8bIpLwDI6AGLm36OFl1JqfYpLACpdA7sw
0AwNIslF3MR6cIVCQKXNVCdwOgEPjWfTSgtCDwsY7bRT0eKqS7FkjisQNCHzPP7qTOmDURCfEfoP
ooYp2VgQKI03iQ41j2KZ3lMKYEJ8/nOj/ZSl6ZQVCCa7FRfAseA44+tqKD4xmiR2S/rUXPAn2k2w
cDQ7JGIxok87nyUvfXddsBaODn71Yd9tXET/+8728Fjx0GkVUJLZ7s14bC6m+/38QkhuAZT0kEgJ
I4SefdrWt4pM/4PTryzIFh0Ay/nZaHKDy30Guj870dWAZXl1GgAfBPJXbWYCMwA0bu+zBoFMN8TC
m3A+bMOezyKqZpajW6Vy2R4DoETHOwd62qEBMvckBh2XEQ1datCjHFcXOa6/mj4DKCsN+WmSERyi
WmmUBZm5fBgrXSiBgYfNNGkVdbNDBad5gwQNjSM/D2oL1BYZyDfqBZtnQ8FMZGI/1Juod0v145HX
SgfQbV4nZOhXX+iVwT6gq+kDYlUOqcnelWSgHhYcTyiJHCJiNE28uvwEzi2d7DUJ9cmbudUuUOyu
+kV4bp0E5OsXar3hkjUe/686dxhhfvXVstnVvobFxgCrQI6Vf6L8ax7hlP5RpwChMQTwYciU5Uih
SkXjsV4erf5QaFBIATq+5ivs57rc/dY/1kcNSeIfbbWvGlwpIFRrM4bOZDCqmejInlUMw1OnT1f6
7MkS+ER1ZDcr9jXvZAfmfEU/13HMpR/2isZUI+P9q8wg8oKXcO+tsVtSwDM1WAtbqVDM9FVHUbvH
vHMndcmuhoRUWt5ZrjDUrnPDsQJZiTJS9sCR3LPwO7ItscknFCPks8i0OcGS0XKfAD1RrLY8pOJC
+cRaDSHgw5vjtgo7MQ3iKxmZzWEArKnArWKASatsoueD1fPkb0QYOe3PakGvqmK2B6GEGjK40w3h
zNlSdSpqgOBPsdIBZ7nFVwo/3K+zSLbC7e0dAoxHU5OEgVRhCT6h5C0FQoOsSt5tibiVEG220/Fy
BobBsIwVBHZHM2+vRqx82IwQMXEj7pdV59mKHM3BxklGvVFWfbuChRocGRUBIy4SWxqDSqR8YSca
zBlLCaAVPE8x4hb8NC8DN0Y2OaLIijdQTGzTFuD518O8hCHvPMoumOccDWFlBrOgdcQa/TD68tAQ
BKS6zDMMCH38bgrHHjBg4sPzPysLxS+/LSpbe0ZLEJ02b3z64YhJGzSb5kNUUXkmClomwajSEsJw
pbCiulUSlQWB/PaZnC2+zKBiLon1hBbVdgt71b7xpqzhRogKEncVJ3we1JR0aa70SfF5K5a6PxHi
h195vTzDB//8S6t0JkN5LX+HLwoo0bNB/xeHLUq7phUwlDhpUsfsJ52SUICjXrNNFhat6Foc21EW
Dw/mPX2jUyaliQonh9Qq2e7S3pINXvlsVKG6DbDGnyhgwFAF309j9zNJCdBSc7P5TP1Ka2I11t3W
1a9+gWFW4Xol/VrSeQDlq/npgDfhiPqZjgaOw+h9Q19pB1Fa+1VKxtFzApEt0HNjfT+rRZxNm0L+
yLCSUAG4IJBbG/c4dEKYuKLL7fiuTfC3F7AG6u2XhjJkr6BbRsJsfprvo7eBKv9VVV2NdzfN7sLy
bkVcHD9aaKjLd4MTXk8UlG9trwaLJXenUWr98dXqYAoCwnLBMnvwDYWGc/JXqDQ1smsK/CA+Xl/H
0qoq9uzCoLbG71aDf3x8egU1bxILI19SRw07m5Uou1DFb/+2n/7sZUgtkc6JPRnoEwlqaFUwrVF3
Bw+7in3jj33ggnTVKANeSmKRqJNJ38vHlzF0XT6mW/LIkwdlpPD+FqTOp6OmtCJjcIX9RJGW9cld
9nAysaKwnrKAcaj4MxOuP2kz9ExqpVC6zc2ZEKQulXYI35XhSIGY6i4bJeJ3P10rAqEicdLqfAX6
5WJw1uh5971kjCje5Lxlt79DPBcteGewYSoim9HBnYhBZr7jaTViyOxMBcOpJgU3SKrM8D4vZiQx
9lX4JioDjHbiObsKbBj4S26LbO91+YqLBbR5ymsyRq6bhu9BDejxArQCpiMglIz8m89tl7Qzb4rm
neSdElxzBbsAhyX7AeYlCT27UWEcGL7lKGaRX2+qrixv56plmicO0ZkiE0ijbMP4QoBNnZC4fq4D
WyjCrux//FmVW6oyo2pCxGF7Jo6rSmrERTDjj+rZB8TaC5KOfnr2iyii7OgVIagdWQzI68RDmM+E
+UOZzoUX52u1OB4jZEMMAHXkvBNW6wXQtb38/Xb34FzFARRXm/yNU7CQHI/zE5Mduuwpv2Rxtytx
FrbxR3OQUSlNofMus7FgqS2Z7ghSOnY7EzmR0VAJHqsV2g/BY/Jn27G4j421a2sI3k5nC9GJNjdI
uE8wRCiN6itU0vW9m7t3IAw0i9VzMWOZl50XAtzO8IOBprGNjEXR5o+0QsybQdoijYDzYkWVy2Dt
8iCpKVSpv587ti02AkTru/uhPdWsOPACDEkQM+veKbar763Qac1TxwkaPH/FAAzq/fhomaEMdasQ
/9Nx/d1ZHlHaFAZJJNej2H4aVLomtV8aQSnmu9It4NyMbC18hXEEn4r93bGSh6IVvpv+CE+BfhaC
VKrQW/hZRvIVJM9YDZMcpdTvsk9+1P00xGY2kOa+0WMNU60I90GEDdDMYGlAwS5Xqy5Ekoo2fI6V
cwHchkgYEI/McezC0lEzxHUByT6JUGMQA+BkME6gcKPwpK8eKPeZB3wqpClDudyVlGM73Ck5pO8F
LGpY9pxVFVkgiKvFAjJiWGDyZdAIndVXD+148W51aHytPvfNUGwM3xu8MUExi5IzeoHlTtibqBqw
b5qwxb9oCTixIsJrLTelb63gHhrZ0fmzUpKl7idOC3YTccQuyEssQj6P8PiVsklcYbER0ka4mvnl
PAKVyFhbYuAtgCyqFAVoJoGEe1wnT+xI24WJ0CpecX0yPaugo//wLaW95+f+OZkcl9BMNZosBkYD
06RJSHC5U8T+ZN5gZdLCWfTAkIuDDSr5AFAsfO5IocNGRIO9CEWLlRwsKs2kpeYz17aoyRgX/jqf
vfytZeQ8Xu/iGfETjcY9xvNsJgk7gfGnF237a0PI/gW2+KYBkiht/xU5fPIBgtesk84CVG9YQ5IW
30Aa5lBty8AUJX4KRnJ9NuMNXVt02/Bi3qgqc9jgRMLwMXxdwkR6lgKQb1M0mSLHGAHXdFHs6vMH
7lY1bqUq24u9fPilklFIWe5qLq1txQxhF3KWQ3jZndfL944FD7Z2Wlcpf53pvFowokv3i7qolGaF
iY1Db9PVACrmDFScu+eFCm5n60gtpL0+5bm1iFxtDCj7nn8JJwidGrtkwF/yXgNtcqQlOsa2qkA5
3iDjum18o4F+6Lff70IXlkSq8zXl5CsQi2dwVwOOJZ3ocMceDEJ07ZFO2xFJpOAtGkJ3VTj3igEm
tZzFzI2v3nA9upkLKw2lGcDHd1rM/EdSFkPvxa89kYmwStSPmHjO5IUKFpI++3A6KNiLeosw5vr5
Ym1H29ap0tbTSW3Ki87k1L4M8KFuMgI1oBoYx1BlLs/TpN+J2xaBi1TPv+0is+gCMXiKoK9bmsf4
+29vaUaDwnicGn/F9ldzgGM1lRj2x3ehs/PiJLOktjv2++x0O2+ehgJSVsSGgpEBQaYj12fYT0Oc
E1Eva5TXLROuf9NAs9WZMNkqPXhL0fw0Go1sa2jYWP98dZCc5Ro4YYlCn6wAdBunF9wJwtCoLMeE
UEhLPE4XxQ+YcAgvAf3GmGmShzkeb6twCvgoh8m2JIrcv2otq+K8A4IIOQ6dgFRDQbip9KXJjozE
oAcaTF/1kWxXL+6FPPh7TMetEgRQA1iHTRwyOho1F9iCAPG0EkJfq5U1RSuK80o+evbTK/tp5qml
vjghPBRcygJozoeIIikZa/L/75yo9+U2Ox0vjB4hXNAal3xkWm+vkjlU648NP1vkOE2dtkr9MPlM
bunPqfs5xhx4Ki9jNdV+0r2E5MqRgz6zscH6SsZMv/q/n1kwIxSHAdEa98/yHpiU04sOjzslvnHR
447qjLvhQiRrsPZaP3glIfiKow6lxzyqtTUmWgYSXXfnd4s8rThU9x+FYEcvVyuygiVsSa9z+/w8
64IDrrubsLyEYGPCGZhDQXDPhV1gJRU12MQnofD2wt3F3UwEsvpNb0TOxqXooorMSNGGh/duHlEH
qfpb7u7zyPdy8iFewbhtIPdKz26tWE6ZiVoulu5/saVAASeRlfSEkTUQ0LbYQAucJK4dBVagNozz
0KUnROjhhBWVRuQ978Cs/Fq055p8N21OqN7oEBNtWON9sMp/eBunUzQMLjaxZR3l7t4/2VE2qqYB
e5EJE8XbAwpmuaZqOyrHUZS/bzWRX033AumW0YLV/ZyviKSUQAs32AJiLofF8rPf75DU8uSIl5jr
QhZKef/CUlEYvmToEcWkTdJfCU1vxX52wL0azvnnlF9WlIbzRyVd5rumvyuZP/rMTRYTpZoqKbVq
hptRf2oUAxg5WLe+/FSnVrOputCLOf8f+5Mw70CiF7tFO+YCWuDP/yujPCQRm3nsDJEK+44CYpF6
OK7UOXv5NZWW3YBZpWsRXqR7KKA3Ox86sSLN5ih4PDq1rTb3brRq7dH+MsrBduCnecp/Y47YqzdW
qiFhLQpaVjqaV4OegpxjEVf2MfsEeOFRlGWKK59YYRBnEZrPFGmhc80b7SnCI0SaZakDXqs5wbpn
YFH6wKqtmJXbUbOt1MAa7+oDvDXgDVP7yK7g0Snp9QtuhzYgsTQZyoLHlVuYy13ZqF4//O/pexKv
YMntzGPK1oA+Jo0HX0g1IwJuSR0Lh9Ym1fMw2DiebxduBA4PoIxHU+aIEi0htAmgIns9oSHEDiH5
CT/CndefX2f+tLqVblfWN3MdaAQDsfupbpjJ5MdEgm/Y5T4HYZTs2A88mi43okTAi+pVK3fmlzF2
TTWwMUUqOJJ1PMAAoxag7hA+v/lit7TYsu23rAcLf2cdTTaPqBEx7xA8R/RYUbjY518ZO//FeMQK
rjzITMKMElPA/Amw6Q/MubEYMOcHenEknehfaXh4DWoYukRY5FrH9zHeGwlTCrYdqr32YxEX8GCt
QjK7xp32RGKRsm9CuJN8vfAZBXvgnSf2dPqqEwQvMX9MGiYYVKMt+RU6ZzLf+SHM03Qc145hkVOY
JeBIJ6j/KLFd7kiGOsxh4e6HcNM50UtOeaaJnXOz/cYPbg3xmv/n4c3xQ5I1Gn53tfWnJMsL+83j
YURhCUir45p3hh+7PQB06ShOQCpFmDzEQne4pqQIz50Nj9l53LYIgDYS1g5S4ENzmsfH9PGoiLkY
8xzwdmzpHMCUDxonLFwoxYKWhUOKjfXtyrZwTrIu1adrNj0C6Ck9FIQazi94KsV7lQJSskH4BO4h
6ou9dvGaniQ1B9p7EkOSI9JUj3xekKkgUY4U2/DK+sDdOxo56WczDbsfd1zkYe8frJYGKCLXj9KO
HUAyWus3BLLvEAMcMNfqNnxU2J63UG+ZUH96m03a8SNXaEr57rRxildnyTCqvL0fdAAFDg6jQMAX
WBx6OePuN/jwvVVjsR9s6L1rkIWoahPgvNQFg95w92yea6EVMiJ9esAvfeMib4kNlBTMkp9vD2eu
JB6afXyRp62baYSdnvdzyVVZvrxVMlQzZRuPxWYat3H9cHTFydrrCWJ1oSMSf0ZT5kRIX63Nz8e1
pnFYRWnCms1JLezOZ81BHfpFyFuJwwQ8EebCuRE4ChjNIZt5ya6Czo+bTPgC4b2TOFpeHNkRjbxP
PRRkPBJqAv8Af7RKXgeR2qJ7dVrgjZwNkt4R1fTktZcI1Liy0OZVW0cRafPLnKcFRnuzUrkbDuHF
3O7JQ8IYtP+0OaUlbjluMdPJa1twK+6/dtdXZ6TuTY0OXIX6rUEfyAwc/JrGWgikfEWf6ydS0s1P
jcRuIquis9tbjIg25pmsO+00tpLPNiiU9Iignxd2IY/4iqiSJn6F/9LzYjXy7IWuaqL9lyuojCJF
Bz9ucZ2uSjf2xuL5t22YV/Ztkr/IZNSJLLWaY3rH8AQRE9iUbQz2cW6SVn5lnzveHrDh94Nqeqwk
Cq2gzkrolvnC97bInnjYeI6xysCC/fyKwqp1P24m3Fd5p4qSuOK/kYt6PgzpwEOvJtsiDX5Wz1Vv
+BLdGRBpFgig3HGLt8+/ue/9JxZri6tfFesAu0sH9wKWtth83+oQyHUbhhdBc5efewvCVtmwlViN
R25N87kvPqOaJpXW1FIF//rj7SJw9JDHor+TN1f3kNKd65EhwK1hihiNYV6d+qhtwRxpT3XI+dwn
m3A0wW1nOTkQcHRz57m8mf7p/aMxzf9sVs3jo5E6YOcF1vIZkzP/NHQPc1ZhUwPCLN5+NzLktuGg
j9jBCaxZSSe/XYja+LF9yUCeB2F1lfiA6Y80kFztZ7Tyv1Ku6FfYhrGusL3AkvmZp7827q6YQklS
xdmugVmD8OlMUaKbUwWMMYa3HajfCTHJjI+s6oTQNFXsZH13qGMVYD2B6+SYEo9LD3M9LWU5IFLo
+i5usbp57o2erlu5rOw5PcsnAU1nWFy/X7T9h2msRwjUkmT1cdLtqikfw7UKISSeOH039fErcrb0
RM6Ypqxe3jWqJwnj6/6Bn93vgU47CbwWnsnJuzrUeeCZUZXDrQNWFHD9O8ljS/P9pc1mqU7wxxQZ
AgdBT4Z1N/YQRWKz6Ze91KDB/9v81RK6Kfzth/9FU+nqmU0TG6kSJVclSn7Qm/p74QCXZzIXc53t
RI2qhUBlMgdWl9tuH0jdAhS9jf/LLi9cipbqZdGbHAuejSTmC0l66/gpLh//iLpx6Na3W756ahnF
eQOJMMG908zcZtQRp1HA7H0knd1JvE0kKVpdFvx/RNXN6pj0cg9ftMX0HTPjoNic6o9kJ8LQ0o34
2GdqYAPqIV+5AGHO625pc4q5fABMNgKmKD42NOOSCvlcq66QQdUEzLuhLlVz515plBdRvdr7mMfe
JgCXkyha7ihtO0wqmsEj4DKBdRFcI513Pm7GrwqDE1UqgpsrBFKTcdV6MOf0wGK4adUWwKm2BRnT
Lbu0I15nyj+NNSoUXsTt1n5d+ex3sx0/HlrwNrzN+TXqppgUkDsrTiPVZnhujH6Rr0wFHmgVfDcZ
TX92ScPRw1yb5RRbKUVql7Gvzxjac8UUMK+Qv4Z/hrEhppcCDu4WjxiKlchbh2lEdpXmbuF9My/t
ghd34If3MIpEq45IxJYkq1V+NAQQRARhHPx7HdQ3anGIrdLR06KH25lLxj6VuUF08D0eQdhXJ+24
UVxf3Hnb+D12nKRdJrFa5VOybTfEJcARJULAVAHHe/pQ5kn4tmiOgj0Cu7pBy1L3bTUWfOOSoTvV
3q8lgOS7NFnJ/Uf9+YstF3P8zF/PMEUsQrSbLUm/HfN/mo73ru5f65hHHx/1wzBQuCJ4RJ0iuwoS
s1YWxuT8GAa8iANoVACDyDbCYyFTUHGufg/Hr3mz/YIxdLRa2KSlTteA5uk7W0XTmZj+0wSHVzV5
kHJc++0tHpSX0FvSBpEbK/V3+Usjn/u2Xyhh7mgERQAiCMgCDGV6mmsELTXA/jfv2CoAjPN6w955
8IN24xA3wTd8FYNFbOL9G2pFL9TFs1c8VIiKun+so9wjSkGg/bN/z0MfvAp/b+TILj0Cc30OzXS4
+naQwp+ZWt+aTK4wBAUwXnsQDP0W6/ORLFPP6QmVmcstv3h1ZszCKqUifSatc2MhTUdE07nLmKri
TF8GbUwP+RYCLYu5LWj0wD2kR7jbJXBYN1XTkgEg0hIjdatEfZ5Lw3lQNvwa1EBTWWy/KtFFgKFG
NFKrG7NW3RNXOeUYR0fTte8SPuUr5XAk3E8Cm9u/vEJwURAd99dDUrBw+8GSz6dBCmTURdQl2pG9
aKCmCRCT7t8UkU80/PFFKH1Km8RGYJAMlZlaPhTSlR6CEjdAzB6lLItHNU10hoqNrLUDmOJ4mu8b
xJy9CslJIlo/9FWLMnJiPYCcMvx/VezQCcn42cUA3lua5rX69NV8mi6SkBLCcBqCLFJFBKBrntFo
UD0w9+qtgCrtK/Ky6TrIhtpqr8ijBLaz6OgkLFSSe8Z3HpMUSto2i2RUSzARYmQw+asTE9KK3pTB
1LChPbsaq/NhgjRY8kshQ1flWJdOG+2tCIElm15RIFU0/ZpGskiEZKxDzNobRe7takQyVf5bLs6o
E6WSTffq7HZPmrSp1HiYQFl1YdMha2T+5b3ppLALVxiYe1EC966UCw0T+/PnyVz11ZkezAWgL/da
yQiATJS7LFNIyVKxjnubPiTA9hsuKypNmac+obDDCL5Pr3gpJdqXq/V/PGGswzKFMOgGEtrMuJr5
xTxN7UWO8t6naAZizg3ytlgGY5WkL4a+GxXg5Sj2JxtwPPImkcrAsKJ8OwEhTqAefQXYxq/ql2Vh
UOfb4mwsYT4JZDJBK6p+QdY4CP2EGOJr9RKfuUgpLNge62ICXA5TCAhlc3/9cgvScs+Ih72/6ucO
AF/4UDvKhQbPHW5U9jK7+kMCHDm+aX6JB3bSbjcPUG8NCpTXOJWOygLvk0VKwk4Hqbw92Kl28JxH
eEugFuAapN4OWi3wIRS3euyiwZlhMwJZB4CgW+oZK8UQVMU3OtE0imijGjoR5zmP/LH+czJ1HRI9
3wTviAQxGom16Vr9DI782Hyo5Q7NEtvrD/+F6IZ8dNGKy+fygDpyrL3BFxqyeNXiMYqb8nFFJnP6
/Rx05+jfNVVIy71vL4a/1RmmySjQzdyXakn+/nWF+baLVddsZ9XW9LIPE2TJ2Vqi8Vou93lJ6aC6
J6yVSJPbTCrE4bxIbTSeOxgLsos32+I54jkBsEKxFW2JpjP4HaQJF1NXZ+zexCwIEjPm0WazVGWu
8CLswK3CUw2I/Q6GxaoxTHRZKeUfElFz5J+M81meSxeDLRW37tssjvlYAq2pcuEOn8DJOH1mGKkd
wowbhoDC73Z5Ci2MBaMQPA2FAc2ltvdngGx5WMCV5QDfZHtSY/BXeryg1cE5H4vyDMpdvt1jdrFX
0ay6q8fd7sDu0EIiUQVj1j6kLKDCjBYXifJsvrEUqeYO0i1bwRqeTlCWwqlp4LACTdj0GZXJelnd
pTeCWQi9tFwmomjNg5CIE4+Jcz96mLlK74lXZqygyTNQ2RvrjedQiHn6Mc2X06IZYy8l490V6M+a
ZmWh5t7XU9sN+dUPqiumGLeJp4R89IWQxCAjxQkQrVoc+QQnqguOnETRvepupCrGulnd+ou2TgSm
chEV9OflVRkrCDPHvLOwB0gUhwS6+Sqzc566HorOF91yaTcoCEjbMyOWs3BGvsrRtzRdnm1yRk6b
k4Jgyd+h578dh2wJkxnKj03CMEkaE3WS0MssP0RL2UfJr2kRggGScXrwYVLf3cOucR8zKed/XT5T
yOhP4wJNZkZ/i4vNL/VMTBPo3dWGV4Op70HHcORvV4knD7Zyd6yIVIf0gu2K/Ve1XQpqu0fpe8cP
2cikPfXiRK+HHBNm3o3/71sxGL6gOIispmueo+TKG8ToUXZfBaATUmHpnfi3Pr1o3c10KV4kGivA
tOa4DoqRjQIMu1olRJ6LeR89Bpg1cKQP1xp9diHAKCIq1qShgDVOsRSiLes5BtancBAvSGI+RKqk
a9GMOpLn3j2qxp+ZCP2P/AaDI8/Fvbde24S4eUQAgIoGLaBaszfZA3bwkBPVUGWhypIGwhbOQ5mD
fZlPDAE9ZB0FTg04J8OGMtSxwU68sRY1HEMpZJQnKNbNtFuncHlmRSEy/sa6YEELRn71URPoIymQ
nMlLOSMHMsEbUfX9tSd+k3F53RQatzQ7ek032OvP6iDYKs28j2+NCmjPcrX0RvwGTd4BLTsL+NI2
GlPsbILvO5I5kOaxF2/xfW+Ka6v0CheuE4pq5QwhAsyu1lNZB4fe8By3CBcTzje2q9fAR1bgJpga
aKJQckveLkbUPFI2VNJjisCcGg+UqzMrV+/+0lJi7ed1FkZM9WTMYxb+wgbN3UwDUUhYJSbBZjZZ
FF0nHhFibw4TiRFj9hRlarOgNICfa80vZYbWP4x7tpBGVHQ+jeqrwhiVAoYLZ6+kf9v9hGIW3U6q
8UZzUuOImW7zgQRr/txybbBDE7QIcZ0IIfm55sS9o/Fbap2GKP8ekyqnmMXmz18cZ0UsZZx2LzhH
HY+lpnp7t6/lQNFU7Jw2qTjrQ3o3WTkR+DLWRSMSRklc+ushiaiKIbKpNAJT6lcdOsyMikU9nNGk
RULRc+cwUdEnfVC3XG3TJI9HickOLZxfBsuMrR7cq11pqSutEnfFYYUC3V1dnlI0UJVCU8yqqtvd
2wpuUYF+18YqyINyuxVF8s66zQwopZFy2sfGpd9Stl4DYmwsQO5kOhhbyNh8whnM8+mm55s4Vgjw
WQfL4DkjHPznvhSF8lxammU84j9U6Lbj4Uuf3CZX3ZyriVC5ivNpCZAA1i5sDqA+PcrQflz5J9rx
N5teYZw1nV0y9/4xRVA/ubi6TV3fPjcw+ep7R9b/uLbOS5UWU7chKgWB2xPA8KeRVhbSrJ0haZEo
lQClvDDgxdK1CSxzdpWrPmMT5YM3LZu6brVWCLS4symNAF38fFJnCOYw79Z1byKGPEeLKFC5NeFn
/SY/Riz7R8TT3pt8BkYioY5ywue387C+nQbRWExmYukdNG3ujk6cgquV7XRts7LemD5tG3MZ6EUt
30pUP0XIrWoHJuMWi0C7YaqO7bs8CjY3UcifPnzZ3IOiAYPAWpFGOQ/4t5ZnGWrhJzwWazBwhl7k
WQUXXWeEYtXzDL6Et4S4PcZJHwpiG3XGssT4NqvhBZv9ral3wrHFHLs2uqJgrXYNJH2UQ1WQveF6
1lgzJrbaG7CjHgGbl3/garl70tqFydozxm/E3tDtEXAA4kV/cPKFPNhHlOpxbNSg9j/0i2kZp73m
TSK0ESMQw+JKWEI5FEzvi4QBSUNt2AN53dg/kq2ScV4xPEOEQP8IcvIL6bg5wpDHFATbOOBupTfB
iybCZGO9Tf/z2tY6SIOiDetc0gBJllEQv1mEWpdjMDGWJ1CC6Ghgm3QFLPlnrQynSycPbzZL4fiK
NHVc+gGhPDf2EJLuiif5vmb35bjUevyr0FpwJ/fVniZeZkw0JNDaUqy66hdbXxTQEPIsQ7p4jWat
ZqZlWby9lWMJVqtg++bmhgpnwENU0/fdCGnfzpllfw98SIgTclW1t6i+/AXAdBd67NbjWtOcMI+N
zamzW0I90+pFV/mh/gBcE54nCI33/8+a3bHHXFLIMEvy8afiiw5SHt/T9pzL/vpu01mmI8y/goWK
T5O4xgGbQ1Gtamu7WihRIb39MeKeoBmtIPi1wnjo2jTes4aeLQQGRKda6ZDP+hQaRQPQb0y8FJvX
g5CexHo+c+NCOeMGbXBlb5iyVGhQYYWNqNk9rtWP8o+jko8yhRQjaEWlRalsp42pHEcarlLFcAEW
61dqk1e/NcPPBX+XZsddo8L43B8TN3wzlIkswod3OL30jTGZ2st8ccH4J25pYN78RO21TCeGc6MN
nXfIjHD4ZMUj0kYxPcBYR3AluTYV0+9YwkSF6PmgMcpnp251X6II3CkTGCA/sXMFVILIS3ZuxPRV
2e5IYWt3kyzAiBajTB24g5lRSMXdBGVhIS8DyPBV050+Gf5yTeFQZq/Io2U8rL5dutKwL2d+Sqo/
bCRXhN3woe+zbAT1cxKRRj/CW89VJJW4/M43VQ3lhBHbnmeBFPyigyqP5SuEXhmvx7cV+I49sYpz
DHzi64yaGpAxHFRy+p1xOPoEqgsH/Hv0xS32lVHkYWLVhmNePbQl5iUwLWaCZYU3TX9XPljUuc5/
44Z/FAv+qfJPZSjjoflcUnkmmPzpU9digjMZzjFa+zimrZxGb1di9wZItX48o3klpTwqP3eLJP/2
ETF0SV9Vco9pUwEFWG/0J4y1AV/zBVZa82VgoJvSpKidmGv41WQKlSUu7Zivkpq8m0Ku6VU4OO/l
XTJ1y9XFkWTgheEczoXpMNUR3pvkdk0Iea2aLJfyII/l9M/Xg33aLIAI57f3v6pP93OpmQx/LoHI
G0mnMwcvwZQBqR1QyRcZMiHoEthKg94T8JS9hcdrqtdko6KzxPvcKPcG4PqQWU761IleNdVX8AJd
EIvxs0523LNVQR2QEtMQJLYLGFpVjdM+CStE7c766NTz+SizKwtMYySLE/MQimWQdWHzJCAhHK/x
ZFfandEWAE/RNk6O/qOY1H7cqUo+tvspzZE2J+nWvnvF70F1R+/vOW4maXY23nH09SGT2ztb9ibb
DoYlXkgpGiyjUy/+5eFas9BdTUE2wUiyvDLKKpZ+CMhcsJ4trZX9pvd+I4ToyQiyr9P8yITHtniq
g1JZ+1RsIO6L3+TTsRcIuyH0DRT+CWjOwV1TN7pKAhfC2zi3OVEmkzWosVVISgt5utE0YPU6Tle0
q0IsWF7Kw3C1xW5/466wmwZVk9m/reqOTwkwK9oBo+H1d7d+lp0USQfu8u0+Wm20/DwhWdgHZJmQ
ZTqGNQHcTumzPFj8H7+lHx1K7HbDE+srDJhtVOCYAv+dATcoD681tn0NS1JWUuEZIXmjJUzg3IjJ
t3VjBjb8HkEeYPnit7zubsd3KF55+CqNWoRUEghjEOjIu25PJy6Ox0FL4exTQmXZn1/dE4DQzyl+
MjO2aMJS/DN74sImiiRBOdHoDyMyHEu38fk+BTqbze1uB5m/KWdeSgPnsLibVJAz3l6LIo3Vivox
SNbSdf6uXTDH7ZWP+7yVMp6d3YzbImJ2mup0HufvyaMPZSKXJZZe5H0BFaFg9fPtDlKnJtHNjekx
3P2PT8/cnRUK60t3fb1oWRWRz6cJvOKCPmUzGFeS4pUnRnX0cQ9Pf5K41AYTU+o2h0Ts6v2KyJdL
tJ98WTvUGX341w61Haok1DYjqEEELgTtya6NOoTCBttC0msgOG/AnmqZLoDh2bsxWzFj+yCPZN3S
F7Vr8xyDb8bsO7KAtFTugnDZX7sBNOroFLm/dykvib/2ZDgmR28QiYHawN5NajAKwHc8YUf4O6cY
g4Nint+PgUOdogV37Edj6duUrEqkZheZqjgOO7ghD9ivqt4SsM9tkIJVkpwwwdEcEzNyaKzg8LdJ
Vl5Ik/kqVHCqhNnN1uygZg5M/vu92fKh4WO0gygmuRxKw/z5Lkftu8Qzdp5GTcFz4OvUNSA/CYTb
M9+VR/UxumYClN63g0M0RqF5T3cIER63t8rWdJm9EuOfeVByaFjbr/7PkQbtPzZhMad2nZyPDQ99
40CSXE9p6aHt2E+/YcGUUqBHGhjAxvvATtx6Y6GGm+YCxDqYti0IYjBLSnEBBpLTr5x+/zjzMksj
I8sMUXHqrHpXGEvd2UpoQhTPW3Emj56kuY1muCnEX/+zvHa3rIdoqeR1VwW+OYvNlC8vYv8D3i1H
+ttsZVUCQ5ZS8InK5lycke988BMZ1D/UYrvF0e6mZTcpRdSi+CGkJSdUYEi6QRBN/N+p2+HpwzRO
DmoehsLUr+thlCB7lj+7AvfbGXZqPVvzOyaCESGX+C5LBzOdJEwq+xrlVIhyG5QcV4Kaue4Wixam
HgLrtIEJ89CgFbihO/D/bka+asuf0WMGRXAdzK9BgLTFScCt/oh4GkC1UriUEfvmLMgpt7/+vl2/
N8doeABoFRw4sZCc660u+r+VH/I25L0DvsJSxKQjaQOaJPt9KWNzpjl7sy8bRvOxVZbJTq/dN705
fFGRT+g5ruS7qLflby7iFhaNQUODtVt6kJcu6sP8MqcSMdJyafnmEJCOvZ0cj1EOqlGuHPZYS4cS
VFmTVf1crYS4BVdR9JaA45p5351bHjWORxFCCnTQKxKDFOuAgjbE+/Fa5fwUp4v8TYSsDiE7GOus
lS/W3SQ9wryf6O0CMupryKiYUH6cAD9WprB+YIDke1BQSpHJ67cKDtgCZgY3Z8i/S9Blvh4C9urt
egdGfZVugSzTw6u42nK9A5d9AtIwgc+VVEyVBNctWCNdvasRj0z0T9hX+JB+hVmhnU34At7zHWuj
dLVTpUf797DJdMi2mypkPTWVkKQ7sEMtmuDp4RApQDpNQdpVYm4bj39F+CAeUqytKQQDdvjkfFYL
FzkjQh+BWMcg5nDCGO1wJGWef9g46awruv34zi6PWGTeRdG98DVYjByiQayUFpaqawYbkU64APhb
6IcHNXC8oMy+TXKsSdq0Aym2wx3iTgiPzGA6QeOOResjfrCzV7MDArhRaYXkNZqV640rhjOGlhgH
8XqKXcLrFJ02rAlDfe96ntSqOZxDM19gf8KnW7BaOsKfYaVhbwchqle+g5cqUlS1lrRPdIYfxUme
kWG7kg+mZozxA5CHL6HNvxLDwHE5P1BgA7eUnP6IZNUpJm9lCcSkdVGvTzQ/9XUjXJg7/J1pRrxV
1Z1tc9/Y0IGI8Vdwk9XGBaWSV1fMh9xMFqqFGUnXI0krONnFTTIpVGT6rKyoFLmJjbcudXNyEhkZ
iEvwitFRpA3BxMmKVqIo5cG195ypb3KtlK22JLag1S58yLTSEzoDoVQLznmatzn2FNNkQC4/Q/WI
T9ubWO+VK4eq+K7QO1ngFUGpo3QA54gk3eFYFmIJmFbs99j3yU8ks4WZNvN7Xv3eTzPpIWXT/9Zi
6xt4EvJ8iN4bpmCkLV1wmyXQo5dKGLOVZiBM8QA7bJK7xxsW1u/M0I9TxxgZpBHI7ypZ9fIYs2Sl
Gqh+dIPi1ohv7OvNUzImbrCg0tRpdbIpEvI/0ylaGXabqO5yhIBO2mrQYLYFlarUgHRoGNJQrYk8
c+ge5JpKE9sFpAT67QAtjtSLX7aqMcjknRhfOnzSakfVJ+XNIscUccQ+YH2lZAZctz/qEwRdEZu7
3oPDFAcVkoxIrXzwq9t2qr1EGu5quucDhNkDl3L3C1AOqCAmHBsaDDf/Ru0j0Elb/bX/vpjwjjzN
rypKoMKMOwVUJwnMuZZ2TTXyq3U86pkTa7319x8W4A5duiFBC+ZdtDG+/4xf3MpsKuX1Qnyh9DfV
VlShYqIG5i4TfthzSgfknRSFGmPtRnjrIFXWxU4AJWfjbOc9jmmhsP1gFCz0pfG6/7UCHSkPDktW
Udw84RXlRkbYi4eoEe5Jrgqeyu0yBjD+/NE7/3kazxSbti4tVVt1+NC9Ocwzw9oWYGMbvhHZCbNy
Vz9yrnY3Lm+UUTFP2s2zeiFmwALjlrVYDkC7mZbc2NbjzE7GakQfxiv8GTK57dOEB6Molwxmg8un
HyxRQBNr6K+MReJRPLnNnyIJXLfduURh2zo9gbp/Duk0Knc1OnCKvHsx4CRGH2pwii9el7xOzfh7
e3OaCryiTqAqMERSbvb0Fw0jhzedWG/Y/Uv325b94UdDS2A4oFdMZcl6Ubasac6Uc7Zb4yU3PNQk
CmfdYaG6AAz4Gz/rd0ulZdmqrWoHiL5zYG8JqTlke4icseKn0862ZEKNpOFGNYFKloWxtBCeoDuQ
Ce6Teb82DaxK9rxvfgnrhKIcW1bSlN0D+SaMo8Ysf+ODKRY4GxjEe1jPMgjojboflf/ENiKILq3K
S6cKzRvWvfxz6iNnNy7tdRuCwDxSOB1mNkNLLidYoldE/DJRt3SiyViHLice/UG1+eW8ouALiRCW
p1XFhwKvzW8jXg4e5o769jooH+znECY5eX1JLQthWrjUD81cIVZjEhxjITuEnAbfUtDlPbYuNKBm
CiKwTv3gGpMZbYw87sdPMzM/HWsqY+WYgA1g2PexxJlC5djzPyea/8XO+Nms6CH/gfr3yGvjZWRn
CFvAaBtjSNdvuu6rCc8o/1gYt5pL+b9gmzl5h7nRK66wAdJTrAvd5VtN44gGT9uL/VhEqRPBvtXu
4KopfBIyWYCX+ym1q4lsjVSSFNjQfTOhC4lyPJ0zvFp3GSK0p2ayx5oFruzUTdc+02xjfR+4/sq7
7ZsfDckZ1h4rHHSV6Pix2X4h9M7Q+0rseUDwJ0cJcBP9exqEWM/i8m1R/vvZrRhkY0ZoWrQtXLNL
HCHTPg0O7V6EHljDSfSuL7UmwDaJomtBD91HsUbgOBHN7H2vz3oqx8LYMDdeUo2XhDq2nqvYCZNk
9ZmstfV+8CXyikqPlbs8VXKK07eOl2VjAEF5g70AjaP6GCHL1q66CNDmrRgjfnez3RK9uWNVjrRg
MlFAG/BDd7R4VS7UoUvsvG9y8ZEM9SuoIUaGBhwjPicw1CkDVEXfuDm8hhxMKtIeuV74JpUjZTtw
47qd0zXPQP2gvkFyZ8inM/lm1iEtqNOpdoKY3JKI4zHJBYQct/UuA3n/sNO4LyUFzGeraRvtP32g
MwgH1xpSpuwmS3FhgpZKDdDrGpfL75ty6Ca9LRznFnPTCFr32sK0PS++vkwfDaZPGrhRk7dUgD9E
b2Z5312hGlzkBWzMNjXMnmFzEp6sU7vNPBKr+Dgez/K2CPR1pvH7H7dkFF7BhzzFJqJy7/VpXHoF
2LSHhvSwenuR0hiy6qsqSnqoAxVv2zxz8ETlGRUkBDfPH2t1VASiDP2eWDTJoRqeQimUT6IqLj0w
rBQzct6gxIibAgJ91S08NunRg0tS7io5jKi2IJt6uDNJSvVfx15Y4q1T5MegipvrtKlQxgdyT6Nf
ebEg6/AIiWvsngSQYxtbZC50SdXiS8chuELIP2F26sNAkmMXOKKnvQuwSUMTrCyeQQuOyIPfSo06
BZKiNGkPSB9+kel5ovPMb+RIRfbIdCnNFeUlgDbN5WtXA6Dt8uXZT02uF57cyMaIcvcqRQC8JXvH
lTulwDCGOEsxnhzs5jllOcZfvUNuTR4cwT47o8HsQYZtfTupI3j/9geOrQMJyqL0USdt8t1ShFDX
iQG5X9YCTUxC6FI5h2J5URPQVFBjYS/qPBSEkum60NpAFTTE1YwpSDhl9EpEDiEOFzYEUXcDbQJJ
V891MJlwAbk4GnA2ByB2iYHknWtQ3vng9XNaILDJ4fq+kPzYbdj53gs81JeCVe0PZzBjIXdEdir8
rxTov1PEkDdH1NZzgSyOVB5XKMWvHSww4GZOklPdkKJlY2QHuiwsNpUnjB3R4fGfH32q2qjuDRce
VOr1wFAL7LbSsvKXEawDXS5k5c1G+kGR4Yg7lGdE/f90dIT4gFMDJgKOJiHEz2zkdKR8yJQGidIo
w/XTZMZMZOAtEA/AKNLeeIQEJPelw+ZH4KaCY1UzliyLlizypW443EMJHy2vXchzQnKMUU9hkW9/
o5kPqOgQfIn+fVfuWD11NPwN7tgodsD+p80LiLoxU7rp8RbGrDIbhUvQIigoL+ekC3t8DbTR9xMx
z89PEbZ1B5aqEl2f4vtaHKsNg7eKZzEZjQoVJKEHcbNbPtwWRbnL8dqJrhIu+iuFLRnTWXn2+p+w
SII0C3n8fYqLVhXK0KKwniNyz2RKCuh8XO0fqNy9MfXIhsiSlyb8s5TzyPiLra5PAa+rhHgNKP3i
2eVcgYsb8orM/mq0stDtdsd9dm5jNinxS1q3GCvCNq1/DyE4ovh5GIrVhhywu5FRItrvi3oXsmk+
qkdgJgCY5cnqgF3wlwnB/TFgwJVSOiaHcycE8t91eRnCckL6Qps93fBebmdAx/9dXoXMa2fAVVus
GPrOOc9JdPwbCzZ7R/8XHrljDEZJXoNjmujnc7Mq92bPOYtqYbq3z/I6IZyVMtulO5JYuNZSlnbk
U90ZxRnNnRAT45g3Ebgq8QUyKjldqYfkUAwlVIjASmCvmMQdmPi537tqghTjuH0WXTGc7bKfJO/X
Cr0S3a7N82QH9FLqb25PVwBDGLibmdeRoQ86N61nr4eeJAvz3uGpbxaeD3TDr9jOV41mUhqva/3W
DMCYZPH+LIA0BN2aGy/0iQgEjEBnQjA+WgLUXr2/LBo5MHl1T0+3XoK2qeCgC19MWUl3uOzLw9Pr
cqej3VJQy4RDrXTH5TcTetlUdeXvsvbsFCrliL4fmbb/Ey5a+JXAxOnrV8XHh/mNQRF5sOgGeGe5
G6GqZqmksIpo69f2dJOU1N8XF4chAvFANBcc1Pr471owxzEGPiAaJ+GCBCa2y65rI4ohOImYSjfq
yBz5w/fTSppvLOE3AQ5ApNRt10ZQCg7tziAlVYSwiWW3gCdi1T8CgXdVG1t4K16GEAtQUlbaLet7
MMT1VPF6Fh4xMbdoP8cT/R2SxNXTRp5P2hEa6IuFkKYuxs3NXbDnUbjz1+lEWhlMXGhu/K3+aZSq
BC7ZNJ+Y/ZGI01l6vLwleNfctwHZxAl721dwnCut9fQSiA37od3BI8zJ56MILm11YD+83mYjX7xR
r4nT+fEvVuN1lWhuZfuQZybMMM8+c6Wbe9JmO/w9Z77Y2h6Xvw7NYtg250g36FqNGrVJGrPrlJuQ
nH5mOft9dvZM9V1dkP/HTYjDJV+weoiypnL5E0QVAWQQd3bIF5mclmcxFuUpqz812r+eE83kZ4wm
0OFaqV4gZZ/lB2I7RZGQmAHmU+XJdioPt286YZ9cSbbHhBg+xdvdWDAD88bz7QI/zos0gpR0phcN
XGCXc9Jip9R2XakayMBjqbKMK0+Zy851b67oHMM4Br7F+GRMETpyd5IZc/igglxZaX548nKsM/v8
Y8P/Zn6spyeDQealAeyQR2IgJa+KNYzBIepL8J5JRkFkX7xxDLJtrDvYQjzFnofvc5ej2bZ77I5E
9UDdIwKowfAcJgo3XdiKbtP4fTglNHcBudNMiaJz0/fTZIPPbolOEU9VK9M05lGcI+KU0hdjvfU1
LMGlVLjzuUf49VgJ9Daz/B51SoMaAiSQl+Nh7+COo6WWtZ2LxakyZMpYc+19SiJ7ZbE4aiHsxSkE
bOZFImOLNWt5dGUFXAO6zOeDX8u9LSJx4JJisKBzaMCnzWOHc4ZCgBLGZZ46k4Lw2rbqVMJzGkGi
YI3pwXBDF0SyMgwvlyhMXKaGRHQrvi1K5/1MeKhThw8EnoF/7vva193MNTcmtqG+4eIWyWL08fAW
ibk452kErOxMwa1hkPHpfushQL0l++6oEvETzh0DBBMJRk1IEozf1H03hrzyGYIud5io3AzXkhGR
8Yl8KEGrigPQw5MzKkrpsNE7bi/VI5f2ZCWy6yuDIFWune7S4Fq6nH2hJX4ZTIRPvrT3e3SIvz6x
PLHqqwpiif3eY3m19TubllTEhxzoeCYmyw04B1GsO1jFWEhVZ430augHlav+ZgUkbQEbV/e4Q9dO
lxs1DGDcYL68UMGXUUVLFIp5hqk5beMh3296AtKkqRgMxixlPMcqtIoX9346vEr63N74v67pNBjI
gUfrupvSexrG5ZbQ+Y8/P4O8YJKISpluSnaGAFjOOt2OGO13bmipdK34P5fHEpuUnjd7NikRSVJl
+xfVUy/BHCVQHUOSv9tvGSfyMnW8o72XrxHDof3K56SYAFk4Vt758h6G1SlCcihlQTac/2zDVMGV
N4juhnY/A6NaSQMpEuZNixhufTApXgFaSphDRoE5NVg48avvCyG58F9jI6X+FSiPbQ6liCVkIMrU
V4y315o/mfFFCS4sROp7fiknlvSjGk3m6RhnhSkvuucZIt3LFtv9kp8lYfI0s90b0t5D28qYAaOP
0z9SVtYzYJyZ2B7IaLjPPJhpHJIbvmHEcHxvCY9F44mCvdDNZKrP2rYJxV2t+hQZLmsj9KmEByiw
P0j1DwPFOaG1UFwz+rXi8x5FkCg112EjXtehHGEk+p02WMvR/2baFdcl6W8CbgPFc18mze0j/VTq
FN3uGK6JV89OAqOjt6c+rsYYQpBR/i3sVpYBnkAC1AsiO9RZ3QZewuxptFh7dZYTERa+JBHOPJea
Nxkwh4O4j0uZI5f049QV0VGm4ZfSeAMImPWUEIT96XAxA0K2GrV7AUBH8g5g2JtyE9patWCq/nxi
poNTwVOmYk9GLao/kXCjMrlyjfy6P60FVBUFQj2SHS8UWL3o4ry2n7NyILqVFz1WflmPl82Zc4IE
duCgmRuwYGYIj6KF4gAyEPIy6ecxU2ub6CjyrpZINlk525CruRWitgm3DZczTNNX2DlRk0wDcsMj
7hdEikSpC9WYryoB8DIzwKrJEW/rpCC0FI76XOAbRLJKTqoQ6cdSrmKmG0OePnFwmu33xrf6cikl
j2AkxinlVRNvtftjPeqQv9M85AkWnS+baLjeOKOPhUqINi8Udmls3LgTraqiMtwCCZ1kIg2GNCz4
RscqmEotpXsoeQeHlKHIUHzx7YbRjmAxOxFlBZyNJ+H5n5Qw7dobUZST1WHwEYJigBhDX0NGlUzc
62qGKiEIL3t213ttL3m7Xq1xaqQx26ueB/TZrqd2fIRdfyyds5UI/ye3xMdCcxu54NrRGVmAE+9H
4HhrBbfwlSqCzAeG2mgGsxd8imA3MzSwEVu1g4ceYr0jjPtVh2wB0KwYYQkflHz70Ekh58KKuLlX
JvUYcoss6rVSKjglXfA5nF3shfLjcVezWRKPCPfHKeYkTaOT1VJVDyri4VAHME92DSib8NdSoTSy
F1pXVASxF/4ij+jAZ3dehjB7ymk3xtNNj8Jo6PtyAdJPJZajXJ3LqaZnT/TNJdhoE2dE1+8eusbR
jmAN/qpyx67n6oPEPxA2ChzOcaPH+My1gInaMqA5HHgyiyPkQVQyzcXoftGMVHNNsDYsMI4Y4/JP
uPwNL+Tw+KVRNPX7RZ35Uqb32bmTZq3PmNfUIZ2Dw4UhofsW/rSfOv+GcMMvszoE45lXh68RB/LV
Eoi+1Bixg1fF4KN/rwtWupYCHDVerR/364nTiybKIYQko58ZOXCcSetGU4/2kXUsCBJhVX7c8yhe
wQencljtoBUEoVjlXRvr+eHwYMIL66KbAmWo+sTfxZnROWyyQwFE+3AKWX5raQLp1rwGqLui7ShK
fVx6P29F443+8Rtsu4/JawJ7ZyupufiX14NDutEnKJ+k4oPxude5NvYp04CRHc0qN5zLWXXGH2p/
th13ZAe86NylF+G/6i4qRyf8Q53InNVVLTQFuBcK9ZxWahR4rxkzprEG5LNzRIPhM1Bmc47LNsox
VKrf9SNYKhRyTJ8uW6LiHoW4WJP/DscP5p3c+3Th21x11HFpXEmbNKbsih+p/qKCxI3pDXulwVkP
2iPEgCLd1aaoa/PxA4nX0r4b5C4VzMb6Szfw9kbSEtvTzspaHSm1D1YTonQvim/bfVA5i+7FjJrK
RJZU8w6Xz7PRvpJSwuaLxRr6iDWuyIt83Rd1ZD2gu/YStEaBg5jQZ0OiJppx2VYZ/Xsu3fZUJfg5
FIQHOkTa7jADm8sm0V2q8C2sH2lVOtkdncarbkoP0U8AXVOSZJ7WWEgW4qQs5UtL0aIe4HsmChQF
okXPUstiRy/8Z49Pq9O0vET+gwmS3zj5aC/j15Xhz0mqq9G4WPJVUb5XjguJoZgWUE9yfnYtId/X
3LGJX5YHWLk0T59+yW23gGs+lnZHyjrwbuF51igjEcRx0C+3q5XCGSyFSw/5Y/IK/0KARdUi9CPt
/+4nJUIh71/qlVWFBRpu2pyU2yLWId5C38D2PyL3XhBJLAll01blGGmyPVaT9V/CJk5SZamksa+r
cOlFKwjiO52W9FemN57Z/MjnRsvbeNtnPUJycEsFNcDMsg9l4fqbdb2yK2r7gtQna5hZ2Eyn7gi3
DhR+QdhtDpiMI7z7MvMgFlJ4gUDpDmricteH3xFUV6rEDUhpP7+o/InSGZhd4PmSas4HkNhOD9JB
dcl8cOPkrOxqAB4gnXe1xN2RuHxMM4MokaAkoI9odRoL1aHN/zcKVqpYfo8GnEO46O/Ck+oaPcpA
Gtm2AD9XnBqz0s31YvgX/TwOIYGw0lJ52lAwGOhQYibq6Lws7CYwzyICaiDrZnDfgNrU1dhDkA6n
uLAFjpmTgnSmw+BmI7Y3ERRz6jsjqYkXVxbK+ABLa0eKELgscF3/ChH4FlqtuXf3OSw+8yxd3y5p
jXDjsCcEAn2EG4oVnGySLPJ4OxQof+QlE6pP3H62d34i2ZwUD3Q/zTMaCZ+dkYCr82mA+bQ4vaim
dTDBP+0GQlHx9mgwJ6KEpR0bFMxJOblQjI2kC3Lb1ogmE0zbJTIeahSVEi8Kr+G7JGBNl84HGS6H
nspOBwFXGBD0+GyNwNNfpgV4MPu/Yw4InnrLXlQQ2o3s79tJUePP5ENl8aBcdBbQR0Pz809TtOmV
srfpXs4Uq+UjAooqewW4YgiSBbxYHGkyKumoPSG7eePD5QSsTCsRzuEaE2x5hBKHtVXKOAYsqpe1
1PORC/tvWkCKpE22x9Tjtht5ytywvTLse/VCnvovjHU3vGztCfs9VIey+59atgfp7fHumtCWdI6W
5u2aavINdAwCBhqcaF+IGoFI5bHm3JoLftCsYDh6uDhambSI1EznCJfqUF3HgAgFyIel8nQuNjmN
dMP83lxKYcS+qteomfGimkLHH23qe6MwxCmzR1NDLgvHSQJ95WfUWrbYkf4vzerDncl0sx2MPbvv
/kQNGFmuPjbQDS7X6H8imqtGLZQ/dPmdjvQBOyj3WLwnkFCI2pfis6jucBGSGU+n4WS4e2CFI6Xw
VilLJ+uzYainuU8NEAUNg2LvVC+aPGIHvw68kzgmu1bJENRvHpFuZQBT+m/lWFTNT7OyqPtsTnDr
dh4AjMH0ivnCHONEOgB/3SDTacKio3c6K2wW/u+7mcPJl5v0BQJIwFlFhDA9hdAcDH1Pwq1u6Kyk
U97YgfQlJwSyFVYIfyWI0dhx4xDUH/0a+Px06sryaMTxgyPRxwmFT9y/eriO8DSMLJ+yensNb9BF
m9EttnC03K6Nfy/HAzw/V1qE587jGnZ4Gmpx1p2giVr0Zv97tVWYeooTnyQ+PJ3vsguVG9iFqcyC
/6NWYZeZBmF8P481t900V/vh3SdTUg7ktrfgwvEbf6jI6IndXWcabAxtLsDW5YiUZnt2QvNH6vYR
8ioZJRtoo+wG+vMBn+kOdIc3uC4L6jAqhSscQ4xnha8wVp/cT0rjA/40N/joApf0Vhorr6Ba+mmd
kRMlHY36BFCvuSZfiHqoh7X6bjMuiuEz1H2obiVyYyZOqv2JvugIjq1Avh5IlbRCUcbeW9YLf0Kc
DFW8L9PhRZlOC6gze01bMPhT1LvXGGnWAqKeTqoo3tEJe737h4hM56FfppRl+2qVjnPBdE3V+WF6
Ht981eX0O2xZPFa9/JAQVqAxYrcyN0hH9Jw3IsqkMNWIFJigeE0Zy/Fa6/y2y1TXyIgQ1Lj9YeRY
PXkIpZ7eixF5n4hDOZ6y6zrHdxGV1tfWSL+QI4DXmSmHB2si03wXQB8MHWtXa3OMG12QOfIY1ev/
K7IRzpOYbvZ8cxZCuSv0pQPi0bBInlalKnITMe+/mG8TSMzpz2xj+jJwF1cp7kHKPnfR57dR56Xy
6iTtnv7NbfGOcIT2uvSFjWnb7nkUz8KFki3gs4AarkmoypxizY2K8NJnmE8ujAgIFicnfJvkPg17
yHO+w5whMvslxCQoSgxS401J2Ak0wWv0oA0GIuxsa3xizT+ujqJxIrHxep238VVUPFj9bVq2lgZt
0R/Ej/W3k0sfBlKvUAk7yzxMrQewhNFu67JOW/AbrDYeIRij+6zXX++43SHurP1sEJaUAAiSYVjK
Yxxv88makQ+sa7tJ68L5l1M7hC16b8YxC5NLLW+73DddcYi/36xMYa8i3uSDDWfSgzNuuDxDOoYA
2Cmd/EPJJjQAGBJk5Md3bqFEoCFI4Hf9Y8370kBmYIYj8BbIIkfDw22A1YGiCBK7Bxiww7BY4fx2
7HHidZOTmuGOjko9u98R7TXQ+qPzmqkjWA1yqkUAYQoxN6d41oYfLVU6X36A4MSpSMGO3NfezOD0
KMdI9/MNrWvE5tIxwhUFrlU/gP8Kw7fZWE49ll8KJ5bvG7VYWYrWuB4vFirwQBkYJUnf5bvFePgo
ag4YmjC4kjsidlN4WSed7EOTUcdWC7luuNRYyYyxuHk3TuGAs1y+ZQ7u2HnTQJbFS3wfIlaicJSO
dbF4kKpcXaCnuwRXTgPyJC9dM7J3quHTd9856ToU2zo8ZQR6ta6Jj/piA/vaDe+i8SlwmnWFAgLq
EjI1MJ060swWr8W4MYXukItbw1YJbNAI14YORpdMDxXr+XqhP51XMH9v64GI6Qpz0vPBoITo4xYt
lI6DAE4NLZLC8EJEdmUWtN6EvEknyzKTBpRr/Eb+KLNLODMmPnQ+ZiSuJlyPr5NljI086mkyEuBi
yRCnzenrj8MeYvGA5ytqKhFEqEEHDY2m5p300oo/KaXpigNgoxJlZGVSRkk41lhJhezZeDYIxkVb
+4z5Oz0tinWJaJsx+i1rtzcQrxOn05B0hoi0OrO3NX0Bz9RgdZ6D+xsZMobWyDPixKW6iNOX4ajq
B71CCTXuqjijiIzBGMmm8DTVUmXdVuxR4+YYz5rAxcLpD8Nhl3+DngKSL1j5cHkcGiwUvka3YKJG
dbO/zKJHcgRDRbArCQNvENrnq364dJHAhDhw8dXXLSrUn1Rjf+gh/DAau9jnTDhIQFF3DdLsS3g+
QhzEdQqWypuH27NhBMk8cUL5VcootqiLxaBxS0ngm90DazMUNOi/tfalOafIggoDz57Wyk2EHb30
jY7LKEl18bSh9LhxIsLTEQDohZvbLik9Qk++ixrpUF05HgTJp6RNvY9rAonpIP3uRoFwTTvFec3Z
xJuhTz462523GpyIu5BSG0eHAPz+eJO1os1A98tI4UJwrBmP0C7jP+S/gA2FSV4Y+KGm5mQIf7yG
ezsbj6nePPrl7HzgJZR8Hl7pVr2E0gKzFGE1tyVN1oBIy36iVzYbtVZC7A248Th3shSJ6XEFRia1
qGdQVB8znAjVI56NWiVLMbhtN/Q4OcqL5oyZRBZm/Vn3XfQS2lCMDeLffvIN14F1wZ0WJ/rnQ6wF
gAUYlM2AH3QPlxRv3qfdFMUNkmXLYgbPw3KhDWK9mXlUZzuWrDy+sJU0xVKonVc6HsIH5zGV1XBK
6PJYBvUyx0P/YJsEWvosNR/1LeUf5FJtTxjqQhykMu7MeSq19zbeTyUQytBm9MJHuA6bbEXFRei7
+5PP3usiAaHHjxI1hQHNYv0GabQIHfEJdwVJKHTQRlXyutMYtjxXlMG4oRqIIklbMYLGc4o+sHAa
gSLqL10A1fyJbmkZg8tUKjrB3P1aS5ECLqO/9P82TmQcU5k532IFyDn6Lkwnig0/v04HUnZlExWg
fyornx11mD8wNlS5FdNajF5LYSsfXGdCMzdv7qsqxJNdissecWVEEvXogDo9itsSulGKc/KDtGSp
9aook8qMxTCd+T3kZY9sF41b2gPga2nG2jXZcy/Z7+2QFAqa2Y7RjY/1GAseIaita0Bvyd5bWTzt
JWHG+zeJiPW876SOSjc06XFChNRhhgfdJV+eMmmyUhfMGgQdgvrOnvC3RidRUDavbvpeP/CxjAo9
WChqI+zR/31m7QgCZabehrmW1utJTtfleaDCMvXumvkxjyjpy3BrhT3C3R+DzNu9huRSgXKTZRG7
1AlG0Iwca6MJYSnGCwZKWASzfUzQScZoEX+hzLkTw/YoIoRF1ZIlb+8Vt6EweicroleG2vv3Ng4Y
/ABiNxCCCt+M3COC+weRCpSH67Bi72oy/PRipESNwG4LUMybV4YHP0AcDGWV1Qw0XFqL+s3iAozx
sTZ+hyeEbIPm1n3nfCX4jlhjzyxDLpTZ9GosquwetDzrC8HvQx55x29Fdde3hqZ3yX23WkQYjiNn
aRZTYNBcZHquvor0Q3UjiLo+z+vAcUW2sWuxNknvHhs2SFtXf2ccAwkFHS7WIX/DxoPcJ19+WBlP
LS1RgD8mjTUxFV4IpKMsBrD0t8q4GZEX28xmpixP25fwUJKg0BYrynPb1ZPYLGaUCPdHLFzBobGm
xHZXzFIQUJD3g3dd5VDhYHmd8DmdqAwcpsKJOck/Io+7cKAmc1YPYnAP2c/jqHugmY7sMaA53WS9
lEq5M7y+juWYEon04NS1qgAQrsZs5RjBOSfgB7Ylc+J5kjnrXpHnWUE/DXOI+BfiL9W5lB9IXIkG
8rUnlwOiHFxnHnQZFZwF4OZGV6Fu6ji8vrUOodazphDtnjJj2nvuEGNo0/ctIrRPopOofyw3gupG
BSKPczZJCCWZc95bORDSznkYyguy/g/cEqZlyhYpqRuXCgJn6khqegB7/kjQSlX32AK2cIWd92DZ
HESWk9JkGY98oPvsPdGQuveDFzPuMmT8L9g6CnAZ2kR//OgjtGrVJcz3oy4XW1jCqXX2SUkInlk1
hgk2XbZbPHSvUV8ftEGo4JZmKr5kM0P2nmC0hAWNZywHxjIDP3dv7foUBhVidhHXV7z+TtB/P/vL
WnR1f2Uqski25g2s36ejkaFjGIJwbR8FGzaj98z0Dsa0g+CYwbmr8PNsxnD2fMfNKqFWtVVY8sUM
J3oHHXfWNkgjTUHhLnlmY7PMq9cIbXyZg7q1JQcRKpSY46x/3IS01Mlgf8f9Y82CWVtBoeQ/2H5Y
bupVYnGf3A11U27Qt0JMQ8bV7OxkBueOuT3z9JXr3ZJI2vY68UxzBMpIApJmzh53Y+rs3M0qIzM5
8L6ykwQ8NQLF9rO/ahqC4FFMvJ+AY0hvx0nIEmTEuTbAJYmU2tcpzDMP+xLZWrAdHB+t9F30Fszd
Dz5X8PJJpXzlUvFSoFSDKAa1nvw7ozgW1EIBUSxsJQJQUA0yy07Nv9qBtKGTqI+mbLXlOThVGXKZ
OA2RxkQHh2+GeXQa1WHSZWEwBpUrcAKpWUFjTIVTqQHUFNsc5nMkSrJZMCfUKppAoGVNbuDoUAl9
ldhdnEPKu0hRSTma7WfnlWg2qKPMwsHmYpWYQZTiQbwz7I0znobj8nOcr/lHIbmxMyvZ60zWnONI
aQSR11ckx9FFyZIRsI+d/6BrGliYK2rEE3kdB6rNdsumkn9KOTJHP2B8wig9UL0vMQx4l+Trf35S
19y5CL7+6I9AWkZF75spZISHLSWMyO7rQmkKHqoDLOL0PEaJn6YUaTZzbq4dFaP9l+nBHPLzWYYz
oz6CTHqLV76YOTOOzMk5UXibj/ujva1xlWrmuID20t3IcM6pfBeqoF5TbsYnoL2RlrB75dnffZOX
L59fr4RfaSL/uYVBDCpvvQNOqHnY9iBweZ/6jy1v3+pW953GjVkHEin9ZzfTmPgLTCCDX3Opp1VH
je2dX+ClQBQw9I0GGPYjJhTmdKq7htUlcbkHCHUqJjRSiisGJRiKmL0blvQhdJNX82sL2wfJ2Leo
A6OFSpqcqw7gNeq4SwJfXBuDHW9OARhmxXvgKkIWag6FLdZVD6zV5UeegygNVSz0uU91fWhKDi6N
4q4rfkKeTnUg7ZdTqwjGjnmwbr3QmvBGeFQuC08ZcTKDOlcywSEdG8dQSzGwhkLkJF80xKx+SqOu
EkvrLcKHrKi1hw3CKptL0fseR8q3sPPT3SfmJFXxbMPhky5xUYVAvOf+MObMw/CNQBPciQ4A+nrr
HhHz+TDaHxEHbER3ZwYs+6vwMb7p0/nIYlbPSk5hXupqnJCS4rlh0+VmwdQlG72nWiyv7kFQEUOl
teuuQeEAw3Q7naPoDpY/sUZGcVG5VYxDHf1/Bp8OTBFI+Yh6X5n5NP54ki0ukuhNzVtf4b04CH1P
4KgMA0iO75Toscm3TbusTP2v7V/vr7vdF2qFxeXBH6vgcSpWY4x47UUpf6bqQzWMeJJ0qI3in5dG
I3UkTKBq2dXDxUrsFXkFIsdc9/k0jcPNaMHkDm7D6ySFd9TTFxmCjvVdo4loYescMVVTgBIqgWh3
OR4LOX6NFL1UxTNZMgjSDeO4zqWz8H7/0eXOIAfHm80UDiGq6Vvj4DK1rkneshkpYilunR9DKWrt
Dlzw8ngmMAPXcBriNBcsgHDPKkHDEC55DyFB/ep8rdegN1W5WdUOvZs6u80/wojIGI2jgo0Jn4LD
vZmaYgn3xpS9oSLmUl3pFpHaRsUnT9IU8Z87lTWEHkUTAQYerH7tYFBVHttjig3geFD83EHQM2Xr
siiia9hjtwtCDQLlil5uIeV+ry2PFuxJ/QhFKSQpubuwZp0Hu183R4v6JFVAM4jrOLwrtYrOY41H
0uYsSA9IA27LokooyZkd1Cvdcq/RgmCATnOV0GtH54FrvJXM6VE+SyRAhthfPOopDU4HoFneckJF
Ce6m5jGyKiy4M3axLu7ILOHP3TRnOAIlkfZ+7JjNPMVeR2arZ9SLJZgLOq3ZSdmaifVGc5951S/w
JGu7tKEHaVNsxTFp1+r/1oX2hGmbViNDobouDUpNblfbZ0lMaVcfXeU1Ud5TOp0S04mOVujK8OpX
m3oTlCCD4mjoxyS4b/nA0/veyLZw+Zhf7SA6hVdbu8f5LzJgnsqk0QG74KKt5thuJOvm20Gt0FNz
8sa4vfPlAL4U0pgiPS2b7tzCtp6xSTGavgjL83Tqo5MOBAMsSksjLCaYS9dEhGM1G0Hv8yTPnBMJ
m8HPt6RHMSRmOfqE78pZ+rJsW+e8BO/cL2Gb76DA1aiawviodFAZhnw+wppb5auyHV7ilLhPGgZs
yIvK8nkZ+GZCYUfk31+EOrl5ZYUWlO6HVscZ1SOafEhHyZ3Y74h/qm+QRB/IRNCbekexx3xiNXQr
lcghhrOHEjy3EQ0oDV+w4qiNyehfE7XaKurlK6AJ+9lqQfynPQuOcVjY9s/2OXB1Rb+Q/qHMANSJ
XWBmftq2zB3/GK+cdY3d6ffDyBh9ZKLAgupYGTAxHbBY0KPwiKj2YN1tA2HfGtiFOw2pfE38zbw+
L3ywk0ZCRWne+OAPnetsIf0iYmjBj5Ieb33/00UA/C72S6OtUWI249zDvAgx7XvcKC7r5sVsTwln
oyNLW8CyrssUyOPQzi2d9q7VFedUafa1p8VTbuQC0fuALr3MsMUy12iu+jNiYy2k1y+ho8jnZLSl
/w1Y5T7Rrlpg9VNQCSii4rmoiOjUSS+UF8NnG6pY3JqrmXDIrIq/ilXDhRAPWOL0YdGOi7mCv3U8
JveGFp5YzLdf+907AU/2sUS3Z5SMaWoQmMIBiaPTi3iThvY/PbtJMMQdQJSANfR1ahuXGfzGpbjn
qkdFqU+w1V8QhzmkTaBUgz/yZVHeDkH3HBIBwSuCB1wvmiuJexuMwCFuSf8UlK46eg+adGzyYPge
07s87hwdCY+I5wucvIOrlxX12N9NGF7ajs5Mu4Kri01f4JC2EB7M6S/Eu9IE/lR6ywLd4Tz27JzF
GmTKkwAFB/97s/Xvel1YAZ+d0WJhkHJPWKRFrM72ZaHoHzPkXaGrxMcEw6jDbh6303HTY8YZsZLg
xYr7P576D5Ii+7B9UyxfCbacercnR+HLWIzW0+E8w9DM4UML6qO1myBypc9RpIHXts9Xmxvg7Jns
wvbD8xUILcaSeAx0EX1CvYrwpo3ql3S2mTmwmY6g9YOO7Iov/pfsHfFuUpK0SnoUGtKRkZrXXktY
NhQMtryygVH2OGlaouLqTNqv8R2kImLSQAEmej0NGqCue0s5X4vCTV4EufopwfeQIuvRwPqheR1B
9ArPqEhVEJggwFR1bRzm2JfuA06DjFwWTAHZtMN6WPv00KSmRmUH+hfmVY5eLsmmq9T2KwV3wgOI
1FWo5QwH7pJvilyxhW98VNdMwKB0ubVKgUOIgRK0FZ4Ni37FWVZqMNcMOxIgxU9EpMDZ/Gxclz8f
qG8G7i0hj/e/6s7hMdiWrigStbx0odhm0I+9BlnvBWg77+54euL8d4RAkbuBFGYl30Ka6c2Tzs9a
IBnCVRu0pAg+lHuB/vAtdvEL2ETzmQ6OCYkDaMoIsC+BPJSUSbWPmVb56qDBvJncYgosL9peQTHX
tXTC9CDIFvi6a7H3ksfJqNGhhUGARbFDjQBnRg4BmxoIgQC3/CQ3prPIGl6ZPiCNbaq0wxgkp50r
uNTTF20mAxYWET8JDPWteex1KqdXzRhbXqUmOge/95ufsDPdL5hg7MilSQ++U5AdSL8sz7XkJ9XU
tRvjQp0MTc2xMD1bhDyR/dk9yFQwV9DrfLsaiTknqGwPYLBng8+EHYDBZp1pnUOzFHr0proUovc1
YNHpESDpmIbOWmjP2d2SZD66sx5bkMijUKrPE/DHIBNvD+mJ8kBK+sMnrw8is4bQDko/h6UNgqbe
s7SQ3xLPgl7oIRGRDfYZPTp5Rs1ebwO8/ImOhJFmRS8gnHcm1eR2RRj9LzBZldVWYFenkH2oB2g9
vVWd5VOdptCIACQ4YKeBm2VMJjbnUeujMBOr+ujutJbfkl5fwcNE86BFFK4nXKYZ4w/u0KgHiWRV
c1ybmI4rOgPMt0epE84erVdvRmqi3JHHUcRLP8gSXzrAvSqefD6LYKwg+BSV0LZSDeT/BQab3PHm
t3UqbG+mAlWLUDTtsg6vwE2YvnrlPC3HkWICC9DU4j+f+xkbSyxEm7yLQxe1GgCNyPfaEYVfi7fS
uOWEbJTSXgzQgO5gxDV+StLu4YGH3a9cLFUBWUgBuyGLVlBtWB56werEJy3gtmpynvcTIR8lKTbk
xg4oP4kUZ0K+o/g1JS6UuIBC8Gv6o+jQ7Etvl6V96TFL1qU1EjUSKbMB2QTXojjZNm4uZeLPJfco
UCwvyvWEACDhCJ9IWLe75GXzo7ZZxU3KgEQDjSh0XcqZJi2QTYUTye/Y+4zteahkjiPDGUfYGlzt
Bol3bMIYiL4d5HHqAowbVHR6+9oS6dmiyHa8RUsR+L8zLN2EmNXGR1uT7blHNaUmq+HVsmUGueHq
ay80pJYi6yrmp3voXE4iPlyqpe4ZFFoEBc4S4K2omHupxadrGbDiJ+uaETGOJcvQR6FbY7qUYLxf
GrqLu5QjJuOYAIWKqEqXU2aA2Uz9LFqfTtojADyAVgGtyv00pVqgCcZ9XZEnkPhVYrsvSY2jC/OK
5gSZMeDmM+dPBBPvt1gx89qP0BNWCjvb3a9W3L25zv7SPyR6hRGIyQfFxoKqrKAoC6BMCpX4q5B5
6rZRTuAol2RdxWsOn+DYTyKkor/vk7VZ1wy9Jc2bEmtWXvoP9RMhnHHziZ3iUiagibfXjbGz68+m
aSjKxzuxdrJn8dQa8vmXRDOdxMg+W4AI9Y8wDfZZG5UpYB3CDaL14y9dC5ZgQvXVGQ0tGR1Ikl2K
HzOAgYt0/0qaMEYG1gKAnWD8v2hGeKDJBKAu5CZdsQBu3YbpSLO4YHuxvzdzJCvVA4L+LsKwtqqc
QymL6ADqLhPLOiUctqcVs9p6HWpTm36rZXPayoXt44jH5oQ85Rlua2jwSeI+O9K4UdzqHrkrcvvA
aRR++eEKjQqCjWSLxcv3UVllUoSWd3mLYlA+RbJ11PBEcv4YQI1C5oGumUlk73h1j6xf/ZlLNGFW
3O9qK4kh9wtMPNElqzERPzYvsmirOgeS+IppaDQGD8IZMC6WgyiTjwzPOYmEn7Nert7JbtkHLGsL
7I1D1PaSxDRTzlL+MHEzRpVgiN/hTtXOf+TkBdGYOrtD/hHecPxOVMYMJTQay9AemSfzJbKOnkD3
G6kqf0ToMu5iXSYohTEsKaAxSLOe3p8OLst94/mvapCWKlPHMsWl/18Gkl/X2rRW/cESFIgg/qgk
GKY+rlAXLASXfWzxEo+gj2sBZhAZFRx3OK+zk5K+LLiNdJSrOxpMo0gGPLjIHj1imyH1GFhX1856
Gpje9HwyfqKEpVEfza9lWYzJMBueuu8Ppi0axFXkWw/b1fKUDLW9Uid4vubiiZoIMWr9gFRM4pPA
gd4cA8/e1b4BiuY864FTnxqJ9xcMNRKdxfEakJF82y+qKjBvR6dbcK+yCcxN+aFpAdYCGNI+4tNF
cZH/Fi+CA5Ykg60Y+OhVyP2VaE5QkmcngUtKsDjF2Ch4GXw5LhXzxDH6Pxp1ccgS1mnWe3n7sil6
S/2bx5lHUQciSyqT7eFYxPTTOMS0XA89ypTiOmZmCxOrt2hGU2clZch8ojsdmXVmNrrj9cCWaUOI
be9akVt5eTrcPjtfeIG5e2RvEkJGs/3o5WLf9Nu/wjuu8lhQWdyh4k8b4aULDmB5ptdyrNelrl+1
9lEu84fsYtoetu5Z8odio01qO4uGJq0Tf97ybpwcvBSclF4J2AMMpvCoUD1VYRwMz6uhjs+n4XUR
+YTyOngBiAzAqnERZVkNKDv8x0+Jb700JWTy4ETt2gaIBnAkr8DQcWL4iqcHvUFO00sp3YF509d0
f/8/Rh+Pq0FttpjFP+qzuRgfyBFnJJ1/r4liQ6Pqc/nabtdVTdPWTpl1+4AET9KBRX7UM/srlJDF
iUcpxVNdXIrTzXbfBNpIaoK+SMEaRODU6ZIJ39ZPg6O83L95HnYM2opqyp0mBeHIZv4/d8fIXYA1
zYjypeFYeWqI5FJ/8Nvnr7bMSkEm2PwxWjqZymoeyB3Z4qNcgkf7KaqQefjFIghlx+Sz2tIUkh9W
KpwsqfEboHb4iMzSAFSyEJHGbBADgaNudwuCE94rNh66NKh6B9+ozWOUKZTGLdKSC8a9t6Wplgtl
CXyCS5mFdxxjHPWtc1+Fl0P5JnksDkk3B3ZEWoEEYwJgj7NtDBLB6vtxcoPvEpVUqaLE3rfX1TgN
5emSjIndkGw0MJ+deUKPsUp5yK4BYqV52eHdLo2cwvMxDLie9HhA1GT9hPQYORvj3zVnLiReKpmj
34IJ7F5V8Akuk+/rgh3OYbN6+CNN7SnCQRF+/e37LOxdynDAGRnCbf71GwuN9Qw/JObGEHvvEjT0
XYZE4d+f1NsFSjt1MVVsP1lrdQDDPA/smsrxILoeu8hyMwDRDqUG63XUI+bqAyxU0hu0ijlMEYUx
vIV6S8JJh/Y9Xs4ORPfKYB7dZnu49nzVShAuU9pwS3cYq0gv/aQC9N796pX3/1hZIB/bn6jIP395
gKHC46uW8rI3WHyjyD9jBg++bgSNFcfQldIj9WHyCtmXibPnT1bw9NxW2E41xCpq7j5K/3rKF0HH
2VORpyTHVrGvv0RcEO3G03a0Y/53P013OHpoFU/ayYDjxEmhFb7H8frLdaO7pqYzBkP3jqxd3kdF
JCeGiqxKNvR4veWF3YV00MKEZDdRrkUBB0p7lFu4bYpwNmOiJaF8B6KaPRb4WqwviQmzrhBvFO81
kA0WRdYS2WYkDN3BWbYc24o3Pr31jl3ChMUwkOTISMn/22LS3R6QZ8HqXEzv4MlfgmujyRFSZy/q
KHNaRFG69v1aOTTvFGtCgKDdPOTvcowWmd/0fMrVj8mDL8rOQWNa2Bplo1XeB/B1WADXFD+JHEBV
vbJ8EKOnFHr9/zTus2wt9zRkBw9fyKzYbTq1sx+exHdlIaZavDis11CyilWgdANJH7MK3jJx0JBd
uarh2dnmD3Mz+1lG6v4Imx76hqiWnEcQa56AeuEfxUToXn/t0+luaqVrYiAs2jVW56ql92MYj1eA
0eUdIdy0kFUpDhznuykNoB8kDPPsCM2VGEHrVlcswEzsa7qvarwUoQHBVcLr8bIsTKel/eWELEeW
UAwA7KJ104Yn76Gy1nprZnyo0xDnQz1cX521IDi4JDETyxHqKOD6gxkBdg4NR5nfU/5yNTWXa90/
dj1bcECC7aC9773EWpmxR1V4LW1s6Rst9GWEZoXvKGzQqKY9x0ZXke2I/RW95FldaPqRnRhKDAqN
eo5OD3XjZPdS8UqFysuiW7GdE2adVtEmSTv6wrOV2ajSLvnG6tvteem4J3DZIUHeQyJgQ7O99tba
jYhLWeh+lo0vvNDZ2XlabqkFAfqXnCPq7a9Xp5SSsoh5/bCGpMA7fMFryHW9ISFy+qVebfjxqsS/
4FfBlX8LYmzfcYExDCDbfTWg7YFfXW8nMY7G9sNQk96leq4nKhWGs89hIoDcJFCbXl673ac5TdQs
pkvWMI/rn0LVNunsRMcEV5iX15OF9s3yk+PEQuPiUEOdaNG0rdKUiWzayw+mIBVi323NMnvSdA4N
+CdLjGsDJj563C2PfGWOwlQB6O2L1alaPBmxmqZ66IBCOp1bPTyHDd/qOpCNd/CuH7tuQZOrbSys
EVeOBtdzSVFX7s1a/j1pr0p5uG2T9SR+6Dy0z+lqcb/Tbxp2eO7yEAUKfWlevlLdJGHJPLa/gzR+
e2zKrrsuyT9c2Dp7+n9BpWQOk/rmL9KsiG3FB/WrcIgMsjwxaaIbDxwsgGtuIe52Vebmyu7uxeXu
w+ZnkiP70T5P2WL+3HSiDdjM2HNEoI1rZpl2zOsb9KfJ8sTBW4Rtijfxsj9vNUjONaM9oKqa4K83
k/vdg8dqm7RLeic+GOtlLq49/AmsM6j3khyIXICsZ5qTHt9PmT3FQET69PubqdiWqTCAkXP669KV
5li6M3m/6UomFF3lH6IXKivWiRQ/AGfWnLlm63lEPr/ijYBu65N3vVncbsEW7J2o9+vNt8UpvRA+
CfsjCmUfzTyPPrtGb6+aM7ts3T8IE58Bt8zItLW9dKwii8BPwJJc+QW8WOhkJaQzBBn+UdW1Rgg/
Z9qRdrG1ZeA53qO+SPY3WzGrTaINtgQxoKo4mWajD34Dq9afYGTSBNWXr8H8pTthzvHad3F2G5e3
5RZLef7baWLS51pxqnoeRoCJoeshbhMluWHREBKK3rTRf6p0vCqKLy4BHJfpZlP/gNDthg6qi32x
pP3pejSJbHPTHQMr61BYLhFEhvCX/XDkaOCl/eBDC0oNxCuwf5RhKkATjWqVPXCYt5j8+QIShpxy
cJU2G1cYh/GOz3JUmOe+3R/fau2oqYSIGyoxrbH2Y8XRmXnV9a2gg+DZ51POwDvZu8HQ41aif42P
k9tHgYHIFQ5MJO3jhToJ48bEV44VnwKgjW2cHIuGaBjXjxR8Y3xb4vBf9CDhOe/xya4EmLZftMZo
/oELkJFYsFHRkb4aQJ7HDFoTG+R5Vo7ThNpi6iYQPcxANut1yNv9KnG6ZPbdxIK2Sc3nj6qQ/zxZ
UcQgjEgzCTpWVtg/jDA+ROClAafW/ybj9xxunKXC3SywDe2hEHHOf86BGxGJvilkptc81wm6w4rm
X2GsOjQTLqryaKpj+L5tgGwtpEqXGNAWFqswws0yXwDuqKc8+b+guu/+lLn2xJji3UDrmi7ieEWY
S3ctZ7ZsRRNRQTEYm2FyOu0mfvMOGT6aD46ZtD172ZHwSol4pQGncZvdXv9czf4NffE3mrCzLyFU
yUHiQFb4OttnqyMw4Fz4cDaMQIy8g7w5zlAViaQ+vc6AogyKv8tdeRKRpFyGb+hJqY2fZx0ZWplX
dnl0Yd+JdsE4cTzm1YMfaqbTf0UZwDmljqJ7I7nJv/SCrZGcZmEt+DLW4ywAaBzaiBMX8kHYQ16u
ur60OyAQDJJQXl1+JFRLyh2Jkk8+J02yQ2bSvL3TxWl9SGfAdeFRNh40c4J4nLVSD9VU1nr8Qa0n
rzKrXMKObj4Ot/rhHE0cA2c3MT/i+1X7D7e2nYId9+e5Ov4gKyWjFoDeeMyuHXb5BCHFsjNjHrcn
iBSDSBeQ5B2SsTLoJajg1/Dfdg+L0R3V3mkRnfj9IHkY/R7OBH50MKVS6GzDbvicU+aVmAEYBKTT
I8FRCx6wbLN5C1NshXkgvthiSMrPyFNQF38Xe62+/U0e2L1PkfaMPreYKMuMR5b9bdLAWLjV80W8
LXIjCRB4ecw6O5UnOfZF2A43zTe5HvorABI5FWXGZDsU13++D9u+cvvxNlY/GsvqMpgBVnp95tOp
KYapYQnA0nLUWSsGm92CWVNHfhu4iVzkhu7wyaBpQPhfOSb006Jr9Iw+fZL2UdYv8J9q/iEVxYZE
5e0wwARXHGWZYubvMfe0+NQsf9n3TPYSX93wWCE6GHrx5EFHvP/uvIgUcCQn5Jntu/lF0ttRq45b
XHrhMC6hqE1YnkZEPjB5rPgUw5Wztx+Im7Xs2graKquicHSdbKQmJWB87+2yw0UOJ+08hPhKWo4W
0ygkKtrgOxMVPDSRYqa/Szrchlz4nIhfL+B2KsAoZE1+G/s5vytwNY5PD7oakneqLwQWFi8vH0FX
mt5tLkf035vrGGMKbl8Xwds5kdtxbFBWFAs/ZKrjompb2LJ5WT0zYXdwuIJLHPoSF29SOnih5CzE
6mAenIJ3Gpq53ycwPC+49tUnFGl5dj0eaRxzrGE9zpm5P8N6J9egRLs7nElkJZYWoGSoy/5fBU3l
8yMiW7LMN91ZGiEzPI9BOTiPZDiqTSXzQYJDaxTo9Fuu0H2lIPxJc38PSxYCB5E4J+p+EMkL+fFo
nCgsA/0XhEIP6steWNaCdEvNx0zRoUFhi4i3oOpONivPl2aGTKhKLUPaqOV5YfBcKe0z6wiNRd+l
vykFMkpDiMirfa0jPQOuy6GrYCpSBfFubXDuGgMp6mxM5AUG21iBOgJttAHlqig40KmieaK2pYls
zOs5G1n2LKR0FAXv4w1rf5NXFXOcElu3UEtWeq9zVkIMdXmaQuv33VvMrKeEw3D/sDoePSkGp392
w2DNIQXOvSdLnMsNUbVy1RfgE1uK5pYQuXhaHcShJ6Ochya0IB7nLOAS5aze98nNPJfqzQLGg8K/
KMJyaHVkgDXuh39amvWU5JpM7FgSwYwT25jlnhzdeiRewliQcpxS+SyahFsuhHBZEJxZqquN/g5B
kTNGWwOinyqPBQQAVUNyX9HBA8uFJEuYd3CENA08JldwehAzjJDyUu9upj8Sx/SmvcABWsh+d+Z5
Al1nbYZY7fsylpfd/7mqU/cqcL5BCS98bVIW1SPwezEZr3rDg7fk20c7cgqh8g8QckI0qaFobSa2
P1wjwuR1BDhSZ4e1so4+gwnMTLWyideA9vIv+rkedMVpIJ7xClFYSzO3FfgeAIFJsNVvKUPwfsWM
ZHR/HH8U/Bq+EhsbgIt64rj/raPzsCK93PPewHhogdBCJdlufYfC02FgjT/TbQvQpFBCNrtfolIb
SZBhf7cK550XbRsjZoTjxDv82TaYsRlJFFTO2WhRmn42XroYK4YuDLlENQkq9mn3UuAyRdlSGj3w
g8a2olhmfDY1YUY+wah1zxyIN7LGoylS5XAu6pZtFlXUmoPqR2bfnlJV3pLyFcqlwbywZGQ7tsrl
hIKCn6eQJwQZfbpvYvcgrze96JOvyluCvMklbAcr22SgRSKoyfx2xUluiLe9AaANtZXlQHFf0czV
1qY7TCnYg4B8mUyQ6oWEsk1F9S9aQGz5uqESXCfz5L6QSK6arTBQVyF3FUjdS8GmW5F/ytA9kzCl
xj5En7vb3or6BdzYvEasdhSkL6/qmK/zqSeWxYVnug7250xX6SUoZy2o/gFsnE0AzOKuJHjdH4TN
gO61JTbthRHLPuwnNWbBIwVK3nH8KdnA/xtLcv/kQTCk+hym1/QHuMYa9tSO1nQ6a0M+yAoHreLR
l6yVbvr3kVvzQQ7yRuvneEBmO3+BJpWoKQElstTnDuYUA57/y/37CkXI9iiXHrIEcC6VHtjn/VN9
kvFL1u0TdB+TkthmDahXNpFmEf9z021JBEOkHVMeDFbKUB9JNOznVzbDt6btQ75L9WnXiqxbPplE
UegTcslulWN4b9Moc8pEcNh3NieNBkXfsVjnWeBf0SoNcw1ZXoV8ztmXXDr/NEmWFTahc9M0ol8T
gxoUi6/u9vPou44LxHRxuH2WnVC5zvMAwsefnGEUaNvLiqz+Bfn+aRAQuyvtqJjKjRj5ZLY8MfAc
yl/9rGRN1jV9WQWA0Yb2kV0QDxncZhYTd7aoAHWW1vrgGYCSpBdCibank0ThdhLeaN8btZrWBfwA
UggYpEelkBSOqhmRq2vBF//YnLO6phWM1/4U/H1ZL7e0t+BiZ3nBDmfsY8ENry3M99edcDOBvGxa
WaPmqvmHmmx0qS4dicLmwDm2f+B1Yrj8Y62gEU60+jAVXeKvDKsNdbJn4cScPlNJeX2zrqkp06wY
F+812lanfak9ybs6YEo1+gRgsyuFh5qsKXzbSHrV+QXp/GKqZGAEY7AY8mooXUzYN2ROH/y//eDu
vw1vWtee1XU94nHZHjnsnbP1fV2YpavwwtMs8co8drD5QTKvEjEEGCwo1/eaz+u7E2DUcnrAeO7D
ygK8rqCARQ7Bjd+pMFVOTo7Vm7xCYyGzwjvN9OyFoh92kpkd9XYzLSZmgXVrPxdRp4uRlfQL/SyT
dEI12UQ+E0Gak0mZQBD0GM9duPU8x/qnK2311+rCU9HH3pJV3EtNnatH7NtOCIN3ThyRrrweCD5j
vJ3n6vYAMr5UyXwKGZcwWuAs1OVUYRTtW7yDh3W7eJ6oGF/tVGwDjMIIxhr9ev2rK8g7SHCX+NIK
wlufdZ9V4dK4d10U6rC61/xUPyqRAb5XV/sf6KAcvnwrEozctn7mI93BpoO3QUt0kxs9h/d/b/Wc
zfet5PUjKxOhvjxCgoV1kXJdmVpmfubA3hh2vuSe2zU+5n3UxxwPA0bHVERl/1HdD/OWsBVWM0rR
kYLkPKcRCxvx0d2dgue5g34WlmjBghA7lCluhZuLgt8FyRDQca9kEKW3+C9IitgqmvM27Hej9JiI
NgfU+24mkSjIzTtbXrGXG0v4z27AboiTDXvQlMtbaIYLXZiNCmpz2oe5oGVAo4wMd6OEJjLNrBVf
Lovck36l0o056/ytO4NZQXtwFqlNuL2vsoQA9ik27+oiUK4M1qtLs2fbKlb94unwwnt2y1cRwN+r
lAtT+8jqKRT1KtDfQu+NvRYKH8tCtHCkZlaJGohSQj4scR3cb7ZclWcQwKq0wFJIV3vfX+78Kl/t
tE1JkOpaQmtvgwUfq5lR/JWyYXnmzUxkfmo6qA9w0ZIjlv/Ev9vFbNl51c4RzVwvdM2TWbzs/Qi+
Jvk5n54Txv3LtLfrzQxnfYfhCmXjjfsNG9gOHNS7dQ23WnFRJsvlYYrsUHF4Wk9gEgwdLq9r5E7q
MaVQuJh5yO6LcP4B8/thVLvlKju/itKiI3fe4QLNTSYhr/WqG7mb8oYONIKrhDQvXHc8nm91WTRm
ht5+ZteJec9DRKo0A5ObW8c7XFZJ+7Q4yvWt4s746rs4SEWZGYbiS0VPdH5W0A78x7nFVm/hGvBl
u1hknd/g3+OmMiuhOXGzGwPGA/ltffXkOJc1t6PoQCl4zstR5hC/0SIDd+eXFqZGRcBwZ6oSP2IK
9nx76fCbNANZxQ0XZBgQTIc85Ci8f5A3+bs5R7TmZhd6N3O82vnXVuT/yVy9Mdrw/JwMYtpjVoBe
+e10XM+w7WEPITOpPWakvLYvLpvQO+RGI1cq4t8YtwxT0KdUTaMYGUqf8Q6P0k9idFFvwNS4wFn0
XvHYv4Xmynfe+lONe+Q9Or3k3f5cIcfDoDAtzgrjW9TizamBg0vdl7relk0+P2ZZLAVvZHOz3nQZ
iSsWENQVv+l36PdsnO8DzOS6uaHNHwr7YpPVqpZlmQGatcl/75ZkTHWPsLGa/3AhoVIlXT5pGAp4
EJQnuocHug8GTDpPhg3VfRDvAoX7lPi3s7SToO96QQBDk3Gxyr0otAj6wTQ0jvZQIbtpsQUBl4b9
XXleRW5uKvUvUjuuE3XGV2dGpN53HwudZW2ANG4lf1TBPfwd6Rr3kXY/0qwvcfqlpbZh7zZYGpVx
CaqtlfmR1u3+TuSJSj7KN2QqDQF1xgk8ZMOpFZjY1DDJK6RCtcF1etGEl0aBOw8Ayt6nDI20MoBm
XDOZQQGB5jxDJXAXZosq75PRXSNmiqh341+F6utMczQfS6A70B+w7H+xEsPcrIY6heAfsecfiX8A
Fmiy9bHemIciGCAsUxKWHOU3hX1uHHgvhw8tWrc+2OL+jx1DvQPD62IrPzEx/QYH/Vnp0EgYNN7X
AR7aiFW/WtV51/Q8rKRzBdorqCNYCXYSYKcUMkNnA67DjoDgvysbxiP4KYFrSwqnTJRtBFZyVJW3
+AY9h1IkOnSOxAQFx7iN0Ye847PUPIGz2rM8dZpJmRg70OTyIZ+JZKEoZZbXNTDoZQb3XTMLg+ng
9vs3O1zyw5hrKh7Fpw/+oSCX8ZrtMU7uHFeMcj1UZ7SG6Lxi+MB706/Pxgic8XAVRGY4uucLjPPu
WKp4W82XQgXbFQd2zK8YOuJ+YODakeHg0odjSCAfq2k08tMDkvApplGfAehT/8NCSHNFgXqcqhXc
eAXWebbE0kxZtzpWuqG9K5UMgqL9t+GoOUnZC7mtyIMNwn4lKKXOgS4b3tNe9GXHsjqevISjy6+C
C0riHXeHSL1Q4FYOhAtLqp/nYFrd1zdH+TSYqjhyt57SDKyTdNGvHrzofK6Y2rBM0QynUzTRbOsq
9syYTugkPsb/JDnvje/6v0QtCxzqWdGrdIdtFP/4kl9jzjn9d6PkXnGCxf+iLgbJbIMTA/Azr7v/
fjmfbG2HmfAMhzK6X0WzMAabg4iBm+NFyi2ToQLzVyIRdhegvofA8FHju0I7pTqXxTcRKe9tPnpI
L+VjDSy4PkiyzMkHWTcOIYYHywEFC8kzG2AG3EsVytKDeLV2lZJFU/ha9lI/GUdggKe308KiGclM
S3CDcuXXhkED0Cu4/YGb8JevJZhSnlrgsgDT1ka4s4wBF+8yT/H25Gi2EWO7WvVxSrJjJigPxBTq
ObELSfoNt0+XoyIjV6cHiyj/SZz6BiDOxJx+9g+lZLtrNqs4afexXcAXGqbFAPE81+U0vBUIAvw4
d6CyrHSpHNlgWw3dxvyCT6/IwpD1XlDuItejcJ8CRPZ+SSd1ABYBFQ98JADJKrankZS7AmVVxdbg
zjZLG8j4khVO7IrpeZiHkZfClzwQse3ltPdbaOppGIfr0LBsBCxTxvA6IVYzC2JoumqmOwyjb1DP
8uujHmIHIXqE0vc4aIt6LESmm7UFmBHNWe0gJLfAHNToV7xGTZUXbk8/uklUHwp+XcGrk9IdCTYt
lWPR5iJS8t3kuKpEVf6yvLtmJBt0WZPFuW8YJ0ds9btSqhc/z1rLjRRVhNA8+7sFUobSx2Eew2cu
MG44OQW5iIvPKsrbYby04HP5v8jUDeCpdsTLAkdiOwHHDi+J6nIm0nVWEzLyFv2FeHkXiCG2BILu
0FKZOjyX5qWYHXo6rMOw4aXHO4q2ks+pr5Cu3x+NRmiv+aS0ti2cL77C2yJF8HtVk9BApb/frbf5
gbXcQzIo+YIC8NslpRS5IEAh94o+6lFMs+1+8VnVgaLjyu5K4fLHDmIfu6Ge0BZUq8KhJKaN8ZWo
lG+k59TuRcfRtrKENAVr/hNKJIpAxpT2Yy1nOWcey5KgIkNomB+haIsQtq4a2uU+U68dOxpp40Tt
1pUeDz1kEIIyqUgBrfqa4W8xO8zDFvsK/jkd7RAboz46vtF8m+AHAoO8yWr4iT3iSa7LONvaCFqy
2Ph0j7QQvAbn0bfkjkmBbSh9jXFUNmK6Yid1aXT8dMRnpX4XOu9kECOnFTDDsa3PMpxzeWvesn+P
+o5V0ddu6/QpoT+JqvMSjHlYusOjM3UoX+TJfx7Yuz61dW+vb50f+rJbyH6eYLnfKsFnzcct2A65
6cOHdmrFeqLx90E8c9x5nB+mNj+gdxQb7ldXrWFSt+F5g07nJcgdY9/K7ruSCwltkvaB8n2iqHxJ
DB7ErZzKVd14b67M54yBGGnrOXDtUJJnRXfPwbByClkxD2GHYENnp1mH0Rmdg1Mcjqq+dwJmE3A3
LhwbOnJ/kvR/Luj6hqgCK6XnSlTdiGo43cu0MgE18yw8JSg3P5YdWSLajrU5L77WzRDR63R5P3Vx
sJ1ccnFhd4xuUty3AjzeZfp3Ihv1AyKBITEjdbS2penbS1CwJDWAArsnqp2uAz9p35MlDfZzWN8a
fD5VtNoLmGS7UAz6wjISh3pjB76TjgusQxOFFH46+wsHZg63aVYqNF4Lg18FT3H/TCqMxjIWuvvr
3tU+1ZGECJka/Rtz0o2vVnnFHwAh7udR/Gvfu9pcqfsfMQ75A/EGWdUnJPl4j7gfpv/H5JSSBOcD
AJAEZvimK37ReBHhdMUyoXpPT+D3lE+9BJGBrSP0OV2vdGPJL2YtF5havuojXm7LBxqApzXkCozU
8z1+mD8gKpm4kmLhD3H68JNrRYn/iebpgh7rO9GMYuxYlF8JrBTSkX85mmlYasKAZOw1gayQL4bx
ag+rM8hyqCd2Eq3zJNRNOTXKoCmSgJA7XW2CkkgLYffpsUxhy8jIVENqiLH+ulGSNTXgiBUARLLp
hKn5IM8MdgJTfxZRntl7hy+jH6yXSUuhn6CIZo3nKW7TEE3gnCBUSS64f0h1A+AX2KqQR6eu/hCD
J4tpGOLdxVly7ZwoFcq4fYEkg6xtnO+y0nYUxDbNPpghoqEQ/6eG6LLW9dZ0tyd+sH+xmPLk5Yff
TC4R09/OKHlVvhmztxLeE0NuO8yjzvKkb1DkDWAiyNFKKKzZSd0RckeHiDkGPph6oNqnuPurJwCC
M95URvKRmmbz3JV/fDaM8O3P8ODjSgDhWdqJZt8sRj5eZujCIbuHPFPa3bZUG6PzIcDLvvnFMR9E
gDSpl4iyFiSLLGRIFCvK8qnu/mdnSkUGH+WCD4aSinQIyYOlh1s/MeJiFcOydkM85Swpt1ld+5RM
UjCpeOKhAP7s8upMII/L+R+JEVPxw8FR5JiCj92m+XikhsRkTwRzyb9VwgsPoAlLJNB4XBRJ6MlZ
yJFpL5L38vxfhOzmOLe7Vs4NwbvqVI9OAuWfWEL8NZXhOSQvhA8fiszTAAUaai7rzc1KmWAOtGZT
QkS2gCWhJxd91vveXZc84PqYIAoHU2A9fhXIHVidt+V1Ies0Zn7Mva8X9/i0E9SV2z8MOk5b2Qyp
1wkmunYb/iYvz90JO7EtKJjkIEPru0TkfXeZkeOXqzz+YMwa2hle/Yppnpkyl1JBSZgla+3e05CI
5srhO4QkSbWxvBG9ldocez8/XrNMXMOWxVxmp1ZR+QrU2FGNNc5sGHxpFDJ0dztPLlz4jR0EBntM
5ZDViK2b81SASzbdLKdgNfg/UqqhqpPoxdY3z2FjgqyMPXo/OzDpKFxZCNW8ZdirFue4V8Gxk2xw
uHZn4/R0ikvKbBxrOTMhl1ELdmewOJoxYcthRW18rs4AWRAkwfxnvsbDwD0q7KdfM2/TFsYZh9N5
YPzwPsyXDWsMnYdC8TahAvip2WWxDfBq75Oc2Jr1sEMLdBhi+686cOkjh9fOOkYauEQzB4MeRQJb
QXavXGd3/I4p3GiokEOi+bucyoTnBf3EROwRcGkZtpRsyEruZO4jiPC7nrWihnmxr/VZOmAvR9Zr
mTl+fV42yjC4NafIY2ISleNcFIg3+w2W+V0QFpJ+1VhVXaQGZckUxMIqXRIZuLiNWI4oPTOvZf5H
CJqdezBHi9ESxIV5z7gz7ga/WW5JyC8JrcfelMOFwbbgEuFYvKN1hYpqBEqG5e2gnOoKimrh222B
ZTNwU2oxMscmpD+JmUE8cn+wG1xWw/bB9cgCMIWFEoN834YHfXB9vxt1xDBwa+qUFlxepOE+hyVb
JScY0ZWQxbfTmEdK4wzGfsNzpqMS2Ne34KNGjlNWIEVlDDw6+5SSlwAy5h1ou/6YA1MO6g9AEAN0
cmr0bfzRSWIgOmCKsU/gpiSGdhhSD5Ss4hSmta0zqBgp800E8eHHUaRUN1IxCeGsUuH6cOTbKMxT
I+jGIqRfcFWYbZ3jFdkdoiq59B8kJkpeqJaEaG5FNiK/JVp+yCZFiTlIbMKlL4D2bcR3UyalSVRb
1iLEXFMMSOTDDcCPt07I0iWZ6PMleyAGveFpuMEt/eDxsrWmZNypW/ws5sNqBA8pbTig2BKoouS9
Pqp0iCg1+rg8FkJyFstRrIcmrxYH9dgVbzWR0TtCo0sfyZuFQIrh6A0orOQEhNenEEcGRoEKxjvi
cwdN8gi9B0x+T2TmX9Kg5KwMFrHwvofsy5BPXu3bALDnTkPB/pwvHf8MZUrLODYKrI3XCBDkyyFu
411pgZ4IbJAIBf6m5KvOfaXndVh3QiuoO9LqDSMvVi+X8rAd96/86BlQIFRxlwQz/uxa40FOMqYo
TzHe6VSUHXzuIZ/srTnSvQLPVormnFcdwFzUaUa5lsjDD0etC4Lc38GdlJgDaLNx/9/DtRNqYCZ5
CRbAoCkS91FDxi+a7QErceEVWMXxk0rUJDmeoUeMXcpmtVwBYuJ5+Z76EGa4Dx9FtXByjQMdb+Xc
zZ4XsURhwdlz3ogAi++PmdQrmiBbaqKCY/0BBhfEPm2aSe3eBuhq4qtu6kggoeFGzQtwXSEAqhPm
qo2cQWv8gMYG+V4x95Swo6ZPmtAxJag9WxOmbtKNlrF6SplqUsTxUR8OQXI3w3YfA1wUix8zMYxb
e4ambxCEnEtTGPCKBv3qpYglsySiOfWfqYYab80bIr6i3+jVhsEL1jtwXMbS+L6sPwxnnJgMcMy9
0xtB2Lec8TUbGrwFIUppCsGTyAQGmjQBgDCdL3RBN5DCNxynbfnIpBJqJc836Qbh25Mo8SQq1oY6
tDGeXN29v2aB9KtDZWYlMWNEolTbAxbEgynLqIvMu+5CwmdKBY4Excm2vRIeIh16Z9msHDlhKtoq
hkY5OVGfMwahtEor1FcESHgCogRVjOauqQBwU3UZ/kUQ23WqKS3IrrQK7KHZF2TEum02J8DAKy8A
Enb5rYUdYW6NVSGu2AFGE5XHrqdQz0phihwb29v5poShd2vgYBHSYGLH/pusl5U4Z44qp4JbnAuz
kP1W1uzd6W9RFYrh0iURwdvJUA4zMLwe4ze79Z6uaU9WO22ucxWNJHnAGaM+OmVRu7lr5cM7Qbgh
23QJGryUi4+NaPWz1u56QtQw3uaUI3aZCbTc98FlgHfJxknFuYaXulseiEDyB7x8RU+0UR+uPIkH
QxY6azcVS8Jeyfo+30sYOexAA2U4rqsUdd0v8zeckMZ75XWXbsMKSUaPDuMYrd6A4s6PNPud3dP3
85+eGmDP9Rlof/lBdOlQkDhXqbKr670z3ZgLyz1weDBnbn5/rKtKqe2sQBtaSWpUa1IJDdupb2kX
Q2WxRjNS4CAROw5kROiP8SRCwNOlteaLSD8B1tqEs6TgdrTO5ZpNaVcl+tQRvFOZIakaSTtDsyMR
rr8RsZTZ/L2vLrE1DBDa8szqq6OPF68r/1afJrAgYDOhK4kmY+fdqT7Th2w1/q9EbXB45sB98eZk
VV+aQkt3sQI44gAiLHoGqF6QSVyQd21jQ5+k4i1bUM/ZiMMCYQF2k4evTmy3I7dGqz8Jxlej4LsM
GjHZ3mNH0Ig67eX4KVBp4UIhEZ3HRBF0hSruno39B7huYNcjYfsSXYuktTBudIV+CuYsRDkLTGhW
g50ndyW/6bCChfyqQKMxRUjLB01E2U6eT+Nqgl9Nfnt50FLnxRVp5LzJBcG2c090sM9hqkZU9/9d
2nH9OUf+1NcYWVfBq2h/25sp1HHZiyoUjzyoXm5uK3VdzJEc9YPgimWYW4zdIZXGSz5ppwaWJtM2
pjjP2wmhWoJ+PnQ65VNtE529GAK1f48qWLjurM01IoeTVW9mQ8iTd1QiRlbB6+5zALzCp+Pn+hTL
qS9Hc1mu9N4HHizuNjt+904Ey3hBV0efThQmWujwGVskilNiFP0XoABGRs35+MbY5F9A1VeceKVp
ogS6SjJ+ebCilsiXULiRkldj2YHqoN5vz6/0H9Pgh9zx1pGKvE9vG3a1J0kAjcb8788cpUBvrO5t
tkDredtZPX/miwM/wiO+A0cpEQ/7HXbBwojHi/JP0DHMJVwYPCwpVuO7kWnyYQiqdvP6bpnI5fQf
sXanYgyPGxgN36WPTMMGQcmPQqxZcruudv2ZtXQjCYACzQTGYEB4MMZLDzLaz8GNN+3K5cI4KKmU
dS8N187R4k6dDhPJCC91PSPbZU2/SSxjDgrI8lfDrkG5w+p9IL2MuxzKghdYltSzkjM3FNvdc7fd
4GD15gyL3GRypp7RnPZ0dh3u+2ajA2ZM5yy5FQ/reP3fj2xw9B/12Lr2QMrb4NmrrM0qW2Ii9Sl1
qf9DRGZYMMwU+n72FlOlP7gpHasGrcPguRgi97yH7RC+EH30UPXbaDZAZKZ4UiAhE4GkTott/rFG
cYKlXkAYDSl+zCKvSFULVxntkFos/E5WJ74cUvXgBAJa8mIpzWpKugd1RHl9BhOp2iQQNRQAKrIa
7e4BHWiQh9OdB+T9sZsJ5FQM+HoLKHPvc3iwKQ8ItN0o+mFWB9nX8I+rr5UKKtedqeFQ41xg3u7i
pIFNgAJXwgm4n3cF1tQK8vBM9OYRt9eX1pvGQyAHHc73+mCT76DYgNhNopuKXDNiPoEFThqkCCUt
2oSdmWKmUB1+GQqYQVPTlnj1k8byp/isesR84BRKVMee5Ab03nT3Y5jSXON3MzaRkVZTR0ECKq9m
U9/5fvM178tEjLtD22rX7yPmrTCgNj3DD1t6tDpAFnAOQaajAac3WppPuu7SbDHfi5x10j2PSxkK
CqQk+pxenBFuWASymK0N8KmRyZR+MVYW6NXfCeuqjNcjYZScQPYSNoTQ6SooSiNVhCc+nnqg1/pn
sBKeymdoxHTyz8uU/GYQY2nmQjGO9GZyjqhskig931ao/PON3MqV9cLZnaBlXrZ4Ir483/Z+KlYr
vQDlEme4SiD3AltIGBAxk/WgZmKC67Lc4KAOEOztGcx35zmABqGQ/1uwrPj6M+Nd9i1TcQJJh5F9
x1vRdD/KIgYOdaTHLTKlBoE1oAgNLfnE1kVyTf5OI4yF5KXjAUMaSn0SlWncfiGeUp+ZbZuuqJnV
58BI+N6zcr3EtWXmbMArrKMlNDI+eA6FRvArWHdOSrn5+BO7aeAvLNYP6D4UZ1lAgHnwS1AOFecB
nWrrxgt+pPJXn3IJWuhM+ai+xOrEOGPeYbyIeStTCI8aTelM4t0ydR03t2C47qrXKKFQ/Jxqfkgv
U5bLP1Uj3UKP1OhvyO9OciASPCVonvCpbn78y7aiRLixSuWHI5N+SYcXXUZJAwMONoKLpo7AG+dT
a8VknFT6XNHCcRmz/i+uryKSTnrBWG2T7W11El9YSEXTt+2qC0X/1OAus1Fod4KX9jOAXCYkWK+j
dY97B+H2Lheqo/W/6pL/DdARx02f4i5zFHV2x1/5nBrX6vHOLi2x2DDg9UX4TSLp3SqN168w8c7g
RCmC1m66tBNg3rLWYTH+spN5pIkoDtf4N5AXy6SOWr6MOE7KhyZ2KS4X1/h1KKff5hrVmMRXHQ9T
fZCgEDN0LDBiuZ3hIzy26j9ejWZ+rNaGdbroiyILRI7C1unDEEaSxTkb2vGdI2Qc4Msg4lydvvib
r6TQbif6r69ovjCwa2nJJf3MAxcd8G2i5VK+eGJpuL05K72kXK/rEThtWvc0xFZh6wYWpCrzOiGq
VGGWh4w2kE3FXoIEE9+0j9oTvCToEt2VHW89anX1MQhUOp6KbKo3/VrEsMPL8hrQftdHKQCk+Hnb
fqK0HkqVGXlY9QPaypyjN4wwykIsiiIKbVB9e3WuCOffOm9mmkXhDGMTu5OUZXHtikhu9dNB9x+8
Ww+1LqUkQ1K6na7dV8a0rEp+tIYARJnu5tFd/aqCbYrDqAgzvH4SVjmRUB2m35yeKQAl5jxkEBaQ
wgzP8CzWml94nE14gDmlr4LXyFhqD9JuvH7jYP2hmd0Jgw448uKWspLVM5U+9JKuslLfsgZkmOgw
z+FaO1RLcNG3LE8n6wUJsCActklBlUtVJZbiEu/C7FgPk3FimJEI4YqvX//QmC+bXGdcFBUEwIMf
j7rblHpjAJtfPsjceym42XM5qqmG2BNP0VRrVGLUK5Tid8JFVy8h0Yz+nDnvDGtskb4O9o1NlIwO
piaC6ho8iu9Cxi81/mRxMIZmHnnAOHyObzFMj6/gCQ/MHaFa5QrBkY/a/f1Hs5UrhNEEAZL0llvA
NYPsvyp48s93LYbWTCl3nUTY3KvT8Ihm/bVXSTMXmOG6AhqD+2QwFDhwkF0kq/fIeltBZc7NiUZV
EukoCpLr1C5qznXFzdxvrpKBiKmB21+A/A4wrJyaNlgrbi+nnRmzXP+vYxKwlNDWHGJqhE60PMKk
Ig/3bbkEDT2V1wIeQqvaK1+fJsgGkL6M1s5fPavZNnb6NOhwBGBlz+26iZ1qOIMoAz946maUlBlp
3b6L43CCLoopwLrSIo8zBDrtipwria3p4wqotZMNxG54xlJ4KfGhi8q3ywQP7Y2XPtYux3VDk9vr
eon9zrQiLa8606wAc3OWANm+9j542FI2PiexPMGU/4KQagscfogfQrYFhf9b/e8H08izuMMzKQCc
AAQo+1xP+i8BZn87TgSLAYzkxydr6KB2SPQsct9H3VZRINipn6nA2xtLX9vktZXi5ISXLxb8fOsy
XRnOuB9z33OSI2kOskWb56mi9axfs5LdXkT1qDJA2Ybyt1BY1jsRSVNjVk295qDbpjeGDhxEg75m
NWkLNdHKS2+rkU2S0UUBNT563lbndt7RYLfHORWr95XUIzUyMwmfscgnnklGCnHoZJO3VYnn1gZv
mtv9Pfcq8XG9ycbPfeK0O5fC+7dk1ImC4xkYOoc3O2g6Dsn435+aq3Hh6FAqP/i6i+exKcGPyDeh
S8YPq9bp8BCiOXpL9wGkuVQ73/VAwVtSBbevVq0HfwC8jqsO2RlWa1QBFek7g0UeEIM5ydwzIlJA
SIfVoiTD1nduB7ZR4ViJ64QrTV7h1EzWR6MS0fFfy9Rp4wkcHQRb+9rYfS+tMBtHtzGKsWXFlzzy
eSedO5enqLdsBhRvWjdG2EOTQiawrPBf6UZBjatDZFydKqX4x0i0X3fiiPQl6hf70Hxna9lhIRVE
LAlZHA8hY5rmX/I0sTBYUGvmCagqSLNUs0WsAv7ot+dVMlGwYE2zDKYXyhGR85xZJPk+8LgLKwnj
8cU83IC6Q6a76PXBsvwFga8n52UuWw9oXEhCxM3IYkKQqn5a0GD9+rZvl/AmG8p0HuJgo3Hh6aBq
Dq7GitObefIgUVq9svrxJJRQcxOUKF97J0C60iArl9wkmXlXkHXi9t2BBeIbY+yTcbubpqCppzYR
nNNhY0ni1K8S6zUQYsVdsOr+Tb1ODJQQ25eCz0zWfwlUmRwq1l07MCvZ3Iw+L9pOnbRPNPRaWOEr
Gt5sMpygw25Wvt5f7QnAHz+ZHmLZleDdmBjAOkhZfqsl47EMaPaaCHPzrwWFaPAGMbF5ZTq6saEe
Eb2cJ46DQSZSQEl5Voj6lHyZX/9Wgc7ordnw5jBpKBocMuVz73KP0/Pkx3DbPycfvtPp7Dkb3jhD
BIr20pd+bdfn/LLXjciBRV5A2bZjwQ/0y26W7FXufUkFeWPlMIuIVxIgVqYfQUfl/ZWFwcQMyfpa
lrlJgxUr+LR16OB5qaovhIhpSDGoGnf2F0wC9e4vcFqgGynYqhSO9C755YQKYIL1oHyDmlkr3a8S
OrEvRoarIO9FGObJJ9hu20DTlS66Rzlrsp3FaN6COUFd5QGRjRxd1hg54l2tjlDvJudcAQN5Msqr
37cT/vtbdWYReU6MHR8tGf4PphoDffloqCwZybUucQv7PNvVRMdNvTLkdvSKb0kolsuxVIPt2UUQ
+EDLT5mVw/8Pw04/4yUvzXH+GJDW/RGhIwL8Cw+T3j3SzdDLYJOQCNXwUaXg1lz4EAdwhreBHdhi
p/RCFDt5491BHOvde4XP0bzYMmmW73B2GpJfVuifKUHwRu3DYrV3GaIp+oagW1oOPHXuyxdk4GTm
d0X49wHbIbCzXZXm5yzNboqkVHjjYO29eR1vA+GGvAUYI5aURzGyYvfUY+JgjxGxrxuUj2pL3XXf
kYmjIkuinPIPcBfykLVWSX+wscrufogjpzyPLYJthdEqmlP9acXPMEc6jTzzZLjf8ql0+ZX6drQc
/LXVfM/XNF8dnLHf8lAL3fb9p8qWVea83ySMnLDOrN36RO+h4Z4b5o8Hxq1FJFqJUUpSOe1+IIkk
dSCURbn7hMGr6+R8eN0u0frwQX9OZ7hvcOtxMrJvgQFjSWVCqHxQxthOuLSg76B/csqlasqcPx6j
JdHSzyJDiqpKn7j5t2LTqJsjx3PqppqHiQNKW7omr6FyqPN7lwKZa7xr7rT0QTVs0WDvyjA28z7p
M8l4ZL/9GJNftNQ8OYzy+wqr0KL9PpscHLlWQAuQyttttEyIWe1lv/QHmtOX5v1pECPnL2iPiSpT
UIWsNmnRZRLiEDwr07f9MdZ6sE7Ktc26smM5j+IEhInCEssJkFHSYrZj3odItFKcPYk8Mrk4ML5q
TpRb6GbrsJ5JO2ITQ47uvTOUDXGgGbqgdU1sUihjTAHugXXGxAzc+lQdpnwDYEw1sDgQQfE4ZuJ4
3l1y6Hpcg39lK7tP30oHA6lWbpuZ3JPPFw6oxJHbadqFIfLLA2lihNNMimWZE+oXcL/GCGvdxlxt
y2z5w8iiVr2xSvoWIHwRoRVWSuSr+Xrk/ZY/pzNm7h1LnxMiv9J32z1ukH/psYrMxs6UAaK6MYGW
M8DM125RNjIprXoYlhYk62sDJ9ZaLzrFOwA17wOcqzLtItVyeiNzkbIDdmBoCFsEkTqdYSLTrq4U
lb7dkeRG/BO5biIFOdsQbnMSqQG0rtHEfSNLEfXKBve9zOAeMSr0JE2VdqOGDWMoQLebKtTZeNyG
Wp7z1z2Estvuus/wsb6bAGCBkUaoiAWq5nbYmRbA1NDbyo9SIXUCo9oN5jn4WQqDDhEJ0ynd/In1
NBZAdKyHfeFImuRC5EyDqZy+pUgzi2JUc3ktDu8pKf11YZ2T5FKa6h9ELHWYQqXuu9Kd87PW+6wc
7AqMhXR5u0EUTxgLLZLms5SonA92Efr5aUpdOIDYI59gwPx0erV6Ul8EeMGKZB4xeV6xeGw2DL0p
cqvFW0bIfoCsCkrumj8FOHSmrysUMmI9PTVrggO+vTiJwjeDhqxWNIBp6q5iHpqhDfOqKHpyCUbT
kHrIneSGLsq9I81LffJGBycsr0MfZFt297ev84JImaaGIf5NsHmvtaFehY7ApbOh3SoRsCIx4dkU
cDNl88vFaokiCqw+AmgFnvpNANaRMdV9O9l7r3VnDImzwijPqPZeK4PWvigenWafWBdFcKQs4YLb
k0PSjWfLJK060duQtqjbwYnNEzHVsTzBHbWFZPyieivPnBZn0LRMhQz+iVofNckqLgK6rsCWKn8M
UfneUr0sCUU5e778ldHx7wFBLIPKmZwjJPrYAU9fp8kIcaytK/7wp59ovXe5F0CRbw2ppL4lorNB
8p5MKkkOqsTOAbkAKtZ2d/XbbvaFSzevwG52zjd41dECSceaYRAhpojGv/e9X6WRNMQuIF/qSs7D
DkcGM+gzwnUolcHBPY+g6BMO+I7R0xDcmvxvJOLBHk48RnI76D7/eNFPaJgUgr93jvfFO31mdJJL
8aKIySvGDj2Gnrqa+ue7T5KQaXko3itWvOlPJ0495E1Teqe63SINqqHxxmDmd/R0LanAty26Ui5E
Eu55rj/EZz50XPrN1SGuQTTKdXRlowUES7+y9I0wm3phyzto0zxzhGTbkalTl8muayVwBiunnxjg
WArgi7F8t9cuRyb7+6ESie58vUCJ2TBTgs0QZkG5wttA6VONhIltHz6o3Qq7gEvSOcOVf9Wq5q6P
zJwECFL97DpxQT6xTq5enEGH4HRgGhG9682wUcJ9ZLlKe3rzv/C8xEeC4swzytY1P8T9MTfvhszq
dz7stqSwBO3B2lTfgHcT74V5v7sTUr1tBCymuG3ZQLOiE9gWCcaHQRe3lfPt59mlDmjQc70h+fmf
zlVfXeuVOpDacBei1NXJGo2woGRexWfOH0KCajsWCdOgCVwkPPFkFbs20qGOLpfrO4x+yfo9WtoM
TAh9io13esqTMdg70yUL+HZP3u/h+Zt2FH5Tg2LKsy8qyu+uFEyfkiqNon3oVqM1B16xXjP+YESS
0Qt4Inb8Gpd6Fe5KDJ0SEt01d1VEl+wi8Imh/JleU0glJqiFiW83nY7Gm6VMmrV17Lf7ZriP3T7L
TaUp5bBKHLLfn4z+EQ7BNrUtpmt3N6+zc2KWH6qiGSg7csUVAJkDzsUeR/NN5bv5egOaXc5SZqlZ
V9tuVWWlh2c21fgYFEFE1SAdxnpOkh1my4kCY39LXmWBC+hz9l27C3V9IaEfpvW/IXLFyv+2q3dM
dgGM+o/+44PMqTsvTsK+YX96bl/cbKfnHc82mrSlJc247wUlmO0gHxKJ1I7FgNARRAwCT/pDBQ6p
hkH9jgIO0jFUxxrDxZYGkOlLXFoFaOZ4RuXg1r7o4MbduEdtd8depN3li1lMvllgLabtUIdA/KUP
rogcQ5qJLAoCZ9rpmZWbRgOTk/AYOCwLWfhKWsytseSMeVjaGMwtWuUrToVc4OC0dlNCu+oooCOR
jyXY0elUDbxmp/AwmmusZikMDcoJFSUeBJz1I28iy3PKHH9fj8iu0Q4vxjo938VIgbkcIefPbnXT
Bm1Ni7wwFtyvFgB/dQ4NUI2Yit5Xlkjq+A4CdiK8YvRan3EWx8VH91C/X30jaEfT/FII3xmwiHDG
PL+fjn5YCeOWyxj7iFDeZhnYq4Uf6oHPeei4NentVEj32j2KKNmAngcXezoOZuVRKAqACvu+wJ+k
PtaV9YPYOFaNX8N9UT29OZ//0dr5g5RqwGBP4n37m/ZatLuMEjxsRVHK6HYJgLlOFGph32Q3lrhq
Ib2QzEkByThtjYLqryClveZDnf5Xkx35M9C4Gx+6R9oG0Rxt90fylThVLhPXFg9Qx0SvVPWT63er
8924VdVzSHl362YD/ltxTjI+RhGI7FMj6a43qF9s7RXix875SWAd2T3wcQwvpbZFtFFnvDZqGcRO
7unTXyL+IY8HtwmiVUE1aI6AtoSf/dJPlnjHLXg4blcwS/z7rZ4lE4fmF4P/X9NAkY7EIJKfvld7
yQFtgPufqBTsft9+/R5eAT9dNBFEqOteNyfqdOBj9cH44aTGjiUIL8t195MU9j1l1Ik5jANaVvub
7N7yfv1PpcOPpGhOn9tNEY6mcFeu9GBUAS2KzmunCYlvE6z80qIasfIb51K1AV50WVXyaDw2gAiR
CWW6iCuVXnaKPVoJGdVBaukj89aUWvbOdI//+eafBcM/cXQdsPN1G68geFVqPMZnuH8/nNEuVlaa
DpUDYiYwk27noU+0BmmgE3tBb2D/HCxgOZeci0FzrUG/fkdS+AkOsyER/fxgqaC7fNBPfIjLuTST
N08XsVr+BKa2rSRI3ygPWM/S4l2SlLYLpdy5E0JgBHkn3Bv/jqLHbURbJrkf+Jmj9zGj6/c58SXq
G4Re09skB07yZGGz5IAAsUuYEih2Wb399tCPMrksAuNuGC15QH/nCh9yHeLL/JaDAH7rR6+eltXL
eL8Usj8PzmjYC+Ig8ZikshTcqSiww6tkuMPht+CZbCrdzAzjSDoEWdAe9n17NDH53dMhYiAI2dtN
OtJ4AUP88LGD4VNVzHOpaaMXdYgmfam6JQ5XgZhxOCsxNH5qwMGs/fMpUa2b41R35Z0wIvglQ2X3
jYInZfYKtjmcFvXV4VIR05mueDVDqGQy55RdD1H42qOn8VxZtuBTj5mmH3AV6vXZtkIq5nIvdOdq
ZzvTfCIL0GxGtzMIXzgT6pX91BFS9l1HRpScGMQQ5WlAoeQrjFWKkz+5g4UVM+FzCHqMioUcft+R
1A3Y8HWKNQAstKpgmmEZj3u7SdLSF4A3c9g8VAzcgZBA1APveAwwxN3Bmw9coXBkKlqOlUmVWV97
45JaTpBAaUu8ZzEK4YT3DYed9WbMRHcRsakuXrX0GI1e8hlQyCItzH9HRDL5NYrWY0gaHRtufBsH
H7KGd/QpTGU3cNwuDGUX8VmKYCQglm+ejphSfage/XmTAkkLEzKuLOtBtod8OFiuV2DWnkfABNaK
YnC7/ntn4M7EGHEDVX0qpm2/KmnIOEKyDc5yJCuvX79DxNUdlDFnIbt1D/SM9/FHzwdFnSZ50EEd
k+ecmRVUSkGgfPtGryFkwnrFbpD+5NljIessH3NTpaegENfo/vNpxuEYmghqHI4EeAekZIp7d6pB
OzQ8vOIg85ZsQ1eYPFfoobHi5Poj15Zpe0X2Q5DBr58sZPJBSHO1N8psdgBNojmdVNtH6tukUio7
D/ENkl1BlZ9kvhcvW/nrgDzY9q5imjTkSXRRjRqUit1m9jvm1Qc7AL/rHXZFk5XpE5bY7+K6X76i
SwQrq645fsKqS/SHYfUwPjoa4iB0qC+IhkrkqV7/yL7Ev0qUxjXvUpVOVuQsDfX3bK3Y7D125wgR
AHygfnMxkvVmZeYL2CFqMUVUxkEmqusFBzNWo6SU1b0rsRxbJgvZPeqxpyk5C9D3YqW0jisk+6cd
d8QPCHDYhczriWQaH2I0KIooqPMYZbfHEl5A4VvebGLOCqNgQjBwrkjq6Sd2Rw1FqqfyWlzLeGhQ
z+Hw0RkSH5xgMJBQV1HiI1XsrAW36uKXJtincLuBVqybVK5h0twG12C4DUW8mPU+7S+z/4FbMDPy
gYGdfhoc88bCv1y/0KqMWk7S9tbwEQrX0z50aqHMiSTaBrWd/m6tuYs4Tg9RvPJvlPeH9rRzDUSo
xvx4oJPwid9asR1DBcEy9i2CwCUKPAbN98ggVRYzLZVVGgQgdbaR1FvyJkN1+W9rLh4pZq5RirDu
3C5Mx84V25E/km8/33u3brCKQ/LESda7XFxnauuDJ5+uu+0VHoTZeVNs3q03VWqansEtCHwYItXU
9lke1IkG3Tw5t3W3ahXLz8jySWjP3IF6E2imAyy1xlNfjn1NnwMjuB+jKvFHb2l9ts+1cpHDwIg/
oxWbBFtSK2zSwVlG3lKzDjkfLElB6/MW3HqRcNosCXmyhrN0V5rYSdvL3Zb0ES58TIC15k5WNPCu
eCCnuLJmQWEzPKGudCvnmgD2dCrH9ihAZm55bMhn41ByKKsU9LID/V1VKZWHJ17XhPSRlYkgDXiE
AUyu84XgwH//6/OF1O9fcZWYKEE6pCjAOfhfjU7kzyIvYXqBwbYj9l9r8Cb7Q/WEx/N6RLb2XUvs
RFNDWn85b8C3h/Iz6NN1CLxeHd9RkKGEGC18X2DXD+c3IMcql54TLMi1FheWIHvXagYh6Y7VrNOg
rFNZQSVF+mwC9iap+iqRftVupJ8gEJ9jkGc9nl0QhAQtyeo1b4tkou3eLLRn1IEIxQG93PSsCnHF
h9HuYTONcU+2Pflzd9z4Q2WRjzWdUJs2et+VsZuWg5mhtSnJxKXjg2WtqvRl/36u3SR3Q6mNsJxC
SLf4ESmGchMbG/1yoqyh1U/fjhlksjFoV6Egi/0hT9gM6zAta9CAJLO3rYYq+zKgtpqqogOk8/YF
VwvS5KJt2bMHB7nGpV2HxP3/PLK1nJQq4fG84kngma9kMoDay0vQ3kpah5ztIgI76d5TTBv3jRbf
BSIUNhuqlInPZ//DNMq2i03q7mfsf2oYIqA0HkkhJeILI/qQTUF+RQnJ3Iw/38Yi4RjXCetFN8IB
EnMpb43svtyYTCTl9Z/SpCqbtCO5JPuHZUOGO2KgstLfevvNrvlxa3do++4wWuoeczmNFp4e0Vmo
rF1yflMnstXqWcD189P8SF0FyCefpfixuuJ9FVSixVMNOiw6rEsyOfcp9cpKr2+to4PGBSRwjx38
BdavfMGnTTfneoJat0HUfXHq4W/eDvT0bhXh1yFF6DJkrX3j6hkUvWWIPvQvDGPluqexD3mEc3DK
fj1hNHD2Jo/twjf+De7jProvI34iCqCIgkf9fJtRvBZi/eZRrLmON1wFWdpDBIRx0LzDijb+n9/B
E+GIDFchkQrWJipSXnjTLV2iMSkk12GhuQ9fsq7M+NUSzUAExVYh4WF2j1ojwNWyc24tIQ2OCvmH
Rbaoqg4XhcxFSCsEfsBhg6oKOIuFjENt5LZ3RN2AoNLt8Y67IjxlHBgoFGXviEk3yLI+zmjE2Vm5
mLRI5i6r2OEDAypMWp0Dni8M9RGCGVN0KCoMvSFdnLcII6HDCMtoI1ucnuE9Lg7bli6bUM/Zz0d6
4w4K7R8RnJM64eWJQ3ZrfripHPZfRoYf2UibXHOoOAuDtOG0pomyCz2yoT0hPhZGRHqvM6n7dg26
1RTmVwCYsUU/JWc4eyGYxmUorC/T26KexLqcKdDIPK3XCyG+dr3lUna9EmXzC8lNBZtrnyrcpV6a
FElM2H3duHMPp/i2jaTp4UrVvhGncNAKHkE4j8mjzEVmchHMTXzzHJv9qy4du+t3nkSpVYgyKm0i
34Dk4FWf6oAzpRyQSLvZT3tPZ4kxm9Z/PF518qlllMusS1gTx8SB35Og8oOYvoVPMuQAybLO7pvp
K3WauCtn8FG5PArODWJf4Nw8jvHeauFyZvPFuw05vDsp5RsPraQqhP700EG/jHdx983wjkQt7+0h
9F+6Pg55UdCgZdflEfTbyBrjtDJ8/9y30JT/rxcr456DU59c2JX5bgmaYytCfS7Rfxjd9hb//bjs
8xofGkiiX6dbQAOtm7k0pr6yS1GzwXxwJBYIZMv96l1lz7T6PNFL4VIBQloZc5cAZeSFk8N5evS8
eseYGxlJygZmg4ax6g9NUFiQ2+i68sH6SZGJzCUJSTCaOMhzEH4zQHKIf57+fpn0tMVtIBcTClyH
8QWVeQ4ohJtE/iDjqow4S+s+Lpw0VbYIr9ag4T1guxdE3qUyS+ypMmAOlcc08bm12zz8JKycym8v
Dyst6OJ7+lAw4lXUdLAJtNqMWXDYLp8pAj1Sls6igpIcgTozmk5ex4EbV4Zw/R97+quhEqTpOcuZ
jO/aPJicKi11Uc8Rm8QQU6ku61qAXSh8y3YrLPYGLa7RQpDWB8GwnbvaLgz8JX9gVR3SLRG2rMni
hOgvQ7dVVjZGnZ1bwAdXAxCDpGVqVf4K97FAQozfhBpgXJHPL1wMnp8hlQcqnl27EUDFRma0G7dy
+sbxfvwgQEveZLOi01HLF7OK52J5PB79+u8RFSz2cFNeUVrOI20fQAuibN0TXHeE7X0NSSMnj0EV
//hfNizlVYXTezEM3wUh0gpqhxBJ+Ym0L3aQ7W6DwMUyoUj5hTMCLzSYGQJEwYvLhnHqHpr4CDgT
wpnMRfmdtE8ehQN/WKWltDyCUKN1zNzMYptFimAWpUMsvUSFLp1fovbYHzo5XnoLqcu/3oBk2IGz
Wc7+GIrSev2oUmjB/XHE725wVg3KPF6sgOFYcLjZvQmGURTjbtOtV0XaOnDBYY9eWQ//VnGhVFL4
BT7FgkhJyVKjGRBSvBCVBaQ2t12LRsXWF86nmUKx9loPwiEHhRBjAU58
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
