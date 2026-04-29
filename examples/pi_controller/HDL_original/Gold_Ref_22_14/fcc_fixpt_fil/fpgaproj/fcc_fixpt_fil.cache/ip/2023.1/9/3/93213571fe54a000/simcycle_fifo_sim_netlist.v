// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Mon Dec  1 15:48:00 2025
// Host        : DESKTOP-2HRT285 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ simcycle_fifo_sim_netlist.v
// Design      : simcycle_fifo
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "simcycle_fifo,fifo_generator_v13_2_8,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_8,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_8 U0
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

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* REG_OUTPUT = "1" *) 
(* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) (* VERSION = "0" *) 
(* WIDTH = "4" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__2
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

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* SIM_ASSERT_CHK = "0" *) 
(* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "SINGLE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__2
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
(* INIT_SYNC_FF = "0" *) (* SIM_ASSERT_CHK = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SYNC_RST" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__2
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 100176)
`pragma protect data_block
wGnbWX6oUL/vg763s/3sGpi0U5wH+qnqrN/q/0ksjRr45tVzfyvrgZSVO7cysf/EQU9kqfwXOm/q
7yahwaQjDyCZrCJ0L0/lcGTwbDTYQyxpSg2oc0Z7xyPDtXsJ12J49lMeOA67GLsXgBxhuhK+8tAA
DjwiUEsDBYBjPD2tlL19GEm2MtOQTLulC7oVYfpS+nMGdx2LeBNhVPrXTjH+5yFOFDCNVU4s9NJi
8Gd7yAAKNSE9caeqvauPTol7XhFGczuitycIS/Fs3xZSbxUkJ/TOHRV/634Mcah15Fqhi0bX+6Wq
WJWiPzqOJaW8zdsA44nuqXIJrFOH2rHONUcFjprxLMx+Q42D2d4XzAxtK9DN7M1Y/xcj0fzuLvyP
6oMT90L46NQDe9JFvdJ4jUrvNVpqpUTXWf92Lu6pEqXq/4T8P/3L8txQEb0WQiKyTnlQbY6jlYVy
V7LfYOa3bfbmVn4n7RkFxsOaDsChagED8G327kxl3f/ZQkNBSkUEACvpknGTDR3eNd2P3Ht17YWB
eLWUzGpO9cO67Tad5x18/D6VRlyYuGJdtYvMGUoHRWenQEkM2JTU/gmRD3tkqvSBLMvWpjN/KAMm
09s6G8Jz7J5/Ot50IB2noES8bVcM/W+pj9jz+YyZ+cIAGfphRhK/c5ayZqrgwmFPqBFyLiBWLd3z
90z0juEoJnUmLVaky7k3r90z1i3pXjm4dBdYU3VnkV/fCrAAK1aWRCLgIBp2CMqOxKzMTDPdjSZC
sa+6f49p/wHD+qI+qxTKGdIevi1nnsO6aMVUbcNZbgZd0XBW2oT4l4moJO8eWrj1xnkWT2t6uEPx
QOV8edH/HusHamG/CPsg2wkoSZjfqTvrBySiynP0VunoNsLjEk7NjPn3fDagNTVhfNXaZhNtiFQi
0t2vLoL5bmhkOqbjN20TlyJ2SC4Nt0RsnPVTmjBnLKzta5JZIRYbEGkMJ2dbknjFkCeG//LiFFGc
yEENkkFT7cxQIq0viGTjCqS1Kvaipfw0DlsKMKqiNwS++JYLDL6u3be3w/jPTQnmjpBeZaCP5pbz
9iMWKc8BNy6s6i9lU438E0YCHKe0gBxFl8moRcoN/9FsMSUPyWFfbqJnm5unmxfir2olGgrfPdR7
7IhvvynWDdUsYhBGFIBvcB/UI/xCNBqjZop5MdHID6Nhpn/NFUkbWrqSJgmNuK8eIGv7edYI95PE
XejhtraDVsRUGFRVMZQC1wXJHbqpyDnlx0L+lrRPU7NRY8LKBqU88Xs8w4JlcwaRPq+famF0w+GE
yAYjuVVPtYeIbn2HLaVxSIYve014DshX0lWyaV+hpqnkCEzYUSm4O11zN3Wc2a9+Szo0zb6/pevy
wjNC4Wl+yCZfNi0Af/HJ1RLtxGqgdUG9S216bJuH6w5Gkn4/UPxAhSv1J7QIKJMqyy19w/2Ocf6s
9UGML4v33XB22YJzXYgPGe5JzvH3NUjShJVb/q5m+Hm2qzYFgwd2bFs8JCcv4heMGD6Bk5GCKVG5
/gbKvRqgarjaVuWDj41X9A6eXuMoMIAswrl7RaqeNh00ZFZUbBxdM5od6YfcfSc+4u6YXeqi25Ad
1KHucTpBpL5QMRT0AdpJTr2Ut5syGG5RxaEkwGGg680K3/6EynCPzG/8WySlYOIcPfvRTQ4BMdJo
hdgvAO7Y/rWjC5f3dYe7WP/yH2G0I+canuLtVh33E09pcYIP6Zw3IZjDDPslPGOZAlbq6EejbB9+
dNTLoxlw9qhxA4f8cW67vDIA2WFEeXLSA07nDArIMKQjcDUlY0pczCTqEtQndrFPfE2HdYd1NoJQ
GV41WhGzbBaY8Yw92dsBCRWdjMYuDD+/ElonG68PgeA8BKzKdIgNUUieEmOuw6H9l6wzgGsdab/i
jBDBCh3ybbE20ioD0Qhdwjn6oZQmMPb/gXvyqz33vff7v+MYPyGSLyB9I9++eOMCB4AUCG+Cn7TQ
A7Y4trWL2bb1okW4QjwUj6VuN1m09KQZtjHYKfbaFK07CIiFFIt93C03CcxEH6ubcUsFcdxe8Fbd
ioe3rbwI7XNHD1k7PiWg8C87r+FRx1AJ1gU6SZZD5nZPW6HgR5ZvNafFX665KYGCj3/0CYmi/uCK
h8kIdekp7+l7aCboiYk8dmfJwwN3pnKCHkEbKc/BWit45otvUaegcNwZ3sBd24c0w7fSPHUKMuI8
iUMxeAcCY6XzTmooh7Xan160dKfY2DLeyKh8QstAah4tAwg80YvN7C2ZItJzwMNiImSuPsFssdMe
rtOlziXWYM9gbRf3gi8oHplRgN/mEjB9GbxgN5dVaNk5aN9i4uC5Bqd09sVDqSPva82v5/X9b6rV
O+r6KsxsYI1PwPxCs2BNIyNgt53hHW2iuW8UY2K8qP8N7TpPGb2mvl1Sg4tmzoffGnuBec4EJsIL
sTTP1UnbvqmCBq+yOjXCmWN3WsHWD510PyXzFtKiVn18fnyMUvyTaubcUC0amNuMAEwQVg9/wLxF
rfJxRicxMpSvkLsA03upUf5vEjTc0sHnyUyfJizjCVlsRSf2FJhZ1gwX9Y8WE2FWOhrnDB6ccUgL
EwMx7l9aGbCDbUes4FhGiw4Eqt9lBvZklVn7duQZGjTMElXwT1b+3vqm9FY3UtKUVVJudpIajOHm
xnbWq7CTzm+mO8Doc/6Dtlixtmtk1plMOjMAohnt75kc4bnpwro6ufdEyCwUAeO+j6M8G1MstoUK
C3TZ7Mm1zEjVSI4ulwUMznK/OvqkmuZb7Ydj0ba3RHOLtMfB4cSJ4XUEkOfOsZ6Ehs1rrr8j77F3
aBkFJghEMY1aam55WZ0pnCE9fE9KLZaB2F7YraeWoGr+Mhd/SF0LjrPa8vv30XkoLVAqr3YFDlgD
OyNnVQiukCEZVUnIjRgX7LFZA5Vq2tGPf3gS+y3Bitaa33p6jmZFpMaG3dIcwtKTBKmlbWmheVe3
81YwQWKmudqxrssz503TsqOIFG3cKTG+dhuWnVSRQ52e3v3BV81Gk2ZLaTZ7Z3Dy26x9iCi25/be
6bP8TLLwtRSN2FOS0VPulcycfeej12uM6ksjfgpNEywb1Z0bipcJkj0MNTgXPuUtnp8B2Te2BhzO
kV/BZRfo6WJo0pJt8VckKOo8GRaNrS/OOG3g9mM1d6pKcxuV++IVqvsH/u5YTmHqcNzUVDPvdL7n
9RmSmpBRaJYHSQXE2b/L5o5qjW0VBxbFyq4Q+eD1j3GTfNr0mTIf2IvKA3/OLRGa3OfQKfwOcrlN
fO1QslcevLMYlf8Vw9DUMzkKugi1oQI78zrmrUTfqdyHmph4rLncJBygf6sR6rYKsveGJtNhrJn6
NYwLI7uXuiWAnPUFDa6tx+pRUcztJyw5VPa7W880ntSzFnanf0FBnJ6maJDZNX6sgC8wAMMhisyr
F25A2N0lZQqsIYSC7naPguFFygp0S++NbBxqdh8sGIEM7iwOUKnqMwH75fJ7F1hI6UWF/See98m4
s3JBKcEOYXfOpognNyB6C2lGR3Jb1ZcgSk5uY6FY5hlMabHYQjVYl0//N/ff+7MOOfXaiLS01UCS
bKhxhUGpMTN8XflQfmspa46MpcUfKgkmcnPdx053UD7vOkmHxwN1EVywGS0TOc0z68HLvjTNiu6J
PQvpE8bcxT5jPduFpeRvLAXrNzSlf3r2DF4Py08jitGflZkAeV4wgRwqyoqVQk9gpgKUphiOi+8W
HcjcYLrNwF7R/iEIfl73PI0Mbe7fPWdbCRfNpv+01uFYStdZP9BNsK71yMqGaAmhvrQZhC802kek
zS5hGiGCZN1IqpRQSz51CpibKSClEUMspTgqcik1keFR82VkzUcLlIz6vn9B6OrvuithpsopluUT
ld2V5AmGgbRO+xI2a7HCl9VLPRuh/CMUVd/w9za0RkPSskN6Lr6w65Cs2MRtXhhw1wvO0qSThUht
/Fqmon7UiQdtirFLy2E6Z6Bqncw9AgycJb/WdLNXpnL3kI/2PI2e7kSj+Is2KTh8FtmWeUSqAz4J
BPYMRt6H5OTTJ3huPzP4NSQ+/erYQe/ihZPYrpqooxJ7tVZEnHwKLt7gyQ+gjB33ooyHDX4LDexm
D/Sq0iAYViCLVgkQD5swMjThhx8M6/Q50pq5l5zBfAaFlRbLscREOJTdI7k5P/1ZR2gwOBQqCWMh
x6GTmGiQ5O8gAU8UYcgFyJi6GUgIYudA3Pj9Rh4wuyenvLuudKbynBty6/MCsHzp1z+Bu0olMgHH
4XllLHMUXcvc+dmX7R+QCI/GplQgxebH8jAUX/NAhuImUM/tTa0BxYXTDZJreA1d6z3MTngiSfYp
ciV2S3lCxcjjetzWuwTJXwIz22ljw0x2I6dmM3iD4HIVzkSaWdl8QkCwm1MCeMQjFg8SVyDM8GpC
9zMpdgyWtLBxyeiNRPF/pOhC+Y6RVG/ZN3YmLVBUhD3/bzoV9Aukxeeh4RPDQQEP/4NJYDM9MHZR
b8leZIrdCYpKgFGwbhYJVFDd6Qbgu4HZN/bnjF1cGC+m5e9SJvwIi3PQgxuDl1M24ZUT13NkqeJi
kIFeHuDleND6eN56s52E5lypOrDOczRoP6NLRmXpJjhKD+8mOUsFsRGIgzTaT3GV+CTp28/J1/yl
FrRQmUkdkZGGgi26OwkZek+LmydiYo0J0hi4DwPmyLuvNafOtsDXaJ3CIGSrmoIBNObDlvLOLdOM
4DF8Kxw7Jh1jEmCeNaUJ45jDqIo+fDMxPNDyLLsCzW1GcJHSjYd8F1TnURsvt6aKIZQYqdRxR+Sw
6+uoR9Lmst+GMdP2Ot7tNf0S7V2sqOXzXuBB+BuAcolJ/6an9mLpcKcPUJuEoqeSprYOUdYUJNbd
XKIPwyJE2GZfUHESZ9fVol85Vod5PCmr+AKfFuNzp7TgwP/iH50+uAtWrz/DiX4LQPLYRz+flWrA
mBACLapp5+gs/INO8dSp2VVedOXk7fXUtt2UllzKt/hRR2mVXD758Qjn3JDfMC2OGNzXYCR6cTPB
vg8ZNDksuWYN53kd+n+6Fc/jQgMrBmGf1CPrLL29uQKzCSOeNOG+NMgCdPp97oymRxV7Nm01fTEJ
6cogw84a7Wm/66vLghZbHuaHxO+fQniEplxCOscDHlj0Xt69xtOqaj4yuPBwWTdToA8pZhrJGUqA
rXIPnrSYj0qDzCoGezDTpKpDKTorT4dLEf46qHyqQlgwiJYN9gTzFYDbzAE1M7gL2t+W6saibfUc
tNjh61bb2x8USlSIycjDSwuCbu72GqvwdT07k7tSZc/xk+JY5qxxGzH9B1USefU4FfFfhaXWxvoP
WEdqYjSjmIWVrbu7FpY0kqcceBSAyIujE7pkN+qrWEhkGkZ5JhmXfFVamq+qApi2TneSQOM3T8kf
nW0QBoOyHF8Q2kEOJbrNZC73i5nl4dtm4Io18+iJHNiy/NpHTOOva7jDyzvCu3pWH3oO4/onoZ9J
oQrIYrWUk6mklCgTZaoDFzsjlQ9B/XzX4qHxCxgO+UI/y80ROXPP9tJnT6RnsSIJhGkxKkTAgE6V
K5u83H3UBckbHu/w5plLdjxWwwnIlCgf3ObCS1ZibNVlFwJvEwQCkAsUoFHM1og8LUz9Xcu8/WJV
POVBOz8mGmJZq75NydaQ+qBvMOGQEPWYlmYhQ9BTZ/E1tM1Lf7Lvl2EmvXHMEGrjaVHjj617QyTP
D5QiUfFtSEJWOV27jQys+kWh6goXoMqfsR1+dRDfvXWVih2zusKdhY381pMU1jHKF+30esl6XxMn
+/KH6O5Mr7Je0kEB7DQ0rRlx6ubzk8TNEh5/a4oHbAc1VQpKdpy0EWaFTE9zNvjmyrYk99AvXSkC
xtRgn/xPt1rlsGQimSRdcGhukNixEif44p2Wt5r2bMGWnGwWj6yJSF7fY0K8/U4Onf3uoctMRGAv
UdKPtwtlWmO5s7Ix8Ps3Xi6w2+J9SwUKZbQnggBV1LDmVnsVscdSrYhp7Qt712L9zfIFneMltim+
IvbCsG8YlbuWCZLcUIpWqV+kxPB9u7XqqwE1NEwKPrBgtUgVLCfd4GBJz5UdthJsMzwE3+qNTuUd
kIFKjZo14WDpFR13TLpbzv53tPhZ4ad712/9fL1e37kgGRiiGEllB6qEYW29LQYcVolFXkv89KTF
6/YrmA1cssUzM4YEMMa4OHgh1PUvBzCpKDteIPuJXpGOEk7mem1P4mjRhfJAfXP8g+j3KOWh+Fuj
uCJNjkaXtAHNF2spGYH4+LDheLmvKJpazv9HMwfJQrHm6V6+r4LFOjp67gdot37mA71+3Q7dwIng
k27OGzKC/btY3ilIlpTkNBSPb9ltsjxOrGU46QdM/1Ub0jwzqiTqieI+J9m01uVQ0AAMB8qeeEPQ
jiOUUN1bq2j+1ZyUz0vPKaSMSvwtpTSpR84HMdOTKrZNKDidluMq+eA3w4LtI+HJJjjJBonIFp6J
VyULDBSte4UbUKo1glf7G5CPtccjy/6jnGnCCNcHb6URerMFrArgctnRq+BFlQ61NSQrQ8rFDS27
sFz/9ktyJ8j41Tw6AIoz8qFR3wLsCap0r12Rss9Qg50UnRoNgBYTsKjmu+zBp0Gef+SVw3hZcE3M
6nCZ8gNCWuKFZ6RlY4Mtk59ytZ9lTNoCjelqColhY8GtmIs4r7nUwxSpRqEJ1lE+EBAXcSjV5jdT
JR1N7UcybeLyzKgOfEbPqGAnCxDOdDNhiyHLAq9UUEwmPmvzvDqrMk+LGovOXPQ5aRmHnWkEh/+H
ZHEGRu3F3lTfG5WRrE6UhkCA6gesHRJ2vCfIWDhA21eCCbSpeFSd50Wy12V94THoA+pNxklHNWmj
+GzeH+0e39Oel3ixkvuljS/ux7kQwypH/I9BbiEWA99AhO4NIxPIbxBauIQfIHVc4NbMrIglPB+U
cfg9g33B1Iopuq62yKZ1UJYy5wFjVND6+pdYQGV9CUkcz3TXfzBmd0Tk2zhj3kNRTcNSz5TZmcHM
E4tkJkHo2sys7imZbnw8nIlThllfbc64Ah8Ce1IlDVtJqOnCPJveG8Ds7/M+2cvMAiaPjmNzVOKb
Uq0EG5YsDsuVGFcX5GijGrHerANjalbWHgDq42IRaLEdwc68TOoioK17Tc8G8BTeKxuY3PrzCEDY
JL76IDKCp1m/wR6lAL47EpZqDTraIpRPSVfsIEbchlBbXXqE9GLKEFO3cQVEMZ3Z80DzvVmodtwW
IoPWu62kCF7cQ/AuHaIyw+unjMy7kjiAxGTyMpXBp+JYMDypRdI9VwmfNVHUb4X+HNdcsDHoPjtG
d7aBcUthGADT31HgJbt6r+k8QsE46BkdbP023Ro7bCSjZVAGr/j2036aCq+8tk+l9xwZGWIsUwob
l5kTGCuo8NRB2Cgl+4mxOrZN9FeVUyat1QFfACWJEN230iiX+aG+fPQ7vWgRge6iRXsNBV+dPeMK
KpGMDXmVlsPzE1mOjAx8WDKJ9r3b+3oTbxqz2XIZf9C0BT/axJcuOuUR0hdS/8J77O7HeiiuRvu+
DPiVOejIRCafFV9mKPSrWmcTBu5Qj0BNwkIIG92bQjc3j5uEw422mcSQwKMuDwiOEbSF9N2jFTNA
f6azPRugE3GwtXE5YxS07XqVrHYJTE4Fz5mL8mb1vc9Z3RsduXqS+kcx07hO2FUCB5jEmnej51Jx
yJ3dpRxLaPKtumvs7Rtw/+Gx9p0U2po5lVptcSEiYG9Tz59HYqN1RKx84FsoDEDU254bRvsvwsRe
FPM06+UAFLMog0T0L9dFCpsAbGGrqIM2ks5KGaaRaKY2hR1ctzdaT/XuUgrFHQS6IVIwiqlTfPXg
99tXIBEF174BsDrq9Pkz9yYaKGf1/1kPwX6G0OmT2ID/MW2vGybEspVanjAla4CTgIX+qNxxJQTy
fEA32oaFUlcZgFVvuFA7xpgqO1Eb6uvVXeChbuusnL2lHYuBqqixkJ+YBg1taWijs6vqkZAgYjnm
9qL1km6A7Cnd2k8C9iU0CroKQHg17YGx/2C4p8Bw2V5vLrW8EpmnPaA2ddWhiiN/4Xviv5IXi+CH
GuGGYFyQZuqYflgQiE2WL6SRqEc6cEUK0yZ8stB0ID+pqaNVWVEK8jrXKkx31keSt1L9Y4ysE3Zf
qJ1uY0OJPiUZp+mPWuTfNIQTPUjyIVrAG3Nt36pmxfFQdIMYbq5eQPP9qjVgZWJ2RL4OjQCSic9q
3N5JsEd7xFECdmBiV5JNyXIdb12CZ2wbuqMGgA7k6wyHYBG29+F6qaEAlhSXqorjUa7Ijqr1ijuS
Rr4VOE3kPYRltT7UJZjwi/AKD9hdcZzZ0ip8A6yc/qpbNJ2iWSkrawUwDff3xDKhIYGbFFvOgFGh
N/E+Dch4wtnkkiqbhre7z1+jFMrz4if/21T9ZZn3fHNXb9H0YDokuE5ea/Ye1usmOi+vFuLbbAiJ
OPqOhJQfKxyxE1+goYSB+O1XmLEnbf46bgiW/adwRJCZw4nQexWjinrc38CK9/9P/a2C34EGWKnl
krYDLP3eCc+yiXb6BwMEJNLMZDaAXk6g12p5iMLnud6JnCDANwa6IjyFk4NirQTFTx/h5NQ2PfAa
Vu+uhiAPbcs/UTzogpTRmsKwFtiqu9f1/xpdwCvMQDh5etQ/3jZiYZie970eIn7U50AaPkul59b6
2geATjMDtzQrnBBQTq8hdiCJVwZXzh/iXxcGKS98GDMmgr9VeoRedqK3ODtXznuk++uI+e0hWC7X
koEpYr8vOzUWYOHZPxAp8hcPyg4Z0gvT9XcSCBJm3dP+URgyVKwxBU1JPb5WyBw0bDxPo21RM3MH
afBg27cl9DariJ2FwevaKPGlJoWx178V/OmCnUOa9gvvTIZvOypU21sdHCh3byCaS6YJXMNu99uw
Wrfa6ca+2M3uSi15QR9pGha0XREgclSG0/Nzl/JA2F9jpruOUheaQD4Jc0MXvwZWZan20YABF2mJ
dkkNC7CTPEdRZl+jTs3BHeWB2n6boqdaYBoM7w5Hmche/5oCQqo31pbTjov6SWRcepxsev1ziqHW
zCKHry/hG5k1Ad0B5ZSZwRKopfqH78MWKwN1Iq/t3R5O5oebJ0PvKyTiqHPUWVtwXcyA54tml9px
61De6OfON0354wQP8TGTtA19fZLu0pXUcgM67yhNQOSUTSTQDsUm7AComB5yWlf3CRS6WzTorDo3
LttALkH23wDgWGfQ2gmbozw1zODoYHYRYQl4DQzCaLVzfAqwYA0yiXDTk0y8E8sKvnfcR76IRK/s
N84I2Vtvhv7/8u+nye+INHJqtKjl/thxVj/Im4TNql/RqTCK/LnoSVJ6LYwV1noDYkficbsrUcCo
crVujUkW0f3rbSwdP43K0kF4kvaBQjZ93w8MhFsp7NdIrTUBOmPyYZ3rq14c/0yN6/OXESMPh0i0
6pVbDt06ktqgNbJ/Vg/3KIYuy8fHUO0SooRHtUOjY7Loc0p4KYxLxVeer3/lu82p8VV8CBoCLgVv
aBzHbwjO1SxJ1itvsnR8BCa6tl4d0EOnudnadFCBj7+XgzoTTO/moE8C4vqcGxUd8+2L7Pmven1N
Xu3Pc6u8/T/+rdcv3T8QoeseWh/8NqFl9xPdU78gFukjNbIJeunnoN4o3Llk3VZwR3qAVE4pDbaP
hnQ5y8mc6q6HTcVOE75NmkKfKDFkMMQ9X26oKPGAPivAW2npvbU2TaOG9Z/oUWyXkfzPj0xUozAB
X01sC3RV9uk0FPYX0s19SN9Zcca05FPNQpST3xtklKmZvZXXB0Y2ryR+pXQXrkdCHfbSnc2UkbR2
+PEVrW4WPAN584XbnC5sKmeeMgea6BBn5c1zM2cfwaOXmTglO1RubUbTSSZdW52CPyXZGt4xh6mN
rlNIf4X+9yeliea/aS6OooeaCJ61EEDwL8BH1kQIxZbtEjmc0ZYuaJfizz6IqNt6cJUeO6AZy3WY
p2NsbjS+qIIYqNvVcdn2Q05vPWDObg9LlxV1hkcwsklsrbxJyyro2km69HEHyW9piuNB9yXpNge7
1Mfd9+Em5Amt+821/9v6GhuThl1vPSRYHlXWn58U2sGcaosZ8UIGlKBXuUcItCGPpsxKQreJ5U7U
WSjC4yNFqe0oE3/VnlhKYKGGRiZdoNkbagi1jL7GQXxuskJuaDmQDX4n+REMIH4CGSwUT3Q4cu91
qA/7/DrwUBdYqMH3+w1kNeCUYYFT+cMUel3zGDRegf4OwSL0248awK4xe7kiPtNWw+1nAl8pFPUB
WhfPchomsryLKhj0NYWB0yH+yYvyqNaHyOqkWQVHncorrwK8lT4Hk3P4igmk+ZOXQ07cZrJT5wnA
mfKnUHi3bwnHxZdYDu63is5AU1XpYmmW9tRmLLsVnifnYRrh+zpejhGZ9jsgtkIqzBZNTbsN4n6R
CbqNkfYb/v6maDFG8MXNPTNcrPqhOf00eUH0V8y/A/y0Kgum8iTFJnRX1LvpqfaI+NU14C/jx94A
secOM0gAtr4qRuBt7LDNXs2Vs+DB1Wd7C3cd/WOkRpjVGdRL4GgHWJDPOo8PInhjB4xLa9nsyUY3
DElmiATUIht3+Zp+zd12KrcoW5kGRBXFwHuMC3ynNas9yKoMc2HZA5ouhgS++rRZIoQFnH+XZ9Fk
u4aEYpCQhXn1QnQtl0wRRrWKC9Iim85VqDBK7A9UzWiONV3rkhlbsaZM//kzpHAVAbwoOhp9Bwcu
QhbmizYH5qyRxeagSMUG2uEj+UkFjvlCGFQ59G0WngKHdPvgaT963cRejwqv0ebVAC2CGQ36bnSn
uF0owLZBahfZO3jYrkO0jzCxup8V4ou69pgaKWGlg3z2r0PPGHtvK0aZKHTc2yxezhH7So/iRVgB
H+W8vZV1jo1EAvwBfv7YbISb7kdL0lsdBhCv00UBEvg+/c/N/kIRW5/h44uiZDxblfll0RHVpIJR
gJcfzjvUTyht9xuT6OMV2tfwUR/eHdOlaDkMN3aZl0sfiBhXQ15oERbRh9rWLTrPYXuZ0AyNiPsy
aVfWKe9s8XiNavzVVu6DDhnVjpOpcODGuA5xPyZiMXDdxy7j5L7jrgPgbtn/m7EoeIzPPiUtJ1Ph
iRx+cs1s7HlGxL8Om+n7M83MrzJaOjmfdV26pporwkvbMm5XMc7nYYjxSFd3r81yvCz90ekFigvl
JQvGgfor7x73qQENeCS8LYmYpmS8isGhWBmPfIkzojMmprso6N7YF66gjo86tNB5dPszS7BF44Is
BHsE6gQOnvn8bJYNC4WMTu7hH98sfazriwOYM/IT3OIWkg43LcTzm/+3ScrxjYNh39VLq06nhnRj
603+lIwt7z4DknKBjeXMYF3LEh2T8QTqHLQ++R5Ju8ldE/gDsnKxZqSmfQVq822dCPwt2bkhfn4C
OwTBKziB4oHcS6fNqafF4kLnz9oa8iJBEa1HINUH4DR2E0zG6f/3lkQmTAyEG6Z6/bqwZUeebSxr
sFljy1kEoxo3RmwkfDI69fyLEXlps/0Fs1obwkXpuQ4j29MuqWJDf0LPOpYwxVkRki7/xwDBhCDH
UjUujWKl3b6cLeEOL865a6jev2homDV4BAmC2AJmjnAI88Wqgn+BuVBSJMX4N8oDmVyW1wUCRWgM
BMaUvl5iF3wnd+6leWRokJzQtLnFsqVOXEygDq/j+oZkx3Kqu85huEgW/fiYlDvSBuer5BUb9ATu
WOaARwT3PKaLZTV/4mkWaeucaNoML3ydsp4h2StXMC7b53AQaOUdC8Rd3G160T+Fo5///yg55/fP
VsGrRwmAtimqZLeCpXkq1uXbqIU5CmwKw4gyFPF9nTehFNjxSyDpBRMZqmnzSkYKCZwh25+2pkTF
EtRij8e5JFYXAy88hGwVmva4fry6xrbuGNc+WhyLkjz/nEMr0Q2AennhjxGKcYNBSvyQcxoXpvam
GLg5Dt5uaopn0JxoOo8+jR8zrZ7R6e8ieFtBqoAVQ2WlEgVJoojoRRkkOwVZIHxnkkMtcl7Xl5Kf
6L1x5NR0aKWb0q/Xx/KX8mfWTtZcm9NjEH0zH9y9wuXt0IX2vjYG+qHmnHXn2T4PzVwSwDYu6sS/
MTk55GAZlAexDp7ThQsQOIl1KX54NUkYWoro9kfgU7S72ZZ11VK+WBqloNcvAglPhqjSLXfAgMw6
VFl/Tlwoosaaf1ZQmHoPu8fwL6pkkq4HD+6UXOxZLvevDkHz4V0SANJSfBjKEcsUnfC9eeZ+mseG
NvwrYjCGDHPsmNJL4PvoUcNYDVdEaJJXJunMvirtzSaaS9Gc22Pnu9VSEyzfrqNiqiVyYeeyc7ex
8p4BK7Z1qGbMpbS9lDNkPWPd3GOmuf2lkZ0uYuRvZoggNeeu7QLiacevtF0tV9rVWLUlnSjxEtqy
FSus/IFJo4ZsAa3uQIajpwoW5f9d9u8Ct11arDLr/1yiQQ0T6gisYjB6D9og9VGUP8BOvcNn7BD3
yZ6Ek1TcKhhcwfGhH6g7fIESa7PpqfJHx6JFvpYi6UloWt5fiI/QCTKl9I7CWiVMaUplAgGSrRvW
Tmux0O/p5DYVweOps8weZFwc3rH78U80a5/gQQ/Af2/NfFLdH8Ri6Pj35d9AcPalFQ2sdk/L66Xo
DbK3jg1UzkPFO2QiGJrQSoyQH+HtnVF7ZMdfxxIlSemA46obZ1oKz3eCU3M/o2n2i77QxxndIdhB
L9KCIZkvawqRg5LIEeFDf2eSNaIGj16uuwSFo5i3HdXDx5Z+f/pudoyS3h1HXxPUrOphMBddJlxw
Vci7Qin30B6RzHZGJiZCT9rxo5l3GAgu1x2RwhggCY1VYLpWJMJ232AtyY38nb9KqtrZ76kjz0yP
MMf2fknKNHgK47DBMfIkY96mu2KX2lAsxehv5p0DMgsIlVe5f2b+l/sRcA4ckcAUw7Ue7s4C2KKF
7Ty4T4fpB6RyvWeTA3dI1wXkfgKWue4WjObPntfAvuXDrcopn/zMqe3848EpFGdfTcQUHzun2pa6
G5XECtfK2h4paPCXGddY2zfzxKDHvg0/xrGmDSPM4WEsv4rSKscKko7OMVN8jIdGxpDFs1djF+dW
2OTjyS9ZbTYMn4k/rQJsWzTj4ai/jremfL6krj9ti/9xVYw+rwcz2SdxXCilYD7ooMdWInGydkdF
2JMmMS9e+1rS83Pg3ukhbnTYBpolSeoBTrAEtI4Rl+X+qVcOMFnIhQwlfNsX2c5zIxfxCP1dV5jK
jcZYf6GkVI8KH9+EYl0WLzpR7kvrhc9PM/9/h2zWvZMXQQoTQFyU+9WVr/jD7V6xnzwzdcaz6KL/
upCZUV4Di4xXyXirqVxHpKN7irEeDcVUlGLQzoA8HWpuX+AQyd4gyEsWz3rQsnK9eo3E5LqsYDFW
D5jOBa1wTsHFtpYewdHKy1v8SLaLbRAja3Z20mYlnlBJVE/VDNeIuRw4Z2Ceirr060MK5B7RiXfw
ybhH741VHt4OjgSav8VP9w8qJZDgvZdKT/1j7LHHoZPi4Ppxsri6g7PyoCbau5N7DUIEEMALxO4+
+WhtJNs+3MLvyujvlfVo+l/IQFrjLEBswi1HnngxL0mXZ4LZ2OrozfWMOrz9e8LHEQC3761tRmQ2
G7goXXij9BTkBOZr4rsZKQXk2cG2jZ2d1YfEEdxjLD/VXPpnAEG4QlAiRrFM/HE1DTj7O70hC3nM
IXRe47EsgMXpSaY0NG+12AgcAxJUMKtmkElNRNTYrI062gGgY2waeRONnicQpobNdP6IvRXbEUUw
LZMMUAFHSOIc/ayvLQoP7U9caw2XLk6KmYJsaS2wJR2J14zjdXJoSbiT1rpEoXfbRPAzAtwn46l3
3ZewxaR/iPwhxsgFa6Z43KrrJ31/JOyXp3kGQ5b8TX62vn93z6jl1xL2VFH7JQSFMqpZflxcuusk
IwKnPTMY6DD/5i3yGkvSHz5Pp8X8kRREO1Tk0RUn8O4wKFKw/lUdO9TAXNVA4DLKk4QH01y4ql7Z
m11oLD2wU4A+cRJP/GuVu/3sqr6JQq1uWk1hLgCzKhIwkgEWljOpoUunD3GcONzvZBrTZpaNPf4S
KkXhOaTZDRhvldNyNnwXBVKkPu1SdKehOC5fVcFcXg8wPkDyiPc9cvCQ3J+xLBcqBlcSoYw0H9we
OGlnADR3ajsEscOJvivJeRkQNupy13VA+9PS7MzYinSuoZPhBebNp+rj4cfz1Imcl5aTVq5wRrTC
Xkjx5KlVxGLcAN7+QMuKoNeDUj3uG+4gxcwci8sEL+Qb4Hdq3IWjKBgwA6EjFeWyDOn8o/pld+mc
y5EVXqxs7pTpKMSNIfrObi2SBSFM0C1LdvTZ/+1gNrw0ZrZ7R/aFyABZOevktTRH62rhdRABFsB0
UJTlbtxIDrtFwKgzvc1GDEI1ILiV/5WxKlY6PqV0BkFKPhmQc8fo1EbgUIya+TGrwae7KZqtqvYU
H6JGdCIawAksjgmsrYorTqmtCErO01VVUbqNp04f3qoa5U2DMKf2pD2SWVjhzgrFgGf692xZDMtv
ZwQyugy1x7NPoSf25qK7N+N8dGdwML6dWWd7n6CEFiix84fJmfLowlsP1RaRpmvOLLNCbpBLfrxC
GM0HnXuFZeRqS7HVODijTthqBbvhgEGWaCAOSfcC1EGqm0gfUM6mnCA9Y7Plbqsa14G9BHV6i/3O
XGGpheIPodrERN2q8ayR2asx3f9p608Bi3jwEijA6ZIxq+7LYJSlPWjZ+xxk1/D56p1HrskcLWxC
jzWjCH2k0rpEfeZSdcCWO7DgqBxaGve55a2B0w2CpCY/Aw7wV92696rvXUmTbF4wQ2PEpu/YqkBE
jGeulvIYmU9DevsFmTSq3Vkv//TRVrEmExko1y3P5tUJ6bK8sB46Gp+l7MaK6P8yEOefRjU6UkJW
BUsJSY2Q4hFIzaPHGuUqG/lGY3ynadd7Egc6chbiN9VmnWJkBRyHd+e8M/LijmRyg6+nhSG6bKeF
jSSY1aXIvID+wpYLB/q+wJ331jpQ3fQfSgqQGYeHVkSWFY/pF3LiRMQRSkvZpzbsTG77UyGR/2M6
tozresOrseqfZ/hgonv0ur/pcw5IDM88cTKohEi3zRoQprX1SJRTi7AcYWBb0TaZJQGDcf2t2TcR
vR999zFIc91aGWWYiiM7RcV1waWy/F5i9yIgz4/HRgbTn/Ff1DyJyPSe783bC3T7eb32h7XKrW8A
5D17A8gpeNIR4bIVaUEDZcakQuQ9w1E/y4R7XwDlw1SpyBCO0LY0PNlMdl+oSwF0TOzWI0lGbNls
n6O9FeotGIEoVbjkZOCC8sfo7J6xIcA24gk0ph68MMJwQxm9HS4AC1Sdqhr7b3fiW1EUBrkva9dv
xX5ww3oPPpuCgQK5ML1uL4Pi54+Hin8OyUE6+GlR/u0F7ERm8k6R1ZDEHCei/JkZkbPUVPTb1MW/
UUEsca2johCZU24EPzZsZzw/0As+jxB/LwkFegSuSmZaxr6Zx5dDoOwzk6V+dGgEjZ8jMmNFp6km
gDw1Vj2CGA46oHqRaJhenZwvtCBSBlFXQLDDMEYahmh7sCz4bDY8w4ziEBiHjAptNqE7rkqVCsXv
ngUA1UwqUn8+wqT8SgwscZMXIBpREPI7BFLx6USWnkWwP8sqeMBFWOP0iuUPuU2FqfsJImRHPsbr
n2snJAc3p/6pQ2UhLABr1tFHpbbnaPdy0bqwR7MVwo7snzSv86hKTczl7meuvtB1CQb3ZPS/BV/P
/2L2WA4vIukX/4y+VsxBnQvNTF4+b2TAIAp0iFBWn6jhiYeKg+mXrx4Hgo0zO72dtzP53nWVLwHb
kdx4G5ue4fdnNHBQ+QoE3JeFMT3jEwUafg8UgknWQ8akky93tdisO804lZ/4q9WrO4Q7yR/5fCBK
GTztKEs7cc2KNC3okejZmJrEc5y7A/FMnJ1JWk3KECClMSXDbX2WNtp9fjMLLSnAOHfqqqYPbTUR
FOJpWurmoLXQPrXmsQBXYdktTfKab53BuPfEmX1Vky+e8Xp42zqAP6/18B1w24WLffRU1MLafctw
MIHZUdqjUSKXOJWzClCeQlCn2KYe4RJy6uXmmQZzi/Sn6KTxCH5hKYYWL0iuQLW8XDbyIhF6PZoT
Paowq/liXo1PkpffZNCOKSh30h7S/l54UsVogPHkTZiT0CN89myeMdP0iD2d+/nF4rJ3pTwDqzON
d08kOeKZXZ3AJdsL0ZvzXb2HRuhECBXP02TzD7Ww6wLaS16npFNTvkfgemoob+aVat/X6hiTcKp+
Rx5iXVbplphlSSgagdKj+NP+ftVytZNjYOyv1MR207oHU0p59tTSgLtIW3eVs1hhbU09jxDF5sjd
6TSfATNI9X5xhkihbObHIOHZBLffC6XIy2dSbTriMIx18TYmSL1lLNYIvPdvHbTWix9ti9Fkbl31
anzYIzUU49/NmnOIeFgadAOnqsC82CF7y542OuJi2AXpDvUkl4KK2vYvSLHlFAuBYFAB7KElZJyE
58gfP6IXdiTBB6vObgjRbJatkReATXrfxv5kjIlqH87ktV+1OY2IJSe70Fgz02ctNI6PZS4EA577
8YvCYg+9UzjEHhHW54Vd3wSKnbn5jeOYqy/10NoTbcL150bHC65UaDvRoWuLqT8FKb5kY88jTvmZ
Oy2YQ9pfthMpWB65/vspB4bwen8eSZuDuwBaMYC9hpxmUEnODiP7RUvNeIX36Iwt8dMpkjMhbtoA
SsHgZ74PoQTPp0pGOfm0uHme+atulmaP0lhe2fAMynv0+9lB6ahUR88QVo85zVoIM2vqyyxI+zKj
y+CrORk12CA6xw3nHqK/3q6jtAS68/xcgPZhw/WUzfjH3wmJxxaJNXhyDguR973Dutk32fa0m5dE
hs3qZ65b5Pm7NdyNbNcebj1MXXAjlnvvWLcF+MksFvvWxVzMr7oFhit103ehwsCUWFzxvvbVDVWM
f02XR9MRNznd8qVw7m7L2Dd+mH8DiDEM2JNgdqNtdwspKyjPsAWxxTflroKQSq9zpJ7og5WvmtRV
+12wocI25blMwrYC27DixBW01kduOoXlvFx2w4uW+LGFG5qTbQi5KHayJfzXhisNCPQeQ6p7PU7G
cY0rHQ1cTUDS8nOFPu23Gm+UEkUdU7Vs3NSREEdgb8RaU2dYlXfQwa57GjEIwqR5cr4pO91zAsC+
i8vKvUC2qf9SOo885i1M/EWzvWik7Lqqckxu5+8RIezKIc/eFD8yMyr4jm3YkAX4jQUMkkFel5TS
Sw9GtGzmeywW1KyQ7M7A6iPDJAsbeHOglWaQ/cTSIbUjIcp1ntlU3L0+m+IwQ8BNqZYMpLZJ9MYm
1vmKgrNIr52KBCIsMTKiijozAY98W/a2e30J+lwgkXyyH4wcdOFVzAE2+U0Rgr8FMO29jV+BdMF4
br4Fwesnx0vZZdkqtyIMkEjq2JoQNLPlHrCtRONwXLVUWEmJ/HyE/0P6PSnDQJbdSihADFoimoSA
iM1od/DAYAMrMiE+GU2iULQppq4L/m/bpjJ6lFaSpR0bbYjQrqq/KVAYVh0xSyyv3ytXuHBmMUhm
E1UhidUUsWPOcDRMmPcmvTCjCnCX6tDYvt1Sqz0SpjgzJi1Wx9Nhld2JB5VU4iM3URwMMiPnfwKe
lsM8VQve1HB2GE07nPVM/Y4sgwLQ0MEU6icCCtLorkX0FnajOiDdqr0m2KY07qYwNzK9x/Ufr1kT
pHuRfHVmDUIRU5ehBt1df9pClyrpTsBGXYUB9/tSimjuxeywUDwiCC2ZfPT2dPTioGirVOl5jgoX
wuTbBhI6pEKwLi3enXWYhpN08Tw49jf6X9wZCHeoWcTQWSh8hWipv1R0Tx8abEFE0DJYuygAPqDV
XYBUBCGVX9JvP6ffxk2b5dioY6WoThKyr6O8LI/hWkLel69dG8T4BEaJkZCXxYc4svTpfo4oId1O
TUZP7c+U5ZV+c5mRVGHAbTeUdZKps3DM8yhmWj22IMRCGMq7gSd8Kbn8z7k+PViQznTZ1zKOV4+v
f5vCqBpaxfM7g8PUhnZFZ5adfvAY2lliErj4voX8II8Qa8ns1HO0aeOoVjifj4WAZS75O2QDhaDY
sZ6DPvG9gzQLNo0m6YhYAtdsntZGQPvsifRl2PryS15zW8HmsDYLDgnVzryeQJD/7iC9EpfAJF3M
apeiGcYBJ2GApvoMSbV6MPupy3BLThfDdmmpTTk/DDbHZ0QGlZ3DdD/4j4S67uXX5y9x30X5UDzs
Ft/WmGlk1tC6HfJqcPPqs2fDcO1d1KfcdXAQwoUWL8Wgm5aDytCLeku+NXzzYT7WvCMRt1StjE3h
ALIab5pSuyuxJbLdRGbRnVViMydqJchW8sKJhXCzDGkaLlRhKJl6vEtKNidamcpxvbzesc21Erh/
RD88L+p/NB4AhbJHtnAE8CZHGM7rSQYd/oIvCTm1y4+Mm26tfV4poCLBOxfrKdNzsZDdsvIZUbsc
m63X/RedCxEJ1Jor8M5Ipgh9r/RNKZAyNlDCSzjzOli9Qo8Q7ZAtdrgSBWSCc/DDpZmjy9+dGZEq
I8uc5wUzIqJ+s9OLFQJTHcMJhQ6PKt4r6iTINbmPlwoza3upDYIfYoZm+zD7MYHTkY1kX9yKFtI+
TolJMm81fDFKZUiDbP0xidWAe1XvhE6XezWvGKhEozYr7fvbwjVsoBUZHDL4eLJ8gGu3LFj8ly9h
5sUBIA+7JSOCoNhMhKfdGv5jsnCn/gy0luTYi0dVtgtscDF6GkPnxWqUn7jxC7XXVBdW6MnURerF
SIKR3PJov/bImG6qxpMcswevTYHw39+ExxM8zjwDmCnHhZ76Pjm8EfixqbFdtzQyFdro4xu2nOwO
MCnsZWSRwnAg2LozO5/SEDyUHVt0e12MT+UldAttWuIPRVe/Rb4gQGfnkjfak24NK5IMhr5pps+i
WpINTHH5a6LXi3edO7QU4NNB7/rVmwpF9tT0gTzbr8KsG+AxMuilQv3yfF1nm6LFIl0DUsfB+hDY
698Aq32oZACz4bMY4R4PPo+p7KSegmttIrQzUgj7CcTbMHVBRcBf0kC3mbrLIPuFrUCRFsyZOI4W
Hs5+Nh5mI4Esgcq/Z907w9GneIYwXd3wdR2gaEqjukEbTYmfmmmvPltTG4y44yaOX3t4QKkffyRf
LrqpHYsls5ZAbDAAOE/5sAGjPHkQPeKRKDnuDxFqaoX2ujTmJdxCe80OIZia7C58NHkOcFy29cBR
JskRyH1HQ93BjxMl0qA9wFKO/tguykZNGkc74pamjf9G/juOWmmoopB/mncrhpfnnwhbj359hMhA
hGLwcly4/IbygqgXTYbEHENcY8wAuZmEdScMlicQMvzuZkzZljWZaizOndZ+8k1QSLHuTX54cuxZ
ZspE1hqKYPzlSVwO9LKbxrZR/syJ0TgkUi3KEkCSN1P125rVhORDTM61tLMnl9UR5hEJB+WSZC/4
tEf0p+SQ+JdO5MRT7BO/79rLqwRkKDi+OEx6N6kYOY/34ZiPFPEM+2arsl0d0EuzPQajV5RNNCMc
SNl9C1OqYWQwdzh1mtRaY7kOJH9qo3o/taQJZfSYCxRucMMVpOKb90adjBwgDfNamECLzdJKBo2A
O2kjEmRD7F7T3f0yIFsht7GfL8gUlTveojcJ01QM+4W7avrTWzghC5u+RFDjU9RK+vhF8SPNKpJq
O6bygZBMfxVAAH6OZlyB7Ugz2QOZnyr62lo7rIev97iIZ6c0k8xmlgzYvacwOl6/1czZ+oiasUmo
31qpkwcfyFGFzvFJ/KaD3NyiM1KIR0F2T1+duiouO5AWNXpGBDF9jt+Af7Rg7EZ5QsuJ2JJUVd9G
/unuzqQF3sRvII4j53+pyNwXtP8qr1qKJKu7vBDm0fG0+sPMr83+3kcolPUgCKRlVIpO9JMMgT5X
Fq3jj1CZ7ZeneRaVU/NGsC0+qiKCATfDtUMTyNyrUyxVpYgt71h5bf6YSPeCaz5s6LTzbgGkeVKK
qsaEFu3HQHJFOFsRHCde50SIALYXk9/MLL0QcJDxO6riKwGsBr45pGbhyzhK7UOw3SmWR7xtSIVy
1VCI8C/hTw34CcOniBV5LTb2eSx9zBWK3TlIhKolQJab6M17PyOwsmmTzR/CjaZnwCGCHCTxN40b
Xt1XmtZFb/r5s1B+QQ5Zrke/QEuMlWoRBlRLNd/NLKGkTB4qdWfXK/anEdmkoPuYpu1U7eOfMdk4
GE+YlCoY1nQXCpLGYYBn1A8y7G7u04TcMtnZ996C1/I6BKWMyXQ6bnD53VgIPeSE3UjASL6i/NdH
gACr38Zvip9/bozBRW+dGJ7edDvfNmkJOjbszEk6bVHHz9vK5nSXOjIfYR9g85XB5EC98ZmvogOD
u+f5TImhk7vryFrFkT9+q/YRs782QxuyaS3PJxI+eYRMM6t9W9PpFH/Dlc7zHG2VI1mVLQ4SDqQA
98ShLgWZmVw8PEcePJbKtLhfQmLx2xutc2RXhZLJ6aq0UdIpOeeDr0K5/g/ESnHUh8fI9XRsejMl
PIFg7RZaQqXbUzlQH/5AVY1kuBIAcCFtgzg5rBQO5/A8s+LJzOPdha8hXlRuNWJtsFf0i0ous/Mn
EgUc8YaJYy2EA3Mc0MJmK2pmY0MrolJxMv1e2VELPwOrZjNgAbvlu9xrLu3rC7fO+W78kRSrVSBu
QuRuALloJX3ygasqVoUz88EJRVCxi963WOurqFUGI7m0oN4qvlqkTNUpmpWv6A8frKs68imHbZ+3
NL6EfDpPbucZBvqjua27u1hRZDzEUUcKLXQnaQ4FI27vOH827op7+Ldq8XJxBMAypbrxrAdu5yW0
eEdoavSoxv0WoFHwSQB5vqkLUrXVaMbawecXebbGKLtA7iwEG7PO5cV0fYGTuE3cG1UF7eVyGZ+j
yCdEb9jzDUpm2zRER+80nns8PKQnDAHjk5nf/JDGpKDxqZXUt2m4PiORa2V0WlZS/zT/r624qFay
bfBftL15uVRNUdYrojbQJyo/X8qGNTo/e4rsnYMiWQUV3nnv3rtYc+tCv60xy4SnrcekEu2gVvjs
2U7v/FaKXSxYjTqmRzjsdcx/aCPFoT+CkdSiZe8vtn5ZvTbvfSd0r4Ak2Hq4pnAN5gvJ2qiDBSqd
f/AdibMEWluVsFP2tdG7UcyXreij9nqXewe/IWRy7ru/Neltc/owkxJazaCBR2HFJZAIKDilEmG1
WYrNAQVsdIttc1GkqbyJBBLy03HivmdOZFuxL3XrTVfQLH/UxCSkcy6xj5cL0c3nz/e1dFwJub/Z
JOugOy+aRy7aHTVXxZoG0flH55rrV5mgCV8b6B4TCSq+5LiOlUAS+O4ahxtUz4Z9TndgZRtS0Qci
g3s1Q9VLWI7MYbRX/00ZCL273unDAKZkAqrEGPyfPYsDXPQevcAAwDbkT0xG2jnuwGPqX+ZAkdnS
w9E7DfmzjgqCDxAVpS3mCGCUct8l9+hlwMYcql3ykysrK9d/mx2c/lH0EDKQPJeHNLjoPZuNZ9o2
GrOVzMymxTcVeaiXbpD3rw5bAelWqLMF36bMMHID2ubnobi60HH5YtA2hMLoleXDD2kWFeEg2/0a
swtBPC0rSSKtvqy+RzXFE0yNRLXJwrl/OA8wUMz6DNp5yhJ774gGRy7JhDSBl2Z5myM32/ExWurR
jCc2az/YeC/2fIjFnOLndKdNgERAGezD3G85qkCrUxUfQdDU2NTh38rq9csuBvpxVySt+UsD1/m4
gwaCOcJyI8AxVIs96sl7f2D9mCDOSpVYAhMGyLHUa9YO/QvxUXvCbAp69y778z6S7yolshv7aCcF
X3Tv181TNe/VLEv00lnHipZ4TDfMex0/SmDsT9WBadeJjniwxN0WwSzCeqUTmCZ0XmDmoHzybIE+
Mx8eOlh2dm11USi0RcA78Sphg6xMtiI6N8NvOI2dKiC5zv9AkjNjtz5UVXx4nUbCBiG7WQ03GxG4
hdPZOAXpVZ7jR/Db7eya2NJn5YGLQw7yffEvw5utox0Niz2goSXc0sBrd5MEv759sQSbnJQ7Dud1
ayhB+wD111mIfNt7vpIWcnMm1kPtJeA7Z6bZoOaerfBZGvnaMxp70lCVcIZcTji3pFilOtww+voK
BfaveYNqsmiFajSVeKwmq8IBCEjmJ89lzbfI6mAJrevSW9NqbV5IjDijPU1WFn9H3Pn3z9Hdav17
AyI7MeE8UUgphAmBB3iVuRA0ORvYi6PEeqEVsLE09YhT2CIUHDqukkgNBeX3/ObIlXQedNUiPtY9
MZB3ymKFsAH0QubZeJBM9ilzI0hDi9SJzCc3Cp9AYhbEpnJrm6duh2fuWlhcjgscd5G/oFS7MJ40
yrce16u+Bo/+NZkGD/Jy5MH7OnTwym9SxtNqj+JeoDr3Fb29HcCI/IyNAQgWMt5Q4gQt5DVgqzzd
LQsDouRm0zzv7bRTjj3CripG935+7fAXoddk1ik32w8GT61xL9vYMdvo4YnN2PwXTSIs8P4Hfi9H
QIA/knUvu7P5WHdTLMoqjkLYlsyuB8u+isSScCqg91qNJ48Fd3iy/X5LbYwZ9ttJnIgqxBSvSpQZ
gcZBbQ4rAI0yuGmK2JvANpaUcG6iZNeCm8dZcRON2pIQsd5C0E8I4W+RkjOzIs4qS51ACsDKh3fL
pQVwEnebTwa1zyZPeuL8tmArjxcHdWPwjTS7yRXeXBAMyBvdfC6wzZqGSw7jGkB66IuK23qj2A5p
BZ3EJvVmtXMKtxRJPJZZH7LZwwNU0nME3V/XbsRpAtkg6i0LSg6WpjOaEkEJhRfzwvWWiXqWf7G5
lpJzC0+0MurLYeOpTaiMX10Vco7fhLY1d5EMEcDtM46SvV0a32mB7OcHvvYo2sIAgBcwyPslZeQD
75IqDDOYZNdWDHvuFZNRefjCwDEm7HKKKSH3Y67hAEis9VbcmjhE+50Tb6bFQVyuNLYrP6o7k8Ev
OKyS+Af/dFm2sVY6k/Ctb90FQWSjnrvadsuV2HfE8LOoW8pc9kuQy88v15ynR9xpeTN1BHo4JvEm
yTenRsLaVgDjzfn4RsdLfmmGyX/OmMq5fEqNjhLh6zrUn/Ed4kBF7iFJLdTeUpTaRkna6PirHSwQ
Gv4w1wN8PyA081Bf+UXbvzgZNj8UY9dCm6vdJpa73u2hzRiacZpdZ2HpxvLGUUOrnKfFrowdnKx+
fWPyD6+M3M2oSPi09gs6nj/h7GJSrFdkZSjHfosh+MsyK7fqjAO3c/I20LyVuZS1mZo6o96vbCiV
zSgHv//KlBLmcQO0LVyyvdgZudY9K0LlU5F9mRGPF4Zpq4fHVkG90mkJQbnZzLk2BOasRMlA7/qv
V7er9E8yyfz2BcX3A3l0URu/Yjg27g+Hw9VXwTbcqzU53Vi7h1TGMBkMn1OsyM703QHEmMWNwqPA
T8h2i0JqvUd53Im+1Kcu9cQVPRR0i+8sbJ6yA+rD8dctI3Ulc08Jfo/peCjPAKMvKKH/tPHicZoH
ogla5BMF9uDFrS/sPXJSzAt8jWw2BSWiBf09q82d95UPHv48tTK4o0tmQPoV6YcbaGCT9pJemREc
ywOzezr7EnaJvq8CijATXjESEWCt1NUZuQuUROvUywGzw5xtyamiQO0fhE2ZfssbXl8C3lsV0zZM
ubx1FvuaHoJzeY19j6XA2uYHegYhIuQpI0jWUGylNoLM6UYr2/y+RznVA4PrCsWaE+fzCGvNAKK3
7f30KMboDPhmGhwz8b5jJcAaXrhT916Aup6hUIUShdyZ0+YjZFHhTsPKRvm3C0wmdMve/gCiGJF3
VrOge8Jy9EZt7WFbgcUTSqhMCsGO2ENh1gKG+v58+zMszxD9bQI/fYcfJA5SBJ6/o6NJhXzVYppV
ruR03Ojmw69Pa8vvOMR1UpLS2HgJjdz08i1ADxHpQ/gS6vd1nFK4C0nD7uGj5ZmaYgYA0uQfVWy+
+MwKeRE1WUyS3DcLbxO2mhT5cNYkoFJ6mYr3lYgDwShACurAhWEljwxHzyIvyZAxNU7fxZoS4R8b
76WLwC7J668gI7P4WLCPlX1r8bYbCcbeET7VYrCRKMi396Flvi7O5RgERwvi+ydiwxFsKqVdxlKY
QRk/pvyA+9ykKeDolStWUaBeFvlgOqSkSsTch29IqT6Pre92X3Fds7zMiAT7WLWnLbRf7SppAU5s
OLxW6KyJa2ca8zP6Z62M1spx7sNyEsjthxd1ElmM39+JxJ4XK/MHya88KOSlcuGzm7mTYEh7M1sJ
BWEU7yF2a3aDBRYcM/IXStGWW3IkkqqpmpU6X1BZwyAjCcw/gvE7Sk0FotvlU25bMPyFjC+S8M55
Ro/kKSGFzTSRcy38B+Xcjmjy2gknRz8Fp2W4PnzYqQnsnkSgiL/XIaWL2cnBbTQNpTbrnFIdb+0J
4Qd75yCPuIrt52SJo0Nqix3uWaTbV8dVOC5Azy1uAn40VOdZ0MCQbANoOHXVUvUKHaOTCJZ3cVMX
iKLytuUdKgWalTeVWpegzqQP9b15wHN42VYK5zVSpcN2KTK1978jovROLxJDrazh1E7olEv3TvMN
Yh9bQ8IcUoGDtlA+DOU6U59QwyTC0a5xWN51dvTVltMFO+lG2d1RB6uxYDzXHrH+zxmxBTRadqiv
GK+K/zvlXKCWlYqzrySHXmPjAVdgwJAfGI3ZNmFp+dMlQ/ZUDl4/RAs1msMOxQViS+TOewB3QE7k
fOaKcxtU82kNmZg7loxt/jfT7j2FQSP0cCuarJyc7dPclc8lNhcXVyjl785TXOK827cfFK+QE/hU
wVPcF9LvU/Jo3ygF8FI4pAw/pFCChhWqNGvIrWnlhRuoOa36kzG/aC+lO+SshG0q4/vAXQ29U339
H5KNZQry5OADAt/xjKANxvSAinstfOjjuflocrsH/hfpZKBYl5lgSXO9GSSeW2Ybd6qKl99Pxwbw
U/b7OvR+tSg2i6UvPhK/NerV/IF8vHnhItkV1sd+vPOxnt2hw9NtRDR1NDvWTMeB60h3L2W/9sLv
mFQBn0srsQU4mhrF6jJ4u4NHgZF3OI2hZ2ZB4zOxNsC1CpmdrDJ17tAZNCy6h/kHc/bbsEe4LwId
yCoonyMahuVmA6F/qVis+spQHUOvILRw96PNRHwr11hOhwxsKlXegiIm9zHH+veSYUb+XxVgSeJK
+VGQHjMj6cImgQgoMDDf4J+Kz12VNhr0oDxhswx1/P5opzOUaZXxaReh8W2HJxZzdmxYbuqz/uAs
A5Tp8Fccasl4673aBJoVa7+SdeGW6ynG/Jc37atScxP9dNjYJtgwh0JCZrfyZd2jw4G3qVVWSEar
9E9I+fHJll+muFFct+PEHEJ//ygp4UdV6tT/Vdy8dU9MlKfkohm7vby1g7QndMtHqUGlupPcv8tP
at54ajZyL6iT+VPiUjcy5cfvBgnLHm5ffmvKyXuoyeeFfS4ab0IDIEMhKf31xhn0chVooH0RZ7tO
29fbD5FytzoCUkEjrdcrS34ZXGd9g5RDdYbYVF9rpvhXT6gsx40HxXgvY0YJm38xCKJo/TeOUKlk
NjH9hLVPuEH8jYF+AcOz5in2z/9Rme+xo7QMhe05z1d3lLv9erZP+68tV2ObKZjznWTkiCVSFGW8
+F0twTXDvmccbwdAunDAMHxv0qDSehYMzo9V3c6qwYIxZM48vqN9Vm/moDHvQseJTdLc3BOa11IO
iZEs5l7RM/bHtGPpUUG20YaMWf8tJRy2FX/WVQaBam6LrySAEXrmZAzq4Ux1FG1E6eUcMN23gbQl
Zm0sFIRu3Tk8b5AMl3EHlzNIpm0X67VfUxaVJCCFhXGJT2FLjuHW3berxHwQgLpkbZo5DOYiDddt
PFn7lLwf8vQ/818BqGwx7AuISdyVgmTk/xRzVOVp8ItKWaPbyoxIxw6PCYPtJY6HX1t6cc4HwDnF
ATsGxyDnvvgCf+Xp8cK32FkiPVsHU8Cr3m/WjKBGmyPUY/ImrNVd/Kt1qL5J+CZ8Doz9E4vha495
NhShtwemDN9sGLu78A50y9fF/BT8iYrZMLnKG8xaqd80bGG9gMShj3oI7e7tmwyxeBAipfSSMjZd
ZVTKIaBbEGvfRm81OQWXZXWUWstWkIjJGfxm+4oShM8JqN/Omfwn1keAVABAhBbWOaLIzddyuGG6
oVBzg7dWbNHqJLBQYKGCJEMyB1EbDur377uf4fQGqs/v5zlKPaQ56wztUJSqGjonBr6JdXNHxmfS
qBWYHM0uX9BfubI+T/tBFEgC83Rq/9MbB5F0V7/PCVQX9khgGyblT0FapEQqc1nq2+2lslgAitTi
NziXmq2tG4SgYNW+YWSkwUUO5lqeKhj3Ng06MDMVaY9Er/UDktOniaqXF8fQO2UHHIgPBh1+iSBt
O+so0hAZSqcCJlDBRloLwXCc3J2qyqQYq4k7lEsE9m7NCuFGepkUoCFJzkmyOoWjx1sO36OP5jTd
jKYsKj5RV4AVo0nVwXINEojr1AOVEeT/3ZwgVsMkKfJwMzI8vqYv55t4AOp2vS4RtRhhLfm7BdCK
yD0EioYmWATbIghbN7OU41VgbxRtSJZlSVRFmYkToMYjru7m/igWaa6r3x2n9wQJyjdLGL2eIezf
SlKJcW29nXenBGUDkwIFUdZUN0ypZ0lvj76WN8kex/7VPooVnBOBSr6AEbxzBjRtKvfc002KFFPX
llrcKTcR8Npg3/L3Ltfhk22bCNksZgIDj6afUoz0IaLDrqiRvD71SZfqWe4KhPPIUGBr4zIr1lQi
oi3n7P6rcIWWx0FqlSOPd8CCqXhmwJ1wPI6vflStolWTPrj6b4j9UEkAq84e2F78SpXlcOJOunB1
V4EPje7D1pPiOpS2gbDNgPhSuaxT3qbGgmy46ixlpthV2lVO6HZPoILpuB9ouJFRhi+dlVFjxFto
9LVHwfdbDddOhHCSS97Mrs0bYWe4leSdvANNOkYLST/vXwJjk/6GR29ARvQj+M7ZrINkMhM6YEvV
5L3V43MNFnhM2+ijC76Vdrp3gamnHWcX0Ysxet5gkHw/YDF3y2kpjq/EzcqI1oLL7VZoLEnvb2k/
mcBfiyMBI/QHCFReu6gQmXbQPBcWMSJYGqIS+iXSYeDneC1iKDbumGfrwQ5VlXows6VujKA8rRyJ
+XUoR9dkpIKlbClYNz0sCXeFZ1lG3uD2P4SXHftpYG/aQKIKtpPuQ/LCarasoIVT7gcCmnuKjyWF
p9Lu5dgj/03itMjF73JDSzr5noGOy9vaaI2hy4WzWg8kcSPt3XHbfCWjeAheUBffxCpdkRHkM4Jy
+osdmDQf7AiHa/ZZDmrp9zcaaXaY/WBulFIGW1ykRPGTeirYBxarU3RGuDkOsnzBJvk+cFBJj1mn
OPrr4RAInN2J05u0DI0tCRxjW39aiITqHEFK3s4YU8Pt6dHNEPbxfiCpGdt9athxwOZslCEBcc6F
P2Ua6GAHM3SoamUU3H+sv6dQ5Pb9xSorphKA1NPvs9Wh3+v+kH0yyJSRTYu+/v4YWRiBTdHwENV2
lg3jvRQOvHKesle+sumiqPQiNaJlt/5hElATLvs+8sngI6VMa0DYOUuIHaCJICndHF1uMvxVKeO5
P0+aDtIu1FXjT5exr006lo/pmEHccBehBDy2yoPg2fJgJEZm8FpqVAmX82lCByEfxe66uF8jdFpd
ldEOQccmd3Q7Wfrs1pSK1jFcUFq7RoFgRZO3gqEDr5siXmMLcKNgQrwcQDmPuTww3UN1Rtm+03Tg
2P/5dEqcxM4HVRRtE2LCo0ZoB86UGE0VY9VZhmH3lCAnXhKit9LtXruKivBiGvmtv4D5yRRmoAik
FpMfzIthDNIYgT8XvgaYfJ/RGOfp26f1dR6XgRO0EGa3lKh+QTwg5tvCxZCbQnJ/QJR55AY0Qkwh
UaV68RKRIBSfOeB2SKrc6/mareg0UQBsl4GWrAocYW/rXWVanbrJPmu8YTrftxvfKc3pVNsC9pUD
x9A67CVD+fVlDL/4nAVZMpV/ZAR+9dEjvQTsb2cjre92eI8ckhXJucbATjFm5X4zAD+UlAdq8JR2
xMGQb6s8xCnIOhcIejI8YPzvwj+r3fTSsLR50tFvQq7V3/TwNuPEG6dlvOv5Ug/RhE29sp4RVcPG
/MWtX3rN4Mw8AXXEIPMx/DtN1muP0ly9gtU7xDKiN31KWyAOvUb3ShGVSvnx3BPbiFUQ4709b2tO
UDbrrH9DCygu6ch/1pL4zb1uDp72T6Ts1nwJZX6sqxabZm0wjMu24bWVGsn6Emrn0n75y2XrQf56
6w8/RkfKh4SaZ/TdMkxRLuChwATLmPas064IQeYsv4FEjT55JUHpU7MZPpfQ+F8PBnUSEbkYtoMr
5YTVWMwqkdfJsu2Iuun3hU/sRpF3IfQEA/zQNiceiamBkAw2y+4zdpmgibJRcaY0200HiwUz3o1c
2ukbJmMoX9MBfatz/HD06R4XqBcJ4w1vunl6L1Nnua1W6tWBmGjvJZnzMrJ2x+APpKgK7GpCXE9T
ijrRg42exJQqau3wy+f+wzR+apBfkfWLf2c+3Y9Z2Pyd8gk5IkDlknWxVjYpOfMK6YiruY5EvAY0
ycNNMJiKm8foYt8XiTwktKBT2+sS6E3NUp2p9A90cIiBsKF5Az4kjFWX/d5wfDY+3N1y52wenFXl
EsApV7cI/HlIhbXefsFcqjj9M71GVDwr6SAD9mm9e5ply2E19nWoQAhDuTt0oG2ZOcdXtMTI8GBz
Lnhnmu8mrPJ9GTPwVWNTSinYp6rWZDZyOH1zGt2wdcBd65fQHa0jAUGtGm/HhaPOHEzrRHRcChE1
+m0e74MHovtq6a++FZN5vnkvzWF1X48aWu4TmcUeCSELSHMzSbXo0xFEx/614Czh73b7f/vshHgs
Wgp1a5OqIH/43x87gxRbsRKdET95RqwO5ipzWgLzT9iIu2NhrWOgucntyaFf5KGFXGlfueZCS5BA
iFeqFlhXxSURIBPLki7CJw2OeXLkVsE882dwX5RFRk8Y+FHp47n7HP0Rq4DsTtzTsa2gs7oPPNO4
IFXkvAPkHNUDE3ucCRKzds5zDT7HeRtmmtWzydvKfOENzpX4LihdLqcnZYHKRuKU8ExZLsZFK9qk
ZCss9j3B5KyDOM8fndC5pZdIid/DPAZGbM4HdQaFN0FZj18Lh6YO3O9tgSCYA8mGNTC/jZcYtDBd
0AnNciX5Y6WFmqPKcdN4thU2HkQhaIlQypnRld6lg6HvljfDO1nPcPVA0sIhmbFpLbIbYGYI3Bf+
TvYVvrTF9c64K5RqrcWtogjttG2xN5IbRqXojJdwJ9VTfDDpspZsyas0lw4X06bszrPpxE3H+1L6
GRecUhS9iPCXa1T7u3gtpsA2dn8DRj17qm1VOvQfXlkJS6DG90ZewDMqQzArgb+/K/0hwoByKlkk
3TMCI4zZo8STVkFWL4fd8e/lllFgTDRxLM10/GoTi9N2bOqtLBVlM3O1Mudig5XmxIPZVdTgK6eA
Q8shEQp2aUSEN8KyCMPucIROlg00pBpMo9J8bfsfNCkLxidYaHOXoV7xMFFRN8TFZ+EaUK+plQX/
09dWqDNiPA7+jl+tRyf2JhjVKTTzDbE1v8/wgek4nfxI7o1tXxXEw2bAprXkuyrgmbXjgWlvUGo+
PABa1Nurzms1DkNVC1ASTnxFUi7Zwra1Mvq+cLX1s4nPU3YYs0qxbEPYVaXZKF91/p5JQN4NFv+a
cmTzUf41Y78Kf9BJGY0JI4DZCYrpECOmnXYaVJ9CHI8gCQNw3hyHZKoMEsx5vCGCfkdvox5iMuK/
AphLKow6xNOw8tmWmg5b55EovNLFSrLAb2u1l3XgXtoMO1uq1uz6barJ2/OcR1RYyf7TWjwkDe0N
D2uf2erAAQpYr5nWSgW8g/swrCyyWISQtWgac2Web9PLm0RUcM86YzgwEJnIHP0FSCzhow/IBsoW
5MAVCxvQXM6NCChBTJrAoLSgVxM1TD99xR9Cdb7alTvkNptUEyaHC1eDNptIfRH+gvEpThBXAZoq
s3RCD5yhmMLG10SlPrCgdEofPpGpthza2CjmuDm4XKXDCKWsjjEM4eNpakU5TgAGv/ztKxRQz8h2
Or4/L4RokBszVk0qDoInPzSKJPgc+svh2c2xXlyxhxzsOP6BzE9i+RUB1YE/lwHwZ0lWjzzAPpQH
b5YN2Xqwv1wUa3KmNlw9ooPjSqL8M+qxVn3IBbawbh6UXBkRx2KYsV21eN86KJLATsntTxZrkxdx
9nhlKNvpdw+335A/d2dzF5M8ggh95pxuhVih20UcPpCHqlQfAylOcMXK6ecknIWlQYHk5WR94o+t
TktpKQZIujqJWtfiOVMdMDKUC1EWQ4fOY7ixThK1Q8uT2XTWsvV6mVczihb4zcG+3kr8rerBumWV
/JfJ14qoGVMzJP5XLDF+j1dZs1gBF1Xyu6CAA5qMSgCVFGiRzUPW5SlkRLivbhm3HaCpwiLY8Kv/
b8lMgQ9jDrmfdXE8ST/NQXRT9uRBpl6O8R3IboEAWGQiduxwHL0O0CDyXMI4Qw9XQb6/ZEpP4B53
AnPInlBt3IMWu4Br1ehKJncRUpMPrlBuie4IyaxxNrjYWcfxlq1iZIuW6hzg0AnenkprbRm4YDvM
bLiTrQFi/BFZQZFPV2J8eyKWUuB6ZgqMOedVEaJ5Mk03SJ8Y9+gx0lOAEW4B52ARuNVnzsVyGBvY
vpB5Dhbcm9XfogFX0YVCt5E6nwiAl2gefoYmhCEYN7VPcwBMDdVOXRyDUp2uvqtkmBqMmYruGXl6
TNs7VUEGdx8YfMe0sCD46mpQhllLMvaOUTZikDM0cYvVrp6+AbzrS1LSZd8rUjizprmilqDHRBcD
g3LeQH/3AIpVlFEkfn2a9Pw3/TbLoygifn0lGLfhRw9WW0l/2VGqigALFkKwhn2NZiTdPivOCBqx
Ds+UElncMp16WeNM2UOxnh/WTv+un1q4nleq3YZsgMwevpe8GkPxklfGzITRoNDClCxg2935paCG
YsYaBRxEZwuHrc2OcwF5mBbVDwtG+C2MPAIWgEvFlcjp6cvi8EXDgtipywR6GccqeWPUogp07X8R
LvqUkC21AI8zQSTPF362DHbw2IshwIgvrivrbvXgp/LBWdzyH2cil1lMq/F2JkGbnRSUJgoRfWlp
NKB3KtUQyJ1NwA7dL8Px36jkQigdniItQIf8Qj/INB3l/fmNLstiqhwj5B/NwwYF6mCP4VJIOmhO
jjxKCcLbfbsTsMewFIj7MZplceAsqkf0gmcojyaFgz1qEarG+ETvJowu3saPVDqav3TH1vq90dIO
aQY1p//Si3GmkYtTvBtv1wsrFSMgcD9jQI6tabeK2HUxym1d2nWh5r8v2lEaaMOk7p2SEm+tcaWP
PnKgkoqg6qEg4dhwNtDKZ9lPxN3woSxLhLvba/9x4qK/cp0q3JM8iA5BokGROkaj8nESqajWbK3M
w0Ja/DSA/8mnMgXEMMdsJVHafAXvbbHDfmcXbK8DE04TLLYw+imYpV3JDFe6RjMojDpcmE5s8VYt
+hkDsu4NBq/inAoJ8uVyLDq9cCUrgE0l/Uz4N20lOFhrjUhaIG1o1vGWbnT0HUVYAp3NvtcaO3Jc
/9JUTPAk1z03WH5XObD4PpeCtvC3Rb/NxYEOTOZucNPB21xuM/YUifkYlosT4SdkytnDckRcDgNm
T4fF7ECd2JELo6nAfKGxBUeDZOLy5n0zEzZPNhwGEMYKVWy4w80h6njRqRQhiSxs2HNgtAvJEuEL
ImIaCVo3FYI2JcLva/CaQlqH/C2vQXDujqkLWm2poa4wk8M9a9192x0bE62CqFmIFK1eEJXmbujc
hUe06KBetbi9XJGBvDbnXb+toEFFOVGvPf0rAE9X2cwcMQkwoatS73XsFtCjaubsY5zrNxa9i5aS
jOFngQSptEo7pifzJPch2QEdJn+E742IBM+zGK8qICzOKl81UR4ev6nX0v8MduhO8cXa4cpr77xk
77cbalJSwnn6OOMgpSXN+TmXWcNjtFle/pNbaWfHPjjOhLWQMrbQ2LV4ygmQPyhnSuMW/Dapc9Mj
jWak5iiBw9vJShn2QTHMmVwoCZ9ZGXgZH4dK0BuFOrdFPbjgLZx1qO3MREvClwJ0YWWUvCOQ1OCe
VvcevFmoke/eWR94U4y0kJ69orCu3J6BV1DmGPBM+BRnjwQU/ulH+gult8vdms9zA+4NVGLHP/56
TqDNLo1wU6y90BsJ7DFUS9HvEtjBeVAsY6oxNnd+NcZRDVmEqeuaVxqv4vXyudRtX/6j8bOxc+uB
/BILeEbJwVyl8ObfFBG28DLt06vdw3dwRAc6lDyQ1N8LXtDr6rDAStyw5Xlrf9RKc3SwVsaHSmo1
+iML4zZeTiyxJGgQFPOWEIZJ4vWtT7oXVsTcypRf0mkaD2znHh7lxJ+qOyBGu0gW+zGKp/Olrzqi
QnANr6gs4HHJjM09NKNAJhag961RbWt/xYFvHE6lUvem8yxTT3xxPO8L7REhpvgPUS/u9SDAnkhX
+bFTBUuV3Quk6VDv5xCJaDX2Xb0ZfqhlYcSuLldjFFK1SqrwZagB2B21rmvvS21o+WQCzIkrYy6+
56FEwy41C8IRftqFQpFeb6Ao38NsJ7irYEaSWe2kJGrSGb0hX4CmrPashReeVD8F50ibXBawRXAe
i+AfEf/CIOiluZqXpJnZGEhXndGPMtntuhW2JNzyzWfZtcXRptR6ywNpIN5GVmj/lFE5ThSITN5T
gFWB8LEmx5MBYiFPrgpfH+4A1OK2Ph60ug2h+BFn9CWkpa6rVDdgT8yKjmMdlT+Wb3tXUMXp9q+5
eqV2HhjZ89khCerlAYwXK3ypXKRSajf/W00GDfNboo8st4QBsz2HQ6cA9o/0nYmXdThZbV/rhyPa
n1kWTVlsdjQtU5GFC6tjP0R8g49gPaCIJ8H/nY5GsQ2o8/JWJN2YxFVhLwqDPAGyCLhVyzD+CWtF
z4lVHJSIC6KnQlp2SDJX/6m6lg9vYXEP46y2xoaJTQ0hDYtWl/LVpVMslXfQJNoUCtFDA9dBLJ+3
SdtXg41BjTH4goVzhb1V+yM6hDMUXuuViNBGf/o0HGXZ6sVxFoYIegUZ47L6S07FUChup6ty2KNN
gKqw95Mw2cQK3G1Nxu0mTCK7WKwHnVeRSU+vhlKfqY6XE0BvC928lLR94Jj5+sDj/RTH+qcoCANe
K/phZXsFIfh0HYMXXR0ogQnSyC7dynPJyhlCzdj006KGFr2hAndhPxC04ThtoMrkspE58Y3B8MUU
JYIGCO3IMBYegGgk9a/D1JG71jWTsbfqr3/bFqAlRnIdLNfny7RomWwRvXEDW9QgQSJ9PWl4vBsv
IOiZAFeaAYXohs/+BvK4DqV8+9/J17229jI3dlKhdeaT0l0jWe8Rhv1rXbXqupnqVSDYAl/AbkTf
KXny7XT0NdcmIFFwqWd+p1DOFMjyTWjLjtmBec+p656GqAb5+/fxWKiuqGczOM8VsWvV2ZC+AK62
juHpJCVFA4DRO3vWmgqmsDfk4DG9wF5qHhzNmW8Cyd1lDa7/++FobraKua6Txx+4PD+3MyMZbcyh
TifbCe9Wk/xUU1mg+Cu1ySKu4CZtu9G/PLPo2LOst3c8zlS9oA1WX7hNmuDbXId4l02/q4grcs62
M30TboEQYrv7xYo6ACx1RrpAwIXH/8qD5A9rHMB60h1bVZXARN5Jb7s7wo8osgo3/5pKlL26BDab
8pM7OQ8+paUYPIu/V90uZ8vOiTlyrw9gf//ciD7tDmltrkucozWajg2+0HS2DKpuHXX0HzaoeHU5
nRiDIpKDwilrGdfaybujl+g6G241zpPJSdYxQWxwi1iOV5UJUr9yJmObteh67L+JoeGhYP2ENI6D
a09brXQbEXSteb5EZxtSdYyWPjAtp98UBPSeAN+hGE2FxW4OA6NUnRMV3+YdYsfkpQu7SXJCpFY/
OzI/WKK5SNV21lvAVZHG7/BCxsIbymQZNcYomZWGxbYLDCyGcvuLuDhnN2AY4GE7PsqXSK9/SLti
f+VQejrWPkh2NQFjr0Gc6B10djl0n6HuU2gkomfS4S6BfhmQYGFH4LHjDjORZsJuIneTt9HSsoQa
+S+Kzr9OK4MKup77zQbYrBGGUhzjz/FL8LE3C8hw+LeGnkG7zUQ3hE//WVctp5lkw2dL4VXlZy7H
2+BS3tRnLLUtIZLfhBe4YC0JTgqm34VhTLlVMVHhQs8SBcIfJdgEjqqY3AUqaZTZZa8yVwo1TWau
5WI2XN4YZd7sOsBWXbwAoKkdS4oi1Deq/c5WB/zhc/uGi+KWodSzQaj+Vh3fuuvT1aqgUlX6WJba
QyRCekbXiAFjABprytEA3UWN7pf3QtvceNCs4GWylrUAdcyVZfWZI2qrAIRwUdNgiwg/dYIRo4+t
0DGlOxzFYpgSiIQCEhMeVjLtCeMf8eLNJzydgsywf0gGN8Jx6VYHKA+YLp5jq67vzP+ITMmQvxAR
YducWjo4SDeggbHMgI40yfVo6L5kapQUyhUy+/8USf3X7P6XZebPfwOXMeybCblgstyRAJMS9/QU
Ca+LCcLQtTkNNTVqk5KDpYrD15PiA2x+y2V6IlzWrUw/3eVObz4unX2zQzcSmQU543SZoecVT5IX
+OjTcNeZl0I/o06bpQtHl3AoIMrh/K8WE2tbll+Z5TM4v8o5JXy8vnrb6ith+ABdibDG81eIJ2RU
2AApc6wIK66ILgYVuqmlR+FUYOCGxAAxLsnk78Q32HZdDYwbda3Z+Nqlc9eD5OprOdq/f+K268n4
RWU5TQBVtVtxcP94/4xusXZhCxa7T+MgrIn2dCOIS2SfZ85l0cecvFxeObNMOFM8qVjNCLahAFzn
21QnfTVOpmv8fTbaB+jUVfSr+iB1DLOEiPbFKNyHOP54ya5bzmRZ4AHmjKY8Qi1iq42V6UX6jFC5
VAze4sofY5kvhwtumGkO8NRQYecH1NvtFRJfodq9tXszMBlYs7ZM4m+AZltIuxYJuqFPseT1tugB
JS6lVqNLTj2A4ijOdvruWfP625pKAkXNHZekH/eWALjAnfzedS3wDTGHSd+LnKcb+DwnHajQCoBE
z8x7HwIowbP/q8oyiV2eFNJHfi/sRa1anC5rbYQk/FAr5a10f0pf3/A80mW0nC4R5J7loCAcxPrI
SZZAUHJ6IfP9q30IqsrAtcEPBex+V2jl1bdqEozCsriee6xfMuSoUDODerxV9lRLHwgcIodCtc46
VOcRZymG+dsiQ8RnoxdiA2pMvdWmW9vnsZK2+66cIutZrjdT/x7MXwH+JMgtaOKLRkY976fZLAes
3nVCZd5PD7f7Z2bE184jGbYPvgQgbEqnvvw0xWlCSv/BVTasstEQN8PZgMrbNkDXEbPQCRcNrjSN
qInj8iCAOces+QQTa9mh62tlVaF7y/90y8/eVExtjOvCvaOEUi110Kxo0CiwLcLtNjnivUol2efs
1anCM15ZPONTN2eZoXvMPTz94LZG8KRmiQgIHBaS1SLySQ4T4c6eUTTENLqCqwIri56/gnuncHZH
MWW25pydX/4x7ID5fugNqeoa8c97cno3BGKkuwDBclXLdVywV4IADvOO9i+R91VAgSzAG18KkX4T
2a+rMgtUjVht+VwXRBKNKdOnLhDDtpTWhniZnB9Q4mWiRJNihnyvHXLxihqs1/aIAoaSUhvBguoA
nkLL3LyNZF2eGfnNSDd7EkU+xXAVleskYROaT52hFGWWgXloGWgdrxx5v/l8H/sRxsKG+PGhvvl2
bRv2l1D3wl3mg8Ku0hMz9xblvT+lPAHAF2mw8chmHXITs5nUCucuou4WY4o3BeWkjpNJyXdeda+Z
50/QCFW08R9w4+Y6ny6ZDi1LUsXSKuJVyRoSylx8h3Rc2ITQPhZ55aCgWXwu0whzs6JvmgqURTRn
+pSVnyOvElJrDGLNUvZ1Fc6PJDxN+n+X8k5UmgfkBacPC5F0OEENcRUE0JOKk3drNOpjz9sJ5q8U
fJP2jrNtaBhzh6uHMU4ycK96ZNa6CLR142hgLbGrszuV8+JOYMN39tt1H3lvBx2JyK+aVijtr6Q/
sDyzSOVyJdSqYoxPkV7muKM+E4Kwy+8mcYF1uqwnbrHeJ2LfgodS3D7ZWKNn9XMpXuCBaWREELYA
EEgRlJ+dcXF7sAGQBvU5XWpHpDwn+uBoFd0Q6hR9OHck6cC5LkSNeT2WIgpXWhuywIJzWHT22BJP
zj+gMqVSIkARnMNimDgfFRJqkof34wrinRbLyh8QFyGH3aoPj2IXXLLDTVNwRBqw6K7G8KgcV8uM
7DOsA4mVcOZJR1bShoI2416m91BWSmVjiZtmQvQmjtTP6xJlDX0ylQsir0Arw/giOtomzBje43LA
Vkm5oyOkiY6SiM2XAAtFCs6vlOn9nD715r905vq8S92mJXVx4Ro8k7PFd+SJfOt8vXWb8I54TQlO
qgZIvL3hj9L0fUQAQLcecpHxYBziasM3AoimOICxd3VDIu69deSsCLtze8pZVv6cLx07dbUKGoAS
VFEYuP0uxg4EtJNzg8zPj7n5oJOM7uj2dLn2RI5LNbatkR4vt3n+ZOFR3OpkvQCiLoi0J5kevDIu
5fhLUf8uarMz9topm/UB2QicoJuarSzTwzK2MoUr8OgVc0dY4DeEjYT1hLM7IzulvpMJpgM2NSaq
rVQ5FFiuxXA1duUvmq/YN/Xmou882/sZx2P2UFUe+GzCsfIgrN2a3qXnnbhG6/v0TdHvBk47hZYQ
pyqmEWHk1rMATtqeXHpfrgCviH5cHT9E/UuTyaw9hb/dGLeCFNcjU4qjcTMFXBv20BxLu1grGhtT
rpYEGh7xDhy+2No621Ppe5bctE44kbc/AHTFb5+kJVNhuKDZmnaQUBF7uVPdYnyDpCetgdAartzf
ZqVMosGorya86SH9uXo+Hb7DlwTyR1W6uzSwyIhm65pA9OgysKYeF/7wvFD/23moA47ZJm6qjpnN
kDrZuSYSJM8Va045HMLnwIqo24s/vbgGKCJsBZeIEhZMqjt2FjRH54a/ameafu4x0e+n2tffyJ+w
sZmeFKy0ShdhlD9Lrz2n61GGI2SD+tpr+i76wtIgKQ8Bua/pmcJ04ce1S/OyFT04g4g5fYnV6Z9h
Rolg70COUXUyVidr0FV9WZ12t5flaGmqtN8gA2AoXq5anEunAiW66mQIuEiI7sRvdIK+ZAQYCdmy
Vvs4hhJlun5EVADm6Rg6vR4nKH+TgHpLRlKI93THxwrr8AbdLGpDrUBeLvQdLnci1Utws9AO68e1
yBrsAtvxzyvlbIqMKM4xTh1vfAYoknmaKfpfjjISQe/WLl9QAOWkhJ0oei3ZYWNwK9rYAK2IpOrK
LImRVVcRS+cOofiL0kjbvym/98ERnLQSKR8JwTtKfw4LK0k5OMFKeNYf/A/qT5xBGk9r9SoywkZf
MXZxDqSXGXYQpBw4qqMODGkEQBCtX+YKkJRC2EQ07gqBzKv6IK1+InUlinlvoH4IoCu/IzSsiDGQ
3bx8kf8KVhn00ldHIl8oF0cMnuynezMTWA9scSruRqk0/+CXt4yR0ODpZ58DoV4dKfTrLL8JTDP3
dmAXka0iCD9WROI67I1WymrCVluMzahtP//8O90BnO7BKe3goCQV0wJZa/24b+UkMHPr8OQeGAs3
/FMU4cd3DozMqFJzr2+CJYls9LNz75LxCA0hkx3YoE8x97m+BCayY78K7sRnIVkTSFmikUOeOqdH
7F8jME4ZswPGcxIkfPlwISq2wsQ8AAMhiz4x/RshFfniHZzilHRZiSTfTct9e0NMvXyY1cZNSRwn
kdOTsjh6aNZ14kMN+EnkTrwBbbCgWkxxAq1RutTW96fAxTyRoBEADBE4ZDk6Nu+Ua1uPk1VMU9Ga
7lqYCgtIeTthx4eImtPbvyamWbzV5q/SURnzGrhWxx1V6ECl/0FXhCXqIZhTnvHecCSP8cI4ux1A
BEV+NXt6AR76K0EXEiTVEMQawJ0m0Fv7tj/Pu+q8z8pZYvMPdH/QfMyiBh8gFUbY7Gp6gN786/Q4
dPcvFiAkUyp9oQzrswJcAo5UV4XZyMLa1hAwNJRrOM0BYabJ3s8qeOUCQEE4e1C5rM4R/2n8Ywfw
ZoTslCZSpORrFOryPXrqD3HpiOsUVpBLYFxXabqQoy0L+2Cpkj+tnXgc4ugGJGkmY477y838nYWE
/mpNURrUmJ/QId0Udmhjxs9ZKiBY/aVcER/rEmdRyS78A/bBQNyokYCmLlpuOLr0+2ailVMrmI+H
bBU3G/LlPb2zEzLz7+0yiRZKHfzOEUdD9Iwc6zAH9jknoe525jBYoIi1n6Y2ZaGhcqsqqMqll9rJ
BolrRnWNLJ1vB//QuDbyrBQW2nsytxm2TLlMXDNalN7kUB1wEGUtvcQQqwK4H+Qh0fs+0S51uCvB
AwEgHBMfhrLxoS4syBHHnzP/lXaGmXd6I+dICB+yEFYUEq1MhZ3sn0ma8SOWBiyc8aGhEx10NrvG
g2DQIgc/iTl9VuBYImnaMoR0/AlnYB8kySjDikU0RDbvYiFWqSwGpZIOwLSVlt0rUG70QVk6yT6B
vFKWVBTUeMN3cNi76WJez1XPR9604z1Mejq/uHvE1cF+1MCWkUySRj317Eu7YI7k1QrvUaNr1YsL
y3qUL5lLpTxxaC+yJVEN42Aft2LGb5xctK6A2Guo4nyReFS0RKAV7M0fFPLeeWID0ZzctO+wVmJg
nmWNhFSTUZWaXb3Kt2vjJIFGCWQV+Gkzc1DeMIFlb5mcycp/5nKrKLkNCY+hf9KqOPYn0i5Zum8b
iT19Tlzmat/xAzzjh0yY9E36dsi8/eR/suijpqKNKhgJaVuAvTEYKit1VncUrISD1rlbz1gspoaw
BWoyV5Wf3m3P/IpjFCWFIkPCz9kauoZa5B+m1FeMYj17Y7TbmE8AkOreuOMiOrrynsnBWMasZ9ME
kitb4HcR1pWTvlk04WR2cxRfbw8tuNaIUqOUIGWSmI5oG7UvbPcpH3J35eMfGnvhTbwIx0TSZFqC
Hlx8oWB1zbLOhkgrAib5nS96QNuufjkf/wxNR+GntFfzwC4q5AFfYpOHeJWKmY7CE/lo4CKfKATJ
9ccl2uzWypBwS+QSeB3T/lRUNXfplwFHlCjzHtVAyvhZttmmrw/KUeec6ugwS61ZygbDlRM3YZBB
uLjjJUWDph81BY6gq9217hXRl4yY6mPDDohDCfc2uQkfioKICnx5Af/29Ynh3sf3OXGUjG1dt5sQ
vxhARs5pE0K3wpSL+7XrQtQjv0Kd16AxZXqagqtAN913z6DuIIZgDI3Iop59FV0PdfkPm3S8WMH8
wLlF/uR5FuZ2d89HZO6Dij/cJROaMkRXAPUiRkM2LEXFs6eBXXNXXaoyumNQVUPRKDCwlZP40T0+
q/MlDJx2Cs7fTtWQ5YRDXxbhRITyXfDou10nGNauDBARCvaOzgiYDcdaLxWoraptMGbq/996cKT2
GI7o/7BoF11PtcX+QXsyAZJiVI3Tr/BiZoqp61ATzIYDPv71ZDC2S+4av/TxHihD0oEELSIJaOCy
C6WWEVSI0lq0l7915Oqidm9R4eMwp5NhYCl7+vqPXyaxYQAE3g5hz3/cEzGSEeXMrJKdwGbIkPdl
b9KMHCg12Sc5qSsxZq7ZzkPJkLKf5U45jSYR9Y6wBc/DN+GT65RRfUdUwQFtuoWII1kh679DHXvx
eSdZSIxbEHyls1HtxZWT3APVaYvx0gIFS0/5aXlGG42Uxa4G8ndWPloFFee/83xWQyT4+k+UN9kS
8xpzquUPhk7hfaFZmwwnoCwV/dzwDJS8QGEXl7sugfrPJ8tDqm3KKn+w/V7/3d/uFM4VgD7V6aT2
ijka7SZ48iiZ7/6cFXTsj//a9IVZZwFpqachz6w9OH30ah+/z+ZPEhi4uefzKQw+VQ5NmA0S5DMg
BFasc3DMIXftxwSLOiAns4sesNQvWyub2BcDa2kgIQ5OJZoH84WSP0caMWpZhz6629Erg1cexqJG
+MXgvQQeRM/6BJfKw1DKfrjtxPKMaT0fLZ4u05cexWmVCfg/hmBMc+xmq/gw9sHV+GBpuXjYecN/
KwaQW1W3ZzAm4S5LVZaYfjPSgUKQrH4PeLZHNNy4i7Mj5Ro7X5VY6VUwrl+ESJp+H6WkmjQBKIXl
SIs29MycdbAFHXX4TQAyUkd2KPF29ZVLruAKN0pnxvCJlp7I26nR4+vetPNTadOoZlc9P7eN9jyQ
GD2HpqXP3Zi9dmlQYDNSnq4GzjbR3AscVUOTcxaHqlzLMk/FPBfqPygGdAPSnR5kQQK/epaVg8Mc
JRtpRNU1RjXmDsitN5h0DNEibVMY/xIMvbPNLV8ufFgmfkOFKzdcPlG0k/AYf7iCCR4I4IfkVSUE
5Y8eQP+QtvK71XQZBi0+hZssKwpzDOQl3AdXW0DFUeRgtVrAKe3S7+0LZ5iulwCbImpXhXPk0p3L
6TsTmPZfiAodi84rwHN+a1mKasIlcp4l1YnSQuPovYUcj1JcJWp6e/aT0AySIGmLxh2WX+Ih0Kie
XXsuMGBP68fR9wny/1GnXuCSDwnuplG9EDalb6H/MVpWgpm/VeJqtbR4q0L0r63FtH9Q0gOOSi7S
TlgWXdQe335f6OAn/6Aq8sAGjNMQX7ZdZHcrGIy2PZ6iOMPQ7gR+m6IRI4Teu/rXMg+d8ULO54Xu
zFN74xBJQVFH+WYqbD9xiYVNZe/FlkEWTXeZ7Hx4FiCIcnI22l8N6BvlSEuGNnBz6sWSkHdG4TRI
XPo0NB87IFa76Z2qZlpmCYL6jfZ0wCkRKYdt15meUGrgWyPP2NNqFxfD+r8v10TnPfWURGLTX1w7
y9YRJRn6xnkfnSTe22hFEB8eNqXl7SMk0GsrB3Or7PiFbla3Lg8m7xhpNtNsKdyEnOgUwwt2vs1h
W3dpp04/LbYLcCMJ9n/wioGa6WL6T+2twa7RS+7+syQWzu23NjnHBRxvukZR9SjSX2bUWuahUaEZ
mVwOIBeZ0NYYxF47K57RHr6WKv1ZPVYrBTjs0l86yjHZZes3RYIJ1oMxcMklg+FztkQf8nOGmzGA
g82yeamWRo/Kn5Pf57Cqwwb5BS71lQ5MqLZZLH0K5pNWeJ9nYoci/0y8loIvLsUovr9+XvBrIgrC
TUkUqhdMSZ4zEOW9FA1kkgi++Qm3sgwhTzjxoLNpOqcRTUbEsVsGfmkq9Cjy/s2qJ4gCYTud4D1s
pPLZ/2RHudxQdYouxU7sP/KglQLLuj2RlbNb5bqjEcUM5eA2af8ilzgZUVWipv/ABMLvZr9EPRC4
jiCaW2LGy6vFXZpb6v+f9ZUW2WzoOIEq6bjMB4iivB5yUCEkaT6rJmosmghFXlYN8bNWAGuFtRnV
T4IXCpLYyufjSGA5xM1h+pjHK5ctPFbEf9aF1i/84DzHOXUUK70rkkClkyuNCn4t6ZQkbzGVsIcl
g04rFEUe980bzGJR17h5tOx00OPb6CUssHZ5YLmqNPepj63B6cgPu98rzPuIFh8Lk6m1cax73kM3
kmoiWkVs8rXrvJh3iVtMt7NtFMg4yf4GJbNpLST86hhsoCwM6InexTtf3+xoNL3rXH+oxBHVeTQ0
20GWYKoLCkkzVLSPtj/AHZxZ4SfBBOoOR9eJ0fkrZ6Z0fFlrD2awDTTM6ikzJj8bs7rQLJRKXCaP
OowCsVXYzifLhLuECAFgpkrIctOlNDcnK2+EBoAOxE1J+iJ4v1hjl/lETDrYA+4PToiGAe9e/A0j
Xk1PiQJEwZ+CdQY2Pl3nJsGC1u1tpfIVB2ToDGVxX3UYg5g3SXvTOhKqwTwyi6lqr9t99CeTNXYd
7au7H+WL4MA7iL7V6zNsALR5/+3DHu6Uw51XcOjqIWK/h3NM2JqjqKYDX8vKC7ez0lvo+Q4fr+Fv
CULowbr8OUjbbyXTai4ZG/RbIaSKFaT892SF64VmzoUO3nWX4/XcgHdkOzaziTmwhtvJmMlAfHTu
CEqMVFDDDTkEthzBhTbF7F/rF3LSugyeNKdKRi0doX3qjuDLFqsr2ZnQ2i2m1z8GB/AsWXJFhvGM
tQp2stVPugDJHqvBiuT2JEPeW9eG290nG3pv8isYmKhP3dxvZxlJESZfUpRZoRksX9Q3ZuDGqyDX
2kcgkZhPHEIlXX+fbvMyEDpXERMs1udHSZTY1Zfey2+jGyXUnrnuapSpGjMm4HISMM4hOcHqo530
sED72Hx6/D2Emu5EV3lrLUPpwF1xN4civNE2S1DdQmcULjCx4IntjShmzGt70WbTAwgoVpchbB3v
Ctf4KVVghv+XJut8B1Ja/u8TVkVlC/vHpVHYXYu65GC/hjWfeOUKvOMVn5FOPI9mJfcYhhWeBuTu
azEqTvSBeoI965KK2S6/U4/zAqLeW9H/njM0cwZTsX7ZrHRJxSH7PxiCreuMVbxG4QJw0zu/JsQR
J+lxi3DOUTh095wIL/8OY1sBB+kDNvIfNbBO898gjL/rqinYlvj9/WuepXpiRcNm/gQXhMKMOrx8
449J/DRM9JyQtXI6EkMeXk1fWPp7sM8bwx1jSBAZfWTsyK7wdmg8trBlWu+9laRotKcgb30r5X/W
nfLiLYoSfKnhsm78SFSeMvtvrNnknhgmu2xH1PKBBge5BUqbsjySfOl36j/Rog/COuB0ZZ0M304l
cLflNmWD/5pUtVDbEjcomL6aOT7mAGeICYC1EZEUcOQ6R45kz95NkQoDEOBwykdklFVCVrE8kh+P
Bp9u0WT1mh2tQjWaWyG6N9OzHgwFCpKVoLKlXKB+9QXhKjYDW2k4oNecS1oU55EtNkQrmFMeKeh6
UHuBVBaKskn1lMlAq24wd3M6MjeAG4yv1+5oEVodyOnvEpFhq8wSeu/KEBS+X3J894iT9TVyaUw8
OpSzF56bPziJZHOr85fK18WHIidmDmUK6/RYq1hJfJVBzA2bP5EEEii0nG9ko6k55sOpQVRNjbBZ
o6zzDZ5RQkiiGTV+rzLBZNc6KO4TlbLf1Pn7hcmb5iNO6YhaUJ6IzlLu29GvqFTNJK1TLzUhf9oZ
y9nEENmbqnlqJPPANd9eY7PgpSVFwi7T/5r7s1JRPxk3xu4lKsw+M5/E6Ok6o7FyA4U53N1uwjTM
/9YRr3C5RMUMh7V8aPUUhjLwPjH4YqMVGEzCfVoTi0RBGKALeecw0m5Bv5SMQt9shTG6SjXeYPcN
7llkLY40oCldqgZGB83uGRRgFamTGbemruQCIr3J8JOKNhvxwesOI+4Swzbt7gxBi2ndglfid5RF
ZB29ECCu3Agnjk4DcE3d7sKlO7Lj06XY6fZMclAQ6ZQrLHKWAwI6rM6fuFaE4KZhrKVikGyAzYme
VST/yygroUau+q6mwOvsjEtpTUn6DY0jy2F+eljXf4CS9lN7BO/f3FtphIW3qUOYc/Zo9x2x03fO
MkTeld3t9dKqSmh1IEXN4O/ODbkoJhl9ouLL0R9g6vjuw5zzLKdCs4z/wQQnmHLGAFEtOlCBEWGH
9sWIMXWJNmkOEU5OOSNkGHeJrpXtx2/HP+GSuHxWnL40ixzdKJvtocvAl4wyiGbcLcPOWh/GOxux
TN/CvBWPRsfiWzt38vjC6IoksCCu+eiHrLvaU5ws07bTtg2dK5nlvOwvfno4L1GD9+YUspQzp6kv
ozZvegH03U71ZCWDADF0GWQywSVmmB/lmAbjJrBVqZgzrpn2swkjjVGIoTPqHtsHC5pt4DvtuupM
Hgx2yj8A7423PRf68esyGOMY/7ohQd1hxkmPBz6a1BQl11jSO37X/UeYVQrCicM8Mg6zzGxTEgtc
mHaBgEhrZ5Z4+/tzjmKHVF7aPvpkT9Ld/qL1bRVje8gXOPZuvg09/Aov81BWvVuRpj1vJ2urY7lp
fPPTerP8FIOc5OqZqkM/aB/gzfiMuh0xLJ8aS7LDias8zliaeidK7um+24MuQfWxMr8pKp+zclcQ
srYHwjzdJLd3agmEfW+eUYjdX2PhmwGLFEVs31FRsRUEhvcnfQeN4Bb2vhPT61Voa45XJOte58oO
DfWZSAJWe7zUCQFiiKmv3mPPCszksOT3LmNLsfuZfzYvgHaXCgRU0cYCGT6SIpLajBFkz7jeanA+
idasNErwZ7OaVSurg7dzvFVqw1TtEp4XKYs3I8V36c3crJhHBjStF1EEL3qQciiPobBHsF26B3IY
w0Iqn/W1gSNvFcAQqSPVyv5C7nosy2qlkM4zRVtL+IGUJk1BOekZaRoQtyNf6eWlGIIKhEf6wxgR
Ne9AnbgzQtNwoEExn7pri6rUNHCSLqHORHH0jtbM97uNUjcNWbnoTeMK7WXekk4tuu4roXcK8MH5
SSpQkHXA9+DT3JalDRlgqkHsx5pRmXbGIJAbRGay9ArS5FlhOnH82XvxMZ65D/gbCbVvDtZ83DiN
bTyHhm2Sm/iHPRAD/X6kTStT8gNcOP1bplxX8AjNMaOsgMA2fWbPnuwB31ibvNu2x00m5nazx4f4
8VvxBPr0iB9oQOfPVOcoHCBaBKNlYXW/w72qUZtgQRdYNYE72J045X8MD8XkI4DxoyyEudKwF2RN
5RxTdbwlocN23n7+bw/l2IpXdN9vNhwSGsUTdlSbAa0yzdrIbeZpuF2Ggp8WhLFDZzDGRBRapJHo
IeV7caH3nGqQiKKaSfnH6W7EFx7el+P3YLh2C1NsDoAkouJWC1JSyXjwN2mZrccImy1At7JIDEom
GMM9pX+Y9yCYVH3Eiroen475V6cIQKDgjoY1djz53vy7ZdFX2NF0/fHkp7GvgwTUrVimwbvwRAqP
viNyrPQwRX3Zzk1EWEDZXBjrCn8aOF1k7EPXtpAooUbOTvl2KxKWD6vG1zpLA+ISb3av48UGji6x
fUFXZRSkxGlm6YOu2AIGqBkGoz+jeHJmZiH2iOJ9GcsguqjDczO+oP2V2pSWuCokDEb7KDx0F+ow
tU4+DNPg253+I7YkYiIt7JzZ88Akv8q+7bo1c1KXmIfn08l2z5pU58rGIHlUgrxShGw07DT56gWa
hNm4RLwLYnTMYAFqyC//InQknunNUtZ9IOUA98xHwJw0eNYJqObTeoeWWvf9foGf6dT/yqERhOMM
Pb/6g9hEcKmSmn6CnNauGkl1DJPk3FJtNz1m1D2ypK3OTAjSZ2kRl+MWdAUwIc3S8K17hOcDj0Wp
9cBHlzM9B5RNo2zNYZfW65KxqgonhDMFNd2fjxvoqdYLjKW+/UrlGynDQDkgiY790IRfnzmYMGvV
NFKOIWE0gv4YBh3QuSKedi+JovIjGAp7gaVQlyLnsWh+tloyoXPKgsHvzmIxcBennKdeM4l4Mox8
N2mqBrkELv1QlCPf1yKl+OSF9ML0lNk292I/g3Pskl7knMgdrqD266ROqRdomWi4mwPR7wRlwxHX
xMkS77uKaXdygfmpJJfr/3GlLKAWmYCaIzDvIMbYP7To7B8GjxWhpVtsYoi7Uevwmamp/fn9y0fX
Jy+TMJ1gmcyoUaz0zRaVBGGw0IeC4RTGOHLW/Qr+/Sbi60AoCc+FRlULb3M3uONbK1THQYulMOsv
Yjfql8pXdPOELrih0jD/fM028SbHhZwBbCNIhZPpyMnirEGsU6ZLI129aNNp9tnWzarRYch+5UB0
hvbiiRphorBq8o6phIkAjxOPqUWyXwW/Q/5gRCcZ8KMiiMknrxrXFVFjGksws7k96f+48IBfvAa7
O0vWe83tbQ7ZeCSGYXuiVN3DN+CHoMRw3GN7LkpH3jOi18rqODvEYwJr23npVQnvJFq0i1uXLa0Z
pdmFuZO29wKgGDfvMMjsZEJV4YePe637QJ3LyAbNRexj08OQiBDy8Csk5bWPYbFWLpwP7WIrSCJK
zKx3lBnS8XaW+ch+/kLCx/ZBZJDNpqcA7JsfdgRg4DcCqAwv09oGbx+fiVDXIN50lQcLGaFbJ1qM
Iya4Yv+eC2oz9exgVfpuzoyKYjdLSG96rj7ONFvU56qWhkyEfB5pdXoO9Wg45Q4VNpuInJFJR2Le
Ocn2MUzuG/z4zKrj+QHspgPGLUBl/ctl6+rpQn8HERKSDOD05YUhwDa/kGAl19dW8wXJFAB6kv8+
OvdlUAJMzk3rmC3DsHjNH27ZIEAVSEc5ZsBeDBFsevJ1zLRXr5ppsKhuk1XQES3aWPHln4pa3eCy
ZKpdC6gfHxz+qpNJ9PRNl2/TnjVLPiiahuwdjegdVEgJaROzRP0jJsH0bg6l+p/SE7X4u1HjCIWg
urf7Dj1+CRfMJrzuJCG1M6ARMhtyEvV7knZXvke8z78swn7sOjOxJGH9TrEVuMOvpST6L0RvXeEG
FZdZ2m+MQG3hCf0mNoSp9uGwPEFZLYIWEc9/B9J7MZMQKDK+tao2w5fJBFAiXipPCSyh+nSPuDie
+6kin1L8KSpPlyoODBw9wercFSwKweU8TTbe1kqrN180JgoP4ZXGT/Zuu04DUyvYUwsleYmVk5lL
jPndnmQnslJ42qIGxynw/lMVeO4Z3mVkm7/5J08un9sHfe9+V71515CL1YaBaSRl74+O/DuhGeda
3JkAaupUwNSs4qYpx9aOl70n4PLqXzze6M1sfq2fImuYnTN28nvaayFZT99bw1YSlG6JPs9QxJ58
ewdPXpPGKI24UhJrLmV0rF09n3wsSZvb+vWqnwe702PCEkKkAWZexJMLP4wL7XZ/AGKC1Z4idaGY
4YjdoAZSCv9ai0AGLW6ihwhkrqeJ7uuM+Ml3L4YJJ3mPKwokOgH8IChEPaFaediQuxqGq3lwaRDP
RFKfjEhWJcQ3XNUTYAxITW7bEu1jPrqf7PthSXz6cFOU5Q7uMbUS2wyjDTz/207XrwD2jTmDKZGC
Q4WxEGflgC+IvhhCwvD6Mc5MSfNsHj9zyZNUnV2yg+XK1+Y7Dyf7JzxiToHgPBA/iYeqGBB8rLS2
+aSFCsqlDF+mS/nxhccFbpHsVNUq8BSoNj6RiYPGOD3xQlAkv0ThkugP0kvbFkSPUCTqSU/RUb02
a+vIba5F6Xq/liEi1knm8VupU5O+9IEHd64DI2hcbZwOA2Obz2rNVLr5GzrO+U3sC3KQa4bRgTUE
dliV0KO0OEdH69VmkdpK0ktFsbi+aYxievk8XRj778uXD1y1K5Y4K6Fltfoc8AJRmw2VxkTIYw77
bIV64MRTL7dFMLw0+k1Ab/WsIfa/+h4DloHuJptb8zqvgHBjQljjoVwLE/+OY9xDN05Raq35GPi6
VlbHFRIRk7YyteycLFoNtC/M7kMxoLECrApuqqxYWStEVwHQpxtbyjgPQBTOOz3b6dsc54j9hXcN
/fqBR3wqtfLA4NJHe3HQKv9AC4RHlR7Wyq6Uo1tPuoCk4dEXjWb3nsqliWdPwioiOVpPrPhgLmMP
lGaH1kor4JE27jyW5x4gQClmRjVcbZRq5SFu3u1LNv8VImvQ2OcIjYGcxi0192bM0z3mBzKDhwSt
ZwH3hFK7VnyUfJf/xsxwkU9XiTIfi8lQfZ1sjf5WoGZ6lTXpd70rzV0NuKd4ThsTEDJpTgK6755Y
y8MzPHcnUQeLL+DxnPxSfbJRZ3nxeeh50Z/pQVWMRQ+f+57Tz87TfiE17YTZb944n8jwZzmCUDj7
oxj7HAbsaAQyjL0CMJPdmgTaSYMdSTGqBazj3mSX6Xn/q417Q7wQxPcCTlyxHY4ZEzLqYtooX22U
XtQZq9R0JJ6lx4NPd+buwr1M0jkAc6oS3mODt5IN3HLeA5sWbwfxZ8ASCXbqacGBpm3cHFq/NloM
/fD+SIqB3In8ivgG+j0Ed2cR2xHolJYVOVSoDdZs2En7om0+edxiC7nm1GV3UPmdxVRX1oC2mdtd
m2ILJUkl9uZncYtLuV7fbwB1sUqp6j9RdZ0+qPwwwFZTZPs0Cynef8FX3m4hDCpf6dwcue+Mm7We
zxIhK8jIcIfpeP8wkEbk0d+oUS4DqIImi+Ft6VyUWFeg96ZG7rkKLT/MC/vi5UTg8w6fXqCSvT5y
HYmBKhEwEZe0lkzLAiadEEw4LYIpvRVjpmFHZcJ26A5t0lGGChZ7SM8+xCPYlMvWgK3K/Wj5O2gN
AUHI/5Sd2wiQxT2jypx9JZrGSm6WUwcwiTMU4AGSyC7gIYLTHf0N4OhTmXVG8UBkKglM6gV4gTLC
5cmVp0pp0GRoEGNa9Q9p+iuDS7CzX3goKukwO8cy0k6K+OmVSit8A9Ytcz4SR5cYmFcIineu5KJZ
ZLJ4UBe5trbbYcV9lgqXXrEdQqORmWo+IUzLB2/0H3xRyvuo5039hQ29vgnyGBSOJXjUsTWjBDx2
zvrtJH8MVLjKAy2til/dgTxn4a/gncBb+62IghKvwu9v6azPgp5BEjotlKarprgYMEczPISWD5EX
6MDTUwbk982hxSdZjB/9aXisUIWudcwh2ub+kH0m0LhG/eiA4w3pjDkEnJXhiC5wSw4ZNfDYVgK5
Xb6XPgiueyUjvOyHwcmEnH5GvG98Bm2kbUWtF6sjgCrmdec3SMVNMw2XPvLrHA+lgv9EjT8xH+0r
RPE1iBX+nArf/71am8OhdnNLLkgehXwvykgT8pKAVK0SBZcNMnI1X2+0YygBoYVTygwXXx8uhUzn
aS5w6MdI7K8cq87U+TpuH3eZ4H2iSseeDg+Od8gr4aY0Y0T4P/GVoOsJuJYtSJvMx6wh36BwcHu4
8L+3SkBa+3rykyKpq6bUwWyp5PITgskIJk0H7m9DhIFHlcN8/rrBrPqbS48/AzR//QuokH8QsOOg
KLPhugFKDCoQPX6At29dbatHAAoK8OQmoPPcIgb9tczA9eTGbs/1H5x8kd7QJoUSoAQ4t2EAgfhu
AQtNYZaVID1lQQ6AKgZhfg8phd7v6Gme7cLanUYqwm84bt/HWNl4cEduFg0n8IxNB6r7Ofv5YTna
3KII6k+IYHMhca7WmaQ8N739eWrHw4poG3VW7d9NkFww+MJLT99mW3uacLPnHApL5O1DtNZ0n5Uk
szVdAhCKcJHLtcjODihkTImzpBF68OTT8/vKA8nCVJNuH4GVIZVjWi5a19XyKJVp0KVkKBtOgEz3
yn7N4L0eNqzRSlg0A5HohKBemPxI4KUZgEuZtRMSq3btLOsXY0Yf7z8fHWMGBzDSt5ZnpxeCweVN
GnqTw2QXd69x/SwG579CS1pp17QgtMcATLYyvj7JM7zu312RY+cxiKsN0g4ign9xNpM2+Ugl/adX
lrIToEDXFWFhU/0Yign4jn2WdDA5Qntddo/YY17P7UEgbcUVcFx7TqiWSweTupk1/5qbkldcgU33
bxgFxgC9awuO09QE3rslrHwFeXSXfRmn6wIgHx9dI4DH4W01YjoQxRr5jH1x3MbiCtmowLUw/0NK
KSdakMWUcKFIXqpSfP6hq+Ja6ep8rJpylX5MC0YXSaqKqpaaHBh8jAyQOqPPNieP38ctMz+xeVlI
vS03oLFewTgMECioNi2wNTcii8l32Q3mjWmt025Ueh37W1yGdyfcWGdwJZO3QuGut8wOiZ626t27
5J951akT5PlwrDEqSRhPz3lEyVmcS1yBK9OzadMkI3TZ1HuidsukGRyD/A15kSYrxGLVmxf/4OB/
Ior4cTk+6tSznJ7XN7oB4orTg0J3qQSRMFufgrmuy/ewiItlk02V15llIqwgcs/9SGBP78oGh66O
Gt7htwENAwkCVy0hI5UVBCYQjoSbvMiD7yS9JUff6XISBEyZKHdwzM9h6wXcJjqcjwNDJFeQyiC8
qz3/zsNbAmjot9Q1wTzs7HSNah/G4kS6DbdaDv72jLbRW671grTKXH0PEleDk2Dapzb6FjzqdePs
3BIVOxxCJoXXAXKHs6FYvQ8FUog2WByCxMoS2er0LvHm0qBgrghDWp4xFcyWUnajMg5ZzRF+xatx
PHKV2+g4LpD4bf2xGw9Fa+WV001dbmOM+ELGyHXuQW/dIHDi+fRBGHQYr3yuh9+xwmcErjkbIqqW
GkqdjjVqR0KddsohN8UyY2//MozHp8fYC1i+1vLrxoll6LFu1G7NC566+v7ETzVSwn+aQj/oYWSz
QUzHj7+BXtkKnV1lLohnPywmrLqKLUedOg1Rcy12UZS8N/FWioS+kdhPcyy1kjtXZcCLgobOuUNy
uHdxz74oQiTPhS0mRI6nm4acp12ZBk5XcYJDmbXW5hj6L5E/5M1Ml242Ej7jmt7vlC+V7+85lDvZ
MaoYZ6cUNtdIOsQwZAb2nXnfWLADLlbdkG6IhFWCXLqe/2QwRNmJZTeUDvZZiDcVHzmJXs8wMXKp
+j+TnZcB9Tp+rkccq5oN8UAeLi3DU2NUityjgIgJkxDAd1pFGfx0Wfo14w314bs5/APYN0lkOAj5
T7yo4Sg1/dtPNqyBRqJgHQMOzB+3mGy4Fktyhdt9FUTQ3o3qcgoM3A3hkRg3QHfofAAs+g1U+/0Y
ZDXdqfkD1JpqeimBBK0mRIs5yCF3JovIa6Joqr4B0TLdfNLJSJHpMTkI4A8ZVWhDHbaZHXbDH6Qg
yQdPWS1tdC56iQMouK4yn/t8XKwNQ1ePQCgA389Ziyc85GUgWZgrK68PkkGAHGlSiZxL5drWF42j
nabKarZvAPdWO2kTeVp12R5NBzFEj/DzZpbQnMgkeTXTfvlsVaalcn3wV01PrkUa59gLQb5GBeq3
JeHt1KK/BWy023MW2uKO0Ifx89wXA352NmuUifFFn8PZR48ni/VSlAzlZSsyWBbvQX8Z1FREv4pY
TU6jVCoRYgNo+xw4qGXS0vd2pN6tg73K8fZHtNSdBKf1npJ3/IOpbCK362G92DLel1Ic3kcO/LtS
zWmmonPSl9VXKVPUAREkLuZI3aCjH8qHeDkOB8OfRPsV78Y+e6gbQd5pkBpgrHVETISCYGarZ3VX
WfkMGF6jMm7Tu1XXD1kFSubXu5sYi1nMDC/pYNG2U1xwcIMf6fJwG+Eztag7+htkQIXkOjM1aMtC
0Ock/y1hWk4t4w4AIvCldcoTPFLxvDmnAcysAIVVddVckWbsjpjvx4uhEudzGjx9Hz6sV+wIwtD+
eWpeNLgJVfi6rExNT421dsI2pgI7feexbU6rKP71Xwalgn4+xpvsT+mnWIh9BxuJh1uJln3vg9vJ
Tqq1VLzb2uPPyz7V7pPx6mcHGLe0IHF9CIV/K8YyECNxcEyBrOdLh0gIKlxBZEoY2WW+jR46xpou
3GM0B+4pu1s7zf5eVkP/vHqNVtHtJiWK5SrIfqkZtoZmXDewK0+31pWk2rXiyjl8tZHL1l+erxqe
4rgGkOlDvpIpNaxrIxyX4qhMlP3cpuCMePyT0425mVYI2/9o3NHz/DZ0esmlYWzrRBswhA2luo4g
6WKNxQ6XOOqy2E/uZMhNYu3po1zzZRInmLf4tVJwh7j73X/nd75FhtgRQYp3QRypLiLBHFQ/yt3q
VcwAGip8t16iwXKCjOM4J9fYv0Ub2oRuuKhpWv7P3p0FNnCOeh69PNpq1YmvWufxkX+dGefVEKWO
6ohjmMXGA+imDejhVgKFgPeUHi0pGP1ZUdES34V0XEKlDZZbW8ecvs7545yh9B/hQzH1Y4Bj4LP0
SN+Hi5AbWBKHebHdVH5U4r/1kdSaDR3X/QHnv5n+DHyEysngfTbSPtzjXiOH/yya+7NJr6Pp1MI/
cIMaJicaWlxm+jWeSRNeMDp/g17db1PIZc69jS3sI/GVCqfdDvTnU12GH2J09nutoxFJVm0e79R1
Ey1RLU/pSWpgxwoHXR6ldL2YwJIQWJjSZY4Nja+v0coIp1EY3WW7iNxP8lcJkMb5hCnPozXzgttr
UhoyvwSm4XPV0ncuek/Ib+oo8GRjn+WUdS7t7SfaB1Kux0wMLYViQlw51Ji98IqpsCAfEW34zB0V
aMuEpxgVvzIzw5Ecls5uRo32hBlxgn6+D5jka4irvoYrJ4JSZPAjQLrrXvPlRjZ2oZ9CKYMEfA/p
8565EZsJWs9Fxlh99X0m5DtL9htkjZWcdtWPYzKtJIBa5YDpQpeY1AxZqaME21B8/mjtXokfMkaM
8Ivd+HXnY7bo6d5EYfLo1cSVwEMWf9hzks0Yc6aWp0hgmB9adSSA80NEJ3G6yK+S20kX1WyG1ZQu
3XqFN02rnncOc7+p7y2s8RJ2A+wJpibwC7U8F6WuhNR90oBmA8Ibp1tvmdSRby7goiBjBz2SH2ug
HYDU2YvA6YYHwpAW4CJ5cz7C8pKWCEo2JKMUKmuuw4KUBs5+CHWzYIlTCEWSDTiFEpooFpn1mbFw
k704n/AhJQAIPtqSe8ebppKREgL5/iSC0Mj8M/S7OE+FGeWhkYge+2azzlcrb4RWfRG2fGu6gpqO
FPsTNR2c1/iHpFMoDNzMBIM+MzyzM/e2tllrCFvMahdUOhVNBv+jcTz7GGOIGf1ushdQtfh0+qfk
Zq0kzajBLZMtODfw8v82e9bNroYo2fvETV55/zY/G6mBZwkMzDHOIveoo1CjiL7U8qXcYvYEt6ah
dbZhGJUPMZYtaqer5sRxEYmcfRPj5DNJ4L+3G9d5Scn5AUbj3iIKe9yf9eH87K+pVYhTDXa9zOef
d1CO41m2S+IirxpFrGStj1mHCY7YfYuv0bSawzZoAS5h+GyrHov9YVGLv3VeNDp4NUd8BMctKq9i
LH3sjU1evxrMShW7BUaoqlftpv9KkeTY675sNLmMgXaEmuKeRtH7Jhdf+iddHyW5oTlu0144jzgF
R0/cJmcM2IHhnsiAwt75sygHNnYJvvwTGeZRj2UWzF2OoRGLSaer2/LsGWumulvi7tFUqJ49viPt
93+Fv+SqVQMpg28nN3iKJKq8lFFrIyUY8mTZfGjQRh90rJQBG76XWryl7LxVsRafqLUnRe/L7yuu
PwBMVUAzQQSWpNODUwDf6Rlfwx17pK0ZmRrYMwWAZs4KxPeSot/411ZrAS4j5USk5E+BkYfkp9iq
f+OweFnZQY6pF9OTSImsTR7cyd0sBcpdozoLakmn3fIBZ4LNKwbgIMpGDdgSFYtS8E8nMrnHBk55
UBRt6ufwJuxyq/6MkBS4vHpbU6L9aTvWEV47VPQ4HxH9O05oaawcgHFjghmXUZEGnwp9Ncc4PBc7
5p914XXO3dTRbPxyql82oywVH4EopS5pebZXXhNmFvNvSg+sSy2SAA3S6ZgVxFYazRNrZzGbgdXz
oL0XVGF95BAV4zAlt+SFgt8zMrHqZnzn0SgpqUnCRqLNaVtm4Ku8i3J2ZXG3rnONpakeTQLv/9rH
PcKhkppXoVaetakADTI89aQpHs4csN6bbmTmu4x9YE3PhD0MNz4MsAsdS/ITVdCV6AIZkNu7KJIT
8qTRlGwN8tyCXWjPNPRzzy7h9VPOvnke2srOY0gFhkRaYiQqrkQcAIwLpQD663FdBP3A388GFLOC
jJqpKBZnOx4YONcVMDw2ebmNIbYM4vQDz1pTOEdZ1AC85ZhfMOZNtmEh7pafFiWRErjFpR9TffXY
PwchJO1WPTxU0reTEVvWrCDy8IhZeCt+Gc2+4tC3dJFKJNFcpbRO9Jgi0BVfBGsb24P7zttpvEr+
eB9CxaQsZO6leV59+3w/wpYg2tEgVZbd/7j6Qn9fqTBUmNbFLkVthZhTGAM3Vd9r0+q54ZMetyaf
CtVIlisMqgTxWLO5kaICpUFZjvqmx5oTyddhKjMNZQjGCS/dnyI4x3W7qmrZiyB5vjMmWhsWb6ZA
w0t6OFbnbBaaBZtD/5FMrLtA70zCSF1/ZAqZAb9rWH3zBPAfJVEdrkzcOjiobHfKa0pCDHYUbhaf
An6a9Qtj5gBFxhIODzqJa7ue7kUV3QBwgzhMAgeXXtKaodZfgpU3+i5nbWs528O6XnuYKhznIu4I
mMq/0NAAFWii554RU+D6BPna1SA6vAmGrH7eeDEOQy15lwRY/2LKR86Z1b1MRsMvOPCBDy5p34dz
6bDR6StDflyaKCFJwjbCfXJXtefhzCLnvhpp+KdOnMeRBeGpU+V3CN/kxlRgqwxr4IfQFi7fwlhN
ryEvqeH8Ox9jI3iqnwWWqdRzR203unKA4ZgiQ/WUB9JR2Moeo+SrSlQm7lRKGFTKPWGJWOZs819U
Cuf5qQTMg6YVhXXvvmvFSaSFc2/UZ9nMCtpDBzE2gzaZ10F92XLgQMkEm4d64aiLTFww9qw6075D
ibHSX2Jp47URZqnGfSicRg6OERRffByLXXkA45XCsVb2k0WJhkzw45O2gjulecCnT8AEbxCgTm7j
ceD01UbGpv1Bp8DVV4Kg+rIyf4EZf5khNhB2vhkMGKGAfoNlDKWXRvd906/DeVPhJzbllE+k2nPv
ikdML7LzvpM2AEdsl3mp6BvhUqyb71cI/kC+r9y25Pn4fYiw5wmRa2gMMFwliUzPK1cRJYrGUtfz
lZ31hyUcXX7Vx41/UZx2B+0m7m8Sz0t4p7SPKBVi7fJlEBCguKDLarIiclVc3bTc8/GW0Et6+CdQ
XFL1WDOMrfzZCzEkpWOQ2SiuiN+dRSBVdwRaGxtWqNwppuVzRumvOXyLOnjXnQJKZnKpukAO3NML
5XaQ5LDhKsaQQEejuc/uJHCpG6LqdRaapqkVka5wkHd7neGitc9XlPOUbUmZMSNpFhwmmz7wFdBd
uO0vcNlId5go1BNkMzllW43ZdcDD+c+7VVQOG602i2rHGLXdLSfD8TZeQWvY/x0+VT5dcPo12yJT
9RShBaa67JLW2Z9kiGIgHHQiNWPn0bs2V4+VQqu9crS9dUHxMMHii7RSKm1/sGQrsqcoBdO0UUPb
+nqFs9buZ0yedrJa2jPsXLLH7Z7R6aHR7s5Y6NsplbHoLaScqzcGWKj8y+421ho4FPVBMGnUNfoq
jtRrleCfFzfZ5RC5/Q5FmZ6QqB/PRmfC9ZD6CyGybLA3zQq1O/EZK1zJU/+J1aPeDJ77X+6m5D/y
qplktUqKK+L2SNGS0mQeAl6NgYJ9z+sLW+v+TSkzTkr1eO4UMZz3xhJwq0Sgw6FZAJGdWpNHVemm
MFm189f3oLqrOOz5UQrPMHuKTBCS/dYsEn3Mlu9/ceUDlZS4ZHhCJ4n7tLWh8aNqHh38ui0HXN4L
jwU7M7/s/8Rz0opOwSergdzJ2EK9OkYpH1bWGxBkxUed12PA2dKHw1DDYPMNb5aMHwbNhMcrOev/
LxxPGV8TLGaNSf8oIndTubSPrKTpMhoeWn01iS7WS03/HQE0HXpdfe6UBKfCnP/VfeZgzDc3ieg6
2Y7cbYVHWAkYNBbhLEJA5lQDNnTTyFkWZm0DCh2u4I0k+Z8bdpclbSArUEEQiy1LMH+dJaUvZsfL
3cmaJiihH4KW2ZW3pxtsf3/nLzr9fWiSDZsGGyvODOXR1oBRduoTcb2bZ6eS8oofCrARTKYqaIuv
rwNgCRMYxJHlKURdkQNIJiUFi0aN1BCZbKew+ydxrJzn/7KR5xxIxfiI4Ot8wXuDEHrkMkZzfr3Z
8CZmMtTlp7llFbcMBKm93OiZ9caphMqof7pCBNwAIskxPxQX/XEhi4HR8771fVnDjDqgoihy3OGT
UoyOVxCDMTqWjSr8WWnfSiPtple06Gp/jor9qkAnc/D1/KATUsKj1HpgkRDRygyvAsWRnYb1NT5j
C2A0ep5Bnf1FDg8OM9ZI9lHT7j2DdmOlgTb8GyWJ5GkM4l5nOjswrVn8/kqG+S2zuocQUEcHpqLl
VE3Q9dl+zzPyGZZxzQC22MMKXEtd2DrAL55fmiqFrjfSV8IiVOb9N9/lOkhwTLM1Q9W0CETiHSw3
A/dvIEtpmTrDhbMZMlkAjYiACq7Yka3RRSBN5LTqfHMy1BJyT+TlP9RLhQeV0gnQP2Rmj5dbmTG2
0cbtFoChqZTeyejNCuqdadMlzJC3HDaA6fKE07jNarniww5hiul2ilgqs/5lcHwGD7aPpeykgZVS
192AFnw/0ndHdaOLcVqSucWLoC/vzaao11XB9cDsMdkCOfp6MXYlgZd+lEEwthyvaLQQkW6zqJvl
wRZG8l5Dfd/Ot7gKn5uiz0RHwRG7sfcdpD2QUqUuzt8OWddmnCDyDNzEgVRCO5rU58wvBSZ7xq3A
5CxpKIFX82CdODlHfVa7Lw3x5/bO9ZAzJJer21gI6OMuf6aTlUhbEymdq5W5/eCBY954LBjfUfA5
3RV49bQrf20JhK6y9KDBsceycj5QjYlegNMXikmgrEFXW5DzuiNI8bQKFwy4qM1MYJ2cbIWs7H3z
Fo5SiKPCC/olUFTpBzNlsRUydXyvo/wcwc2mA9QagbZa2Tk7yJKJf0hEENVhaRd1bUHZMGGwZoEs
MkaCN2fAR9WL2tFzQHN/SXs59bF7v3dgnGrv1E4IbxWKjNjAORJGGMyjXCNTvqk2X8kAgUzqInM+
PSSE4SEiLdNRKnUDkGxYjviUzM8WQH21jFo6Ay8o/H+g4z6i3mkH19CZpWlI5xAZO+xOi3GjZvUL
2P3D/uVOHz8xfHRiaQJzNCJ21JS6+fNks7PPpB+YR+ZJj3AO3tJRXaxJMfNpJZSLQJvq5CzT/xR3
mAOxJjdu4T4tSIVQY1N7EA6rMHnya0IEe5fMhaCttZGXdeJINGoLvkRNCwRxITlPsdp3+F2Sfk/6
ewHoROiMpkyW9fe3lVqV4tspi0eJwY1MVD05Bk9R1phzyRQqmsBHq+gStJ1bvjWLDyDT2yg8nNcP
24L0t6RtHHd+sE1BXjC8krQaIz5aslzee7al7EOvl+iIIEq4D0PZXRJ1WovExD8j2CjmqHXcTYF+
bMWM/8oTRCZSRc61tRcFLXPj2sJFcnRppsNTcdCXGRkSvrs7kDVsT4/gNKV418wV/JZy7Azxzm6p
PvvFt8/09zNU3i+TcUizyxtNGj31t5MOKhVDLXQ398UJicgKNFbbQTN5vW4gUJhBzfI+HmDZkBvA
2Fe59UP/IYi0od1bGRUeYEFX7Z8TkHVNeU87M3ns5yaWNM9h0ZqRxCwKKWXnvV2qmbWnVZQmRIRz
z+VKbDL+4glvQeNh1ZX0SvSuLkvxXTQj6QXyalX9gKubWg3WMoQv90Z/LigxcM8qk6+gvnYEUHKn
zkahByFBon9lcTkhznrvi1c8YG0O5CxzJkv67ra7tucjRMVaeM9uUPTDYNiIyuUIZ7qprTvekVUW
LywRVGjAfeUBCOdU6Z6ljgSR3p6WdNVdIL017qaWOWKoaGZz8DMWCQIui+JAEF6uvzrBgrpketNu
qKf2ivbNpHuhfggwsmmLamHxxrd+AonrD0eTsKa/ku2eouoptjEueqXvyXnUTW5J77hRHtF8kIyx
yK61GKWjtLp6t+JY1tsNWowT+f1IipiMOmX4PeT5z1AecRUZhW7rVwSTuQFXBcduU3Po5WuFEHjz
clMxy0PrWcg66Ui+Ifb4z+I0zW3l5lexN3ZvodJt13SBXEpcP7CUS/n83Havnr/Wcke0SWKN6JrE
Jpiq0QxvrVQjmKwBO6bcbptuI5Q9kGaejxvR6FFltI4tidi62Jzpp+0m+EaeZEpUigwrAAUfjNlX
9BYCn0NHBZ+uaLcJxQnaaPJG3Rxf7eUjZsS+/pzEmxiQnEpmWq5c+myXWOmScGdRY2am7Pj2Etcb
M3K3juWIBzAKG6KKXhdGfEvMPVT+GPWTM2MGXj22Ucqkakj0m+PgMaghnj8HTDiecE3LuL4o4vEw
8ZAXybGQObeJsRJmp2wDulso91TQjunEKxFkcujje+mPuz4lFhzu60tT3VBFVtWbywc43HZtqNaL
FpxvsDsK7z55ibka0KJJrmzJNpye3LDqaFQ3UzmT62Y2OaSgabYePKDCthDKd1SoGLnzi3qqSzGB
dSKFCg7R33EoJdKDeTHiN6QwXIDIq6s4rcRo4cBJ85QaIKgP5aleb98TDoMO/tq1H2uFdO2uq6qq
lnMToLou1eu37cKZIaArUHpdFS04S13m6cSViIJv0YZda3K7XsDYZiDV/pNLifNlGJ0drxj+b1tI
pYnXvGRPDiYX1QbCc8D0mo361UFH0BdRFh35kcl1n1HotAa0JUXlhGnqN16lIY/RAiLHGqZQsKts
xfq7ecp6BJQcmOSeYDv6jOjZf1NY15GpyMDZUFuTMeG7evWFVpvZJli16oHc4Rs3goL9LvuEMuIb
tTx3TRi0hSTpgMrdkve08mzZ9vPDGiroBgNnxLVYv3I6SqKZ8PitdFVJNGHztwaXsY/ibnfEAlOz
PvvKkNaFJXYcH1Vp6kBXlClTtzqhIgnIWrkZJuv1X2XTO7GIUm0dXgU/4SD3f4ghKOIsNAhmk2A/
bNZCAX1IdpfOLfoI9jloxwC3L1ofZiLpnEbkfe3OjidxWbdvqTiz4IFK0N0hCOxomldqGXgPvyQm
I0+mtJ/phaJp8ZCLzIONlGisVYgAnlwjt0X8zfWi4HDDShZv+0G7cllS0pK97/uFiyLEN292HwN2
zbf6PCrQsS2kHyk08lP3TJhu8tn6aXiIB6dsLAe3IXzN33ofNi1GR4WlJLjT1MaRFv6YXWUDOLKg
n3eGvFhJ5s9j4Z/eVDhr1kY3DwMg+Sf9cx/rqjVEK6ttBoRC7LbAF7AvVm1BVC7KtcuAN7ZSqLwz
U08MeG72tDNNttOy5ulEeZ/XTJkdxJ3aEek9ODrN6CZK2o6RnL0h+qEEG7Wf+Tgdrpxw2oNHWW3b
AdcwUtQDR9BmY86rVCy6zgmP8QC93SIs9qksbslWn90pIPzM0MBp19ggdyLMUep5t9ijFD6rNedf
8KTxEHYB6qHzoNXicts9QPehXUCMMCwx1z9YEFnzOjy3BLBG+HJCWlEP7GfC8WvYAa4PCIP56LkE
ERtoXK1KBYLACg7NTSrAN8yScVlZI1eWVXrcgKSrzCzpWioW1sQ0KVS9sI97x6yh1KPtgFxnXuxs
F5fSThPBDxYaBhG3s7mheOZGVHoTLXVlr0iAJnSxle52JcRs7+J7Saxq/zVbgEJ1qQ8xVJqBnK/j
neJm9qKTQUwRC30F+8HXz6wk8vOy5d2Q0FLLA1L/EaWrd2tMjZbQAqS/8UMCiUEo+Z5+REozvxeW
Pf91Q661GEGnMxW8dXd8qxhewB4Ua7MwGSQiCEzgFDfJPFnAjrV9sGfSgrxqkcKEjnMDB/UpFh/G
UoOKb6t3fH6FK+jgJ3gANyA1gfQFhPesE+U4SjvyGc2N20BTB/eDnQ9iqkYE+VguOA4qJ7dFzN1w
8e+W3Zc/yMrbiwfO1WfyXQhGNMMM4frv+QKNnHtCydWTqIZ3JLxVmQav6iDr4geOy7rZL6BK7JUb
pQRVIKomBtHHAH/XvCKTXTCQuv8OvxyMchVRb08tEZh4MA1YyFKjiiBWDJ1oKs+nBum966cIX6Aj
rxFBYDw0Wb64yQ1Eh6El/rURJX6wtjwkoBtyaqWBRU3n5u1gg5Yi7ufJQCpJdMDGnYwNqb0fiRSK
TvKEn38PVNK65sXvtueK5Vs3Gmf+UmPv7gQgtTiRwvKNDJ6DlOrFxov4Y2HStPJ7EfbzmYAJbJz5
1Bv7fSiGlWlJOM6HzmpbBZoHQO88UzqOM520Hx1UZmhg0yko/54oIXbj5sYIXjQb2bOEokIaejtT
yeg3twuW8S6Q6BMlm2v5ptuJJzuG4OY3bkV210G0JUAlVIUkaqAY4NbOsJB+VHAvUb6OJghxOSJy
GgXZiID0Na4BlyedN30qRnM0EiNcijEw8rCyiYI8SMNwKLxXUD+bquH8HVKVCHeh5HkW1g/CaD2b
pRoDrI48bW95unJe8Xec0NJyHZa975npnBeJBOAvUK3rSW3Wx++372SrfTF0B9UtlX5ut+jKBqHb
6GE737LioMfJxwpB7zXAnZx/kpk23RKjmWsFb3WBrDS13Ttm0CclmwBeg6JVe16sqs6JOepy0O1o
0pkNvazBpj5aGSG6O5t7jftCxRKmze1OPUmrP6YXOe5NsOEgWkePNU12/w3E+w0bqHoVcl+t1xqE
DEY78nFnGwF7WzBCBtg5Jenxbr2Fqgta5exbO4N2uP3kKtspPha0aYnqLmBCcrdLsERQ8pH1JUY0
W/bmvgmDp5A0mpU5XzffkoO3CypLf9GGO8TlJM4FFr0fM1zDOOPKDsNa6AMvhv4NBfg7WzbjTyUV
9SJkdFnwbITbX//dvBByGB/SZ/96fyr26IaUyLPlu5t0YjJAdG1aUfeW3GDirRnMhG8IzZ8wEkt7
kwgW7MErQnxyjkfTmFf3t9ZwX8DNp7Jz6j4auo0wtxZs1qF0JAm+gRCimUETY9jdrbnmH4Zt66ek
Dn2YigdSTpeeb4KeJXrpT7mNEoJtCJyiEI36GWcyukFRLiyS/TG+8uNeBzLcHjfhbbxXx8cqnhMF
BJry12sXAlSxgsp217yeJZEf6QGuAK1K7D+xToskWUCw4Y5V0XbYxyoeKHTXWDg0vK4PlM+IFdfy
6StVmmvgWN111h+n/5saKVIgTxO1AYc8MHp7h7OrmeQHjK6iuCsahQb3uqAQgNmpbyvwY9UhHbjz
LhHlPGxVbKRuVtmXGl/jjEtV2mcRQRsTYvKwIdio4WdLo/W2zyxS7vyhDsIZR3ml8Akn8PbgjaEx
qWosuNIlDZDRWuyKGvlMTyhXmt52y3dCuuYs6nse5hEzCctu2lSwNwygt+vsIunKcHe+Fh0/tjSb
MiL4WsG8+7m91fxk6N1oY/Yeb9yzEviiLTcicY1y8tUnGDv69/jiyp/nZ/nHoPjPLBmemFR2QSWe
u1BOXdw+3D54KQcDBKzjNqwXowhZ+jS2X/jfGzEMZYFp1nqB9wCatsMNkTSzeoAuuhWwChrd2ypn
t8mxLEdO8+57CkTweFwOd+sk7Yk/14+O/fwD4hY8dhpgCD1lcWc8A4s/chLktwu9mfWA4YfK5WrJ
y4V1MUu/39sGSsMQqaxSkOxlO0U1H5KmCTEGOSkQiImRprpmXd8V62hdj1LM5+pcnYC+8ct8H+vW
lKXB4jKg8GZGm/tR883gk4EJ4jJOREDG/mdsVxziVZm8CFfZYZQKB11KotzIqMCBX98MlIhb/d/u
3NVv7AA8FH9j5Dt8dkJNRhMdrB5DI3IdHfMqqj5DHkmnkp3nn3Kg+QOzSnB+OGA9crkrvqkTpsyD
7pP2CerffW7d4x4K/koqX6NX4IbLlBCKXYFEht66qIJe2MmxnFYGxKGtle+eljiNsgs4EeIpHQCl
PRvbH+hQj/6xdbCKGOw2Xk0Lloe8p/6dqj3f+PfMG+l7ovhm7IfzMjJAlYtkBdjyP/FqXleGxLgA
y5/+eUCaeyim7Y8TmDLrKoSwhsvwbuwn5DMMpOLAnEjQYfZXP+/XxzQ1b4GiU/Zc4p1haPQJLl8V
tOEvepjq/A9/e3HY0ulr88B1fQTh2eSIFbysoaQLWDzpA+BbB9Kg6LvI4VRS+R5obyEr+DFD+QCT
8hXptHP0cT48ybUNI//cWhaIpAO7cd4b+qshHkGrLQjWJmA1K/KwTv39PVYDuZwzpYI+LP6ilKsL
9lMJIdvMXeb8QzHyPvTFMaHdI2b1rt+HhhXLLxW9rsrnbM1VExZJ1DnI4Hrw7dAInbSWJtAhH7Gm
JYN6Muto4It9oAU7iWZrXd3I17gEcfZcfrvUK5gwAcGo0H9NmD0FuWN4qmK1QS+/D+XyXDTDQv9m
rBEjIUpz4JisQWM01c3JbgUYSAS2uqVJk08WJQ314MPEQnxzXBap5f+usTovMnGEP4bHqa1wwRc9
v7H8XhSfxI0Mh+Q9C0JQx7qSnoYiaDMww+eTs7YMF2ClQVtE7Iu1AdsU4dZB2bQfmiAykCeFBTRf
8Cl3XPqDfnPUl3U9iOluIAuNFMQ1rWPEvezbm94ci4pwabYXhET8vbweuf0AztlSMPG4OgUT9bUE
EA726N0C0H8ViOcklqCDweCHR9wsyph+pYgPJYodHiEZEerwckddVyNSPqBQpjqUg4HyKs5BcdKD
Vy8AmcP2xP2I+yyJ+bUjX1VkQ2dXq4dZ+tGIcioXRh+RySDYuod1Ar5uTdss1fuEU8KbJ7zO48hr
ReJToorBMVYhIzERYECN1+aygnObkG1MS8oIAiAQTZnUzVROEPwaiqS+TvoBjbYln1IMNk3MzLy/
Gr89yBo9nwPpoUs7mbUkjxXJP6AT2HA0SYmFZL0E6V20NbG4dw4riMnectJT67d7C6/kVy72+sVx
hNLb5Lez6ZBznqLum0qsCucHcnx3TktlceiyfsxJmj7utrY3l5qCBu98ZPFmUlapkSmObB167klA
d0ImyBvZZqsM4SjcbWVlIMxg3PMA+BVWDRTn1AYohRTJ9AsirLiAxSW1U1yVknIaQNAdLBqI5KiC
c8LxLD81bhxJfKiCbUFOCBtbliAwc8U9Fw9IjdFrlxAfjPbChkfRuc+u0ynOO+yqz9icKcJYzxd2
kgMj+tuacro1dsVOZizk2byUOuItM/s6lQqLvslmCnX8GE7nx41fnYrwpPzcGUvaaOjL8GhX4qNw
Y48sPisBQ18GPCiDqXl6Eh33Zp1gstA/lSM3A1TB6M3O2Vbaqh4SnXyRTe9MCmnPXmdqcAodLKtF
hr5yvhfhy97zTtsITGRr+du5En290CSnBavRAkCCoqYqAyO1koWw9XjXpBgzAnP7HM0l/97/SKhH
pvbMedvG7HDB2g7GHudp34poFurGn/WpIHUQcTwuoS534ImpnT7djzHw6R/9X2fmbbMru6lN9Azw
wR9OI9zA5JuxqEeZZZhGcIDpkuGozHbjmtdtiLM2MnqgF/Ea8XGKg5sKXylqpTL/u/4GsAJG0zOq
yQtWzSQIy0/3stee/QMRyhX+kXzOkH03xbhyrmipgh9yP/JfE13zM//2tujKchF5Mx6aYE+2F4vA
P3FqXC4AKlbgNRa1TQRCjh1Hzs3VS9vKX3tva2SNlyhdWPeX175ZzBWDT/uhBW8+nzufJTwlg2IW
R6Ndeibe1xj2KxUNZ0MSP5c31NTzFjenAFfd1jrSbXeJRJRZFJGcnngd8DI/n3Zb/t5nRt15RufG
ENXe8fI8/nIiwPFyHDHEOd/2rTcKN1W95A9Fu0s1m4erL0/+008xUpEJFkDtCLcH+3wBl7whkaUV
lFJ/m/jSujRMqo8DlAyK672HRylqCogK90g+sxZp9PemB+SuGc9Uod7ZlfCFfxhDu1e9xsek/I3t
4lmcvk6pHQpBsiaVUUcnkEBqSY5w4Uj450P9x1edJePUuFt7ToigG3lzW/xD7Iu/VKX04jVxk2Ld
RG5JoNwaJiH2EtasaBl/0yJHu9WAoXrvaCAn3OD3OYAzpD1Xt6ckjHelFdzWUX+f7hva/XUra/Pc
65GT9droOqvAYW3hWF1VmdMvmoXLH/cadnSydnp3qUu5ZUSmKLmiPLue1EUuo1QwoXXSoUOHbCBT
63EsWOGcLoCHluI2hzVYM8MTqSvcaTKQJz1luTK00D4RSxtZ3jtHz2T7Y1w+0PFdzBQOFaDSkYEC
yiYmAhFKRhX/XbPthCiW6DHrAngq9xxMCG3JzdoYJO/3/ql+s8ZhqDTI/PqFjusX24fhlGvO+Pf/
OMcguI1A/YI2Tf8p/ni0vHGze5aInHsWW9DcpTkcwpTwfoff2eBy1x6chrsz7IvDRuvp8S/alnDQ
8jBg2ihKo5ShQEnDukzgu6FFdxXOqx+h5a8F9+D+H2eGQaeXwZ4MswgC8mCjxuIZsKMaxhQh9G+W
9kQABqoerCalaVdcdhQb9A+LUMF0DhZ/oeJcpzZKt4xQ7ejSaPFmPBE5T6H5M7dUAfeg/aAGCMiB
5E/l5lhvOF+/VUZ1CWXeoVRFlLxzeVIRT/MQn2o+Eh8PV/Zl+WvmpKmlhEPHRZhjU0wigI+lTDEc
hJheZzeKxsNUL3Sgc80LcspNLc8fDCFQL4sZ+5XzKRuKSn3NhBgp18zibr3b3WexSDCRNlw8wDio
qJeXfQGKNu83c2cRzIwWQrlTCrhQZQFNdTcYiYD27PJuWweXXQrEiqs+gIz8YE9jRj0Ulw+qGda3
wSKgo2ZilePddw5nnLvBtyHyxNu5UyUy8RnAa4x/Ojv23nE3Sh8Qt0v6pXs/QVOpj5Uj2d2+xIdN
KVdHUGzh9ntyYWPUwLaC0U3bGD1kEctD8nggBMKCxdHaqpnS8B9G8oduntbyBkYX5uLiOOMgdosw
nSsl+VK6XsRsRhZqLD34vjU87l++jdBVSWNbLFkF+/9lxDqLPQscA2eHpQrb1Gen91NN+tX8At6z
DDJIV1mM+/oFZMeL/+3HjjJZ3chrIxp4WAFAtQZXqQ8ar87qXbVKs/WkRAxxr8CApcYl2B7XuYG/
Sdi2OyKafcPrzxi222askxTMi/0ERBX5cTmGNWPkUMQx44iJpAZbKDJDPw5hcvULjmfyA5xTBgxY
ZkMJfipaNrYu/3LWgAwY7jRxz/7vTbWQYE2azHKeESHza2Lzp+GmGlHryDp0QO5ODPFTKQazhL74
mKWa28V19g/IRFlZzbb1vwqTBluV57xsu4VhWQaK6K5nQ3E8sVw6Rgyn7l6DYrpEkbshWbQEp8cu
e0J8KeoCoLI+z9BABNfgxOlAW2UMxmgPxyKGe4XPVeSzClNNRmXLkeZCgb24vlK/URmn5UZPjved
Eo7020klZdd9jAJ3B0bZhFg8/S1qKwbBhijxEUsyF3Nlga/u6ShL3JVWe4wCeB2/IqA4rqE7LEXJ
ViVxxMWdyhovTngvpx9D319g3l1h/+qpk53Eqz9APZzF6FznGk6FTONeBO7GWobWn6Mvjb2WNc16
CO+XrwGsAiQOW5zVLZ1opUY6/IVuAEG5PCfjRvZezXIlhkgZ1kIfEPFAFmtqKQXoENkPuXPZqI70
j6dILJ3oxQBLK//BkwBtu3RGZchpo+2vBw1rDJqywx/Z9a4AnI/UYYWv+ZXeKG+Ujv/OTGGb5QvQ
Mij8GsmQ3pZeCmwfLj5egems7PB8YBaSOotRAl4ozlrdX3MNpLhjvlx/MqYxasZXb9udaS98eRyg
0igFaJT7agK3D1I+EZbW+k+tCe0f3pZbrU2zrLWPqrxKrsDQVWaOt++xq+a16osRs/WsC9IbwpK6
7i3XZwdH4TLB3HFlMXueZis05hh3s1t99KDhqaoLwVXWf7Gdvo7jY/p4U9sqlTH/pLjx1WeD6YSd
m/Sxug3sOrsi0NHDmxBG56E8ZtbsazD+66X+Vo+6hzUZ5irh6vRG2RXNDp2p+t/hwwRBF8MF3ykw
xhSeBk3TF/4+4VP4LC8r+CQaFyx7Lam0JehdKYr6fUSEwq/+RccSgWGxfAlxTpmTFkSZmziw0YcO
K7+tlc4qNq5L+sWlQqab/g1skJbgEcemz2YhyxsHNoyh+ua5BW4TXrGkvrBtqVLsG9onqCFrKP73
BrHDubtsMleTLlK3dEvjAevK4Yi7odC8dZcndQW/IPCcSotfJIayIH07yNOdqRLko58xKRWX0+vr
7c0EeIMbU23VNlrjfgvwVvlyPZLP4LGLRNjOFEBJ8NhRcpmHd9+MTc/METBQGgSgNGtobkKSj7b9
fkl/qEHBWuos6RfAibe4zFLXwENAiInpkf6b/hRb2Ru0Oo1Q6mbdA6qH8NSCwbN9iX/t9LKrpJFF
9FL4SUH2pAVm9RdJiwBz6L9jqmhDQ1vj6nUnuf9KQ/L76fMocmxPhfT7dxkAzjFRSfbmhgf4KqIC
P0tI1rleJjbTdvwWPdJ0Z3HL9SXJOnUpoMsrL7eHNBx8FWRCKut0Fw8+jw7TChfvSPASw33QV0xp
zVsshGRojTdmedtQ6jZjOqtl8XB4oT2SkCwBtqdfpt8LvLv61b7svp7VZI9oOprAbTuM8dNNTH+7
3T5PuAo+9lm3d3jcFrkrKEIloA+AKLKrsSgFc9uRMnovlNRuJQastTqqDyWQeCPnLlaYrtDZjOgS
zL7rdSi0zxIDnKtUGP2j3BNREsLTiJNphYgCxpKz9Xis94HoIMSHRpK94NxwagvQL0Si4N5v13+6
3ZjuUE0PA8E4MgjI0mR8iQWuMfuoheRlxLd9B0/2wzJ1+PSNhe34AUHnC4/R+Ku/5jqSS5PJ/CB4
Pye2KEFAzdAZM3JP/UIcF4bPV7a/qherqn9gGkGRY5j2kxEl0sqkIBZhtfx5eI1eH88M0rJr0TNA
bKGyoHOM6zBX6HiAapFALIxKQvHmHhzEbM9CADqGUp7s7FSrpFWd/UG4A9CgFCZai+9yuXEAGTTx
4yLoO77+laOkbBDziTaDOcAoM2q2r2uBH7obIWiUHtveALCEfeEfcNr4ppQheaUc/Jf/yYJhU/pU
3RkV0uPOdG88BuGJviGeiCtwOYkTzM+jpuYL2h01aoi05U7hjS4pwHhh+JdDXbtJNWO2RWqsLKi9
4BrcGrqnRk8DCzI+CoIoW/nDuqbR4EDLUKWUJ2PeSccjJLQNTs/UmawSUuRq7pNk2xiAXC+IuAgs
f6i5QZM1hOj8Mqso34cjpeVXoDIaAWOzqtFT134He5sO6Yz+BvfCMlqDyD5Io9KLM9kkOKSobHpA
g++OFhst/tr07iC/LAr5ASvKkQ9+90lnTBFsSli5/3xZ3tLQAFguhVxnAqE0UCIsbutV82vYk9bt
2p9p1hNn/nEBPdFsK5EwYXWNboZOnayWrHUhF5NHTxJRzggkGwphinVrK5AlL7PHk1YrPmNOn7dp
tYjAsdrG7D4BrlYR+SWO0Bi9gRz1ecZl0Zc/H9wZrM/MjdZD9HNgARKZIxLAGWOGc+QAY6x7qcBw
Gh3cTMBczEkrGLXN4CKTY7ltfmlvb1YX3ILBvJK3pPD18lC4MgxwkSNEDauNgyFEkYCgypEPBLL2
vkswUTA2TY4tNQ6Nm8h+iOfAbnP5kjCHKSh/7EQvFx6HQ5iZ+OoFAoMHNfEj3m+mbJcAlIhuLhK2
uP2tfiOT7JLgSpJ+LTxf+v++nkhwbkDtA6rGvEr0gyM1mpnAMpFY8zrkZIEW1BZKvrRx28CoeKLq
LAPFhYskdl6MV6G0TlBbTYczd1ZzFpU978AJ4LVCV1fsNR9Sg9Z/sCAom3VWemtFtPduYRK/EqUJ
Jkeu9CqpPfvLQ5rEszxJE6O4Ri2z3CUA8jLbcnkG33POtJEbiIwXgP0CMv4UHdMDm0CjEeJBwAm+
o0aNqB6Xr3dun1pDpAxlI68m19WmdI8jmx+T+sazHpfAz4awdA9QkbXMoatt0hKN/iwK+2Nx6J0Y
Y90u/F6XEcgFN6qqHwFR3+H5VKcJWyvFLgvWJhnPiPqRsiB+9qNdagyHllzmMZ5un2LLL9zZCaSj
KMh3tLyBwd1iyN59OKvDdLPiw2K4gzf7VAaGbE6YefLZq7DsTvo6k1UJNX+7EBBXmQkSWUx6g7AK
TzF3j6itRNGgFjIbfT0a2ErF5iVjSwLxnr6vnHXjOUo7HwGkLOiZ8eED7msFE/91U11BxQepu8Ky
SiW/BhtL16Al8SxlFToLDsAMAvp6wBBYw1ndf8IPqvS8pw7KxatBESIHDEZfDGRbwJQneOnNgcKd
e/A3OrpCc6UNrlQ8RimEFzK95IQBCjnuXGogjUSg6JpSDUL2tI8dwusS92VkKollTO4j6zmpJqR/
LSQQc/hT9+wjir1c24ybVCjBgmTbIJicU6XNgxgYltYCoV3iA0qQF+QAJ+z5DlGOH0iW9s2vuuRr
fFQ9y8k0ivxzJjGuL3//M4v9vtV9nzNh6ghwCmwKevVha/ZIPaKzySmFxQmRmHob5kmVTWXSrMkq
iM6VQ8M4Ddgbh2q+bhQ5x12PpC78lakSxS+64vnU5t1djL6/Ncn54jLRrZCt6f7HHnlpWhng3BSH
btPSRgVX90WQiY0eXSs/zZa6eRp7iwUgwCHypLs/dFJxOucs4xixBqpREUBDuOIIu7OpzB4hH3AK
berRhNnrl1UYLKqzB4ORaEVsMMvM9meNU4Ti4YXxU6FT/EzN7fLinlbkUYjugzx8tnEOJ4YShJYp
7RxCv0P7N5xHJF6rSzyipEwfNl5o1mGZciufcSkjGW0fsP0dg5v1pJXp1oFMbqN2aDWAoLWsf2bm
QG+hR3+2NFM4wSJeAAGdZqijFw1/OnBKkIr5QLmSj/hEl7aYqoqLZ4ML6Pk38El3xOmazfFOQ09P
xiRocq9zAZkkccJ9EKAhuo1bSLHCe5Ps1/+LnW579/COwnANfGVcDLRaMnIcYvRAQnhKD5JR6Z6i
JjmjzuHsc1VdkawcQcZs1aXQGVig8GFCgOjZaEcyb1HXC47BToCMayWUokfdPhdMS+QFSU+SUt/K
+i8tU1vA1c5rIGIwn1NFpiwyTnG6v/S3eIdW6RDGWXyKbCsAasbnGAT0BMJQvo9ZWHrJvm3GHxGT
9f+dbIOzL9y1zVeM4yGd3lSe6Fc5yS3KFI3ihlkfHLoRrBFcKw8KbLeGdwnoDapCqtHkf1b05XW6
uUUlVRawVc/mu74r+nv1g2ZbNvzp+3/G9WyLkloORI17RFlpeOGkPupncGTIJfx52eHT9aBatxNq
cTFIxq1WiJNWq04dsxV1hHkdcauL0cZZSAOPlQEGQIFDN2CE2ql1/eeWfq5p2jT110HC6LtZVtqo
/kXY1FWimeilJElEdGz0axyPr+HklkG10zfMV0BDF6oMyHuvbyNLIaUCAJP4YpVtUXkXtbxgb/Eg
b6l8RsSpdcilFwBwCAwfjEISX6+s9tEERRHOH+xFj7KorTRL4cbVkF6kTwoclB41maLVn6tJaaLR
9XrhjMYiE2IfolSBlUPs2D60j39amJB1RGxVy2cw6UBcFBqYS7aMidPfi3+NZ9MZOwXsnhfSbWf4
YSCYLC4PKlfcZ3mBKYftplPn9w2VW/cdQFqPOG6JxA+UET3Qrd7ZQ2jMt5qKG9hnrmXbQDz1n0oW
4ErAtOYa9lPXnb74RHkwRHgrVHCNTfi79fpjxxRJZEuhYEPrQeGyN7PadGIwktTYfrQYw+unrstZ
jCnWbWd0G3zX51fO3IyzmfQqvABW1Qa9NZw0p1v4KtiP5/DU/LOlGOk6AbLRciUfpHkv+Ab0jtGY
TLzzQtAsXHIM82/ezov0YCqCSTQ9tXhT2lgULRGjTkqnfs90EpibzHnbUV1Zu7IO6hUPSQMR6xJD
BDus9LuVO1ZKypfSl++hXjlCXjJXWUtn3b5jqax7LsE3L2Ij+INszozxMUXIUJQZ/7IUB06P/XNu
/JidTqAjJm+vgTv+EYx5LYnrsjKG6GAwo+AS5fPDt2xFSeD/YFzEfHHSdT/hp7LZYk1DPwF9ws7z
fqHWBXeBP7GL2r+xM/gl6a8JsV+Y2ZYIrGvdK7pjL886RH3m+69pR6q9VkPMIos0bzLEsSei6NdL
IB17Q4ZjsoxL7OaxVzbe05MU0OHe1PbDxtsNLdIDeM5DK8XqyQfoxYQQsxZE6FEIUXLAmlUOQg4z
XcpHKR2RIIdmxKfr9Lv1RYJHc1l7HSGGbOvuFtNGAH50vu0sriJADtNR8rwjjMjfZx5nk3NrCSlE
T+fo51N4bP360C76QBPTeu9NQ9Ajg0mpKKqG4Y4Q8+hsSVaOfEjvtEbXei9KpTHHLYIicGWod2Jw
EzllMei4VwXA7/b16hOvy1ixoZthDR0o3K1OgD0qx5EvY7gcovJPiLfrGsMqEthlxtQcjAcVsAU9
M7/tGAYAv2JbQBqitsL/zcdi9ISKszUTo5NDjHlhnmqj7CrXiHEQ0946XlwgApAhuXur3O8EARen
evnKBqIi+NqNWxyPrbDavEsP9OtlAJn3as5WFoFLd7A7N+IxJlscP6VaW3HDo2sSQMTsUGOb6XE5
OUasm0W8luDNdv+BG8jrvP7BwLjPJdA0gSCr2YpGUeMmk2/CYbogjRsSQHvrymS+HusomNx0JcoN
xkht3WtUWLYviLcTS7sTcfbhWzo9PzbjNLMADcSlJ36E8WZEozFgx24zr/DQQZlHqP24DLcG+9Jc
Fv9LnEREXwox4MvP5j3MGYKwYR71tV7ivXA7EYU2IPIiycp0XweuLX8phUIgnEk3Vv9KpkHgdiaC
36kOhqztida5Muo0QqH2K/E5JmmdgIdXx2KFa3BxZx38b9h/1uHsC5Rk6oYaxDwnjiSGe7odhQiI
NOWjwwnlrb0BA+UeJ/qqh0CyYdz7jmGPod75IXQT7b2ASKIONYAgo+qOgQLeSVp1yLfpGZfZqm8p
HEPtTHjFjaj8Eb8DKs50rEQ6SIhhZ1pNBnE5duPDiXOdIsxtirM1hmlwuu1842jTTWwmi2rgXVQt
ISN8uxSPyLV6TkkzcCpsjbQJTbjaNJpOkJEVHnGGDMdYGFhaxmw6qHitqhFDbltGUzsdSsd1PqNX
0nbn2g1OcXP0TZWKn7En7jO0r0mRFpn+fIoM5/95YY1qYzZmW89tYFw1OOMeMd3Fvv29cVdYsQ/X
j4HaWxvZXssNevpZtFJ+dx/tiOaAD/oNGLMdzGa+h/TiM2dyznbmkIX67gnUVU5s+nC5+J661KvJ
0PHFNpjFBobXnYwpML6k28izf7iS2r3OomhwQ7p56D2vn4VqZJZ5tHfGc4C9HntHdOYF7Mi/JITN
ppvLSRi9nQCXZs6MiluBwrzORthDgMmx5EbxG5Lu/lgso0s2YoQ75Kp2uNB7gm0QBI/3PuSoFwUO
sGYLgwNcJhLNuAkwGHzwG8DLEM0m7pk/9q5YIglNfPSAo8s3MURpdD6NTSitq0NnL87P55yXZK/l
LCy3sFxmrGUc4MwCSxotmYuOMO3u7WyW1eJW2MAmx0lKSyKx2VJD42YxYEoKCI+HW4ThRq0FwL6K
DAGuZNLKxEEbdqGCxn1sGz73Kbh5Tpuioxr0G/YNrU2mbtUWqZ3QxKqYQb7O7PlCfEkMxfjJ8jR2
/EuHP69hTYD06PNHFiJFZjcB87O/bEfDnVLDIaWmvUSQb2zxdnxcgY1K9wj08UFcnyKJxuguEGtl
z3VaNEcLjP8Qt1r/NtBxFZoiXONxR/fxaInW0jCAEol7CtQV99f0Rz23BfXtOMRKEZ3Lu/4h8jbF
IZjBKHjEq15H3wNk7ByNQ3iLOHmntCpq5EIjIWpe9+S/P2HjJwGFlk5TjU86rbQDqIqmwA3JTW7u
CxMv3NC1s8joBmyp+9K1hr+8TH7BT6pJcLwweGy8Fv4E4XhWqasaqnCnuJJ0oPdR7WzmxySc1GSW
1jYr5n4K9SsApglJGRzxefYNeQx1iSEbn44hxF4i6B8iI3Vc+mpJzxs3gcck1EZpOVxnaV56l2Sa
2ZS3kK9W0SwRQRqRg++DKYoG0cScngPTWE2fcdg5HIEcXFWhLKWbSxbC5E+LyurBZBf+ySCMvSbf
CdzATCOWq9Uu+0xy5UnURYwtQLcQtwYEROl2gv6pkPrFMrXJgUsZ9dfBsqACSwXJm0IqwKVP3KVE
L9Qd1ViVfemCVoTZX7w0GmcVD79Wnsv8GVbsn6r5MLUn/z4ZzRvRqBr+p7Aem2YCXWh06PVwjFOr
DzkY3wJQaulwSPrQkkzZ6I0fNKUSdqaF+IERajps+S6KZaGyamrFeo/R8JenKnTEmNhJG4DG5XNx
t87ZhVJT3WyNKUzvAv0CEZCbLyd55iQiZAp5eIJYmojEwxdAxcHKNKI8oyBBX01R1L+3EJ9ctTeK
5aQKFFFDLFqmjGUlM1xAuRv3fWfS89twZkpbkMsnWFp1dYLAhTYnYdIjYsT+Pb5WqXc0esM+sMWV
VZr8k6SVgMAjlCryT59jTjxu03/ugsidaveTuWz7PnCd6hhEmAZx4xtAO4102LbiF3LD8vXpYm5v
8xiBUYMFtK/iY5U4KZABOX+yGbepahtNopRn9YLEjM6JBcnghd+RXukQWRfmFyL+eLGhGL8UX2+e
jW+8x7DEvZ8q9mxhPpvZSv/OHtpO20RUVbGocrcTvlNUGd/PYcC7gAjdvxsHGd5UvpRxx8h/dnSz
VlCoRhNky9EHVGekriztHO92xCOqYH2KL1ZVAX4vD5KeCXrkNGNVZfVUg8qPDpFgnZCS4ak5Selp
sJTNgoC5Gbxsjukhoa3TR6G37I6sOUigF9vvd13n/PthZtEXXrnI8hahaxoh6MJ2Igc9vmOJmP6k
pEWyISTJ/p7iWUhGIt/JLNWRm/KPfvO8/uUiLgfQbDPwGHiLma/633xSzzEycc0bx4Ukz/oATKvH
Nls2YiBtECfhIWRu/LWK/ob0ndUGI6urtPTzraaKinEksdLOtXFx0U59y1NkG2BbEzWHtIQ6xXk5
F141//B5a/gyw/aYYip44yMOIiYZgFIZQbeFXdae+OdAla+aSPFWoH3bzgywkXCiEStp7x0ZvEL7
Uyr2h6dmd2XWHd+Gxpz+gqa8cgBIIHzmCq+3yJEa+8iyqkHIjveOApvyzGafy7t0jaC3kK8RBs0V
bJ8JYGCu4P3WhyxKRSkoslwYkvfULvnPuCLxDNvo3NwiDgAU8vfEho7UpLRm9cPbGpFxEPZ93oXm
2fhP+4BUtk/wEle4D0SuHFiTy+RiXoEc0PC+OFLluo6sWG49L7FQ5UN2M+5mTPnOjVgiG3CDBhXE
OlaKyIEa+DfzKp9b+vn0ymZJSkRfoBRxIH+W+X3JaVmBrC47W++WXDsoV8YbN3JEIKC+XJmTsZDf
VrrQu2UHCP86DjHWb4+Z5cQQ87Nwkd3dhZo8fqFtC9bl+h7cSdiKR5mh4BJJJhksY/ZYLyCuzcWU
AXRNC7zRU+MeILEnerXhtKiX0ryL3BQFTE5scZIxCflENkWXBI+VnsikWrSuSJDt9Ve0Lfywa0mD
qYtmynw1RasGwX+0MNg1LETxxIL9P4R5mFczlXdYICBeo+h9bdlSqHCk9kzKNACTYu/+JXFrFnIH
ln02joAbHGHpAtMZwk6iv2CM9W5O7L4Z2JCOS9HIp50eChuNzDqjiw5tljH+Ew5H48VKHZ/lpFKo
CMO0T080xK6bXkgxZtD5FKhANQ6ahnbQnC4eSHi7fWRwDVsA+e5kr5fVOarYPmHIHlNgaGNFgyXJ
MTI3vbwLaIyAxlFjYRRG0Nm9v1++iUOn1eEISIdhz83LnG+x1K//9eW4uiAECWyUHfWUZJqNMuE+
1Fq3KdUDcUbxK/t5WAckUU3wO4k2e8RhXL5iMydeXZK4M+bzTkIzulH+M1zVLOdlpl+FvEGFk6/V
BHi6mCFAsuk85Xjxa1WeU1qigiTRGGEsR7fnTS7+IBVDTBQcYErChfar6ZiVBV6BMHb6e2ibQFak
uh1u5HYrh1k5aU2zEP0LmiZdR2GXBsZOcx5HeaVt8l0SiYlxJOIeBBdzQToqxXiTC+hMevUGfDoL
6EsOFDw2NQle2n1uonWDhfkIm/3TFss4Vjvi6SID4WM3259xteYLuXDYE0umsiNgiTNutFQuVGZ+
1utmMViEOnKpiSQ9EtP+uXJ6N0TOxCiP7KaHiCh4dOHSPnZcnaU5wzKIiFphUJu5nLRWHX09DH3T
w+BtCQdT63EtKVMCrBHolaHMiqQIZhaouaSqGnnkoPa+oluFJNZBPlyug1Xu0Abe/d7/kBpSc6WG
ZTMpPUXuJn2anGlGD5gwx75o+wLcwVchuZBOOrfESxKlNOcdbsYFu9shENin9nB7jpt2AQvzyeGN
38zwAn/4m6UsAOuyTsG893iIClAY/QHm9ORs+oVhZYV/NOTy11WvbYw+r8ioUZRDuyECRR9ualb4
LN8vw5D/I7a85ZIhKfKFqXOdxHvBbq7Us1TI4FCKxDHaLz51PRRXeRIrMCLGJJwh0g5vwrNNQJyG
4sF5cyilrNUQMHvRYRFVxii56KyYCREWY6egbuMroEUDsuYpJPcuSC+5wNRGjUXEkYWcnMLExoIL
/UmGmkj5Eu9K2Ajr6gFXw723G1EeFxt49EvHZOz13p+okCN9yiN5dFbjtytXrib8Zox9/mNpof5v
WhHg61JdtFTv2sl0dRvitmYuMQ/nE41M0ntops4Y4s8HTzV2rfEJjmoz8c10dQUEqBgKf4beXert
XZPwOOsW5lw1P9HFvCnwzqoMA/tkhIySymV40c6RPyrSpH92nzzah0HvDFkXcNNC34E5D4HuxOI9
x6J9NlKCeZLK2kgQmvn0eYAKew44HnEP3vTYCVoOhWJI520M3+itOSZrFvSOVslihbZcUA357dIK
dRf4KFafZZPaJxE96etDo4wmPd2e9trRZROnpdcQaA0tuntKDPO27lDQbWR2Tms05pur7VsdIS5F
aUrZifqBJplYYoh2kVCeLKROtHXe3mLpdPPLH2AY1HPhpynlKlOF2gfdATAiwj9jPTaWvs8IG3B6
1aeljoM3ajt/XTEIBz2/40nwSIG31D5zpxM1m2WZNSdlEt7Dx2lQ4mpeyhkyvjs2zMo/DFs5cbdc
7Yhxcv38PgJr9LmMC13PLigQofCupFGwocLcyAhTnJjTiq8MTRjV3S/G6rg0j7dIjTajnAuOcJt3
0wxokxlqQEmWsFb1S5ZJRVN2S68vXpJ8flVFVkDeJMe+4iR7a0Cr75PBwpJ/ondsFcIW5x7u6pzF
82/x4dQFrEapopPm4soY296DeXmF9dtjPj7EURTqcpAc81p2NHIQgfnsneozRa5agae8Ee3U4z0K
X5YoFC+ud2QHe9QBmhyz07PeneLfJMWv7PxULO6AFSn8OKNKONZYi15uXWdlcutEohOTJvqjmT7K
6FhHG+QNyI3PgZqxhmjj3ncO/69sLTBm6L/5+PnVDSon5DiJoptg5AOFvpN4IrQeI3A55JbHtbs+
GB5Izb8Cc6hLsLoZfFLPeAWn4RWO/kBm84Z92+vVH2jG+UlKOj8K5/+3DqQjd/43CegFvJmrIcf3
0uAvTceryn6GXMdOebg4qGPLQyE+5rMeO1fSPsod0M4Bv9p0G7ZoGxWgsfAYXuj1dJFgxJQ7wuyt
goZgeTKozC4YxUJfcOwFNk52HoRk5tKIj4YlWhnTLFuqkd+A/PMNB9g2maJSDXEFr9OtwgHCPyPY
QAtV1ztmjOSqcb3a1q2uTEHIaPxPmPti6BhV7AMzRYG6Ls3Dch05+Y484JsobBIzns9MMhOtyh40
wYpDocKiNFhwS1ZoX7D8gi95f3Xw+Oy7x9NpJLddKnd3dRscFfIzvnxVhkg5gGn7aqaOiGaj1nXg
0J9glj6qGEhtiGwToAqT2lfSkONbdYAcSKE+9bTDUNyAucGp3cGMhUIF+zik2P7t+PoFY2bWjOP4
rE90LuaSa9bgNON66mx655F6dlxWrkvxnGmo2KtIZ9Cwg1OylX/G0CS/TATS4zw9ZfU5UwyGkK0C
Pi39/U1QjCdgfgL+B3vNPG1oxS5gxpA8xE/1g0upPJGUuZPma1yNA8eRHx4yk7DhTphKZl5UMxy3
yMnQM3vjzjksKQZl5jMnSV0WRRQRPxe7HKQ6z+tu1KuxOB7vMyXmYhBAn/FUqSbfazXup92hULj2
uZ2EahrG0HnMHWo8wn6W3eRIlfiqvYYTYFLNnJFyglG6E311xV7Vo3GhcWJnB9G03cJ6hTnpx6G/
Lt+B9MB9IwrvTmtDq4d6cinZeYLKpXfR5Zx5K0U2enQReVS4y2nuZtALC1e0XU5Bk0Z4zrI4IFmy
KNcV/i7TVtywiylAzYaTfUMdCNE5NXnNGrz0BUwu253xvai3ssdLwLlJs4jWvCj++vFdUiBsX/1l
1eVtjziszSN8vUf1eIZxdivRw2fVrWYMqtxDksHFBriEQw+yDvC/gvElfSRwUSD1mZV8yXbijYPW
QwYBGgksOhuUKkLTRYCklVEy0p8aAqH3h8OBUQJdBpj4QPEC87CkLtWLbya28kkCnhpVhr5khMTD
w1K46BSTI4BRYaI37yMYLtBwYxen3hEXQlrXT2ldbhtFc+91tHBstsk7S98sM2J+uhJZ+40gf8GG
9ghoO5ZVzdTHc8qpPwaLJrP7zpI9jwz9Hm0pzy8NxB/ns+aWz7DForgHPT+A/X9mkbL3n1zu/fkN
qf2MJHXo6u6NT5yd0R97UDT0f5sqrv4RHO296yj5o9dRij8PUz+JFeyXlZdGPfOsylzJZ+BzSFSr
h3aDj1RzxFJShqwbqgUMXfF90r4S4B7TQsGOigrR5sWAJjcP4IjK5766oia2Sz7Ux7sFDv1TasMc
sh/RIE5cdWtumgal/Z+z7hJhzxEK+o3WEwMUv040YZeCTcFXxICIm8yMHkMip51sPDeYnko9hXek
QsE7DudH3yiAIh/Ofgh2G5SvB05ZMtoP5/icV7J3t0CcDXLvXDBW0PtNGxJ7sfzZzKjlhsQlN1zf
HlEbqMiBF4XkohQH6fDMHcM5Kk9HK2qKoSgIKq17luS4/OjNMDlbOK7Q3bJEr1F7sG9NYoRSh9q3
HiUqEYKawBlyq/rKlMpKsiTowYS+jmQ84Clsnz1EciPKCM9F+9dZg6rpND3jz7MZWUL4kMms54wM
YP19rp9Xx9RRw6mSGNKUJ4kChMTGMtEXtz9kHNZOCFYKba3R+B9B573yq6IjtSuNIMSOhNdmD0Ei
IGP6aNBzZytUc3NGvp5p2w0cJiHRWecnK6kMpgwixoxNqbvGpX2J3ifT48NX0Zs8AXPB6Ueha+iW
Gplkpv4qehlUzMKHNtLIIx2pC75MO6U7lcHo6OOsAwucexGrWYiOeGOFe1zWN81DGJ2eZQkriHh1
Azu+e/xycq6Nz61fA07hAOXB8Zpalkn4G+98yT1p5AyZsQ+vtyJ1x//jkjGp1xsYwYbuHhR2JONl
5u/PRyBHVesrYCUf5dE5sH61BdtVEsCKbjFCDpURReN+XWXU4/RbXgl3i1lod5J2gRIkkZJ23/jG
jHoGkSjE7X27QT9iDYlaGFXk5TpPceiDCJ1CFBP6OQvQh0NLZIOD9I5hkV8wXFYU0ECr7cowDeRE
TzDvSBYZk67HqBfAXnzudi6BL2/FvnLPGSO5GagWCBY/EJ7QYhv2Iy5O63o4ARtORVHptbF9f/z5
EERLssdSL6WOlGbUnLkzTSn1vBFc5dUqy46ZpB3rFpqKnTE7eCk6pxuGzquvPFjgTqPU3OYTxXdf
5vB4f0s7Pm3kNSOWTqvXtUWjOw3odONsq3Wcgfsw3XvIQMLK/XSN4jerofw9VbxHr0ZByGrnfaEK
Rv8a/MY8aaK5cU2BzDICPB7u3cJXlTKuiJZbXCYZVzXvFpUtl9ci9OUzeqs+GNGoiMJN+Q7WsSfQ
neLnOZrHcwuELaxT5+QZL+1WXwjv7MmbTFZXmh+ZDOHz59gg0XIpW5Ah9lWfk/idtYa+6pX20Rp/
ZdOIKs7as95K9lVvLM/6RD/+H/YPCH5xwkcp5OwP10MiWSwL6CGBL8FMGS8oVQlTOqGELUcqgRS2
tKDvffPtP27uoNYbW+vkxGiOtJvCgzfpoynh+f/4gDQa6YW3S9lbNnAaO9wouCe/oD70IhQCpFxb
JTkath1Lv8OhYu2f1tcyoalew4bUNzQ8vQxgU+J8CjX5QDR1spn1qUJWyxaee7CIziKMlBGeEWAO
adUO1rbcbgSj7EMV5IF78np5y8kHKc36AkXLCDeIvBQBqdvSv62ACuvFe4iJMCxSPfYeuKYkMLrG
0G0QIls46DkE/soQ1SE2X5HOTnujZyDRIL/AyvCmxxOPE39GKK4vn7BG/ZQzjecF6QOC4FMx2RTr
/ePOYa6yfXMT9V3s62C+Uyey3t6zyTkbGc60YSLldinPSf+VUGENm0OOuOLDlb09MOCgmkYSLnwl
euvHPCAo4w3vZEZrDefmtrQ/A256GBf4H7PwLTS5O7TVUDD6735M14ywCtsqg7ZI4ns/bg9fuSzf
0amEBopnMhFd4AgDx58MGfdG20llTO+n+sWsYSqy0+iio/X/zW6NPXwSqcxuT1g8aejvveTM5gf8
Ns9wNRn0N49UMviesbmwo4cYbwEnE/y4WpwDPvvCtY5xlde8CZbEkHMWYK4dc5lzx8rIA38LqX4l
j6dKuGtMtFZjiQpVJhZZZRP1Cnv9xnNA8tflggBArJZYFcjXKuENpxSwGRHl+9cqwGTRvZIWUk5N
usGjHPI47aNNJiqev+5xO5iYeOvA7Jp1x4izaKywwGPNCi0Kn91pEwoeWPWgirRvUMkNW9+V9Z4m
nXToJpqYVGZXpIhqe8CeDzQ+04mPalhtqUdeq3WgP8xbthloya/2MT+TnV0wWPxudPRg9cD8q4KK
esUI0fRRNwHvJcx45USHO8v2cSgzBEncL9xLPVtAcGFeOX+S8C2m1sKtDUjkAM4wfHnuf46huYnt
RXgEHJgErItWqXCQ8GFAy6sOK9kXdPTfv0N1XaKOpKxIU0HnLnoL0zmc6uDId6qi6P0gtdRhMxEB
i79KbjcS0ih8/yWbGUw3ATbD3VVlss6DNj7qE2ZYrQ525Ekm2tO8WXiU+CbEQpmDrxgHXVA/MD0X
Nj4J0RxEZL9AnfDaenxwBEFnTs/nc0r66pYysPMv7GP6iaWoT94xvDZN3gDXxAGBbnrKr9g9SEq7
thsStzQslG8jxfXUjGEtg6NsAML05yRiexRf2tsksCdrOgg4/nfzpgvr/7YDml+jRiQRvhedYGIZ
fPiCLt/GikXyW+QHtCNInLM93StWmojQyfogQSlDIq+HNMHTqvaji/oNFJjI7cjCSgUD37F7ay1f
4tFkXv77yth+bB3kT+tJi8ZcwMJxb7FnRl6clRt/z7SPZn1lM006lDdL6T7NAPorNoKfK2HERYAB
N4+Ip7PX6sfuPNErtJd3qudJVCcLUTfMhzJoyMevI+js6EHmg15ygjB+7M+/ImJdERkAOdzslarc
L81g5yg7bVnwehMVFsyUknqL0lFjIe2PfZhODzVCsGmn/tIqT44jQwJHwcLgdTtB+y57wd2vAG+l
GBC6vRI2gBIRbSAR4o3d38MIwiaW2xWkLzFAKz25dzYNtOES/YTddiI4Chm8Q4mxv12D5rts4lbS
bTRYZMt7ZrFFBTt9Z+3npQ1b1ehViyLRUUa4+VEkepLEMNacQBjYCCZPDXm1EN3OcCpFZhsF6QR+
M5f8WJCXVruvovqMvi6/b1uWwCkuDr7w8qHp0ClE8xd5YAF3p7LBkCEBo9CZ9cS+OGejEid9BuFP
bykrIZNh9O624D05jfc1s7ysHbeYjAmRdOgybctuxn+OWgbTbGFAJhkBHoUCW1dFUR/K0PrK9keM
AaQCZuHzmldfmNsV9s19knepfRRsmOanKvHawsawPgsUrW3R3MoVYHiV4JxC6CH+sN0qEiFOyyH1
eVPyExnEkhy4l+ssEO/xlsfjN7MTxLMRqtwTN31LLP99IT/gh1DFf5kl8VWgPK+P93xULm0bQ1m4
WNiR2qLu/qrBTFbamIl5e7ynSq7ge93u4tB/7pe+RmNMcXyQJfP98wZ385tQfXZGDwMrCrHECzix
tv96MzMGnHkPrg2rw9gOxoynscCQh9/OxKy2iKdM4IlcK1K68QJ/f1pmpOX1lt93CeyxH9FT24sW
2Xq7ygcHb8FGHGawRgtO41FWBym4Uth3kc6vwB29mSSEXGDJpAA5hcdvn0MxXrcfmrRSyog7r+zo
z7uqcoOu0gfkYz04W7zvSwrSgi8ah/XoPuPMaOYezUHsWPq5YVnFffQc0gW9//QUkh/Rmzj3TOCd
lQtUuoQQa29uzRjO4zUiv7rTr6ztLNOILeXkiAWg6N4hwtu2HuQjAjaKS25XysOiV2gxc9jyPHX2
SqQTlu23CGd54M/hZF2iTM8yxVmM90V/ddYeChHq0DP5HCT0uBVXklSvk3YzN60pXi4yPPeHgctn
uiIm8+nn70U7HTJGp2D8+Sfka6Ld8xVruscEENqRKq9l+grZAzMCBITTmh8aMPrfiQovRzMtQNJI
g8CpOoncC8Qn0ZD8iQ2B1CsU0Lc7qrMCFzpFTC6PZtJdLxTUyvUvx7o+FHVpOc0oVzUMdQIcUs1X
J5XvTrpW/0DvHolSjMwrDPJXtfoyjhUniGy/QknzPsosskXbw3omCYAnqsNCh21NoTKg8CDirm1p
vMq6U2W2dssBMHDo6I9BKuG6Zjm01tRG593YwdiJIek0cVwluOSKVfsUXBraUL+uIlDzIO5uXKW/
v6vsDcbswMefwz7cH2fjCPJ//n8wttOj/Ve1vL1wUX1nT9RFyXkHsL84irD374yRvNmsqJNEay2V
dWzRgksO5eFn6StJuQdhCTE3ytqeSYERtoWcNJwcXFUTo1RT6pRavUkTRrkqLDhBD5Fqzmm8M75o
Q53OsvPKzJ/aJljcmVRaZQiJimaJsaY1Qc4rmyP4mXUMIMADZYf9C/hjE622vi4KIfWcfjVy437C
8UegaQyJUvf23z3oJgmKNL4IN1wiLkNSsrIpxUN6I7v/m0we5MUUS4eDfd4Zfgpzahp7KFcntq/t
pNncNZ5WWn/Fn+3KXiVSWhiSltEnRqH6VjNkyLyvQy56CcNmGzpYL4oa7vvb3NGOHWib9BkUL138
1pz0QjpykzpVciLkucQN9MJ2OYAVliDcPEgDI1jCxLa82SQX00nVop6+lvhvFrspCItmohjO9Lpd
Uka1O2rQNE9g7hit3wNm5NDZ4XlfGgiEKknojqNeDY9PGGkgWYJiI4bjljS1BPR5O3hSeem7FJC1
b3QFRdZT7FHNWSjqO0OLandcHNNANotNlY6TzpZGBwRPU8x6LGlftlquqYnswIXciV2vspWOycYF
HSWvjB9bUg9u9o6UxZX4La/tv7x7+ebB049EUZKDGdVp/Fr1xjoEJjqMyw9qQyjm5AkIBXHUXcqF
DYbrlj9pah+YT5GYoH95lrX5RXMMSsbRdU0YHSE++5en/2xWbgkV+a0WpYwEtjrzbQlVwbtwp2c6
4nRGxtTGA5tu0ocbCIwZv/AxDAFPcT0QCLwz7l9KqnsBO4gqaoSAuw9rS3V6TiV1iyCie/z9XuDb
R/qypcQuqjXRRBftQP/5CeMolmf8bv3gwY/Y2F88abY5fOCEEU0NkeKO9eRbaZ1eCMnOS4MER1/h
Q6hP+cxcOGGJM2gUzqD757Bdbb/HXaceRTSjw4Gw2L67E7l7buwq2IA+4FhX9gZhot2ZYzh8xMUQ
NY0Rols+m0Iz6YQlYew+SmzQL+OBSGTasrj3UY7XZcebGPAcarihho8f3Xu0QIeVN4BqvxvRybK7
eLgqtAG+bc+MSq674baMlkGHjgdsv+BsM9mxmRuH8sW3Yu/t3QHPycpsJDikY/+HtzE3NlvTWGJm
8lDhyZyvnY2MDR1SpEfsYNqZbjl5XXEw0gWLQQsIdYLeXn5FxKagsl+lMQSy1eQ6GAvS1FWWPBWC
Q1tkmn0aT6Q2iDouRvDObCCxgQ26ClCFQthB3fl9J9ztM56uHCC00H3Xm4OZb2cLdzNByFEzU+An
+gl72shrG5t8uVohWlQ4ZvJZZfwito5m/XVBLX3OzV7AfFLhMpBetSP3EqlBvqnRmj8oAG1ullX2
+msTI1RxnSyhMPnhfijQbv2Q8bWSVv9rEJOpc9iBWtOy/i/jAeIN9bl9vBaGHPRYPNlzKSFNXHbt
FdamB4/FtivEhZTztIazZibDEsUwHRLcDc6ZNrnJUPWO6gG41rKRFNm7qG67cQHgawitCU7m5Ehp
c/vek38SZvoMufCsI+UwA3m7abIyXD+n0eOs0jSlkjAtKltXxaAMMKB+EyDQFLU899ExGRvXOwfg
y+ji99aDnGGyKCaSiYaOiMrc073AgiXMallP4VUwQwayL2wqwdzXKHCrjWBOrmClNubl/bB6kXqs
fr7KOGojzkHAsEEJKnEp2/iUjrSMpl3dv1eIbGuwVi4EYJvMBeDFYwYhn4KSjN66jZ/Uf+cx8Xxg
iDi6qSJOL4CMt+h2n+gDsi0MdcQwBdB5MLMYmZS5SuYGG4QS/+mCH8n+Ky9Hy2Yq/AT/UCZzyeOn
52ev1KeVswf6MD/9smTEo235Xg7KbdRHQ/As6P5JFppGpIe8Ukj0mFEZqO6oit2aMm3T6N5ZNsiA
A3uhNksGGUfjsK5pHi/Mg6s31dElQNg7VYsOJFL4R1PQgnIrmbWF4avYR5kqsYay14kkkH5YnbfQ
C6cnFySbZa/dDkfQUesxmkg4AxbMUtPRbdB0zzlNq91jpYBcIXSF8rF1uMNeBwcREyJtf03jpXll
FcTiajuxRE8HuDtNY6bryCil7/Obiuy/pVCz5TelL/XoagX1bYp5xiwx1rEdOCn3UZqrPIk3zs3h
BiBNEXAEPDbzeoiNwvV/wP7lcPWrfmYNSQzsbCKXDXwAmDFHx0fW9zj8hPbPMEnnWj+6chRnSpiY
UHWiBdD91fcJIxvCmlSDHUH5/BPND3z9ygE2pGjT/bgSOuYyrZftG4iPkG6XmRGM1k+aTGCWuk50
ES0tHaAH/Hj14QiDP/zjyJJ7CAUEw/L+HPA+F6CcMUK7j68YqGR13mLtFUCEpUrMhapkUjWnMJSh
Y/d6keoqn1pHB0CpsYbz1BlzfoyHkFvMA1F71I7XTpWhA3pYg4Um7Wy1i3/BvozciYaRnnyd3pCH
elY92tdEVG2b32qre1EsKVtNylIEosRfwYvu/gfG8LmANRSB7asqKejKJKjB71jx0c9mhmIL6Tc+
Spg7vEkxJF2m1qkcnWKXUyB2LyH1+om1ZRHDZUtJSDRSa3Fi3e8RNtLb4esTkaDMDTgfWAbZxT/M
GIDaWW6XE8BXI4tvTSM6Q1ZmtB94jb9olFkqaoU56IsFT0529A0u953r0O2QJTA7JJ5W10bF9DiK
07pQlZpJnoORAlbgYIPlOtVJFFSF9n3CZEJlXQIDPD6OrH+p8Sq7dihyYkjb7FCpmqWIbBrzs+3b
KtYRX54IJH7lCDkRNJGG+L73FaE0z1ehX5dJQPYHEj+R3QimpjT85d+j17mnYRbnQ2OOmtYUqm67
CiiMFedpQrsTqsISTRQiHlHO1QbNdVujrwPHurd2EfqUDH7v3EXpMoQdFyzzfBlIdzIeM6pJKxe5
oXDtBDudiZOy7ixDZfFnvFFFSc11Pt2w2jeUOwiygxKKJVMRt4HEBQ9C60xO5zUaO8zbS7UVFh6Q
hY9ju4J2wF5xpKecwebbsJdC9e7DHSXeYkgZl3FArCQ/MAbOHjFeHmlh1DCsfvZu4zzPzDZ/cRlg
DOQmZeBvxc9Dgb4bQbxRD33OXV6fmezg2IEVsJbNRWojz6Jis0UvlCK9F/xnPE4nvGTCIwfWi3Rq
KzCk3MmA7f3fGI6FaQ92pFAIZ4Tt0bL2nc6uP1b3nLWKljkk47ChX7BMyahZpjlZfdo7qSado18p
MP2S5duMQiKbhjjVHL8NggdqzEMui/e/0D0z22fIIO/KYSBfWqp1kXgHQ03CKkOJj4Oaw5mBjlBI
FjMFqfcjklKRW5X+cPJC3/Pg7V5bH8Crttaz18yqIzZsTBZPx+giZJ4Dhmt7qXWLXAij1uoPdohU
vgGMFCKre0RTmD8w9kzlxMJVn7wBiMZhNFXGAWbkGUgYXK0S6YOM/Ag9qYN4NAOfMCb0dnoYNCxE
L3CbtpbKj+p6IH77noyfGGFvpndUXSwmaW5dxUxuGXKtQj3tXB+PQ/9I1TxOmtIMDxNSJFzhaYDa
/yyrfT1gRyEMrbh5TZsIjQkbARVNAzXoO6ie+7B5m5PbUCldteHkppxq3B/mXpzRb/gCZoXBItW/
MZKQhiRd2MPo7xIEEJaziieUnMD3u3T2ne9HYBvJjJOJqd7/1uRRPQqGa9LYwnPDUJcu1NJqy57m
icHoeyzQRaBcm7X70rfGVWcIS+a07utEMIUQUHhyeNhAhulwQz6sfj1mKQjs5u7wRdDA/gSrLpeu
ztd1HyXHGBCn447UjbmGrac6JWC6FsW7d78j28B5/IK/flXS+Y95IS5H4HiXDVmzHQnWHiPOP4Jy
WUUCRsYiJD9qLhbV1zuYF7oA24H76CVlgJ7p9RjsHc2/amdg1strjjmpbvlRrv1KMWaOBLNy3KbJ
AUbIfszG943nI+TizF0bCerfoFDj2GZF8wdnlsr0ni5kOHLXmOMZnCu16VFeJKTqx3azUubTlXud
1BjWmOfRrY1RCoCNZ7B0aHrkkNjsSgh8vp4501U191U2UhI/+OX5wfraTI9XF4I15sr7lmvLbjw6
ybXzh6vvBnSnen/j6vriWTXn4bUKjLbazhQ9q34UxppwteNEdBlsayZVcjiM7QvXHKn0dRRutTBj
vc0CCBKAYtcSJpkL2OFt6mhATOspxmAthHGXZeDEZPXg0Xwd2XZIJR68e4xwvnZHe1IIH8P0OoRw
VJFFf9KCebW3thttOv+P9rJfrCFb6jrfUeEy4Uf/ywnbosGI22aQCLEOrhI4eMGEsIrX7aDDLQXz
j39DsHOVbkkBV+KjYb9Ip6QS5mfFcsJt9pUJeMmKC/LkwYb/b1aL3pLTSEen19WdUZxMY32+ikDk
ttZAwMX4ej8pO6+Unk6y091UVO8N29HmMAJL+mqaN7p0csAydcQl/VaBrnePesoZPD7WeRQck6Qd
Go0vJ1/VBXW6cekE3IFCTwro5R1+EAsvGSpPz7oiz0eDSpgm4Li6+DxCx6A8Rwe3etpV2PKOmWuH
5zDVQv4TBNv94JoxOFwL8mRJUjSdntXZCli8kpHbk9cVeIszO7SAupvTKZE0zZBAKTbJE28Tm+ea
E6H15BgymGnQLywtZsrZ2dPk/SRWV95TbyEJ5tLhhunOLyJYPI9uh8goaPYy0SWiXXcuZh6LeEi9
anRkWlSS46OMGztBBFD4PNJVl+73IA91A8d4OHB4ydGyQXhzAl2+xeHyTEPjij9FHCfb7PRDdfI+
TlkDAxfVjickaToY8g6Ph9hY3DUP2eWLEm8++b+NBIV7J3qAnYm7PYZINNSQXGW4FfAlbeRSTKsH
zg+PJMTlHOnwy34Ja3KBcKHd6Oc+6Ol2tQ9Z8HtJdYUHsVY1u0w7Ei6eB7AU3pEiQ7AyN6++o+4j
6QBWGAAfdIXHD+aUrogGuMrbERoaO5m+jA/BEG1PBK355tL+Nc4dw4phiqGnOaxcfOemi2amxPUR
YsHFPlh1dAlBtEI9yH6y4R7PE5kAhi4fsuMiXLYUcUSnWeAAjXTZ/P/0HNFA8PTnl8U52jRc4jEm
sbrdO0OxMqcs4v6UmtGZYLY3D9mymBk2WB0N90rJVmae1jaLDNcKNTvpt5HFFGAxqkAdg+4ap5J5
h4NGK0B+AI0iFoGFg1Hsl+2GfcwAI+6S9qizxtQIXQWQzEXRKqChwpj5vbT6g5N5S2csp/cpslan
HUasv88h49E0VvaFgBt34LOxkwXVkrd9si64oGWWtN7BMadRz4SlCdXGR3vTvKZlJNlaQ/oZgOEA
AxijVI1WLY6jIxkoJdadTEfLRrSzNr8zl4+USEO2dXCDungG+PV5jQECPAAiuTfp5w6ta56ZKO4i
a55bMOZ/ZtsmpXre475FQ3PSQS/MW9gJMy3RUqgjvsYKsdSdl/XNjl2vTprVuIQWM4CKbfkWg/Nd
0kcTnzSYsa/P0WeUKJRKFB2CWNV8nM688F809XHLcGFQWJNngFP3G2JqM/Hw/UhDfX+Z1owBnQNY
auYLZZd8rtj2I68hr4j1cIss1lk/gMo5doVi5tLYL2y511ChvLyLhmLirGB5PYl+y/puV59Rx1x8
OnmHdKdkfS2C19oD9l/cTXxkpeHlRciM8s8AnT4lpH7In7Tc3BGsU3iomMbTjj+ODlisWihHjrBB
YZQlONQkDSCRv/pO4kBaU8Jwir2B6gKLX3BPZLGJZGBrNihQwidYWiePor22iN0juIic1bTbE0WF
CS65NNMJlrQNX6dk34vdZMLBIIsUgAsV94eI/dU/CZT6Drw6UKosb94iR+IYG+ZYmmHc4vLDZRPe
hXMsJn2eR1g4xcT9wDLRJ19eLiXjX08tFqzUye0om5LfgZnXVdn3VIaMAkXDIA/1jC+I9xaHz3Vu
5IluPoAvv0d/2L3JqsnDUPQSQCTn4Qfy89hLgSb+GfW/zPbs6hUtfqHqJXGMQBD3HLJCP7tVEGCl
kquHRq7FwUPO6i+omn1L8lpN8DDsukcW2F90jqSsdl0uFX+TJrXgnN25yopmgK5fRDC0f6rG0muU
5zYRJCXP9yS1+kstFeFDCm6Rg5EM3MD/8i4GzWAUMS093loB3M9staSiU6XCYCQBPyBpLTfNU+hz
ID77Ioh4ajZAkpxHSwRjsSFLKbMy1zTmlD9yt4bAThRwLGXsiw5/Kqp8m5f8CjsS6Si43zUroGwV
/uNMyU1EuWmzpqudervz0g032uLoxVRjpbBSgsAv0sUuitX0mKoRA3m/Pl7fBkH5qGec/vlnXOzv
GP3qIqBqTGB4rX+/wqOFUefhID+QpD7x5gwbIiErJODLddTxQ2meqkyK8Pz3JGEER3XSX1qfwG1v
1bzsNkqvOvqtiI1oatW3Z2uI0LtaI1FjQaQdVVn0edq/EbW0biuJgAFXVis5C/GZmV8jQR+Za5u8
ZbCxYUqGxGofFUeBi3Cx84A/woT/UnZ6jQp07kqmepLDoT9WVSH7MYYYbDTba69GVRQpwIyqJ9mb
u8NP7UQlb6+QRShETpxgNIWaZszhBu9/8z9ntoE8LX3SAP0AKd4yPfCO1aChb1W4bJvfHMay28Ly
SldGRiWEKY7oD86R5hvxmKktrxwkM7IGiDXHZCAob07Uw0WNtAt+jnK28pZHk1vW1DHUUCbK8Ygv
QyyeT7cWi7amteoKvlO3BXUtxbR8IZoUJBbHcG+6o9QMXS6XqOD+UszgTUCyDMKjD5NrF1HH1eet
6BKlK8wTkbn9XmEGmpQT8746dE64hMY9xMHfiG7g2KEQORmocUUs9txhQgoMw5yHPC000SzmpMc5
RwM8ABGbO6tmPzfHR051dVK7WUGiBjpNw8wyalhGciN2HKbtgF7yVLRnf9DYTo24FR+Y1r79Zes/
LGujPpu3ajR6ed/nzO9P0T762jYWKUYl5j5DfQEH4XO1JTousjFALjmwv+fipxa7d36cDof2lWXF
MggC0KDUN5zOsNCxhKbYwInitUkKw0dWppbcNur3bpeeVNT21rM5OBAo7LwGfOoCPV4K0prKsrQr
Fld8Op4S2Omvj082HMpf0nZiIGpPQLxnXBZX745UFt8wh4Wy8kB1pvHxzu6rR3YzBJS3Svrdw78H
WAxaDCTIHYZ4PWesJ6X8u8NazW9bSL8fDhaE/3COwmRD+XPOoAoot/ZSealeemm17XxqRdGX5qLX
QPUd6ylHfuk3pX1X6Nyj1OHIZye8ZVSmUTjWi9cxpoKBG7Q1P+GmE6FbNOXMSWN3Vd1dw30ZksiB
OGlMWpH0iFKmPA4mAFZeKEhaGtEiPXMojmXzIfRNNKSeytK0Xl6S93KDQVN8R/+IaraMf18VhHGW
w7MWHXf1LOYu4GNh09TD3aybeTXY58QxSE+KZC28QMRSUMrl0lZefvTeGn4N7808PTwxcT+h0KNw
+kQHEwR85ljprYWf1eWg9Xhgs0K3anbxTSdABu5NA/ellRv4B13RQ6atqJyli5HfaKEf9uNT92oU
J4KPN2wyDB+t2HSpwRn/KJTETr66Q69WdwjFq2AnoW60zXdhx1Wwv/GK2DgKT5G7C7loyDvGE+8t
c0CITkvpzgRqrmlqna4Q3MCRWQhEOX6EuqdZJM1qs0iDkp/4UtUslc3lKXcEBiIfWT2SAka/SoQZ
K474hwa0PsZY02pTE73E3YES8B9gy6hVUeAammgD258bo0QC6tyvtBIEEQCLBf4FhDPjRinROtzO
J6BWzW69or+JPviK5XktcIu34YMqM/tElb6QINSP6V8H07/JkbXOgDFBSchTErJuV5dt9FenCBZ5
mE2HcgkbqlfmtvnB0Y+nWGV3Q9YvnpGkhvdSfeFAy38JxuKRoQE295kml26+QQUmpaySejA777uG
4jYYjZfBs3W8jOTiqazuCWQ3zgDMElaRfFV3ueJVaPXm83ZNwnbhnnutcG/yH2XgPGrPnRqsWDxw
dnoaqih6YKFjpEHywF49jhCE/roLN4dPUz3c76zwGiUcCahxqbBYTN/pmR1XJ3xgpN8zgcL4Zm/4
H2Q/bHgwc16xj6TqUL+8CUhwtLOerQDu5RMlYLf1Ozz6gwgOCQH6WUzTBt5Q7sO06V1fTRj8/7cC
0R0s5ssRa+DY8VxpgtRQBr1H9nhT8qfrGE2rCm1c+AYKPYQVOtVRA2kDbIhjkYfHsj05nCyieULI
JRQAN+kNo47tIpBoT+OYxOSIC7Y4NW5+7aIChd7ti5XDe5ToErbhvMYj23XwysJr4TflB8W1PsG8
DwLff78EUFmHtdWlckK3aYUlFCk0OEopRLPu1z9uXfmZKl77vWbxpsS3hbRTWLJin+9yUX0EawkI
KTj1k5BzECRvIz15a0lf6v8G9MmYBrt4r4ya0NVtIPXaisjn3z5vEom40jY77AAmkod7Pkh76fO3
8tkUef3OB9K+sBZcJ5P313S5S/0qzgAl5s0Qzti19wokwVLhgK90huClGxbevh04KmbGqao5XxV9
JdhOdzOgdAcPSMFU/teZr9MnrmVrYlpe1Sjh7FBqctQztSdfG9+tQiGJYBmfEZZImWeaJYh+XvaD
U4Q3b8BB79hU2MlhDmVFfA7z79aTN6CUKed8Ru49f7qBp5iG7wBZ/aa0iGFOLqPurWlGxaMtK/NY
spre6HkPeALbhiYlC7V8vPwwDNPHlmU7mLzkP6Esl2tptpWWU2oOBdmv1R9gWVN4eIDrE/9s3HPH
3HcFG6rlq/Ti8zePMRgzvHI7R6FzJJojfDdd240fd+MrAYaYVYhWEQy//4a5k9oDepnco0JAleYU
kqbgqDh5cSLT6+b+b+kiLHurYE7Ebx/3UUR5OcPMcr8w4l4M8hUp4/n4ukg+rFatnvLasz7G3rWi
NSFJqH4cLP1Nw0ZyG1ssAyvIHQWf6/vhhBaDGruq+LhTnw+VYBppmjVH775FWA7GO2eOd/G9Pc5K
UIhbXtnBc0eOvMa7DrfHA5AmFXSsH4YlG17kbJCNFjXlBIDIBOVdsGJLyrq/XKwW9gbWOaMQdGbx
cNnCHPjMu6aU/F0aS0QtfEj0RClfBS+2ScGJNZ49CV8OZzpqgFXAwFbpMW1cbyFhiNnlyWrJm0oW
t/YeJ+7hQETsTtHKZBCXO6YYb2OTfAMaT4P+Dcl3SpRML59J0AZl4lN38I+Qfk466olUPWFXuAMP
hJMiuKAsyj2H8zIcg7fYMMY3rWoAstQpAbg8F9NCCLsLp6qz0syZHzzLpHyFeUqi1dAWJdEcqJU6
2WSwwzq7Hb+BV8pOKqmugQ7wQmh0PER4bKEtNGmNG3//hj9Hes7FaeC/PWQ5j0V4AVeLsQ7jveAY
lvfCMUFyZN844JG5EyKFPDGEMv72c19PFJvmt3fsQ6lyDyg6P115Jf3d5jbAkZZOm6abyCItN7dG
9yPkZ+eItmsZGjSUhBW6j/HmUtgXKMoJNY+xFRddFyf5xLQCR0Oj7mRJbkscDZGqytZ5F+q5UXz7
KbQ+rJmU6V55QVWXd9DZWNtFg5VBSVktqUsAVxyg8VadJuIUcFuhLJbyMhsKKMh1CaQVV7S5QM9r
COhpRzgd7CKFNx75WM7sR7oEad+uQ6kFuzXRonLiwxKVV1+osze0WbZxAiKkXc/krcb9sZtem0DH
ryzySPQ2JBKmDLNzjauMNlLI6oWw1KITEus7GTzwZH5P9bZBQYqeixHQd4TUAUlTP4SczeBZWPKT
8FdJTLaToVymMlyxIkMTTxySScfz8+rHI9Gv2gb7zckR2wF6og+NxmNrto/ct59PsWEHhE1cCg0Y
uRHEdyNcu39DtCK02IOUowkogKFt8snZhv+KDO9oIPnxSNzbDvBO55iyQ9iTglSJ7xl2kdVUkl35
cyiKO6Br/ymWDlXw4hr/4kox2blGzgRdQHM8J0E8IKYFG1EBVU7CKg/7AtYjAOTv8YSmEXUatwID
IF2gqGgonWRj+CoI+0h6s2Mo8+eOSOlutzXklAwdP1N7+b4ODMu7izAA40Ha5BSK33bhtDFOwmxs
hGBmWacsVWflVgmE+PnDyog3wWUX/QZItXYnA2rpiz5CZVJ+SoXrWRoLVwM95gXg6XGQ/LYer8Bl
xCrkVSy01Y0KhnQYYHDnYQbkvMuoBiK2ciJb093bvWjGTq+s5o6I4gFLA2HwLVnvJmNF7zUT3McG
+WfHc2fxysuq4RB/kRvbs5ayEE+D/6w0LHEeWFttakxPRDpcW+YPP3M8s7U0bM/um8+HwwMmjnft
m3gDlT1n0fPz+bwluwAB99SMcDRiXDOBMV/Neavymbqa7fZQ8IHYLl7L+5cesy4OEUWKkeiDOqGS
X/6xhh8jUfPHgS89rKud6n55mKAyf8PvyhlKKsHA2fUTR3lsyvu96jkjXknVCDtKhqSHM58Jmq4z
Z1MWY04rreOYeeP2K39X6CAhigOq7wuez75JZDAwBmXiUp7Rj82BKdiv59pmGSnRq9kxSvgqiAHV
G3yxgiuHSb8m6C8mtIaZkVhUsb1sLS2plYr7Bc8LGWs5qz9fOIGFVLJELjXQwGb37mHBlqQsRg0Y
aq6sqPleAxwWE6o5KuH2mQtQ3ZBx5CxcBqdmQtVsJ3AIxFZVNAIz70ONe2BgW15oFqY7v7lNxhGw
4XO0eS8U4A7yCvRQ9q/x6ocXP94xEREp+tdoWcNrUQYGTDriUVfQFGlahMxIazV3huvw9R7xmJqU
deOUu6uO4eMswBlWA+fLAULw8Ib0W6T71E3NIOFp0+IDaBDKxtdNA12KP9xqIYqJYGvRdnK+Zxaj
/3+i+RQlMKIAxoLKd/Mgx/16JTrZr9A/1kbDhPzCdKucjio2fblRZstnoJ0Ong9qpNywEFa6hTLz
cjkLjJ6DArOpOGNqWoY72CORFXx1ZIl94Tmu1u7Xz1Xs1W6NEM1xGl+zUlzqbMGBtL6qPzcKAy7k
zoa0qgeq8wv6uGRmvIXKBxoaM889IWmmQiHXpExiCyV50Z6EWxMQTHU7iTgxJW3RNTIVWEQ7/Y8n
PgpXZWwAt2VNhJCkCa+lS3OY/eipTEQo4QsFE8ZaTxB/iurB4LkJoWPQYjrM9bk+VDgpWAroyeVC
fY2gEKlmHJU1fqc1ed5QB4cGTBnVZo9laVeltn3o5LNYtzqT9Nu2BLKqmgQRtBpADkRf6Kq+agOr
ccH8K5cX1St4+kC+i8HGyK8ABuwv7UkQ9ZOd8b7elqpwsl7/DKRU4o3pNOHvXOiyt31gt5YsstbT
3cRHhUANoqpPc4z1CvrDJG6rLZZejXC2tXjRmDU2f9+qO2K2ACe0Z8VOInO1pgcl3710fD88Ndw5
v9imVQuFXfs6rLWEjhDgVzYl6ky9ceDwYAL405hQ1OBRd0FqFq6q0yktC+OkYvzEsXaioF43uApd
fli+MEaqi1BeIbKq8TWjlWTgnAkkeNsX42NXYvJsqG47XdwqFXOLw0cZEnQiiHH3jiafoEWwgRTy
0GUCyzcPuvTRv+in+wYM1rOSCqmPd/yGO4DrKQTr7/H1HrTBADb31FSGzAtt51ID0sum9LFZaBEl
PIcxf1ljSi5o6qfhWrzBlVDiRzWnyH5JjOrCJK2/ayc8KhH25Lw1l5xCdyGIe2PNBzd+YW5Hgadq
N7pqQVro18XCmLT7nIouep/4itc+vtQyyH1IVeKbUH14kzKxqyUGN5x4/av2+yzSE1/52ZfenF+y
wgIxEyj9Mj1DrkYZwTtIjJUk8/k3O00mhBtKZqAWkPhWJ8L2T1OammKydfpMCp6kcLEgtAFgkYKE
XRa2W4m6FGCyBF/fqg8d2VBEt+VV+D18plmMNfLE/pCipvOpmqBSlE4Q9//FPpV3Qn5ypxTVSxTr
zsupHWMow7P00ZHVtSmi1kNFa9+PU/QfYXoBM+zAzvI8Ikivpx2PjpkUyHWAUfLahOZbDkB1Gy7u
kbmIXNFRycBQxpjpN1Utr/98t7wFjD7L4Xr9GsV9tfeGUVjduz+BzWfFtaGV4MdXQs3zagyTzStz
PcdE43QFfT1JXaYYc++aeAVXXBjCtS3g0NhBxTWi04RxP/B5e3aAcJCYBf343KcFYWQX+CnugnXo
O1iT0dVEV9pkUZ3xd4NCxd4AmE+cNqpp1hrn2i44Eb6vZKd0NV6xKUvCPOc8aHmfvsO+mMa/Jp0n
hUaxmW3KzuiDz27vy4BM04Q3e6kl+zHg0pQ9jK+TP+zGuqnQcG04SjD4FKENDcAxtXQvTv1XVzNX
tlWSYMbqgv2VE001sFSHBA6PvDzM1r8Df765WVcnkqjF0FyyUmTzWPenGtXeMiC0AtLLWnGs3HS3
cWkzh/p9MxpyoTN6yfLfs77rUB1qhNNh8UNYZIIuCfPPn71i636CmDLpo1QwHjLosS9t2Qs0daRs
3r1fJqE25zxp6Z46K9KXzmKPpXs5PHHnOJhupTjpK0SFKzJaNYICkd1z3nY2pLjyER86xZRm+MyZ
VvikoUurYdwf0I0WCFeBCxj+QD7WS9uKFVrIQanBw1MEkIZfa8mzytCB8hk5eDxSitIpSM8wtbLO
C867f6tRBtuzTXyxgTazygkh5+0edrYsEl2G70uJgNxH3p9h/RCP54iwNrNcNrYOqAlxSn3zMU0x
NmC8MJZeP/SNa1CPkavuq8ejPqUQ/ksVvWPCVyJaN3iioYo27dJTMx9wsXrrJEcR53R0d1LON1mV
7EyXKWtfLIWpIT1dTTzp++1Vn1bjigj4D7ao/WT9Z2mUDHldLZOUzntLKfAvrVXEOWtZpGLpf+C/
iq/mKZ8JgOe66/SSM6MSSllFjDEd2sU85pt/NRvXWgWvG2WZx7HdRvdDu4qBup3MaOhrhTWgwOTN
6E/k5mX79TB5wQuJXhPSctpacMLJinqN9mW+YOcUOx6hEjfJRIMveTaPJwBSqxZBHnsmx4ceLaSV
pMhdbe5PpS+TbiG5TmecMZ3mOwoUOH7xAkCTKzQCTctorJHQpWG8FrBS84DKnD0zg3IjqlzYbtMJ
8jWXczthJrgPOwcTH8SpbEKEsh/o02OEq5cUVlfL90l4UE05W/7Cn5xndpt1D6/Ks0zSQhpMKqTL
9t6xVSaOBrb7X1KebdZrQj0OjwGA3pLjvs1+av9dRjb7C4WX7FTd3D9NyGpBODDr97ejs0gWqqlX
lHCDQ+b8/6C7FuruS2Ub6IZPpOsbWU03m2x8hAHpB6wCVVa1tfDXK0d7zkLCHggGn4n9kMl3kw5m
kcsn4G4+ohxkSNBW7qY8i4BlTlPUKx6vl8ydx4Mw6461QRk/7SXeliyyNQDfmWU7GcC5GUsZVXVo
EeT8jLcXWHyEcRiocV2hozcO+bVWEOTnbxni9gI/ZKxvUY6DYsvRzIpvPLpSOCz9KcBcwtR16YiZ
+e/bo1zQRoOCkIdWlJXw22qxPQ9mZpbcDh1Oe1DYtwA19xk8pYk1J5Bi/adypV9LM9o2+vNDNMQU
VM4JHQrZq4ncsTRXc3/k9QkYXw0QWe8CvIetoK8OnC9hOLjsFFFIYlLuT09whNu7mRMcHbZzzy/E
4byokZluA0++Z51hKDhCs8YMr7LNoAwtKvAl6gdsZkLvNTINLg5/DX1kD/dmA5CC+YL6wUkj5Y1x
M03QDizObZAVPOXbuieo1dH7fJMM1Trq20O8KRwFPXChJO/z5smMcFcZrf66uKPhHl1VmSRbibV0
Ncatk36cF0Xbdbs99gS4dChZlyfB0cNXtJnCj5i/csxyFK5r1rZvcIFjUJcslJxt/7OWWNNcoJpM
MMbwIZgizaX3giMeJp2714s1as8U7guvoMrjdF+sYvI3frErn0J5MIwRHfqB6G1KG//lXsqZEZeZ
sabnrky++kkjsObXjou5XSgB3FsLDDx0RiTsufQTl6mTI8BjmXTLgF292kb+M+jrCeU1ZX8mcKG3
qoSN9QyDRnkeq4Oo72HanHFisroOUHJ+E9rztlIWgiHitHv/FOBXpwXvZlm5lIv804hScpS2MEJH
1HqmYpbbbIyX/GOGezts/8DsuXyh63P5u4uCqFlzFe0UZNbi+qrHn+U18x6YCx2nWXVKM+YA6Seb
Ey5vfrvgvEsWYavGtPGeti1w1CwevVdTcBj0RK4SnuXDvaeNiHqAGQ5lHcUTRfjqY7fzeN7GA7GD
qD1PI1KxUrmYj9CdoEDKfaRf/LprK3PWVCKjQGPaUi1dipwCh87E4u8yUX/GGhn2Qa8LWhOTlLwD
+dBANes4eMzljMo/FFlUUhZNZEHwBDa1E4I31bfz9KuS4SYgf2Is6WbjE+/dfcjYD+47ncg76SxZ
puFXaYDZiVxSqKk1I2raEY3AmG7wuZlVl49u364L7NBpLAe2ZZnajUfd2i/JwWm8a1MWdzfT3k7W
ztrphRcq3+vHGTuLdAba5F46fbpgKnGbw1wK2fFwEv+TSKXEnLV83F8hc3NgBFx3tIQA9RmQftVU
7lk0+3nF6APtdm5WhSSPDRPVOpNhDrt6WQnz2apz+g7rcVPYrR9AdOQ4/9i+slLVU7CJI8aS2Q4K
8Kwwm2z+ae5Ol/tm1pQuSn+fpNySjtFrG2R3vBBolxMIGX4wNvsM1pzuKNXtDIpSIH9E0m1j7mxE
3P5POgRCikYWsYIrCfYsOHXwrHWDdWA0f/tok8bXg/iiN///Y6rz93EDKjGLawXe+q+x1MZFiFre
smvMerinRLxQtlu2mKIigRP1I2ib6SO0mPRQFfqrI+Y51FDs0UDNT55SjbKC01gjRnc7qAxy2/ww
qF/o3oXav8iBXuI7kzIqPuctBA/EhyVNr7S+6KdTjYlVkCQ0ixNsMj0yhyB4utEbonjbuWwS+x5T
aK8s78aj+PY7fYvmQ9CypxItJ0fGIEE1Xu5zSJKkQST/zwInwSmjv1C4zMnGS3CrjGZYnaLzLS6x
kZFbOArw6DGi/1OXyzjJvT+pW2Lx1f6KrB8Y9nmTNENUu49qT4wdLD3kdZzsqd5YM3Er3aCqzRPt
S2EnphFQ5yPnmGXwSZSOaxBtOXlRQkEq46vKZvTU/dqguQiivuEKFoXRVlD4M/dG+tE+kF8JFGlO
v/AOFKZZPbMflRf0oJjzM07MRxI9W+g+Qs+hsFC0vTQ5bINGqmkMSCgm00SIzt0AxO4TAWR81yGy
aJy+eC+xaTwFABJi/T3q/4m0toD5yyRli9JkVIM2YN40MbdGwH3jl6o4+cYoj0wHRq0XaUOVE+To
EvdsNIdTj+yW0ZQgJ1iOF0iXQThJ39W+2dWEgjnrhl67mFMcyfrMG1jxI385h9e8xuBUIzFFYf/G
rgjGmpdekp0lVLmrdJt8uuCasw0ZFNtZQILidpb8dlm2FCT4ciLDrVlKfVckMNVWOd/rzXXeAYe4
3z882m7d9AimwBkdsHli7nplS428drSlfSorU9iePB13JRVH0UpjclFnlOcuaGaYS3ewfRcn83i4
dUcTazCFaRniXrwzweVdlRKzyaHlL3u1SCZ4iXXUVrAmhIjuHVGTIjSK7WpKOODFpFfJxpqhZNL2
j/ScXKLEAN+cly/5iWXpftcxEQvGmUp07nzr0SQUsAaQqbZvJ6IQCdmotF2juTx9LliSKzsIUseM
Rmd9HTDS37578pDyL5IqMnD1RMka67wkyv9ohoS/RisnU/MTBkU2IcEPFYsejeJjet4MlJpqx2Nu
7wMDB4trPbWNnq1kp3mhzxoFO4bwZW3usUhLaE9mNzXgvxqwKMtLv0cE34OmdJQ4aEgPLX7re3gh
IRBmvqTtSTU/qKEoLf7nRYuY5uHd/GFwOcDY5QP1G47o8AjIVGOHF47D+jxz5pZRE7XDkAg5Zjta
s1sJ753X8bj0imOUnCZF440uagf3P8O1b8ZZd2oK2/kJSua+5/44g5u5gG52CLbkc6nj86JH/Ev2
SUUleUOgjElRpP1j4tFF6cUsGisT1XkIfZGCzn/ViKbd50OAIP0J4MHy9VtgVXO0tHcmkOAvyeBz
U4fC3l2zsVJuuJMw2WFsqMk6jALcRm22gs8+hoCMO1OqgIE9RkHdm4jhFkg0Ht6pJsuRGBIOxGv+
v2xmjImAfPn5sNzFyx1q9oh0PIHN5F7HYKuy2u89jj9+mzTZzSFL4EVr6Xsl4gcy0koZqqTwTUhT
jDA4E8ORKy72rKjFi965vRvv4g6aKB8iIAWyDdPWRf9Adq1lPh/90cB6qe8OfWTeorZ5r2wfYwbb
KzUslcXwf5OpYAOj691Tmw85ZiFqCA1LNjcNyVSkIsszjhkjJHp5IGBIzMRBaXUbWAnwbSCJHm3Y
9Lo6BlayHUsjnUVtCNZnNZNvlLnaw8E+6F/cKI2XdURC8WxZuREyNkM9NtVIGXQmiQQbE/gCAT0/
dYyXKUvKBEa2gqcPcwAjrY36JWT3FwZpnUvgcGXAVWDBsvhF5RIxqY3r3Kj9Ff1rsANYaHswsOnK
6O8aNU5HjOCNQIfKi16/n0uLuFV2oro+GpuY4DtUqDtCRg1GXuYN13u15Cuh4/xVPYuZz5yCfI6C
5KI/pYRP8Uhj+nHJwykf3oMwN4GZeeyjTMuaTeAnnfLDFRLfBCVFHwozMfgN0HSkcV2MX0zzEexM
8CZcandxUia3tHUD0RPEokoNr8ijx1ad6PCznWhFs0m+cb9JjzA+b/4+o2cSWwlbTVBf1FAO9hc8
HKVGbIwPztgiEfy2b5B/Ia6By/4LlVq+ir10/k3WBtlaz2vNe3dfIMDCSQMtaEsFJmxCaWvrpVpE
d3C7EON91XC5LeGcqJDP6OTvaWuhYo09S2QVNYGK4iQrq8EKzzZdmnzNmoiAYIJABhMIBf029FXU
EnbF1xS8uKOhjLjgwHvV0D8HAzvhGHcs1X55nUTmf+/Sjs2/aR+de+rUxZ3YKYmXicV896tujTgE
CWZltiFoD7e5ry/fczGy+S4BANViNI5d4O3cr8fEPyr3eQjTX79qmDwOnI3Wd3XhJQmZhk7qARPR
qdZOCaSR4ouz0agAGvAAwKQUkogMwd+vfhM0xdECTjzUknn02k6rEsT9uXmfgH65Xmt5Exm9ThOy
++PP4trleBFEFOnF1NTkxUnp6L7vXfoiMWFHWVEqlx1xnMXI3w+SwjMuJLcjOMK+xNtdmmaKsRIq
BHy6OlTY6qLlb49m1l7yEecB///z+9kLbuxq9LDZiFL0ZMz+btQq3E68OpqKl8Kf44SE9/svyRRC
k98g5ZFpVH5wdyTRkut8+vBr7zk+XiZ/LH1IDRySRUpENhn/G5iRNZHDWq32lrlUMuqnbvk9eBKv
Li+JeuXJqCNXvWvWfpqZiJxbigmYWQSltbNASwBUVNFo3i9I3bq2mN9+xM+7yqFUBa0jRw/RQkB6
KMnSlpRFxzu649sZ14LWfUvDEGjplQ+leiAV9pzgx5XmL1G61VLqCJmrVhdzQ8I8qq4mDrnx7DAf
3iPUNRAbTukf/97XvaAEWX6buwrG/3eI4Y0B9VTJAJj3KLRDROcKzqm44Nwuo31t5ui2BTgpoWNd
9qfpwoDOHkQcy5uxTy4sJWplRbkP5QoEnGKL8Tjpu0HkwQsPwtrb6ixYLXwBMWbC9OXVOmEmX0JZ
sIXhUxjyN7gv4zZ118OiNz/BotAUsvkaAMKYG9EreOzgqgfMDRiLs6Hh4dzKa6jzddntgRBvpDFJ
+MOgXkLaFMX1EC4YlS4hHJni+9TjKh7bG9x2tQ7S/Mtgdazhr8YDPKwdcN4ZPz8OS/0sTMG5fJKV
2V3VhEWeeEibZ+c1i90X8FWxh7veKcXh86mTxaeZDrtfch3mLwYGafGVTJY6YOCdeEtCHQdMUhys
hvnv9JtsBJ4n/fXwmSDyFr/h33j9uif20bzpsYfKiIwa0BBd2IaHvydb3vODYDFAoHom/PzfFGVr
EXwqs+SilqQaS6rzhoGwcWzzprBVT/H8yNix1IGMSwoGRAakvsA/Xl6TbFoF0QLxOCgLFKJYpfRX
Hd4MA4f8DS5CnZTWF15QYB+Ae1hZ1UQeSFO/BWb+8mDJrhiH/20yzkPfUSnekVHAcpiJSH0gLw61
l1N/nV11McJDrRKhQPk3gcq8J24XNq07BHJs0qEQnxOxkpVntVrfoDVKnj0FQlCIvjDrXtQuLPoE
cJL7EKJ2vYiC5Gk2adu+p2NsNpRdBYpW/HynJEfURNprYdYwowL70iShTjF0Cjy2z1nyl4y3ME+m
/wa3iff9nSXOVmh+dbx9Xsme+KZUcFtgaOSCs20bhjtmlsB5+ZSHO6v9EW2cjfyvXCCYr9WuYauu
fdfOOiM+cFeHk4kQN66NGCp6GAi/BRZ49Eb6S8/UimedK9NhZMzrY5sx6MM23Oqtm04URSAxGXyw
rZpg2ZrxAavYa9P3j+3Dugy2CmaWhYA90i2iCrXpBLhMnnkn1ubm5bCzZQq/Cp7fM9PR9UVANWU/
/Y1o53P6Nvz7TsAO2Ua9qtlCozT4vv4NLRESrp52F7IYeFQOMBrOkfzrDdW4TKBx6OOc3iqd9wUx
zcQjlKAILAio3Im3G4K/GvDh0QRvF4GRrYNSLAYHzyE4y0hf/PZ7dq5vQtXAthMP4SHPAroJzjpT
xYGt3AwH4vSxQpP94N1M4NcFh3HRyGOJY9ygEhtQBdRQ1W8qYP359DgwKndjVvVishmV8ymWLfqE
MYKVgIe8xfwfNRieVaPqjPaDnCyM4oZa0mJ8sfikiMtIyqJCsmsWCRo8c4Prf4OTguIpjmE2VmX6
s+yxQ6KWGTyUW3y8GFpD2//VamD/YZRXqbU4WE6+Ld61qcxd2o/9o1+NGXEtgZ5mGChljnMzRv6g
1boK2DgBuqak5skw5xt73Sqv6VSDexIj9YP4I3XiCJs4j3teX1zkCealwP6e/Xgib0Ki7ceBaIA5
M5cOqcZyN/bv/Ow4R/YPAu6er5/tswlcRArhry2p2VUJJHzRpX+RoDmJGZ5Ojobu3Xx4JD0S5+9u
uUwFY2RqsHrP8m4GA0iJNgb5sr5VtwK7i547NV/Yrg96PlVAP7ZuwYekSbtZq2qFDUiHrXgaVJnC
PIO8YXNDsbazSk9zkyL23WFPC6f3yp/vWB9PSnNgyylCS8uhK4jPHRdHcFse3tfPyGSrU6qUs+BY
PIzDIo+V3aoBYbjIHoKMPaH2ZCj6ZsliYLngISmBdItxMI10+821xy6uT44T7zaPbPAB3GQyCmCk
P/RjqwU8Ud0jgdoPuHSTVDjH1nMcVIDTT8lV4pBc2oFom8iYZUlm9W2WXaW4lYrEEwghvax/23yu
hRdCKLijOcbxZcUHBg4GRNqJu+sR/8T7EjW6VzSuoyENdxY6tp0W0+LROqboX9q17JXSDG+ACwBe
CZ8afHoY7Ucvq6ifOMPX4LnPWj9ro4OeGZGcb99pD/2zBHty5QsIWoUVZTDknK9PnpEIthZ5J19G
9VoIoVFBNnpUKTinI1mLOPcXj7s+7+eQGXfmznXVLVRXcIgf9mxkSeYNYSLXcGK1zahtC4HefDDb
SL4IRQSgdgz4+RoLdUR1z6bnodklSuqykK4EgWnEI6EjpxFuW2a63AeBU2o1nUQ8GW8P3JUR6/AO
YTMX6Ck2l9mn8OECoyidzRz0RvjjabxhxqoFB/s0K9DfNhqWNc3Hg+dBk1jmm5eOXFWMYEWSV8vl
mT4b4MJkktOcDPjG5uGaL3Lll6ukZAfEngSZrX5Wf1FP3TnNwrha/E7wylVqRL9hdo+dxbaJ0iKA
nJQ5+ripmplIggciXJrA7qpkmlWoL1Xjhhps2A0QmBDQOPZ9XPZdeHJbs8UyeJQZIbcC/sWawUYK
M2USf0AwS2MC+3nwhYrJXiYm+i4XtJta7qRkyi1DA3/p5pDgJOcnt5qSzAPDfIE/ghnWq5/HG4LO
Btfcd/FB/wPdK8UEETiZpzhODP5yFgqJ2qejYRC8ocPmqhKobZO+qqPTDaxZDGXNVMJLGgpkDbLW
c2w8MB7LDsGUMx8y8zBUEeMkeJXEuyCiZY7V+fYX5Dw7El6QSlejx6MHoM2NH7dc7vUHih4IYG0O
DdY65tFKjvtCd+oqfNjyKAbR6bRpq2Rviojm0Cp+BSTn4Vn/zq/vABIzX4begXy+WjnphIPEO1XM
rZoGlBuhvXxbclvUH9HFf26xVjWKvw9iw0viFxjtt0RMoaWCitAyD2tHyFD213DCaG5oHN66PwIV
lSt5yKvbxS4jnQVxBM8mD0AFW3CbAeZZeenUr52MGGSzqrrFssuwmZ5DaWJ72e1j3MeNY+7SqPiD
w46tIiKETqrdTGxWlKGr7BeFoPEJNCdKa2PCqcznepmC2MsLGxE69eKQjUWvMBi0msIvsWQJpW9q
1Xhui3xmk/MdCH2ntzmJ6CoHggxxnGc5dTBaJbVn5/+5jR3dzsF3W3MEc2sGtO+eQxfgq690n5ij
BGxaNHXpzjapY885TJn7cIBkDcQhfJW6gLCbY5kXyfs55s0uWAwt30ty0YMex1O/dk0eHAb2/V4o
9SnGDiQiZbIhP5zazRvh/OACpDrTt02qXgSnsZlh4I2WmuRgx111TnbrUCuEgLyoRYZZJ4Fqd9Py
0/ikb8wCtHn98LJIaytdFezDf3qw/7gZinTHwbs+L6jp8KqC9s0RedkvAfhF8RFf7XSoHtoBjJ3T
wR607Yi3EcCe+lTPruVZxly9iVquOAPo9DaF+ApONk0+g1WMYBSZ0jcNv55/A2WzmsgtOZHRL6DY
0pngTA2nMqguh9ze64QQ4UQ3si2d4jl7rLfNUk4UTjtuT6aFxdc6oByv4/Wt/awDuf2YQISF5fRc
zkiL7u1+9BTRvuZwDdPoytOJisM0wwLLIa2zmClxuEjhP5UkfTDYrxnDbKXJrUgojzuIltMD2BhG
6nZnRTWSZfMvspJE6T8GP1MYml5HS5PpNLOB7Wv6CddtvK5+LXHDkZW6upTCAVFMoWxSTsddlVIW
v/kOb4mMb7n+ohqGFq7AgGH+hr4XqUyK16gf7NynsDOpTbyEqjUlYJ/L+IlYRqGw3ea4N1UG6AVi
6tYAgG2Al4Xr72af9f/krfLsJ5Yco3J9zeGPwuPQiFmMOopdKEFFTNiCpNmVSCOIwbJRQVlS0Wh3
kZB0DQDvXM0nPgFKcrPgwGQ2toiESJX0WU8ycfEZXUlMj0/P69WEC5F9La2EH2IlJZcqdM2y3t7j
mIFaWQUSqqR0NcehjwlSg0qdiSr98a5iLlG9CTzVSuBYXxjmHrFnYEwGwJkS5XpK4MwgZooMTd++
qTeIrCUFL6ow3a7WtmL/kip1diZuhOVUPuICExkLd+kPhZU/jwT+4Z57ZLhNgJdZ02vKjucnWVZL
vSaRJiNzKbhb9RARHaJyGZjgLn1Lx5qEaxSvojJeZqy/LGg4Os1WOCoFfYw/f7Rnowhk81FZ35XW
UUoaJc+UGhiMhj4kCBfzEBVfbkOH1sAR5ozubMvMIN8rzgZU+7KukI4CCu7MEHKV6lMuGCMmaCst
GbwKuVNWbDoS7+FvA5NF0jJQYOZS6msjXjL6WZGjwH9YNgl4ozjnTL4r226B3qNcLkszArYJopWa
F3gZgr5np2vv5rlOOU21z1UleCSxx7kzhzAqVfZ8J2b5F6wGKMIMZYT7M6F+LZR10vHjnLq9d3LW
SUITbE7pw6zzWmRUnjpHyQOSeixvEifFBponpdiHzQ4a/krREMn1MyaLZL6DuvyJg+WtZbN6v0ak
1cN+MJ+HC36dnKOex7m0nb8ngmbUb3SQQxIIykoFMqoPhcdgOLmOzmnlfafEOA70lR1XwesZ8KMY
4LXB3Kg/Y2vY4b7MDCIWtfzXOtE6VwngE/dUKDV8A058cadA8b9J3yBR6Piv2kXHTwhZBGiDgw4/
xbk5ryCLQLShzbYwvuNlPWCP5yJsjIzaEz6id1VJqBmBhzoA+oapppnnOv9BgPYug9ehrzumOBw/
f+i7vTgcbCcIAqXkf45cVVfqpDfX5jSSUuy43JwQvxhyZv8Cw0Vquef2SNE6ELApSn+KC0GOJRq0
2qpkao8f2B45vwIzIj3cgg20ScpwV2+CEdQoz3aaaSrxgOYQiiPB8PQkmo9MSlZY3U3LxTgmiDWO
8lRuCbYQAabmd/gFDjX0u9jmseyNKqsmoBr318Qvt9OSMgrtcMzSOwTrnKoY1hUlHo5CYYYBdxY4
TwbIbXtTBtqc6+eYP6BGIMEs7BK3E+CTZaUQughNgPjSklOTC8JexNIvnYgtfIPTqe+KXkrl/OnW
PXW6WUxC0dYgjXq3ZkB4iapGfYy96ykDqcT/seZ/x9gC2VT70EsZvmfU7ZRn1mAoPXz+s5B4RXH+
a9V9z+aC7IdH/WXX7H5QA8qvt/wgmvaHHPvxu0mLQVYe7+WMPkZhNKCYb3UxOjJyBSZ/KTxvuIyu
AA+naz9lISuur9F283e1sgl14hgwqBVsbWPyUrbhCbruQ/rY5ZXu4LxrNuyJZL/TzSGrwKHRi1BW
3B+u0h3rtkvJAjA5000/RrgLou/8SO/zYtXfAIuHy2a5G/lylrx0mmZ4MnQXldoEwakCO1u3dzOp
rLFCD33EHXP9pU1z1s4CvBlIzMQLEKIX1vxsplySMBRyiyOjhvVGPrj769qLBRErZJ9pA0MdJ7Gp
KWK68WyG8myuQhutfV7pJVIoVB2WstehW2jQGYBSYbWcCs4Wrs8ezYkTCcoUly1YuYBKiauOr2Lq
LMZin1B/5eghZ786pVscrDsoYxC2OvsKhht3FalDUunp+uzMgIWK0FrjUzJyGLVUi7EJX/UW+bH1
E1575KcxUy70iVvH0y8Nun0Y5yOmiCUGLs1DSsqn7eqAZtEqFdIXykya/9lSznQWsvmZktP6dosx
hlG4GBAzF6IX/qDG0A8R7elXJ7foH4PMyQw/grky3ab6d0TbA9sVt8lCaPeN/ajjXYpOaAr2VrNO
0RmiVyHUMRQJXnhlBnYu0obqbzO8ySjzLUf9m2mX8gf/UcB9exbCep0Or88/er8PyTtyiXlNTZM/
ppsyFeG5Foxed1ivLflOUR+Z7WqiUA9/VDSFQL9KWV9W/wu15BzfI8ye8FO7ML9DhXZyn47SOM9L
2WdQJEN0ce555Qk8SLvj9jkxw8LYkZ00cGKi9GL7zORuWAvkKmKfQch4UZ94qoixDVapJtsdgci1
r2WCJ0RF50AsOEWpb1I4GilSqL/yXJyc5uq5xjAEcjn6aXuU7gEzlA+g7FjAW9o0s9ukJeyb650L
bqDepQpmb2NV+6fjtx5qU4kSEKAZ/plBMF8N2Bc1VeDmdmzOvEjRUbfiRwGw/+V/21PUfMq8Hy4I
yqJFtWPo37EgjgK52rlOde4MnV3kFddoWzx3Mw5+bR3uS6Bki5ZRE5P5kEeIkKhDYKkPs3qmXTpQ
Wtgvc7oTlo+wZcnR2ZoaCPfv/eTuMUI8HyVxQFse1V4M7U9z5k+jZhvd0/28YnyKapiizwJu9TQ+
WLCgjjXE2LhRkPafMuv/4P6qPYvZXkvUROs5J34w0ypHAVpyP2PtX1MRwdQhwlk1ISUZd8EARHFo
bXXY8NkM2RT0NW1S0sUmhH4g4uRLge/6C2pB+V/+icsFHdd5bDBz7yMCVtkh6/O22V7NGxrSwTLS
7vsDXsohXj/SqdHLNzgb/ik+NvniMkTa5fVtROnGVNFb6xikyWvZCJLaA18EyoMKOCPFKGVYUijK
52nWX21yFmqLNZanw2z6xFFlPigb+euAhuRoT0szyRKdJ/6mtOa7InpX4XR+AhwFhi4bwQjCCqt8
XSQ8Yf+3ayNMxYbHlotexQjhnILw8QkR14wQvZW5dEeBLzXLVi4R6jkgUL6ETVudEeYCiXK9PF8e
gEE3m4E2eIVwavg/MqetrlSeDvwOuMEM6C1qlxzip02IvgE2zXcZYzKWi8APnylaR/ImPPqpvSoc
wiJ+9pX2CyxVXC7m9MXgbI3bNe0fW/cJehz1GRjSeDAseh9DGZXTUagQdp7aW5PcghquWM4GCA46
SVPT/NNMs1y10FScAoRCxae5p6j3zNC5+a5CQF3Y4Kl9t0LDZ4PxN3p/vI7kYn80XmkhyCdMuwN6
VZ+lYr8ljgZ4/lGQKGuK0nZk+mdGkWjwRN9OT0iXy9YmP/zPn0bnWrZ5ZfKETrt0b4L+TsWDJF1B
NvjdiwbaSUO1lSpf7xq6XUmWJ7I+PbdtquJYGoQ8q/iHXtzIN48E+4jbCxGxTBKKX1l3vb30HFxA
01cEcIZY9hN2FyZGZpp+cCdirGcliqW2/J/JMlWRMDIv01mQO8i8/f4GJ2mWuu1PtwGYobwah6G0
RhkWciUecxMdCks8BihKwj4kXEq2omdGMfGLv6mcqP3paR+n0TTX0jNhpqxrQWRfecHfIV6CufaS
eHalDqnNJd+zGxSXKCLtPP80gr1e1OMFT7fK3H9JShZHr1TUosl/VYzYRDuyAmQu7CrUGchK+aVT
EA8Cz5YQUltavI6rczll0TR6fXpnWkSVs8JhwtLacP4G9OiYyEK5J5K9YR/Khccq+tiTEtm6F7Fo
q7ckJ6rApyp/fKnY7wWh0r3+kOVxtF1DXLU+7BLsD5nWdauukgRzMWjRxstxaE2S0vUbAX5MVZIK
R77avFslifhxgGrRmTZsr5K1jXd/11ZqumxRh9JYy2rPnslVE4H/auWrrtZtqTddYC+gL8JqRhd3
6NxmKNjtvAWTLrYbwlm3MgssDJhBX5hThODns8rolzOtEBy1w/JrYV3+sPcHpWm9na+q+sz4oitc
PW2RwKTwIXVYRuudF/YZJVxplnDhOjyixF3Nc61A2FDGAgZWNKBMXkZx45pjLRbzvb77TAgGifJV
UhYzXda8MAY4PLT0BTKTxgXaC5LFQieio96Y5/X7DpHdx4ZD9ZSb3yKwSrDSsXQuoD2pclstJ88u
iurL1j1O8Hoo9eDSRlVx9t/oursK6CBFzAXAyu2dBIMiiHImhbwGx3fMSG+29KMMpXTOUuFMawRD
VwwPMTe6tY7LVinmFMaOMJGZqufZCxYdQbqEE/LyU9Qfwwiv6aqmU6nzMUYinfJJT5ytzLnNfNNw
zrIs52VSEhffdQf0K5jQIlxjpdR4k8dhsq3KElT5Vbt3d7vK5LlTd7fW/Gh62DU7LmONDGshGbFQ
/vBOpxeJ3NdQQjQekVinUCqslhg8APWFdxuZ1IxlTphO8nB1d+gIitid3NnNZwlFO50+QHYaPLbY
kkkmRGPRpUy7TbR0t71aipOoNeUh2rw4iXo2lhr/KSh9xsgQL1VJZvVfBxpvrMzfhyBlXZ+QWFWV
5ipxa78PGXuP/4M4dZ3lXkDG2FHtbLN7JWsXhSKstfpgOiwFa00sgr81IYUi8llXF3JnIuH+za4l
w4DB5msCww71SbgurIgL1r0EkdRPE2L9j8Ew2LFdPXjiYMQL2ThIr3ZKuxrk2U9DmtVGNNXjWRGe
MhGWxYb2OMTwLZuFsqLwxGtbMApRgz0ZEqBa1oTg0C4gwL6u8mbIU3yDtmTVZuV4LgRN7gL6BiuI
gnnSvHiEW4jGfMMCWtFDFHyD6W5YQcLSt/QbN2xQRApw032Cq4jP+3uahxru2iYIWX/QMEIAGml8
Sxz/NLwxAKWMvmvdhXg+cwIMm5L9FyLMPTv7C6/890FQS2PRn5TPlhfhj9kp/ajAFMbFpK1ipDhe
QFrSXZ0rcr3sa5Sz67OaHpWRGsu2tygs/WW44ePibRsz+TSjE9XYH09O31wH6uJtc6NwUwEKmBIh
xepZ0J7fXKhD0pNDfGg6uBEwmlPrpEL6soWc+k04bZTgaa5QumXItaU0UAZhUxKAMxHlQxGLXo8y
kDNLetNK9kjBTpLtgEtJcxf5zIL50OwvzKomTAcfRUhEPxeJq4/qOq7HB17n2iLmsI90kQOQCNfD
0Lt7X7BE1E2fP6ZAIuXZyXIUwddO27AZLPeWR2Hya3PLh6YjuHqLauEJlZRQEURYu1AgjPRZl+hR
M6j+44ydsWRGvVrAOmJZbNUf9+glXkdxHQ1gHgB6ZLaYCv9dKZmgbbk3+auR2IRbcMg/5AqicnyK
VZD332echnMgQBBSJ9nMHBEra2K49H4uNdbyHa35U3g6Jg24GaM3wYcqAQelha2ScX7GvUkWaoet
8BEhuaMhXQwuEdn4UkHa1HO28hhwn6q2jAsOX/g9BLvZ5p/wt954XIVVvAp4sIH6yAhAOqkJQ9Je
RkwvwHbgotrrMoCTcFUxRzJKw117lu6e+6JmAv9PelIKcpeZBv4P7QI2Ri4b4PcFH8xuspmgCWZ+
z58vTVxYT5M3dFWCleR3qg6VILktENwKh5bCO+jBgbepojFTAo3OJGGoWdO1JxqDiaWbq+QuDg5d
i3/ZeY7TDIsEW8LRGb9ztWXCs/KiPtVBWbr/LB7j50CAx4LBv4RK53Vpyzs6IxkuBCHIkqRnoM5B
Yg8ivLkON0Sv7e7OeJ2vJ1umQh4Y1Bak1ksNjaIbTBBpuQ8/U/ca9h3isKRWeh7uDDUbAU5PvWYg
3YeivHz6Rujs8AvdIxTol8n9SLWmlB+wTtHaa5i6H36qmBGhmtax8p/G0GPFJ1HnAaq/IAkdOsXt
5zw+SCGbzs43usexqA+mlxXI8cDd2GUHV/Z/XBtXNhrDYNHOmi+T5rBEmhc+xPlZ5fySGSPRr40H
p9mLCrCyASrhHHtArPu7liaGmfSpL/012um8yfOj4UPVR44pKgPly2vF6Mg2DE9jblM/H52L/YBn
LzySmSTJnZmc0BPqi2YfSSmzmSRqo6E4oiQc3SA5Fxtw/mWFjP9zOUi1Rie0vmSQu9kS0TfBeQBu
4ErT4JeITHK2jU+wRRvQlhoOIA0TD8zdCdpEY898YwY9ltELXdLlrsbIepTnjmUM71LN9rrhSw+N
mEjYn4fhMjhd/Ktd0pKfhNxB/mYjoDt6zzl0uIW8EX8deoCjDnaq+6ekWaQ3S2KH26fgvfLNeWKK
q/I2SRQMLHRfURYgMAglKoPON1wgxkTx/Zz8sZ8F5jSotYm4FTJcSMcggb0jOrQO5HuljChER0Cx
N0iHQHXMoOdK18oHO4o7dmeK4xqfnnLIzoqfmeu4wZwfNqksTtnzF3clFVrcHo6yEAXpfyIiZ/mp
uLw6wYPYyuCdQ1BcFbu/qvmtyw9Jgn4MgIUck296TOItqUh9IjXLs/5MZVoeBQ8zzGBF3j5Ac4rp
VPAXgCuuYoFsxYf9xDQwKWBjiMt+br4sWKvmaXaEEkBeHJaO5/BuKYa9PkaG+WnEQinALEJPlJOT
JZuqFqs7IYJuDS6aZs50XZk7gdA6dn5cPjAthwY7VdpEXyoPl4enHupWdX7bmVXR90w6WDtgxxQm
hag5PUyTI7Sf76uLrAsVVPbVT4Ea1x4gbTMOh7HNNxvGh/W0te+w7BLNgLcvE9v4SplG3PeI6And
Hta4Uo4xpoXm2K1OiTZRfuisfgMmBw9J15kpknNF21iUPsP4rxJwV/fuLQ2XQAiLd1A7amq+D1gO
17Am/38IhyjNPaT60QFqCnQ21J8upma13LkjPxJTZpbHZ57iS5aJkhbuJPRV0mq4exsh6jEMy4Nx
/6n2nRF44ev+WUMIfaR5K6fV+J4DeS9KYXJCgmAPImtcE4xSDSvDeDXp6rmlj28A+6CFphSMddWz
YRdLkpX9waVbY1+sCrqCcBoq0uteYXc13fN1N3fp714FAPMps5u/XQHcWKVcdaTPsajAtE7R5jNg
XDgI9UhqmOlXqsBYcDKMELNk/eMurjSn56JelFK/FHuQPcDHIaO9vT3nMaPVsxUiQA/8sKOEeOgy
urKfPzl1YC0jBuV6nDm/IIMtOMe08sSpokFz13jIs5issA1DuGvBGs76ClJt23BC3LcmfEyUHy3E
+D+fnqeseSQG1hQ3oDprfjFHncjz7ADCniqY6A6jVgqjUsExabCjOKd0mFK6h/Sa6jW+9vwzztAo
lFHhTcD7grus5DgK50iw/tD6gVFY1KpR53vQ/vLFr7jOG10+2Vs3IXsmnvW0pdD5/58ujfRpgOwR
hey0d/uSgbEQw6E6rEgzAg9lUT5eaz1CXmaao7eUFnuf3L952Abl5sN1sjbmGzlBKTaAiTeOE9V7
FaHR73AA05IwCjYU6KM6i364H3AYwl0qVzEqnxpvy6Ke1omw7gZ2kXyUz85+iHD7vkoB413d30jy
herrctTC/AqfZqkDXOjbu1CTKHEdq6ohWLF5J9JTn28ZHBNO5pfQOmt8keiR/24gP/epciOOFrEM
gejXyPZMHoNJLK4EAqepCfy9C93l4SyyRwvnlkM8+vwVfEWN6UU32EkLVutpmz7wNIIJ4coPTwqZ
6J2hgQbERloLg8j0DkXIqnf+g29HyCPI+J07Lm2jw9WjHcYFDzMyS222tAhZ0CPvlELXWBNtwZu+
3FMIMzM9h5+1X/pjWRmGujB7lq8aNl3ox6jw8rB7pTdANDVicUcWTXvXsjrvpveO0nP9NWxJH+RY
rTT47rV+57FYDqI+AsVfEUqDW0E6dcqI8MafJ8lPfC6CArA3XWt8tb67g8AkLf85rd0EZ46vfbhd
ujEwp5hrwCzpv3zwvVK3dTO1nEJyB7mvmfxlGs7gXaKpb+bhZ+Fzh8H6YXp4/QQ0csejomVMhgmF
5nmsnRTNC7R7Z0ImKb8zT/urZSL8AIZFMbNo9+MJIxloZGpEjhfCc7coCVjLSCa4XvLFXJ4nTmiz
DgtTlhkjFFxkUS6KAWFNX2vBKnaeneySayLkqUv3wUNjYLI1nE6+Occbqh3l+SOryjXPpDacK5uR
Y/pU2YRjBrng5fnUTqoTocZF0NKFMMmwaTn6rQT2VGsmF9y+0YjgYyicMKfuC5wK5Vc4oB7a78j6
8eRU9eyyucyz/VyGDc6z4M6JG0mxkf7Xz42bgZmDsv8CzPIwjJeTHp5V0N2ykM80Gag7iWcBicZc
Sc6yi10hxDylP4wcmf7025BVHBKIkTL37C6k5UX/eXxeo92TvyqMGT9OjADaEdwg0I6B1K/Qp0x4
/W4j6roiMJ3UKlB953UFXJd9RX7xRJ4/8Uf+YnF4By4h43djEgmYMpwhTbHjEfTF0mwhpJ9zIuL6
cU90X6tUFIRmXCqokbQheIQVTn7ExI54yC1sSZcCSqfK0uy8ZGr14GVljchp4XlIuewsEmB6s9lO
/u0Fab6owHtxVMUZq4XHkSZ+9u6298iOB9XZCx78vgum7YCODgCtXXMXTz5McFvNyiAZ3G/OJbfZ
T2xzyrHWI1ubBXc1MJ0QuHKEpbCcXRWLiewJz/bDYHWAjhCM7xTqlHPQX/ssw9uMAnwB3UKFA4WI
9Gw+1qZ5eDP+Phc/ArnifU8Y2lK2JLs9acU09/FK4zMSG8wf4um2Yy/hqOXOTYS02APWomfcr695
TJGJSWNE79LWoZKxJvmvau3QiSDOexNg10dyPCaig4QR1VH4CufzIh/jCPO+GAnvrA2YHnR5BYWu
9tHzEWH3zRrgG2dzywipMdWFlml3wGO60jklKrFeY2jDbULH3vnhtvDZ/MtTredMrYGBTDJgNWBq
MtZfPHp79HPVSOpBXoLJ0qH1LDTh/Bru54wmr6YBnNxVDj9YxznI8DL61/GBfb91CswINlDFYY4L
dR2x2HGl8O+VB1r8K13GwX77Gh/jxfV7iFJr/LkyA1xOh5DkdGsSe23RUUJ4FnPae+LiTYRSdNBL
LarqMAH++YsrPfA8y6FT+cwbyhpiRApwHWyXpazR0eTfiPwxowOgBfRokyGUr9aGIs8vo2jgfuwz
M+liZ7I2FKp8IOQReNtI1dPaOGHgWX2xZrxG9uDz8qwdvdS4quVifpGOiUc9zVy9LQom5jk7eR50
ixUXp8PsVLSZiCtDi+jSINPvw+94lTxD9AoPyVYB+5h1nekmGP5+qzEblqSoq03TKq5s081M0if9
TaYbsyqEzq48QoN30bKd6dwUEa7HgjB4djZT8rahe8tLa6gXPdYvQOU36vSnt1EB1P/+pASmuLFs
0JbY7nmMWbwrqG6KAlQqPz9+T5nW6UymKXHPXOe2/8qvPFBMHEt41AlvG6R1W8xIcNclx3gh6YDl
eKIoXanGf5ixN3qmiXZVKNQLdeZnD61SWfp0A4XeCGI67Dq2l+L3Fs7fu4ahwqqWun3IbyxOdmF8
FwkNb0ti0LNi5ZV1vMbCyBsX7j2007qFXH7ABkYvR+pPq50vPiBBf94FMHAOYDkJRChtXhKYYEdK
Ax7lcAPBNgdjeY+e5UnQH+s5/n5ENVcugocP5XgdkZ0PHxWsekeQ9B4CQAZCZCw5FTiJJiUpdD9z
FDMSSxGOsDmJhKIh5Rhjq+JC5XRAzLM6TT7RkeR4YYvszBkl9jx+X7hbHz5wvDi051DzYlYMtjuT
kH+oxhGBnsr+60xfsB4MmLor5ryiX44TJOPhIt+4McGLBUqil+I0spzHGrlWEXzyZWj5f9CBPrRH
3lLPXimNF/OfcuxJ/yiWN9IuuV0/QCKogt3PvMdU6oZ2aNxmEau95NF66fAmDs17ByLVBS5h2FE9
tW3ib4WR6LSqI6Tj0NbbLjlpcQmZoQNVsdCZb5H3kybgtglO04PPPxn1IAYbETM0qIOKfsTDVkPq
8yj6lzyjmjceI6c8lZYLtxFIvSKHVPrvd0i8qJ12FmN869P3a7BVnZklk+90/GOGVtbGzBAesrye
d6y/4kR9Ue0YDWo9PhXDJ9xgQbLcU25VjTzJqKGUQJhbHMjriHFHcnYcOkjbhYkhkErk5PfVGKwW
fgIqnqRmK0RoyOqieYIGgo+j0Ly2WQdX8EjREO4hTBkTAPU0ppnimG4lyuSCypzHSOGlyzQkFa3q
7hDh7XeQ3ie8i8dYkAXbYCZfnQF+YN772f36aKTszFk5bgItSZczOAMRPrfqPS1CufN1+mqUcdB9
mTbKq8L8uYJDUQ0TNfMUAs8WY4Grze+irerY2KSSq1krRjiKPVqiiBkebvHQKrg74BAGmVeFzQen
+DPXGUJEdYn8IdBQZbweakJWTjpk0S71qz3EU8YIj/pTX3mcUNsxxbKyr92EW3IX7atUMzvGM7Rr
y6qfBh0rMzDQI2lxVVytOZStc2CGabRiwUCo/9PNSkKCOTaGewa8aJ64FXtIbLN9nKTswVkfY6ki
XcbqvvyI8Y7r8UaHlgRgkffT5669U6e0WgIPZivyEg2TzRnU5l2kdFplrlNJu9Wq94ZoyaYujwcL
syI0xwXJXs9X9nUFW+N9Jpun0H8Lttoua9a9vJ8m40f2isRhiluRbKhAyGlifMZ0PcA99YXqYxu0
vD0raq+osOUFzK30bqAGWdfBmrowJ3fvnq8TaW7PmmUIo8S8EK0jgmQ+cnJjr8IEc6ophlcsdQuA
bIUgpevGQLiKc8xjwicjeaAthQI4kkVgl1NIVlzuFh8WSUioYZP4Cxn8Az7g2Wb7o4arpLg1aY5N
+1epFXuKfCRqp4m7LJzEHc+YkJNNavRO1sHiXEE44Nq2em1Jlpbt9YI0WxFqesgzxMqTHd5Q8QA4
3hYG2QCZm1nZE6J4DYSTUzwlyXF2VjtHkBnRYqiYUHD+5eHOeGP4w7/17D1XKMwQmAs0G0F0O/nX
9djsj1T9x2ivnsqd6iUtIylb89K4WoXQj3sTwZSVZ+ntwRxq6d+0rYvOYwFbbGTmH1LEWZsnwN0V
lrXRwi9WqSDdM10WrH6sCMKaQnb4Ms2eyYCJPnWbx7enUUeY/tB5VP7RzAaSGa65uDPRfELIyAOl
3gMKsHSC+fh2ARaibK48/ioswFLYw33bXscWUZFr/slopAu8XE9gYv2TixQZxdGOWQpIi7gfShbg
gUbAoguQLjdubLATZI3gQsMOnPBYIFQdYxUQBhK8U2slu3azK5+8O8E+YUPV+5lJtIXn5p+FMj4u
YJZhoZZBZ3e6Y8oyYmn24wfnRDksepwu929rLu62nQIEjDROQnFu5HdkBh0k56utme55lBB15Xjn
noTkLVfeJoVF+Yu9uiew8SCWItgBtYw/58+II9y8gfVq4cR18Lf9tNl8AJ8k/Ijsb/6KUERhLIpK
dQhUrLVX/2XfajpOUC2C2KGdUVXA089h7iR6jxYF3tmf32ZsJy/E+p9/Zprk4UmyvQhPW39s/vqw
t3b3H+vuyd0V8xXt+BHeSLT93g5Huik8zuklxpRx3L25sfLlR5GUaMlJBZO7KTfF5vfTVSMSfcgT
7iLlECflQMb3VD1pp7zoXTU4PrTE3nX5Qp66xlO/HZofK4c/aC0bvkvvZ207/bwy3dKVGZ+TAImR
Lr4QJDQY2+kAVOyxwCJEBahQNa3+CBPHtiYjNQa/HBh+A4gbtcXOuJJgK3cl9BJwHUUD9X2oGsHe
jEXU4ihyoICmB5PyTtT2QakWgMkjywlDiKcPp/3zlVEKtb/h7yICmrt2SVYj2G1fPaJl267RVg2M
vItzfIv6Ja5sq5flhB5tEEOM6U3nYC//xQHUTaLkdnQJM+m1c7+JdmjA4ld/jtpg4XLhWrEV1Hmi
8EFIW+f2+tFWNDqdklx442pqR/kZeKRyPa0TBYxF1teS9Ad3GV8nP9mYYHSeAa4S+LrfPoTYFyq8
e+bAlJc3yJBNEvSTBaqRACdc5+AeDO2JuEDeF6kHs0CLHlLvgLZcubq6MX9eX8GO9yznYHHCe4Vr
4t3g7q4h0a2RyLDeOVQhb74lN9K63Tllkxu+ya0BPna2q4OQzWNnl+Hn1t87bJ4yN47blDmRaJoJ
CFqQoR0DzI9PyKIO6LSh3JIyAX6SSf1wuHdGtk+/zq038IKx5b7/nko4/3x+ACprnMG8n6wSeHUE
kQMZI04mb+5l3rrnBpJDh5EXIQmmdLIhgACguke6UNUH0bH+p6RtrrbPSxyM44fHaLZNUFF33Psx
7+DyWNyFcuj5rMpskqs9/4Tg1ydoR+I7nHuaqT8MTqnEqjWulPHISmkaCltptAZD+YIKxd+blA9j
g7Bs1brWeeKy/MBt8zZMx6w16brbqJ4yyAJq2YljRVW0L/wYWJz1damE9sEg3EAFm9c/W8hLXMMT
PL9/MRsdUu9VmM3KolDDyjbEkuTOqOLLOau0GD9wi2T3y7dc4mdeXQZZnmqV4olXPm8wNVUbM9Hv
haCjKe3W0wMSYlqKSvF+6Qqf6DN8jQYthhuwcvnDII4mbc2akNaJ7I/hYRegua1shPXrbzp+Snff
zuKSmGKwrr1pI2p5Q9YMC7c/wBfXkDjS6bxdv5Mz2NF5bLlGcEU0YXsw21YMTTuDPM8SslG8tS37
6aIsIVbYOnz9disLbb0871dFXRvRfBILJrO9HfcCpa/IpmiuS02uI9zOLcxx/WTowcKd3XaCBc1V
hIvK530LJzXzOjoRLafjx6JFjhL43FoaCipxikLO7cdF0ILNUHAAThWESbiPXYngx54/2FkZsngc
rjERlDX8nThuP7gl5cRmYslTs6wpmG7DuTH9avBz2sWNEl/B4TITzAgA+TAy2jHAsI6uYCkGwUex
/aX7FUQl4quTxRRa5bxSREcd3BuotJCJbt/OkicLE8p9b9hVAHTx1z32fz/0Rvs9+jl93nRg/gXD
0yF927iE+5aJbOud1aS1jLRG/ptBjbmJMppV+Rvi/l6brPvcdfbPvi4ZgQ3wznyIBttioCqbK6fD
s4o/FADJq/8UqliTMD2DSDkZfnRz5GMQiCvnDAXiidX1wtlaFpVunIJ+tTf4jkOkiV2wlOcHFJFE
F0/3giDkHsb37Pi7yiyL6zDWxOgmXhwtd2VY9usJMK8dvj9gpIhoKblYSfer/S4Bdio8kqiIR1UQ
GmTX3idhOekYL4A4slx+LZxvHIyC4cyo68KkFlvphFWhidadZAdXZxIYVdzQ9X5dliFOsE5/8WXJ
6lxewvWBEL3hFKGRjPukf89q9N3W8E/IZjJI2ErWQLv83Do/Jmub3jV8fRlUlR/zDwOMI/UjGDzM
Jl2BEcg99AGMJ+77fprIPDh583CMzJjroecWkcxBw94e1evYFgzC77c9/xdjMKUZgawMOz8u9/31
px4Upi1PsquU7ZnYyNd5GAPJmGiYodb5GCT91PxuoW1CUQPe4omVSTc5bnkilnPgvbiuEQhkuz+n
Qpj9xcJkBr0K69qTj1lwFvnBzmII4mNFTHyZTAvEZvrvY1S8Ox2BFORKCiYzY7sTC0Y0njPW3X2P
eNVyEssjk0fiAvHACjoKayN7tyi4NbJYGwqi/EGRePyAx4942a9tcfRzF6vihZLTGgBhlIJEOmxm
VBPmK4+f8YE2DL1rT1pJwUs1bi9dCzdAb8wkcXNLe1dBE0AUXBMXv67UmKZ4a3tCZ5LJJdv1RPSp
bSdH3Gdz0soKQQTF+B/Z32fyyGK+l6pL8DuU7Z0UA7KIH4+STS8JgV/NqA08NKoS05OkArLLczcd
j+PLKFZ8QKYff4C1LS/7fZG+tAsl+yPVQ/W/mcY0I0oqlh7rCEKvNnrOuE8wU1otjb66Zp83clHf
sLs+Q/ph04pCHx07lLgvZYtz/txWaUOj4wTteb0yxd6yfO2BK9EGjOmehCPKThyLMMDSCP7GbEma
tjfBBp/IwJrES+oqZXEgOJ0Id1ybk+8xYaiYpCbpCgrBs1hHd2jwuKlrqrqcHM+lhbu2WuZGlCqo
Hrl6jniwNjoXMqrLLUQ4nEbspqYFe5r3Z50DiZcj5vtwgTYnSbmbFV9Y1ZMJHm9svZ3NB6P0pYij
Y4OvtKMYO2rGIsmbWVW8RKhFAbG0Qgjr5cEnmzzEfLpP2Jbv45XpKigGpOiSCTUgEO+Mvj49TbSM
8foaHMLRhw62/VqzmgVXwJftkSvse2AJGMotjEFHvdXgxwgq2eIRjAITiBP+YRP4BufbviNUKj1Y
JVB6yosWMTEdVa831l33dzE6HPptDfkuYF/VWhldVOLXjT/EmJByDBOIL2XV5VDeyP8bY1VdT5Ot
gkk0cZp5o7VcLEymIS9zRNL3dS2i+j2qz24LQfJWiEp4Qz5Mxm7ISQ4xiiuq8SHpP3ApDAVtQ6cM
7QpeoIqOhUqD3M4/mnqEj34PfG3Pd97CEwSKkki6/+OttFZgmPd6biGbKg5ytaIZgSBtzDToo3rc
quDv9sCdDygYC1g11dfMmcPHzfRsUuYsUt2ke0BJLBuPSdyxUhEHGa3jf9q2yTfnbuHSDhs431dZ
H7PvPqQrypPbjZmt4q+07P+fGT+2DlgZiV0O44ZiaOiLqMYbwzMcriaKk39AVJ2kWwCki4nPTV1/
arbCkdrGtaeLqhm3dB41lpJXPTJRk+aS6/of7c35SP3qHU7p3VsEf/5oKUE7VCv5DgOkfS7GFSVJ
VDVPg7dcLKQ2O5Au+Kpq8yMHs0auHYWGwbiKUYuU1RJkKSJfUsQeorgmGFhMwNweoZuGnXrFhFMF
bFG/nOj9pAePqJHzInL23b8dbgwuqDNG8ccBp58MqZ4T+R0Lc3/WgjvOusP/7Juybq2tP9hCu5wv
07VIkRLTpe87xVl6tDtE/1KvYjL2CkK6rzZvnzcy7O1neqs8pMTMU6GQEpdv3IGpAWdIUlPkqzm1
FFTVMGn1hTDZnf/rwe/VfgLSDHJ+2Q6ywk4Y5r8BbMEUbMdUEzXgjsb5xVe9a3HqrKABUvblzu3E
bpnvWNvWS3exy4/xGtjve89T52JCBLuW/ODVmLYcBCXoYJvfK6l/YJdpfhUr+cHpET+t0c8gKtv6
EQaHnsoT51lMGF4KXfuDriOAf6vds8vJHR6XL9M0XbdM2mpY4GjB3svHkjv273RdgPKins8Pftfc
nRwYe0rCcefh1EpKE8Ieh5j5rpLQKpnjYW7JBdTKr6GeJGfukySRDYGkLTuN/Q/argIKmeNKjfRw
pCQpBjqB3jGMH9XAjlG7sIYOyKDKaYLnVt47oXIKG21vS0pbQCF9mcWLW/wqWZD1DMXL+cuuAIbZ
eLAtXhOsIki7tSA4W+p06YY3Pj1GtrTBdr470aO95WBIx3BQpjXugOIHE8e8mTjXCrh3Iuguq8Q7
LHXRnhd90Y8bFS9A6vNbZ+z7IofqBK4kVXVAlwcJpIBHaf7xC77EaA1DnaE68HmB0MZSU6Sosh54
NShwZ701cZxXfwGwOWkLmCif3UUXn/uq0PjsvaKYtqVR7Z65kGW23yNnf9i8XbtiBpeA//iFdgaJ
mUxs/AbbO8c3O7IeEoCHZsL/EuhIxQwZ03/fZr5fflymJMSDCjLdCGhu0RsiDWoShaUnMwCQUO/I
vf9bJR+jQ3OYBexc0gbXOS6kEvIkrwHN6oRfbnqVQU71NoOxcmp1029pzAkazVV/LLtYFUcqoroG
hBX0RTnY5wGfKzB6+dy0VMhi+tihIprmyFxCjaLYf68+1gSVHE+WVRjMdpJirURtvKX9nWHPMswa
7aHbPE0/JKIYbkgN6WJOkDgXs7H/PtY05VKiyUgz0CurrvuQyQRFUXwtEd31o7AzEVxfGXO5fxNN
b7rJrgRc9WbsDAB/VPXaE/6Emq5TH5phrMMGiUJY2x9TL5mGXnrYVMlmv5ng1ddTVDFKF9Hjk0PF
J6xRy8CrSYieFiFEn7kkZwf7vPbYQ4f5Ui+WUncu7F8uFf+320pvRBxWzsJIwwNKRqIi+ZgGqFNl
A8plqkP7BHQPeoFCwF7HRarvA1jgFhmop14yF2bintbgEsVOs9sKIn4zleNDSdDFWmfLIO/1xsun
OZUG9h/TkiNgd5fabNAjzVsNQrQNa+2NIpeJ+SMr9pOazH9ezHxdFE+8RB9RCPIpwh04EB5tbMov
ldwS3jdrWzE3KUMuzubz+uJgfK0Od2W3OcL+0cjs9Fk46X0EKKcoPpD6vi7yolrNh9wuxy0+5MUN
aTdvM3EId4+ogpshB67ZAOvJDu8vcnVfYiSj/txkHOdVXN4OAzeAs1xZmohm1Q5oJw/BI6DHn42w
zt/lLi9SvSlHI3XsOB8mu/xbntmCiZTNyHvCI66+USozVzLvfip+ne39IGLvniy4AduHEp4wge6c
+7hYsyGjW8paWvc365ZUit9l8LNcsGmZDXwmu7vOMfpzAWlBAECtBdGXHztM07hXOWRro1W6PUeO
EtqNQuBQgmFKcf59uFjI9P+aG1mBHVm86YeX6ya6hAGJWX3urenxTJT1oiE6fO4BwPIba65nSDac
YOgKDxJVTXEH/s34EDlMXVBN9SG5y5oa59fqBPKOxHq+XFqt5b5+Bpobih5Ksw6ro5kQ/1+SY3NM
TrhtyM5YDPshXB/TwQKTJNsUVLG/SQKurQkdfjr0Cx5UvC7F+8b5nsRAIXPKN/pYy/5DLZgggtIP
aVjYEhWHhxTODV5JxfndJ+LneGQYNaYCSfQ0f6WUKxhylHK6DsKnt+2EYAw67PWEfVXyf66bex8J
Kei5JEm/J6UJmIecDAiRFjGeMkIfVmd2dtdZNyLOLT8rsoWSh+x7XRhzu0RAvuzd4/kZ9C2QYlYJ
81IF5bgI/HW5hrlRj0tFVte7HwMdD7UstFwo6fYmTT6W1DvwAwEh0Dwv85oWBDfMeuYWyUkSNs4+
H4vcpCVm2b0ueHKE4zpxiM2//MKe/X7RjMm1NP9IhRsH7lEA9X7H/NUrXPFlZ1lZzZb2rySUrixB
ndX/sqW/cpvcCD6e1MVLL5Y3VBsMC3CAhQuEZ6k9x/5LLXvFkIsq7Rzp0WMlWd6B/cOidoUWwL+2
PusDFPfpLDlk2MU1JsVvRqVH2h9/u8koL6HdgqTyu0y2dmgvvOYlFUUGgUFLEgTIgJ1hBtlJPgFc
WktjrAXPQE75wSlZA3Dt0zYtyc/IJXH9+dHkTI51BEq2KdxmJMRV2JghYPEXjhyskUiOitiXxcrr
KLy4Ns7v9XD6cJpn95HaX3wYTilAAML2g3aLWl4yy6gYkQp3X+N6L7fS+AgNypR1TKgvdXJZcmwL
EDmHSbWH3p65zbULNm80Pza1WmylL0IbLoPWuUaIYORlrhvuUpEIeZcYrGAdWwsjRc/AkzpV5Su6
dBgxsa056ZKfCxwPMgwUw/1K/XttIMv0gwOOuMUo6bVe2w6LEq4ijQOxsO3h9SUXQdkQjJN3jgik
K2n37lFH9Tu/mbPNss7LfX1wi6Nk/5omNWV4PLtKxdIkQ7HfrPefs1FTPomJJdOeEoBX4p8bCLDj
W8BzXI9AYVTYqBiMuPGQ1uxINInebpS2ffM3CinPKfwbXgm2/d4S2BBlAd1pitZezEp/R65ehZzb
fn5UeqLcUL59mS+zpf/uaDMTUJ5zMvquTk/nGEQyXnzfW2LuhnACAA7YgvU7v4J3HkfhvJUBKpXK
+8S9NTLMGlCEsVrlddMp7vbEGzsH6Uht7v4fv13+DnWWEXutaJzTGo4i6UcCvWJDlfiayR5j45Fd
ejEeOuBDD1WC48NajSyKzI4ryINpcIK10Z2tAPJbE48QzGJSOHvw0qrgJJ/Hd1lRhKPu5A31u8z4
vmWW4xLp3ZxUpZswpU0xATpiqIg5QVpJV1wA1OZHxmaKtuIauGC2kACLEiQ5e6rG88NQcxtTJeA8
bAYCWSxfWjYCef0U4taDSSA34O8i/MLmQ3Y3jogSf9XrTunDbtdsCXdJcZHVVuZ+0JMQZRIRztWA
42YR19kXa9yGoWTnsOv5zEQC5F5MiS3rF+wK8G6uuEvY6hbbjXaXF9W0POvXFXHRxylybvN0fNV6
lVzoD+fpCbxZFw2SHqcqkQ0Bi5xkCIzf/122p2Q5c1NDfoc9ZMq702IX5f9Ogye7sJKZimWQFz2k
+5UkvS4ElxHJoAIPXWe73AGP46SQmDFgtTJ/nykcCIbUlJSuAVEZM53hiN+MyR5nKCHJoKTU7f4U
WSppJ30UGhOraMJY8OvKNFjl4ddmMSMVc16fxQZmTrfq8ZUWVuV5yX4yLVGylw2wEvG70R+Lyeve
wTL2DY24XlrkTRWkkPrBdSg/50hpxTMLFtDM8bSdvi2tG1o8VGvkvb8zPClMhAAPQr+MkBrvK0BD
q4Ihyz80OX36xgoL0xe4j1a++bT+eLoQR+3y05uny006xPXWOeibwe781blSLriGPHH8bYBM8ILe
Vd/7MuvJN1L6S6rURbyZ7/qRRLZqybG5RtWuBIUPC18fiOOsssKjCHLjuhlCGFfLFb30XQFMf0pT
6eVPOFnBaQXiCjtj196/kOC4cT32+m6iy9FeC3gzrz1b/V/eP3wqgxD1j29RCB4/rwzKV3mOXfuV
2S84bdF3c6DP7rp4dDm+W49gwpNnHXv/FW7vEjUcT05A20VQSZqHmJFZYlp3M727MhwVbMsjMo3X
SKrSYZajiHqwSWiGgg2gKkdQ4DMVsOrbn8D59k6XUoOWb0U7l8+8HjApD9oPULXTP1MpVW1ywUXz
N6Xy1oRTX9l/EoCWBFyPR7sGhMAl998+TzRiFnW8lbWgWp7yhkctMOEm6fN2aq1edR6HwrOZuI0g
SG9vjaXx9gfGgBkDvIUNU0gVwQ9JnmwF14gdxx/oln9c80jV/UlEBPhTyfL+L0/P8BsDxFTmz+JC
VL4dE19pFhDhxMTKv0cbS+3d8BmvvoC98yRN37+Q6weir+5s8HVJ+1lnQX6EPfMqy6qkYibB+Cgc
xTq2L/gAvRIqG4PHssT9yeMpjjrFIhx9nomHmf8TYUA/1SAqbzgDTEXV3nidJkVbwLSwerBNvqvk
vDvPXLbise63wjkhmLG6ct/B1v63DVhJS31eVnwtcnlz5vO6JiWzAKbi9IBspBaN089ZWMIok7KN
x9GzO97UZsjW+PmrewVRnppT97zqcuPf/AtSmCOgnd6WbYGO2edU0nScNDJMYpqVAESFwZ3f2sTg
GYy43LMP0XsSsYz+rAMPDlTsvP1+Gh+GXLIXrqNW0YuIixyc8GYnf8LTkOZG094F3coueguRmqCj
Te9KqzrjZZBLyJo3N0ppPkd7bw9ZiUZTQmPe9e64aM8+VkAMZfFfQcv9tb8oCerlDI2WiEXnD89b
TcXB1A8PKAIhTb/kb5IHn1dTM2ty1306tpwK2+v06+vXPNpLuRIk3Y8G3F163oTadhyi7nbrwhkZ
SGfR2Fp+6Gv8VkmHFifTjDExUBXHMckPMnOf9lzAxk16SQw4VLzahGNbj4QzNlQfzJLvkRawJsSd
oHek/lOzhgxLawacLJTLWO7+L8vOjyxdRBJBiJYAMSJDWGZnLIjgzq3Ssov53kFX34qBVvZmpPlH
CltNmVcBN0anC792wMYi9IYEYn7LXEX3W4ik9kx/Sh/Ob5A3WxiM0CM3j9jh5Yo0vTGZuXf4D7WY
AXSyrHc6RoCiEhp+5uMk1l9k3hhl6dePUh+baI9J6I5Qsjn6Eiwy0YdUm9lu1VowD0MZBUtzRyz3
fcEDbZj5ty87JJjlp+AR1LMP8pqKkpAifCtZ607tMUi9keVrLwhJ1+1B9Rgb3lTet00NH3s82Uds
bvDtM68R0XSST0X5FSgeAzOkvcnz2ArAVl5fyUX0xEcjA6GKSGlm8TUptvhWLa2j1bBlJofvnCfJ
9gkDQCRxcaoow4OlgPklUobXwp8GoOeCtARa4UJKz2Xb6yx7kTUCWaSkgblAJRk1D0MILh4yJ1YW
WP84W/cL34UrrzqS5Pin9eZaw78nW8hfcpj8XGOo6SbUcSaI1Scc+JATKbxtIe5kd/AvR0zFkH5V
mPDNU8WiPIQjZhEf09A4cDNJe3QIs5pePcjkhiWB7YQnVhppotDhfF27wRgXdh1AEJJC4EGJfiOK
0mCV5Pq7HTr2uJHWttrk62iT+4ue/MERm3k/F7wgwLOOyuRttiiMFv9h2sma7pv8UrbqMeegeqXO
u3o9qWcte1jh4kTl9onrMq8fX/XrxWrfQD44ytlUB5HDA1ud9/Kp4dZSmX2UHfq8GCENyi38m2Rg
A6m1yExgDV248RfXyF3htNuPNqXe203UaRQ4boCJdBbkzfy+aJLEMyQVjEdfW7MiM1VosJvHmbdA
4mIL3yacBV1qCsgqCweWcK9wQX2nSPPnSsUX3ZJ/QHP4MjoSEA6uL2TMnN7uMkzz9a9h0vbrjvQf
qwEyKHZ+o/rINrDiG1l8Vz6uo7BJ1pGsA58PHoPV17BgfTHWGa+pjrn7IAF8wzwLED4EOyBHnPLB
LVc7bRtqkCCNyRgKfkv+xUGgbrUcriYKNMRWVzTP2L/qZ3AcmEN7/9FaVpxFwwkbUXprdYZPxco5
jpjcIvMktiqCWrridxGubUIjMjpqUx/atpPd7Tg9y8fs7igdC4I8Qgvyh9RKHuHEKfVJc7BoOvyV
9CsCry+g71edBHXwWGYJKkOntAi7K2jU+KVqir00x5UHY75ojJ7eRs+oqOsO+nMzltizwrcdkNvC
qRvaeP2BlCeqNko0NJs+jyKZOwQD780rJWx5mVXwRSDZ+CJr/KCElc72A/+iVM7GqT2x9se8IyBB
uayNsSosKDr/IzlNKBid+XT3ifVkxJGMGEY8ZFH1jUS/7bYCw5S3AOv3CgBHKqgbXEeC9va9BNZ6
Uaja/WV2KaPHCdaEuOO70aeKXdhNWXaqj/59DgNNoWwL67x5sz7xUOf7Y67OQYaUZfdIgFQ2bJwZ
ZcD6FLDdxsGPO8oQXu9vbuy8JlBU83S/Njy5GdJ1RUxptQLeuvnkGrQvXZuXJjL9GpV2UI3mA9VL
7cgEIOG/+bkhfhocgwZnbN1EmXVAUJ2HTHPZIJkCZA4BmzaJFaIZjY2RliB9osTijs9cPpEoX2yC
8oj0VYvUHQnoPQ/hhf6MPWReoY3LibU616fbbqMCMAa3BOAJ3y0XBVwQDW/+4qEZs0PhohUZXmwK
I1YNVzI2e/nPXCnN/t+QQbY224B8h2tG4eOMeGIkR3Js4PmyEOfzkVK0s4v7QW79gc/PQRraIA8b
waTcMYYRmbJJNYiPMeQdybqGxC8KDD85Eg21QLsYVeIVUOu4/zabRePPIB4I7XIGZjdU9HZ/9RwW
uzBS50IZCcU+Ds0ikMTe3lf1WXdZpsATwfDPXZFji2r7tBK15kym9If8my5nLRHBG9pX7CdNBxvB
M3y4d5Em5/1dE8TY71IBogDm0Xjz/SkVqyTwzNauN+qKPWVYv8n1gxaLIG/Vbl852XZR01VpU4M9
C5OkOhJQE8ePL7l1g6xg7Pb3Hy52blkKO/YjZzIQoiIxB6COTNhHmnFHQKelAdL5gW38fSuxvi8o
2eplwbYLkCOci+zgYwSEhazgilz++oV9BrhxZL5HOsgz3bSw7BLPmwS4yJoyieN1edS8DpsmrcFx
v+Gc0N+MX6j3SDRMqqabjbPjr/nvBv/08odcOmdrRK36ITRsKM7jDGMc+2Na/mYeCErSyvmXfn8V
uP7p7Bnykw9p88CVgnfbDSPBCu+XmFqmW03VYB+0yVDRZXcM5iV6h4NkDUX4ClGGBAKmPMydlAp1
Fx9nri5nWD/swMHA4Kv+4nhcwkVKTPks2LDCkNWw4jKeul0zGa3Y+PnVg1J1iuA3qYwDl0JGR+/+
Vf8gJC3LZMilVKUpwcArTX3yXSAke0K5lh/YWFqns30Fyj05Qaj5oF0Yf9x3my3tsKyVPaoaXfER
DvBqy6MuWOAdwcnjhySEDGhE4ycjITY2TI7gDhajmkzexQ012kVZ69Gl9xpiNNt56uGS3X/OE7A6
2dglxfPpIie5SpmQxF9ChiXTAD6perfafSDN0G7xraLV/i2iUY6CAA6Ed1IaFDWKO2QKQfZp5VT5
tgZOF69rEkrl/OU8wvmhi8C/pacoO6c/aulaLOuDo3/fSNoLY4LOm2HgrXF69hUQT2TOCfLG5MBQ
ttpXB6iXp23YNXy7FZCvBvO3HQlLiDFaWHMHczHE5nt2QL+6IhXxbH6Ttrba65gvduc7BQVkIrDq
Cno4avCEqTA0W3BgQYKJOP1u8dBDJxe4hLvLpXbIFxj1xSqDi5E4fB1WLnhPQUHYY/6OteJIw4cV
B7bTYj9phwYwpS9OeJ9WXm/7Qq+LpO0heQLBDv8v3lbExeSqcpke92dYmBw82hysQSx38oQP8Yq4
YejZ3QENm1AlpCRuApGvM3vozwymSNWZE2QfAjc23aKTmSgpnRdc50SSAq65eXPnHfH1jboyCNOp
OiU0XdbyBKfqVBW1myrB7NRWro+EoD26V68dU01mXP5zkkSKIN6hcQNL9PDsqvcqB4A1NDuMgAQ3
FUmZxMdXoX7oOKbNNG17a1WlXKAqWqLYFV186KaeA4S6sSG1Ldzudx/ExfqugXpIRC1UyFdptSLr
DvnMRRH2mUJr/k44uei18bcJPa8kkxecGNZoVVZ+p7kRgi5M1kR8N/9f6kcB/EYjzHi5YR7yCiYz
nWeAjR5yczZc3bKIyERnvxdpfThn978nO1twFIMfIuk+HIsfTWNP2ADk149/u7rkSZumr6G0Ha5k
bSLEbXKf73sEtsbKYEgjBU1tPjFb6iqFtbEIWF5awdOUAzulyOcHpHioRCjDfGx729aMg01NgubH
LOuEdOOXKZ7Y4T8TdNzzqe/yjsw/5sO7vuBILplySQ5h5LZuxoQVv2hAxJiL8xT1oNqTYU1D3QJS
bJGc/D4Xc4bjvGNBLz8PQoo3BScP72mNSFDcgi1EtNvgdZqsJWpwTmxm6fPLnyf3EVFW91CSsbC/
CAJYx/uLqnj+V6DdvD+x8I48ot6uwNk0WxZIHNP2ZD2me6/OvUY3/2wt8QEBa0xFf8602V8Nqjzm
TZoRRBJx56LCsZMYBkcGTwFZSStzGJqpYhNj0Dix9I3/PHV1KPPOYTF2DOE+XZ/4ron3RFvQUwO6
voBOCX2o/btcgsBPnBq6P5GEhn16CCKy2HqHs+tclzCahq4FG002nrj7ImwJmeZZtMRJiL41gIYk
U/PCqYMGyIm+WqH3N9Xzs4Dh8N1CNajPO0KukITgy+46YBZX8o2/FodCCsw9Z3Qb6MBe3hZXYXJI
jkDKZFXu+dOKASX9nF5MbGCW9+rn/1BL3IHM/76gFet8s+Ywfj+h3FNWJ3hG4tXegMMxsR0Fn7nH
Pq1LS55C/sMfIFEVkQLEOSGM1+225zRVqlSmn+e07V1p/xw+O3eklZsDeeKbOA77h4zAfeQ4zXZc
2ps/ELChPASZZtmiUgzTnq9K+VpIy3WdDdCuDLDNY1/lzZZYSbsjHgV/EUSzMvEEOhkPQizyZIk8
Ov+UmXifPIqMSKOA7WY9obuiXVtEI5nyDC9xBJHPqx6iPYwHgVL8sZ94+UFCXVaX24dzeiDashfL
/doEIh76HbisyxQ0AIyIbRkY/mmbz8Ml2uuoYBPkM8OjVu1K3z+43atnhj2kPSQsRlFtd7aQFMgo
xrwhiiNGCODyrmRWyoWG5aCftkG3XB8GkM6n4FBtPJN4DnjEdlIOgh3abCbIcMETxtm8wv/LG9BY
Tdv2jHlQ5te9bRCdERdzAkz1ZDoX87LXo2sl6FtKK/BV3cXhhtg4qVX3O8famOozr8ESrGtOUosy
iBU5r73+vP6I3KNdKeRJ8ZFq8chv9/IuWlDcSd/e5wT9BmW9IGY7PLURB8915T/uy+Z/rwsHT1id
E1KuqlFaOLHyj1P00J3cAPme9m0dASSOQ834/8OHV5CcT03ohBJ14jUeenXYVRekR9Yg636zvWfS
pKAaPYv6X17sHV0VK/VuQGTyb0f2CGYz8DKix53i0lTyXLJbYNjYY+E0Lv1In+SxJXR7dGg4JbmO
zCE9g80cS8VIE4Hms0HxWYJNHBgjJDl4C4bsN7pzuOozPdtFd2phIL/sqcsYG8nXIJwH4TKO/QAV
+REWSu5hMynwVEY5FDF/f8a8VZyxl4Uv0B9oNPECeCfD7GWHr5QMBE+FyjqErEdKFUwfo3I/mBV9
EX7buZbYKZKKypVMwl5qPrXWk0qumW9BAmmjQoH61QMMU3Djb45Ko5aU1yzdfDB7Rq6xWvsndEAs
9NWxX83EW7nMYHJ6c97aMWY5qakJfRdm4L+KU5PyeZhJ9dDkvFL7lv9qkcZ22uumEbgUo6ndvYVd
coNfZlPXTNnednjI7rrD0sTyUGpyCjrCt4gMYxJzj1LaNxIc1Gf2HcmImqiTh18bY+/ghDCONgAT
bAWMEf2u6FT1xrc6DrXfLjvymcindrfUP+DY1DugojNIJrd3IN1nNWtQ4aukxSyNNSUZPkqw1NFW
wzDZakf5PsjkoPyNeciYcKAMG515Sc13/YpAn1sOJpcMBDtBqt14TVedrESer7XhEjFcqhMedK8n
lXH9e1LUG8voV5J0jXQ19JcsJMvRB2bHkGY2qEg0icHxny6UYjPdufoFQ78nP9f7ywtCD3uIdraJ
daMFoS395tun/rk7VsCuW2cPj52khxtKGCPNDD6fL3AltDuXawTHhSkY/Hu+hdXFqnW2n1P6czBX
bnRiK2zppeeruJT8VqBS5JvRWo+o+iGIM3CAb4ERrvKlVqwiKT2LUkkQZtQKvCICg3ubrR9PLmP/
l1EFRQlv10NhEaApWf7tY3D2kaOrQMXXTiMFd6ZrEA1OqurwpKwHseuJzT2xETHy2HMmJ4XeRgVL
W5oIlrh7VJ8wdE1QMxGywYmPoC32eB9oSuZwWrUqpecTmxBbvzjFp0M1/lp0A1PqWEk8aNriHA5W
j0oU495HO/spWP1ijDg14ZhDZrE47zjxZd4k99x7V/2Nnac0H0u58jHcblxniy8hM5godkZFUHwB
9PvhYjFZX477jexyZsWaMUmFFHLBEzVQ7A/WjwyI3+bM/WwiudaZHhVHXv5ldrpaJv8vreyhw+Ha
Bi+XlNflDhRZjIcp5XFC4Onq06ynJZTsVGANWh5zVKOqXQXMIVRtg/n1kz3lFLuoEKs8BliGG+ki
fRywZyNPyTy9LLhqUPQPJ6auKb4WPEk9Mw3XNu8yIzS+uCIbdtn4jvdytz9qf0Ez8h3cHjbc2w+5
K6JzSu8MmDkWLqZFymHlb74PgrBJ0g7EqbK06dV6eiUlh9R1q+XU2jY9kzLDAJXTW4HLpHkseFiI
2grooHw6WMtBKktlBevHlDfxzpwfBdmd+4VLtSmAAl/m//6QVBku0T+/JqFh2TEbNe98CCXgXp4e
8Iy547GH4EhumUcafYn1GlZpmVx3tPnw/5f/kEawjKmOCHs97pe3Fkl2CHp4Sxy4BNLdb2IugbcY
x4caBv2k1IA9nJoh6WnHG+/Ar9RB2s+Xs5TqhcaZZIkDgVeOxgYDV5JFwy4GVRSe+ZmjK8ujKNHv
mIldCNiZXvvCuvWjPiSO/1WX7ZtKSm8Hx8ycL3I0HjDKu1LrpqZCNv+6L/6yl2UUtgov+ZVQj8vf
fmq4eqJwoIxYqRtF0uMJWU7+1fwXmWtvxyI8rw2cavHi9gN6fI4ZCFodv2VFahe0WvOez5WGDl/b
D/afC8TfhwH6fzaeHUtcZCXGGvwHnhyRz51HDIz1rChDeBXF4iq4tLYL8sjEzTPBGmMK2/9qqYxy
Uqu5FsOQ7XyPjFvD3ymEpgLRU9bonNLcukxhNSf0QQD9ZF/hdomO0pfuBq4y6n6EcEQhVuvAygRk
Ptmfpa/pPmNXJqPAtyD6hcNeGYxYjk0icc8feSGTbYcKL6iVUcaaxL+sMrYRjn/e36hSIt3EBse0
zkiSOi6TcVDzFu1QjS0UAznEGBi6guIqsi2Gvs/RUZOmH3PQfj/PWmI2IA2PWg+8uDTtNSBTm/6D
G7QI4ZPUjCBqlS/FlaJmIUVjOpC8KML9ovewx/D7x4I+rGIp0T4BRZGNJF/M7OllFb4cLg6lu+Pv
qA71bDJs9YJ5HfGxBr3DsL9zLLTz9vuVQBSK0Oxi7v7hr6EA6BWYzJb3YsZsmd8kxHE5XNolEdbx
L80yZqUceqfkF+ybGi92PLvvCR0im2FFUSc8wq2Et0dM57rhizh7p7kAsmoR/375Pq4CQ+Zv0dyF
eKvZcdSjX1tfgRF/JQ4Z2iIAW8YRWrGWTVSFLExxsD+4tCQaxcLLHv0mu8fxPr/46sufkkOfIU95
0h7ZYB4ZHSnb0Fr9W3sjum5caCEJMmWYKZf4M49TtbZXySxpYPQ2yDBaH9Q7/JibwnXuc7YZRhkE
RzjyRJufDwrK3eSPD2s4uXby3L2LYINa7I+qVK/YkTa9F1S8e6UG28qP+iAJp0amUGfbDNjSMqsf
mYdGGqE3D8RaIr5UeridPI1kM3i5yCYMMC2clw7S9CO019NkoJnOxICgEJfhUgB8qxZ3RfMdtpsT
cZo+p8t53KlEa51VcFAFvnE0miHl/G0KWalGEsUIbTMc37SCiVjJ+GNrn0fzsO/ds5DIi95hPe5O
x/tepwEr/FOn+dCuhh4moumIZjZflB9+am6msjGMmfMLQCfkORNfjtjbVjPN1ku+Hhiw9t+sHDx9
GusdUtv5WvjwEp0mxRHGjS7R0fCoG2uEN5oUeOHWJBPiHxYNRmOiSAO+TaDqS2E0E2w+QA/QzlFg
pn+kVutxLYmUt/GtFYK3Xoz3eFDvSzrcLl8to2xRL2GiJfyMZiKITcvnID9frwJb1hT6BM5FTEnf
znLIuILcXz9YfZxLx4rxlis9LfNyEnqOJFMuVDtxZiKMJlIrkEzo96u/esTJwneP+yqNFX5s5yZL
C6wN1Wo9ze9xNtGE7cdW8HOR32U1XHEXw6vGhnSslHJ4rBrbO1j4+swJOxSID+4L9wP3L+hf9SUJ
ATGksMlTVymEW7pRf7aKr4pssi1eMzgfat3GnPD6z9onXCCxB7j0CBjwxfUZVhStKChlVxt3xHX1
bO4VhCFuq9ealfvXYkzG0Ftc1ezx0JIDs1ppnpnuz+WoGipCDVJUo58tYLgdmQ3/H8j3OdTNi+Ku
F2OrXaMEr/IoHbeo083m4tuC7h1UGiPlN9sgOaWYjheHfaGscp3vRsysEX+QGvC0+NlgLIMV8IiM
7Xlt4wyv9qCq8YcjB89xGdOoIGgASZjuUpDbeMEX7ydB8rDkEwPILacHEWQsaDb/5vcrfkT2BIy0
gyCd5uk8QnqK335cIV21zzPqVnst4BAmwV0v4sJ+YY/dUGoRprdnYCspHQeZn7EXyl74EM1kPV3Q
Mvn4WvUk8VZv+penGkSgHmpcXhHspQ4qM3xCWOjwQOahXR/4gaF5L9V6iJ475y1hnpK7t2jpEgPZ
SFziuP4NcoJitCXGFiUBu+Om6tAWJoJBQ3Wbr/LE5yFR2vM8TdZy1YXwCmquHaxbpqTOj8WEWF0j
xsI8VBQWibIr2O0nRjXUSLRxafR+ENzG7bCf+U2+7MHTVhF4AJSz8w8OG22XjSrywxduk8Mc48+P
4Ksr5mLQqxymR8pJ0U8rPezybCotT+Ctu1GuacW8JqIdP6pdZ5sMtXeSQrgC6A0UpXa0No3Pmlid
N2ClsGV+1jVE7Qd86jLocSxdrW61gBcS1R0KnQsmMrnRAml413eu9i17xkR8ak4nDXnwiYRFN5Ub
41LN6/tt7nlTEEvaGK+wAJU7PXD0urhM05jDD52p6XG920Yv5wu19q0f9oXvB8pybVEZOESxtZuD
4yWVGUiIXKnjIYsu86prmGr2R4jwzLLIzB1NlX1OpkxCb9lh/uZ5vMPSH9y5rrHfTEpKHgkB1w6U
qr+GXTom7NPjYFAq9vbxy8tGiD01utyNAL0aG+6Qt2z9iBOg4WKbjIKHnQQWMrCs5aOzXzHCmTdk
YhNcRKcvUrhQPp8cRuzIs0aDOHPApYfRaOWAclrjQ6y6puPu2WlyG7Xihs6D3dEGsP//H2XI7tYr
m5bZhKIctYheYC273ZqbTCJtoQegNDo0XKPUGooy7IDVCdpesOq9z8DpItToauKcWsmpWybgivL6
vBchv9rYy9imOonfS6tzcg98wyoczVyeSgx47rGAGtuhVNimFMMB+zmSR14m2Fh95ubaLsU2sfVD
EQ4Mk9QARu650hc6jXG6AyIBZgjF/rYLtrTxSwVkobemOKZDNuHOmXR3GrJP29MU01uXZDfoom9D
qS6rdiPU2OWYL9DP9T6ssZECpcabFjePv8efLWXbhXoGVfg9XNl3q9nZ34auP26Dr4b1Qkagc2yi
BtdXRuXSfdoq4YxsxuTW5WEPA2LaiQgdW9XtTBV1xaMQjtCKeQLWUXzHpOfgyqzasjefAp5+tBCt
SElkGreVixefnZEKEVa+XNwnIW2sL6VssSvrirZ05yUyJzA/wCYWOTV35DDZ7AwjSzWhTmXlcnX7
AnqLco/QwcF0kLhcJ5ieERYN93GVdSKQ5B9Rgqc1Vk+A8Rfi220yRo8HiQ1B5Qkv5rN8J8fSwkfg
y5NhNGbWYcKXEADMKeUnnuh2oQoKuCViMxdnY3TFZW5ZTs8KrmBuIA0B5o0IaVCwbmnZ7wVQyia7
uTM16WfdqLrfZ5uhY+NzP52dPsM/oxVVhm8fYUNKzWBPtukdkZoqhZ92MyViKc9pZyRltn0fBFDx
2DCJ/+GiMUh/X6d16QEaKNG8gBuj/74zl4IxX/TdYjebt8981cwjYsTeRa4LGLZP/LOqM4iH6ziJ
OuQ0jBBCD3Ry6407pVl0PEglaCBwIHpKK3nLfghuoXYA9REu5moePd2kxX4s/9qiC1dqjrgZQadO
bWfA2qDU8Z6wtbbh4BJSpFYjBWjNC89t4OkD3dWrJ94VtqV02DA3IMv+U353EAx+njbBIjuGDFqT
3aZsyiQIky2M6w/arWFeNeLWfz/UMWkGBSaJnnotgaSgJnUS2EJZ1f5ENIu7gsWLu3I8gYKjfqbA
B4HZe5DKbhKaqvOlm7yO5EwUckwt79O/9P+4iAQJdgNXo0N5ECvKFwNwmRYz9O0guPicNNM/IzkH
YN7nKTpqnTPtCHFcw8nTpjkf6O3k7q2VCOya3f6xqcMNTGkEhbOIWNjx8Q+GDcwxBFDTrHqfHVc/
8nlriqJnwhbloWOHP1XR7I6mG7APzMyoEC/Gd9xBOpSJ89pX8VO4xEyEzWNHdpr+y9rgMDOOqZDp
T/nvtAcR4+Eu7s6WtD9Jr8Hncu/6rwAMF0/7yIzvu1fsqCAcPpXzQLkadIz52BjaDzjcBhx4AwdP
l7kbcBZVrSZhS1uYkQEYbhIF9cMIMsNIE8KJnZ52k6E1ReBcamJSR78wXIu8aaJ+IE0S/bKlYkrP
cEPigKAyR6bBVCHEBuhkkUl7iBtMGLWLamSx4tyYIT9c/55reaAsDXdv8xWE9fsbGPCQn2mzOy3X
IIOnvTuyjN3+WW9hlYsfIbc7fw1sv5+oA4hCHHRAy4gEdsER3jmCmGr1RqwIlenD8w4+oGPEWGh5
3lqSm+3yvSb9vVeLRdSm0TOjLejShZ0h+WkA3jcL0EvuUxY2G+4qpooPDxstfpd0SkwgdPY4pLLh
Tdf92wXOIPexFxVXJnGYKFFwb9XVVe7zYUnJZ5XHPG9KowbKMjobI9MyHaQVQa4o9l5F4Kg331oF
lWsApdSN2ULupwBRpDj+UWbqJmUxLAPeJUd/BNJd7IMdKknKbxW1DiLlfERg4ys8fHcFcJf/y2LT
Rso9B+riFBNHjN0k/qT0fOzg1yIee+fpESCFtHFMHFS75oia7gyFxfjgugL3b1wcj0gOayWZi5cn
giDQxYpPhavQs7qU98546CnugnoUaqC7MdLud45kKOl2oUn8/3BfTBp5s/oIVVwJ55DHXNHDVxs4
1w6bd2zA/vl8jPP0iGh8F54tmUQxaSaeei1q6TP/zaj1d06PxlHz1apq0obYU+le4m4OCW3W7Bb+
KtZ+kvr4e1PoHmaH/k8tNIgqYZ3kc+W1XyVI4rb4oyp880nlLsvg6dAWBfJPELg9Rw7acTAgcu6t
41ZGc1f35bIyTuy+GH+c4xCoS9hCodejLX0e90n6QUK6nNypyBmMWipxNNjWF8mH2a8IHPFgv2k4
rQ9YZsvbGLjMwCslvZjlnT9yPGIY8k5Q+88L5NVylhSGI0ZAvJ7tWCYOkN0UUOZQWWWL2KmrHKaM
ZzXcrkbfkY/ipY7vtScXOQTChnMvZ7MMr7DkjNwMBuUFM0LD6NfX0Yx+wjkDuBzEWUsRjd8ohsBV
8u3+jeF3en9qkiI6j2iuFADpsEkl6yRepKoIX3bA+CAsdruulfBsmU9sM3dJKdf8idJF0bBwK2Wy
SLd/AzRnmVLh0OjoDeF+hmXiPKbJDb+qbEw7uFtqIbaOR7+mVx/MCfysKMj864S2t/oKqnGPpoNY
lDNEdg7t6ddRqTcN2frU1LZQQ5AfTXv9INRYIlKvLTPk/08VrK0X/hbPtgDXYuoMaThQqLt/J6bB
4hcJlVDrxcB8n6eS6doG2F9d9wKeyhPvrBCaKc6wkG7hOXZx2hYhsKaBUkUPQxU+jprtAjz7qB7y
cBx4fWZNCLl8fXxcxFpt8mUrPuy5IBaJ+5YcIpeQCgeFG1veDtLH/tigNI4cv/MC8UJew5mUK3p4
a/qA/1RU/OyjHt/ZnfEEdrmd2ZgFUSMjomCf1cs4nugwuC1tMJXoyizGMovvzImuVB90wVEnow4O
FQhPILcrfT6+sRnxWoIi7CPVrzaWZELI2FXEMWe1PxXnJC5ZqdzLqkrZXurhU/1d686349/sxCXk
zOyxxoCgVMEX7sB1S4ZatDCf7rrnKNKmdIXKM15tYL+U4CxIavFiYuwPcCYlJ5Qb06c/4LfDFvxg
tekrdFnPBTFeVs/iMgsbv8j9mZJDfqxVxnSEQmoJJWxFSl/AqrRL9Fg5BcEd8BVVCMOazQi+Q+vF
svSI2Opg7yZpnmcEV0v6bf5V5GjQAOdallcSr9TnU07Y/eieYgLs9sBD1hO0Kw4krrWr2UVHMGdC
NfvXLnV1dhMHAdL6Zudm9D6052XWA91vhNq7B4+BNfnQjsUtmZP4q7GQKDLuzTqxSSqe1FyxyfPN
KtFH8YK12xLXrHnmCnmKR/kh0UkE3K0z9z3AODtum1tskLWFAjYfbUCvibq57dLtIpkUx1MB+9/k
+F2JcvY5CWD/k5f8nFLamvNbINYoMt5dcShKFzEjzNwtOduGV5G5q1qeVxHi8UmM3bR9Xdp+AqVM
XKuBgiOZugDscVe+UbDDHCM+6n6wKnhAJc+AwQd0+mNmdfPtOgmuAQUqETsrZUtg9Bf/bMV3Ff2n
5R6C5oVokHkSGSnZ9hyfS3NKQfBbrB7sFQJ6SSdTqDyHr276Z/scLngIDx51hCzfjeG1f+4govvT
cfdOueWzItypGASCpREKVtF201UC/sCd/pLxWbK9M5hnpWf7byTT5nLdpvk2eU1LJs+0F8BHGjQP
NTdP5F4gEy9mpbwt+uloAFehCfDZJkgdEWVaomEsA5qaBCSxob3r0LiXD0WgxlnxwizVLgAtDWJF
SUmISgPWjWecC03AbK6VXA3ZxUNthwIF1uAbmFQZ5FLqMMiEKGnejVUeBdiqao6COci4o6UUTrhj
xaeovzxZ4Y5o5Ol1EwTHAf8h4ID4IPlIenXh1vkSolq8/49GpbblRyx6Dd0+Qy/es5df3j0hUTLR
CL57CrKRG5n/aRP4i3TyMSIE7co0nBeZk61yI4QGP4NP5BHaWhnf90OXhvBOhq2dP92wwG3DQPoy
NGmEGKvI1HOqg/2R5LGjZEdu9Ocls0D2YW9QYj2SvaqghX1sdZ+gq6UNgccEodhblqpekM9RhY52
UwaC/QWPNsyo7Hq3iyc2iZL1pHixqR9bdccZCZS5gH5whPUOi0vT7tqGRMx3EdCV4VnI9Y+ABCI2
1BZV0JxGDJp02qskJMSrIMGlrYlvGFsXLGZRViEiV1qbm6pTuSp8Bv7z+8L5d7Ot59cjrVyKluS1
HBfqrtaT/N7+ljvqALmb4jGVCPNTu/6XILTNvPOqhZyWypYYoAvyRPrp5hex0IpGNMFlusHb+vVu
3HstgX5WIn/XgReNd94nuKevIuRvoRk3dUAve72qKTDxLKQhdRvZPkG1p0Boep3IatS6VLMfpwhg
QWOXCr6nLJ/EtAsVu30eq+MUWSsovlMSBBEQB231ZTNIhwr9aHXCo2dho63n9e4rduINN0SScqrT
4CHVz34tzgFu+kfTDE2oZAeskrWombjruwlm1FV9gUKTfilPK3IlnXb6u4RVgbx1cOVQBe3HTcJ8
A5HnkTuTovwNYsxseAKxb+DRp7CLoyIP/eX9afaybqVT4ry94XQTF63ASKEm1H+wvvNIZ+DfQSfW
TfFCP+zPOoRXgetEf3C66eg9GhQsSjVQc46otINEgDjKBfAjsAPaG0lI4yUXH2/1YzoAdqzHte21
/85kjhTybQTWyxrCAmndmfhs/upSBJzeXxvXjsGf69D825WEys1YYONoTTFdbIZy0rl2UMxN1Mxd
5smVQapJxAm2BAgMkFgbg6JsEKWYcwxxJryQimfy10gPmpBGRrUNdVqVTBRy9TKRgD63a7GLAZJ7
sldRv7poCvUklvVY6k1uPVkdZi44BYvuQHER/p6ZI7ERvq7xAnNnepTZJCx8c5TpG5kk3C1DGLtZ
0NhqhjoEfz+/R7C9Znkzdtke6sgGLiID46dEU1Ttwn87/t6fauVcghbKOyHfN6FfZFhc+BnmIIMQ
MgDuafpfBkFSguheaOlG3RrOsvrbfUbrl8CFE12CwWq345gG4iFRYY0wptIwTzkSwKJtvuHW9Y1j
x/Gn6tYofAuZWYaZEX8axJujyGI+R2dYB/Lrgx3xmkh56zddnuO8HaGc5EbWBvWTn17MVBjs/W36
qyH7R115kRsMNkurcE0jvZL6+lg5SqEKLVCl
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
