// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Mon Dec  1 15:48:01 2025
// Host        : DESKTOP-2HRT285 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/llillo/Desktop/cosas_ordenadas/uni/memoria/fcc/HDL_original/Gold_Ref_22_14/fcc_fixpt_fil/fpgaproj/fcc_fixpt_fil.gen/sources_1/ip/jtag_mac_fifo/jtag_mac_fifo_sim_netlist.v
// Design      : jtag_mac_fifo
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "jtag_mac_fifo,fifo_generator_v13_2_8,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_8,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module jtag_mac_fifo
   (rst,
    wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    almost_full,
    empty,
    rd_data_count,
    wr_rst_busy,
    rd_rst_busy);
  input rst;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME write_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input wr_clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME read_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input rd_clk;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [7:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [7:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE ALMOST_FULL" *) output almost_full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  output [11:0]rd_data_count;
  output wr_rst_busy;
  output rd_rst_busy;

  wire almost_full;
  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire rd_clk;
  wire [11:0]rd_data_count;
  wire rd_en;
  wire rd_rst_busy;
  wire rst;
  wire wr_clk;
  wire wr_en;
  wire wr_rst_busy;
  wire NLW_U0_almost_empty_UNCONNECTED;
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
  wire [11:0]NLW_U0_data_count_UNCONNECTED;
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
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [11:0]NLW_U0_wr_data_count_UNCONNECTED;

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
  (* C_DATA_COUNT_WIDTH = "12" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "8" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "8" *) 
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
  (* C_HAS_ALMOST_FULL = "1" *) 
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
  (* C_HAS_RD_DATA_COUNT = "1" *) 
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
  (* C_PRIM_FIFO_TYPE = "4kx9" *) 
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
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "4093" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "4092" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "12" *) 
  (* C_RD_DEPTH = "4096" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "12" *) 
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
  (* C_WR_DATA_COUNT_WIDTH = "12" *) 
  (* C_WR_DEPTH = "4096" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "12" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  jtag_mac_fifo_fifo_generator_v13_2_8 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(almost_full),
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
        .data_count(NLW_U0_data_count_UNCONNECTED[11:0]),
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
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(rd_clk),
        .rd_data_count(rd_data_count),
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
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[11:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(wr_rst_busy));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "12" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module jtag_mac_fifo_xpm_cdc_gray
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [11:0]src_in_bin;
  input dest_clk;
  output [11:0]dest_out_bin;

  wire [11:0]async_path;
  wire [10:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [11:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [11:0]\dest_graysync_ff[1] ;
  wire [11:0]dest_out_bin;
  wire [10:0]gray_enc;
  wire src_clk;
  wire [11:0]src_in_bin;

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
  FDRE \dest_graysync_ff_reg[0][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[10]),
        .Q(\dest_graysync_ff[0] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][11] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[11]),
        .Q(\dest_graysync_ff[0] [11]),
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
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[8]),
        .Q(\dest_graysync_ff[0] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[9]),
        .Q(\dest_graysync_ff[0] [9]),
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
  FDRE \dest_graysync_ff_reg[1][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [10]),
        .Q(\dest_graysync_ff[1] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][11] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [11]),
        .Q(\dest_graysync_ff[1] [11]),
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
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [8]),
        .Q(\dest_graysync_ff[1] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [9]),
        .Q(\dest_graysync_ff[1] [9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(binval[1]),
        .O(binval[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[10]_i_1 
       (.I0(\dest_graysync_ff[1] [10]),
        .I1(\dest_graysync_ff[1] [11]),
        .O(binval[10]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [5]),
        .I3(binval[6]),
        .I4(\dest_graysync_ff[1] [4]),
        .I5(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(binval[6]),
        .I3(\dest_graysync_ff[1] [5]),
        .I4(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [5]),
        .I2(binval[6]),
        .I3(\dest_graysync_ff[1] [4]),
        .O(binval[3]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(binval[6]),
        .I2(\dest_graysync_ff[1] [5]),
        .O(binval[4]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[5]_i_1 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(binval[6]),
        .O(binval[5]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[6]_i_1 
       (.I0(\dest_graysync_ff[1] [6]),
        .I1(\dest_graysync_ff[1] [8]),
        .I2(\dest_graysync_ff[1] [10]),
        .I3(\dest_graysync_ff[1] [11]),
        .I4(\dest_graysync_ff[1] [9]),
        .I5(\dest_graysync_ff[1] [7]),
        .O(binval[6]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[7]_i_1 
       (.I0(\dest_graysync_ff[1] [7]),
        .I1(\dest_graysync_ff[1] [9]),
        .I2(\dest_graysync_ff[1] [11]),
        .I3(\dest_graysync_ff[1] [10]),
        .I4(\dest_graysync_ff[1] [8]),
        .O(binval[7]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[8]_i_1 
       (.I0(\dest_graysync_ff[1] [8]),
        .I1(\dest_graysync_ff[1] [10]),
        .I2(\dest_graysync_ff[1] [11]),
        .I3(\dest_graysync_ff[1] [9]),
        .O(binval[8]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[9]_i_1 
       (.I0(\dest_graysync_ff[1] [9]),
        .I1(\dest_graysync_ff[1] [11]),
        .I2(\dest_graysync_ff[1] [10]),
        .O(binval[9]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[10]),
        .Q(dest_out_bin[10]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[11] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [11]),
        .Q(dest_out_bin[11]),
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
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[5]),
        .Q(dest_out_bin[5]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[6]),
        .Q(dest_out_bin[6]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[7]),
        .Q(dest_out_bin[7]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[8]),
        .Q(dest_out_bin[8]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[9]),
        .Q(dest_out_bin[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[10]_i_1 
       (.I0(src_in_bin[11]),
        .I1(src_in_bin[10]),
        .O(gray_enc[10]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[7]_i_1 
       (.I0(src_in_bin[8]),
        .I1(src_in_bin[7]),
        .O(gray_enc[7]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[8]_i_1 
       (.I0(src_in_bin[9]),
        .I1(src_in_bin[8]),
        .O(gray_enc[8]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[9]_i_1 
       (.I0(src_in_bin[10]),
        .I1(src_in_bin[9]),
        .O(gray_enc[9]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[10] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[10]),
        .Q(async_path[10]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[11] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[11]),
        .Q(async_path[11]),
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
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[7]),
        .Q(async_path[7]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[8] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[8]),
        .Q(async_path[8]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[9] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[9]),
        .Q(async_path[9]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "12" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module jtag_mac_fifo_xpm_cdc_gray__2
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [11:0]src_in_bin;
  input dest_clk;
  output [11:0]dest_out_bin;

  wire [11:0]async_path;
  wire [10:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [11:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [11:0]\dest_graysync_ff[1] ;
  wire [11:0]dest_out_bin;
  wire [10:0]gray_enc;
  wire src_clk;
  wire [11:0]src_in_bin;

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
  FDRE \dest_graysync_ff_reg[0][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[10]),
        .Q(\dest_graysync_ff[0] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][11] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[11]),
        .Q(\dest_graysync_ff[0] [11]),
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
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[8]),
        .Q(\dest_graysync_ff[0] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[9]),
        .Q(\dest_graysync_ff[0] [9]),
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
  FDRE \dest_graysync_ff_reg[1][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [10]),
        .Q(\dest_graysync_ff[1] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][11] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [11]),
        .Q(\dest_graysync_ff[1] [11]),
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
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [8]),
        .Q(\dest_graysync_ff[1] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [9]),
        .Q(\dest_graysync_ff[1] [9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(binval[1]),
        .O(binval[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[10]_i_1 
       (.I0(\dest_graysync_ff[1] [10]),
        .I1(\dest_graysync_ff[1] [11]),
        .O(binval[10]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [5]),
        .I3(binval[6]),
        .I4(\dest_graysync_ff[1] [4]),
        .I5(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(binval[6]),
        .I3(\dest_graysync_ff[1] [5]),
        .I4(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [5]),
        .I2(binval[6]),
        .I3(\dest_graysync_ff[1] [4]),
        .O(binval[3]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(binval[6]),
        .I2(\dest_graysync_ff[1] [5]),
        .O(binval[4]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[5]_i_1 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(binval[6]),
        .O(binval[5]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[6]_i_1 
       (.I0(\dest_graysync_ff[1] [6]),
        .I1(\dest_graysync_ff[1] [8]),
        .I2(\dest_graysync_ff[1] [10]),
        .I3(\dest_graysync_ff[1] [11]),
        .I4(\dest_graysync_ff[1] [9]),
        .I5(\dest_graysync_ff[1] [7]),
        .O(binval[6]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[7]_i_1 
       (.I0(\dest_graysync_ff[1] [7]),
        .I1(\dest_graysync_ff[1] [9]),
        .I2(\dest_graysync_ff[1] [11]),
        .I3(\dest_graysync_ff[1] [10]),
        .I4(\dest_graysync_ff[1] [8]),
        .O(binval[7]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[8]_i_1 
       (.I0(\dest_graysync_ff[1] [8]),
        .I1(\dest_graysync_ff[1] [10]),
        .I2(\dest_graysync_ff[1] [11]),
        .I3(\dest_graysync_ff[1] [9]),
        .O(binval[8]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[9]_i_1 
       (.I0(\dest_graysync_ff[1] [9]),
        .I1(\dest_graysync_ff[1] [11]),
        .I2(\dest_graysync_ff[1] [10]),
        .O(binval[9]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[10]),
        .Q(dest_out_bin[10]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[11] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [11]),
        .Q(dest_out_bin[11]),
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
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[5]),
        .Q(dest_out_bin[5]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[6]),
        .Q(dest_out_bin[6]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[7]),
        .Q(dest_out_bin[7]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[8]),
        .Q(dest_out_bin[8]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[9]),
        .Q(dest_out_bin[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[10]_i_1 
       (.I0(src_in_bin[11]),
        .I1(src_in_bin[10]),
        .O(gray_enc[10]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[7]_i_1 
       (.I0(src_in_bin[8]),
        .I1(src_in_bin[7]),
        .O(gray_enc[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[8]_i_1 
       (.I0(src_in_bin[9]),
        .I1(src_in_bin[8]),
        .O(gray_enc[8]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[9]_i_1 
       (.I0(src_in_bin[10]),
        .I1(src_in_bin[9]),
        .O(gray_enc[9]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[10] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[10]),
        .Q(async_path[10]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[11] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[11]),
        .Q(async_path[11]),
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
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[7]),
        .Q(async_path[7]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[8] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[8]),
        .Q(async_path[8]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[9] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[9]),
        .Q(async_path[9]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SINGLE" *) 
module jtag_mac_fifo_xpm_cdc_single
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
module jtag_mac_fifo_xpm_cdc_single__2
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
module jtag_mac_fifo_xpm_cdc_sync_rst
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
module jtag_mac_fifo_xpm_cdc_sync_rst__2
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 138496)
`pragma protect data_block
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
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
