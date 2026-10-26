module SYS_TOP (
	REF_CLK, 
	UART_CLK, 
	RST_N, 
	UART_RX_IN, 
	UART_TX_OUT, 
	parity_error, 
	framing_error, 
	scan_clk, 
	scan_rst, 
	test_mode, 
	SE, 
	SI, 
	SO);
   input REF_CLK;
   input UART_CLK;
   input RST_N;
   input UART_RX_IN;
   output UART_TX_OUT;
   output parity_error;
   output framing_error;
   input scan_clk;
   input scan_rst;
   input test_mode;
   input SE;
   input [3:0] SI;
   output [3:0] SO;

   // Internal wires
   wire FE_PHN7_RST_N;
   wire FE_PHN6_RST_N;
   wire FE_PHN5_scan_rst;
   wire FE_PHN4_scan_rst;
   wire FE_PHN3_scan_rst;
   wire FE_PHN2_scan_rst;
   wire FE_PHN1_scan_rst;
   wire FE_PHN0_scan_rst;
   wire UART_CLK__L2_N0;
   wire UART_CLK__L1_N0;
   wire REF_CLK__L2_N0;
   wire REF_CLK__L1_N0;
   wire scan_clk__L11_N0;
   wire scan_clk__L10_N0;
   wire scan_clk__L9_N0;
   wire scan_clk__L8_N0;
   wire scan_clk__L7_N0;
   wire scan_clk__L6_N0;
   wire scan_clk__L5_N0;
   wire scan_clk__L4_N0;
   wire scan_clk__L3_N0;
   wire scan_clk__L2_N0;
   wire scan_clk__L1_N0;
   wire scan_func_ref_clk__L7_N13;
   wire scan_func_ref_clk__L7_N12;
   wire scan_func_ref_clk__L7_N11;
   wire scan_func_ref_clk__L7_N10;
   wire scan_func_ref_clk__L7_N9;
   wire scan_func_ref_clk__L7_N8;
   wire scan_func_ref_clk__L7_N7;
   wire scan_func_ref_clk__L7_N6;
   wire scan_func_ref_clk__L7_N5;
   wire scan_func_ref_clk__L7_N4;
   wire scan_func_ref_clk__L7_N3;
   wire scan_func_ref_clk__L7_N2;
   wire scan_func_ref_clk__L7_N1;
   wire scan_func_ref_clk__L7_N0;
   wire scan_func_ref_clk__L6_N3;
   wire scan_func_ref_clk__L6_N2;
   wire scan_func_ref_clk__L6_N1;
   wire scan_func_ref_clk__L6_N0;
   wire scan_func_ref_clk__L5_N1;
   wire scan_func_ref_clk__L5_N0;
   wire scan_func_ref_clk__L4_N0;
   wire scan_func_ref_clk__L3_N0;
   wire scan_func_ref_clk__L2_N1;
   wire scan_func_ref_clk__L2_N0;
   wire scan_func_ref_clk__L1_N0;
   wire gated_clk__L3_N1;
   wire gated_clk__L3_N0;
   wire gated_clk__L2_N0;
   wire gated_clk__L1_N0;
   wire scan_func_uart_clk__L10_N0;
   wire scan_func_uart_clk__L9_N0;
   wire scan_func_uart_clk__L8_N0;
   wire scan_func_uart_clk__L7_N0;
   wire scan_func_uart_clk__L6_N0;
   wire scan_func_uart_clk__L5_N1;
   wire scan_func_uart_clk__L5_N0;
   wire scan_func_uart_clk__L4_N0;
   wire scan_func_uart_clk__L3_N0;
   wire scan_func_uart_clk__L2_N1;
   wire scan_func_uart_clk__L2_N0;
   wire scan_func_uart_clk__L1_N0;
   wire scan_func_tx_clk__L3_N0;
   wire scan_func_tx_clk__L2_N0;
   wire scan_func_tx_clk__L1_N0;
   wire scan_func_rx_clk__L3_N0;
   wire scan_func_rx_clk__L2_N0;
   wire scan_func_rx_clk__L1_N0;
   wire FE_OFN7_SE;
   wire FE_OFN4_d0_scan_func_rst;
   wire FE_OFN3_d0_scan_func_rst;
   wire FE_OFN2_d0_scan_func_rst;
   wire FE_OFN1_d0_scan_func_rst;
   wire FE_OFN0_d1_scan_func_rst;
   wire N0;
   wire scan_func_rst;
   wire scan_func_ref_clk;
   wire scan_func_uart_clk;
   wire d0_sync_rst_n;
   wire d1_sync_rst_n;
   wire d0_scan_func_rst;
   wire d1_scan_func_rst;
   wire tx_clk;
   wire rx_clk;
   wire scan_func_tx_clk;
   wire scan_func_rx_clk;
   wire parity_type;
   wire parity_enable;
   wire tx_busy;
   wire rx_data_valid;
   wire _0_net_;
   wire gated_clk;
   wire clk_en;
   wire alu_out_valid;
   wire alu_en;
   wire rd_data_valid;
   wire rd_en;
   wire wr_en;
   wire full_flag;
   wire empty_flag;
   wire rd_inc;
   wire wr_inc;
   wire payload_valid;
   wire n1;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n10;
   wire n13;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire [7:0] rx_div_ratio;
   wire [5:0] prescale;
   wire [7:0] tx_div_ratio;
   wire [7:0] tx_p_data;
   wire [7:0] rx_p_data;
   wire [15:0] alu_out;
   wire [3:0] alu_fun;
   wire [7:0] op_b;
   wire [7:0] op_a;
   wire [7:0] rd_data;
   wire [7:0] wr_data;
   wire [3:0] addr;
   wire [7:0] f_data_in;
   wire [7:0] payload;
   wire SYNOPSYS_UNCONNECTED__0;
   wire SYNOPSYS_UNCONNECTED__1;

   assign N0 = test_mode ;

   DLY4X1M FE_PHC7_RST_N (.Y(FE_PHN7_RST_N), 
	.A(FE_PHN6_RST_N));
   DLY4X1M FE_PHC6_RST_N (.Y(FE_PHN6_RST_N), 
	.A(RST_N));
   DLY4X1M FE_PHC5_scan_rst (.Y(FE_PHN5_scan_rst), 
	.A(FE_PHN2_scan_rst));
   DLY4X1M FE_PHC4_scan_rst (.Y(FE_PHN4_scan_rst), 
	.A(FE_PHN1_scan_rst));
   DLY4X1M FE_PHC3_scan_rst (.Y(FE_PHN3_scan_rst), 
	.A(FE_PHN0_scan_rst));
   DLY4X1M FE_PHC2_scan_rst (.Y(FE_PHN2_scan_rst), 
	.A(scan_rst));
   DLY4X1M FE_PHC1_scan_rst (.Y(FE_PHN1_scan_rst), 
	.A(scan_rst));
   DLY4X1M FE_PHC0_scan_rst (.Y(FE_PHN0_scan_rst), 
	.A(scan_rst));
   CLKINVX8M UART_CLK__L2_I0 (.Y(UART_CLK__L2_N0), 
	.A(UART_CLK__L1_N0));
   CLKINVX40M UART_CLK__L1_I0 (.Y(UART_CLK__L1_N0), 
	.A(UART_CLK));
   CLKINVX8M REF_CLK__L2_I0 (.Y(REF_CLK__L2_N0), 
	.A(REF_CLK__L1_N0));
   CLKINVX40M REF_CLK__L1_I0 (.Y(REF_CLK__L1_N0), 
	.A(REF_CLK));
   CLKINVX32M scan_clk__L11_I0 (.Y(scan_clk__L11_N0), 
	.A(scan_clk__L10_N0));
   CLKINVX40M scan_clk__L10_I0 (.Y(scan_clk__L10_N0), 
	.A(scan_clk__L9_N0));
   CLKBUFX40M scan_clk__L9_I0 (.Y(scan_clk__L9_N0), 
	.A(scan_clk__L8_N0));
   CLKBUFX20M scan_clk__L8_I0 (.Y(scan_clk__L8_N0), 
	.A(scan_clk__L7_N0));
   CLKBUFX24M scan_clk__L7_I0 (.Y(scan_clk__L7_N0), 
	.A(scan_clk__L6_N0));
   CLKBUFX24M scan_clk__L6_I0 (.Y(scan_clk__L6_N0), 
	.A(scan_clk__L5_N0));
   CLKBUFX24M scan_clk__L5_I0 (.Y(scan_clk__L5_N0), 
	.A(scan_clk__L4_N0));
   CLKBUFX24M scan_clk__L4_I0 (.Y(scan_clk__L4_N0), 
	.A(scan_clk__L3_N0));
   CLKBUFX24M scan_clk__L3_I0 (.Y(scan_clk__L3_N0), 
	.A(scan_clk__L2_N0));
   CLKINVX16M scan_clk__L2_I0 (.Y(scan_clk__L2_N0), 
	.A(scan_clk__L1_N0));
   CLKINVX40M scan_clk__L1_I0 (.Y(scan_clk__L1_N0), 
	.A(scan_clk));
   CLKINVX32M scan_func_ref_clk__L7_I13 (.Y(scan_func_ref_clk__L7_N13), 
	.A(scan_func_ref_clk__L6_N3));
   CLKINVX32M scan_func_ref_clk__L7_I12 (.Y(scan_func_ref_clk__L7_N12), 
	.A(scan_func_ref_clk__L6_N3));
   CLKINVX32M scan_func_ref_clk__L7_I11 (.Y(scan_func_ref_clk__L7_N11), 
	.A(scan_func_ref_clk__L6_N3));
   CLKINVX32M scan_func_ref_clk__L7_I10 (.Y(scan_func_ref_clk__L7_N10), 
	.A(scan_func_ref_clk__L6_N3));
   CLKINVX32M scan_func_ref_clk__L7_I9 (.Y(scan_func_ref_clk__L7_N9), 
	.A(scan_func_ref_clk__L6_N2));
   CLKINVX32M scan_func_ref_clk__L7_I8 (.Y(scan_func_ref_clk__L7_N8), 
	.A(scan_func_ref_clk__L6_N2));
   CLKINVX32M scan_func_ref_clk__L7_I7 (.Y(scan_func_ref_clk__L7_N7), 
	.A(scan_func_ref_clk__L6_N2));
   CLKINVX32M scan_func_ref_clk__L7_I6 (.Y(scan_func_ref_clk__L7_N6), 
	.A(scan_func_ref_clk__L6_N1));
   CLKINVX32M scan_func_ref_clk__L7_I5 (.Y(scan_func_ref_clk__L7_N5), 
	.A(scan_func_ref_clk__L6_N1));
   CLKINVX32M scan_func_ref_clk__L7_I4 (.Y(scan_func_ref_clk__L7_N4), 
	.A(scan_func_ref_clk__L6_N1));
   CLKINVX32M scan_func_ref_clk__L7_I3 (.Y(scan_func_ref_clk__L7_N3), 
	.A(scan_func_ref_clk__L6_N1));
   CLKINVX32M scan_func_ref_clk__L7_I2 (.Y(scan_func_ref_clk__L7_N2), 
	.A(scan_func_ref_clk__L6_N0));
   CLKINVX32M scan_func_ref_clk__L7_I1 (.Y(scan_func_ref_clk__L7_N1), 
	.A(scan_func_ref_clk__L6_N0));
   CLKINVX32M scan_func_ref_clk__L7_I0 (.Y(scan_func_ref_clk__L7_N0), 
	.A(scan_func_ref_clk__L6_N0));
   CLKINVX40M scan_func_ref_clk__L6_I3 (.Y(scan_func_ref_clk__L6_N3), 
	.A(scan_func_ref_clk__L5_N1));
   CLKINVX40M scan_func_ref_clk__L6_I2 (.Y(scan_func_ref_clk__L6_N2), 
	.A(scan_func_ref_clk__L5_N1));
   CLKINVX40M scan_func_ref_clk__L6_I1 (.Y(scan_func_ref_clk__L6_N1), 
	.A(scan_func_ref_clk__L5_N0));
   CLKINVX40M scan_func_ref_clk__L6_I0 (.Y(scan_func_ref_clk__L6_N0), 
	.A(scan_func_ref_clk__L5_N0));
   CLKINVX40M scan_func_ref_clk__L5_I1 (.Y(scan_func_ref_clk__L5_N1), 
	.A(scan_func_ref_clk__L4_N0));
   CLKINVX40M scan_func_ref_clk__L5_I0 (.Y(scan_func_ref_clk__L5_N0), 
	.A(scan_func_ref_clk__L4_N0));
   CLKINVX40M scan_func_ref_clk__L4_I0 (.Y(scan_func_ref_clk__L4_N0), 
	.A(scan_func_ref_clk__L3_N0));
   CLKINVX40M scan_func_ref_clk__L3_I0 (.Y(scan_func_ref_clk__L3_N0), 
	.A(scan_func_ref_clk__L2_N0));
   CLKINVX6M scan_func_ref_clk__L2_I1 (.Y(scan_func_ref_clk__L2_N1), 
	.A(scan_func_ref_clk__L1_N0));
   CLKBUFX24M scan_func_ref_clk__L2_I0 (.Y(scan_func_ref_clk__L2_N0), 
	.A(scan_func_ref_clk__L1_N0));
   CLKINVX8M scan_func_ref_clk__L1_I0 (.Y(scan_func_ref_clk__L1_N0), 
	.A(scan_func_ref_clk));
   CLKINVX32M gated_clk__L3_I1 (.Y(gated_clk__L3_N1), 
	.A(gated_clk__L2_N0));
   CLKINVX32M gated_clk__L3_I0 (.Y(gated_clk__L3_N0), 
	.A(gated_clk__L2_N0));
   CLKINVX32M gated_clk__L2_I0 (.Y(gated_clk__L2_N0), 
	.A(gated_clk__L1_N0));
   CLKBUFX12M gated_clk__L1_I0 (.Y(gated_clk__L1_N0), 
	.A(gated_clk));
   CLKINVX40M scan_func_uart_clk__L10_I0 (.Y(scan_func_uart_clk__L10_N0), 
	.A(scan_func_uart_clk__L9_N0));
   CLKBUFX40M scan_func_uart_clk__L9_I0 (.Y(scan_func_uart_clk__L9_N0), 
	.A(scan_func_uart_clk__L8_N0));
   CLKBUFX20M scan_func_uart_clk__L8_I0 (.Y(scan_func_uart_clk__L8_N0), 
	.A(scan_func_uart_clk__L7_N0));
   CLKBUFX20M scan_func_uart_clk__L7_I0 (.Y(scan_func_uart_clk__L7_N0), 
	.A(scan_func_uart_clk__L6_N0));
   CLKBUFX20M scan_func_uart_clk__L6_I0 (.Y(scan_func_uart_clk__L6_N0), 
	.A(scan_func_uart_clk__L5_N1));
   CLKBUFX20M scan_func_uart_clk__L5_I1 (.Y(scan_func_uart_clk__L5_N1), 
	.A(scan_func_uart_clk__L4_N0));
   CLKINVX40M scan_func_uart_clk__L5_I0 (.Y(scan_func_uart_clk__L5_N0), 
	.A(scan_func_uart_clk__L4_N0));
   CLKBUFX20M scan_func_uart_clk__L4_I0 (.Y(scan_func_uart_clk__L4_N0), 
	.A(scan_func_uart_clk__L3_N0));
   CLKBUFX20M scan_func_uart_clk__L3_I0 (.Y(scan_func_uart_clk__L3_N0), 
	.A(scan_func_uart_clk__L2_N1));
   CLKBUFX20M scan_func_uart_clk__L2_I1 (.Y(scan_func_uart_clk__L2_N1), 
	.A(scan_func_uart_clk__L1_N0));
   CLKINVX6M scan_func_uart_clk__L2_I0 (.Y(scan_func_uart_clk__L2_N0), 
	.A(scan_func_uart_clk__L1_N0));
   CLKINVX6M scan_func_uart_clk__L1_I0 (.Y(scan_func_uart_clk__L1_N0), 
	.A(scan_func_uart_clk));
   CLKINVX40M scan_func_tx_clk__L3_I0 (.Y(scan_func_tx_clk__L3_N0), 
	.A(scan_func_tx_clk__L2_N0));
   BUFX18M scan_func_tx_clk__L2_I0 (.Y(scan_func_tx_clk__L2_N0), 
	.A(scan_func_tx_clk__L1_N0));
   CLKINVX6M scan_func_tx_clk__L1_I0 (.Y(scan_func_tx_clk__L1_N0), 
	.A(scan_func_tx_clk));
   CLKINVX40M scan_func_rx_clk__L3_I0 (.Y(scan_func_rx_clk__L3_N0), 
	.A(scan_func_rx_clk__L2_N0));
   BUFX24M scan_func_rx_clk__L2_I0 (.Y(scan_func_rx_clk__L2_N0), 
	.A(scan_func_rx_clk__L1_N0));
   CLKINVX6M scan_func_rx_clk__L1_I0 (.Y(scan_func_rx_clk__L1_N0), 
	.A(scan_func_rx_clk));
   BUFX4M FE_OFC7_SE (.Y(FE_OFN7_SE), 
	.A(SE));
   CLKBUFX8M FE_OFC4_d0_scan_func_rst (.Y(FE_OFN4_d0_scan_func_rst), 
	.A(FE_OFN3_d0_scan_func_rst));
   BUFX4M FE_OFC3_d0_scan_func_rst (.Y(FE_OFN3_d0_scan_func_rst), 
	.A(FE_OFN2_d0_scan_func_rst));
   CLKBUFX8M FE_OFC2_d0_scan_func_rst (.Y(FE_OFN2_d0_scan_func_rst), 
	.A(d0_scan_func_rst));
   BUFX4M FE_OFC1_d0_scan_func_rst (.Y(FE_OFN1_d0_scan_func_rst), 
	.A(d0_scan_func_rst));
   BUFX4M FE_OFC0_d1_scan_func_rst (.Y(FE_OFN0_d1_scan_func_rst), 
	.A(d1_scan_func_rst));
   MX2X6M U10 (.Y(scan_func_ref_clk), 
	.S0(N0), 
	.B(scan_clk__L7_N0), 
	.A(REF_CLK__L2_N0));
   INVX2M U11 (.Y(n1), 
	.A(empty_flag));
   OR2X2M U12 (.Y(_0_net_), 
	.B(N0), 
	.A(clk_en));
   MX2X6M U13 (.Y(d1_scan_func_rst), 
	.S0(N0), 
	.B(FE_PHN4_scan_rst), 
	.A(d1_sync_rst_n));
   MX2X2M U14 (.Y(scan_func_rst), 
	.S0(N0), 
	.B(FE_PHN3_scan_rst), 
	.A(FE_PHN7_RST_N));
   MX2X2M U15 (.Y(scan_func_tx_clk), 
	.S0(N0), 
	.B(scan_clk__L11_N0), 
	.A(tx_clk));
   MX2X2M U16 (.Y(scan_func_rx_clk), 
	.S0(N0), 
	.B(scan_clk__L11_N0), 
	.A(rx_clk));
   MX2X2M U17 (.Y(scan_func_uart_clk), 
	.S0(N0), 
	.B(scan_clk__L2_N0), 
	.A(UART_CLK__L2_N0));
   MX2X8M U18 (.Y(d0_scan_func_rst), 
	.S0(N0), 
	.B(FE_PHN5_scan_rst), 
	.A(d0_sync_rst_n));
   DLY1X4M U25 (.Y(n18), 
	.A(n25));
   DLY1X4M U26 (.Y(n19), 
	.A(n24));
   INVXLM U27 (.Y(n20), 
	.A(n26));
   CLKINVX2M U28 (.Y(n21), 
	.A(n20));
   INVXLM U29 (.Y(n22), 
	.A(n20));
   INVXLM U30 (.Y(n23), 
	.A(FE_OFN7_SE));
   CLKINVX2M U31 (.Y(n24), 
	.A(n23));
   INVXLM U32 (.Y(n25), 
	.A(n23));
   CLKINVX2M U33 (.Y(n26), 
	.A(n23));
   rst_sync_test_0 d0_rst_sync_inst (.rst(scan_func_rst), 
	.clk(scan_func_ref_clk__L7_N6), 
	.sync_rst(d0_sync_rst_n), 
	.test_si(rd_data_valid), 
	.test_se(n24));
   rst_sync_test_1 d1_rst_sync_inst (.rst(scan_func_rst), 
	.clk(scan_func_uart_clk__L10_N0), 
	.sync_rst(d1_sync_rst_n), 
	.test_si(d0_sync_rst_n), 
	.test_se(n26));
   div_mux div_mux_inst (.tx_div_ratio({ tx_div_ratio[7],
		tx_div_ratio[6],
		tx_div_ratio[5],
		tx_div_ratio[4],
		tx_div_ratio[3],
		tx_div_ratio[2],
		tx_div_ratio[1],
		tx_div_ratio[0] }), 
	.prescale({ prescale[5],
		prescale[4],
		prescale[3],
		prescale[2],
		prescale[1],
		prescale[0] }), 
	.rx_div_ratio({ SYNOPSYS_UNCONNECTED__0,
		SYNOPSYS_UNCONNECTED__1,
		rx_div_ratio[5],
		rx_div_ratio[4],
		rx_div_ratio[3],
		rx_div_ratio[2],
		rx_div_ratio[1],
		rx_div_ratio[0] }));
   clk_div_RATIO_WIDTH8_test_1 tx_clk_div_inst (.i_ref_clk(scan_func_uart_clk__L10_N0), 
	.i_rst_n(d1_scan_func_rst), 
	.i_clk_en(1'b1), 
	.i_div_ratio({ tx_div_ratio[7],
		tx_div_ratio[6],
		tx_div_ratio[5],
		tx_div_ratio[4],
		tx_div_ratio[3],
		tx_div_ratio[2],
		tx_div_ratio[1],
		tx_div_ratio[0] }), 
	.o_div_clk(tx_clk), 
	.test_si(n4), 
	.test_so(n3), 
	.test_se(n24), 
	.scan_func_uart_clk__L2_N0(scan_func_uart_clk__L2_N0), 
	.scan_func_uart_clk__L5_N0(scan_func_uart_clk__L5_N0));
   clk_div_RATIO_WIDTH8_test_0 rx_clk_div_inst (.i_ref_clk(scan_func_uart_clk__L10_N0), 
	.i_rst_n(d1_scan_func_rst), 
	.i_clk_en(1'b1), 
	.i_div_ratio({ 1'b0,
		1'b0,
		rx_div_ratio[5],
		rx_div_ratio[4],
		rx_div_ratio[3],
		rx_div_ratio[2],
		rx_div_ratio[1],
		rx_div_ratio[0] }), 
	.o_div_clk(rx_clk), 
	.test_si(n6), 
	.test_so(n5), 
	.test_se(n26), 
	.scan_func_uart_clk__L2_N0(scan_func_uart_clk__L2_N0), 
	.scan_func_uart_clk__L5_N0(scan_func_uart_clk__L5_N0));
   uart_DATA_WIDTH8_test_1 uart_inst (.rst_n(d1_scan_func_rst), 
	.tx_clk(scan_func_tx_clk__L3_N0), 
	.rx_clk(scan_func_rx_clk__L3_N0), 
	.rx_in(UART_RX_IN), 
	.rx_p_data({ rx_p_data[7],
		rx_p_data[6],
		rx_p_data[5],
		rx_p_data[4],
		rx_p_data[3],
		rx_p_data[2],
		rx_p_data[1],
		rx_p_data[0] }), 
	.rx_data_valid(rx_data_valid), 
	.tx_p_data({ tx_p_data[7],
		tx_p_data[6],
		tx_p_data[5],
		tx_p_data[4],
		tx_p_data[3],
		tx_p_data[2],
		tx_p_data[1],
		tx_p_data[0] }), 
	.tx_data_valid(n1), 
	.tx_out(UART_TX_OUT), 
	.tx_busy(tx_busy), 
	.prescale({ prescale[5],
		prescale[4],
		prescale[3],
		prescale[2],
		prescale[1],
		prescale[0] }), 
	.parity_enable(parity_enable), 
	.parity_type(parity_type), 
	.parity_error(parity_error), 
	.framing_error(framing_error), 
	.test_si(n3), 
	.test_se(n19), 
	.FE_OFN0_d1_scan_func_rst(FE_OFN0_d1_scan_func_rst));
   clk_gate_USE_ICG1 clk_gate_inst (.clk(scan_func_ref_clk__L2_N1), 
	.clk_en(_0_net_), 
	.gated_clk(gated_clk));
   ALU_DATA_WIDTH8_FUN_WIDTH4_OUT_WIDTH16_test_1 ALU_inst (.clk(gated_clk__L3_N0), 
	.rst_n(FE_OFN3_d0_scan_func_rst), 
	.op_a({ op_a[7],
		op_a[6],
		op_a[5],
		op_a[4],
		op_a[3],
		op_a[2],
		op_a[1],
		op_a[0] }), 
	.op_b({ op_b[7],
		op_b[6],
		op_b[5],
		op_b[4],
		op_b[3],
		op_b[2],
		op_b[1],
		op_b[0] }), 
	.alu_fun({ alu_fun[3],
		alu_fun[2],
		wr_data[1],
		alu_fun[0] }), 
	.alu_en(alu_en), 
	.alu_out_valid(alu_out_valid), 
	.alu_out({ alu_out[15],
		alu_out[14],
		alu_out[13],
		alu_out[12],
		alu_out[11],
		alu_out[10],
		alu_out[9],
		alu_out[8],
		alu_out[7],
		alu_out[6],
		alu_out[5],
		alu_out[4],
		alu_out[3],
		alu_out[2],
		alu_out[1],
		alu_out[0] }), 
	.test_si(SI[3]), 
	.test_so(n13), 
	.test_se(n18), 
	.FE_OFN4_d0_scan_func_rst(FE_OFN4_d0_scan_func_rst), 
	.FE_PT1_wr_data_1_(wr_data[1]), 
	.FE_PT1_wr_data_2_(alu_fun[2]), 
	.FE_PT1_alu_fun_2_(alu_fun[2]), 
	.FE_PT1_wr_data_3_(alu_fun[3]), 
	.FE_PT1_alu_fun_3_(alu_fun[3]), 
	.gated_clk__L3_N1(gated_clk__L3_N1));
   RegFile_ADDR_WIDTH4_DATA_WIDTH8_test_1 RegFile_inst (.clk(scan_func_ref_clk__L7_N0), 
	.rst_n(d0_scan_func_rst), 
	.addr({ addr[3],
		addr[2],
		addr[1],
		addr[0] }), 
	.wr_en(wr_en), 
	.rd_en(rd_en), 
	.wr_data({ wr_data[7],
		wr_data[6],
		wr_data[5],
		wr_data[4],
		wr_data[3],
		wr_data[2],
		wr_data[1],
		alu_fun[0] }), 
	.rd_data({ rd_data[7],
		rd_data[6],
		rd_data[5],
		rd_data[4],
		rd_data[3],
		rd_data[2],
		rd_data[1],
		rd_data[0] }), 
	.rd_data_valid(rd_data_valid), 
	.reg_0({ op_a[7],
		op_a[6],
		op_a[5],
		op_a[4],
		op_a[3],
		op_a[2],
		op_a[1],
		op_a[0] }), 
	.reg_1({ op_b[7],
		op_b[6],
		op_b[5],
		op_b[4],
		op_b[3],
		op_b[2],
		op_b[1],
		op_b[0] }), 
	.reg_2({ prescale[5],
		prescale[4],
		prescale[3],
		prescale[2],
		prescale[1],
		prescale[0],
		parity_type,
		parity_enable }), 
	.reg_3({ tx_div_ratio[7],
		tx_div_ratio[6],
		tx_div_ratio[5],
		tx_div_ratio[4],
		tx_div_ratio[3],
		tx_div_ratio[2],
		tx_div_ratio[1],
		tx_div_ratio[0] }), 
	.test_si2(SI[1]), 
	.test_si1(n10), 
	.test_so1(SO[2]), 
	.test_se(FE_OFN7_SE), 
	.FE_OFN1_d0_scan_func_rst(FE_OFN1_d0_scan_func_rst), 
	.FE_OFN2_d0_scan_func_rst(FE_OFN2_d0_scan_func_rst), 
	.FE_OFN3_d0_scan_func_rst(FE_OFN3_d0_scan_func_rst), 
	.scan_func_ref_clk__L7_N1(scan_func_ref_clk__L7_N1), 
	.scan_func_ref_clk__L7_N3(scan_func_ref_clk__L7_N3), 
	.scan_func_ref_clk__L7_N4(scan_func_ref_clk__L7_N4), 
	.scan_func_ref_clk__L7_N5(scan_func_ref_clk__L7_N5), 
	.scan_func_ref_clk__L7_N6(scan_func_ref_clk__L7_N6), 
	.scan_func_ref_clk__L7_N7(scan_func_ref_clk__L7_N7), 
	.scan_func_ref_clk__L7_N9(scan_func_ref_clk__L7_N9));
   ASYNC_FIFO_DATA_WIDTH8_DEPTH8_test_1 ASYNC_FIFO_inst (.wclk(scan_func_ref_clk__L7_N10), 
	.rclk(scan_func_tx_clk__L3_N0), 
	.w_rst(FE_OFN2_d0_scan_func_rst), 
	.r_rst(FE_OFN0_d1_scan_func_rst), 
	.wr_inc(wr_inc), 
	.rd_inc(rd_inc), 
	.f_data_in({ f_data_in[7],
		f_data_in[6],
		f_data_in[5],
		f_data_in[4],
		f_data_in[3],
		f_data_in[2],
		f_data_in[1],
		f_data_in[0] }), 
	.empty_flag(empty_flag), 
	.full_flag(full_flag), 
	.f_data_out({ tx_p_data[7],
		tx_p_data[6],
		tx_p_data[5],
		tx_p_data[4],
		tx_p_data[3],
		tx_p_data[2],
		tx_p_data[1],
		tx_p_data[0] }), 
	.test_si2(SI[2]), 
	.test_si1(n13), 
	.test_so2(n10), 
	.test_so1(SO[3]), 
	.test_se(FE_OFN7_SE), 
	.FE_OFN4_d0_scan_func_rst(FE_OFN4_d0_scan_func_rst), 
	.scan_func_ref_clk__L7_N11(scan_func_ref_clk__L7_N11), 
	.scan_func_ref_clk__L7_N12(scan_func_ref_clk__L7_N12), 
	.scan_func_ref_clk__L7_N13(scan_func_ref_clk__L7_N13), 
	.scan_func_ref_clk__L7_N8(scan_func_ref_clk__L7_N8), 
	.scan_func_ref_clk__L7_N9(scan_func_ref_clk__L7_N9));
   pulse_gen_test_0 pulse_gen_inst (.clk(scan_func_tx_clk__L3_N0), 
	.rst_n(d1_scan_func_rst), 
	.lvl_sig(tx_busy), 
	.pulse_sig(rd_inc), 
	.test_si(payload[7]), 
	.test_so(n6), 
	.test_se(n21));
   sys_ctrl_ADDR_WIDTH4_DATA_WIDTH8_FUN_WIDTH4_OUT_WIDTH16_test_1 sys_ctrl_inst (.clk(scan_func_ref_clk__L7_N1), 
	.rst_n(FE_OFN1_d0_scan_func_rst), 
	.payload({ payload[7],
		payload[6],
		payload[5],
		payload[4],
		payload[3],
		payload[2],
		payload[1],
		payload[0] }), 
	.payload_valid(payload_valid), 
	.addr({ addr[3],
		addr[2],
		addr[1],
		addr[0] }), 
	.wr_en(wr_en), 
	.rd_en(rd_en), 
	.wr_data({ wr_data[7],
		wr_data[6],
		wr_data[5],
		wr_data[4],
		wr_data[3],
		wr_data[2],
		wr_data[1],
		wr_data[0] }), 
	.rd_data({ rd_data[7],
		rd_data[6],
		rd_data[5],
		rd_data[4],
		rd_data[3],
		rd_data[2],
		rd_data[1],
		rd_data[0] }), 
	.rd_data_valid(rd_data_valid), 
	.alu_fun({ alu_fun[3],
		alu_fun[2],
		alu_fun[1],
		alu_fun[0] }), 
	.alu_en(alu_en), 
	.alu_out_valid(alu_out_valid), 
	.alu_out({ alu_out[15],
		alu_out[14],
		alu_out[13],
		alu_out[12],
		alu_out[11],
		alu_out[10],
		alu_out[9],
		alu_out[8],
		alu_out[7],
		alu_out[6],
		alu_out[5],
		alu_out[4],
		alu_out[3],
		alu_out[2],
		alu_out[1],
		alu_out[0] }), 
	.clk_en(clk_en), 
	.wr_inc(wr_inc), 
	.f_data_in({ f_data_in[7],
		f_data_in[6],
		f_data_in[5],
		f_data_in[4],
		f_data_in[3],
		f_data_in[2],
		f_data_in[1],
		f_data_in[0] }), 
	.full_flag(full_flag), 
	.test_si(n5), 
	.test_so(n4), 
	.test_se(n22), 
	.scan_func_ref_clk__L7_N2(scan_func_ref_clk__L7_N2));
   data_sync_BUS_WIDTH8_test_1 data_sync_inst (.clk(scan_func_ref_clk__L7_N2), 
	.rst_n(FE_OFN1_d0_scan_func_rst), 
	.bus_enable(rx_data_valid), 
	.unsync_bus({ rx_p_data[7],
		rx_p_data[6],
		rx_p_data[5],
		rx_p_data[4],
		rx_p_data[3],
		rx_p_data[2],
		rx_p_data[1],
		rx_p_data[0] }), 
	.sync_bus({ payload[7],
		payload[6],
		payload[5],
		payload[4],
		payload[3],
		payload[2],
		payload[1],
		payload[0] }), 
	.enable_pulse(payload_valid), 
	.test_si2(SI[0]), 
	.test_si1(d1_sync_rst_n), 
	.test_se(n21), 
	.FE_OFN3_d0_scan_func_rst(FE_OFN3_d0_scan_func_rst));
   BUFX2M U23 (.Y(SO[0]), 
	.A(framing_error));
   BUFX2M U24 (.Y(SO[1]), 
	.A(payload_valid));
endmodule

/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06-SP1
// Date      : Thu Oct  8 20:28:41 2026
/////////////////////////////////////////////////////////////
module bit_sync_NUM_STAGES2_BUS_WIDTH1_test_0 (
	clk, 
	rst_n, 
	async, 
	sync, 
	test_si, 
	test_se);
   input clk;
   input rst_n;
   input [0:0] async;
   output [0:0] sync;
   input test_si;
   input test_se;

   // Internal wires
   wire HTIE_LTIEHI_NET;
   wire \ff[0] ;

   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   SDFFRQX2M \ff_reg[1]  (.SI(\ff[0] ), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(sync[0]), 
	.D(\ff[0] ), 
	.CK(clk));
   SDFFRQX2M \ff_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(\ff[0] ), 
	.D(HTIE_LTIEHI_NET), 
	.CK(clk));
endmodule

module rst_sync_test_0 (
	rst, 
	clk, 
	sync_rst, 
	test_si, 
	test_se);
   input rst;
   input clk;
   output sync_rst;
   input test_si;
   input test_se;

   bit_sync_NUM_STAGES2_BUS_WIDTH1_test_0 \genblk1.bit_sync_inst  (.clk(clk), 
	.rst_n(rst), 
	.async(1'b1), 
	.sync(sync_rst), 
	.test_si(test_si), 
	.test_se(test_se));
endmodule

module bit_sync_NUM_STAGES2_BUS_WIDTH1_test_1 (
	clk, 
	rst_n, 
	async, 
	sync, 
	test_si, 
	test_se);
   input clk;
   input rst_n;
   input [0:0] async;
   output [0:0] sync;
   input test_si;
   input test_se;

   // Internal wires
   wire HTIE_LTIEHI_NET;
   wire \ff[0] ;

   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   SDFFRQX2M \ff_reg[1]  (.SI(\ff[0] ), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(sync[0]), 
	.D(\ff[0] ), 
	.CK(clk));
   SDFFRQX2M \ff_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(\ff[0] ), 
	.D(HTIE_LTIEHI_NET), 
	.CK(clk));
endmodule

module rst_sync_test_1 (
	rst, 
	clk, 
	sync_rst, 
	test_si, 
	test_se);
   input rst;
   input clk;
   output sync_rst;
   input test_si;
   input test_se;

   bit_sync_NUM_STAGES2_BUS_WIDTH1_test_1 \genblk1.bit_sync_inst  (.clk(clk), 
	.rst_n(rst), 
	.async(1'b1), 
	.sync(sync_rst), 
	.test_si(test_si), 
	.test_se(test_se));
endmodule

module div_mux (
	tx_div_ratio, 
	prescale, 
	rx_div_ratio);
   input [7:0] tx_div_ratio;
   input [5:0] prescale;
   output [7:0] rx_div_ratio;

   // Internal wires
   wire HTIE_LTIEHI_NET;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;

   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   NOR4X1M U7 (.Y(n13), 
	.D(prescale[4]), 
	.C(prescale[3]), 
	.B(prescale[2]), 
	.A(n21));
   INVX2M U8 (.Y(n20), 
	.A(n16));
   NOR4BX1M U9 (.Y(rx_div_ratio[5]), 
	.D(n23), 
	.C(prescale[0]), 
	.B(n5), 
	.AN(tx_div_ratio[7]));
   OR4X1M U10 (.Y(n5), 
	.D(prescale[5]), 
	.C(prescale[4]), 
	.B(prescale[3]), 
	.A(prescale[1]));
   NOR4X1M U11 (.Y(n8), 
	.D(prescale[5]), 
	.C(prescale[4]), 
	.B(prescale[2]), 
	.A(n22));
   NOR4X1M U12 (.Y(n9), 
	.D(prescale[5]), 
	.C(prescale[4]), 
	.B(prescale[3]), 
	.A(n23));
   OAI2B11X2M U13 (.Y(rx_div_ratio[0]), 
	.C0(n18), 
	.B0(n17), 
	.A1N(tx_div_ratio[4]), 
	.A0(n16));
   AOI21X2M U14 (.Y(n17), 
	.B0(n19), 
	.A1(tx_div_ratio[5]), 
	.A0(n13));
   AOI221XLM U15 (.Y(n18), 
	.C0(n7), 
	.B1(n9), 
	.B0(tx_div_ratio[2]), 
	.A1(n8), 
	.A0(tx_div_ratio[3]));
   NOR4X1M U16 (.Y(n19), 
	.D(n13), 
	.C(n20), 
	.B(n8), 
	.A(n9));
   AOI21X2M U17 (.Y(rx_div_ratio[1]), 
	.B0(n7), 
	.A1(n15), 
	.A0(n14));
   AOI22X1M U18 (.Y(n15), 
	.B1(n20), 
	.B0(tx_div_ratio[5]), 
	.A1(tx_div_ratio[6]), 
	.A0(n13));
   AOI22X1M U19 (.Y(n14), 
	.B1(n9), 
	.B0(tx_div_ratio[3]), 
	.A1(n8), 
	.A0(tx_div_ratio[4]));
   AOI21X2M U20 (.Y(rx_div_ratio[2]), 
	.B0(n7), 
	.A1(n12), 
	.A0(n11));
   AOI22X1M U21 (.Y(n12), 
	.B1(tx_div_ratio[6]), 
	.B0(n20), 
	.A1(tx_div_ratio[7]), 
	.A0(n13));
   AOI22X1M U22 (.Y(n11), 
	.B1(n9), 
	.B0(tx_div_ratio[4]), 
	.A1(n8), 
	.A0(tx_div_ratio[5]));
   NAND4X2M U23 (.Y(n16), 
	.D(n21), 
	.C(n22), 
	.B(n23), 
	.A(prescale[4]));
   NOR2X2M U24 (.Y(rx_div_ratio[4]), 
	.B(n7), 
	.A(n6));
   AOI22X1M U25 (.Y(n6), 
	.B1(n9), 
	.B0(tx_div_ratio[6]), 
	.A1(tx_div_ratio[7]), 
	.A0(n8));
   NOR2X2M U26 (.Y(rx_div_ratio[3]), 
	.B(n7), 
	.A(n10));
   AOI222X1M U27 (.Y(n10), 
	.C1(n8), 
	.C0(tx_div_ratio[6]), 
	.B1(tx_div_ratio[7]), 
	.B0(n20), 
	.A1(n9), 
	.A0(tx_div_ratio[5]));
   OR2X2M U28 (.Y(n7), 
	.B(prescale[1]), 
	.A(prescale[0]));
   INVX2M U29 (.Y(n22), 
	.A(prescale[3]));
   INVX2M U30 (.Y(n21), 
	.A(prescale[5]));
   INVX2M U31 (.Y(n23), 
	.A(prescale[2]));
   INVX2M U3 (.Y(rx_div_ratio[7]), 
	.A(HTIE_LTIEHI_NET));
   INVX2M U5 (.Y(rx_div_ratio[6]), 
	.A(HTIE_LTIEHI_NET));
endmodule

module clk_div_RATIO_WIDTH8_0_DW01_inc_0 (
	A, 
	SUM);
   input [6:0] A;
   output [6:0] SUM;

   // Internal wires
   wire [6:2] carry;

   ADDHX1M U1_1_5 (.S(SUM[5]), 
	.CO(carry[6]), 
	.B(carry[5]), 
	.A(A[5]));
   ADDHX1M U1_1_4 (.S(SUM[4]), 
	.CO(carry[5]), 
	.B(carry[4]), 
	.A(A[4]));
   ADDHX1M U1_1_3 (.S(SUM[3]), 
	.CO(carry[4]), 
	.B(carry[3]), 
	.A(A[3]));
   ADDHX1M U1_1_2 (.S(SUM[2]), 
	.CO(carry[3]), 
	.B(carry[2]), 
	.A(A[2]));
   ADDHX1M U1_1_1 (.S(SUM[1]), 
	.CO(carry[2]), 
	.B(A[0]), 
	.A(A[1]));
   CLKXOR2X2M U1 (.Y(SUM[6]), 
	.B(A[6]), 
	.A(carry[6]));
   CLKINVX1M U2 (.Y(SUM[0]), 
	.A(A[0]));
endmodule

module clk_div_RATIO_WIDTH8_test_1 (
	i_ref_clk, 
	i_rst_n, 
	i_clk_en, 
	i_div_ratio, 
	o_div_clk, 
	test_si, 
	test_so, 
	test_se, 
	scan_func_uart_clk__L2_N0, 
	scan_func_uart_clk__L5_N0);
   input i_ref_clk;
   input i_rst_n;
   input i_clk_en;
   input [7:0] i_div_ratio;
   output o_div_clk;
   input test_si;
   output test_so;
   input test_se;
   input scan_func_uart_clk__L2_N0;
   input scan_func_uart_clk__L5_N0;

   // Internal wires
   wire FE_PHN9_div_clk__Exclude_0_NET;
   wire div_clk__Exclude_0_NET;
   wire HTIE_LTIEHI_NET;
   wire N0;
   wire div_clk;
   wire odd;
   wire N8;
   wire N9;
   wire N10;
   wire N11;
   wire N12;
   wire N13;
   wire N14;
   wire N15;
   wire N16;
   wire N19;
   wire N24;
   wire N25;
   wire N26;
   wire N27;
   wire N28;
   wire N29;
   wire N30;
   wire N43;
   wire N44;
   wire N45;
   wire N46;
   wire N47;
   wire N48;
   wire N49;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n1;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n17;
   wire n18;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire [6:0] counter;

   assign test_so = odd ;

   DLY4X1M FE_PHC9_div_clk__Exclude_0_NET (.Y(FE_PHN9_div_clk__Exclude_0_NET), 
	.A(div_clk__Exclude_0_NET));
   BUFX8M div_clk__Exclude_0 (.Y(div_clk__Exclude_0_NET), 
	.A(div_clk));
   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   SDFFRQX2M div_clk_reg (.SI(counter[6]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(div_clk), 
	.D(n29), 
	.CK(scan_func_uart_clk__L2_N0));
   SDFFSQX2M odd_reg (.SN(i_rst_n), 
	.SI(FE_PHN9_div_clk__Exclude_0_NET), 
	.SE(test_se), 
	.Q(odd), 
	.D(n28), 
	.CK(i_ref_clk));
   SDFFRQX2M \counter_reg[6]  (.SI(counter[5]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(counter[6]), 
	.D(N49), 
	.CK(i_ref_clk));
   SDFFRQX2M \counter_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(counter[0]), 
	.D(N43), 
	.CK(i_ref_clk));
   SDFFRQX2M \counter_reg[3]  (.SI(counter[2]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(counter[3]), 
	.D(N46), 
	.CK(i_ref_clk));
   SDFFRQX2M \counter_reg[2]  (.SI(counter[1]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(counter[2]), 
	.D(N45), 
	.CK(i_ref_clk));
   SDFFRQX2M \counter_reg[5]  (.SI(counter[4]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(counter[5]), 
	.D(N48), 
	.CK(i_ref_clk));
   SDFFRQX2M \counter_reg[4]  (.SI(counter[3]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(counter[4]), 
	.D(N47), 
	.CK(i_ref_clk));
   SDFFRQX2M \counter_reg[1]  (.SI(counter[0]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(counter[1]), 
	.D(N44), 
	.CK(i_ref_clk));
   NAND2X2M U5 (.Y(n24), 
	.B(N0), 
	.A(n23));
   NOR2BX2M U6 (.Y(N44), 
	.B(n24), 
	.AN(N25));
   NOR2BX2M U7 (.Y(N45), 
	.B(n24), 
	.AN(N26));
   NOR2BX2M U13 (.Y(N46), 
	.B(n24), 
	.AN(N27));
   NOR2BX2M U16 (.Y(N47), 
	.B(n24), 
	.AN(N28));
   NOR2BX2M U17 (.Y(N48), 
	.B(n24), 
	.AN(N29));
   INVX2M U18 (.Y(N0), 
	.A(n21));
   NAND2X2M U19 (.Y(n20), 
	.B(n25), 
	.A(i_div_ratio[0]));
   AO2B2X2M U20 (.Y(n25), 
	.B1(odd), 
	.B0(N16), 
	.A1N(odd), 
	.A0(N19));
   NOR2BX2M U21 (.Y(N49), 
	.B(n24), 
	.AN(N30));
   NOR2BX2M U22 (.Y(N43), 
	.B(n24), 
	.AN(N24));
   CLKXOR2X2M U23 (.Y(n29), 
	.B(n22), 
	.A(div_clk__Exclude_0_NET));
   NOR2X2M U24 (.Y(n22), 
	.B(n21), 
	.A(n23));
   CLKXOR2X2M U25 (.Y(n28), 
	.B(n19), 
	.A(odd));
   NOR2X2M U26 (.Y(n19), 
	.B(n21), 
	.A(n20));
   AOI2B1X1M U27 (.Y(n23), 
	.B0(n47), 
	.A1N(i_div_ratio[0]), 
	.A0(N16));
   INVX2M U28 (.Y(n47), 
	.A(n20));
   OAI2BB1X2M U29 (.Y(n21), 
	.B0(HTIE_LTIEHI_NET), 
	.A1N(n27), 
	.A0N(n26));
   NOR3X2M U30 (.Y(n26), 
	.C(i_div_ratio[2]), 
	.B(i_div_ratio[3]), 
	.A(i_div_ratio[1]));
   NOR4X1M U31 (.Y(n27), 
	.D(i_div_ratio[4]), 
	.C(i_div_ratio[5]), 
	.B(i_div_ratio[6]), 
	.A(i_div_ratio[7]));
   OR2X2M U32 (.Y(n1), 
	.B(i_div_ratio[1]), 
	.A(i_div_ratio[2]));
   MX2X2M U33 (.Y(o_div_clk), 
	.S0(N0), 
	.B(div_clk), 
	.A(scan_func_uart_clk__L5_N0));
   CLKINVX1M U34 (.Y(N8), 
	.A(i_div_ratio[1]));
   OAI2BB1X1M U35 (.Y(N9), 
	.B0(n1), 
	.A1N(i_div_ratio[2]), 
	.A0N(i_div_ratio[1]));
   OR2X1M U36 (.Y(n2), 
	.B(i_div_ratio[3]), 
	.A(n1));
   OAI2BB1X1M U37 (.Y(N10), 
	.B0(n2), 
	.A1N(i_div_ratio[3]), 
	.A0N(n1));
   OR2X1M U38 (.Y(n3), 
	.B(i_div_ratio[4]), 
	.A(n2));
   OAI2BB1X1M U39 (.Y(N11), 
	.B0(n3), 
	.A1N(i_div_ratio[4]), 
	.A0N(n2));
   OR2X1M U40 (.Y(n4), 
	.B(i_div_ratio[5]), 
	.A(n3));
   OAI2BB1X1M U41 (.Y(N12), 
	.B0(n4), 
	.A1N(i_div_ratio[5]), 
	.A0N(n3));
   XNOR2X1M U42 (.Y(N13), 
	.B(n4), 
	.A(i_div_ratio[6]));
   NOR3X1M U43 (.Y(N15), 
	.C(n4), 
	.B(i_div_ratio[7]), 
	.A(i_div_ratio[6]));
   OAI21X1M U44 (.Y(n5), 
	.B0(i_div_ratio[7]), 
	.A1(n4), 
	.A0(i_div_ratio[6]));
   NAND2BX1M U45 (.Y(N14), 
	.B(n5), 
	.AN(N15));
   NOR2BX1M U46 (.Y(n6), 
	.B(counter[0]), 
	.AN(N8));
   OAI2B2X1M U47 (.Y(n30), 
	.B1(n6), 
	.B0(N9), 
	.A1N(counter[1]), 
	.A0(n6));
   XNOR2X1M U48 (.Y(n18), 
	.B(counter[2]), 
	.A(N10));
   NOR2BX1M U49 (.Y(n7), 
	.B(N8), 
	.AN(counter[0]));
   OAI2B2X1M U50 (.Y(n17), 
	.B1(n7), 
	.B0(counter[1]), 
	.A1N(N9), 
	.A0(n7));
   NAND4BX1M U51 (.Y(n36), 
	.D(n17), 
	.C(n18), 
	.B(n30), 
	.AN(N15));
   XNOR2X1M U52 (.Y(n34), 
	.B(counter[6]), 
	.A(N14));
   XNOR2X1M U53 (.Y(n33), 
	.B(counter[5]), 
	.A(N13));
   XNOR2X1M U54 (.Y(n32), 
	.B(counter[4]), 
	.A(N12));
   XNOR2X1M U55 (.Y(n31), 
	.B(counter[3]), 
	.A(N11));
   NAND4X1M U56 (.Y(n35), 
	.D(n31), 
	.C(n32), 
	.B(n33), 
	.A(n34));
   NOR2X1M U57 (.Y(N16), 
	.B(n35), 
	.A(n36));
   XNOR2X1M U58 (.Y(n42), 
	.B(counter[3]), 
	.A(i_div_ratio[4]));
   XNOR2X1M U59 (.Y(n41), 
	.B(counter[2]), 
	.A(i_div_ratio[3]));
   NOR2BX1M U60 (.Y(n37), 
	.B(counter[0]), 
	.AN(i_div_ratio[1]));
   OAI2B2X1M U61 (.Y(n40), 
	.B1(n37), 
	.B0(i_div_ratio[2]), 
	.A1N(counter[1]), 
	.A0(n37));
   NOR2BX1M U62 (.Y(n38), 
	.B(i_div_ratio[1]), 
	.AN(counter[0]));
   OAI2B2X1M U63 (.Y(n39), 
	.B1(n38), 
	.B0(counter[1]), 
	.A1N(i_div_ratio[2]), 
	.A0(n38));
   NAND4X1M U64 (.Y(n46), 
	.D(n39), 
	.C(n40), 
	.B(n41), 
	.A(n42));
   CLKXOR2X2M U65 (.Y(n45), 
	.B(counter[6]), 
	.A(i_div_ratio[7]));
   CLKXOR2X2M U66 (.Y(n44), 
	.B(counter[4]), 
	.A(i_div_ratio[5]));
   CLKXOR2X2M U67 (.Y(n43), 
	.B(counter[5]), 
	.A(i_div_ratio[6]));
   NOR4X1M U68 (.Y(N19), 
	.D(n43), 
	.C(n44), 
	.B(n45), 
	.A(n46));
   clk_div_RATIO_WIDTH8_0_DW01_inc_0 add_46 (.A({ counter[6],
		counter[5],
		counter[4],
		counter[3],
		counter[2],
		counter[1],
		counter[0] }), 
	.SUM({ N30,
		N29,
		N28,
		N27,
		N26,
		N25,
		N24 }));
endmodule

module clk_div_RATIO_WIDTH8_1_DW01_inc_0 (
	A, 
	SUM);
   input [6:0] A;
   output [6:0] SUM;

   // Internal wires
   wire [6:2] carry;

   ADDHX1M U1_1_5 (.S(SUM[5]), 
	.CO(carry[6]), 
	.B(carry[5]), 
	.A(A[5]));
   ADDHX1M U1_1_4 (.S(SUM[4]), 
	.CO(carry[5]), 
	.B(carry[4]), 
	.A(A[4]));
   ADDHX1M U1_1_3 (.S(SUM[3]), 
	.CO(carry[4]), 
	.B(carry[3]), 
	.A(A[3]));
   ADDHX1M U1_1_2 (.S(SUM[2]), 
	.CO(carry[3]), 
	.B(carry[2]), 
	.A(A[2]));
   ADDHX1M U1_1_1 (.S(SUM[1]), 
	.CO(carry[2]), 
	.B(A[0]), 
	.A(A[1]));
   CLKXOR2X2M U1 (.Y(SUM[6]), 
	.B(A[6]), 
	.A(carry[6]));
   CLKINVX1M U2 (.Y(SUM[0]), 
	.A(A[0]));
endmodule

module clk_div_RATIO_WIDTH8_test_0 (
	i_ref_clk, 
	i_rst_n, 
	i_clk_en, 
	i_div_ratio, 
	o_div_clk, 
	test_si, 
	test_so, 
	test_se, 
	scan_func_uart_clk__L2_N0, 
	scan_func_uart_clk__L5_N0);
   input i_ref_clk;
   input i_rst_n;
   input i_clk_en;
   input [7:0] i_div_ratio;
   output o_div_clk;
   input test_si;
   output test_so;
   input test_se;
   input scan_func_uart_clk__L2_N0;
   input scan_func_uart_clk__L5_N0;

   // Internal wires
   wire FE_PHN10_div_clk__Exclude_0_NET;
   wire FE_PHN8_div_clk__Exclude_0_NET;
   wire div_clk__Exclude_0_NET;
   wire HTIE_LTIEHI_NET;
   wire LTIE_LTIELO_NET;
   wire N0;
   wire div_clk;
   wire odd;
   wire N8;
   wire N9;
   wire N10;
   wire N11;
   wire N12;
   wire N13;
   wire N14;
   wire N15;
   wire N16;
   wire N19;
   wire N24;
   wire N25;
   wire N26;
   wire N27;
   wire N28;
   wire N29;
   wire N30;
   wire N43;
   wire N44;
   wire N45;
   wire N46;
   wire N47;
   wire N48;
   wire N49;
   wire n1;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n17;
   wire n18;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire n49;
   wire n50;
   wire n51;
   wire n52;
   wire n53;
   wire n54;
   wire n55;
   wire n56;
   wire n57;
   wire n58;
   wire [6:0] counter;

   assign test_so = odd ;

   BUFX2M FE_PHC10_div_clk__Exclude_0_NET (.Y(FE_PHN10_div_clk__Exclude_0_NET), 
	.A(div_clk__Exclude_0_NET));
   DLY3X1M FE_PHC8_div_clk__Exclude_0_NET (.Y(FE_PHN8_div_clk__Exclude_0_NET), 
	.A(FE_PHN10_div_clk__Exclude_0_NET));
   BUFX8M div_clk__Exclude_0 (.Y(div_clk__Exclude_0_NET), 
	.A(div_clk));
   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   TIELOM LTIE_LTIELO (.Y(LTIE_LTIELO_NET));
   SDFFRQX2M div_clk_reg (.SI(counter[6]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(div_clk), 
	.D(n48), 
	.CK(scan_func_uart_clk__L2_N0));
   SDFFSQX2M odd_reg (.SN(i_rst_n), 
	.SI(FE_PHN8_div_clk__Exclude_0_NET), 
	.SE(test_se), 
	.Q(odd), 
	.D(n49), 
	.CK(i_ref_clk));
   SDFFRQX2M \counter_reg[6]  (.SI(counter[5]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(counter[6]), 
	.D(N49), 
	.CK(i_ref_clk));
   SDFFRQX2M \counter_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(counter[0]), 
	.D(N43), 
	.CK(i_ref_clk));
   SDFFRQX2M \counter_reg[3]  (.SI(counter[2]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(counter[3]), 
	.D(N46), 
	.CK(i_ref_clk));
   SDFFRQX2M \counter_reg[2]  (.SI(counter[1]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(counter[2]), 
	.D(N45), 
	.CK(i_ref_clk));
   SDFFRQX2M \counter_reg[5]  (.SI(counter[4]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(counter[5]), 
	.D(N48), 
	.CK(i_ref_clk));
   SDFFRQX2M \counter_reg[4]  (.SI(counter[3]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(counter[4]), 
	.D(N47), 
	.CK(i_ref_clk));
   SDFFRQX2M \counter_reg[1]  (.SI(counter[0]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(counter[1]), 
	.D(N44), 
	.CK(i_ref_clk));
   AOI2B1X1M U5 (.Y(n54), 
	.B0(n47), 
	.A1N(i_div_ratio[0]), 
	.A0(N16));
   INVX2M U6 (.Y(n47), 
	.A(n57));
   NAND2X2M U7 (.Y(n53), 
	.B(N0), 
	.A(n54));
   NOR2BX2M U13 (.Y(N44), 
	.B(n53), 
	.AN(N25));
   NOR2BX2M U16 (.Y(N45), 
	.B(n53), 
	.AN(N26));
   NOR2BX2M U17 (.Y(N46), 
	.B(n53), 
	.AN(N27));
   NOR2BX2M U18 (.Y(N47), 
	.B(n53), 
	.AN(N28));
   NOR2BX2M U19 (.Y(N48), 
	.B(n53), 
	.AN(N29));
   OR2X2M U20 (.Y(n1), 
	.B(i_div_ratio[1]), 
	.A(i_div_ratio[2]));
   INVX2M U21 (.Y(N0), 
	.A(n56));
   NAND2X2M U22 (.Y(n57), 
	.B(n52), 
	.A(i_div_ratio[0]));
   AO2B2X2M U23 (.Y(n52), 
	.B1(odd), 
	.B0(N16), 
	.A1N(odd), 
	.A0(N19));
   CLKXOR2X2M U24 (.Y(n49), 
	.B(n58), 
	.A(odd));
   NOR2X2M U25 (.Y(n58), 
	.B(n56), 
	.A(n57));
   NOR2BX2M U26 (.Y(N49), 
	.B(n53), 
	.AN(N30));
   NOR2BX2M U27 (.Y(N43), 
	.B(n53), 
	.AN(N24));
   CLKXOR2X2M U28 (.Y(n48), 
	.B(n55), 
	.A(div_clk__Exclude_0_NET));
   NOR2X2M U29 (.Y(n55), 
	.B(n56), 
	.A(n54));
   OAI2BB1X2M U30 (.Y(n56), 
	.B0(HTIE_LTIEHI_NET), 
	.A1N(n50), 
	.A0N(n51));
   NOR3X2M U31 (.Y(n51), 
	.C(i_div_ratio[2]), 
	.B(i_div_ratio[3]), 
	.A(i_div_ratio[1]));
   NOR4X1M U32 (.Y(n50), 
	.D(i_div_ratio[4]), 
	.C(i_div_ratio[5]), 
	.B(LTIE_LTIELO_NET), 
	.A(LTIE_LTIELO_NET));
   MX2X2M U33 (.Y(o_div_clk), 
	.S0(N0), 
	.B(div_clk), 
	.A(scan_func_uart_clk__L5_N0));
   CLKINVX1M U34 (.Y(N8), 
	.A(i_div_ratio[1]));
   OAI2BB1X1M U35 (.Y(N9), 
	.B0(n1), 
	.A1N(i_div_ratio[2]), 
	.A0N(i_div_ratio[1]));
   OR2X1M U36 (.Y(n2), 
	.B(i_div_ratio[3]), 
	.A(n1));
   OAI2BB1X1M U37 (.Y(N10), 
	.B0(n2), 
	.A1N(i_div_ratio[3]), 
	.A0N(n1));
   OR2X1M U38 (.Y(n3), 
	.B(i_div_ratio[4]), 
	.A(n2));
   OAI2BB1X1M U39 (.Y(N11), 
	.B0(n3), 
	.A1N(i_div_ratio[4]), 
	.A0N(n2));
   OR2X1M U40 (.Y(n4), 
	.B(i_div_ratio[5]), 
	.A(n3));
   OAI2BB1X1M U41 (.Y(N12), 
	.B0(n4), 
	.A1N(i_div_ratio[5]), 
	.A0N(n3));
   XNOR2X1M U42 (.Y(N13), 
	.B(n4), 
	.A(LTIE_LTIELO_NET));
   NOR3X1M U43 (.Y(N15), 
	.C(n4), 
	.B(LTIE_LTIELO_NET), 
	.A(LTIE_LTIELO_NET));
   OAI21X1M U44 (.Y(n5), 
	.B0(LTIE_LTIELO_NET), 
	.A1(n4), 
	.A0(LTIE_LTIELO_NET));
   NAND2BX1M U45 (.Y(N14), 
	.B(n5), 
	.AN(N15));
   NOR2BX1M U46 (.Y(n6), 
	.B(counter[0]), 
	.AN(N8));
   OAI2B2X1M U47 (.Y(n30), 
	.B1(n6), 
	.B0(N9), 
	.A1N(counter[1]), 
	.A0(n6));
   XNOR2X1M U48 (.Y(n18), 
	.B(counter[2]), 
	.A(N10));
   NOR2BX1M U49 (.Y(n7), 
	.B(N8), 
	.AN(counter[0]));
   OAI2B2X1M U50 (.Y(n17), 
	.B1(n7), 
	.B0(counter[1]), 
	.A1N(N9), 
	.A0(n7));
   NAND4BX1M U51 (.Y(n36), 
	.D(n17), 
	.C(n18), 
	.B(n30), 
	.AN(N15));
   XNOR2X1M U52 (.Y(n34), 
	.B(counter[6]), 
	.A(N14));
   XNOR2X1M U53 (.Y(n33), 
	.B(counter[5]), 
	.A(N13));
   XNOR2X1M U54 (.Y(n32), 
	.B(counter[4]), 
	.A(N12));
   XNOR2X1M U55 (.Y(n31), 
	.B(counter[3]), 
	.A(N11));
   NAND4X1M U56 (.Y(n35), 
	.D(n31), 
	.C(n32), 
	.B(n33), 
	.A(n34));
   NOR2X1M U57 (.Y(N16), 
	.B(n35), 
	.A(n36));
   XNOR2X1M U58 (.Y(n42), 
	.B(counter[3]), 
	.A(i_div_ratio[4]));
   XNOR2X1M U59 (.Y(n41), 
	.B(counter[2]), 
	.A(i_div_ratio[3]));
   NOR2BX1M U60 (.Y(n37), 
	.B(counter[0]), 
	.AN(i_div_ratio[1]));
   OAI2B2X1M U61 (.Y(n40), 
	.B1(n37), 
	.B0(i_div_ratio[2]), 
	.A1N(counter[1]), 
	.A0(n37));
   NOR2BX1M U62 (.Y(n38), 
	.B(i_div_ratio[1]), 
	.AN(counter[0]));
   OAI2B2X1M U63 (.Y(n39), 
	.B1(n38), 
	.B0(counter[1]), 
	.A1N(i_div_ratio[2]), 
	.A0(n38));
   NAND4X1M U64 (.Y(n46), 
	.D(n39), 
	.C(n40), 
	.B(n41), 
	.A(n42));
   CLKXOR2X2M U65 (.Y(n45), 
	.B(counter[6]), 
	.A(LTIE_LTIELO_NET));
   CLKXOR2X2M U66 (.Y(n44), 
	.B(counter[4]), 
	.A(i_div_ratio[5]));
   CLKXOR2X2M U67 (.Y(n43), 
	.B(counter[5]), 
	.A(LTIE_LTIELO_NET));
   NOR4X1M U68 (.Y(N19), 
	.D(n43), 
	.C(n44), 
	.B(n45), 
	.A(n46));
   clk_div_RATIO_WIDTH8_1_DW01_inc_0 add_46 (.A({ counter[6],
		counter[5],
		counter[4],
		counter[3],
		counter[2],
		counter[1],
		counter[0] }), 
	.SUM({ N30,
		N29,
		N28,
		N27,
		N26,
		N25,
		N24 }));
endmodule

module tx_controller_test_1 (
	clk, 
	rst_n, 
	data_valid, 
	par_en, 
	ser_done, 
	mux_sel, 
	ser_en, 
	latch_data, 
	busy, 
	test_si, 
	test_so, 
	test_se, 
	FE_OFN0_d1_scan_func_rst);
   input clk;
   input rst_n;
   input data_valid;
   input par_en;
   input ser_done;
   output [1:0] mux_sel;
   output ser_en;
   output latch_data;
   output busy;
   input test_si;
   output test_so;
   input test_se;
   input FE_OFN0_d1_scan_func_rst;

   // Internal wires
   wire par_en_latched;
   wire n7;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n5;
   wire n6;
   wire n8;
   wire n17;
   wire [2:0] current_state;
   wire [2:0] next_state;

   assign test_so = par_en_latched ;

   SDFFRQX2M par_en_latched_reg (.SI(n17), 
	.SE(test_se), 
	.RN(FE_OFN0_d1_scan_func_rst), 
	.Q(par_en_latched), 
	.D(n15), 
	.CK(clk));
   SDFFRQX2M \current_state_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(FE_OFN0_d1_scan_func_rst), 
	.Q(current_state[0]), 
	.D(n5), 
	.CK(clk));
   SDFFRQX2M \current_state_reg[1]  (.SI(current_state[0]), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(current_state[1]), 
	.D(next_state[1]), 
	.CK(clk));
   SDFFRX1M \current_state_reg[2]  (.SI(current_state[1]), 
	.SE(test_se), 
	.RN(FE_OFN0_d1_scan_func_rst), 
	.QN(n7), 
	.Q(n17), 
	.D(next_state[2]), 
	.CK(clk));
   NOR2BX2M U7 (.Y(latch_data), 
	.B(n14), 
	.AN(data_valid));
   NOR2X2M U8 (.Y(ser_en), 
	.B(n13), 
	.A(n8));
   OAI2B11X2M U9 (.Y(mux_sel[0]), 
	.C0(n7), 
	.B0(n14), 
	.A1N(current_state[0]), 
	.A0(n8));
   INVX2M U10 (.Y(mux_sel[1]), 
	.A(n10));
   NAND2X2M U11 (.Y(n10), 
	.B(n7), 
	.A(current_state[1]));
   OR2X2M U12 (.Y(n14), 
	.B(current_state[1]), 
	.A(current_state[0]));
   INVX2M U13 (.Y(n8), 
	.A(current_state[1]));
   OAI32X1M U14 (.Y(next_state[1]), 
	.B1(n11), 
	.B0(current_state[1]), 
	.A2(n9), 
	.A1(current_state[0]), 
	.A0(n10));
   OAI211X2M U15 (.Y(busy), 
	.C0(n10), 
	.B0(n11), 
	.A1(n7), 
	.A0(n14));
   NAND2X2M U16 (.Y(n11), 
	.B(n7), 
	.A(current_state[0]));
   NAND2X2M U17 (.Y(n13), 
	.B(n7), 
	.A(n11));
   NOR2BX2M U18 (.Y(n9), 
	.B(par_en_latched), 
	.AN(ser_done));
   AOI2BB1X2M U19 (.Y(next_state[2]), 
	.B0(n10), 
	.A1N(n9), 
	.A0N(current_state[0]));
   INVX2M U20 (.Y(n5), 
	.A(n12));
   AOI33X2M U21 (.Y(n12), 
	.B2(n6), 
	.B1(n8), 
	.B0(data_valid), 
	.A2(ser_en), 
	.A1(ser_done), 
	.A0(par_en_latched));
   INVX2M U22 (.Y(n6), 
	.A(n13));
   AO2B2X2M U23 (.Y(n15), 
	.B1(latch_data), 
	.B0(par_en), 
	.A1N(latch_data), 
	.A0(par_en_latched));
endmodule

module counter_test_1 (
	clk, 
	rst_n, 
	en, 
	high, 
	low, 
	test_si, 
	test_so, 
	test_se);
   input clk;
   input rst_n;
   input en;
   output high;
   output low;
   input test_si;
   output test_so;
   input test_se;

   // Internal wires
   wire N9;
   wire N10;
   wire N11;
   wire n7;
   wire n8;
   wire n5;
   wire n6;
   wire n9;
   wire [3:0] c;

   assign test_so = c[2] ;

   SDFFRQX2M \c_reg[2]  (.SI(c[1]), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(c[2]), 
	.D(N11), 
	.CK(clk));
   SDFFRQX2M \c_reg[1]  (.SI(c[0]), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(c[1]), 
	.D(N10), 
	.CK(clk));
   SDFFRQX2M \c_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(c[0]), 
	.D(N9), 
	.CK(clk));
   AND3X2M U4 (.Y(low), 
	.C(n5), 
	.B(n9), 
	.A(n6));
   NAND2BX2M U7 (.Y(n7), 
	.B(en), 
	.AN(high));
   NOR3X2M U8 (.Y(high), 
	.C(n9), 
	.B(n5), 
	.A(n6));
   OAI32X1M U9 (.Y(N11), 
	.B1(n7), 
	.B0(n9), 
	.A2(n6), 
	.A1(n5), 
	.A0(n7));
   INVX2M U10 (.Y(n5), 
	.A(c[0]));
   INVX2M U11 (.Y(n6), 
	.A(c[1]));
   INVX2M U12 (.Y(n9), 
	.A(c[2]));
   NOR2X2M U13 (.Y(N9), 
	.B(n7), 
	.A(c[0]));
   NOR2X2M U14 (.Y(N10), 
	.B(n7), 
	.A(n8));
   XNOR2X2M U15 (.Y(n8), 
	.B(c[1]), 
	.A(c[0]));
endmodule

module serializer_test_1 (
	clk, 
	rst_n, 
	p_data, 
	ser_en, 
	latch_data, 
	ser_done, 
	ser_data, 
	test_si, 
	test_so, 
	test_se);
   input clk;
   input rst_n;
   input [7:0] p_data;
   input ser_en;
   input latch_data;
   output ser_done;
   output ser_data;
   input test_si;
   output test_so;
   input test_se;

   // Internal wires
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n2;
   wire n4;
   wire n5;
   wire [7:1] data;

   assign test_so = data[7] ;

   SDFFRQX2M \data_reg[6]  (.SI(data[5]), 
	.SE(n5), 
	.RN(rst_n), 
	.Q(data[6]), 
	.D(n21), 
	.CK(clk));
   SDFFRQX2M \data_reg[5]  (.SI(data[4]), 
	.SE(n5), 
	.RN(rst_n), 
	.Q(data[5]), 
	.D(n22), 
	.CK(clk));
   SDFFRQX2M \data_reg[4]  (.SI(data[3]), 
	.SE(n5), 
	.RN(rst_n), 
	.Q(data[4]), 
	.D(n23), 
	.CK(clk));
   SDFFRQX2M \data_reg[3]  (.SI(data[2]), 
	.SE(n5), 
	.RN(rst_n), 
	.Q(data[3]), 
	.D(n24), 
	.CK(clk));
   SDFFRQX2M \data_reg[2]  (.SI(data[1]), 
	.SE(n5), 
	.RN(rst_n), 
	.Q(data[2]), 
	.D(n25), 
	.CK(clk));
   SDFFRQX2M \data_reg[1]  (.SI(ser_data), 
	.SE(n5), 
	.RN(rst_n), 
	.Q(data[1]), 
	.D(n26), 
	.CK(clk));
   SDFFRQX2M \data_reg[7]  (.SI(data[6]), 
	.SE(n5), 
	.RN(rst_n), 
	.Q(data[7]), 
	.D(n20), 
	.CK(clk));
   SDFFRQX2M \data_reg[0]  (.SI(n2), 
	.SE(n5), 
	.RN(rst_n), 
	.Q(ser_data), 
	.D(n19), 
	.CK(clk));
   NOR2X2M U11 (.Y(n9), 
	.B(n12), 
	.A(n11));
   NOR2BX2M U12 (.Y(n11), 
	.B(ser_done), 
	.AN(ser_en));
   NOR2BX2M U13 (.Y(n12), 
	.B(n11), 
	.AN(latch_data));
   OAI2BB1X2M U14 (.Y(n19), 
	.B0(n10), 
	.A1N(n9), 
	.A0N(ser_data));
   AOI22X1M U15 (.Y(n10), 
	.B1(n12), 
	.B0(p_data[0]), 
	.A1(n11), 
	.A0(data[1]));
   OAI2BB1X2M U16 (.Y(n26), 
	.B0(n18), 
	.A1N(n9), 
	.A0N(data[1]));
   AOI22X1M U17 (.Y(n18), 
	.B1(n12), 
	.B0(p_data[1]), 
	.A1(n11), 
	.A0(data[2]));
   OAI2BB1X2M U18 (.Y(n25), 
	.B0(n17), 
	.A1N(data[2]), 
	.A0N(n9));
   AOI22X1M U19 (.Y(n17), 
	.B1(n12), 
	.B0(p_data[2]), 
	.A1(n11), 
	.A0(data[3]));
   OAI2BB1X2M U20 (.Y(n24), 
	.B0(n16), 
	.A1N(data[3]), 
	.A0N(n9));
   AOI22X1M U21 (.Y(n16), 
	.B1(n12), 
	.B0(p_data[3]), 
	.A1(n11), 
	.A0(data[4]));
   OAI2BB1X2M U22 (.Y(n23), 
	.B0(n15), 
	.A1N(data[4]), 
	.A0N(n9));
   AOI22X1M U23 (.Y(n15), 
	.B1(n12), 
	.B0(p_data[4]), 
	.A1(n11), 
	.A0(data[5]));
   OAI2BB1X2M U24 (.Y(n22), 
	.B0(n14), 
	.A1N(data[5]), 
	.A0N(n9));
   AOI22X1M U25 (.Y(n14), 
	.B1(n12), 
	.B0(p_data[5]), 
	.A1(n11), 
	.A0(data[6]));
   OAI2BB1X2M U26 (.Y(n21), 
	.B0(n13), 
	.A1N(data[6]), 
	.A0N(n9));
   AOI22X1M U27 (.Y(n13), 
	.B1(n12), 
	.B0(p_data[6]), 
	.A1(n11), 
	.A0(data[7]));
   AO22X1M U28 (.Y(n20), 
	.B1(n12), 
	.B0(p_data[7]), 
	.A1(data[7]), 
	.A0(n9));
   INVXLM U29 (.Y(n4), 
	.A(test_se));
   CLKINVX2M U30 (.Y(n5), 
	.A(n4));
   counter_test_1 counter_inst (.clk(clk), 
	.rst_n(rst_n), 
	.en(ser_en), 
	.high(ser_done), 
	.test_si(test_si), 
	.test_so(n2), 
	.test_se(n5));
endmodule

module parity_calc_test_1 (
	clk, 
	rst_n, 
	p_data, 
	latch_data, 
	par_typ, 
	par_bit, 
	test_si, 
	test_so, 
	test_se);
   input clk;
   input rst_n;
   input [7:0] p_data;
   input latch_data;
   input par_typ;
   output par_bit;
   input test_si;
   output test_so;
   input test_se;

   // Internal wires
   wire par_typ_latched;
   wire n1;
   wire n2;
   wire n3;
   wire n4;
   wire n6;
   wire n8;
   wire n10;
   wire n12;
   wire n14;
   wire n16;
   wire n18;
   wire n20;
   wire n22;
   wire n9;
   wire n11;
   wire [7:0] p_data_latched;

   assign test_so = par_typ_latched ;

   SDFFRQX2M \p_data_latched_reg[5]  (.SI(p_data_latched[4]), 
	.SE(n11), 
	.RN(rst_n), 
	.Q(p_data_latched[5]), 
	.D(n16), 
	.CK(clk));
   SDFFRQX2M \p_data_latched_reg[1]  (.SI(p_data_latched[0]), 
	.SE(n11), 
	.RN(rst_n), 
	.Q(p_data_latched[1]), 
	.D(n8), 
	.CK(clk));
   SDFFRQX2M \p_data_latched_reg[4]  (.SI(p_data_latched[3]), 
	.SE(n11), 
	.RN(rst_n), 
	.Q(p_data_latched[4]), 
	.D(n14), 
	.CK(clk));
   SDFFRQX2M \p_data_latched_reg[0]  (.SI(test_si), 
	.SE(n11), 
	.RN(rst_n), 
	.Q(p_data_latched[0]), 
	.D(n6), 
	.CK(clk));
   SDFFRQX2M par_typ_latched_reg (.SI(p_data_latched[7]), 
	.SE(n11), 
	.RN(rst_n), 
	.Q(par_typ_latched), 
	.D(n22), 
	.CK(clk));
   SDFFRQX2M \p_data_latched_reg[6]  (.SI(p_data_latched[5]), 
	.SE(n11), 
	.RN(rst_n), 
	.Q(p_data_latched[6]), 
	.D(n18), 
	.CK(clk));
   SDFFRQX2M \p_data_latched_reg[2]  (.SI(p_data_latched[1]), 
	.SE(n11), 
	.RN(rst_n), 
	.Q(p_data_latched[2]), 
	.D(n10), 
	.CK(clk));
   SDFFRQX2M \p_data_latched_reg[7]  (.SI(p_data_latched[6]), 
	.SE(n11), 
	.RN(rst_n), 
	.Q(p_data_latched[7]), 
	.D(n20), 
	.CK(clk));
   SDFFRQX2M \p_data_latched_reg[3]  (.SI(p_data_latched[2]), 
	.SE(n11), 
	.RN(rst_n), 
	.Q(p_data_latched[3]), 
	.D(n12), 
	.CK(clk));
   XOR3XLM U2 (.Y(par_bit), 
	.C(par_typ_latched), 
	.B(n2), 
	.A(n1));
   XOR3XLM U3 (.Y(n1), 
	.C(n4), 
	.B(p_data_latched[4]), 
	.A(p_data_latched[5]));
   XOR3XLM U4 (.Y(n2), 
	.C(n3), 
	.B(p_data_latched[0]), 
	.A(p_data_latched[1]));
   CLKXOR2X2M U5 (.Y(n4), 
	.B(p_data_latched[6]), 
	.A(p_data_latched[7]));
   CLKXOR2X2M U6 (.Y(n3), 
	.B(p_data_latched[2]), 
	.A(p_data_latched[3]));
   AO2B2X2M U7 (.Y(n6), 
	.B1(latch_data), 
	.B0(p_data[0]), 
	.A1N(latch_data), 
	.A0(p_data_latched[0]));
   AO2B2X2M U8 (.Y(n8), 
	.B1(latch_data), 
	.B0(p_data[1]), 
	.A1N(latch_data), 
	.A0(p_data_latched[1]));
   AO2B2X2M U9 (.Y(n10), 
	.B1(latch_data), 
	.B0(p_data[2]), 
	.A1N(latch_data), 
	.A0(p_data_latched[2]));
   AO2B2X2M U10 (.Y(n12), 
	.B1(latch_data), 
	.B0(p_data[3]), 
	.A1N(latch_data), 
	.A0(p_data_latched[3]));
   AO2B2X2M U11 (.Y(n14), 
	.B1(latch_data), 
	.B0(p_data[4]), 
	.A1N(latch_data), 
	.A0(p_data_latched[4]));
   AO2B2X2M U12 (.Y(n16), 
	.B1(latch_data), 
	.B0(p_data[5]), 
	.A1N(latch_data), 
	.A0(p_data_latched[5]));
   AO2B2X2M U13 (.Y(n18), 
	.B1(latch_data), 
	.B0(p_data[6]), 
	.A1N(latch_data), 
	.A0(p_data_latched[6]));
   AO2B2X2M U14 (.Y(n20), 
	.B1(latch_data), 
	.B0(p_data[7]), 
	.A1N(latch_data), 
	.A0(p_data_latched[7]));
   AO2B2X2M U15 (.Y(n22), 
	.B1(latch_data), 
	.B0(par_typ), 
	.A1N(latch_data), 
	.A0(par_typ_latched));
   INVXLM U25 (.Y(n9), 
	.A(test_se));
   INVXLM U26 (.Y(n11), 
	.A(n9));
endmodule

module mux (
	mux_sel, 
	mux_in, 
	tx_out);
   input [1:0] mux_sel;
   input [3:0] mux_in;
   output tx_out;

   // Internal wires
   wire HTIE_LTIEHI_NET;
   wire LTIE_LTIELO_NET;
   wire FE_OFN6_UART_TX_OUT;
   wire N0;
   wire N1;
   wire n1;
   wire n2;
   wire n3;

   assign N0 = mux_sel[0] ;
   assign N1 = mux_sel[1] ;

   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   TIELOM LTIE_LTIELO (.Y(LTIE_LTIELO_NET));
   BUFX2M FE_OFC6_UART_TX_OUT (.Y(tx_out), 
	.A(FE_OFN6_UART_TX_OUT));
   OAI2B2X1M U1 (.Y(FE_OFN6_UART_TX_OUT), 
	.B1(n1), 
	.B0(N1), 
	.A1N(N1), 
	.A0(n2));
   INVX2M U2 (.Y(n3), 
	.A(N0));
   AOI22X1M U3 (.Y(n2), 
	.B1(N0), 
	.B0(mux_in[3]), 
	.A1(n3), 
	.A0(mux_in[2]));
   AOI22X1M U4 (.Y(n1), 
	.B1(N0), 
	.B0(HTIE_LTIEHI_NET), 
	.A1(n3), 
	.A0(LTIE_LTIELO_NET));
endmodule

module uart_tx_DATA_WIDTH8_test_1 (
	clk, 
	rst_n, 
	p_data, 
	data_valid, 
	par_en, 
	par_typ, 
	tx_out, 
	busy, 
	test_si, 
	test_so, 
	test_se, 
	FE_OFN0_d1_scan_func_rst);
   input clk;
   input rst_n;
   input [7:0] p_data;
   input data_valid;
   input par_en;
   input par_typ;
   output tx_out;
   output busy;
   input test_si;
   output test_so;
   input test_se;
   input FE_OFN0_d1_scan_func_rst;

   // Internal wires
   wire latch_data;
   wire ser_en;
   wire ser_done;
   wire n3;
   wire n4;
   wire [1:0] mux_sel;
   wire [3:2] mux_in;

   tx_controller_test_1 controller_inst (.clk(clk), 
	.rst_n(rst_n), 
	.data_valid(data_valid), 
	.par_en(par_en), 
	.ser_done(ser_done), 
	.mux_sel({ mux_sel[1],
		mux_sel[0] }), 
	.ser_en(ser_en), 
	.latch_data(latch_data), 
	.busy(busy), 
	.test_si(test_si), 
	.test_so(n4), 
	.test_se(test_se), 
	.FE_OFN0_d1_scan_func_rst(FE_OFN0_d1_scan_func_rst));
   serializer_test_1 serializer_inst (.clk(clk), 
	.rst_n(FE_OFN0_d1_scan_func_rst), 
	.p_data({ p_data[7],
		p_data[6],
		p_data[5],
		p_data[4],
		p_data[3],
		p_data[2],
		p_data[1],
		p_data[0] }), 
	.ser_en(ser_en), 
	.latch_data(latch_data), 
	.ser_done(ser_done), 
	.ser_data(mux_in[2]), 
	.test_si(n3), 
	.test_so(test_so), 
	.test_se(test_se));
   parity_calc_test_1 parity_calc_inst (.clk(clk), 
	.rst_n(FE_OFN0_d1_scan_func_rst), 
	.p_data({ p_data[7],
		p_data[6],
		p_data[5],
		p_data[4],
		p_data[3],
		p_data[2],
		p_data[1],
		p_data[0] }), 
	.latch_data(latch_data), 
	.par_typ(par_typ), 
	.par_bit(mux_in[3]), 
	.test_si(n4), 
	.test_so(n3), 
	.test_se(test_se));
   mux mux_inst (.mux_sel({ mux_sel[1],
		mux_sel[0] }), 
	.mux_in({ mux_in[3],
		mux_in[2],
		1'b1,
		1'b0 }), 
	.tx_out(tx_out));
endmodule

module rx_controller_test_1 (
	clk, 
	rst_n, 
	rx_in, 
	par_en, 
	par_typ, 
	bit_cnt, 
	strt_glitch, 
	par_err, 
	stp_err, 
	bit_valid, 
	cnt_en, 
	dat_samp_en, 
	strt_chk_en, 
	par_pdata_en, 
	par_chk_en, 
	stp_chk_en, 
	deser_en, 
	data_valid, 
	par_typ_latched, 
	test_si, 
	test_se);
   input clk;
   input rst_n;
   input rx_in;
   input par_en;
   input par_typ;
   input [3:0] bit_cnt;
   input strt_glitch;
   input par_err;
   input stp_err;
   input bit_valid;
   output cnt_en;
   output dat_samp_en;
   output strt_chk_en;
   output par_pdata_en;
   output par_chk_en;
   output stp_chk_en;
   output deser_en;
   output data_valid;
   output par_typ_latched;
   input test_si;
   input test_se;

   // Internal wires
   wire par_en_latched;
   wire data_valid_c;
   wire n2;
   wire n4;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n12;
   wire n13;
   wire n14;
   wire n16;
   wire n17;
   wire n20;
   wire n23;
   wire n24;
   wire n28;
   wire n30;
   wire n5;
   wire n11;
   wire n15;
   wire n18;
   wire n19;
   wire n21;
   wire n22;
   wire n25;
   wire n34;
   wire [2:0] current_state;
   wire [2:0] next_state;

   SDFFRQX2M par_typ_latched_reg (.SI(par_en_latched), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(par_typ_latched), 
	.D(n28), 
	.CK(clk));
   SDFFRQX2M par_en_latched_reg (.SI(data_valid), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(par_en_latched), 
	.D(n30), 
	.CK(clk));
   SDFFRQX2M \current_state_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(current_state[0]), 
	.D(next_state[0]), 
	.CK(clk));
   SDFFRQX2M \current_state_reg[1]  (.SI(current_state[0]), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(current_state[1]), 
	.D(next_state[1]), 
	.CK(clk));
   SDFFRQX2M \current_state_reg[2]  (.SI(current_state[1]), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(current_state[2]), 
	.D(next_state[2]), 
	.CK(clk));
   SDFFRQX2M data_valid_reg (.SI(current_state[2]), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(data_valid), 
	.D(data_valid_c), 
	.CK(clk));
   NOR3X2M U3 (.Y(n23), 
	.C(n19), 
	.B(strt_glitch), 
	.A(n5));
   OAI221X1M U4 (.Y(next_state[2]), 
	.C0(n7), 
	.B1(n6), 
	.B0(n11), 
	.A1(n4), 
	.A0(par_pdata_en));
   INVX2M U5 (.Y(n11), 
	.A(n8));
   OAI211X2M U6 (.Y(next_state[1]), 
	.C0(n2), 
	.B0(n9), 
	.A1(n6), 
	.A0(n8));
   NAND4BX1M U7 (.Y(n9), 
	.D(n18), 
	.C(n10), 
	.B(strt_chk_en), 
	.AN(strt_glitch));
   NOR2X2M U8 (.Y(stp_chk_en), 
	.B(n7), 
	.A(n5));
   NAND2X2M U9 (.Y(n6), 
	.B(n21), 
	.A(n16));
   NAND2BX2M U10 (.Y(n2), 
	.B(n4), 
	.AN(par_pdata_en));
   NOR3BX2M U11 (.Y(deser_en), 
	.C(n5), 
	.B(n6), 
	.AN(n12));
   INVX2M U12 (.Y(n19), 
	.A(strt_chk_en));
   OAI32X1M U14 (.Y(n20), 
	.B1(current_state[1]), 
	.B0(rx_in), 
	.A2(n12), 
	.A1(n25), 
	.A0(n34));
   NAND4BX1M U15 (.Y(next_state[0]), 
	.D(n2), 
	.C(n14), 
	.B(n13), 
	.AN(stp_chk_en));
   NAND4BX1M U16 (.Y(n14), 
	.D(n17), 
	.C(n15), 
	.B(n18), 
	.AN(bit_cnt[2]));
   NAND3BX2M U17 (.Y(n13), 
	.C(n20), 
	.B(n21), 
	.AN(current_state[2]));
   AOI211X2M U18 (.Y(n17), 
	.C0(bit_cnt[0]), 
	.B0(n19), 
	.A1(bit_valid), 
	.A0(strt_glitch));
   OAI211X2M U19 (.Y(cnt_en), 
	.C0(n7), 
	.B0(n22), 
	.A1(n21), 
	.A0(current_state[2]));
   INVX2M U20 (.Y(n22), 
	.A(n16));
   NOR2X2M U21 (.Y(n16), 
	.B(current_state[2]), 
	.A(n25));
   NAND3X2M U22 (.Y(n7), 
	.C(current_state[2]), 
	.B(n25), 
	.A(n21));
   INVX2M U23 (.Y(n21), 
	.A(current_state[0]));
   INVX2M U24 (.Y(n25), 
	.A(current_state[1]));
   NOR3BX2M U25 (.Y(n10), 
	.C(bit_cnt[2]), 
	.B(bit_cnt[1]), 
	.AN(bit_cnt[0]));
   NOR3X2M U26 (.Y(strt_chk_en), 
	.C(n21), 
	.B(current_state[2]), 
	.A(current_state[1]));
   NOR2X2M U27 (.Y(n8), 
	.B(par_en_latched), 
	.A(n12));
   NAND2X2M U28 (.Y(n12), 
	.B(bit_cnt[3]), 
	.A(n10));
   NAND2X2M U29 (.Y(par_pdata_en), 
	.B(current_state[0]), 
	.A(n16));
   OAI2BB2X1M U30 (.Y(n30), 
	.B1(n34), 
	.B0(n23), 
	.A1N(n23), 
	.A0N(par_en));
   NOR2X2M U31 (.Y(par_chk_en), 
	.B(n2), 
	.A(n5));
   INVX2M U32 (.Y(n5), 
	.A(bit_valid));
   OR4X1M U33 (.Y(n4), 
	.D(bit_cnt[2]), 
	.C(n15), 
	.B(n18), 
	.A(bit_cnt[0]));
   INVX2M U34 (.Y(n18), 
	.A(bit_cnt[3]));
   INVX2M U35 (.Y(n15), 
	.A(bit_cnt[1]));
   AO2B2X2M U36 (.Y(n28), 
	.B1(n23), 
	.B0(par_typ), 
	.A1N(n23), 
	.A0(par_typ_latched));
   INVX2M U37 (.Y(n34), 
	.A(par_en_latched));
   NOR4X1M U38 (.Y(data_valid_c), 
	.D(par_err), 
	.C(stp_err), 
	.B(current_state[1]), 
	.A(n24));
   NAND2X2M U39 (.Y(n24), 
	.B(current_state[0]), 
	.A(current_state[2]));
   BUFX2M U46 (.Y(dat_samp_en), 
	.A(cnt_en));
endmodule

module edge_bit_counter_MAX_WIDTH6_test_1 (
	clk, 
	rst_n, 
	prescale, 
	cnt_en, 
	edge_cnt, 
	bit_cnt, 
	test_si, 
	test_se);
   input clk;
   input rst_n;
   input [5:0] prescale;
   input cnt_en;
   output [5:0] edge_cnt;
   output [3:0] bit_cnt;
   input test_si;
   input test_se;

   // Internal wires
   wire N5;
   wire N7;
   wire N8;
   wire N9;
   wire N10;
   wire N11;
   wire N12;
   wire N19;
   wire N20;
   wire N21;
   wire N22;
   wire N23;
   wire N24;
   wire N27;
   wire N28;
   wire N29;
   wire N30;
   wire N31;
   wire N32;
   wire N33;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire \add_18/carry[5] ;
   wire \add_18/carry[4] ;
   wire \add_18/carry[3] ;
   wire \add_18/carry[2] ;
   wire n1;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n43;
   wire n44;

   SDFFRQX2M \bit_cnt_reg[2]  (.SI(bit_cnt[1]), 
	.SE(n44), 
	.RN(rst_n), 
	.Q(bit_cnt[2]), 
	.D(n30), 
	.CK(clk));
   SDFFRQX2M \bit_cnt_reg[1]  (.SI(bit_cnt[0]), 
	.SE(n44), 
	.RN(rst_n), 
	.Q(bit_cnt[1]), 
	.D(n31), 
	.CK(clk));
   SDFFRQX2M \bit_cnt_reg[3]  (.SI(bit_cnt[2]), 
	.SE(n44), 
	.RN(rst_n), 
	.Q(bit_cnt[3]), 
	.D(n29), 
	.CK(clk));
   SDFFRQX2M \bit_cnt_reg[0]  (.SI(test_si), 
	.SE(n44), 
	.RN(rst_n), 
	.Q(bit_cnt[0]), 
	.D(n32), 
	.CK(clk));
   SDFFRQX2M \edge_cnt_reg[5]  (.SI(edge_cnt[4]), 
	.SE(n44), 
	.RN(rst_n), 
	.Q(edge_cnt[5]), 
	.D(N24), 
	.CK(clk));
   SDFFRQX2M \edge_cnt_reg[4]  (.SI(edge_cnt[3]), 
	.SE(n44), 
	.RN(rst_n), 
	.Q(edge_cnt[4]), 
	.D(N23), 
	.CK(clk));
   SDFFRQX2M \edge_cnt_reg[3]  (.SI(edge_cnt[2]), 
	.SE(n44), 
	.RN(rst_n), 
	.Q(edge_cnt[3]), 
	.D(N22), 
	.CK(clk));
   SDFFRQX2M \edge_cnt_reg[2]  (.SI(edge_cnt[1]), 
	.SE(n44), 
	.RN(rst_n), 
	.Q(edge_cnt[2]), 
	.D(N21), 
	.CK(clk));
   SDFFRQX2M \edge_cnt_reg[1]  (.SI(edge_cnt[0]), 
	.SE(n44), 
	.RN(rst_n), 
	.Q(edge_cnt[1]), 
	.D(N20), 
	.CK(clk));
   SDFFRQX2M \edge_cnt_reg[0]  (.SI(bit_cnt[3]), 
	.SE(n44), 
	.RN(rst_n), 
	.Q(edge_cnt[0]), 
	.D(N19), 
	.CK(clk));
   INVX2M U7 (.Y(n34), 
	.A(n28));
   NOR2X2M U8 (.Y(n28), 
	.B(N5), 
	.A(n40));
   AOI21X2M U15 (.Y(n27), 
	.B0(n28), 
	.A1(cnt_en), 
	.A0(n36));
   INVX2M U16 (.Y(n40), 
	.A(cnt_en));
   AND2X2M U17 (.Y(N20), 
	.B(n28), 
	.A(N8));
   AND2X2M U18 (.Y(N21), 
	.B(n28), 
	.A(N9));
   AND2X2M U19 (.Y(N22), 
	.B(n28), 
	.A(N10));
   AND2X2M U20 (.Y(N23), 
	.B(n28), 
	.A(N11));
   NOR3X2M U21 (.Y(n24), 
	.C(n38), 
	.B(n36), 
	.A(n37));
   OAI32X1M U22 (.Y(n32), 
	.B1(n34), 
	.B0(n36), 
	.A2(n28), 
	.A1(bit_cnt[0]), 
	.A0(n40));
   OAI32X1M U23 (.Y(n30), 
	.B1(n38), 
	.B0(n26), 
	.A2(n37), 
	.A1(bit_cnt[2]), 
	.A0(n25));
   OA21X2M U24 (.Y(n26), 
	.B0(n27), 
	.A1(bit_cnt[1]), 
	.A0(n40));
   OAI22X1M U25 (.Y(n29), 
	.B1(n40), 
	.B0(n23), 
	.A1(n34), 
	.A0(n39));
   AOI32X1M U26 (.Y(n23), 
	.B1(n35), 
	.B0(bit_cnt[3]), 
	.A2(N5), 
	.A1(n39), 
	.A0(n24));
   INVX2M U27 (.Y(n39), 
	.A(bit_cnt[3]));
   INVX2M U28 (.Y(n35), 
	.A(n24));
   OAI22X1M U29 (.Y(n31), 
	.B1(n25), 
	.B0(bit_cnt[1]), 
	.A1(n37), 
	.A0(n27));
   NAND3X2M U30 (.Y(n25), 
	.C(cnt_en), 
	.B(n34), 
	.A(bit_cnt[0]));
   AND2X2M U31 (.Y(N24), 
	.B(n28), 
	.A(N12));
   AND2X2M U32 (.Y(N19), 
	.B(n28), 
	.A(N7));
   INVX2M U33 (.Y(n36), 
	.A(bit_cnt[0]));
   INVX2M U34 (.Y(n37), 
	.A(bit_cnt[1]));
   INVX2M U35 (.Y(n38), 
	.A(bit_cnt[2]));
   ADDHX1M U36 (.S(N8), 
	.CO(\add_18/carry[2] ), 
	.B(edge_cnt[0]), 
	.A(edge_cnt[1]));
   ADDHX1M U37 (.S(N9), 
	.CO(\add_18/carry[3] ), 
	.B(\add_18/carry[2] ), 
	.A(edge_cnt[2]));
   ADDHX1M U38 (.S(N10), 
	.CO(\add_18/carry[4] ), 
	.B(\add_18/carry[3] ), 
	.A(edge_cnt[3]));
   ADDHX1M U39 (.S(N11), 
	.CO(\add_18/carry[5] ), 
	.B(\add_18/carry[4] ), 
	.A(edge_cnt[4]));
   OR2X2M U40 (.Y(n1), 
	.B(prescale[0]), 
	.A(prescale[1]));
   CLKINVX1M U41 (.Y(N27), 
	.A(prescale[0]));
   OAI2BB1X1M U42 (.Y(N28), 
	.B0(n1), 
	.A1N(prescale[1]), 
	.A0N(prescale[0]));
   OR2X1M U43 (.Y(n2), 
	.B(prescale[2]), 
	.A(n1));
   OAI2BB1X1M U44 (.Y(N29), 
	.B0(n2), 
	.A1N(prescale[2]), 
	.A0N(n1));
   OR2X1M U45 (.Y(n3), 
	.B(prescale[3]), 
	.A(n2));
   OAI2BB1X1M U46 (.Y(N30), 
	.B0(n3), 
	.A1N(prescale[3]), 
	.A0N(n2));
   OR2X1M U47 (.Y(n4), 
	.B(prescale[4]), 
	.A(n3));
   OAI2BB1X1M U48 (.Y(N31), 
	.B0(n4), 
	.A1N(prescale[4]), 
	.A0N(n3));
   NOR2X1M U49 (.Y(N33), 
	.B(prescale[5]), 
	.A(n4));
   AO21XLM U50 (.Y(N32), 
	.B0(N33), 
	.A1(prescale[5]), 
	.A0(n4));
   CLKINVX1M U51 (.Y(N7), 
	.A(edge_cnt[0]));
   CLKXOR2X2M U52 (.Y(N12), 
	.B(edge_cnt[5]), 
	.A(\add_18/carry[5] ));
   NOR2BX1M U53 (.Y(n5), 
	.B(edge_cnt[0]), 
	.AN(N27));
   OAI2B2X1M U54 (.Y(n19), 
	.B1(n5), 
	.B0(N28), 
	.A1N(edge_cnt[1]), 
	.A0(n5));
   XNOR2X1M U55 (.Y(n18), 
	.B(edge_cnt[5]), 
	.A(N32));
   NOR2BX1M U56 (.Y(n16), 
	.B(N27), 
	.AN(edge_cnt[0]));
   OAI2B2X1M U57 (.Y(n17), 
	.B1(n16), 
	.B0(edge_cnt[1]), 
	.A1N(N28), 
	.A0(n16));
   NAND4BX1M U58 (.Y(n33), 
	.D(n17), 
	.C(n18), 
	.B(n19), 
	.AN(N33));
   CLKXOR2X2M U59 (.Y(n22), 
	.B(edge_cnt[4]), 
	.A(N31));
   CLKXOR2X2M U60 (.Y(n21), 
	.B(edge_cnt[2]), 
	.A(N29));
   CLKXOR2X2M U61 (.Y(n20), 
	.B(edge_cnt[3]), 
	.A(N30));
   NOR4X1M U62 (.Y(N5), 
	.D(n20), 
	.C(n21), 
	.B(n22), 
	.A(n33));
   INVXLM U63 (.Y(n43), 
	.A(test_se));
   CLKINVX2M U64 (.Y(n44), 
	.A(n43));
endmodule

module data_sampling_MAX_WIDTH6_test_1 (
	clk, 
	rst_n, 
	prescale, 
	rx_in, 
	dat_samp_en, 
	edge_cnt, 
	bit_valid, 
	sampled_bit, 
	test_si, 
	test_se);
   input clk;
   input rst_n;
   input [5:0] prescale;
   input rx_in;
   input dat_samp_en;
   input [5:0] edge_cnt;
   output bit_valid;
   output sampled_bit;
   input test_si;
   input test_se;

   // Internal wires
   wire N33;
   wire N34;
   wire N35;
   wire N36;
   wire N37;
   wire N38;
   wire N39;
   wire N40;
   wire N42;
   wire N43;
   wire N44;
   wire N46;
   wire N54;
   wire N71;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire \sub_36/carry[4] ;
   wire \sub_36/carry[3] ;
   wire n1;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire n49;
   wire n50;
   wire n51;
   wire n52;
   wire n53;
   wire n54;
   wire n55;
   wire n56;
   wire n57;
   wire [1:0] s;

   assign N40 = prescale[1] ;

   SDFFRQX2M bit_valid_reg (.SI(test_si), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(bit_valid), 
	.D(N71), 
	.CK(clk));
   SDFFSQX2M sampled_bit_reg (.SN(rst_n), 
	.SI(s[1]), 
	.SE(test_se), 
	.Q(sampled_bit), 
	.D(n39), 
	.CK(clk));
   SDFFRQX2M \s_reg[1]  (.SI(s[0]), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(s[1]), 
	.D(n41), 
	.CK(clk));
   SDFFRQX2M \s_reg[0]  (.SI(bit_valid), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(s[0]), 
	.D(n40), 
	.CK(clk));
   NOR2X2M U5 (.Y(n1), 
	.B(\sub_36/carry[4] ), 
	.A(prescale[5]));
   NOR4X1M U6 (.Y(n32), 
	.D(N40), 
	.C(prescale[0]), 
	.B(n28), 
	.A(n54));
   INVX2M U7 (.Y(n54), 
	.A(dat_samp_en));
   INVX2M U8 (.Y(n51), 
	.A(N46));
   NOR2X2M U9 (.Y(N71), 
	.B(n50), 
	.A(n54));
   OAI2B1X2M U12 (.Y(n39), 
	.B0(n26), 
	.A1N(sampled_bit), 
	.A0(n25));
   OAI21X2M U13 (.Y(n26), 
	.B0(n25), 
	.A1(n27), 
	.A0(n54));
   NAND2X2M U14 (.Y(n25), 
	.B(n50), 
	.A(dat_samp_en));
   OAI31X1M U15 (.Y(n27), 
	.B0(n29), 
	.A2(n53), 
	.A1(n28), 
	.A0(n52));
   OAI31X1M U16 (.Y(n29), 
	.B0(rx_in), 
	.A2(s[0]), 
	.A1(s[1]), 
	.A0(n30));
   OAI2BB2X1M U17 (.Y(n40), 
	.B1(n31), 
	.B0(n57), 
	.A1N(s[0]), 
	.A0N(n31));
   NAND2X2M U18 (.Y(n31), 
	.B(n32), 
	.A(N46));
   OAI2BB2X1M U19 (.Y(n41), 
	.B1(n33), 
	.B0(n57), 
	.A1N(s[1]), 
	.A0N(n33));
   NAND3X2M U20 (.Y(n33), 
	.C(n32), 
	.B(n51), 
	.A(N39));
   INVX2M U21 (.Y(n57), 
	.A(rx_in));
   INVX2M U22 (.Y(n50), 
	.A(n34));
   NOR3BX2M U23 (.Y(n34), 
	.C(N40), 
	.B(prescale[0]), 
	.AN(n35));
   OAI2BB1X2M U24 (.Y(n35), 
	.B0(n36), 
	.A1N(N39), 
	.A0N(n30));
   NAND4BBX1M U25 (.Y(n36), 
	.D(n51), 
	.C(N54), 
	.BN(n28), 
	.AN(N39));
   INVX2M U26 (.Y(n53), 
	.A(s[0]));
   INVX2M U27 (.Y(n52), 
	.A(s[1]));
   NOR4X1M U28 (.Y(n30), 
	.D(prescale[5]), 
	.C(prescale[4]), 
	.B(prescale[3]), 
	.A(n56));
   NAND2X2M U29 (.Y(n28), 
	.B(n56), 
	.A(n37));
   OAI32X1M U30 (.Y(n37), 
	.B1(n38), 
	.B0(prescale[5]), 
	.A2(prescale[3]), 
	.A1(prescale[4]), 
	.A0(n55));
   INVX2M U31 (.Y(n55), 
	.A(prescale[5]));
   XNOR2X2M U32 (.Y(n38), 
	.B(prescale[4]), 
	.A(prescale[3]));
   INVX2M U33 (.Y(n56), 
	.A(prescale[2]));
   OR2X2M U34 (.Y(n2), 
	.B(N40), 
	.A(prescale[2]));
   XNOR2X1M U35 (.Y(N44), 
	.B(prescale[5]), 
	.A(\sub_36/carry[4] ));
   OR2X1M U36 (.Y(\sub_36/carry[4] ), 
	.B(\sub_36/carry[3] ), 
	.A(prescale[4]));
   XNOR2X1M U37 (.Y(N43), 
	.B(prescale[4]), 
	.A(\sub_36/carry[3] ));
   OR2X1M U38 (.Y(\sub_36/carry[3] ), 
	.B(prescale[2]), 
	.A(prescale[3]));
   XNOR2X1M U39 (.Y(N42), 
	.B(prescale[3]), 
	.A(prescale[2]));
   CLKINVX1M U40 (.Y(N33), 
	.A(N40));
   OAI2BB1X1M U41 (.Y(N34), 
	.B0(n2), 
	.A1N(prescale[2]), 
	.A0N(N40));
   OR2X1M U42 (.Y(n3), 
	.B(prescale[3]), 
	.A(n2));
   OAI2BB1X1M U43 (.Y(N35), 
	.B0(n3), 
	.A1N(prescale[3]), 
	.A0N(n2));
   XNOR2X1M U44 (.Y(N36), 
	.B(n3), 
	.A(prescale[4]));
   NOR3X1M U45 (.Y(N38), 
	.C(n3), 
	.B(prescale[5]), 
	.A(prescale[4]));
   OAI21X1M U46 (.Y(n4), 
	.B0(prescale[5]), 
	.A1(n3), 
	.A0(prescale[4]));
   NAND2BX1M U47 (.Y(N37), 
	.B(n4), 
	.AN(N38));
   NOR2BX1M U48 (.Y(n5), 
	.B(N33), 
	.AN(edge_cnt[0]));
   OAI2B2X1M U49 (.Y(n8), 
	.B1(n5), 
	.B0(edge_cnt[1]), 
	.A1N(N34), 
	.A0(n5));
   NOR2BX1M U50 (.Y(n6), 
	.B(edge_cnt[0]), 
	.AN(N33));
   OAI2B2X1M U51 (.Y(n7), 
	.B1(n6), 
	.B0(N34), 
	.A1N(edge_cnt[1]), 
	.A0(n6));
   NAND4BBX1M U52 (.Y(n12), 
	.D(n7), 
	.C(n8), 
	.BN(edge_cnt[5]), 
	.AN(N38));
   CLKXOR2X2M U53 (.Y(n11), 
	.B(edge_cnt[4]), 
	.A(N37));
   CLKXOR2X2M U54 (.Y(n10), 
	.B(edge_cnt[2]), 
	.A(N35));
   CLKXOR2X2M U55 (.Y(n9), 
	.B(edge_cnt[3]), 
	.A(N36));
   NOR4X1M U56 (.Y(N39), 
	.D(n9), 
	.C(n10), 
	.B(n11), 
	.A(n12));
   NOR2BX1M U57 (.Y(n17), 
	.B(N40), 
	.AN(edge_cnt[0]));
   OAI2B2X1M U58 (.Y(n20), 
	.B1(n17), 
	.B0(edge_cnt[1]), 
	.A1N(n56), 
	.A0(n17));
   NOR2BX1M U59 (.Y(n18), 
	.B(edge_cnt[0]), 
	.AN(N40));
   OAI2B2X1M U60 (.Y(n19), 
	.B1(n18), 
	.B0(n56), 
	.A1N(edge_cnt[1]), 
	.A0(n18));
   NAND4BBX1M U61 (.Y(n24), 
	.D(n19), 
	.C(n20), 
	.BN(edge_cnt[5]), 
	.AN(n1));
   CLKXOR2X2M U62 (.Y(n23), 
	.B(edge_cnt[4]), 
	.A(N44));
   CLKXOR2X2M U63 (.Y(n22), 
	.B(edge_cnt[2]), 
	.A(N42));
   CLKXOR2X2M U64 (.Y(n21), 
	.B(edge_cnt[3]), 
	.A(N43));
   NOR4X1M U65 (.Y(N46), 
	.D(n21), 
	.C(n22), 
	.B(n23), 
	.A(n24));
   NOR2BX1M U66 (.Y(n42), 
	.B(N40), 
	.AN(edge_cnt[0]));
   OAI2B2X1M U67 (.Y(n45), 
	.B1(n42), 
	.B0(edge_cnt[1]), 
	.A1N(prescale[2]), 
	.A0(n42));
   NOR2BX1M U68 (.Y(n43), 
	.B(edge_cnt[0]), 
	.AN(N40));
   OAI2B2X1M U69 (.Y(n44), 
	.B1(n43), 
	.B0(prescale[2]), 
	.A1N(edge_cnt[1]), 
	.A0(n43));
   NAND3BX1M U70 (.Y(n49), 
	.C(n44), 
	.B(n45), 
	.AN(edge_cnt[5]));
   CLKXOR2X2M U71 (.Y(n48), 
	.B(edge_cnt[4]), 
	.A(prescale[5]));
   CLKXOR2X2M U72 (.Y(n47), 
	.B(edge_cnt[2]), 
	.A(prescale[3]));
   CLKXOR2X2M U73 (.Y(n46), 
	.B(edge_cnt[3]), 
	.A(prescale[4]));
   NOR4X1M U74 (.Y(N54), 
	.D(n46), 
	.C(n47), 
	.B(n48), 
	.A(n49));
endmodule

module deserializer_test_1 (
	clk, 
	rst_n, 
	sampled_bit, 
	deser_en, 
	p_data, 
	test_se);
   input clk;
   input rst_n;
   input sampled_bit;
   input deser_en;
   output [7:0] p_data;
   input test_se;

   // Internal wires
   wire n10;
   wire n12;
   wire n14;
   wire n16;
   wire n18;
   wire n20;
   wire n22;
   wire n24;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n25;

   SDFFRQX2M \p_data_reg[0]  (.SI(sampled_bit), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(p_data[0]), 
	.D(n10), 
	.CK(clk));
   SDFFRQX2M \p_data_reg[5]  (.SI(p_data[4]), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(p_data[5]), 
	.D(n20), 
	.CK(clk));
   SDFFRQX2M \p_data_reg[1]  (.SI(p_data[0]), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(p_data[1]), 
	.D(n12), 
	.CK(clk));
   SDFFRQX2M \p_data_reg[4]  (.SI(p_data[3]), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(p_data[4]), 
	.D(n18), 
	.CK(clk));
   SDFFRQX2M \p_data_reg[7]  (.SI(p_data[6]), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(p_data[7]), 
	.D(n24), 
	.CK(clk));
   SDFFRQX2M \p_data_reg[3]  (.SI(p_data[2]), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(p_data[3]), 
	.D(n16), 
	.CK(clk));
   SDFFRQX2M \p_data_reg[6]  (.SI(p_data[5]), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(p_data[6]), 
	.D(n22), 
	.CK(clk));
   SDFFRQX2M \p_data_reg[2]  (.SI(p_data[1]), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(p_data[2]), 
	.D(n14), 
	.CK(clk));
   INVX2M U2 (.Y(n25), 
	.A(deser_en));
   OAI22X1M U3 (.Y(n12), 
	.B1(n8), 
	.B0(deser_en), 
	.A1(n7), 
	.A0(n25));
   OAI22X1M U4 (.Y(n14), 
	.B1(n7), 
	.B0(deser_en), 
	.A1(n6), 
	.A0(n25));
   OAI22X1M U5 (.Y(n16), 
	.B1(n6), 
	.B0(deser_en), 
	.A1(n5), 
	.A0(n25));
   OAI22X1M U6 (.Y(n18), 
	.B1(n5), 
	.B0(deser_en), 
	.A1(n4), 
	.A0(n25));
   OAI22X1M U7 (.Y(n20), 
	.B1(n4), 
	.B0(deser_en), 
	.A1(n3), 
	.A0(n25));
   OAI22X1M U8 (.Y(n22), 
	.B1(n3), 
	.B0(deser_en), 
	.A1(n2), 
	.A0(n25));
   OAI2BB2X1M U10 (.Y(n10), 
	.B1(n8), 
	.B0(n25), 
	.A1N(n25), 
	.A0N(p_data[0]));
   OAI2BB2X1M U11 (.Y(n24), 
	.B1(n2), 
	.B0(deser_en), 
	.A1N(deser_en), 
	.A0N(sampled_bit));
   INVX2M U12 (.Y(n7), 
	.A(p_data[2]));
   INVX2M U13 (.Y(n3), 
	.A(p_data[6]));
   INVX2M U14 (.Y(n2), 
	.A(p_data[7]));
   INVX2M U15 (.Y(n6), 
	.A(p_data[3]));
   INVX2M U16 (.Y(n8), 
	.A(p_data[1]));
   INVX2M U17 (.Y(n5), 
	.A(p_data[4]));
   INVX2M U26 (.Y(n4), 
	.A(p_data[5]));
endmodule

module start_check (
	sampled_bit, 
	strt_chk_en, 
	strt_glitch);
   input sampled_bit;
   input strt_chk_en;
   output strt_glitch;

   AND2X2M U2 (.Y(strt_glitch), 
	.B(sampled_bit), 
	.A(strt_chk_en));
endmodule

module parity_check_test_1 (
	clk, 
	rst_n, 
	par_typ_latched, 
	sampled_bit, 
	p_data, 
	par_chk_en, 
	par_pdata_en, 
	par_err, 
	test_si, 
	test_se);
   input clk;
   input rst_n;
   input par_typ_latched;
   input sampled_bit;
   input [7:0] p_data;
   input par_chk_en;
   input par_pdata_en;
   output par_err;
   input test_si;
   input test_se;

   // Internal wires
   wire n1;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n8;
   wire n9;
   wire n10;
   wire n12;
   wire n2;

   SDFFRQX4M par_err_reg (.SI(test_si), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(par_err), 
	.D(n12), 
	.CK(clk));
   XNOR2X2M U3 (.Y(n5), 
	.B(par_typ_latched), 
	.A(sampled_bit));
   OAI2BB2X1M U4 (.Y(n12), 
	.B1(n2), 
	.B0(n1), 
	.A1N(n2), 
	.A0N(par_err));
   INVX2M U5 (.Y(n2), 
	.A(par_chk_en));
   XOR3XLM U6 (.Y(n1), 
	.C(n5), 
	.B(n4), 
	.A(n3));
   NOR2X2M U7 (.Y(n4), 
	.B(par_pdata_en), 
	.A(n6));
   XOR3XLM U8 (.Y(n6), 
	.C(n8), 
	.B(p_data[0]), 
	.A(p_data[1]));
   XNOR2X2M U9 (.Y(n8), 
	.B(p_data[2]), 
	.A(p_data[3]));
   NOR2X2M U10 (.Y(n3), 
	.B(par_pdata_en), 
	.A(n9));
   XOR3XLM U11 (.Y(n9), 
	.C(n10), 
	.B(p_data[4]), 
	.A(p_data[5]));
   XNOR2X2M U12 (.Y(n10), 
	.B(p_data[6]), 
	.A(p_data[7]));
endmodule

module stop_check_test_1 (
	clk, 
	rst_n, 
	sampled_bit, 
	stp_chk_en, 
	stp_err, 
	test_si, 
	test_se);
   input clk;
   input rst_n;
   input sampled_bit;
   input stp_chk_en;
   output stp_err;
   input test_si;
   input test_se;

   // Internal wires
   wire n3;
   wire n1;

   SDFFRQX4M stp_err_reg (.SI(test_si), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(stp_err), 
	.D(n3), 
	.CK(clk));
   OAI2BB2X1M U2 (.Y(n3), 
	.B1(n1), 
	.B0(sampled_bit), 
	.A1N(n1), 
	.A0N(stp_err));
   INVX2M U3 (.Y(n1), 
	.A(stp_chk_en));
endmodule

module uart_rx_DATA_WIDTH8_test_1 (
	clk, 
	rst_n, 
	par_typ, 
	par_en, 
	prescale, 
	rx_in, 
	p_data, 
	data_valid, 
	par_err, 
	stp_err, 
	test_si2, 
	test_si1, 
	test_se);
   input clk;
   input rst_n;
   input par_typ;
   input par_en;
   input [5:0] prescale;
   input rx_in;
   output [7:0] p_data;
   output data_valid;
   output par_err;
   output stp_err;
   input test_si2;
   input test_si1;
   input test_se;

   // Internal wires
   wire par_typ_latched;
   wire deser_en;
   wire stp_chk_en;
   wire par_chk_en;
   wire par_pdata_en;
   wire strt_chk_en;
   wire dat_samp_en;
   wire cnt_en;
   wire bit_valid;
   wire strt_glitch;
   wire sampled_bit;
   wire [3:0] bit_cnt;
   wire [5:0] edge_cnt;

   rx_controller_test_1 controller_inst (.clk(clk), 
	.rst_n(rst_n), 
	.rx_in(rx_in), 
	.par_en(par_en), 
	.par_typ(par_typ), 
	.bit_cnt({ bit_cnt[3],
		bit_cnt[2],
		bit_cnt[1],
		bit_cnt[0] }), 
	.strt_glitch(strt_glitch), 
	.par_err(par_err), 
	.stp_err(stp_err), 
	.bit_valid(bit_valid), 
	.cnt_en(cnt_en), 
	.dat_samp_en(dat_samp_en), 
	.strt_chk_en(strt_chk_en), 
	.par_pdata_en(par_pdata_en), 
	.par_chk_en(par_chk_en), 
	.stp_chk_en(stp_chk_en), 
	.deser_en(deser_en), 
	.data_valid(data_valid), 
	.par_typ_latched(par_typ_latched), 
	.test_si(test_si1), 
	.test_se(test_se));
   edge_bit_counter_MAX_WIDTH6_test_1 edge_bit_counter_inst (.clk(clk), 
	.rst_n(rst_n), 
	.prescale({ prescale[5],
		prescale[4],
		prescale[3],
		prescale[2],
		prescale[1],
		prescale[0] }), 
	.cnt_en(cnt_en), 
	.edge_cnt({ edge_cnt[5],
		edge_cnt[4],
		edge_cnt[3],
		edge_cnt[2],
		edge_cnt[1],
		edge_cnt[0] }), 
	.bit_cnt({ bit_cnt[3],
		bit_cnt[2],
		bit_cnt[1],
		bit_cnt[0] }), 
	.test_si(p_data[7]), 
	.test_se(test_se));
   data_sampling_MAX_WIDTH6_test_1 data_sampling_inst (.clk(clk), 
	.rst_n(rst_n), 
	.prescale({ prescale[5],
		prescale[4],
		prescale[3],
		prescale[2],
		prescale[1],
		prescale[0] }), 
	.rx_in(rx_in), 
	.dat_samp_en(dat_samp_en), 
	.edge_cnt({ edge_cnt[5],
		edge_cnt[4],
		edge_cnt[3],
		edge_cnt[2],
		edge_cnt[1],
		edge_cnt[0] }), 
	.bit_valid(bit_valid), 
	.sampled_bit(sampled_bit), 
	.test_si(par_typ_latched), 
	.test_se(test_se));
   deserializer_test_1 deserializer_inst (.clk(clk), 
	.rst_n(rst_n), 
	.sampled_bit(sampled_bit), 
	.deser_en(deser_en), 
	.p_data({ p_data[7],
		p_data[6],
		p_data[5],
		p_data[4],
		p_data[3],
		p_data[2],
		p_data[1],
		p_data[0] }), 
	.test_se(test_se));
   start_check start_check_inst (.sampled_bit(sampled_bit), 
	.strt_chk_en(strt_chk_en), 
	.strt_glitch(strt_glitch));
   parity_check_test_1 parity_check_inst (.clk(clk), 
	.rst_n(rst_n), 
	.par_typ_latched(par_typ_latched), 
	.sampled_bit(sampled_bit), 
	.p_data({ p_data[7],
		p_data[6],
		p_data[5],
		p_data[4],
		p_data[3],
		p_data[2],
		p_data[1],
		p_data[0] }), 
	.par_chk_en(par_chk_en), 
	.par_pdata_en(par_pdata_en), 
	.par_err(par_err), 
	.test_si(edge_cnt[5]), 
	.test_se(test_se));
   stop_check_test_1 stop_check_inst (.clk(clk), 
	.rst_n(rst_n), 
	.sampled_bit(sampled_bit), 
	.stp_chk_en(stp_chk_en), 
	.stp_err(stp_err), 
	.test_si(test_si2), 
	.test_se(test_se));
endmodule

module uart_DATA_WIDTH8_test_1 (
	rst_n, 
	tx_clk, 
	rx_clk, 
	rx_in, 
	rx_p_data, 
	rx_data_valid, 
	tx_p_data, 
	tx_data_valid, 
	tx_out, 
	tx_busy, 
	prescale, 
	parity_enable, 
	parity_type, 
	parity_error, 
	framing_error, 
	test_si, 
	test_se, 
	FE_OFN0_d1_scan_func_rst);
   input rst_n;
   input tx_clk;
   input rx_clk;
   input rx_in;
   output [7:0] rx_p_data;
   output rx_data_valid;
   input [7:0] tx_p_data;
   input tx_data_valid;
   output tx_out;
   output tx_busy;
   input [5:0] prescale;
   input parity_enable;
   input parity_type;
   output parity_error;
   output framing_error;
   input test_si;
   input test_se;
   input FE_OFN0_d1_scan_func_rst;

   // Internal wires
   wire n2;

   uart_tx_DATA_WIDTH8_test_1 U0_UART_TX (.clk(tx_clk), 
	.rst_n(rst_n), 
	.p_data({ tx_p_data[7],
		tx_p_data[6],
		tx_p_data[5],
		tx_p_data[4],
		tx_p_data[3],
		tx_p_data[2],
		tx_p_data[1],
		tx_p_data[0] }), 
	.data_valid(tx_data_valid), 
	.par_en(parity_enable), 
	.par_typ(parity_type), 
	.tx_out(tx_out), 
	.busy(tx_busy), 
	.test_si(parity_error), 
	.test_so(n2), 
	.test_se(test_se), 
	.FE_OFN0_d1_scan_func_rst(FE_OFN0_d1_scan_func_rst));
   uart_rx_DATA_WIDTH8_test_1 U0_UART_RX (.clk(rx_clk), 
	.rst_n(rst_n), 
	.par_typ(parity_type), 
	.par_en(parity_enable), 
	.prescale({ prescale[5],
		prescale[4],
		prescale[3],
		prescale[2],
		prescale[1],
		prescale[0] }), 
	.rx_in(rx_in), 
	.p_data({ rx_p_data[7],
		rx_p_data[6],
		rx_p_data[5],
		rx_p_data[4],
		rx_p_data[3],
		rx_p_data[2],
		rx_p_data[1],
		rx_p_data[0] }), 
	.data_valid(rx_data_valid), 
	.par_err(parity_error), 
	.stp_err(framing_error), 
	.test_si2(n2), 
	.test_si1(test_si), 
	.test_se(test_se));
endmodule

module clk_gate_USE_ICG1 (
	clk, 
	clk_en, 
	gated_clk);
   input clk;
   input clk_en;
   output gated_clk;

   TLATNCAX4M \genblk1.U0  (.ECK(gated_clk), 
	.E(clk_en), 
	.CK(clk));
endmodule

module ALU_DATA_WIDTH8_FUN_WIDTH4_OUT_WIDTH16_DW_div_uns_0 (
	a, 
	b, 
	quotient, 
	remainder, 
	divide_by_0, 
	n232, 
	n196, 
	n231, 
	n230, 
	n229, 
	n228, 
	n227, 
	n197, 
	n199, 
	n201, 
	n224, 
	n223, 
	n202);
   input [7:0] a;
   input [7:0] b;
   output [7:0] quotient;
   output [7:0] remainder;
   output divide_by_0;
   input n232;
   input n196;
   input n231;
   input n230;
   input n229;
   input n228;
   input n227;
   input n197;
   input n199;
   input n201;
   input n224;
   input n223;
   input n202;

   // Internal wires
   wire \u_div/SumTmp[1][0] ;
   wire \u_div/SumTmp[1][1] ;
   wire \u_div/SumTmp[1][2] ;
   wire \u_div/SumTmp[1][3] ;
   wire \u_div/SumTmp[1][4] ;
   wire \u_div/SumTmp[1][5] ;
   wire \u_div/SumTmp[1][6] ;
   wire \u_div/SumTmp[2][0] ;
   wire \u_div/SumTmp[2][1] ;
   wire \u_div/SumTmp[2][2] ;
   wire \u_div/SumTmp[2][3] ;
   wire \u_div/SumTmp[2][4] ;
   wire \u_div/SumTmp[2][5] ;
   wire \u_div/SumTmp[3][0] ;
   wire \u_div/SumTmp[3][1] ;
   wire \u_div/SumTmp[3][2] ;
   wire \u_div/SumTmp[3][3] ;
   wire \u_div/SumTmp[3][4] ;
   wire \u_div/SumTmp[4][0] ;
   wire \u_div/SumTmp[4][1] ;
   wire \u_div/SumTmp[4][2] ;
   wire \u_div/SumTmp[4][3] ;
   wire \u_div/SumTmp[5][0] ;
   wire \u_div/SumTmp[5][1] ;
   wire \u_div/SumTmp[5][2] ;
   wire \u_div/SumTmp[6][0] ;
   wire \u_div/SumTmp[6][1] ;
   wire \u_div/SumTmp[7][0] ;
   wire \u_div/CryTmp[0][1] ;
   wire \u_div/CryTmp[0][2] ;
   wire \u_div/CryTmp[0][3] ;
   wire \u_div/CryTmp[0][4] ;
   wire \u_div/CryTmp[0][5] ;
   wire \u_div/CryTmp[0][6] ;
   wire \u_div/CryTmp[0][7] ;
   wire \u_div/CryTmp[1][1] ;
   wire \u_div/CryTmp[1][2] ;
   wire \u_div/CryTmp[1][3] ;
   wire \u_div/CryTmp[1][4] ;
   wire \u_div/CryTmp[1][5] ;
   wire \u_div/CryTmp[1][6] ;
   wire \u_div/CryTmp[1][7] ;
   wire \u_div/CryTmp[2][1] ;
   wire \u_div/CryTmp[2][2] ;
   wire \u_div/CryTmp[2][3] ;
   wire \u_div/CryTmp[2][4] ;
   wire \u_div/CryTmp[2][5] ;
   wire \u_div/CryTmp[2][6] ;
   wire \u_div/CryTmp[3][1] ;
   wire \u_div/CryTmp[3][2] ;
   wire \u_div/CryTmp[3][3] ;
   wire \u_div/CryTmp[3][4] ;
   wire \u_div/CryTmp[3][5] ;
   wire \u_div/CryTmp[4][1] ;
   wire \u_div/CryTmp[4][2] ;
   wire \u_div/CryTmp[4][3] ;
   wire \u_div/CryTmp[4][4] ;
   wire \u_div/CryTmp[5][1] ;
   wire \u_div/CryTmp[5][2] ;
   wire \u_div/CryTmp[5][3] ;
   wire \u_div/CryTmp[6][1] ;
   wire \u_div/CryTmp[6][2] ;
   wire \u_div/CryTmp[7][1] ;
   wire \u_div/PartRem[1][1] ;
   wire \u_div/PartRem[1][2] ;
   wire \u_div/PartRem[1][3] ;
   wire \u_div/PartRem[1][4] ;
   wire \u_div/PartRem[1][5] ;
   wire \u_div/PartRem[1][6] ;
   wire \u_div/PartRem[1][7] ;
   wire \u_div/PartRem[2][1] ;
   wire \u_div/PartRem[2][2] ;
   wire \u_div/PartRem[2][3] ;
   wire \u_div/PartRem[2][4] ;
   wire \u_div/PartRem[2][5] ;
   wire \u_div/PartRem[2][6] ;
   wire \u_div/PartRem[3][1] ;
   wire \u_div/PartRem[3][2] ;
   wire \u_div/PartRem[3][3] ;
   wire \u_div/PartRem[3][4] ;
   wire \u_div/PartRem[3][5] ;
   wire \u_div/PartRem[4][1] ;
   wire \u_div/PartRem[4][2] ;
   wire \u_div/PartRem[4][3] ;
   wire \u_div/PartRem[4][4] ;
   wire \u_div/PartRem[5][1] ;
   wire \u_div/PartRem[5][2] ;
   wire \u_div/PartRem[5][3] ;
   wire \u_div/PartRem[6][1] ;
   wire \u_div/PartRem[6][2] ;
   wire \u_div/PartRem[7][1] ;
   wire n2;
   wire n3;
   wire n4;
   wire n6;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;

   ADDFX2M \u_div/u_fa_PartRem_0_2_5  (.S(\u_div/SumTmp[2][5] ), 
	.CO(\u_div/CryTmp[2][6] ), 
	.CI(\u_div/CryTmp[2][5] ), 
	.B(n14), 
	.A(\u_div/PartRem[3][5] ));
   ADDFX2M \u_div/u_fa_PartRem_0_4_3  (.S(\u_div/SumTmp[4][3] ), 
	.CO(\u_div/CryTmp[4][4] ), 
	.CI(\u_div/CryTmp[4][3] ), 
	.B(n16), 
	.A(\u_div/PartRem[5][3] ));
   ADDFX2M \u_div/u_fa_PartRem_0_5_2  (.S(\u_div/SumTmp[5][2] ), 
	.CO(\u_div/CryTmp[5][3] ), 
	.CI(\u_div/CryTmp[5][2] ), 
	.B(n17), 
	.A(\u_div/PartRem[6][2] ));
   ADDFX2M \u_div/u_fa_PartRem_0_6_1  (.S(\u_div/SumTmp[6][1] ), 
	.CO(\u_div/CryTmp[6][2] ), 
	.CI(\u_div/CryTmp[6][1] ), 
	.B(n18), 
	.A(\u_div/PartRem[7][1] ));
   ADDFX2M \u_div/u_fa_PartRem_0_3_4  (.S(\u_div/SumTmp[3][4] ), 
	.CO(\u_div/CryTmp[3][5] ), 
	.CI(\u_div/CryTmp[3][4] ), 
	.B(n15), 
	.A(\u_div/PartRem[4][4] ));
   ADDFX2M \u_div/u_fa_PartRem_0_0_6  (.CO(\u_div/CryTmp[0][7] ), 
	.CI(\u_div/CryTmp[0][6] ), 
	.B(n13), 
	.A(\u_div/PartRem[1][6] ));
   ADDFX2M \u_div/u_fa_PartRem_0_0_7  (.CO(quotient[0]), 
	.CI(\u_div/CryTmp[0][7] ), 
	.B(n12), 
	.A(\u_div/PartRem[1][7] ));
   ADDFX2M \u_div/u_fa_PartRem_0_0_1  (.CO(\u_div/CryTmp[0][2] ), 
	.CI(\u_div/CryTmp[0][1] ), 
	.B(n18), 
	.A(\u_div/PartRem[1][1] ));
   ADDFX2M \u_div/u_fa_PartRem_0_1_1  (.S(\u_div/SumTmp[1][1] ), 
	.CO(\u_div/CryTmp[1][2] ), 
	.CI(\u_div/CryTmp[1][1] ), 
	.B(n18), 
	.A(\u_div/PartRem[2][1] ));
   ADDFX2M \u_div/u_fa_PartRem_0_2_1  (.S(\u_div/SumTmp[2][1] ), 
	.CO(\u_div/CryTmp[2][2] ), 
	.CI(\u_div/CryTmp[2][1] ), 
	.B(n18), 
	.A(\u_div/PartRem[3][1] ));
   ADDFX2M \u_div/u_fa_PartRem_0_3_1  (.S(\u_div/SumTmp[3][1] ), 
	.CO(\u_div/CryTmp[3][2] ), 
	.CI(\u_div/CryTmp[3][1] ), 
	.B(n18), 
	.A(\u_div/PartRem[4][1] ));
   ADDFX2M \u_div/u_fa_PartRem_0_4_1  (.S(\u_div/SumTmp[4][1] ), 
	.CO(\u_div/CryTmp[4][2] ), 
	.CI(\u_div/CryTmp[4][1] ), 
	.B(n18), 
	.A(\u_div/PartRem[5][1] ));
   ADDFX2M \u_div/u_fa_PartRem_0_5_1  (.S(\u_div/SumTmp[5][1] ), 
	.CO(\u_div/CryTmp[5][2] ), 
	.CI(\u_div/CryTmp[5][1] ), 
	.B(n18), 
	.A(\u_div/PartRem[6][1] ));
   ADDFX2M \u_div/u_fa_PartRem_0_0_4  (.CO(\u_div/CryTmp[0][5] ), 
	.CI(\u_div/CryTmp[0][4] ), 
	.B(n15), 
	.A(\u_div/PartRem[1][4] ));
   ADDFX2M \u_div/u_fa_PartRem_0_0_5  (.CO(\u_div/CryTmp[0][6] ), 
	.CI(\u_div/CryTmp[0][5] ), 
	.B(n14), 
	.A(\u_div/PartRem[1][5] ));
   ADDFX2M \u_div/u_fa_PartRem_0_1_5  (.S(\u_div/SumTmp[1][5] ), 
	.CO(\u_div/CryTmp[1][6] ), 
	.CI(\u_div/CryTmp[1][5] ), 
	.B(n14), 
	.A(\u_div/PartRem[2][5] ));
   ADDFX2M \u_div/u_fa_PartRem_0_1_4  (.S(\u_div/SumTmp[1][4] ), 
	.CO(\u_div/CryTmp[1][5] ), 
	.CI(\u_div/CryTmp[1][4] ), 
	.B(n15), 
	.A(\u_div/PartRem[2][4] ));
   ADDFX2M \u_div/u_fa_PartRem_0_0_2  (.CO(\u_div/CryTmp[0][3] ), 
	.CI(\u_div/CryTmp[0][2] ), 
	.B(n17), 
	.A(\u_div/PartRem[1][2] ));
   ADDFX2M \u_div/u_fa_PartRem_0_0_3  (.CO(\u_div/CryTmp[0][4] ), 
	.CI(\u_div/CryTmp[0][3] ), 
	.B(n16), 
	.A(\u_div/PartRem[1][3] ));
   ADDFX2M \u_div/u_fa_PartRem_0_2_4  (.S(\u_div/SumTmp[2][4] ), 
	.CO(\u_div/CryTmp[2][5] ), 
	.CI(\u_div/CryTmp[2][4] ), 
	.B(n15), 
	.A(\u_div/PartRem[3][4] ));
   ADDFX2M \u_div/u_fa_PartRem_0_1_3  (.S(\u_div/SumTmp[1][3] ), 
	.CO(\u_div/CryTmp[1][4] ), 
	.CI(\u_div/CryTmp[1][3] ), 
	.B(n16), 
	.A(\u_div/PartRem[2][3] ));
   ADDFX2M \u_div/u_fa_PartRem_0_2_3  (.S(\u_div/SumTmp[2][3] ), 
	.CO(\u_div/CryTmp[2][4] ), 
	.CI(\u_div/CryTmp[2][3] ), 
	.B(n16), 
	.A(\u_div/PartRem[3][3] ));
   ADDFX2M \u_div/u_fa_PartRem_0_1_2  (.S(\u_div/SumTmp[1][2] ), 
	.CO(\u_div/CryTmp[1][3] ), 
	.CI(\u_div/CryTmp[1][2] ), 
	.B(n17), 
	.A(\u_div/PartRem[2][2] ));
   ADDFX2M \u_div/u_fa_PartRem_0_3_3  (.S(\u_div/SumTmp[3][3] ), 
	.CO(\u_div/CryTmp[3][4] ), 
	.CI(\u_div/CryTmp[3][3] ), 
	.B(n16), 
	.A(\u_div/PartRem[4][3] ));
   ADDFX2M \u_div/u_fa_PartRem_0_2_2  (.S(\u_div/SumTmp[2][2] ), 
	.CO(\u_div/CryTmp[2][3] ), 
	.CI(\u_div/CryTmp[2][2] ), 
	.B(n17), 
	.A(\u_div/PartRem[3][2] ));
   ADDFX2M \u_div/u_fa_PartRem_0_3_2  (.S(\u_div/SumTmp[3][2] ), 
	.CO(\u_div/CryTmp[3][3] ), 
	.CI(\u_div/CryTmp[3][2] ), 
	.B(n17), 
	.A(\u_div/PartRem[4][2] ));
   ADDFX2M \u_div/u_fa_PartRem_0_4_2  (.S(\u_div/SumTmp[4][2] ), 
	.CO(\u_div/CryTmp[4][3] ), 
	.CI(\u_div/CryTmp[4][2] ), 
	.B(n17), 
	.A(\u_div/PartRem[5][2] ));
   ADDFX2M \u_div/u_fa_PartRem_0_1_6  (.S(\u_div/SumTmp[1][6] ), 
	.CO(\u_div/CryTmp[1][7] ), 
	.CI(\u_div/CryTmp[1][6] ), 
	.B(n13), 
	.A(\u_div/PartRem[2][6] ));
   INVX2M U1 (.Y(n19), 
	.A(b[0]));
   XNOR2X2M U2 (.Y(\u_div/SumTmp[7][0] ), 
	.B(a[7]), 
	.A(n19));
   XNOR2X2M U3 (.Y(\u_div/SumTmp[6][0] ), 
	.B(a[6]), 
	.A(n19));
   XNOR2X2M U4 (.Y(\u_div/SumTmp[5][0] ), 
	.B(a[5]), 
	.A(n19));
   XNOR2X2M U5 (.Y(\u_div/SumTmp[4][0] ), 
	.B(a[4]), 
	.A(n19));
   XNOR2X2M U6 (.Y(\u_div/SumTmp[3][0] ), 
	.B(a[3]), 
	.A(n19));
   XNOR2X2M U7 (.Y(\u_div/SumTmp[2][0] ), 
	.B(a[2]), 
	.A(n19));
   OR2X2M U8 (.Y(\u_div/CryTmp[7][1] ), 
	.B(a[7]), 
	.A(n19));
   NAND2X2M U9 (.Y(\u_div/CryTmp[5][1] ), 
	.B(n4), 
	.A(n3));
   INVX2M U10 (.Y(n4), 
	.A(a[5]));
   INVX2M U11 (.Y(n3), 
	.A(n19));
   NAND2X2M U12 (.Y(\u_div/CryTmp[4][1] ), 
	.B(n6), 
	.A(n3));
   INVX2M U13 (.Y(n6), 
	.A(a[4]));
   NAND2X2M U15 (.Y(\u_div/CryTmp[3][1] ), 
	.B(n8), 
	.A(n3));
   INVX2M U16 (.Y(n8), 
	.A(a[3]));
   NAND2X2M U18 (.Y(\u_div/CryTmp[2][1] ), 
	.B(n9), 
	.A(n3));
   INVX2M U19 (.Y(n9), 
	.A(a[2]));
   NAND2X2M U20 (.Y(\u_div/CryTmp[1][1] ), 
	.B(n10), 
	.A(n3));
   INVX2M U21 (.Y(n10), 
	.A(a[1]));
   NAND2X2M U22 (.Y(\u_div/CryTmp[0][1] ), 
	.B(n11), 
	.A(n3));
   INVX2M U23 (.Y(n11), 
	.A(a[0]));
   NAND2X2M U24 (.Y(\u_div/CryTmp[6][1] ), 
	.B(n2), 
	.A(n3));
   INVX2M U25 (.Y(n2), 
	.A(a[6]));
   XNOR2X2M U27 (.Y(\u_div/SumTmp[1][0] ), 
	.B(a[1]), 
	.A(n19));
   INVX2M U28 (.Y(n13), 
	.A(b[6]));
   INVX2M U29 (.Y(n18), 
	.A(b[1]));
   INVX2M U30 (.Y(n17), 
	.A(b[2]));
   INVX2M U31 (.Y(n16), 
	.A(b[3]));
   INVX2M U32 (.Y(n15), 
	.A(b[4]));
   INVX2M U33 (.Y(n14), 
	.A(b[5]));
   INVX2M U34 (.Y(n12), 
	.A(b[7]));
   CLKMX2X2M U35 (.Y(\u_div/PartRem[1][7] ), 
	.S0(quotient[1]), 
	.B(\u_div/SumTmp[1][6] ), 
	.A(\u_div/PartRem[2][6] ));
   CLKMX2X2M U36 (.Y(\u_div/PartRem[2][6] ), 
	.S0(quotient[2]), 
	.B(\u_div/SumTmp[2][5] ), 
	.A(\u_div/PartRem[3][5] ));
   CLKMX2X2M U37 (.Y(\u_div/PartRem[3][5] ), 
	.S0(quotient[3]), 
	.B(\u_div/SumTmp[3][4] ), 
	.A(\u_div/PartRem[4][4] ));
   CLKMX2X2M U38 (.Y(\u_div/PartRem[4][4] ), 
	.S0(quotient[4]), 
	.B(\u_div/SumTmp[4][3] ), 
	.A(\u_div/PartRem[5][3] ));
   CLKMX2X2M U39 (.Y(\u_div/PartRem[5][3] ), 
	.S0(quotient[5]), 
	.B(\u_div/SumTmp[5][2] ), 
	.A(\u_div/PartRem[6][2] ));
   CLKMX2X2M U40 (.Y(\u_div/PartRem[6][2] ), 
	.S0(quotient[6]), 
	.B(\u_div/SumTmp[6][1] ), 
	.A(\u_div/PartRem[7][1] ));
   CLKMX2X2M U41 (.Y(\u_div/PartRem[7][1] ), 
	.S0(quotient[7]), 
	.B(\u_div/SumTmp[7][0] ), 
	.A(a[7]));
   CLKMX2X2M U42 (.Y(\u_div/PartRem[1][6] ), 
	.S0(quotient[1]), 
	.B(\u_div/SumTmp[1][5] ), 
	.A(\u_div/PartRem[2][5] ));
   CLKMX2X2M U43 (.Y(\u_div/PartRem[2][5] ), 
	.S0(quotient[2]), 
	.B(\u_div/SumTmp[2][4] ), 
	.A(\u_div/PartRem[3][4] ));
   CLKMX2X2M U44 (.Y(\u_div/PartRem[3][4] ), 
	.S0(quotient[3]), 
	.B(\u_div/SumTmp[3][3] ), 
	.A(\u_div/PartRem[4][3] ));
   CLKMX2X2M U45 (.Y(\u_div/PartRem[4][3] ), 
	.S0(quotient[4]), 
	.B(\u_div/SumTmp[4][2] ), 
	.A(\u_div/PartRem[5][2] ));
   CLKMX2X2M U46 (.Y(\u_div/PartRem[5][2] ), 
	.S0(quotient[5]), 
	.B(\u_div/SumTmp[5][1] ), 
	.A(\u_div/PartRem[6][1] ));
   CLKMX2X2M U47 (.Y(\u_div/PartRem[6][1] ), 
	.S0(quotient[6]), 
	.B(\u_div/SumTmp[6][0] ), 
	.A(a[6]));
   CLKMX2X2M U48 (.Y(\u_div/PartRem[1][5] ), 
	.S0(quotient[1]), 
	.B(\u_div/SumTmp[1][4] ), 
	.A(\u_div/PartRem[2][4] ));
   CLKMX2X2M U49 (.Y(\u_div/PartRem[2][4] ), 
	.S0(quotient[2]), 
	.B(\u_div/SumTmp[2][3] ), 
	.A(\u_div/PartRem[3][3] ));
   CLKMX2X2M U50 (.Y(\u_div/PartRem[3][3] ), 
	.S0(quotient[3]), 
	.B(\u_div/SumTmp[3][2] ), 
	.A(\u_div/PartRem[4][2] ));
   CLKMX2X2M U51 (.Y(\u_div/PartRem[4][2] ), 
	.S0(quotient[4]), 
	.B(\u_div/SumTmp[4][1] ), 
	.A(\u_div/PartRem[5][1] ));
   CLKMX2X2M U52 (.Y(\u_div/PartRem[5][1] ), 
	.S0(quotient[5]), 
	.B(\u_div/SumTmp[5][0] ), 
	.A(a[5]));
   CLKMX2X2M U53 (.Y(\u_div/PartRem[1][4] ), 
	.S0(quotient[1]), 
	.B(\u_div/SumTmp[1][3] ), 
	.A(\u_div/PartRem[2][3] ));
   CLKMX2X2M U54 (.Y(\u_div/PartRem[2][3] ), 
	.S0(quotient[2]), 
	.B(\u_div/SumTmp[2][2] ), 
	.A(\u_div/PartRem[3][2] ));
   CLKMX2X2M U55 (.Y(\u_div/PartRem[3][2] ), 
	.S0(quotient[3]), 
	.B(\u_div/SumTmp[3][1] ), 
	.A(\u_div/PartRem[4][1] ));
   CLKMX2X2M U56 (.Y(\u_div/PartRem[4][1] ), 
	.S0(quotient[4]), 
	.B(\u_div/SumTmp[4][0] ), 
	.A(a[4]));
   CLKMX2X2M U57 (.Y(\u_div/PartRem[1][3] ), 
	.S0(quotient[1]), 
	.B(\u_div/SumTmp[1][2] ), 
	.A(\u_div/PartRem[2][2] ));
   CLKMX2X2M U58 (.Y(\u_div/PartRem[2][2] ), 
	.S0(quotient[2]), 
	.B(\u_div/SumTmp[2][1] ), 
	.A(\u_div/PartRem[3][1] ));
   CLKMX2X2M U59 (.Y(\u_div/PartRem[3][1] ), 
	.S0(quotient[3]), 
	.B(\u_div/SumTmp[3][0] ), 
	.A(a[3]));
   CLKMX2X2M U60 (.Y(\u_div/PartRem[1][2] ), 
	.S0(quotient[1]), 
	.B(\u_div/SumTmp[1][1] ), 
	.A(\u_div/PartRem[2][1] ));
   CLKMX2X2M U61 (.Y(\u_div/PartRem[2][1] ), 
	.S0(quotient[2]), 
	.B(\u_div/SumTmp[2][0] ), 
	.A(a[2]));
   CLKMX2X2M U62 (.Y(\u_div/PartRem[1][1] ), 
	.S0(quotient[1]), 
	.B(\u_div/SumTmp[1][0] ), 
	.A(a[1]));
   AND4X1M U63 (.Y(quotient[7]), 
	.D(n17), 
	.C(n18), 
	.B(n20), 
	.A(\u_div/CryTmp[7][1] ));
   AND3X1M U64 (.Y(quotient[6]), 
	.C(\u_div/CryTmp[6][2] ), 
	.B(n17), 
	.A(n20));
   AND2X1M U65 (.Y(quotient[5]), 
	.B(n20), 
	.A(\u_div/CryTmp[5][3] ));
   AND2X1M U66 (.Y(n20), 
	.B(n16), 
	.A(n21));
   AND2X1M U67 (.Y(quotient[4]), 
	.B(n21), 
	.A(\u_div/CryTmp[4][4] ));
   AND3X1M U68 (.Y(n21), 
	.C(n14), 
	.B(n15), 
	.A(n22));
   AND3X1M U69 (.Y(quotient[3]), 
	.C(\u_div/CryTmp[3][5] ), 
	.B(n14), 
	.A(n22));
   AND2X1M U70 (.Y(quotient[2]), 
	.B(n22), 
	.A(\u_div/CryTmp[2][6] ));
   NOR2X1M U71 (.Y(n22), 
	.B(b[7]), 
	.A(b[6]));
   AND2X1M U72 (.Y(quotient[1]), 
	.B(n12), 
	.A(\u_div/CryTmp[1][7] ));
endmodule

module ALU_DATA_WIDTH8_FUN_WIDTH4_OUT_WIDTH16_DW01_sub_0 (
	A, 
	B, 
	CI, 
	DIFF, 
	CO, 
	n232, 
	n197, 
	n225, 
	n199, 
	n201, 
	n224, 
	n223, 
	n202);
   input [8:0] A;
   input [8:0] B;
   input CI;
   output [8:0] DIFF;
   output CO;
   input n232;
   input n197;
   input n225;
   input n199;
   input n201;
   input n224;
   input n223;
   input n202;

   // Internal wires
   wire n1;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire [9:0] carry;

   ADDFX2M U2_7 (.S(DIFF[7]), 
	.CO(carry[8]), 
	.CI(carry[7]), 
	.B(n2), 
	.A(A[7]));
   ADDFX2M U2_1 (.S(DIFF[1]), 
	.CO(carry[2]), 
	.CI(carry[1]), 
	.B(n8), 
	.A(A[1]));
   ADDFX2M U2_5 (.S(DIFF[5]), 
	.CO(carry[6]), 
	.CI(carry[5]), 
	.B(n4), 
	.A(A[5]));
   ADDFX2M U2_4 (.S(DIFF[4]), 
	.CO(carry[5]), 
	.CI(carry[4]), 
	.B(n5), 
	.A(A[4]));
   ADDFX2M U2_3 (.S(DIFF[3]), 
	.CO(carry[4]), 
	.CI(carry[3]), 
	.B(n6), 
	.A(A[3]));
   ADDFX2M U2_2 (.S(DIFF[2]), 
	.CO(carry[3]), 
	.CI(carry[2]), 
	.B(n7), 
	.A(A[2]));
   ADDFX2M U2_6 (.S(DIFF[6]), 
	.CO(carry[7]), 
	.CI(carry[6]), 
	.B(n3), 
	.A(A[6]));
   INVX2M U1 (.Y(n3), 
	.A(B[6]));
   INVX2M U2 (.Y(n1), 
	.A(A[0]));
   XNOR2X2M U3 (.Y(DIFF[0]), 
	.B(A[0]), 
	.A(n9));
   INVX2M U4 (.Y(n9), 
	.A(B[0]));
   INVX2M U5 (.Y(n7), 
	.A(B[2]));
   INVX2M U6 (.Y(n6), 
	.A(B[3]));
   INVX2M U7 (.Y(n5), 
	.A(B[4]));
   INVX2M U8 (.Y(n4), 
	.A(B[5]));
   INVX2M U9 (.Y(n8), 
	.A(B[1]));
   NAND2X2M U10 (.Y(carry[1]), 
	.B(n1), 
	.A(B[0]));
   INVX2M U11 (.Y(n2), 
	.A(B[7]));
   CLKINVX1M U12 (.Y(DIFF[8]), 
	.A(carry[8]));
endmodule

module ALU_DATA_WIDTH8_FUN_WIDTH4_OUT_WIDTH16_DW01_add_0 (
	A, 
	B, 
	CI, 
	SUM, 
	CO);
   input [8:0] A;
   input [8:0] B;
   input CI;
   output [8:0] SUM;
   output CO;

   // Internal wires
   wire n1;
   wire [8:1] carry;

   ADDFX2M U1_7 (.S(SUM[7]), 
	.CO(SUM[8]), 
	.CI(carry[7]), 
	.B(B[7]), 
	.A(A[7]));
   ADDFX2M U1_1 (.S(SUM[1]), 
	.CO(carry[2]), 
	.CI(n1), 
	.B(B[1]), 
	.A(A[1]));
   ADDFX2M U1_5 (.S(SUM[5]), 
	.CO(carry[6]), 
	.CI(carry[5]), 
	.B(B[5]), 
	.A(A[5]));
   ADDFX2M U1_4 (.S(SUM[4]), 
	.CO(carry[5]), 
	.CI(carry[4]), 
	.B(B[4]), 
	.A(A[4]));
   ADDFX2M U1_3 (.S(SUM[3]), 
	.CO(carry[4]), 
	.CI(carry[3]), 
	.B(B[3]), 
	.A(A[3]));
   ADDFX2M U1_2 (.S(SUM[2]), 
	.CO(carry[3]), 
	.CI(carry[2]), 
	.B(B[2]), 
	.A(A[2]));
   ADDFX2M U1_6 (.S(SUM[6]), 
	.CO(carry[7]), 
	.CI(carry[6]), 
	.B(B[6]), 
	.A(A[6]));
   AND2X2M U1 (.Y(n1), 
	.B(A[0]), 
	.A(B[0]));
   CLKXOR2X2M U2 (.Y(SUM[0]), 
	.B(A[0]), 
	.A(B[0]));
endmodule

module ALU_DATA_WIDTH8_FUN_WIDTH4_OUT_WIDTH16_DW01_add_1 (
	A, 
	B, 
	CI, 
	SUM, 
	CO);
   input [13:0] A;
   input [13:0] B;
   input CI;
   output [13:0] SUM;
   output CO;

   // Internal wires
   wire n1;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;

   AOI21BX2M U2 (.Y(n1), 
	.B0N(n19), 
	.A1(A[12]), 
	.A0(n18));
   NAND2X2M U3 (.Y(n15), 
	.B(B[7]), 
	.A(A[7]));
   INVX2M U4 (.Y(n9), 
	.A(A[6]));
   XNOR2X2M U5 (.Y(SUM[13]), 
	.B(n1), 
	.A(B[13]));
   XNOR2X2M U6 (.Y(SUM[7]), 
	.B(n8), 
	.A(A[7]));
   INVX2M U7 (.Y(n8), 
	.A(B[7]));
   INVX2M U8 (.Y(SUM[6]), 
	.A(n9));
   BUFX2M U9 (.Y(SUM[0]), 
	.A(A[0]));
   BUFX2M U10 (.Y(SUM[1]), 
	.A(A[1]));
   BUFX2M U11 (.Y(SUM[2]), 
	.A(A[2]));
   BUFX2M U12 (.Y(SUM[3]), 
	.A(A[3]));
   BUFX2M U13 (.Y(SUM[4]), 
	.A(A[4]));
   BUFX2M U14 (.Y(SUM[5]), 
	.A(A[5]));
   XNOR2X1M U15 (.Y(SUM[9]), 
	.B(n11), 
	.A(n10));
   NOR2X1M U16 (.Y(n11), 
	.B(n13), 
	.A(n12));
   CLKXOR2X2M U17 (.Y(SUM[8]), 
	.B(n15), 
	.A(n14));
   NAND2BX1M U18 (.Y(n14), 
	.B(n17), 
	.AN(n16));
   OAI21X1M U19 (.Y(n19), 
	.B0(B[12]), 
	.A1(n18), 
	.A0(A[12]));
   XOR3XLM U20 (.Y(SUM[12]), 
	.C(n18), 
	.B(A[12]), 
	.A(B[12]));
   OAI21BX1M U21 (.Y(n18), 
	.B0N(n22), 
	.A1(n21), 
	.A0(n20));
   XNOR2X1M U22 (.Y(SUM[11]), 
	.B(n23), 
	.A(n21));
   NOR2X1M U23 (.Y(n23), 
	.B(n20), 
	.A(n22));
   NOR2X1M U24 (.Y(n20), 
	.B(A[11]), 
	.A(B[11]));
   AND2X1M U25 (.Y(n22), 
	.B(A[11]), 
	.A(B[11]));
   OA21X1M U26 (.Y(n21), 
	.B0(n26), 
	.A1(n25), 
	.A0(n24));
   CLKXOR2X2M U27 (.Y(SUM[10]), 
	.B(n25), 
	.A(n27));
   AOI2BB1X1M U28 (.Y(n25), 
	.B0(n12), 
	.A1N(n13), 
	.A0N(n10));
   AND2X1M U29 (.Y(n12), 
	.B(A[9]), 
	.A(B[9]));
   NOR2X1M U30 (.Y(n13), 
	.B(A[9]), 
	.A(B[9]));
   OA21X1M U31 (.Y(n10), 
	.B0(n17), 
	.A1(n16), 
	.A0(n15));
   CLKNAND2X2M U32 (.Y(n17), 
	.B(A[8]), 
	.A(B[8]));
   NOR2X1M U33 (.Y(n16), 
	.B(A[8]), 
	.A(B[8]));
   NAND2BX1M U34 (.Y(n27), 
	.B(n26), 
	.AN(n24));
   CLKNAND2X2M U35 (.Y(n26), 
	.B(A[10]), 
	.A(B[10]));
   NOR2X1M U36 (.Y(n24), 
	.B(A[10]), 
	.A(B[10]));
endmodule

module ALU_DATA_WIDTH8_FUN_WIDTH4_OUT_WIDTH16_DW02_mult_0 (
	A, 
	B, 
	TC, 
	PRODUCT, 
	n232, 
	n196, 
	n231, 
	n230, 
	n229, 
	n228, 
	n227, 
	n226, 
	n197, 
	n225, 
	n199, 
	n201, 
	n224, 
	n223, 
	n202);
   input [7:0] A;
   input [7:0] B;
   input TC;
   output [15:0] PRODUCT;
   input n232;
   input n196;
   input n231;
   input n230;
   input n229;
   input n228;
   input n227;
   input n226;
   input n197;
   input n225;
   input n199;
   input n201;
   input n224;
   input n223;
   input n202;

   // Internal wires
   wire \ab[7][7] ;
   wire \ab[7][6] ;
   wire \ab[7][5] ;
   wire \ab[7][4] ;
   wire \ab[7][3] ;
   wire \ab[7][2] ;
   wire \ab[7][1] ;
   wire \ab[7][0] ;
   wire \ab[6][7] ;
   wire \ab[6][6] ;
   wire \ab[6][5] ;
   wire \ab[6][4] ;
   wire \ab[6][3] ;
   wire \ab[6][2] ;
   wire \ab[6][1] ;
   wire \ab[6][0] ;
   wire \ab[5][7] ;
   wire \ab[5][6] ;
   wire \ab[5][5] ;
   wire \ab[5][4] ;
   wire \ab[5][3] ;
   wire \ab[5][2] ;
   wire \ab[5][1] ;
   wire \ab[5][0] ;
   wire \ab[4][7] ;
   wire \ab[4][6] ;
   wire \ab[4][5] ;
   wire \ab[4][4] ;
   wire \ab[4][3] ;
   wire \ab[4][2] ;
   wire \ab[4][1] ;
   wire \ab[4][0] ;
   wire \ab[3][7] ;
   wire \ab[3][6] ;
   wire \ab[3][5] ;
   wire \ab[3][4] ;
   wire \ab[3][3] ;
   wire \ab[3][2] ;
   wire \ab[3][1] ;
   wire \ab[3][0] ;
   wire \ab[2][7] ;
   wire \ab[2][6] ;
   wire \ab[2][5] ;
   wire \ab[2][4] ;
   wire \ab[2][3] ;
   wire \ab[2][2] ;
   wire \ab[2][1] ;
   wire \ab[2][0] ;
   wire \ab[1][7] ;
   wire \ab[1][6] ;
   wire \ab[1][5] ;
   wire \ab[1][4] ;
   wire \ab[1][3] ;
   wire \ab[1][2] ;
   wire \ab[1][1] ;
   wire \ab[1][0] ;
   wire \ab[0][7] ;
   wire \ab[0][6] ;
   wire \ab[0][5] ;
   wire \ab[0][4] ;
   wire \ab[0][3] ;
   wire \ab[0][2] ;
   wire \ab[0][1] ;
   wire \CARRYB[7][6] ;
   wire \CARRYB[7][5] ;
   wire \CARRYB[7][4] ;
   wire \CARRYB[7][3] ;
   wire \CARRYB[7][2] ;
   wire \CARRYB[7][1] ;
   wire \CARRYB[7][0] ;
   wire \CARRYB[6][6] ;
   wire \CARRYB[6][5] ;
   wire \CARRYB[6][4] ;
   wire \CARRYB[6][3] ;
   wire \CARRYB[6][2] ;
   wire \CARRYB[6][1] ;
   wire \CARRYB[6][0] ;
   wire \CARRYB[5][6] ;
   wire \CARRYB[5][5] ;
   wire \CARRYB[5][4] ;
   wire \CARRYB[5][3] ;
   wire \CARRYB[5][2] ;
   wire \CARRYB[5][1] ;
   wire \CARRYB[5][0] ;
   wire \CARRYB[4][6] ;
   wire \CARRYB[4][5] ;
   wire \CARRYB[4][4] ;
   wire \CARRYB[4][3] ;
   wire \CARRYB[4][2] ;
   wire \CARRYB[4][1] ;
   wire \CARRYB[4][0] ;
   wire \CARRYB[3][6] ;
   wire \CARRYB[3][5] ;
   wire \CARRYB[3][4] ;
   wire \CARRYB[3][3] ;
   wire \CARRYB[3][2] ;
   wire \CARRYB[3][1] ;
   wire \CARRYB[3][0] ;
   wire \CARRYB[2][6] ;
   wire \CARRYB[2][5] ;
   wire \CARRYB[2][4] ;
   wire \CARRYB[2][3] ;
   wire \CARRYB[2][2] ;
   wire \CARRYB[2][1] ;
   wire \CARRYB[2][0] ;
   wire \SUMB[7][6] ;
   wire \SUMB[7][5] ;
   wire \SUMB[7][4] ;
   wire \SUMB[7][3] ;
   wire \SUMB[7][2] ;
   wire \SUMB[7][1] ;
   wire \SUMB[7][0] ;
   wire \SUMB[6][6] ;
   wire \SUMB[6][5] ;
   wire \SUMB[6][4] ;
   wire \SUMB[6][3] ;
   wire \SUMB[6][2] ;
   wire \SUMB[6][1] ;
   wire \SUMB[5][6] ;
   wire \SUMB[5][5] ;
   wire \SUMB[5][4] ;
   wire \SUMB[5][3] ;
   wire \SUMB[5][2] ;
   wire \SUMB[5][1] ;
   wire \SUMB[4][6] ;
   wire \SUMB[4][5] ;
   wire \SUMB[4][4] ;
   wire \SUMB[4][3] ;
   wire \SUMB[4][2] ;
   wire \SUMB[4][1] ;
   wire \SUMB[3][6] ;
   wire \SUMB[3][5] ;
   wire \SUMB[3][4] ;
   wire \SUMB[3][3] ;
   wire \SUMB[3][2] ;
   wire \SUMB[3][1] ;
   wire \SUMB[2][6] ;
   wire \SUMB[2][5] ;
   wire \SUMB[2][4] ;
   wire \SUMB[2][3] ;
   wire \SUMB[2][2] ;
   wire \SUMB[2][1] ;
   wire \SUMB[1][6] ;
   wire \SUMB[1][5] ;
   wire \SUMB[1][4] ;
   wire \SUMB[1][3] ;
   wire \SUMB[1][2] ;
   wire \SUMB[1][1] ;
   wire \A1[12] ;
   wire \A1[11] ;
   wire \A1[10] ;
   wire \A1[9] ;
   wire \A1[8] ;
   wire \A1[7] ;
   wire \A1[6] ;
   wire \A1[4] ;
   wire \A1[3] ;
   wire \A1[2] ;
   wire \A1[1] ;
   wire \A1[0] ;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;

   ADDFX2M S3_6_6 (.S(\SUMB[6][6] ), 
	.CO(\CARRYB[6][6] ), 
	.CI(\ab[5][7] ), 
	.B(\CARRYB[5][6] ), 
	.A(\ab[6][6] ));
   ADDFX2M S3_5_6 (.S(\SUMB[5][6] ), 
	.CO(\CARRYB[5][6] ), 
	.CI(\ab[4][7] ), 
	.B(\CARRYB[4][6] ), 
	.A(\ab[5][6] ));
   ADDFX2M S5_6 (.S(\SUMB[7][6] ), 
	.CO(\CARRYB[7][6] ), 
	.CI(\ab[6][7] ), 
	.B(\CARRYB[6][6] ), 
	.A(\ab[7][6] ));
   ADDFX2M S4_5 (.S(\SUMB[7][5] ), 
	.CO(\CARRYB[7][5] ), 
	.CI(\SUMB[6][6] ), 
	.B(\CARRYB[6][5] ), 
	.A(\ab[7][5] ));
   ADDFX2M S1_6_0 (.S(\A1[4] ), 
	.CO(\CARRYB[6][0] ), 
	.CI(\SUMB[5][1] ), 
	.B(\CARRYB[5][0] ), 
	.A(\ab[6][0] ));
   ADDFX2M S2_6_2 (.S(\SUMB[6][2] ), 
	.CO(\CARRYB[6][2] ), 
	.CI(\SUMB[5][3] ), 
	.B(\CARRYB[5][2] ), 
	.A(\ab[6][2] ));
   ADDFX2M S2_6_1 (.S(\SUMB[6][1] ), 
	.CO(\CARRYB[6][1] ), 
	.CI(\SUMB[5][2] ), 
	.B(\CARRYB[5][1] ), 
	.A(\ab[6][1] ));
   ADDFX2M S1_5_0 (.S(\A1[3] ), 
	.CO(\CARRYB[5][0] ), 
	.CI(\SUMB[4][1] ), 
	.B(\CARRYB[4][0] ), 
	.A(\ab[5][0] ));
   ADDFX2M S2_5_3 (.S(\SUMB[5][3] ), 
	.CO(\CARRYB[5][3] ), 
	.CI(\SUMB[4][4] ), 
	.B(\CARRYB[4][3] ), 
	.A(\ab[5][3] ));
   ADDFX2M S2_5_2 (.S(\SUMB[5][2] ), 
	.CO(\CARRYB[5][2] ), 
	.CI(\SUMB[4][3] ), 
	.B(\CARRYB[4][2] ), 
	.A(\ab[5][2] ));
   ADDFX2M S2_5_1 (.S(\SUMB[5][1] ), 
	.CO(\CARRYB[5][1] ), 
	.CI(\SUMB[4][2] ), 
	.B(\CARRYB[4][1] ), 
	.A(\ab[5][1] ));
   ADDFX2M S1_4_0 (.S(\A1[2] ), 
	.CO(\CARRYB[4][0] ), 
	.CI(\SUMB[3][1] ), 
	.B(\CARRYB[3][0] ), 
	.A(\ab[4][0] ));
   ADDFX2M S2_4_4 (.S(\SUMB[4][4] ), 
	.CO(\CARRYB[4][4] ), 
	.CI(\SUMB[3][5] ), 
	.B(\CARRYB[3][4] ), 
	.A(\ab[4][4] ));
   ADDFX2M S2_4_3 (.S(\SUMB[4][3] ), 
	.CO(\CARRYB[4][3] ), 
	.CI(\SUMB[3][4] ), 
	.B(\CARRYB[3][3] ), 
	.A(\ab[4][3] ));
   ADDFX2M S2_4_2 (.S(\SUMB[4][2] ), 
	.CO(\CARRYB[4][2] ), 
	.CI(\SUMB[3][3] ), 
	.B(\CARRYB[3][2] ), 
	.A(\ab[4][2] ));
   ADDFX2M S2_4_1 (.S(\SUMB[4][1] ), 
	.CO(\CARRYB[4][1] ), 
	.CI(\SUMB[3][2] ), 
	.B(\CARRYB[3][1] ), 
	.A(\ab[4][1] ));
   ADDFX2M S1_3_0 (.S(\A1[1] ), 
	.CO(\CARRYB[3][0] ), 
	.CI(\SUMB[2][1] ), 
	.B(\CARRYB[2][0] ), 
	.A(\ab[3][0] ));
   ADDFX2M S2_3_4 (.S(\SUMB[3][4] ), 
	.CO(\CARRYB[3][4] ), 
	.CI(\SUMB[2][5] ), 
	.B(\CARRYB[2][4] ), 
	.A(\ab[3][4] ));
   ADDFX2M S2_3_2 (.S(\SUMB[3][2] ), 
	.CO(\CARRYB[3][2] ), 
	.CI(\SUMB[2][3] ), 
	.B(\CARRYB[2][2] ), 
	.A(\ab[3][2] ));
   ADDFX2M S2_3_1 (.S(\SUMB[3][1] ), 
	.CO(\CARRYB[3][1] ), 
	.CI(\SUMB[2][2] ), 
	.B(\CARRYB[2][1] ), 
	.A(\ab[3][1] ));
   ADDFX2M S2_3_5 (.S(\SUMB[3][5] ), 
	.CO(\CARRYB[3][5] ), 
	.CI(\SUMB[2][6] ), 
	.B(\CARRYB[2][5] ), 
	.A(\ab[3][5] ));
   ADDFX2M S1_2_0 (.S(\A1[0] ), 
	.CO(\CARRYB[2][0] ), 
	.CI(\SUMB[1][1] ), 
	.B(n8), 
	.A(\ab[2][0] ));
   ADDFX2M S2_2_2 (.S(\SUMB[2][2] ), 
	.CO(\CARRYB[2][2] ), 
	.CI(\SUMB[1][3] ), 
	.B(n7), 
	.A(\ab[2][2] ));
   ADDFX2M S2_2_1 (.S(\SUMB[2][1] ), 
	.CO(\CARRYB[2][1] ), 
	.CI(\SUMB[1][2] ), 
	.B(n6), 
	.A(\ab[2][1] ));
   ADDFX2M S2_6_4 (.S(\SUMB[6][4] ), 
	.CO(\CARRYB[6][4] ), 
	.CI(\SUMB[5][5] ), 
	.B(\CARRYB[5][4] ), 
	.A(\ab[6][4] ));
   ADDFX2M S2_6_3 (.S(\SUMB[6][3] ), 
	.CO(\CARRYB[6][3] ), 
	.CI(\SUMB[5][4] ), 
	.B(\CARRYB[5][3] ), 
	.A(\ab[6][3] ));
   ADDFX2M S2_6_5 (.S(\SUMB[6][5] ), 
	.CO(\CARRYB[6][5] ), 
	.CI(\SUMB[5][6] ), 
	.B(\CARRYB[5][5] ), 
	.A(\ab[6][5] ));
   ADDFX2M S2_5_4 (.S(\SUMB[5][4] ), 
	.CO(\CARRYB[5][4] ), 
	.CI(\SUMB[4][5] ), 
	.B(\CARRYB[4][4] ), 
	.A(\ab[5][4] ));
   ADDFX2M S2_5_5 (.S(\SUMB[5][5] ), 
	.CO(\CARRYB[5][5] ), 
	.CI(\SUMB[4][6] ), 
	.B(\CARRYB[4][5] ), 
	.A(\ab[5][5] ));
   ADDFX2M S3_4_6 (.S(\SUMB[4][6] ), 
	.CO(\CARRYB[4][6] ), 
	.CI(\ab[3][7] ), 
	.B(\CARRYB[3][6] ), 
	.A(\ab[4][6] ));
   ADDFX2M S2_4_5 (.S(\SUMB[4][5] ), 
	.CO(\CARRYB[4][5] ), 
	.CI(\SUMB[3][6] ), 
	.B(\CARRYB[3][5] ), 
	.A(\ab[4][5] ));
   ADDFX2M S2_3_3 (.S(\SUMB[3][3] ), 
	.CO(\CARRYB[3][3] ), 
	.CI(\SUMB[2][4] ), 
	.B(\CARRYB[2][3] ), 
	.A(\ab[3][3] ));
   ADDFX2M S3_3_6 (.S(\SUMB[3][6] ), 
	.CO(\CARRYB[3][6] ), 
	.CI(\ab[2][7] ), 
	.B(\CARRYB[2][6] ), 
	.A(\ab[3][6] ));
   ADDFX2M S2_2_4 (.S(\SUMB[2][4] ), 
	.CO(\CARRYB[2][4] ), 
	.CI(\SUMB[1][5] ), 
	.B(n5), 
	.A(\ab[2][4] ));
   ADDFX2M S2_2_3 (.S(\SUMB[2][3] ), 
	.CO(\CARRYB[2][3] ), 
	.CI(\SUMB[1][4] ), 
	.B(n4), 
	.A(\ab[2][3] ));
   ADDFX2M S3_2_6 (.S(\SUMB[2][6] ), 
	.CO(\CARRYB[2][6] ), 
	.CI(\ab[1][7] ), 
	.B(n9), 
	.A(\ab[2][6] ));
   ADDFX2M S2_2_5 (.S(\SUMB[2][5] ), 
	.CO(\CARRYB[2][5] ), 
	.CI(\SUMB[1][6] ), 
	.B(n3), 
	.A(\ab[2][5] ));
   ADDFX2M S4_0 (.S(\SUMB[7][0] ), 
	.CO(\CARRYB[7][0] ), 
	.CI(\SUMB[6][1] ), 
	.B(\CARRYB[6][0] ), 
	.A(\ab[7][0] ));
   ADDFX2M S4_1 (.S(\SUMB[7][1] ), 
	.CO(\CARRYB[7][1] ), 
	.CI(\SUMB[6][2] ), 
	.B(\CARRYB[6][1] ), 
	.A(\ab[7][1] ));
   ADDFX2M S4_4 (.S(\SUMB[7][4] ), 
	.CO(\CARRYB[7][4] ), 
	.CI(\SUMB[6][5] ), 
	.B(\CARRYB[6][4] ), 
	.A(\ab[7][4] ));
   ADDFX2M S4_3 (.S(\SUMB[7][3] ), 
	.CO(\CARRYB[7][3] ), 
	.CI(\SUMB[6][4] ), 
	.B(\CARRYB[6][3] ), 
	.A(\ab[7][3] ));
   ADDFX2M S4_2 (.S(\SUMB[7][2] ), 
	.CO(\CARRYB[7][2] ), 
	.CI(\SUMB[6][3] ), 
	.B(\CARRYB[6][2] ), 
	.A(\ab[7][2] ));
   AND2X2M U2 (.Y(n3), 
	.B(\ab[1][5] ), 
	.A(\ab[0][6] ));
   AND2X2M U3 (.Y(n4), 
	.B(\ab[1][3] ), 
	.A(\ab[0][4] ));
   AND2X2M U4 (.Y(n5), 
	.B(\ab[1][4] ), 
	.A(\ab[0][5] ));
   AND2X2M U5 (.Y(n6), 
	.B(\ab[1][1] ), 
	.A(\ab[0][2] ));
   AND2X2M U6 (.Y(n7), 
	.B(\ab[1][2] ), 
	.A(\ab[0][3] ));
   AND2X2M U7 (.Y(n8), 
	.B(\ab[1][0] ), 
	.A(\ab[0][1] ));
   AND2X2M U8 (.Y(n9), 
	.B(\ab[1][6] ), 
	.A(\ab[0][7] ));
   AND2X2M U9 (.Y(n10), 
	.B(\ab[7][7] ), 
	.A(\CARRYB[7][6] ));
   INVX2M U10 (.Y(n22), 
	.A(\ab[0][6] ));
   CLKXOR2X2M U11 (.Y(\A1[8] ), 
	.B(\SUMB[7][3] ), 
	.A(\CARRYB[7][2] ));
   INVX2M U12 (.Y(n23), 
	.A(\ab[0][7] ));
   INVX2M U13 (.Y(n20), 
	.A(\ab[0][4] ));
   INVX2M U14 (.Y(n21), 
	.A(\ab[0][5] ));
   INVX2M U15 (.Y(n19), 
	.A(\ab[0][3] ));
   INVX2M U16 (.Y(n18), 
	.A(\ab[0][2] ));
   AND2X2M U17 (.Y(n11), 
	.B(\SUMB[7][2] ), 
	.A(\CARRYB[7][1] ));
   AND2X2M U18 (.Y(n12), 
	.B(\SUMB[7][1] ), 
	.A(\CARRYB[7][0] ));
   CLKXOR2X2M U19 (.Y(\A1[9] ), 
	.B(\SUMB[7][4] ), 
	.A(\CARRYB[7][3] ));
   CLKXOR2X2M U20 (.Y(\A1[7] ), 
	.B(\SUMB[7][2] ), 
	.A(\CARRYB[7][1] ));
   AND2X2M U21 (.Y(n13), 
	.B(\SUMB[7][3] ), 
	.A(\CARRYB[7][2] ));
   CLKXOR2X2M U22 (.Y(\A1[10] ), 
	.B(\SUMB[7][5] ), 
	.A(\CARRYB[7][4] ));
   CLKXOR2X2M U23 (.Y(\A1[11] ), 
	.B(\SUMB[7][6] ), 
	.A(\CARRYB[7][5] ));
   AND2X2M U24 (.Y(n14), 
	.B(\SUMB[7][4] ), 
	.A(\CARRYB[7][3] ));
   AND2X2M U25 (.Y(n15), 
	.B(\SUMB[7][6] ), 
	.A(\CARRYB[7][5] ));
   AND2X2M U26 (.Y(n16), 
	.B(\SUMB[7][5] ), 
	.A(\CARRYB[7][4] ));
   CLKXOR2X2M U27 (.Y(\A1[12] ), 
	.B(\ab[7][7] ), 
	.A(\CARRYB[7][6] ));
   XNOR2X2M U28 (.Y(\A1[6] ), 
	.B(n17), 
	.A(\CARRYB[7][0] ));
   INVX2M U29 (.Y(n17), 
	.A(\SUMB[7][1] ));
   CLKXOR2X2M U30 (.Y(PRODUCT[1]), 
	.B(\ab[0][1] ), 
	.A(\ab[1][0] ));
   XNOR2X2M U31 (.Y(\SUMB[1][6] ), 
	.B(n23), 
	.A(\ab[1][6] ));
   XNOR2X2M U32 (.Y(\SUMB[1][4] ), 
	.B(n21), 
	.A(\ab[1][4] ));
   XNOR2X2M U33 (.Y(\SUMB[1][5] ), 
	.B(n22), 
	.A(\ab[1][5] ));
   XNOR2X2M U34 (.Y(\SUMB[1][2] ), 
	.B(n19), 
	.A(\ab[1][2] ));
   XNOR2X2M U35 (.Y(\SUMB[1][3] ), 
	.B(n20), 
	.A(\ab[1][3] ));
   XNOR2X2M U36 (.Y(\SUMB[1][1] ), 
	.B(n18), 
	.A(\ab[1][1] ));
   INVX2M U37 (.Y(n38), 
	.A(A[1]));
   INVX2M U38 (.Y(n39), 
	.A(A[0]));
   INVX2M U39 (.Y(n37), 
	.A(A[2]));
   INVX2M U40 (.Y(n25), 
	.A(B[6]));
   INVX2M U41 (.Y(n36), 
	.A(A[3]));
   INVX2M U42 (.Y(n35), 
	.A(A[4]));
   INVX2M U43 (.Y(n34), 
	.A(A[5]));
   INVX2M U44 (.Y(n33), 
	.A(A[6]));
   INVX2M U45 (.Y(n32), 
	.A(A[7]));
   INVX2M U46 (.Y(n29), 
	.A(B[2]));
   INVX2M U47 (.Y(n28), 
	.A(B[3]));
   INVX2M U48 (.Y(n26), 
	.A(B[5]));
   INVX2M U49 (.Y(n27), 
	.A(B[4]));
   INVX2M U50 (.Y(n24), 
	.A(B[7]));
   INVX2M U51 (.Y(n31), 
	.A(B[0]));
   INVX2M U52 (.Y(n30), 
	.A(B[1]));
   NOR2X1M U54 (.Y(\ab[7][7] ), 
	.B(n24), 
	.A(n32));
   NOR2X1M U55 (.Y(\ab[7][6] ), 
	.B(n25), 
	.A(n32));
   NOR2X1M U56 (.Y(\ab[7][5] ), 
	.B(n26), 
	.A(n32));
   NOR2X1M U57 (.Y(\ab[7][4] ), 
	.B(n27), 
	.A(n32));
   NOR2X1M U58 (.Y(\ab[7][3] ), 
	.B(n28), 
	.A(n32));
   NOR2X1M U59 (.Y(\ab[7][2] ), 
	.B(n29), 
	.A(n32));
   NOR2X1M U60 (.Y(\ab[7][1] ), 
	.B(n30), 
	.A(n32));
   NOR2X1M U61 (.Y(\ab[7][0] ), 
	.B(n31), 
	.A(n32));
   NOR2X1M U62 (.Y(\ab[6][7] ), 
	.B(n33), 
	.A(n24));
   NOR2X1M U63 (.Y(\ab[6][6] ), 
	.B(n33), 
	.A(n25));
   NOR2X1M U64 (.Y(\ab[6][5] ), 
	.B(n33), 
	.A(n26));
   NOR2X1M U65 (.Y(\ab[6][4] ), 
	.B(n33), 
	.A(n27));
   NOR2X1M U66 (.Y(\ab[6][3] ), 
	.B(n33), 
	.A(n28));
   NOR2X1M U67 (.Y(\ab[6][2] ), 
	.B(n33), 
	.A(n29));
   NOR2X1M U68 (.Y(\ab[6][1] ), 
	.B(n33), 
	.A(n30));
   NOR2X1M U69 (.Y(\ab[6][0] ), 
	.B(n33), 
	.A(n31));
   NOR2X1M U70 (.Y(\ab[5][7] ), 
	.B(n34), 
	.A(n24));
   NOR2X1M U71 (.Y(\ab[5][6] ), 
	.B(n34), 
	.A(n25));
   NOR2X1M U72 (.Y(\ab[5][5] ), 
	.B(n34), 
	.A(n26));
   NOR2X1M U73 (.Y(\ab[5][4] ), 
	.B(n34), 
	.A(n27));
   NOR2X1M U74 (.Y(\ab[5][3] ), 
	.B(n34), 
	.A(n28));
   NOR2X1M U75 (.Y(\ab[5][2] ), 
	.B(n34), 
	.A(n29));
   NOR2X1M U76 (.Y(\ab[5][1] ), 
	.B(n34), 
	.A(n30));
   NOR2X1M U77 (.Y(\ab[5][0] ), 
	.B(n34), 
	.A(n31));
   NOR2X1M U78 (.Y(\ab[4][7] ), 
	.B(n35), 
	.A(n24));
   NOR2X1M U79 (.Y(\ab[4][6] ), 
	.B(n35), 
	.A(n25));
   NOR2X1M U80 (.Y(\ab[4][5] ), 
	.B(n35), 
	.A(n26));
   NOR2X1M U81 (.Y(\ab[4][4] ), 
	.B(n35), 
	.A(n27));
   NOR2X1M U82 (.Y(\ab[4][3] ), 
	.B(n35), 
	.A(n28));
   NOR2X1M U83 (.Y(\ab[4][2] ), 
	.B(n35), 
	.A(n29));
   NOR2X1M U84 (.Y(\ab[4][1] ), 
	.B(n35), 
	.A(n30));
   NOR2X1M U85 (.Y(\ab[4][0] ), 
	.B(n35), 
	.A(n31));
   NOR2X1M U86 (.Y(\ab[3][7] ), 
	.B(n36), 
	.A(n24));
   NOR2X1M U87 (.Y(\ab[3][6] ), 
	.B(n36), 
	.A(n25));
   NOR2X1M U88 (.Y(\ab[3][5] ), 
	.B(n36), 
	.A(n26));
   NOR2X1M U89 (.Y(\ab[3][4] ), 
	.B(n36), 
	.A(n27));
   NOR2X1M U90 (.Y(\ab[3][3] ), 
	.B(n36), 
	.A(n28));
   NOR2X1M U91 (.Y(\ab[3][2] ), 
	.B(n36), 
	.A(n29));
   NOR2X1M U92 (.Y(\ab[3][1] ), 
	.B(n36), 
	.A(n30));
   NOR2X1M U93 (.Y(\ab[3][0] ), 
	.B(n36), 
	.A(n31));
   NOR2X1M U94 (.Y(\ab[2][7] ), 
	.B(n37), 
	.A(n24));
   NOR2X1M U95 (.Y(\ab[2][6] ), 
	.B(n37), 
	.A(n25));
   NOR2X1M U96 (.Y(\ab[2][5] ), 
	.B(n37), 
	.A(n26));
   NOR2X1M U97 (.Y(\ab[2][4] ), 
	.B(n37), 
	.A(n27));
   NOR2X1M U98 (.Y(\ab[2][3] ), 
	.B(n37), 
	.A(n28));
   NOR2X1M U99 (.Y(\ab[2][2] ), 
	.B(n37), 
	.A(n29));
   NOR2X1M U100 (.Y(\ab[2][1] ), 
	.B(n37), 
	.A(n30));
   NOR2X1M U101 (.Y(\ab[2][0] ), 
	.B(n37), 
	.A(n31));
   NOR2X1M U102 (.Y(\ab[1][7] ), 
	.B(n38), 
	.A(n24));
   NOR2X1M U103 (.Y(\ab[1][6] ), 
	.B(n38), 
	.A(n25));
   NOR2X1M U104 (.Y(\ab[1][5] ), 
	.B(n38), 
	.A(n26));
   NOR2X1M U105 (.Y(\ab[1][4] ), 
	.B(n38), 
	.A(n27));
   NOR2X1M U106 (.Y(\ab[1][3] ), 
	.B(n38), 
	.A(n28));
   NOR2X1M U107 (.Y(\ab[1][2] ), 
	.B(n38), 
	.A(n29));
   NOR2X1M U108 (.Y(\ab[1][1] ), 
	.B(n38), 
	.A(n30));
   NOR2X1M U109 (.Y(\ab[1][0] ), 
	.B(n38), 
	.A(n31));
   NOR2X1M U110 (.Y(\ab[0][7] ), 
	.B(n39), 
	.A(n24));
   NOR2X1M U111 (.Y(\ab[0][6] ), 
	.B(n39), 
	.A(n25));
   NOR2X1M U112 (.Y(\ab[0][5] ), 
	.B(n39), 
	.A(n26));
   NOR2X1M U113 (.Y(\ab[0][4] ), 
	.B(n39), 
	.A(n27));
   NOR2X1M U114 (.Y(\ab[0][3] ), 
	.B(n39), 
	.A(n28));
   NOR2X1M U115 (.Y(\ab[0][2] ), 
	.B(n39), 
	.A(n29));
   NOR2X1M U116 (.Y(\ab[0][1] ), 
	.B(n39), 
	.A(n30));
   NOR2X1M U117 (.Y(PRODUCT[0]), 
	.B(n39), 
	.A(n31));
   ALU_DATA_WIDTH8_FUN_WIDTH4_OUT_WIDTH16_DW01_add_1 FS_1 (.A({ 1'b0,
		\A1[12] ,
		\A1[11] ,
		\A1[10] ,
		\A1[9] ,
		\A1[8] ,
		\A1[7] ,
		\A1[6] ,
		\SUMB[7][0] ,
		\A1[4] ,
		\A1[3] ,
		\A1[2] ,
		\A1[1] ,
		\A1[0]  }), 
	.B({ n10,
		n15,
		n16,
		n14,
		n13,
		n11,
		n12,
		1'b0,
		1'b0,
		1'b0,
		1'b0,
		1'b0,
		1'b0,
		1'b0 }), 
	.CI(1'b0), 
	.SUM({ PRODUCT[15],
		PRODUCT[14],
		PRODUCT[13],
		PRODUCT[12],
		PRODUCT[11],
		PRODUCT[10],
		PRODUCT[9],
		PRODUCT[8],
		PRODUCT[7],
		PRODUCT[6],
		PRODUCT[5],
		PRODUCT[4],
		PRODUCT[3],
		PRODUCT[2] }));
endmodule

module ALU_DATA_WIDTH8_FUN_WIDTH4_OUT_WIDTH16_test_1 (
	clk, 
	rst_n, 
	op_a, 
	op_b, 
	alu_fun, 
	alu_en, 
	alu_out_valid, 
	alu_out, 
	test_si, 
	test_so, 
	test_se, 
	FE_OFN4_d0_scan_func_rst, 
	FE_PT1_wr_data_1_, 
	FE_PT1_wr_data_2_, 
	FE_PT1_alu_fun_2_, 
	FE_PT1_wr_data_3_, 
	FE_PT1_alu_fun_3_, 
	gated_clk__L3_N1);
   input clk;
   input rst_n;
   input [7:0] op_a;
   input [7:0] op_b;
   input [3:0] alu_fun;
   input alu_en;
   output alu_out_valid;
   output [15:0] alu_out;
   input test_si;
   output test_so;
   input test_se;
   input FE_OFN4_d0_scan_func_rst;
   input FE_PT1_wr_data_1_;
   input FE_PT1_wr_data_2_;
   input FE_PT1_alu_fun_2_;
   input FE_PT1_wr_data_3_;
   input FE_PT1_alu_fun_3_;
   input gated_clk__L3_N1;

   // Internal wires
   wire N63;
   wire N64;
   wire N65;
   wire N66;
   wire N67;
   wire N68;
   wire N69;
   wire N70;
   wire N71;
   wire N72;
   wire N73;
   wire N74;
   wire N75;
   wire N76;
   wire N77;
   wire N78;
   wire N79;
   wire N80;
   wire N81;
   wire N82;
   wire N83;
   wire N84;
   wire N85;
   wire N86;
   wire N87;
   wire N88;
   wire N89;
   wire N90;
   wire N91;
   wire N92;
   wire N93;
   wire N94;
   wire N95;
   wire N96;
   wire N97;
   wire N98;
   wire N99;
   wire N100;
   wire N101;
   wire N102;
   wire N103;
   wire N104;
   wire N153;
   wire N154;
   wire N155;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n16;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n24;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n34;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n44;
   wire n45;
   wire n46;
   wire n49;
   wire n50;
   wire n51;
   wire n52;
   wire n53;
   wire n55;
   wire n57;
   wire n58;
   wire n59;
   wire n60;
   wire n61;
   wire n63;
   wire n65;
   wire n66;
   wire n67;
   wire n68;
   wire n69;
   wire n71;
   wire n73;
   wire n74;
   wire n75;
   wire n76;
   wire n77;
   wire n79;
   wire n81;
   wire n82;
   wire n83;
   wire n84;
   wire n85;
   wire n87;
   wire n89;
   wire n90;
   wire n93;
   wire n94;
   wire n95;
   wire n96;
   wire n98;
   wire n100;
   wire n101;
   wire n102;
   wire n105;
   wire n106;
   wire n107;
   wire n108;
   wire n109;
   wire n110;
   wire n111;
   wire n113;
   wire n114;
   wire n115;
   wire n116;
   wire n117;
   wire n118;
   wire n120;
   wire n122;
   wire n124;
   wire n126;
   wire n128;
   wire n130;
   wire n132;
   wire n134;
   wire n136;
   wire n138;
   wire n170;
   wire n171;
   wire n172;
   wire n173;
   wire n174;
   wire n175;
   wire n176;
   wire n177;
   wire n178;
   wire n179;
   wire n180;
   wire n181;
   wire n182;
   wire n183;
   wire n184;
   wire n185;
   wire n186;
   wire n187;
   wire n188;
   wire n189;
   wire n190;
   wire n191;
   wire n192;
   wire n193;
   wire n194;
   wire n195;
   wire n196;
   wire n197;
   wire n198;
   wire n199;
   wire n200;
   wire n201;
   wire n202;
   wire n203;
   wire n204;
   wire n205;
   wire n206;
   wire n207;
   wire n208;
   wire n209;
   wire n210;
   wire n211;
   wire n212;
   wire n213;
   wire n214;
   wire n215;
   wire n216;
   wire n217;
   wire n218;
   wire n219;
   wire n220;
   wire n221;
   wire n222;
   wire n223;
   wire n224;
   wire n225;
   wire n226;
   wire n227;
   wire n228;
   wire n229;
   wire n230;
   wire n231;
   wire n232;
   wire [7:0] a;
   wire [7:0] b;

   assign test_so = b[7] ;

   SDFFRQX1M \b_reg[7]  (.SI(b[6]), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(b[7]), 
	.D(op_b[7]), 
	.CK(clk));
   SDFFRQX1M \b_reg[6]  (.SI(b[5]), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(b[6]), 
	.D(op_b[6]), 
	.CK(clk));
   SDFFRQX1M \b_reg[5]  (.SI(b[4]), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(b[5]), 
	.D(op_b[5]), 
	.CK(clk));
   SDFFRQX1M \b_reg[4]  (.SI(b[3]), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(b[4]), 
	.D(op_b[4]), 
	.CK(clk));
   SDFFRQX1M \b_reg[3]  (.SI(b[2]), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(b[3]), 
	.D(op_b[3]), 
	.CK(clk));
   SDFFRQX1M \b_reg[2]  (.SI(b[1]), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(b[2]), 
	.D(op_b[2]), 
	.CK(clk));
   SDFFRQX1M \b_reg[1]  (.SI(b[0]), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(b[1]), 
	.D(op_b[1]), 
	.CK(clk));
   SDFFRQX1M \b_reg[0]  (.SI(alu_out_valid), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(b[0]), 
	.D(op_b[0]), 
	.CK(clk));
   SDFFRQX1M \a_reg[7]  (.SI(a[6]), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(a[7]), 
	.D(op_a[7]), 
	.CK(clk));
   SDFFRQX1M \a_reg[6]  (.SI(a[5]), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(a[6]), 
	.D(op_a[6]), 
	.CK(clk));
   SDFFRQX1M \a_reg[5]  (.SI(a[4]), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(a[5]), 
	.D(op_a[5]), 
	.CK(clk));
   SDFFRQX1M \a_reg[4]  (.SI(a[3]), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(a[4]), 
	.D(op_a[4]), 
	.CK(clk));
   SDFFRQX1M \a_reg[3]  (.SI(a[2]), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(a[3]), 
	.D(op_a[3]), 
	.CK(clk));
   SDFFRQX1M \a_reg[2]  (.SI(a[1]), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(a[2]), 
	.D(op_a[2]), 
	.CK(clk));
   SDFFRQX1M \a_reg[1]  (.SI(a[0]), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(a[1]), 
	.D(op_a[1]), 
	.CK(clk));
   SDFFRQX1M \a_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(a[0]), 
	.D(op_a[0]), 
	.CK(clk));
   SDFFRQX1M alu_out_valid_reg (.SI(alu_out[15]), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(alu_out_valid), 
	.D(alu_en), 
	.CK(gated_clk__L3_N1));
   SDFFRQX1M \alu_out_reg[5]  (.SI(alu_out[4]), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(alu_out[5]), 
	.D(n132), 
	.CK(gated_clk__L3_N1));
   SDFFRQX1M \alu_out_reg[6]  (.SI(alu_out[5]), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(alu_out[6]), 
	.D(n134), 
	.CK(gated_clk__L3_N1));
   SDFFRQX1M \alu_out_reg[7]  (.SI(alu_out[6]), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(alu_out[7]), 
	.D(n136), 
	.CK(gated_clk__L3_N1));
   SDFFRQX1M \alu_out_reg[8]  (.SI(alu_out[7]), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(alu_out[8]), 
	.D(n138), 
	.CK(gated_clk__L3_N1));
   SDFFRQX1M \alu_out_reg[9]  (.SI(alu_out[8]), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(alu_out[9]), 
	.D(n209), 
	.CK(gated_clk__L3_N1));
   SDFFRQX1M \alu_out_reg[10]  (.SI(alu_out[9]), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(alu_out[10]), 
	.D(n208), 
	.CK(gated_clk__L3_N1));
   SDFFRQX1M \alu_out_reg[4]  (.SI(alu_out[3]), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(alu_out[4]), 
	.D(n130), 
	.CK(gated_clk__L3_N1));
   SDFFRQX1M \alu_out_reg[11]  (.SI(alu_out[10]), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(alu_out[11]), 
	.D(n207), 
	.CK(gated_clk__L3_N1));
   SDFFRQX1M \alu_out_reg[12]  (.SI(alu_out[11]), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(alu_out[12]), 
	.D(n206), 
	.CK(gated_clk__L3_N1));
   SDFFRQX1M \alu_out_reg[13]  (.SI(alu_out[12]), 
	.SE(test_se), 
	.RN(FE_OFN4_d0_scan_func_rst), 
	.Q(alu_out[13]), 
	.D(n205), 
	.CK(gated_clk__L3_N1));
   SDFFRQX1M \alu_out_reg[14]  (.SI(alu_out[13]), 
	.SE(test_se), 
	.RN(FE_OFN4_d0_scan_func_rst), 
	.Q(alu_out[14]), 
	.D(n204), 
	.CK(gated_clk__L3_N1));
   SDFFRQX1M \alu_out_reg[15]  (.SI(alu_out[14]), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(alu_out[15]), 
	.D(n203), 
	.CK(gated_clk__L3_N1));
   SDFFRQX1M \alu_out_reg[3]  (.SI(alu_out[2]), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(alu_out[3]), 
	.D(n128), 
	.CK(gated_clk__L3_N1));
   SDFFRQX1M \alu_out_reg[2]  (.SI(alu_out[1]), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(alu_out[2]), 
	.D(n126), 
	.CK(gated_clk__L3_N1));
   SDFFRQX1M \alu_out_reg[1]  (.SI(alu_out[0]), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(alu_out[1]), 
	.D(n124), 
	.CK(gated_clk__L3_N1));
   SDFFRQX1M \alu_out_reg[0]  (.SI(a[7]), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(alu_out[0]), 
	.D(n122), 
	.CK(gated_clk__L3_N1));
   INVX2M U39 (.Y(n222), 
	.A(alu_en));
   INVX2M U40 (.Y(n213), 
	.A(n27));
   INVX2M U41 (.Y(n211), 
	.A(n19));
   AOI222X1M U42 (.Y(n96), 
	.C1(n226), 
	.C0(n213), 
	.B1(n31), 
	.B0(N104), 
	.A1(n34), 
	.A0(N88));
   NOR3BX2M U43 (.Y(n31), 
	.C(n221), 
	.B(n220), 
	.AN(n98));
   NOR3X2M U44 (.Y(n44), 
	.C(n221), 
	.B(n222), 
	.A(n214));
   NAND4BX1M U45 (.Y(n27), 
	.D(n214), 
	.C(n221), 
	.B(alu_en), 
	.AN(n100));
   NOR2BX2M U46 (.Y(n40), 
	.B(n100), 
	.AN(n18));
   NOR2BX2M U47 (.Y(n30), 
	.B(n90), 
	.AN(n44));
   NAND3X2M U48 (.Y(n19), 
	.C(N155), 
	.B(n18), 
	.A(n219));
   INVX2M U49 (.Y(n210), 
	.A(n107));
   INVX2M U50 (.Y(n217), 
	.A(n89));
   INVX2M U51 (.Y(n216), 
	.A(n24));
   INVX2M U52 (.Y(n212), 
	.A(n29));
   INVX2M U53 (.Y(n219), 
	.A(n90));
   AOI222X1M U54 (.Y(n11), 
	.C1(n232), 
	.C0(n213), 
	.B1(n31), 
	.B0(N97), 
	.A1(n30), 
	.A0(a[1]));
   AOI222X1M U55 (.Y(n37), 
	.C1(n196), 
	.C0(n213), 
	.B1(n31), 
	.B0(N98), 
	.A1(n30), 
	.A0(a[2]));
   AOI222X1M U56 (.Y(n82), 
	.C1(n30), 
	.C0(a[7]), 
	.B1(n227), 
	.B0(n213), 
	.A1(n34), 
	.A0(N87));
   INVX2M U57 (.Y(n202), 
	.A(b[6]));
   AOI211X2M U58 (.Y(n107), 
	.C0(n213), 
	.B0(n216), 
	.A1(n21), 
	.A0(N80));
   NOR3X2M U59 (.Y(n89), 
	.C(n106), 
	.B(alu_fun[0]), 
	.A(n222));
   NAND2X2M U60 (.Y(n41), 
	.B(n19), 
	.A(n42));
   NAND4X2M U61 (.Y(n42), 
	.D(n218), 
	.C(FE_PT1_wr_data_1_), 
	.B(n44), 
	.A(N154));
   NOR3X2M U62 (.Y(n18), 
	.C(n214), 
	.B(alu_fun[0]), 
	.A(n222));
   NAND4X2M U63 (.Y(n29), 
	.D(n214), 
	.C(alu_en), 
	.B(n219), 
	.A(alu_fun[0]));
   OAI221X1M U64 (.Y(n22), 
	.C0(n27), 
	.B1(n232), 
	.B0(n217), 
	.A1(n24), 
	.A0(a[0]));
   OAI221X1M U65 (.Y(n46), 
	.C0(n27), 
	.B1(n196), 
	.B0(n217), 
	.A1(n24), 
	.A0(a[1]));
   OAI221X1M U66 (.Y(n85), 
	.C0(n27), 
	.B1(n227), 
	.B0(n217), 
	.A1(n24), 
	.A0(a[6]));
   OAI221X1M U67 (.Y(n20), 
	.C0(n29), 
	.B1(n217), 
	.B0(a[0]), 
	.A1(n28), 
	.A0(n232));
   OAI221X1M U68 (.Y(n45), 
	.C0(n29), 
	.B1(n217), 
	.B0(a[1]), 
	.A1(n196), 
	.A0(n28));
   OAI221X1M U69 (.Y(n87), 
	.C0(n29), 
	.B1(n217), 
	.B0(a[6]), 
	.A1(n227), 
	.A0(n28));
   NOR2BX2M U70 (.Y(n14), 
	.B(alu_fun[0]), 
	.AN(n110));
   NOR3X2M U71 (.Y(n98), 
	.C(n222), 
	.B(FE_PT1_alu_fun_3_), 
	.A(FE_PT1_alu_fun_2_));
   NAND3X2M U72 (.Y(n24), 
	.C(alu_fun[0]), 
	.B(n120), 
	.A(alu_en));
   OAI21X2M U73 (.Y(n120), 
	.B0(n106), 
	.A1(n100), 
	.A0(FE_PT1_alu_fun_3_));
   INVX2M U74 (.Y(n221), 
	.A(alu_fun[0]));
   INVX2M U75 (.Y(n220), 
	.A(FE_PT1_wr_data_1_));
   NAND3X2M U76 (.Y(n106), 
	.C(FE_PT1_alu_fun_3_), 
	.B(n218), 
	.A(n220));
   INVX2M U77 (.Y(n218), 
	.A(FE_PT1_alu_fun_2_));
   NOR2BX2M U78 (.Y(n110), 
	.B(FE_PT1_wr_data_1_), 
	.AN(n98));
   AND2X2M U79 (.Y(n21), 
	.B(alu_fun[0]), 
	.A(n110));
   NOR3BX4M U81 (.Y(n34), 
	.C(alu_fun[0]), 
	.B(n220), 
	.AN(n98));
   AND4X2M U82 (.Y(n16), 
	.D(FE_PT1_wr_data_1_), 
	.C(n18), 
	.B(n218), 
	.A(N153));
   INVX2M U83 (.Y(n196), 
	.A(a[1]));
   AOI221XLM U84 (.Y(n102), 
	.C0(n213), 
	.B1(n226), 
	.B0(n216), 
	.A1(n89), 
	.A0(a[7]));
   AOI221XLM U85 (.Y(n101), 
	.C0(n212), 
	.B1(n215), 
	.B0(a[7]), 
	.A1(n226), 
	.A0(n89));
   INVX2M U86 (.Y(n215), 
	.A(n28));
   NAND2X2M U87 (.Y(n100), 
	.B(FE_PT1_wr_data_2_), 
	.A(alu_fun[1]));
   NAND2X2M U88 (.Y(n90), 
	.B(n220), 
	.A(alu_fun[2]));
   INVX2M U89 (.Y(n214), 
	.A(FE_PT1_wr_data_3_));
   NAND2X2M U90 (.Y(n28), 
	.B(n105), 
	.A(alu_en));
   OAI22X1M U91 (.Y(n105), 
	.B1(n90), 
	.B0(alu_fun[3]), 
	.A1(n106), 
	.A0(n221));
   INVX2M U92 (.Y(n226), 
	.A(a[7]));
   INVX2M U93 (.Y(n227), 
	.A(a[6]));
   INVX2M U94 (.Y(n232), 
	.A(a[0]));
   INVX2M U95 (.Y(n231), 
	.A(a[2]));
   INVX2M U96 (.Y(n230), 
	.A(a[3]));
   INVX2M U97 (.Y(n229), 
	.A(a[4]));
   INVX2M U98 (.Y(n228), 
	.A(a[5]));
   NAND4X2M U99 (.Y(n122), 
	.D(n13), 
	.C(n12), 
	.B(n11), 
	.A(n10));
   AOI222X1M U100 (.Y(n12), 
	.C1(n197), 
	.C0(n22), 
	.B1(n21), 
	.B0(N72), 
	.A1(n20), 
	.A0(b[0]));
   AOI222X1M U101 (.Y(n10), 
	.C1(a[0]), 
	.C0(n212), 
	.B1(n34), 
	.B0(N81), 
	.A1(n222), 
	.A0(alu_out[0]));
   AOI211X2M U102 (.Y(n13), 
	.C0(n16), 
	.B0(n211), 
	.A1(n14), 
	.A0(N63));
   NAND4X2M U105 (.Y(n124), 
	.D(n39), 
	.C(n38), 
	.B(n37), 
	.A(n36));
   AOI222X1M U106 (.Y(n38), 
	.C1(n225), 
	.C0(n46), 
	.B1(n21), 
	.B0(N73), 
	.A1(n45), 
	.A0(b[1]));
   AOI222X1M U107 (.Y(n36), 
	.C1(a[1]), 
	.C0(n212), 
	.B1(n34), 
	.B0(N82), 
	.A1(n222), 
	.A0(alu_out[1]));
   AOI221XLM U108 (.Y(n39), 
	.C0(n41), 
	.B1(n14), 
	.B0(N64), 
	.A1(a[0]), 
	.A0(n40));
   AOI222X1M U110 (.Y(n51), 
	.C1(n55), 
	.C0(b[2]), 
	.B1(n199), 
	.B0(n53), 
	.A1(n31), 
	.A0(N99));
   OAI221X1M U111 (.Y(n53), 
	.C0(n27), 
	.B1(n231), 
	.B0(n217), 
	.A1(n24), 
	.A0(a[2]));
   OAI221X1M U112 (.Y(n55), 
	.C0(n29), 
	.B1(n217), 
	.B0(a[2]), 
	.A1(n231), 
	.A0(n28));
   NAND4X2M U113 (.Y(n126), 
	.D(n52), 
	.C(n51), 
	.B(n50), 
	.A(n49));
   AOI22X1M U114 (.Y(n49), 
	.B1(n222), 
	.B0(alu_out[2]), 
	.A1(n212), 
	.A0(a[2]));
   AOI222X1M U115 (.Y(n50), 
	.C1(n30), 
	.C0(a[3]), 
	.B1(n231), 
	.B0(n213), 
	.A1(n34), 
	.A0(N83));
   AOI222X1M U116 (.Y(n52), 
	.C1(n14), 
	.C0(N65), 
	.B1(a[1]), 
	.B0(n40), 
	.A1(n21), 
	.A0(N74));
   AOI222X1M U119 (.Y(n59), 
	.C1(n63), 
	.C0(b[3]), 
	.B1(n201), 
	.B0(n61), 
	.A1(n31), 
	.A0(N100));
   OAI221X1M U120 (.Y(n61), 
	.C0(n27), 
	.B1(n230), 
	.B0(n217), 
	.A1(n24), 
	.A0(a[3]));
   OAI221X1M U121 (.Y(n63), 
	.C0(n29), 
	.B1(n217), 
	.B0(a[3]), 
	.A1(n230), 
	.A0(n28));
   NAND4X2M U122 (.Y(n128), 
	.D(n60), 
	.C(n59), 
	.B(n58), 
	.A(n57));
   AOI22X1M U123 (.Y(n57), 
	.B1(n222), 
	.B0(alu_out[3]), 
	.A1(n212), 
	.A0(a[3]));
   AOI222X1M U124 (.Y(n60), 
	.C1(n14), 
	.C0(N66), 
	.B1(n40), 
	.B0(a[2]), 
	.A1(n21), 
	.A0(N75));
   AOI222X1M U125 (.Y(n58), 
	.C1(n30), 
	.C0(a[4]), 
	.B1(n230), 
	.B0(n213), 
	.A1(n34), 
	.A0(N84));
   AOI222X1M U127 (.Y(n67), 
	.C1(n71), 
	.C0(b[4]), 
	.B1(n224), 
	.B0(n69), 
	.A1(n31), 
	.A0(N101));
   INVX2M U128 (.Y(n224), 
	.A(b[4]));
   OAI221X1M U129 (.Y(n69), 
	.C0(n27), 
	.B1(n229), 
	.B0(n217), 
	.A1(n24), 
	.A0(a[4]));
   OAI221X1M U130 (.Y(n71), 
	.C0(n29), 
	.B1(n217), 
	.B0(a[4]), 
	.A1(n229), 
	.A0(n28));
   INVX2M U131 (.Y(n205), 
	.A(n116));
   AOI221XLM U132 (.Y(n116), 
	.C0(n210), 
	.B1(n222), 
	.B0(alu_out[13]), 
	.A1(n34), 
	.A0(N94));
   INVX2M U166 (.Y(n204), 
	.A(n117));
   AOI221XLM U167 (.Y(n117), 
	.C0(n210), 
	.B1(n222), 
	.B0(alu_out[14]), 
	.A1(n34), 
	.A0(N95));
   INVX2M U168 (.Y(n203), 
	.A(n118));
   AOI221XLM U169 (.Y(n118), 
	.C0(n210), 
	.B1(n222), 
	.B0(alu_out[15]), 
	.A1(n34), 
	.A0(N96));
   NAND4X2M U170 (.Y(n130), 
	.D(n68), 
	.C(n67), 
	.B(n66), 
	.A(n65));
   AOI22X1M U171 (.Y(n65), 
	.B1(n222), 
	.B0(alu_out[4]), 
	.A1(n212), 
	.A0(a[4]));
   AOI222X1M U172 (.Y(n68), 
	.C1(n14), 
	.C0(N67), 
	.B1(n40), 
	.B0(a[3]), 
	.A1(n21), 
	.A0(N76));
   AOI222X1M U173 (.Y(n66), 
	.C1(n30), 
	.C0(a[5]), 
	.B1(n229), 
	.B0(n213), 
	.A1(n34), 
	.A0(N85));
   INVX2M U176 (.Y(n208), 
	.A(n113));
   AOI221XLM U177 (.Y(n113), 
	.C0(n210), 
	.B1(n222), 
	.B0(alu_out[10]), 
	.A1(n34), 
	.A0(N91));
   INVX2M U178 (.Y(n207), 
	.A(n114));
   AOI221XLM U179 (.Y(n114), 
	.C0(n210), 
	.B1(n222), 
	.B0(alu_out[11]), 
	.A1(n34), 
	.A0(N92));
   INVX2M U180 (.Y(n206), 
	.A(n115));
   AOI221XLM U181 (.Y(n115), 
	.C0(n210), 
	.B1(n222), 
	.B0(alu_out[12]), 
	.A1(n34), 
	.A0(N93));
   AOI222X1M U182 (.Y(n75), 
	.C1(n79), 
	.C0(b[5]), 
	.B1(n223), 
	.B0(n77), 
	.A1(n31), 
	.A0(N102));
   INVX2M U183 (.Y(n223), 
	.A(b[5]));
   OAI221X1M U184 (.Y(n77), 
	.C0(n27), 
	.B1(n228), 
	.B0(n217), 
	.A1(n24), 
	.A0(a[5]));
   OAI221X1M U185 (.Y(n79), 
	.C0(n29), 
	.B1(n217), 
	.B0(a[5]), 
	.A1(n228), 
	.A0(n28));
   INVX2M U186 (.Y(n209), 
	.A(n111));
   AOI221XLM U187 (.Y(n111), 
	.C0(n210), 
	.B1(n222), 
	.B0(alu_out[9]), 
	.A1(n34), 
	.A0(N90));
   OAI2B11X2M U188 (.Y(n138), 
	.C0(n108), 
	.B0(n107), 
	.A1N(alu_out[8]), 
	.A0(alu_en));
   AOI221XLM U189 (.Y(n108), 
	.C0(n109), 
	.B1(n14), 
	.B0(N71), 
	.A1(n34), 
	.A0(N89));
   NOR4X1M U190 (.Y(n109), 
	.D(n226), 
	.C(n100), 
	.B(n222), 
	.A(alu_fun[0]));
   NAND4X2M U191 (.Y(n132), 
	.D(n76), 
	.C(n75), 
	.B(n74), 
	.A(n73));
   AOI22X1M U192 (.Y(n73), 
	.B1(n222), 
	.B0(alu_out[5]), 
	.A1(n212), 
	.A0(a[5]));
   AOI222X1M U193 (.Y(n76), 
	.C1(n14), 
	.C0(N68), 
	.B1(n40), 
	.B0(a[4]), 
	.A1(n21), 
	.A0(N77));
   AOI222X1M U194 (.Y(n74), 
	.C1(n30), 
	.C0(a[6]), 
	.B1(n228), 
	.B0(n213), 
	.A1(n34), 
	.A0(N86));
   NAND4X2M U195 (.Y(n134), 
	.D(n84), 
	.C(n83), 
	.B(n82), 
	.A(n81));
   AOI22X1M U196 (.Y(n81), 
	.B1(n222), 
	.B0(alu_out[6]), 
	.A1(n212), 
	.A0(a[6]));
   AOI222X1M U197 (.Y(n84), 
	.C1(n14), 
	.C0(N69), 
	.B1(n40), 
	.B0(a[5]), 
	.A1(n21), 
	.A0(N78));
   AOI222X1M U198 (.Y(n83), 
	.C1(n87), 
	.C0(b[6]), 
	.B1(n202), 
	.B0(n85), 
	.A1(n31), 
	.A0(N103));
   NAND4BX1M U199 (.Y(n136), 
	.D(n96), 
	.C(n95), 
	.B(n94), 
	.AN(n93));
   AOI22X1M U200 (.Y(n95), 
	.B1(n222), 
	.B0(alu_out[7]), 
	.A1(n212), 
	.A0(a[7]));
   OAI2B2X1M U201 (.Y(n93), 
	.B1(n102), 
	.B0(b[7]), 
	.A1N(b[7]), 
	.A0(n101));
   AOI222X1M U202 (.Y(n94), 
	.C1(n14), 
	.C0(N70), 
	.B1(n40), 
	.B0(a[6]), 
	.A1(n21), 
	.A0(N79));
   INVX2M U203 (.Y(n198), 
	.A(n170));
   INVX2M U204 (.Y(n200), 
	.A(n181));
   INVX2M U205 (.Y(n197), 
	.A(b[0]));
   INVX2M U206 (.Y(n199), 
	.A(b[2]));
   INVX2M U207 (.Y(n201), 
	.A(b[3]));
   INVX2M U208 (.Y(n225), 
	.A(b[1]));
   NOR2X1M U209 (.Y(n192), 
	.B(b[7]), 
	.A(n226));
   NAND2BX1M U210 (.Y(n185), 
	.B(a[4]), 
	.AN(b[4]));
   NAND2BX1M U211 (.Y(n174), 
	.B(b[4]), 
	.AN(a[4]));
   CLKNAND2X2M U212 (.Y(n187), 
	.B(n174), 
	.A(n185));
   NOR2X1M U213 (.Y(n182), 
	.B(a[3]), 
	.A(n201));
   NOR2X1M U214 (.Y(n173), 
	.B(a[2]), 
	.A(n199));
   NOR2X1M U215 (.Y(n170), 
	.B(a[0]), 
	.A(n197));
   CLKNAND2X2M U216 (.Y(n184), 
	.B(n199), 
	.A(a[2]));
   NAND2BX1M U217 (.Y(n179), 
	.B(n184), 
	.AN(n173));
   AOI21X1M U218 (.Y(n171), 
	.B0(b[1]), 
	.A1(n196), 
	.A0(n170));
   AOI211X1M U219 (.Y(n172), 
	.C0(n171), 
	.B0(n179), 
	.A1(n198), 
	.A0(a[1]));
   CLKNAND2X2M U220 (.Y(n183), 
	.B(n201), 
	.A(a[3]));
   OAI31X1M U221 (.Y(n175), 
	.B0(n183), 
	.A2(n172), 
	.A1(n173), 
	.A0(n182));
   NAND2BX1M U222 (.Y(n190), 
	.B(b[5]), 
	.AN(a[5]));
   OAI211X1M U223 (.Y(n176), 
	.C0(n190), 
	.B0(n174), 
	.A1(n175), 
	.A0(n187));
   NAND2BX1M U224 (.Y(n186), 
	.B(a[5]), 
	.AN(b[5]));
   XNOR2X1M U225 (.Y(n189), 
	.B(b[6]), 
	.A(a[6]));
   AOI32X1M U226 (.Y(n177), 
	.B1(n227), 
	.B0(b[6]), 
	.A2(n189), 
	.A1(n186), 
	.A0(n176));
   CLKNAND2X2M U227 (.Y(n193), 
	.B(n226), 
	.A(b[7]));
   OAI21X1M U228 (.Y(N155), 
	.B0(n193), 
	.A1(n177), 
	.A0(n192));
   CLKNAND2X2M U229 (.Y(n180), 
	.B(n197), 
	.A(a[0]));
   OA21X1M U230 (.Y(n178), 
	.B0(b[1]), 
	.A1(n196), 
	.A0(n180));
   AOI211X1M U231 (.Y(n181), 
	.C0(n178), 
	.B0(n179), 
	.A1(n196), 
	.A0(n180));
   AOI31X1M U232 (.Y(n188), 
	.B0(n182), 
	.A2(n183), 
	.A1(n184), 
	.A0(n200));
   OAI2B11X1M U233 (.Y(n191), 
	.C0(n185), 
	.B0(n186), 
	.A1N(n188), 
	.A0(n187));
   AOI32X1M U234 (.Y(n194), 
	.B1(n202), 
	.B0(a[6]), 
	.A2(n189), 
	.A1(n190), 
	.A0(n191));
   AOI2B1X1M U235 (.Y(n195), 
	.B0(n192), 
	.A1N(n194), 
	.A0(n193));
   CLKINVX1M U236 (.Y(N154), 
	.A(n195));
   NOR2X1M U237 (.Y(N153), 
	.B(N154), 
	.A(N155));
   ALU_DATA_WIDTH8_FUN_WIDTH4_OUT_WIDTH16_DW_div_uns_0 div_50 (.a({ a[7],
		a[6],
		a[5],
		a[4],
		a[3],
		a[2],
		a[1],
		a[0] }), 
	.b({ b[7],
		b[6],
		b[5],
		b[4],
		b[3],
		b[2],
		b[1],
		b[0] }), 
	.quotient({ N104,
		N103,
		N102,
		N101,
		N100,
		N99,
		N98,
		N97 }), 
	.n232(n232), 
	.n196(n196), 
	.n231(n231), 
	.n230(n230), 
	.n229(n229), 
	.n228(n228), 
	.n227(n227), 
	.n197(n197), 
	.n199(n199), 
	.n201(n201), 
	.n224(n224), 
	.n223(n223), 
	.n202(n202));
   ALU_DATA_WIDTH8_FUN_WIDTH4_OUT_WIDTH16_DW01_sub_0 sub_47 (.A({ 1'b0,
		a[7],
		a[6],
		a[5],
		a[4],
		a[3],
		a[2],
		a[1],
		a[0] }), 
	.B({ 1'b0,
		b[7],
		b[6],
		b[5],
		b[4],
		b[3],
		b[2],
		b[1],
		b[0] }), 
	.CI(1'b0), 
	.DIFF({ N80,
		N79,
		N78,
		N77,
		N76,
		N75,
		N74,
		N73,
		N72 }), 
	.n232(n232), 
	.n197(n197), 
	.n225(n225), 
	.n199(n199), 
	.n201(n201), 
	.n224(n224), 
	.n223(n223), 
	.n202(n202));
   ALU_DATA_WIDTH8_FUN_WIDTH4_OUT_WIDTH16_DW01_add_0 add_44 (.A({ 1'b0,
		a[7],
		a[6],
		a[5],
		a[4],
		a[3],
		a[2],
		a[1],
		a[0] }), 
	.B({ 1'b0,
		b[7],
		b[6],
		b[5],
		b[4],
		b[3],
		b[2],
		b[1],
		b[0] }), 
	.CI(1'b0), 
	.SUM({ N71,
		N70,
		N69,
		N68,
		N67,
		N66,
		N65,
		N64,
		N63 }));
   ALU_DATA_WIDTH8_FUN_WIDTH4_OUT_WIDTH16_DW02_mult_0 mult_49 (.A({ a[7],
		a[6],
		a[5],
		a[4],
		a[3],
		a[2],
		a[1],
		a[0] }), 
	.B({ b[7],
		b[6],
		b[5],
		b[4],
		b[3],
		b[2],
		b[1],
		b[0] }), 
	.TC(1'b0), 
	.PRODUCT({ N96,
		N95,
		N94,
		N93,
		N92,
		N91,
		N90,
		N89,
		N88,
		N87,
		N86,
		N85,
		N84,
		N83,
		N82,
		N81 }), 
	.n232(n232), 
	.n196(n196), 
	.n231(n231), 
	.n230(n230), 
	.n229(n229), 
	.n228(n228), 
	.n227(n227), 
	.n226(n226), 
	.n197(n197), 
	.n225(n225), 
	.n199(n199), 
	.n201(n201), 
	.n224(n224), 
	.n223(n223), 
	.n202(n202));
endmodule

module RegFile_ADDR_WIDTH4_DATA_WIDTH8_test_1 (
	clk, 
	rst_n, 
	addr, 
	wr_en, 
	rd_en, 
	wr_data, 
	rd_data, 
	rd_data_valid, 
	reg_0, 
	reg_1, 
	reg_2, 
	reg_3, 
	test_si2, 
	test_si1, 
	test_so1, 
	test_se, 
	FE_OFN1_d0_scan_func_rst, 
	FE_OFN2_d0_scan_func_rst, 
	FE_OFN3_d0_scan_func_rst, 
	scan_func_ref_clk__L7_N1, 
	scan_func_ref_clk__L7_N3, 
	scan_func_ref_clk__L7_N4, 
	scan_func_ref_clk__L7_N5, 
	scan_func_ref_clk__L7_N6, 
	scan_func_ref_clk__L7_N7, 
	scan_func_ref_clk__L7_N9);
   input clk;
   input rst_n;
   input [3:0] addr;
   input wr_en;
   input rd_en;
   input [7:0] wr_data;
   output [7:0] rd_data;
   output rd_data_valid;
   output [7:0] reg_0;
   output [7:0] reg_1;
   output [7:0] reg_2;
   output [7:0] reg_3;
   input test_si2;
   input test_si1;
   output test_so1;
   input test_se;
   input FE_OFN1_d0_scan_func_rst;
   input FE_OFN2_d0_scan_func_rst;
   input FE_OFN3_d0_scan_func_rst;
   input scan_func_ref_clk__L7_N1;
   input scan_func_ref_clk__L7_N3;
   input scan_func_ref_clk__L7_N4;
   input scan_func_ref_clk__L7_N5;
   input scan_func_ref_clk__L7_N6;
   input scan_func_ref_clk__L7_N7;
   input scan_func_ref_clk__L7_N9;

   // Internal wires
   wire N10;
   wire N11;
   wire N12;
   wire N13;
   wire \mem[4][7] ;
   wire \mem[4][6] ;
   wire \mem[4][5] ;
   wire \mem[4][4] ;
   wire \mem[4][3] ;
   wire \mem[4][2] ;
   wire \mem[4][1] ;
   wire \mem[4][0] ;
   wire \mem[5][7] ;
   wire \mem[5][6] ;
   wire \mem[5][5] ;
   wire \mem[5][4] ;
   wire \mem[5][3] ;
   wire \mem[5][2] ;
   wire \mem[5][1] ;
   wire \mem[5][0] ;
   wire \mem[6][7] ;
   wire \mem[6][6] ;
   wire \mem[6][5] ;
   wire \mem[6][4] ;
   wire \mem[6][3] ;
   wire \mem[6][2] ;
   wire \mem[6][1] ;
   wire \mem[6][0] ;
   wire \mem[7][7] ;
   wire \mem[7][6] ;
   wire \mem[7][5] ;
   wire \mem[7][4] ;
   wire \mem[7][3] ;
   wire \mem[7][2] ;
   wire \mem[7][1] ;
   wire \mem[7][0] ;
   wire \mem[8][7] ;
   wire \mem[8][6] ;
   wire \mem[8][5] ;
   wire \mem[8][4] ;
   wire \mem[8][3] ;
   wire \mem[8][2] ;
   wire \mem[8][1] ;
   wire \mem[8][0] ;
   wire \mem[9][7] ;
   wire \mem[9][6] ;
   wire \mem[9][5] ;
   wire \mem[9][4] ;
   wire \mem[9][3] ;
   wire \mem[9][2] ;
   wire \mem[9][1] ;
   wire \mem[9][0] ;
   wire \mem[10][7] ;
   wire \mem[10][6] ;
   wire \mem[10][5] ;
   wire \mem[10][4] ;
   wire \mem[10][3] ;
   wire \mem[10][2] ;
   wire \mem[10][1] ;
   wire \mem[10][0] ;
   wire \mem[11][7] ;
   wire \mem[11][6] ;
   wire \mem[11][5] ;
   wire \mem[11][4] ;
   wire \mem[11][3] ;
   wire \mem[11][2] ;
   wire \mem[11][1] ;
   wire \mem[11][0] ;
   wire \mem[12][7] ;
   wire \mem[12][6] ;
   wire \mem[12][5] ;
   wire \mem[12][4] ;
   wire \mem[12][3] ;
   wire \mem[12][2] ;
   wire \mem[12][1] ;
   wire \mem[12][0] ;
   wire \mem[13][7] ;
   wire \mem[13][6] ;
   wire \mem[13][5] ;
   wire \mem[13][4] ;
   wire \mem[13][3] ;
   wire \mem[13][2] ;
   wire \mem[13][1] ;
   wire \mem[13][0] ;
   wire \mem[14][7] ;
   wire \mem[14][6] ;
   wire \mem[14][5] ;
   wire \mem[14][4] ;
   wire \mem[14][3] ;
   wire \mem[14][2] ;
   wire \mem[14][1] ;
   wire \mem[14][0] ;
   wire \mem[15][7] ;
   wire \mem[15][6] ;
   wire \mem[15][5] ;
   wire \mem[15][4] ;
   wire \mem[15][3] ;
   wire \mem[15][2] ;
   wire \mem[15][1] ;
   wire \mem[15][0] ;
   wire N35;
   wire N36;
   wire N37;
   wire N38;
   wire N39;
   wire N40;
   wire N41;
   wire N42;
   wire n151;
   wire n152;
   wire n153;
   wire n154;
   wire n155;
   wire n156;
   wire n157;
   wire n158;
   wire n159;
   wire n160;
   wire n161;
   wire n162;
   wire n163;
   wire n164;
   wire n165;
   wire n166;
   wire n167;
   wire n168;
   wire n169;
   wire n170;
   wire n171;
   wire n172;
   wire n173;
   wire n174;
   wire n175;
   wire n176;
   wire n177;
   wire n178;
   wire n179;
   wire n180;
   wire n181;
   wire n182;
   wire n183;
   wire n184;
   wire n185;
   wire n186;
   wire n187;
   wire n188;
   wire n189;
   wire n190;
   wire n191;
   wire n192;
   wire n193;
   wire n194;
   wire n195;
   wire n196;
   wire n197;
   wire n198;
   wire n199;
   wire n200;
   wire n201;
   wire n202;
   wire n203;
   wire n204;
   wire n205;
   wire n206;
   wire n207;
   wire n208;
   wire n209;
   wire n210;
   wire n211;
   wire n212;
   wire n213;
   wire n214;
   wire n215;
   wire n216;
   wire n217;
   wire n218;
   wire n219;
   wire n220;
   wire n221;
   wire n222;
   wire n223;
   wire n224;
   wire n225;
   wire n226;
   wire n227;
   wire n228;
   wire n229;
   wire n230;
   wire n231;
   wire n232;
   wire n233;
   wire n234;
   wire n235;
   wire n236;
   wire n237;
   wire n238;
   wire n239;
   wire n240;
   wire n241;
   wire n242;
   wire n243;
   wire n244;
   wire n245;
   wire n246;
   wire n247;
   wire n248;
   wire n249;
   wire n250;
   wire n251;
   wire n252;
   wire n253;
   wire n254;
   wire n255;
   wire n256;
   wire n257;
   wire n258;
   wire n259;
   wire n260;
   wire n261;
   wire n262;
   wire n263;
   wire n264;
   wire n265;
   wire n266;
   wire n267;
   wire n268;
   wire n269;
   wire n270;
   wire n271;
   wire n272;
   wire n273;
   wire n274;
   wire n275;
   wire n276;
   wire n277;
   wire n278;
   wire n279;
   wire n280;
   wire n281;
   wire n282;
   wire n283;
   wire n284;
   wire n285;
   wire n286;
   wire n287;
   wire n288;
   wire n289;
   wire n290;
   wire n291;
   wire n292;
   wire n293;
   wire n294;
   wire n295;
   wire n296;
   wire n297;
   wire n298;
   wire n299;
   wire n300;
   wire n301;
   wire n302;
   wire n303;
   wire n304;
   wire n305;
   wire n306;
   wire n307;
   wire n308;
   wire n309;
   wire n310;
   wire n311;
   wire n312;
   wire n313;
   wire n314;
   wire n315;
   wire n437;
   wire n438;
   wire n439;
   wire n440;
   wire n441;
   wire n442;
   wire n443;
   wire n444;
   wire n445;
   wire n446;
   wire n447;
   wire n448;
   wire n449;
   wire n450;
   wire n451;
   wire n452;
   wire n453;
   wire n454;
   wire n455;
   wire n456;
   wire n457;
   wire n458;
   wire n459;
   wire n460;
   wire n461;
   wire n462;
   wire n463;
   wire n464;
   wire n465;
   wire n466;
   wire n467;
   wire n468;
   wire n469;
   wire n470;
   wire n471;
   wire n472;
   wire n473;
   wire n474;
   wire n475;
   wire n476;
   wire n477;
   wire n478;
   wire n479;
   wire n480;
   wire n481;
   wire n482;
   wire n483;
   wire n484;
   wire n485;
   wire n486;
   wire n487;
   wire n488;
   wire n489;
   wire n490;
   wire n491;
   wire n492;
   wire n493;
   wire n494;
   wire n495;
   wire n496;
   wire n497;
   wire n498;
   wire n499;
   wire n500;
   wire n501;
   wire n502;
   wire n503;
   wire n504;
   wire n505;
   wire n506;
   wire n507;
   wire n508;
   wire n509;
   wire n510;
   wire n511;
   wire n512;
   wire n513;
   wire n514;
   wire n515;
   wire n516;
   wire n517;
   wire n518;
   wire n519;
   wire n520;
   wire n521;
   wire n522;
   wire n523;
   wire n524;
   wire n525;
   wire n526;
   wire n527;
   wire n528;
   wire n529;
   wire n530;
   wire n531;
   wire n532;
   wire n533;
   wire n534;
   wire n535;
   wire n536;
   wire n537;
   wire n538;
   wire n539;
   wire n540;
   wire n541;
   wire n542;
   wire n543;
   wire n545;
   wire n546;
   wire n547;
   wire n548;
   wire n549;
   wire n550;
   wire n551;
   wire n552;
   wire n553;
   wire n554;
   wire n555;
   wire n556;
   wire n557;
   wire n558;
   wire n559;
   wire n563;
   wire n564;
   wire n565;
   wire n566;
   wire n567;
   wire n568;
   wire n1;

   assign N10 = addr[0] ;
   assign N11 = addr[1] ;
   assign N12 = addr[2] ;
   assign N13 = addr[3] ;

   SDFFSQX1M \mem_reg[2][0]  (.SN(FE_OFN1_d0_scan_func_rst), 
	.SI(reg_1[7]), 
	.SE(n567), 
	.Q(reg_2[0]), 
	.D(n292), 
	.CK(scan_func_ref_clk__L7_N1));
   SDFFSQX1M \mem_reg[3][5]  (.SN(rst_n), 
	.SI(reg_3[4]), 
	.SE(n566), 
	.Q(reg_3[5]), 
	.D(n289), 
	.CK(clk));
   SDFFSQX1M \mem_reg[2][7]  (.SN(FE_OFN1_d0_scan_func_rst), 
	.SI(reg_2[6]), 
	.SE(n565), 
	.Q(reg_2[7]), 
	.D(n299), 
	.CK(scan_func_ref_clk__L7_N1));
   SDFFRQX1M rd_data_valid_reg (.SI(rd_data[7]), 
	.SE(n563), 
	.RN(FE_OFN2_d0_scan_func_rst), 
	.Q(rd_data_valid), 
	.D(n179), 
	.CK(scan_func_ref_clk__L7_N7));
   SDFFRQX1M \mem_reg[14][7]  (.SI(\mem[14][6] ), 
	.SE(n567), 
	.RN(FE_OFN2_d0_scan_func_rst), 
	.Q(\mem[14][7] ), 
	.D(n203), 
	.CK(scan_func_ref_clk__L7_N9));
   SDFFRQX1M \mem_reg[14][6]  (.SI(\mem[14][5] ), 
	.SE(n566), 
	.RN(FE_OFN2_d0_scan_func_rst), 
	.Q(\mem[14][6] ), 
	.D(n202), 
	.CK(scan_func_ref_clk__L7_N5));
   SDFFRQX1M \mem_reg[14][5]  (.SI(\mem[14][4] ), 
	.SE(n565), 
	.RN(FE_OFN2_d0_scan_func_rst), 
	.Q(\mem[14][5] ), 
	.D(n201), 
	.CK(scan_func_ref_clk__L7_N5));
   SDFFRQX1M \mem_reg[14][4]  (.SI(\mem[14][3] ), 
	.SE(n564), 
	.RN(FE_OFN2_d0_scan_func_rst), 
	.Q(\mem[14][4] ), 
	.D(n200), 
	.CK(scan_func_ref_clk__L7_N5));
   SDFFRQX1M \mem_reg[14][3]  (.SI(\mem[14][2] ), 
	.SE(n567), 
	.RN(FE_OFN2_d0_scan_func_rst), 
	.Q(\mem[14][3] ), 
	.D(n199), 
	.CK(scan_func_ref_clk__L7_N4));
   SDFFRQX1M \mem_reg[14][2]  (.SI(\mem[14][1] ), 
	.SE(n566), 
	.RN(FE_OFN2_d0_scan_func_rst), 
	.Q(\mem[14][2] ), 
	.D(n198), 
	.CK(scan_func_ref_clk__L7_N9));
   SDFFRQX1M \mem_reg[14][1]  (.SI(\mem[14][0] ), 
	.SE(n565), 
	.RN(FE_OFN2_d0_scan_func_rst), 
	.Q(\mem[14][1] ), 
	.D(n197), 
	.CK(scan_func_ref_clk__L7_N9));
   SDFFRQX1M \mem_reg[14][0]  (.SI(\mem[13][7] ), 
	.SE(n563), 
	.RN(FE_OFN2_d0_scan_func_rst), 
	.Q(\mem[14][0] ), 
	.D(n196), 
	.CK(scan_func_ref_clk__L7_N9));
   SDFFRQX1M \mem_reg[11][7]  (.SI(\mem[11][6] ), 
	.SE(n567), 
	.RN(FE_OFN2_d0_scan_func_rst), 
	.Q(\mem[11][7] ), 
	.D(n227), 
	.CK(scan_func_ref_clk__L7_N4));
   SDFFRQX1M \mem_reg[11][6]  (.SI(\mem[11][5] ), 
	.SE(n566), 
	.RN(FE_OFN2_d0_scan_func_rst), 
	.Q(\mem[11][6] ), 
	.D(n226), 
	.CK(scan_func_ref_clk__L7_N4));
   SDFFRQX1M \mem_reg[11][5]  (.SI(\mem[11][4] ), 
	.SE(n565), 
	.RN(FE_OFN2_d0_scan_func_rst), 
	.Q(\mem[11][5] ), 
	.D(n225), 
	.CK(scan_func_ref_clk__L7_N4));
   SDFFRQX1M \mem_reg[11][4]  (.SI(\mem[11][3] ), 
	.SE(n564), 
	.RN(FE_OFN2_d0_scan_func_rst), 
	.Q(\mem[11][4] ), 
	.D(n224), 
	.CK(scan_func_ref_clk__L7_N4));
   SDFFRQX1M \mem_reg[11][3]  (.SI(\mem[11][2] ), 
	.SE(n567), 
	.RN(rst_n), 
	.Q(\mem[11][3] ), 
	.D(n223), 
	.CK(scan_func_ref_clk__L7_N4));
   SDFFRQX1M \mem_reg[11][2]  (.SI(\mem[11][1] ), 
	.SE(n566), 
	.RN(rst_n), 
	.Q(\mem[11][2] ), 
	.D(n222), 
	.CK(scan_func_ref_clk__L7_N4));
   SDFFRQX1M \mem_reg[11][1]  (.SI(\mem[11][0] ), 
	.SE(n565), 
	.RN(rst_n), 
	.Q(\mem[11][1] ), 
	.D(n221), 
	.CK(scan_func_ref_clk__L7_N4));
   SDFFRQX1M \mem_reg[11][0]  (.SI(\mem[10][7] ), 
	.SE(n563), 
	.RN(rst_n), 
	.Q(\mem[11][0] ), 
	.D(n220), 
	.CK(scan_func_ref_clk__L7_N4));
   SDFFRQX1M \mem_reg[9][7]  (.SI(\mem[9][6] ), 
	.SE(n567), 
	.RN(rst_n), 
	.Q(\mem[9][7] ), 
	.D(n243), 
	.CK(scan_func_ref_clk__L7_N3));
   SDFFRQX1M \mem_reg[9][6]  (.SI(\mem[9][5] ), 
	.SE(n566), 
	.RN(rst_n), 
	.Q(\mem[9][6] ), 
	.D(n242), 
	.CK(scan_func_ref_clk__L7_N3));
   SDFFRQX1M \mem_reg[9][5]  (.SI(\mem[9][4] ), 
	.SE(n565), 
	.RN(rst_n), 
	.Q(\mem[9][5] ), 
	.D(n241), 
	.CK(scan_func_ref_clk__L7_N3));
   SDFFRQX1M \mem_reg[9][4]  (.SI(\mem[9][3] ), 
	.SE(n564), 
	.RN(rst_n), 
	.Q(\mem[9][4] ), 
	.D(n240), 
	.CK(scan_func_ref_clk__L7_N3));
   SDFFRQX1M \mem_reg[9][3]  (.SI(\mem[9][2] ), 
	.SE(n567), 
	.RN(rst_n), 
	.Q(\mem[9][3] ), 
	.D(n239), 
	.CK(scan_func_ref_clk__L7_N3));
   SDFFRQX1M \mem_reg[9][2]  (.SI(\mem[9][1] ), 
	.SE(n566), 
	.RN(rst_n), 
	.Q(\mem[9][2] ), 
	.D(n238), 
	.CK(scan_func_ref_clk__L7_N3));
   SDFFRQX1M \mem_reg[9][1]  (.SI(\mem[9][0] ), 
	.SE(n565), 
	.RN(rst_n), 
	.Q(\mem[9][1] ), 
	.D(n237), 
	.CK(scan_func_ref_clk__L7_N3));
   SDFFRQX1M \mem_reg[9][0]  (.SI(\mem[8][7] ), 
	.SE(n563), 
	.RN(rst_n), 
	.Q(\mem[9][0] ), 
	.D(n236), 
	.CK(scan_func_ref_clk__L7_N3));
   SDFFRQX1M \mem_reg[10][7]  (.SI(\mem[10][6] ), 
	.SE(n567), 
	.RN(rst_n), 
	.Q(\mem[10][7] ), 
	.D(n235), 
	.CK(scan_func_ref_clk__L7_N4));
   SDFFRQX1M \mem_reg[10][6]  (.SI(\mem[10][5] ), 
	.SE(n566), 
	.RN(rst_n), 
	.Q(\mem[10][6] ), 
	.D(n234), 
	.CK(scan_func_ref_clk__L7_N4));
   SDFFRQX1M \mem_reg[10][5]  (.SI(\mem[10][4] ), 
	.SE(n565), 
	.RN(rst_n), 
	.Q(\mem[10][5] ), 
	.D(n233), 
	.CK(scan_func_ref_clk__L7_N4));
   SDFFRQX1M \mem_reg[10][4]  (.SI(\mem[10][3] ), 
	.SE(n564), 
	.RN(FE_OFN2_d0_scan_func_rst), 
	.Q(\mem[10][4] ), 
	.D(n232), 
	.CK(scan_func_ref_clk__L7_N4));
   SDFFRQX1M \mem_reg[10][3]  (.SI(\mem[10][2] ), 
	.SE(n567), 
	.RN(rst_n), 
	.Q(\mem[10][3] ), 
	.D(n231), 
	.CK(scan_func_ref_clk__L7_N3));
   SDFFRQX1M \mem_reg[10][2]  (.SI(\mem[10][1] ), 
	.SE(n566), 
	.RN(rst_n), 
	.Q(\mem[10][2] ), 
	.D(n230), 
	.CK(scan_func_ref_clk__L7_N4));
   SDFFRQX1M \mem_reg[10][1]  (.SI(\mem[10][0] ), 
	.SE(n565), 
	.RN(rst_n), 
	.Q(\mem[10][1] ), 
	.D(n229), 
	.CK(scan_func_ref_clk__L7_N4));
   SDFFRQX1M \mem_reg[10][0]  (.SI(\mem[9][7] ), 
	.SE(n563), 
	.RN(rst_n), 
	.Q(\mem[10][0] ), 
	.D(n228), 
	.CK(scan_func_ref_clk__L7_N3));
   SDFFRQX1M \mem_reg[8][7]  (.SI(\mem[8][6] ), 
	.SE(n567), 
	.RN(rst_n), 
	.Q(\mem[8][7] ), 
	.D(n251), 
	.CK(scan_func_ref_clk__L7_N3));
   SDFFRQX1M \mem_reg[8][6]  (.SI(\mem[8][5] ), 
	.SE(n566), 
	.RN(rst_n), 
	.Q(\mem[8][6] ), 
	.D(n250), 
	.CK(scan_func_ref_clk__L7_N3));
   SDFFRQX1M \mem_reg[8][5]  (.SI(\mem[8][4] ), 
	.SE(n565), 
	.RN(rst_n), 
	.Q(\mem[8][5] ), 
	.D(n249), 
	.CK(scan_func_ref_clk__L7_N3));
   SDFFRQX1M \mem_reg[8][4]  (.SI(\mem[8][3] ), 
	.SE(n564), 
	.RN(rst_n), 
	.Q(\mem[8][4] ), 
	.D(n248), 
	.CK(scan_func_ref_clk__L7_N3));
   SDFFRQX1M \mem_reg[8][3]  (.SI(\mem[8][2] ), 
	.SE(n567), 
	.RN(rst_n), 
	.Q(\mem[8][3] ), 
	.D(n247), 
	.CK(scan_func_ref_clk__L7_N3));
   SDFFRQX1M \mem_reg[8][2]  (.SI(\mem[8][1] ), 
	.SE(n566), 
	.RN(rst_n), 
	.Q(\mem[8][2] ), 
	.D(n246), 
	.CK(scan_func_ref_clk__L7_N3));
   SDFFRQX1M \mem_reg[8][1]  (.SI(\mem[8][0] ), 
	.SE(n565), 
	.RN(rst_n), 
	.Q(\mem[8][1] ), 
	.D(n245), 
	.CK(scan_func_ref_clk__L7_N3));
   SDFFRQX1M \mem_reg[8][0]  (.SI(\mem[7][7] ), 
	.SE(n563), 
	.RN(rst_n), 
	.Q(\mem[8][0] ), 
	.D(n244), 
	.CK(scan_func_ref_clk__L7_N3));
   SDFFRQX1M \mem_reg[13][7]  (.SI(\mem[13][6] ), 
	.SE(n567), 
	.RN(FE_OFN2_d0_scan_func_rst), 
	.Q(\mem[13][7] ), 
	.D(n211), 
	.CK(scan_func_ref_clk__L7_N9));
   SDFFRQX1M \mem_reg[13][6]  (.SI(\mem[13][5] ), 
	.SE(n566), 
	.RN(FE_OFN2_d0_scan_func_rst), 
	.Q(\mem[13][6] ), 
	.D(n210), 
	.CK(scan_func_ref_clk__L7_N9));
   SDFFRQX1M \mem_reg[13][5]  (.SI(\mem[13][4] ), 
	.SE(n565), 
	.RN(FE_OFN2_d0_scan_func_rst), 
	.Q(\mem[13][5] ), 
	.D(n209), 
	.CK(scan_func_ref_clk__L7_N9));
   SDFFRQX1M \mem_reg[13][4]  (.SI(\mem[13][3] ), 
	.SE(n564), 
	.RN(FE_OFN2_d0_scan_func_rst), 
	.Q(\mem[13][4] ), 
	.D(n208), 
	.CK(scan_func_ref_clk__L7_N9));
   SDFFRQX1M \mem_reg[13][3]  (.SI(\mem[13][2] ), 
	.SE(n567), 
	.RN(FE_OFN2_d0_scan_func_rst), 
	.Q(\mem[13][3] ), 
	.D(n207), 
	.CK(scan_func_ref_clk__L7_N5));
   SDFFRQX1M \mem_reg[13][2]  (.SI(\mem[13][1] ), 
	.SE(n566), 
	.RN(FE_OFN2_d0_scan_func_rst), 
	.Q(\mem[13][2] ), 
	.D(n206), 
	.CK(scan_func_ref_clk__L7_N5));
   SDFFRQX1M \mem_reg[13][1]  (.SI(\mem[13][0] ), 
	.SE(n565), 
	.RN(FE_OFN2_d0_scan_func_rst), 
	.Q(\mem[13][1] ), 
	.D(n205), 
	.CK(scan_func_ref_clk__L7_N5));
   SDFFRQX1M \mem_reg[13][0]  (.SI(\mem[12][7] ), 
	.SE(n563), 
	.RN(FE_OFN2_d0_scan_func_rst), 
	.Q(\mem[13][0] ), 
	.D(n204), 
	.CK(scan_func_ref_clk__L7_N9));
   SDFFRQX1M \mem_reg[12][7]  (.SI(\mem[12][6] ), 
	.SE(n567), 
	.RN(FE_OFN2_d0_scan_func_rst), 
	.Q(\mem[12][7] ), 
	.D(n219), 
	.CK(scan_func_ref_clk__L7_N9));
   SDFFRQX1M \mem_reg[12][6]  (.SI(\mem[12][5] ), 
	.SE(n566), 
	.RN(FE_OFN2_d0_scan_func_rst), 
	.Q(\mem[12][6] ), 
	.D(n218), 
	.CK(scan_func_ref_clk__L7_N9));
   SDFFRQX1M \mem_reg[12][5]  (.SI(\mem[12][4] ), 
	.SE(n565), 
	.RN(FE_OFN2_d0_scan_func_rst), 
	.Q(\mem[12][5] ), 
	.D(n217), 
	.CK(scan_func_ref_clk__L7_N9));
   SDFFRQX1M \mem_reg[12][4]  (.SI(\mem[12][3] ), 
	.SE(n564), 
	.RN(FE_OFN2_d0_scan_func_rst), 
	.Q(\mem[12][4] ), 
	.D(n216), 
	.CK(scan_func_ref_clk__L7_N5));
   SDFFRQX1M \mem_reg[12][3]  (.SI(\mem[12][2] ), 
	.SE(n567), 
	.RN(FE_OFN2_d0_scan_func_rst), 
	.Q(\mem[12][3] ), 
	.D(n215), 
	.CK(scan_func_ref_clk__L7_N5));
   SDFFRQX1M \mem_reg[12][2]  (.SI(\mem[12][1] ), 
	.SE(n566), 
	.RN(FE_OFN2_d0_scan_func_rst), 
	.Q(\mem[12][2] ), 
	.D(n214), 
	.CK(scan_func_ref_clk__L7_N4));
   SDFFRQX1M \mem_reg[12][1]  (.SI(\mem[12][0] ), 
	.SE(n565), 
	.RN(FE_OFN2_d0_scan_func_rst), 
	.Q(\mem[12][1] ), 
	.D(n213), 
	.CK(scan_func_ref_clk__L7_N5));
   SDFFRQX1M \mem_reg[12][0]  (.SI(\mem[11][7] ), 
	.SE(n563), 
	.RN(FE_OFN2_d0_scan_func_rst), 
	.Q(\mem[12][0] ), 
	.D(n212), 
	.CK(scan_func_ref_clk__L7_N5));
   SDFFRQX1M \mem_reg[15][7]  (.SI(\mem[15][6] ), 
	.SE(n567), 
	.RN(FE_OFN2_d0_scan_func_rst), 
	.Q(\mem[15][7] ), 
	.D(n195), 
	.CK(scan_func_ref_clk__L7_N7));
   SDFFRQX1M \mem_reg[15][6]  (.SI(\mem[15][5] ), 
	.SE(n566), 
	.RN(FE_OFN2_d0_scan_func_rst), 
	.Q(\mem[15][6] ), 
	.D(n194), 
	.CK(scan_func_ref_clk__L7_N7));
   SDFFRQX1M \mem_reg[15][5]  (.SI(\mem[15][4] ), 
	.SE(n565), 
	.RN(FE_OFN2_d0_scan_func_rst), 
	.Q(\mem[15][5] ), 
	.D(n193), 
	.CK(scan_func_ref_clk__L7_N5));
   SDFFRQX1M \mem_reg[15][4]  (.SI(\mem[15][3] ), 
	.SE(n564), 
	.RN(FE_OFN2_d0_scan_func_rst), 
	.Q(\mem[15][4] ), 
	.D(n192), 
	.CK(scan_func_ref_clk__L7_N5));
   SDFFRQX1M \mem_reg[15][3]  (.SI(\mem[15][2] ), 
	.SE(n567), 
	.RN(FE_OFN2_d0_scan_func_rst), 
	.Q(\mem[15][3] ), 
	.D(n191), 
	.CK(scan_func_ref_clk__L7_N5));
   SDFFRQX1M \mem_reg[15][2]  (.SI(\mem[15][1] ), 
	.SE(n566), 
	.RN(FE_OFN2_d0_scan_func_rst), 
	.Q(\mem[15][2] ), 
	.D(n190), 
	.CK(scan_func_ref_clk__L7_N5));
   SDFFRQX1M \mem_reg[15][1]  (.SI(\mem[15][0] ), 
	.SE(n565), 
	.RN(FE_OFN2_d0_scan_func_rst), 
	.Q(\mem[15][1] ), 
	.D(n189), 
	.CK(scan_func_ref_clk__L7_N9));
   SDFFRQX1M \mem_reg[15][0]  (.SI(\mem[14][7] ), 
	.SE(n563), 
	.RN(FE_OFN2_d0_scan_func_rst), 
	.Q(\mem[15][0] ), 
	.D(n188), 
	.CK(scan_func_ref_clk__L7_N5));
   SDFFRQX1M \mem_reg[6][7]  (.SI(\mem[6][6] ), 
	.SE(n567), 
	.RN(rst_n), 
	.Q(\mem[6][7] ), 
	.D(n267), 
	.CK(scan_func_ref_clk__L7_N6));
   SDFFRQX1M \mem_reg[6][6]  (.SI(\mem[6][5] ), 
	.SE(n566), 
	.RN(rst_n), 
	.Q(\mem[6][6] ), 
	.D(n266), 
	.CK(scan_func_ref_clk__L7_N3));
   SDFFRQX1M \mem_reg[6][5]  (.SI(test_si2), 
	.SE(n565), 
	.RN(rst_n), 
	.Q(\mem[6][5] ), 
	.D(n265), 
	.CK(scan_func_ref_clk__L7_N3));
   SDFFRQX1M \mem_reg[6][3]  (.SI(\mem[6][2] ), 
	.SE(n567), 
	.RN(rst_n), 
	.Q(\mem[6][3] ), 
	.D(n263), 
	.CK(clk));
   SDFFRQX1M \mem_reg[6][2]  (.SI(\mem[6][1] ), 
	.SE(n566), 
	.RN(rst_n), 
	.Q(\mem[6][2] ), 
	.D(n262), 
	.CK(clk));
   SDFFRQX1M \mem_reg[6][1]  (.SI(\mem[6][0] ), 
	.SE(n565), 
	.RN(rst_n), 
	.Q(\mem[6][1] ), 
	.D(n261), 
	.CK(scan_func_ref_clk__L7_N6));
   SDFFRQX1M \mem_reg[6][0]  (.SI(\mem[5][7] ), 
	.SE(n563), 
	.RN(rst_n), 
	.Q(\mem[6][0] ), 
	.D(n260), 
	.CK(scan_func_ref_clk__L7_N6));
   SDFFRQX1M \mem_reg[4][7]  (.SI(\mem[4][6] ), 
	.SE(n567), 
	.RN(rst_n), 
	.Q(\mem[4][7] ), 
	.D(n283), 
	.CK(scan_func_ref_clk__L7_N6));
   SDFFRQX1M \mem_reg[4][6]  (.SI(\mem[4][5] ), 
	.SE(n566), 
	.RN(rst_n), 
	.Q(\mem[4][6] ), 
	.D(n282), 
	.CK(scan_func_ref_clk__L7_N6));
   SDFFRQX1M \mem_reg[4][5]  (.SI(\mem[4][4] ), 
	.SE(n565), 
	.RN(rst_n), 
	.Q(\mem[4][5] ), 
	.D(n281), 
	.CK(scan_func_ref_clk__L7_N6));
   SDFFRQX1M \mem_reg[4][4]  (.SI(\mem[4][3] ), 
	.SE(n564), 
	.RN(rst_n), 
	.Q(\mem[4][4] ), 
	.D(n280), 
	.CK(scan_func_ref_clk__L7_N6));
   SDFFRQX1M \mem_reg[4][3]  (.SI(\mem[4][2] ), 
	.SE(n567), 
	.RN(rst_n), 
	.Q(\mem[4][3] ), 
	.D(n279), 
	.CK(scan_func_ref_clk__L7_N6));
   SDFFRQX1M \mem_reg[4][2]  (.SI(\mem[4][1] ), 
	.SE(n566), 
	.RN(rst_n), 
	.Q(\mem[4][2] ), 
	.D(n278), 
	.CK(clk));
   SDFFRQX1M \mem_reg[4][1]  (.SI(\mem[4][0] ), 
	.SE(n565), 
	.RN(rst_n), 
	.Q(\mem[4][1] ), 
	.D(n277), 
	.CK(clk));
   SDFFRQX1M \mem_reg[4][0]  (.SI(reg_3[7]), 
	.SE(n563), 
	.RN(rst_n), 
	.Q(\mem[4][0] ), 
	.D(n276), 
	.CK(clk));
   SDFFRQX1M \mem_reg[2][4]  (.SI(reg_2[3]), 
	.SE(n567), 
	.RN(FE_OFN1_d0_scan_func_rst), 
	.Q(reg_2[4]), 
	.D(n296), 
	.CK(scan_func_ref_clk__L7_N1));
   SDFFRQX1M \mem_reg[2][3]  (.SI(reg_2[2]), 
	.SE(n566), 
	.RN(FE_OFN1_d0_scan_func_rst), 
	.Q(reg_2[3]), 
	.D(n295), 
	.CK(scan_func_ref_clk__L7_N1));
   SDFFRQX1M \mem_reg[2][2]  (.SI(reg_2[1]), 
	.SE(n565), 
	.RN(FE_OFN1_d0_scan_func_rst), 
	.Q(reg_2[2]), 
	.D(n294), 
	.CK(scan_func_ref_clk__L7_N1));
   SDFFRQX1M \mem_reg[2][1]  (.SI(reg_2[0]), 
	.SE(n564), 
	.RN(FE_OFN1_d0_scan_func_rst), 
	.Q(reg_2[1]), 
	.D(n293), 
	.CK(scan_func_ref_clk__L7_N1));
   SDFFRQX1M \mem_reg[0][7]  (.SI(reg_0[6]), 
	.SE(n567), 
	.RN(FE_OFN2_d0_scan_func_rst), 
	.Q(reg_0[7]), 
	.D(n315), 
	.CK(scan_func_ref_clk__L7_N7));
   SDFFRQX1M \mem_reg[0][6]  (.SI(reg_0[5]), 
	.SE(n566), 
	.RN(FE_OFN2_d0_scan_func_rst), 
	.Q(reg_0[6]), 
	.D(n314), 
	.CK(scan_func_ref_clk__L7_N7));
   SDFFRQX1M \mem_reg[0][5]  (.SI(reg_0[4]), 
	.SE(n565), 
	.RN(FE_OFN2_d0_scan_func_rst), 
	.Q(reg_0[5]), 
	.D(n313), 
	.CK(scan_func_ref_clk__L7_N7));
   SDFFRQX1M \mem_reg[0][4]  (.SI(reg_0[3]), 
	.SE(n563), 
	.RN(FE_OFN2_d0_scan_func_rst), 
	.Q(reg_0[4]), 
	.D(n312), 
	.CK(scan_func_ref_clk__L7_N7));
   SDFFRQX1M \mem_reg[0][3]  (.SI(reg_0[2]), 
	.SE(n567), 
	.RN(FE_OFN2_d0_scan_func_rst), 
	.Q(reg_0[3]), 
	.D(n311), 
	.CK(scan_func_ref_clk__L7_N1));
   SDFFRQX1M \mem_reg[0][2]  (.SI(reg_0[1]), 
	.SE(n566), 
	.RN(FE_OFN2_d0_scan_func_rst), 
	.Q(reg_0[2]), 
	.D(n310), 
	.CK(scan_func_ref_clk__L7_N1));
   SDFFRQX1M \mem_reg[0][1]  (.SI(reg_0[0]), 
	.SE(n565), 
	.RN(FE_OFN2_d0_scan_func_rst), 
	.Q(reg_0[1]), 
	.D(n309), 
	.CK(scan_func_ref_clk__L7_N7));
   SDFFRQX1M \mem_reg[0][0]  (.SI(test_si1), 
	.SE(n564), 
	.RN(FE_OFN2_d0_scan_func_rst), 
	.Q(reg_0[0]), 
	.D(n308), 
	.CK(scan_func_ref_clk__L7_N9));
   SDFFRQX1M \mem_reg[7][7]  (.SI(\mem[7][6] ), 
	.SE(n567), 
	.RN(rst_n), 
	.Q(\mem[7][7] ), 
	.D(n259), 
	.CK(scan_func_ref_clk__L7_N4));
   SDFFRQX1M \mem_reg[7][6]  (.SI(\mem[7][5] ), 
	.SE(n566), 
	.RN(FE_OFN2_d0_scan_func_rst), 
	.Q(\mem[7][6] ), 
	.D(n258), 
	.CK(scan_func_ref_clk__L7_N4));
   SDFFRQX1M \mem_reg[7][5]  (.SI(\mem[7][4] ), 
	.SE(n565), 
	.RN(rst_n), 
	.Q(\mem[7][5] ), 
	.D(n257), 
	.CK(scan_func_ref_clk__L7_N5));
   SDFFRQX1M \mem_reg[7][4]  (.SI(\mem[7][3] ), 
	.SE(n563), 
	.RN(rst_n), 
	.Q(\mem[7][4] ), 
	.D(n256), 
	.CK(clk));
   SDFFRQX1M \mem_reg[7][3]  (.SI(\mem[7][2] ), 
	.SE(n567), 
	.RN(rst_n), 
	.Q(\mem[7][3] ), 
	.D(n255), 
	.CK(clk));
   SDFFRQX1M \mem_reg[7][2]  (.SI(\mem[7][1] ), 
	.SE(n566), 
	.RN(rst_n), 
	.Q(\mem[7][2] ), 
	.D(n254), 
	.CK(clk));
   SDFFRQX1M \mem_reg[7][1]  (.SI(\mem[7][0] ), 
	.SE(n565), 
	.RN(rst_n), 
	.Q(\mem[7][1] ), 
	.D(n253), 
	.CK(clk));
   SDFFRQX1M \mem_reg[7][0]  (.SI(\mem[6][7] ), 
	.SE(n564), 
	.RN(rst_n), 
	.Q(\mem[7][0] ), 
	.D(n252), 
	.CK(scan_func_ref_clk__L7_N6));
   SDFFRQX1M \mem_reg[5][7]  (.SI(\mem[5][6] ), 
	.SE(n567), 
	.RN(rst_n), 
	.Q(\mem[5][7] ), 
	.D(n275), 
	.CK(scan_func_ref_clk__L7_N6));
   SDFFRQX1M \mem_reg[5][6]  (.SI(\mem[5][5] ), 
	.SE(n566), 
	.RN(rst_n), 
	.Q(\mem[5][6] ), 
	.D(n274), 
	.CK(scan_func_ref_clk__L7_N6));
   SDFFRQX1M \mem_reg[5][5]  (.SI(\mem[5][4] ), 
	.SE(n565), 
	.RN(rst_n), 
	.Q(\mem[5][5] ), 
	.D(n273), 
	.CK(scan_func_ref_clk__L7_N6));
   SDFFRQX1M \mem_reg[5][4]  (.SI(\mem[5][3] ), 
	.SE(n563), 
	.RN(rst_n), 
	.Q(\mem[5][4] ), 
	.D(n272), 
	.CK(scan_func_ref_clk__L7_N6));
   SDFFRQX1M \mem_reg[5][3]  (.SI(\mem[5][2] ), 
	.SE(n567), 
	.RN(rst_n), 
	.Q(\mem[5][3] ), 
	.D(n271), 
	.CK(scan_func_ref_clk__L7_N6));
   SDFFRQX1M \mem_reg[5][2]  (.SI(\mem[5][1] ), 
	.SE(n566), 
	.RN(rst_n), 
	.Q(\mem[5][2] ), 
	.D(n270), 
	.CK(clk));
   SDFFRQX1M \mem_reg[5][1]  (.SI(\mem[5][0] ), 
	.SE(n565), 
	.RN(rst_n), 
	.Q(\mem[5][1] ), 
	.D(n269), 
	.CK(scan_func_ref_clk__L7_N6));
   SDFFRQX1M \mem_reg[5][0]  (.SI(\mem[4][7] ), 
	.SE(n564), 
	.RN(rst_n), 
	.Q(\mem[5][0] ), 
	.D(n268), 
	.CK(scan_func_ref_clk__L7_N6));
   SDFFRQX1M \mem_reg[3][7]  (.SI(reg_3[6]), 
	.SE(n567), 
	.RN(rst_n), 
	.Q(reg_3[7]), 
	.D(n291), 
	.CK(clk));
   SDFFRQX1M \mem_reg[3][6]  (.SI(reg_3[5]), 
	.SE(n566), 
	.RN(rst_n), 
	.Q(reg_3[6]), 
	.D(n290), 
	.CK(clk));
   SDFFRQX1M \mem_reg[3][4]  (.SI(reg_3[3]), 
	.SE(n565), 
	.RN(rst_n), 
	.Q(reg_3[4]), 
	.D(n288), 
	.CK(scan_func_ref_clk__L7_N6));
   SDFFRQX1M \mem_reg[3][3]  (.SI(reg_3[2]), 
	.SE(n563), 
	.RN(FE_OFN1_d0_scan_func_rst), 
	.Q(reg_3[3]), 
	.D(n287), 
	.CK(clk));
   SDFFRQX1M \mem_reg[3][2]  (.SI(reg_3[1]), 
	.SE(n567), 
	.RN(FE_OFN1_d0_scan_func_rst), 
	.Q(reg_3[2]), 
	.D(n286), 
	.CK(clk));
   SDFFRQX1M \mem_reg[3][1]  (.SI(reg_3[0]), 
	.SE(n566), 
	.RN(FE_OFN1_d0_scan_func_rst), 
	.Q(reg_3[1]), 
	.D(n285), 
	.CK(scan_func_ref_clk__L7_N1));
   SDFFRQX1M \mem_reg[3][0]  (.SI(reg_2[7]), 
	.SE(n565), 
	.RN(FE_OFN1_d0_scan_func_rst), 
	.Q(reg_3[0]), 
	.D(n284), 
	.CK(clk));
   SDFFRQX1M \mem_reg[1][7]  (.SI(reg_1[6]), 
	.SE(n564), 
	.RN(FE_OFN2_d0_scan_func_rst), 
	.Q(reg_1[7]), 
	.D(n307), 
	.CK(scan_func_ref_clk__L7_N1));
   SDFFRQX1M \mem_reg[1][6]  (.SI(reg_1[5]), 
	.SE(n567), 
	.RN(FE_OFN2_d0_scan_func_rst), 
	.Q(reg_1[6]), 
	.D(n306), 
	.CK(scan_func_ref_clk__L7_N7));
   SDFFRQX1M \mem_reg[1][5]  (.SI(reg_1[4]), 
	.SE(n566), 
	.RN(FE_OFN2_d0_scan_func_rst), 
	.Q(reg_1[5]), 
	.D(n305), 
	.CK(scan_func_ref_clk__L7_N7));
   SDFFRQX1M \mem_reg[1][4]  (.SI(reg_1[3]), 
	.SE(n565), 
	.RN(FE_OFN1_d0_scan_func_rst), 
	.Q(reg_1[4]), 
	.D(n304), 
	.CK(scan_func_ref_clk__L7_N1));
   SDFFRQX1M \mem_reg[1][3]  (.SI(reg_1[2]), 
	.SE(n563), 
	.RN(FE_OFN1_d0_scan_func_rst), 
	.Q(reg_1[3]), 
	.D(n303), 
	.CK(scan_func_ref_clk__L7_N1));
   SDFFRQX1M \mem_reg[1][2]  (.SI(reg_1[1]), 
	.SE(n567), 
	.RN(FE_OFN1_d0_scan_func_rst), 
	.Q(reg_1[2]), 
	.D(n302), 
	.CK(scan_func_ref_clk__L7_N1));
   SDFFRQX1M \mem_reg[1][1]  (.SI(reg_1[0]), 
	.SE(n566), 
	.RN(FE_OFN2_d0_scan_func_rst), 
	.Q(reg_1[1]), 
	.D(n301), 
	.CK(scan_func_ref_clk__L7_N7));
   SDFFRQX1M \mem_reg[1][0]  (.SI(reg_0[7]), 
	.SE(n565), 
	.RN(FE_OFN3_d0_scan_func_rst), 
	.Q(reg_1[0]), 
	.D(n300), 
	.CK(scan_func_ref_clk__L7_N7));
   SDFFRQX1M \mem_reg[2][6]  (.SI(reg_2[5]), 
	.SE(n564), 
	.RN(FE_OFN1_d0_scan_func_rst), 
	.Q(reg_2[6]), 
	.D(n298), 
	.CK(clk));
   SDFFRQX1M \mem_reg[2][5]  (.SI(reg_2[4]), 
	.SE(n567), 
	.RN(FE_OFN1_d0_scan_func_rst), 
	.Q(reg_2[5]), 
	.D(n297), 
	.CK(scan_func_ref_clk__L7_N1));
   SDFFRQX1M \rd_data_reg[7]  (.SI(rd_data[6]), 
	.SE(n566), 
	.RN(FE_OFN2_d0_scan_func_rst), 
	.Q(rd_data[7]), 
	.D(n187), 
	.CK(scan_func_ref_clk__L7_N7));
   SDFFRQX1M \rd_data_reg[6]  (.SI(rd_data[5]), 
	.SE(n565), 
	.RN(FE_OFN2_d0_scan_func_rst), 
	.Q(rd_data[6]), 
	.D(n186), 
	.CK(scan_func_ref_clk__L7_N7));
   SDFFRQX1M \rd_data_reg[2]  (.SI(rd_data[1]), 
	.SE(n563), 
	.RN(FE_OFN2_d0_scan_func_rst), 
	.Q(rd_data[2]), 
	.D(n182), 
	.CK(scan_func_ref_clk__L7_N7));
   SDFFRQX1M \rd_data_reg[1]  (.SI(rd_data[0]), 
	.SE(n567), 
	.RN(FE_OFN2_d0_scan_func_rst), 
	.Q(rd_data[1]), 
	.D(n181), 
	.CK(scan_func_ref_clk__L7_N9));
   SDFFRQX1M \rd_data_reg[0]  (.SI(\mem[15][7] ), 
	.SE(n566), 
	.RN(FE_OFN2_d0_scan_func_rst), 
	.Q(rd_data[0]), 
	.D(n180), 
	.CK(scan_func_ref_clk__L7_N7));
   SDFFRQX1M \rd_data_reg[5]  (.SI(rd_data[4]), 
	.SE(n565), 
	.RN(FE_OFN2_d0_scan_func_rst), 
	.Q(rd_data[5]), 
	.D(n185), 
	.CK(scan_func_ref_clk__L7_N7));
   SDFFRQX1M \rd_data_reg[4]  (.SI(rd_data[3]), 
	.SE(n564), 
	.RN(FE_OFN2_d0_scan_func_rst), 
	.Q(rd_data[4]), 
	.D(n184), 
	.CK(scan_func_ref_clk__L7_N7));
   SDFFRQX1M \rd_data_reg[3]  (.SI(rd_data[2]), 
	.SE(n563), 
	.RN(FE_OFN2_d0_scan_func_rst), 
	.Q(rd_data[3]), 
	.D(n183), 
	.CK(scan_func_ref_clk__L7_N7));
   NOR2X2M U274 (.Y(n159), 
	.B(N11), 
	.A(n559));
   NOR2X2M U275 (.Y(n162), 
	.B(N12), 
	.A(n542));
   NOR2X2M U276 (.Y(n165), 
	.B(N12), 
	.A(N11));
   INVX2M U277 (.Y(n554), 
	.A(wr_data[4]));
   INVX2M U278 (.Y(n558), 
	.A(wr_data[0]));
   INVX2M U279 (.Y(n556), 
	.A(wr_data[2]));
   INVX2M U280 (.Y(n557), 
	.A(wr_data[1]));
   INVX2M U281 (.Y(n552), 
	.A(wr_data[6]));
   INVX2M U282 (.Y(n553), 
	.A(wr_data[5]));
   INVX2M U283 (.Y(n555), 
	.A(wr_data[3]));
   INVX2M U284 (.Y(n551), 
	.A(wr_data[7]));
   INVX2M U285 (.Y(n545), 
	.A(n437));
   NAND2X2M U287 (.Y(n156), 
	.B(n154), 
	.A(n157));
   NAND2X2M U288 (.Y(n170), 
	.B(n154), 
	.A(n171));
   OR2X2M U289 (.Y(n437), 
	.B(n543), 
	.A(n542));
   INVX2M U290 (.Y(n547), 
	.A(n440));
   INVX2M U291 (.Y(n546), 
	.A(n438));
   INVX2M U292 (.Y(n548), 
	.A(n439));
   NOR2X2M U293 (.Y(n154), 
	.B(n542), 
	.A(n559));
   NAND2X2M U294 (.Y(n158), 
	.B(n155), 
	.A(n159));
   NAND2X2M U295 (.Y(n160), 
	.B(n157), 
	.A(n159));
   NAND2X2M U296 (.Y(n161), 
	.B(n155), 
	.A(n162));
   NAND2X2M U297 (.Y(n163), 
	.B(n157), 
	.A(n162));
   NAND2X2M U298 (.Y(n164), 
	.B(n155), 
	.A(n165));
   NAND2X2M U299 (.Y(n167), 
	.B(n157), 
	.A(n165));
   NAND2X2M U300 (.Y(n172), 
	.B(n159), 
	.A(n169));
   NAND2X2M U301 (.Y(n173), 
	.B(n159), 
	.A(n171));
   NAND2X2M U302 (.Y(n174), 
	.B(n162), 
	.A(n169));
   NAND2X2M U303 (.Y(n175), 
	.B(n162), 
	.A(n171));
   NAND2X2M U304 (.Y(n176), 
	.B(n165), 
	.A(n169));
   NAND2X2M U305 (.Y(n178), 
	.B(n165), 
	.A(n171));
   NAND2X2M U306 (.Y(n168), 
	.B(n154), 
	.A(n169));
   NAND2X2M U307 (.Y(n153), 
	.B(n155), 
	.A(n154));
   AND2X2M U308 (.Y(n157), 
	.B(n543), 
	.A(n166));
   AND2X2M U309 (.Y(n171), 
	.B(n543), 
	.A(n177));
   INVX2M U310 (.Y(n549), 
	.A(n152));
   OR2X2M U311 (.Y(n438), 
	.B(N10), 
	.A(n542));
   OR2X2M U312 (.Y(n439), 
	.B(N11), 
	.A(N10));
   OR2X2M U313 (.Y(n440), 
	.B(N11), 
	.A(n543));
   INVX2M U314 (.Y(n543), 
	.A(N10));
   INVX2M U315 (.Y(n542), 
	.A(N11));
   NAND2X2M U316 (.Y(n152), 
	.B(n550), 
	.A(rd_en));
   NOR2X2M U317 (.Y(n151), 
	.B(rd_en), 
	.A(n550));
   AND2X2M U318 (.Y(n155), 
	.B(N10), 
	.A(n166));
   AND2X2M U319 (.Y(n169), 
	.B(N10), 
	.A(n177));
   NOR2BX2M U320 (.Y(n177), 
	.B(N13), 
	.AN(n151));
   INVX2M U321 (.Y(n559), 
	.A(N12));
   AND2X2M U322 (.Y(n166), 
	.B(n151), 
	.A(N13));
   INVX2M U323 (.Y(n541), 
	.A(N13));
   AO22X1M U324 (.Y(n183), 
	.B1(n152), 
	.B0(rd_data[3]), 
	.A1(n549), 
	.A0(N39));
   AO22X1M U325 (.Y(n185), 
	.B1(n152), 
	.B0(rd_data[5]), 
	.A1(n549), 
	.A0(N37));
   AO22X1M U326 (.Y(n180), 
	.B1(n152), 
	.B0(rd_data[0]), 
	.A1(n549), 
	.A0(N42));
   AO22X1M U327 (.Y(n181), 
	.B1(n152), 
	.B0(rd_data[1]), 
	.A1(n549), 
	.A0(N41));
   AO22X1M U328 (.Y(n182), 
	.B1(n152), 
	.B0(rd_data[2]), 
	.A1(n549), 
	.A0(N40));
   AO22X1M U329 (.Y(n184), 
	.B1(n152), 
	.B0(rd_data[4]), 
	.A1(n549), 
	.A0(N38));
   AO22X1M U330 (.Y(n186), 
	.B1(n152), 
	.B0(rd_data[6]), 
	.A1(n549), 
	.A0(N36));
   AO22X1M U331 (.Y(n187), 
	.B1(n152), 
	.B0(rd_data[7]), 
	.A1(n549), 
	.A0(N35));
   OAI2BB2X1M U332 (.Y(n188), 
	.B1(n558), 
	.B0(n153), 
	.A1N(n153), 
	.A0N(\mem[15][0] ));
   OAI2BB2X1M U333 (.Y(n189), 
	.B1(n557), 
	.B0(n153), 
	.A1N(n153), 
	.A0N(\mem[15][1] ));
   OAI2BB2X1M U334 (.Y(n190), 
	.B1(n556), 
	.B0(n153), 
	.A1N(n153), 
	.A0N(\mem[15][2] ));
   OAI2BB2X1M U335 (.Y(n191), 
	.B1(n555), 
	.B0(n153), 
	.A1N(n153), 
	.A0N(\mem[15][3] ));
   OAI2BB2X1M U336 (.Y(n192), 
	.B1(n554), 
	.B0(n153), 
	.A1N(n153), 
	.A0N(\mem[15][4] ));
   OAI2BB2X1M U337 (.Y(n193), 
	.B1(n553), 
	.B0(n153), 
	.A1N(n153), 
	.A0N(\mem[15][5] ));
   OAI2BB2X1M U338 (.Y(n194), 
	.B1(n552), 
	.B0(n153), 
	.A1N(n153), 
	.A0N(\mem[15][6] ));
   OAI2BB2X1M U339 (.Y(n195), 
	.B1(n551), 
	.B0(n153), 
	.A1N(n153), 
	.A0N(\mem[15][7] ));
   OAI2BB2X1M U340 (.Y(n204), 
	.B1(n158), 
	.B0(n558), 
	.A1N(n158), 
	.A0N(\mem[13][0] ));
   OAI2BB2X1M U341 (.Y(n205), 
	.B1(n158), 
	.B0(n557), 
	.A1N(n158), 
	.A0N(\mem[13][1] ));
   OAI2BB2X1M U342 (.Y(n206), 
	.B1(n158), 
	.B0(n556), 
	.A1N(n158), 
	.A0N(\mem[13][2] ));
   OAI2BB2X1M U343 (.Y(n207), 
	.B1(n158), 
	.B0(n555), 
	.A1N(n158), 
	.A0N(\mem[13][3] ));
   OAI2BB2X1M U344 (.Y(n208), 
	.B1(n158), 
	.B0(n554), 
	.A1N(n158), 
	.A0N(\mem[13][4] ));
   OAI2BB2X1M U345 (.Y(n209), 
	.B1(n158), 
	.B0(n553), 
	.A1N(n158), 
	.A0N(\mem[13][5] ));
   OAI2BB2X1M U346 (.Y(n210), 
	.B1(n158), 
	.B0(n552), 
	.A1N(n158), 
	.A0N(\mem[13][6] ));
   OAI2BB2X1M U347 (.Y(n211), 
	.B1(n158), 
	.B0(n551), 
	.A1N(n158), 
	.A0N(\mem[13][7] ));
   OAI2BB2X1M U348 (.Y(n212), 
	.B1(n160), 
	.B0(n558), 
	.A1N(n160), 
	.A0N(\mem[12][0] ));
   OAI2BB2X1M U349 (.Y(n213), 
	.B1(n160), 
	.B0(n557), 
	.A1N(n160), 
	.A0N(\mem[12][1] ));
   OAI2BB2X1M U350 (.Y(n214), 
	.B1(n160), 
	.B0(n556), 
	.A1N(n160), 
	.A0N(\mem[12][2] ));
   OAI2BB2X1M U351 (.Y(n215), 
	.B1(n160), 
	.B0(n555), 
	.A1N(n160), 
	.A0N(\mem[12][3] ));
   OAI2BB2X1M U352 (.Y(n216), 
	.B1(n160), 
	.B0(n554), 
	.A1N(n160), 
	.A0N(\mem[12][4] ));
   OAI2BB2X1M U353 (.Y(n217), 
	.B1(n160), 
	.B0(n553), 
	.A1N(n160), 
	.A0N(\mem[12][5] ));
   OAI2BB2X1M U354 (.Y(n218), 
	.B1(n160), 
	.B0(n552), 
	.A1N(n160), 
	.A0N(\mem[12][6] ));
   OAI2BB2X1M U355 (.Y(n219), 
	.B1(n160), 
	.B0(n551), 
	.A1N(n160), 
	.A0N(\mem[12][7] ));
   OAI2BB2X1M U356 (.Y(n220), 
	.B1(n161), 
	.B0(n558), 
	.A1N(n161), 
	.A0N(\mem[11][0] ));
   OAI2BB2X1M U357 (.Y(n221), 
	.B1(n161), 
	.B0(n557), 
	.A1N(n161), 
	.A0N(\mem[11][1] ));
   OAI2BB2X1M U358 (.Y(n222), 
	.B1(n161), 
	.B0(n556), 
	.A1N(n161), 
	.A0N(\mem[11][2] ));
   OAI2BB2X1M U359 (.Y(n223), 
	.B1(n161), 
	.B0(n555), 
	.A1N(n161), 
	.A0N(\mem[11][3] ));
   OAI2BB2X1M U360 (.Y(n224), 
	.B1(n161), 
	.B0(n554), 
	.A1N(n161), 
	.A0N(\mem[11][4] ));
   OAI2BB2X1M U361 (.Y(n225), 
	.B1(n161), 
	.B0(n553), 
	.A1N(n161), 
	.A0N(\mem[11][5] ));
   OAI2BB2X1M U362 (.Y(n226), 
	.B1(n161), 
	.B0(n552), 
	.A1N(n161), 
	.A0N(\mem[11][6] ));
   OAI2BB2X1M U363 (.Y(n227), 
	.B1(n161), 
	.B0(n551), 
	.A1N(n161), 
	.A0N(\mem[11][7] ));
   OAI2BB2X1M U364 (.Y(n228), 
	.B1(n163), 
	.B0(n558), 
	.A1N(n163), 
	.A0N(\mem[10][0] ));
   OAI2BB2X1M U365 (.Y(n229), 
	.B1(n163), 
	.B0(n557), 
	.A1N(n163), 
	.A0N(\mem[10][1] ));
   OAI2BB2X1M U366 (.Y(n230), 
	.B1(n163), 
	.B0(n556), 
	.A1N(n163), 
	.A0N(\mem[10][2] ));
   OAI2BB2X1M U367 (.Y(n231), 
	.B1(n163), 
	.B0(n555), 
	.A1N(n163), 
	.A0N(\mem[10][3] ));
   OAI2BB2X1M U368 (.Y(n232), 
	.B1(n163), 
	.B0(n554), 
	.A1N(n163), 
	.A0N(\mem[10][4] ));
   OAI2BB2X1M U369 (.Y(n233), 
	.B1(n163), 
	.B0(n553), 
	.A1N(n163), 
	.A0N(\mem[10][5] ));
   OAI2BB2X1M U370 (.Y(n234), 
	.B1(n163), 
	.B0(n552), 
	.A1N(n163), 
	.A0N(\mem[10][6] ));
   OAI2BB2X1M U371 (.Y(n235), 
	.B1(n163), 
	.B0(n551), 
	.A1N(n163), 
	.A0N(\mem[10][7] ));
   OAI2BB2X1M U372 (.Y(n236), 
	.B1(n164), 
	.B0(n558), 
	.A1N(n164), 
	.A0N(\mem[9][0] ));
   OAI2BB2X1M U373 (.Y(n237), 
	.B1(n164), 
	.B0(n557), 
	.A1N(n164), 
	.A0N(\mem[9][1] ));
   OAI2BB2X1M U374 (.Y(n238), 
	.B1(n164), 
	.B0(n556), 
	.A1N(n164), 
	.A0N(\mem[9][2] ));
   OAI2BB2X1M U375 (.Y(n239), 
	.B1(n164), 
	.B0(n555), 
	.A1N(n164), 
	.A0N(\mem[9][3] ));
   OAI2BB2X1M U376 (.Y(n240), 
	.B1(n164), 
	.B0(n554), 
	.A1N(n164), 
	.A0N(\mem[9][4] ));
   OAI2BB2X1M U377 (.Y(n241), 
	.B1(n164), 
	.B0(n553), 
	.A1N(n164), 
	.A0N(\mem[9][5] ));
   OAI2BB2X1M U378 (.Y(n242), 
	.B1(n164), 
	.B0(n552), 
	.A1N(n164), 
	.A0N(\mem[9][6] ));
   OAI2BB2X1M U379 (.Y(n243), 
	.B1(n164), 
	.B0(n551), 
	.A1N(n164), 
	.A0N(\mem[9][7] ));
   OAI2BB2X1M U380 (.Y(n244), 
	.B1(n167), 
	.B0(n558), 
	.A1N(n167), 
	.A0N(\mem[8][0] ));
   OAI2BB2X1M U381 (.Y(n245), 
	.B1(n167), 
	.B0(n557), 
	.A1N(n167), 
	.A0N(\mem[8][1] ));
   OAI2BB2X1M U382 (.Y(n246), 
	.B1(n167), 
	.B0(n556), 
	.A1N(n167), 
	.A0N(\mem[8][2] ));
   OAI2BB2X1M U383 (.Y(n247), 
	.B1(n167), 
	.B0(n555), 
	.A1N(n167), 
	.A0N(\mem[8][3] ));
   OAI2BB2X1M U384 (.Y(n248), 
	.B1(n167), 
	.B0(n554), 
	.A1N(n167), 
	.A0N(\mem[8][4] ));
   OAI2BB2X1M U385 (.Y(n249), 
	.B1(n167), 
	.B0(n553), 
	.A1N(n167), 
	.A0N(\mem[8][5] ));
   OAI2BB2X1M U386 (.Y(n250), 
	.B1(n167), 
	.B0(n552), 
	.A1N(n167), 
	.A0N(\mem[8][6] ));
   OAI2BB2X1M U387 (.Y(n251), 
	.B1(n167), 
	.B0(n551), 
	.A1N(n167), 
	.A0N(\mem[8][7] ));
   OAI2BB2X1M U388 (.Y(n196), 
	.B1(n156), 
	.B0(n558), 
	.A1N(n156), 
	.A0N(\mem[14][0] ));
   OAI2BB2X1M U389 (.Y(n197), 
	.B1(n156), 
	.B0(n557), 
	.A1N(n156), 
	.A0N(\mem[14][1] ));
   OAI2BB2X1M U390 (.Y(n198), 
	.B1(n156), 
	.B0(n556), 
	.A1N(n156), 
	.A0N(\mem[14][2] ));
   OAI2BB2X1M U391 (.Y(n199), 
	.B1(n156), 
	.B0(n555), 
	.A1N(n156), 
	.A0N(\mem[14][3] ));
   OAI2BB2X1M U392 (.Y(n200), 
	.B1(n156), 
	.B0(n554), 
	.A1N(n156), 
	.A0N(\mem[14][4] ));
   OAI2BB2X1M U393 (.Y(n201), 
	.B1(n156), 
	.B0(n553), 
	.A1N(n156), 
	.A0N(\mem[14][5] ));
   OAI2BB2X1M U394 (.Y(n202), 
	.B1(n156), 
	.B0(n552), 
	.A1N(n156), 
	.A0N(\mem[14][6] ));
   OAI2BB2X1M U395 (.Y(n203), 
	.B1(n156), 
	.B0(n551), 
	.A1N(n156), 
	.A0N(\mem[14][7] ));
   OAI2BB2X1M U396 (.Y(n252), 
	.B1(n168), 
	.B0(n558), 
	.A1N(n168), 
	.A0N(\mem[7][0] ));
   OAI2BB2X1M U397 (.Y(n253), 
	.B1(n168), 
	.B0(n557), 
	.A1N(n168), 
	.A0N(\mem[7][1] ));
   OAI2BB2X1M U398 (.Y(n254), 
	.B1(n168), 
	.B0(n556), 
	.A1N(n168), 
	.A0N(\mem[7][2] ));
   OAI2BB2X1M U399 (.Y(n255), 
	.B1(n168), 
	.B0(n555), 
	.A1N(n168), 
	.A0N(\mem[7][3] ));
   OAI2BB2X1M U400 (.Y(n256), 
	.B1(n168), 
	.B0(n554), 
	.A1N(n168), 
	.A0N(\mem[7][4] ));
   OAI2BB2X1M U401 (.Y(n257), 
	.B1(n168), 
	.B0(n553), 
	.A1N(n168), 
	.A0N(\mem[7][5] ));
   OAI2BB2X1M U402 (.Y(n258), 
	.B1(n168), 
	.B0(n552), 
	.A1N(n168), 
	.A0N(\mem[7][6] ));
   OAI2BB2X1M U403 (.Y(n259), 
	.B1(n168), 
	.B0(n551), 
	.A1N(n168), 
	.A0N(\mem[7][7] ));
   OAI2BB2X1M U404 (.Y(n260), 
	.B1(n170), 
	.B0(n558), 
	.A1N(n170), 
	.A0N(\mem[6][0] ));
   OAI2BB2X1M U405 (.Y(n261), 
	.B1(n170), 
	.B0(n557), 
	.A1N(n170), 
	.A0N(\mem[6][1] ));
   OAI2BB2X1M U406 (.Y(n262), 
	.B1(n170), 
	.B0(n556), 
	.A1N(n170), 
	.A0N(\mem[6][2] ));
   OAI2BB2X1M U407 (.Y(n263), 
	.B1(n170), 
	.B0(n555), 
	.A1N(n170), 
	.A0N(\mem[6][3] ));
   OAI2BB2X1M U408 (.Y(n264), 
	.B1(n170), 
	.B0(n554), 
	.A1N(n170), 
	.A0N(test_so1));
   OAI2BB2X1M U409 (.Y(n265), 
	.B1(n170), 
	.B0(n553), 
	.A1N(n170), 
	.A0N(\mem[6][5] ));
   OAI2BB2X1M U410 (.Y(n266), 
	.B1(n170), 
	.B0(n552), 
	.A1N(n170), 
	.A0N(\mem[6][6] ));
   OAI2BB2X1M U411 (.Y(n267), 
	.B1(n170), 
	.B0(n551), 
	.A1N(n170), 
	.A0N(\mem[6][7] ));
   OAI2BB2X1M U412 (.Y(n268), 
	.B1(n172), 
	.B0(n558), 
	.A1N(n172), 
	.A0N(\mem[5][0] ));
   OAI2BB2X1M U413 (.Y(n269), 
	.B1(n172), 
	.B0(n557), 
	.A1N(n172), 
	.A0N(\mem[5][1] ));
   OAI2BB2X1M U414 (.Y(n270), 
	.B1(n172), 
	.B0(n556), 
	.A1N(n172), 
	.A0N(\mem[5][2] ));
   OAI2BB2X1M U415 (.Y(n271), 
	.B1(n172), 
	.B0(n555), 
	.A1N(n172), 
	.A0N(\mem[5][3] ));
   OAI2BB2X1M U416 (.Y(n272), 
	.B1(n172), 
	.B0(n554), 
	.A1N(n172), 
	.A0N(\mem[5][4] ));
   OAI2BB2X1M U417 (.Y(n273), 
	.B1(n172), 
	.B0(n553), 
	.A1N(n172), 
	.A0N(\mem[5][5] ));
   OAI2BB2X1M U418 (.Y(n274), 
	.B1(n172), 
	.B0(n552), 
	.A1N(n172), 
	.A0N(\mem[5][6] ));
   OAI2BB2X1M U419 (.Y(n275), 
	.B1(n172), 
	.B0(n551), 
	.A1N(n172), 
	.A0N(\mem[5][7] ));
   OAI2BB2X1M U420 (.Y(n276), 
	.B1(n173), 
	.B0(n558), 
	.A1N(n173), 
	.A0N(\mem[4][0] ));
   OAI2BB2X1M U421 (.Y(n277), 
	.B1(n173), 
	.B0(n557), 
	.A1N(n173), 
	.A0N(\mem[4][1] ));
   OAI2BB2X1M U422 (.Y(n278), 
	.B1(n173), 
	.B0(n556), 
	.A1N(n173), 
	.A0N(\mem[4][2] ));
   OAI2BB2X1M U423 (.Y(n279), 
	.B1(n173), 
	.B0(n555), 
	.A1N(n173), 
	.A0N(\mem[4][3] ));
   OAI2BB2X1M U424 (.Y(n280), 
	.B1(n173), 
	.B0(n554), 
	.A1N(n173), 
	.A0N(\mem[4][4] ));
   OAI2BB2X1M U425 (.Y(n281), 
	.B1(n173), 
	.B0(n553), 
	.A1N(n173), 
	.A0N(\mem[4][5] ));
   OAI2BB2X1M U426 (.Y(n282), 
	.B1(n173), 
	.B0(n552), 
	.A1N(n173), 
	.A0N(\mem[4][6] ));
   OAI2BB2X1M U427 (.Y(n283), 
	.B1(n173), 
	.B0(n551), 
	.A1N(n173), 
	.A0N(\mem[4][7] ));
   OAI2BB2X1M U428 (.Y(n284), 
	.B1(n174), 
	.B0(n558), 
	.A1N(n174), 
	.A0N(reg_3[0]));
   OAI2BB2X1M U429 (.Y(n285), 
	.B1(n174), 
	.B0(n557), 
	.A1N(n174), 
	.A0N(reg_3[1]));
   OAI2BB2X1M U430 (.Y(n286), 
	.B1(n174), 
	.B0(n556), 
	.A1N(n174), 
	.A0N(reg_3[2]));
   OAI2BB2X1M U431 (.Y(n287), 
	.B1(n174), 
	.B0(n555), 
	.A1N(n174), 
	.A0N(reg_3[3]));
   OAI2BB2X1M U432 (.Y(n288), 
	.B1(n174), 
	.B0(n554), 
	.A1N(n174), 
	.A0N(reg_3[4]));
   OAI2BB2X1M U433 (.Y(n290), 
	.B1(n174), 
	.B0(n552), 
	.A1N(n174), 
	.A0N(reg_3[6]));
   OAI2BB2X1M U434 (.Y(n291), 
	.B1(n174), 
	.B0(n551), 
	.A1N(n174), 
	.A0N(reg_3[7]));
   OAI2BB2X1M U435 (.Y(n293), 
	.B1(n175), 
	.B0(n557), 
	.A1N(n175), 
	.A0N(reg_2[1]));
   OAI2BB2X1M U436 (.Y(n294), 
	.B1(n175), 
	.B0(n556), 
	.A1N(n175), 
	.A0N(reg_2[2]));
   OAI2BB2X1M U437 (.Y(n295), 
	.B1(n175), 
	.B0(n555), 
	.A1N(n175), 
	.A0N(reg_2[3]));
   OAI2BB2X1M U438 (.Y(n296), 
	.B1(n175), 
	.B0(n554), 
	.A1N(n175), 
	.A0N(reg_2[4]));
   OAI2BB2X1M U439 (.Y(n297), 
	.B1(n175), 
	.B0(n553), 
	.A1N(n175), 
	.A0N(reg_2[5]));
   OAI2BB2X1M U440 (.Y(n298), 
	.B1(n175), 
	.B0(n552), 
	.A1N(n175), 
	.A0N(reg_2[6]));
   OAI2BB2X1M U441 (.Y(n300), 
	.B1(n176), 
	.B0(n558), 
	.A1N(n176), 
	.A0N(reg_1[0]));
   OAI2BB2X1M U442 (.Y(n301), 
	.B1(n176), 
	.B0(n557), 
	.A1N(n176), 
	.A0N(reg_1[1]));
   OAI2BB2X1M U443 (.Y(n302), 
	.B1(n176), 
	.B0(n556), 
	.A1N(n176), 
	.A0N(reg_1[2]));
   OAI2BB2X1M U444 (.Y(n303), 
	.B1(n176), 
	.B0(n555), 
	.A1N(n176), 
	.A0N(reg_1[3]));
   OAI2BB2X1M U445 (.Y(n304), 
	.B1(n176), 
	.B0(n554), 
	.A1N(n176), 
	.A0N(reg_1[4]));
   OAI2BB2X1M U446 (.Y(n305), 
	.B1(n176), 
	.B0(n553), 
	.A1N(n176), 
	.A0N(reg_1[5]));
   OAI2BB2X1M U447 (.Y(n306), 
	.B1(n176), 
	.B0(n552), 
	.A1N(n176), 
	.A0N(reg_1[6]));
   OAI2BB2X1M U448 (.Y(n307), 
	.B1(n176), 
	.B0(n551), 
	.A1N(n176), 
	.A0N(reg_1[7]));
   OAI2BB2X1M U449 (.Y(n308), 
	.B1(n178), 
	.B0(n558), 
	.A1N(n178), 
	.A0N(reg_0[0]));
   OAI2BB2X1M U450 (.Y(n309), 
	.B1(n178), 
	.B0(n557), 
	.A1N(n178), 
	.A0N(reg_0[1]));
   OAI2BB2X1M U451 (.Y(n310), 
	.B1(n178), 
	.B0(n556), 
	.A1N(n178), 
	.A0N(reg_0[2]));
   OAI2BB2X1M U452 (.Y(n311), 
	.B1(n178), 
	.B0(n555), 
	.A1N(n178), 
	.A0N(reg_0[3]));
   OAI2BB2X1M U453 (.Y(n312), 
	.B1(n178), 
	.B0(n554), 
	.A1N(n178), 
	.A0N(reg_0[4]));
   OAI2BB2X1M U454 (.Y(n313), 
	.B1(n178), 
	.B0(n553), 
	.A1N(n178), 
	.A0N(reg_0[5]));
   OAI2BB2X1M U455 (.Y(n314), 
	.B1(n178), 
	.B0(n552), 
	.A1N(n178), 
	.A0N(reg_0[6]));
   OAI2BB2X1M U456 (.Y(n315), 
	.B1(n178), 
	.B0(n551), 
	.A1N(n178), 
	.A0N(reg_0[7]));
   OAI2BB2X1M U457 (.Y(n289), 
	.B1(n174), 
	.B0(n553), 
	.A1N(n174), 
	.A0N(reg_3[5]));
   OAI2BB2X1M U458 (.Y(n292), 
	.B1(n175), 
	.B0(n558), 
	.A1N(n175), 
	.A0N(reg_2[0]));
   OAI2BB2X1M U459 (.Y(n299), 
	.B1(n175), 
	.B0(n551), 
	.A1N(n175), 
	.A0N(reg_2[7]));
   INVX2M U460 (.Y(n550), 
	.A(wr_en));
   AO21XLM U461 (.Y(n179), 
	.B0(n549), 
	.A1(n151), 
	.A0(rd_data_valid));
   AOI22X1M U462 (.Y(n442), 
	.B1(n545), 
	.B0(\mem[11][0] ), 
	.A1(n546), 
	.A0(\mem[10][0] ));
   AOI22X1M U463 (.Y(n441), 
	.B1(n547), 
	.B0(\mem[9][0] ), 
	.A1(n548), 
	.A0(\mem[8][0] ));
   CLKNAND2X2M U464 (.Y(n525), 
	.B(n559), 
	.A(N13));
   AOI21X1M U465 (.Y(n452), 
	.B0(n525), 
	.A1(n441), 
	.A0(n442));
   AOI22X1M U466 (.Y(n444), 
	.B1(n545), 
	.B0(\mem[15][0] ), 
	.A1(n546), 
	.A0(\mem[14][0] ));
   AOI22X1M U467 (.Y(n443), 
	.B1(n547), 
	.B0(\mem[13][0] ), 
	.A1(n548), 
	.A0(\mem[12][0] ));
   CLKNAND2X2M U468 (.Y(n528), 
	.B(N12), 
	.A(N13));
   AOI21X1M U469 (.Y(n451), 
	.B0(n528), 
	.A1(n443), 
	.A0(n444));
   AOI22X1M U470 (.Y(n446), 
	.B1(n545), 
	.B0(reg_3[0]), 
	.A1(n546), 
	.A0(reg_2[0]));
   AOI22X1M U471 (.Y(n445), 
	.B1(n547), 
	.B0(reg_1[0]), 
	.A1(n548), 
	.A0(reg_0[0]));
   CLKNAND2X2M U472 (.Y(n531), 
	.B(n541), 
	.A(n559));
   AOI21X1M U473 (.Y(n450), 
	.B0(n531), 
	.A1(n445), 
	.A0(n446));
   AOI22X1M U474 (.Y(n448), 
	.B1(n545), 
	.B0(\mem[7][0] ), 
	.A1(n546), 
	.A0(\mem[6][0] ));
   AOI22X1M U475 (.Y(n447), 
	.B1(n547), 
	.B0(\mem[5][0] ), 
	.A1(n548), 
	.A0(\mem[4][0] ));
   CLKNAND2X2M U476 (.Y(n534), 
	.B(n541), 
	.A(N12));
   AOI21X1M U477 (.Y(n449), 
	.B0(n534), 
	.A1(n447), 
	.A0(n448));
   OR4X1M U478 (.Y(N42), 
	.D(n449), 
	.C(n450), 
	.B(n451), 
	.A(n452));
   AOI22X1M U479 (.Y(n454), 
	.B1(n545), 
	.B0(\mem[11][1] ), 
	.A1(n546), 
	.A0(\mem[10][1] ));
   AOI22X1M U480 (.Y(n453), 
	.B1(n547), 
	.B0(\mem[9][1] ), 
	.A1(n548), 
	.A0(\mem[8][1] ));
   AOI21X1M U481 (.Y(n464), 
	.B0(n525), 
	.A1(n453), 
	.A0(n454));
   AOI22X1M U482 (.Y(n456), 
	.B1(n545), 
	.B0(\mem[15][1] ), 
	.A1(n546), 
	.A0(\mem[14][1] ));
   AOI22X1M U483 (.Y(n455), 
	.B1(n547), 
	.B0(\mem[13][1] ), 
	.A1(n548), 
	.A0(\mem[12][1] ));
   AOI21X1M U484 (.Y(n463), 
	.B0(n528), 
	.A1(n455), 
	.A0(n456));
   AOI22X1M U485 (.Y(n458), 
	.B1(n545), 
	.B0(reg_3[1]), 
	.A1(n546), 
	.A0(reg_2[1]));
   AOI22X1M U486 (.Y(n457), 
	.B1(n547), 
	.B0(reg_1[1]), 
	.A1(n548), 
	.A0(reg_0[1]));
   AOI21X1M U487 (.Y(n462), 
	.B0(n531), 
	.A1(n457), 
	.A0(n458));
   AOI22X1M U488 (.Y(n460), 
	.B1(n545), 
	.B0(\mem[7][1] ), 
	.A1(n546), 
	.A0(\mem[6][1] ));
   AOI22X1M U489 (.Y(n459), 
	.B1(n547), 
	.B0(\mem[5][1] ), 
	.A1(n548), 
	.A0(\mem[4][1] ));
   AOI21X1M U490 (.Y(n461), 
	.B0(n534), 
	.A1(n459), 
	.A0(n460));
   OR4X1M U491 (.Y(N41), 
	.D(n461), 
	.C(n462), 
	.B(n463), 
	.A(n464));
   AOI22X1M U492 (.Y(n466), 
	.B1(n545), 
	.B0(\mem[11][2] ), 
	.A1(n546), 
	.A0(\mem[10][2] ));
   AOI22X1M U493 (.Y(n465), 
	.B1(n547), 
	.B0(\mem[9][2] ), 
	.A1(n548), 
	.A0(\mem[8][2] ));
   AOI21X1M U494 (.Y(n476), 
	.B0(n525), 
	.A1(n465), 
	.A0(n466));
   AOI22X1M U495 (.Y(n468), 
	.B1(n545), 
	.B0(\mem[15][2] ), 
	.A1(n546), 
	.A0(\mem[14][2] ));
   AOI22X1M U496 (.Y(n467), 
	.B1(n547), 
	.B0(\mem[13][2] ), 
	.A1(n548), 
	.A0(\mem[12][2] ));
   AOI21X1M U497 (.Y(n475), 
	.B0(n528), 
	.A1(n467), 
	.A0(n468));
   AOI22X1M U498 (.Y(n470), 
	.B1(n545), 
	.B0(reg_3[2]), 
	.A1(n546), 
	.A0(reg_2[2]));
   AOI22X1M U499 (.Y(n469), 
	.B1(n547), 
	.B0(reg_1[2]), 
	.A1(n548), 
	.A0(reg_0[2]));
   AOI21X1M U500 (.Y(n474), 
	.B0(n531), 
	.A1(n469), 
	.A0(n470));
   AOI22X1M U501 (.Y(n472), 
	.B1(n545), 
	.B0(\mem[7][2] ), 
	.A1(n546), 
	.A0(\mem[6][2] ));
   AOI22X1M U502 (.Y(n471), 
	.B1(n547), 
	.B0(\mem[5][2] ), 
	.A1(n548), 
	.A0(\mem[4][2] ));
   AOI21X1M U503 (.Y(n473), 
	.B0(n534), 
	.A1(n471), 
	.A0(n472));
   OR4X1M U504 (.Y(N40), 
	.D(n473), 
	.C(n474), 
	.B(n475), 
	.A(n476));
   AOI22X1M U505 (.Y(n478), 
	.B1(n545), 
	.B0(\mem[11][3] ), 
	.A1(n546), 
	.A0(\mem[10][3] ));
   AOI22X1M U506 (.Y(n477), 
	.B1(n547), 
	.B0(\mem[9][3] ), 
	.A1(n548), 
	.A0(\mem[8][3] ));
   AOI21X1M U507 (.Y(n488), 
	.B0(n525), 
	.A1(n477), 
	.A0(n478));
   AOI22X1M U508 (.Y(n480), 
	.B1(n545), 
	.B0(\mem[15][3] ), 
	.A1(n546), 
	.A0(\mem[14][3] ));
   AOI22X1M U509 (.Y(n479), 
	.B1(n547), 
	.B0(\mem[13][3] ), 
	.A1(n548), 
	.A0(\mem[12][3] ));
   AOI21X1M U510 (.Y(n487), 
	.B0(n528), 
	.A1(n479), 
	.A0(n480));
   AOI22X1M U511 (.Y(n482), 
	.B1(n545), 
	.B0(reg_3[3]), 
	.A1(n546), 
	.A0(reg_2[3]));
   AOI22X1M U512 (.Y(n481), 
	.B1(n547), 
	.B0(reg_1[3]), 
	.A1(n548), 
	.A0(reg_0[3]));
   AOI21X1M U513 (.Y(n486), 
	.B0(n531), 
	.A1(n481), 
	.A0(n482));
   AOI22X1M U514 (.Y(n484), 
	.B1(n545), 
	.B0(\mem[7][3] ), 
	.A1(n546), 
	.A0(\mem[6][3] ));
   AOI22X1M U515 (.Y(n483), 
	.B1(n547), 
	.B0(\mem[5][3] ), 
	.A1(n548), 
	.A0(\mem[4][3] ));
   AOI21X1M U516 (.Y(n485), 
	.B0(n534), 
	.A1(n483), 
	.A0(n484));
   OR4X1M U517 (.Y(N39), 
	.D(n485), 
	.C(n486), 
	.B(n487), 
	.A(n488));
   AOI22X1M U518 (.Y(n490), 
	.B1(n545), 
	.B0(\mem[11][4] ), 
	.A1(n546), 
	.A0(\mem[10][4] ));
   AOI22X1M U519 (.Y(n489), 
	.B1(n547), 
	.B0(\mem[9][4] ), 
	.A1(n548), 
	.A0(\mem[8][4] ));
   AOI21X1M U520 (.Y(n500), 
	.B0(n525), 
	.A1(n489), 
	.A0(n490));
   AOI22X1M U521 (.Y(n492), 
	.B1(n545), 
	.B0(\mem[15][4] ), 
	.A1(n546), 
	.A0(\mem[14][4] ));
   AOI22X1M U522 (.Y(n491), 
	.B1(n547), 
	.B0(\mem[13][4] ), 
	.A1(n548), 
	.A0(\mem[12][4] ));
   AOI21X1M U523 (.Y(n499), 
	.B0(n528), 
	.A1(n491), 
	.A0(n492));
   AOI22X1M U524 (.Y(n494), 
	.B1(n545), 
	.B0(reg_3[4]), 
	.A1(n546), 
	.A0(reg_2[4]));
   AOI22X1M U525 (.Y(n493), 
	.B1(n547), 
	.B0(reg_1[4]), 
	.A1(n548), 
	.A0(reg_0[4]));
   AOI21X1M U526 (.Y(n498), 
	.B0(n531), 
	.A1(n493), 
	.A0(n494));
   AOI22X1M U527 (.Y(n496), 
	.B1(n545), 
	.B0(\mem[7][4] ), 
	.A1(n546), 
	.A0(test_so1));
   AOI22X1M U528 (.Y(n495), 
	.B1(n547), 
	.B0(\mem[5][4] ), 
	.A1(n548), 
	.A0(\mem[4][4] ));
   AOI21X1M U529 (.Y(n497), 
	.B0(n534), 
	.A1(n495), 
	.A0(n496));
   OR4X1M U530 (.Y(N38), 
	.D(n497), 
	.C(n498), 
	.B(n499), 
	.A(n500));
   AOI22X1M U531 (.Y(n502), 
	.B1(n545), 
	.B0(\mem[11][5] ), 
	.A1(n546), 
	.A0(\mem[10][5] ));
   AOI22X1M U532 (.Y(n501), 
	.B1(n547), 
	.B0(\mem[9][5] ), 
	.A1(n548), 
	.A0(\mem[8][5] ));
   AOI21X1M U533 (.Y(n512), 
	.B0(n525), 
	.A1(n501), 
	.A0(n502));
   AOI22X1M U534 (.Y(n504), 
	.B1(n545), 
	.B0(\mem[15][5] ), 
	.A1(n546), 
	.A0(\mem[14][5] ));
   AOI22X1M U535 (.Y(n503), 
	.B1(n547), 
	.B0(\mem[13][5] ), 
	.A1(n548), 
	.A0(\mem[12][5] ));
   AOI21X1M U536 (.Y(n511), 
	.B0(n528), 
	.A1(n503), 
	.A0(n504));
   AOI22X1M U537 (.Y(n506), 
	.B1(n545), 
	.B0(reg_3[5]), 
	.A1(n546), 
	.A0(reg_2[5]));
   AOI22X1M U538 (.Y(n505), 
	.B1(n547), 
	.B0(reg_1[5]), 
	.A1(n548), 
	.A0(reg_0[5]));
   AOI21X1M U539 (.Y(n510), 
	.B0(n531), 
	.A1(n505), 
	.A0(n506));
   AOI22X1M U540 (.Y(n508), 
	.B1(n545), 
	.B0(\mem[7][5] ), 
	.A1(n546), 
	.A0(\mem[6][5] ));
   AOI22X1M U541 (.Y(n507), 
	.B1(n547), 
	.B0(\mem[5][5] ), 
	.A1(n548), 
	.A0(\mem[4][5] ));
   AOI21X1M U542 (.Y(n509), 
	.B0(n534), 
	.A1(n507), 
	.A0(n508));
   OR4X1M U543 (.Y(N37), 
	.D(n509), 
	.C(n510), 
	.B(n511), 
	.A(n512));
   AOI22X1M U544 (.Y(n514), 
	.B1(n545), 
	.B0(\mem[11][6] ), 
	.A1(n546), 
	.A0(\mem[10][6] ));
   AOI22X1M U545 (.Y(n513), 
	.B1(n547), 
	.B0(\mem[9][6] ), 
	.A1(n548), 
	.A0(\mem[8][6] ));
   AOI21X1M U546 (.Y(n524), 
	.B0(n525), 
	.A1(n513), 
	.A0(n514));
   AOI22X1M U547 (.Y(n516), 
	.B1(n545), 
	.B0(\mem[15][6] ), 
	.A1(n546), 
	.A0(\mem[14][6] ));
   AOI22X1M U548 (.Y(n515), 
	.B1(n547), 
	.B0(\mem[13][6] ), 
	.A1(n548), 
	.A0(\mem[12][6] ));
   AOI21X1M U549 (.Y(n523), 
	.B0(n528), 
	.A1(n515), 
	.A0(n516));
   AOI22X1M U550 (.Y(n518), 
	.B1(n545), 
	.B0(reg_3[6]), 
	.A1(n546), 
	.A0(reg_2[6]));
   AOI22X1M U551 (.Y(n517), 
	.B1(n547), 
	.B0(reg_1[6]), 
	.A1(n548), 
	.A0(reg_0[6]));
   AOI21X1M U552 (.Y(n522), 
	.B0(n531), 
	.A1(n517), 
	.A0(n518));
   AOI22X1M U553 (.Y(n520), 
	.B1(n545), 
	.B0(\mem[7][6] ), 
	.A1(n546), 
	.A0(\mem[6][6] ));
   AOI22X1M U554 (.Y(n519), 
	.B1(n547), 
	.B0(\mem[5][6] ), 
	.A1(n548), 
	.A0(\mem[4][6] ));
   AOI21X1M U555 (.Y(n521), 
	.B0(n534), 
	.A1(n519), 
	.A0(n520));
   OR4X1M U556 (.Y(N36), 
	.D(n521), 
	.C(n522), 
	.B(n523), 
	.A(n524));
   AOI22X1M U557 (.Y(n527), 
	.B1(n545), 
	.B0(\mem[11][7] ), 
	.A1(n546), 
	.A0(\mem[10][7] ));
   AOI22X1M U558 (.Y(n526), 
	.B1(n547), 
	.B0(\mem[9][7] ), 
	.A1(n548), 
	.A0(\mem[8][7] ));
   AOI21X1M U559 (.Y(n540), 
	.B0(n525), 
	.A1(n526), 
	.A0(n527));
   AOI22X1M U560 (.Y(n530), 
	.B1(n545), 
	.B0(\mem[15][7] ), 
	.A1(n546), 
	.A0(\mem[14][7] ));
   AOI22X1M U561 (.Y(n529), 
	.B1(n547), 
	.B0(\mem[13][7] ), 
	.A1(n548), 
	.A0(\mem[12][7] ));
   AOI21X1M U562 (.Y(n539), 
	.B0(n528), 
	.A1(n529), 
	.A0(n530));
   AOI22X1M U563 (.Y(n533), 
	.B1(n545), 
	.B0(reg_3[7]), 
	.A1(n546), 
	.A0(reg_2[7]));
   AOI22X1M U564 (.Y(n532), 
	.B1(n547), 
	.B0(reg_1[7]), 
	.A1(n548), 
	.A0(reg_0[7]));
   AOI21X1M U565 (.Y(n538), 
	.B0(n531), 
	.A1(n532), 
	.A0(n533));
   AOI22X1M U566 (.Y(n536), 
	.B1(n545), 
	.B0(\mem[7][7] ), 
	.A1(n546), 
	.A0(\mem[6][7] ));
   AOI22X1M U567 (.Y(n535), 
	.B1(n547), 
	.B0(\mem[5][7] ), 
	.A1(n548), 
	.A0(\mem[4][7] ));
   AOI21X1M U568 (.Y(n537), 
	.B0(n534), 
	.A1(n535), 
	.A0(n536));
   OR4X1M U569 (.Y(N35), 
	.D(n537), 
	.C(n538), 
	.B(n539), 
	.A(n540));
   INVXLM U570 (.Y(n568), 
	.A(test_se));
   INVX2M U571 (.Y(n563), 
	.A(n568));
   INVX2M U572 (.Y(n564), 
	.A(n568));
   DLY1X4M U573 (.Y(n565), 
	.A(test_se));
   DLY1X4M U574 (.Y(n566), 
	.A(test_se));
   DLY1X4M U575 (.Y(n567), 
	.A(test_se));
   SDFFRHQX1M \mem_reg[6][4]  (.SI(\mem[6][3] ), 
	.SE(n564), 
	.RN(FE_OFN1_d0_scan_func_rst), 
	.Q(\mem[6][4] ), 
	.D(n264), 
	.CK(clk));
   INVXLM U3 (.Y(n1), 
	.A(\mem[6][4] ));
   INVX2M U4 (.Y(test_so1), 
	.A(n1));
endmodule

module asyc_fifo_mem_DATA_WIDTH8_DEPTH8_test_1 (
	w_rst, 
	wclk, 
	data_in, 
	w_addr, 
	r_addr, 
	w_en, 
	data_out, 
	test_si2, 
	test_si1, 
	test_so2, 
	test_so1, 
	test_se, 
	scan_func_ref_clk__L7_N11, 
	scan_func_ref_clk__L7_N12, 
	scan_func_ref_clk__L7_N13, 
	scan_func_ref_clk__L7_N8);
   input w_rst;
   input wclk;
   input [7:0] data_in;
   input [3:0] w_addr;
   input [3:0] r_addr;
   input w_en;
   output [7:0] data_out;
   input test_si2;
   input test_si1;
   output test_so2;
   output test_so1;
   input test_se;
   input scan_func_ref_clk__L7_N11;
   input scan_func_ref_clk__L7_N12;
   input scan_func_ref_clk__L7_N13;
   input scan_func_ref_clk__L7_N8;

   // Internal wires
   wire N10;
   wire N11;
   wire N12;
   wire \mem[0][7] ;
   wire \mem[0][6] ;
   wire \mem[0][5] ;
   wire \mem[0][4] ;
   wire \mem[0][3] ;
   wire \mem[0][2] ;
   wire \mem[0][1] ;
   wire \mem[0][0] ;
   wire \mem[1][7] ;
   wire \mem[1][6] ;
   wire \mem[1][5] ;
   wire \mem[1][4] ;
   wire \mem[1][3] ;
   wire \mem[1][2] ;
   wire \mem[1][1] ;
   wire \mem[1][0] ;
   wire \mem[2][7] ;
   wire \mem[2][6] ;
   wire \mem[2][5] ;
   wire \mem[2][4] ;
   wire \mem[2][3] ;
   wire \mem[2][2] ;
   wire \mem[2][1] ;
   wire \mem[2][0] ;
   wire \mem[3][7] ;
   wire \mem[3][6] ;
   wire \mem[3][5] ;
   wire \mem[3][4] ;
   wire \mem[3][3] ;
   wire \mem[3][2] ;
   wire \mem[3][1] ;
   wire \mem[3][0] ;
   wire \mem[4][7] ;
   wire \mem[4][6] ;
   wire \mem[4][5] ;
   wire \mem[4][4] ;
   wire \mem[4][3] ;
   wire \mem[4][2] ;
   wire \mem[4][1] ;
   wire \mem[4][0] ;
   wire \mem[5][7] ;
   wire \mem[5][6] ;
   wire \mem[5][5] ;
   wire \mem[5][4] ;
   wire \mem[5][3] ;
   wire \mem[5][2] ;
   wire \mem[5][1] ;
   wire \mem[5][0] ;
   wire \mem[6][7] ;
   wire \mem[6][6] ;
   wire \mem[6][5] ;
   wire \mem[6][4] ;
   wire \mem[6][3] ;
   wire \mem[6][2] ;
   wire \mem[6][1] ;
   wire \mem[6][0] ;
   wire \mem[7][7] ;
   wire \mem[7][6] ;
   wire \mem[7][5] ;
   wire \mem[7][4] ;
   wire \mem[7][3] ;
   wire \mem[7][2] ;
   wire \mem[7][1] ;
   wire \mem[7][0] ;
   wire n75;
   wire n76;
   wire n77;
   wire n78;
   wire n79;
   wire n80;
   wire n81;
   wire n82;
   wire n83;
   wire n84;
   wire n85;
   wire n86;
   wire n87;
   wire n88;
   wire n89;
   wire n90;
   wire n91;
   wire n92;
   wire n93;
   wire n94;
   wire n95;
   wire n96;
   wire n97;
   wire n98;
   wire n99;
   wire n100;
   wire n101;
   wire n102;
   wire n103;
   wire n104;
   wire n105;
   wire n106;
   wire n107;
   wire n108;
   wire n109;
   wire n110;
   wire n111;
   wire n112;
   wire n113;
   wire n114;
   wire n115;
   wire n116;
   wire n117;
   wire n118;
   wire n119;
   wire n120;
   wire n121;
   wire n122;
   wire n123;
   wire n124;
   wire n125;
   wire n126;
   wire n127;
   wire n128;
   wire n129;
   wire n130;
   wire n131;
   wire n132;
   wire n133;
   wire n134;
   wire n135;
   wire n136;
   wire n137;
   wire n138;
   wire n139;
   wire n140;
   wire n141;
   wire n142;
   wire n143;
   wire n144;
   wire n145;
   wire n146;
   wire n147;
   wire n148;
   wire n203;
   wire n204;
   wire n205;
   wire n206;
   wire n207;
   wire n208;
   wire n209;
   wire n210;
   wire n211;
   wire n212;
   wire n213;
   wire n214;
   wire n215;
   wire n216;
   wire n217;
   wire n218;
   wire n219;
   wire n220;
   wire n221;
   wire n222;
   wire n223;
   wire n224;
   wire n225;
   wire n226;
   wire n227;
   wire n228;
   wire n229;
   wire n230;
   wire n231;
   wire n232;
   wire n233;
   wire n234;
   wire n235;
   wire n236;
   wire n237;
   wire n238;
   wire n239;
   wire n240;
   wire n241;
   wire n248;
   wire n249;
   wire n250;
   wire n251;
   wire n252;
   wire n253;
   wire n254;
   wire n255;
   wire n256;
   wire n257;
   wire n262;
   wire n263;
   wire n264;
   wire n265;
   wire n266;
   wire n1;

   assign N10 = r_addr[0] ;
   assign N11 = r_addr[1] ;
   assign N12 = r_addr[2] ;
   assign test_so2 = \mem[7][7]  ;

   SDFFRQX1M \mem_reg[5][7]  (.SI(\mem[5][6] ), 
	.SE(n266), 
	.RN(w_rst), 
	.Q(\mem[5][7] ), 
	.D(n108), 
	.CK(scan_func_ref_clk__L7_N12));
   SDFFRQX1M \mem_reg[5][6]  (.SI(\mem[5][5] ), 
	.SE(n265), 
	.RN(w_rst), 
	.Q(\mem[5][6] ), 
	.D(n107), 
	.CK(scan_func_ref_clk__L7_N12));
   SDFFRQX1M \mem_reg[5][5]  (.SI(\mem[5][4] ), 
	.SE(n264), 
	.RN(w_rst), 
	.Q(\mem[5][5] ), 
	.D(n106), 
	.CK(scan_func_ref_clk__L7_N12));
   SDFFRQX1M \mem_reg[5][4]  (.SI(\mem[5][3] ), 
	.SE(n263), 
	.RN(w_rst), 
	.Q(\mem[5][4] ), 
	.D(n105), 
	.CK(scan_func_ref_clk__L7_N12));
   SDFFRQX1M \mem_reg[5][3]  (.SI(\mem[5][2] ), 
	.SE(n266), 
	.RN(w_rst), 
	.Q(\mem[5][3] ), 
	.D(n104), 
	.CK(scan_func_ref_clk__L7_N12));
   SDFFRQX1M \mem_reg[5][2]  (.SI(\mem[5][1] ), 
	.SE(n265), 
	.RN(w_rst), 
	.Q(\mem[5][2] ), 
	.D(n103), 
	.CK(scan_func_ref_clk__L7_N12));
   SDFFRQX1M \mem_reg[5][1]  (.SI(\mem[5][0] ), 
	.SE(n264), 
	.RN(w_rst), 
	.Q(\mem[5][1] ), 
	.D(n102), 
	.CK(scan_func_ref_clk__L7_N12));
   SDFFRQX1M \mem_reg[5][0]  (.SI(\mem[4][7] ), 
	.SE(n263), 
	.RN(w_rst), 
	.Q(\mem[5][0] ), 
	.D(n101), 
	.CK(scan_func_ref_clk__L7_N12));
   SDFFRQX1M \mem_reg[6][7]  (.SI(\mem[6][6] ), 
	.SE(n266), 
	.RN(w_rst), 
	.Q(\mem[6][7] ), 
	.D(n100), 
	.CK(scan_func_ref_clk__L7_N13));
   SDFFRQX1M \mem_reg[6][6]  (.SI(\mem[6][5] ), 
	.SE(n265), 
	.RN(w_rst), 
	.Q(\mem[6][6] ), 
	.D(n99), 
	.CK(scan_func_ref_clk__L7_N13));
   SDFFRQX1M \mem_reg[6][5]  (.SI(\mem[6][4] ), 
	.SE(n264), 
	.RN(w_rst), 
	.Q(\mem[6][5] ), 
	.D(n98), 
	.CK(scan_func_ref_clk__L7_N13));
   SDFFRQX1M \mem_reg[6][4]  (.SI(\mem[6][3] ), 
	.SE(n263), 
	.RN(w_rst), 
	.Q(\mem[6][4] ), 
	.D(n97), 
	.CK(scan_func_ref_clk__L7_N13));
   SDFFRQX1M \mem_reg[6][3]  (.SI(\mem[6][2] ), 
	.SE(n266), 
	.RN(w_rst), 
	.Q(\mem[6][3] ), 
	.D(n96), 
	.CK(scan_func_ref_clk__L7_N13));
   SDFFRQX1M \mem_reg[6][2]  (.SI(\mem[6][1] ), 
	.SE(n265), 
	.RN(w_rst), 
	.Q(\mem[6][2] ), 
	.D(n95), 
	.CK(scan_func_ref_clk__L7_N13));
   SDFFRQX1M \mem_reg[6][1]  (.SI(\mem[6][0] ), 
	.SE(n264), 
	.RN(w_rst), 
	.Q(\mem[6][1] ), 
	.D(n94), 
	.CK(scan_func_ref_clk__L7_N13));
   SDFFRQX1M \mem_reg[6][0]  (.SI(\mem[5][7] ), 
	.SE(n263), 
	.RN(w_rst), 
	.Q(\mem[6][0] ), 
	.D(n93), 
	.CK(scan_func_ref_clk__L7_N13));
   SDFFRQX1M \mem_reg[7][7]  (.SI(\mem[7][6] ), 
	.SE(n266), 
	.RN(w_rst), 
	.Q(\mem[7][7] ), 
	.D(n92), 
	.CK(scan_func_ref_clk__L7_N12));
   SDFFRQX1M \mem_reg[7][6]  (.SI(\mem[7][5] ), 
	.SE(n265), 
	.RN(w_rst), 
	.Q(\mem[7][6] ), 
	.D(n91), 
	.CK(scan_func_ref_clk__L7_N12));
   SDFFRQX1M \mem_reg[7][5]  (.SI(\mem[7][4] ), 
	.SE(n264), 
	.RN(w_rst), 
	.Q(\mem[7][5] ), 
	.D(n90), 
	.CK(scan_func_ref_clk__L7_N12));
   SDFFRQX1M \mem_reg[7][4]  (.SI(\mem[7][3] ), 
	.SE(n263), 
	.RN(w_rst), 
	.Q(\mem[7][4] ), 
	.D(n89), 
	.CK(scan_func_ref_clk__L7_N12));
   SDFFRQX1M \mem_reg[7][3]  (.SI(\mem[7][2] ), 
	.SE(n266), 
	.RN(w_rst), 
	.Q(\mem[7][3] ), 
	.D(n88), 
	.CK(scan_func_ref_clk__L7_N8));
   SDFFRQX1M \mem_reg[7][2]  (.SI(test_si2), 
	.SE(n265), 
	.RN(w_rst), 
	.Q(\mem[7][2] ), 
	.D(n87), 
	.CK(scan_func_ref_clk__L7_N12));
   SDFFRQX1M \mem_reg[7][0]  (.SI(\mem[6][7] ), 
	.SE(n263), 
	.RN(w_rst), 
	.Q(\mem[7][0] ), 
	.D(n85), 
	.CK(scan_func_ref_clk__L7_N12));
   SDFFRQX1M \mem_reg[4][7]  (.SI(\mem[4][6] ), 
	.SE(n266), 
	.RN(w_rst), 
	.Q(\mem[4][7] ), 
	.D(n116), 
	.CK(scan_func_ref_clk__L7_N12));
   SDFFRQX1M \mem_reg[4][6]  (.SI(\mem[4][5] ), 
	.SE(n265), 
	.RN(w_rst), 
	.Q(\mem[4][6] ), 
	.D(n115), 
	.CK(scan_func_ref_clk__L7_N13));
   SDFFRQX1M \mem_reg[4][5]  (.SI(\mem[4][4] ), 
	.SE(n264), 
	.RN(w_rst), 
	.Q(\mem[4][5] ), 
	.D(n114), 
	.CK(scan_func_ref_clk__L7_N13));
   SDFFRQX1M \mem_reg[4][4]  (.SI(\mem[4][3] ), 
	.SE(n263), 
	.RN(w_rst), 
	.Q(\mem[4][4] ), 
	.D(n113), 
	.CK(scan_func_ref_clk__L7_N13));
   SDFFRQX1M \mem_reg[4][3]  (.SI(\mem[4][2] ), 
	.SE(n266), 
	.RN(w_rst), 
	.Q(\mem[4][3] ), 
	.D(n112), 
	.CK(scan_func_ref_clk__L7_N13));
   SDFFRQX1M \mem_reg[4][2]  (.SI(\mem[4][1] ), 
	.SE(n265), 
	.RN(w_rst), 
	.Q(\mem[4][2] ), 
	.D(n111), 
	.CK(scan_func_ref_clk__L7_N13));
   SDFFRQX1M \mem_reg[4][1]  (.SI(\mem[4][0] ), 
	.SE(n264), 
	.RN(w_rst), 
	.Q(\mem[4][1] ), 
	.D(n110), 
	.CK(scan_func_ref_clk__L7_N13));
   SDFFRQX1M \mem_reg[4][0]  (.SI(\mem[3][7] ), 
	.SE(n263), 
	.RN(w_rst), 
	.Q(\mem[4][0] ), 
	.D(n109), 
	.CK(wclk));
   SDFFRQX1M \mem_reg[1][7]  (.SI(\mem[1][6] ), 
	.SE(n266), 
	.RN(w_rst), 
	.Q(\mem[1][7] ), 
	.D(n140), 
	.CK(scan_func_ref_clk__L7_N11));
   SDFFRQX1M \mem_reg[1][6]  (.SI(\mem[1][5] ), 
	.SE(n265), 
	.RN(w_rst), 
	.Q(\mem[1][6] ), 
	.D(n139), 
	.CK(scan_func_ref_clk__L7_N11));
   SDFFRQX1M \mem_reg[1][5]  (.SI(\mem[1][4] ), 
	.SE(n264), 
	.RN(w_rst), 
	.Q(\mem[1][5] ), 
	.D(n138), 
	.CK(scan_func_ref_clk__L7_N11));
   SDFFRQX1M \mem_reg[1][4]  (.SI(\mem[1][3] ), 
	.SE(n263), 
	.RN(w_rst), 
	.Q(\mem[1][4] ), 
	.D(n137), 
	.CK(scan_func_ref_clk__L7_N12));
   SDFFRQX1M \mem_reg[1][3]  (.SI(\mem[1][2] ), 
	.SE(n266), 
	.RN(w_rst), 
	.Q(\mem[1][3] ), 
	.D(n136), 
	.CK(scan_func_ref_clk__L7_N11));
   SDFFRQX1M \mem_reg[1][2]  (.SI(\mem[1][1] ), 
	.SE(n265), 
	.RN(w_rst), 
	.Q(\mem[1][2] ), 
	.D(n135), 
	.CK(scan_func_ref_clk__L7_N11));
   SDFFRQX1M \mem_reg[1][1]  (.SI(\mem[1][0] ), 
	.SE(n264), 
	.RN(w_rst), 
	.Q(\mem[1][1] ), 
	.D(n134), 
	.CK(scan_func_ref_clk__L7_N11));
   SDFFRQX1M \mem_reg[1][0]  (.SI(\mem[0][7] ), 
	.SE(n263), 
	.RN(w_rst), 
	.Q(\mem[1][0] ), 
	.D(n133), 
	.CK(scan_func_ref_clk__L7_N11));
   SDFFRQX1M \mem_reg[3][7]  (.SI(\mem[3][6] ), 
	.SE(n266), 
	.RN(w_rst), 
	.Q(\mem[3][7] ), 
	.D(n124), 
	.CK(scan_func_ref_clk__L7_N11));
   SDFFRQX1M \mem_reg[3][6]  (.SI(\mem[3][5] ), 
	.SE(n265), 
	.RN(w_rst), 
	.Q(\mem[3][6] ), 
	.D(n123), 
	.CK(scan_func_ref_clk__L7_N11));
   SDFFRQX1M \mem_reg[3][5]  (.SI(\mem[3][4] ), 
	.SE(n264), 
	.RN(w_rst), 
	.Q(\mem[3][5] ), 
	.D(n122), 
	.CK(scan_func_ref_clk__L7_N11));
   SDFFRQX1M \mem_reg[3][4]  (.SI(\mem[3][3] ), 
	.SE(n263), 
	.RN(w_rst), 
	.Q(\mem[3][4] ), 
	.D(n121), 
	.CK(scan_func_ref_clk__L7_N11));
   SDFFRQX1M \mem_reg[3][3]  (.SI(\mem[3][2] ), 
	.SE(n266), 
	.RN(w_rst), 
	.Q(\mem[3][3] ), 
	.D(n120), 
	.CK(scan_func_ref_clk__L7_N11));
   SDFFRQX1M \mem_reg[3][2]  (.SI(\mem[3][1] ), 
	.SE(n265), 
	.RN(w_rst), 
	.Q(\mem[3][2] ), 
	.D(n119), 
	.CK(scan_func_ref_clk__L7_N11));
   SDFFRQX1M \mem_reg[3][1]  (.SI(\mem[3][0] ), 
	.SE(n264), 
	.RN(w_rst), 
	.Q(\mem[3][1] ), 
	.D(n118), 
	.CK(scan_func_ref_clk__L7_N11));
   SDFFRQX1M \mem_reg[3][0]  (.SI(\mem[2][7] ), 
	.SE(n263), 
	.RN(w_rst), 
	.Q(\mem[3][0] ), 
	.D(n117), 
	.CK(scan_func_ref_clk__L7_N11));
   SDFFRQX1M \mem_reg[2][7]  (.SI(\mem[2][6] ), 
	.SE(n266), 
	.RN(w_rst), 
	.Q(\mem[2][7] ), 
	.D(n132), 
	.CK(wclk));
   SDFFRQX1M \mem_reg[2][6]  (.SI(\mem[2][5] ), 
	.SE(n265), 
	.RN(w_rst), 
	.Q(\mem[2][6] ), 
	.D(n131), 
	.CK(wclk));
   SDFFRQX1M \mem_reg[2][5]  (.SI(\mem[2][4] ), 
	.SE(n264), 
	.RN(w_rst), 
	.Q(\mem[2][5] ), 
	.D(n130), 
	.CK(scan_func_ref_clk__L7_N13));
   SDFFRQX1M \mem_reg[2][4]  (.SI(\mem[2][3] ), 
	.SE(n263), 
	.RN(w_rst), 
	.Q(\mem[2][4] ), 
	.D(n129), 
	.CK(wclk));
   SDFFRQX1M \mem_reg[2][3]  (.SI(\mem[2][2] ), 
	.SE(n266), 
	.RN(w_rst), 
	.Q(\mem[2][3] ), 
	.D(n128), 
	.CK(wclk));
   SDFFRQX1M \mem_reg[2][2]  (.SI(\mem[2][1] ), 
	.SE(n265), 
	.RN(w_rst), 
	.Q(\mem[2][2] ), 
	.D(n127), 
	.CK(wclk));
   SDFFRQX1M \mem_reg[2][1]  (.SI(\mem[2][0] ), 
	.SE(n264), 
	.RN(w_rst), 
	.Q(\mem[2][1] ), 
	.D(n126), 
	.CK(wclk));
   SDFFRQX1M \mem_reg[2][0]  (.SI(\mem[1][7] ), 
	.SE(n263), 
	.RN(w_rst), 
	.Q(\mem[2][0] ), 
	.D(n125), 
	.CK(scan_func_ref_clk__L7_N11));
   SDFFRQX1M \mem_reg[0][7]  (.SI(\mem[0][6] ), 
	.SE(n266), 
	.RN(w_rst), 
	.Q(\mem[0][7] ), 
	.D(n148), 
	.CK(wclk));
   SDFFRQX1M \mem_reg[0][6]  (.SI(\mem[0][5] ), 
	.SE(n265), 
	.RN(w_rst), 
	.Q(\mem[0][6] ), 
	.D(n147), 
	.CK(wclk));
   SDFFRQX1M \mem_reg[0][5]  (.SI(\mem[0][4] ), 
	.SE(n264), 
	.RN(w_rst), 
	.Q(\mem[0][5] ), 
	.D(n146), 
	.CK(wclk));
   SDFFRQX1M \mem_reg[0][4]  (.SI(\mem[0][3] ), 
	.SE(n263), 
	.RN(w_rst), 
	.Q(\mem[0][4] ), 
	.D(n145), 
	.CK(wclk));
   SDFFRQX1M \mem_reg[0][3]  (.SI(\mem[0][2] ), 
	.SE(n266), 
	.RN(w_rst), 
	.Q(\mem[0][3] ), 
	.D(n144), 
	.CK(wclk));
   SDFFRQX1M \mem_reg[0][2]  (.SI(\mem[0][1] ), 
	.SE(n265), 
	.RN(w_rst), 
	.Q(\mem[0][2] ), 
	.D(n143), 
	.CK(wclk));
   SDFFRQX1M \mem_reg[0][1]  (.SI(\mem[0][0] ), 
	.SE(n264), 
	.RN(w_rst), 
	.Q(\mem[0][1] ), 
	.D(n142), 
	.CK(wclk));
   SDFFRQX1M \mem_reg[0][0]  (.SI(test_si1), 
	.SE(n263), 
	.RN(w_rst), 
	.Q(\mem[0][0] ), 
	.D(n141), 
	.CK(wclk));
   NAND3X2M U136 (.Y(n79), 
	.C(n76), 
	.B(n249), 
	.A(n248));
   NAND3X2M U137 (.Y(n84), 
	.C(n81), 
	.B(n249), 
	.A(n248));
   NOR2X2M U138 (.Y(n235), 
	.B(n240), 
	.A(n239));
   NOR2BX2M U139 (.Y(n81), 
	.B(w_addr[2]), 
	.AN(w_en));
   OAI2BB2X1M U140 (.Y(n141), 
	.B1(n84), 
	.B0(n257), 
	.A1N(n84), 
	.A0N(\mem[0][0] ));
   OAI2BB2X1M U141 (.Y(n142), 
	.B1(n84), 
	.B0(n256), 
	.A1N(n84), 
	.A0N(\mem[0][1] ));
   OAI2BB2X1M U142 (.Y(n143), 
	.B1(n84), 
	.B0(n255), 
	.A1N(n84), 
	.A0N(\mem[0][2] ));
   OAI2BB2X1M U143 (.Y(n144), 
	.B1(n84), 
	.B0(n254), 
	.A1N(n84), 
	.A0N(\mem[0][3] ));
   OAI2BB2X1M U144 (.Y(n145), 
	.B1(n84), 
	.B0(n253), 
	.A1N(n84), 
	.A0N(\mem[0][4] ));
   OAI2BB2X1M U145 (.Y(n146), 
	.B1(n84), 
	.B0(n252), 
	.A1N(n84), 
	.A0N(\mem[0][5] ));
   OAI2BB2X1M U146 (.Y(n147), 
	.B1(n84), 
	.B0(n251), 
	.A1N(n84), 
	.A0N(\mem[0][6] ));
   OAI2BB2X1M U147 (.Y(n148), 
	.B1(n84), 
	.B0(n250), 
	.A1N(n84), 
	.A0N(\mem[0][7] ));
   OAI2BB2X1M U148 (.Y(n109), 
	.B1(n79), 
	.B0(n257), 
	.A1N(n79), 
	.A0N(\mem[4][0] ));
   OAI2BB2X1M U149 (.Y(n110), 
	.B1(n79), 
	.B0(n256), 
	.A1N(n79), 
	.A0N(\mem[4][1] ));
   OAI2BB2X1M U150 (.Y(n111), 
	.B1(n79), 
	.B0(n255), 
	.A1N(n79), 
	.A0N(\mem[4][2] ));
   OAI2BB2X1M U151 (.Y(n112), 
	.B1(n79), 
	.B0(n254), 
	.A1N(n79), 
	.A0N(\mem[4][3] ));
   OAI2BB2X1M U152 (.Y(n113), 
	.B1(n79), 
	.B0(n253), 
	.A1N(n79), 
	.A0N(\mem[4][4] ));
   OAI2BB2X1M U153 (.Y(n114), 
	.B1(n79), 
	.B0(n252), 
	.A1N(n79), 
	.A0N(\mem[4][5] ));
   OAI2BB2X1M U154 (.Y(n115), 
	.B1(n79), 
	.B0(n251), 
	.A1N(n79), 
	.A0N(\mem[4][6] ));
   OAI2BB2X1M U155 (.Y(n116), 
	.B1(n79), 
	.B0(n250), 
	.A1N(n79), 
	.A0N(\mem[4][7] ));
   INVX2M U156 (.Y(n257), 
	.A(data_in[0]));
   INVX2M U157 (.Y(n256), 
	.A(data_in[1]));
   INVX2M U158 (.Y(n255), 
	.A(data_in[2]));
   INVX2M U159 (.Y(n254), 
	.A(data_in[3]));
   INVX2M U160 (.Y(n253), 
	.A(data_in[4]));
   INVX2M U161 (.Y(n252), 
	.A(data_in[5]));
   INVX2M U162 (.Y(n251), 
	.A(data_in[6]));
   INVX2M U163 (.Y(n250), 
	.A(data_in[7]));
   OAI2BB2X1M U164 (.Y(n93), 
	.B1(n77), 
	.B0(n257), 
	.A1N(n77), 
	.A0N(\mem[6][0] ));
   OAI2BB2X1M U165 (.Y(n94), 
	.B1(n77), 
	.B0(n256), 
	.A1N(n77), 
	.A0N(\mem[6][1] ));
   OAI2BB2X1M U166 (.Y(n95), 
	.B1(n77), 
	.B0(n255), 
	.A1N(n77), 
	.A0N(\mem[6][2] ));
   OAI2BB2X1M U167 (.Y(n96), 
	.B1(n77), 
	.B0(n254), 
	.A1N(n77), 
	.A0N(\mem[6][3] ));
   OAI2BB2X1M U168 (.Y(n97), 
	.B1(n77), 
	.B0(n253), 
	.A1N(n77), 
	.A0N(\mem[6][4] ));
   OAI2BB2X1M U169 (.Y(n98), 
	.B1(n77), 
	.B0(n252), 
	.A1N(n77), 
	.A0N(\mem[6][5] ));
   OAI2BB2X1M U170 (.Y(n99), 
	.B1(n77), 
	.B0(n251), 
	.A1N(n77), 
	.A0N(\mem[6][6] ));
   OAI2BB2X1M U171 (.Y(n100), 
	.B1(n77), 
	.B0(n250), 
	.A1N(n77), 
	.A0N(\mem[6][7] ));
   OAI2BB2X1M U172 (.Y(n101), 
	.B1(n78), 
	.B0(n257), 
	.A1N(n78), 
	.A0N(\mem[5][0] ));
   OAI2BB2X1M U173 (.Y(n102), 
	.B1(n78), 
	.B0(n256), 
	.A1N(n78), 
	.A0N(\mem[5][1] ));
   OAI2BB2X1M U174 (.Y(n103), 
	.B1(n78), 
	.B0(n255), 
	.A1N(n78), 
	.A0N(\mem[5][2] ));
   OAI2BB2X1M U175 (.Y(n104), 
	.B1(n78), 
	.B0(n254), 
	.A1N(n78), 
	.A0N(\mem[5][3] ));
   OAI2BB2X1M U176 (.Y(n105), 
	.B1(n78), 
	.B0(n253), 
	.A1N(n78), 
	.A0N(\mem[5][4] ));
   OAI2BB2X1M U177 (.Y(n106), 
	.B1(n78), 
	.B0(n252), 
	.A1N(n78), 
	.A0N(\mem[5][5] ));
   OAI2BB2X1M U178 (.Y(n107), 
	.B1(n78), 
	.B0(n251), 
	.A1N(n78), 
	.A0N(\mem[5][6] ));
   OAI2BB2X1M U179 (.Y(n108), 
	.B1(n78), 
	.B0(n250), 
	.A1N(n78), 
	.A0N(\mem[5][7] ));
   OAI2BB2X1M U180 (.Y(n117), 
	.B1(n80), 
	.B0(n257), 
	.A1N(n80), 
	.A0N(\mem[3][0] ));
   OAI2BB2X1M U181 (.Y(n118), 
	.B1(n80), 
	.B0(n256), 
	.A1N(n80), 
	.A0N(\mem[3][1] ));
   OAI2BB2X1M U182 (.Y(n119), 
	.B1(n80), 
	.B0(n255), 
	.A1N(n80), 
	.A0N(\mem[3][2] ));
   OAI2BB2X1M U183 (.Y(n120), 
	.B1(n80), 
	.B0(n254), 
	.A1N(n80), 
	.A0N(\mem[3][3] ));
   OAI2BB2X1M U184 (.Y(n121), 
	.B1(n80), 
	.B0(n253), 
	.A1N(n80), 
	.A0N(\mem[3][4] ));
   OAI2BB2X1M U185 (.Y(n122), 
	.B1(n80), 
	.B0(n252), 
	.A1N(n80), 
	.A0N(\mem[3][5] ));
   OAI2BB2X1M U186 (.Y(n123), 
	.B1(n80), 
	.B0(n251), 
	.A1N(n80), 
	.A0N(\mem[3][6] ));
   OAI2BB2X1M U187 (.Y(n124), 
	.B1(n80), 
	.B0(n250), 
	.A1N(n80), 
	.A0N(\mem[3][7] ));
   OAI2BB2X1M U188 (.Y(n125), 
	.B1(n82), 
	.B0(n257), 
	.A1N(n82), 
	.A0N(\mem[2][0] ));
   OAI2BB2X1M U189 (.Y(n126), 
	.B1(n82), 
	.B0(n256), 
	.A1N(n82), 
	.A0N(\mem[2][1] ));
   OAI2BB2X1M U190 (.Y(n127), 
	.B1(n82), 
	.B0(n255), 
	.A1N(n82), 
	.A0N(\mem[2][2] ));
   OAI2BB2X1M U191 (.Y(n128), 
	.B1(n82), 
	.B0(n254), 
	.A1N(n82), 
	.A0N(\mem[2][3] ));
   OAI2BB2X1M U192 (.Y(n129), 
	.B1(n82), 
	.B0(n253), 
	.A1N(n82), 
	.A0N(\mem[2][4] ));
   OAI2BB2X1M U193 (.Y(n130), 
	.B1(n82), 
	.B0(n252), 
	.A1N(n82), 
	.A0N(\mem[2][5] ));
   OAI2BB2X1M U194 (.Y(n131), 
	.B1(n82), 
	.B0(n251), 
	.A1N(n82), 
	.A0N(\mem[2][6] ));
   OAI2BB2X1M U195 (.Y(n132), 
	.B1(n82), 
	.B0(n250), 
	.A1N(n82), 
	.A0N(\mem[2][7] ));
   OAI2BB2X1M U196 (.Y(n133), 
	.B1(n83), 
	.B0(n257), 
	.A1N(n83), 
	.A0N(\mem[1][0] ));
   OAI2BB2X1M U197 (.Y(n134), 
	.B1(n83), 
	.B0(n256), 
	.A1N(n83), 
	.A0N(\mem[1][1] ));
   OAI2BB2X1M U198 (.Y(n135), 
	.B1(n83), 
	.B0(n255), 
	.A1N(n83), 
	.A0N(\mem[1][2] ));
   OAI2BB2X1M U199 (.Y(n136), 
	.B1(n83), 
	.B0(n254), 
	.A1N(n83), 
	.A0N(\mem[1][3] ));
   OAI2BB2X1M U200 (.Y(n137), 
	.B1(n83), 
	.B0(n253), 
	.A1N(n83), 
	.A0N(\mem[1][4] ));
   OAI2BB2X1M U201 (.Y(n138), 
	.B1(n83), 
	.B0(n252), 
	.A1N(n83), 
	.A0N(\mem[1][5] ));
   OAI2BB2X1M U202 (.Y(n139), 
	.B1(n83), 
	.B0(n251), 
	.A1N(n83), 
	.A0N(\mem[1][6] ));
   OAI2BB2X1M U203 (.Y(n140), 
	.B1(n83), 
	.B0(n250), 
	.A1N(n83), 
	.A0N(\mem[1][7] ));
   OAI2BB2X1M U204 (.Y(n85), 
	.B1(n257), 
	.B0(n75), 
	.A1N(n75), 
	.A0N(\mem[7][0] ));
   OAI2BB2X1M U205 (.Y(n86), 
	.B1(n256), 
	.B0(n75), 
	.A1N(n75), 
	.A0N(test_so1));
   OAI2BB2X1M U206 (.Y(n87), 
	.B1(n255), 
	.B0(n75), 
	.A1N(n75), 
	.A0N(\mem[7][2] ));
   OAI2BB2X1M U207 (.Y(n88), 
	.B1(n254), 
	.B0(n75), 
	.A1N(n75), 
	.A0N(\mem[7][3] ));
   OAI2BB2X1M U208 (.Y(n89), 
	.B1(n253), 
	.B0(n75), 
	.A1N(n75), 
	.A0N(\mem[7][4] ));
   OAI2BB2X1M U209 (.Y(n90), 
	.B1(n252), 
	.B0(n75), 
	.A1N(n75), 
	.A0N(\mem[7][5] ));
   OAI2BB2X1M U210 (.Y(n91), 
	.B1(n251), 
	.B0(n75), 
	.A1N(n75), 
	.A0N(\mem[7][6] ));
   OAI2BB2X1M U211 (.Y(n92), 
	.B1(n250), 
	.B0(n75), 
	.A1N(n75), 
	.A0N(\mem[7][7] ));
   AND2X2M U212 (.Y(n76), 
	.B(w_addr[2]), 
	.A(w_en));
   NAND3X2M U213 (.Y(n78), 
	.C(w_addr[0]), 
	.B(n249), 
	.A(n76));
   NAND3X2M U214 (.Y(n77), 
	.C(w_addr[1]), 
	.B(n248), 
	.A(n76));
   NAND3X2M U215 (.Y(n80), 
	.C(n81), 
	.B(w_addr[0]), 
	.A(w_addr[1]));
   NAND3X2M U216 (.Y(n82), 
	.C(n81), 
	.B(n248), 
	.A(w_addr[1]));
   NAND3X2M U217 (.Y(n83), 
	.C(n81), 
	.B(n249), 
	.A(w_addr[0]));
   NAND3X2M U218 (.Y(n75), 
	.C(w_addr[1]), 
	.B(n76), 
	.A(w_addr[0]));
   INVX2M U219 (.Y(n248), 
	.A(w_addr[0]));
   INVX2M U220 (.Y(n249), 
	.A(w_addr[1]));
   NOR2X2M U221 (.Y(n236), 
	.B(N11), 
	.A(n239));
   NOR2X2M U222 (.Y(n233), 
	.B(N12), 
	.A(n240));
   NOR2X2M U223 (.Y(n232), 
	.B(N12), 
	.A(N11));
   INVX2M U224 (.Y(n240), 
	.A(N11));
   INVX2M U225 (.Y(n239), 
	.A(N12));
   INVX2M U226 (.Y(n241), 
	.A(N10));
   AO22X1M U227 (.Y(n203), 
	.B1(n232), 
	.B0(\mem[1][0] ), 
	.A1(n233), 
	.A0(\mem[3][0] ));
   AOI221XLM U228 (.Y(n206), 
	.C0(n203), 
	.B1(n235), 
	.B0(\mem[7][0] ), 
	.A1(n236), 
	.A0(\mem[5][0] ));
   AO22X1M U229 (.Y(n204), 
	.B1(n232), 
	.B0(\mem[0][0] ), 
	.A1(n233), 
	.A0(\mem[2][0] ));
   AOI221XLM U230 (.Y(n205), 
	.C0(n204), 
	.B1(n235), 
	.B0(\mem[6][0] ), 
	.A1(n236), 
	.A0(\mem[4][0] ));
   OAI22X1M U231 (.Y(data_out[0]), 
	.B1(n205), 
	.B0(N10), 
	.A1(n206), 
	.A0(n241));
   AO22X1M U232 (.Y(n207), 
	.B1(n232), 
	.B0(\mem[1][1] ), 
	.A1(n233), 
	.A0(\mem[3][1] ));
   AOI221XLM U233 (.Y(n210), 
	.C0(n207), 
	.B1(n235), 
	.B0(test_so1), 
	.A1(n236), 
	.A0(\mem[5][1] ));
   AO22X1M U234 (.Y(n208), 
	.B1(n232), 
	.B0(\mem[0][1] ), 
	.A1(n233), 
	.A0(\mem[2][1] ));
   AOI221XLM U235 (.Y(n209), 
	.C0(n208), 
	.B1(n235), 
	.B0(\mem[6][1] ), 
	.A1(n236), 
	.A0(\mem[4][1] ));
   OAI22X1M U236 (.Y(data_out[1]), 
	.B1(n209), 
	.B0(N10), 
	.A1(n210), 
	.A0(n241));
   AO22X1M U237 (.Y(n211), 
	.B1(n232), 
	.B0(\mem[1][2] ), 
	.A1(n233), 
	.A0(\mem[3][2] ));
   AOI221XLM U238 (.Y(n214), 
	.C0(n211), 
	.B1(n235), 
	.B0(\mem[7][2] ), 
	.A1(n236), 
	.A0(\mem[5][2] ));
   AO22X1M U239 (.Y(n212), 
	.B1(n232), 
	.B0(\mem[0][2] ), 
	.A1(n233), 
	.A0(\mem[2][2] ));
   AOI221XLM U240 (.Y(n213), 
	.C0(n212), 
	.B1(n235), 
	.B0(\mem[6][2] ), 
	.A1(n236), 
	.A0(\mem[4][2] ));
   OAI22X1M U241 (.Y(data_out[2]), 
	.B1(n213), 
	.B0(N10), 
	.A1(n214), 
	.A0(n241));
   AO22X1M U242 (.Y(n215), 
	.B1(n232), 
	.B0(\mem[1][3] ), 
	.A1(n233), 
	.A0(\mem[3][3] ));
   AOI221XLM U243 (.Y(n218), 
	.C0(n215), 
	.B1(n235), 
	.B0(\mem[7][3] ), 
	.A1(n236), 
	.A0(\mem[5][3] ));
   AO22X1M U244 (.Y(n216), 
	.B1(n232), 
	.B0(\mem[0][3] ), 
	.A1(n233), 
	.A0(\mem[2][3] ));
   AOI221XLM U245 (.Y(n217), 
	.C0(n216), 
	.B1(n235), 
	.B0(\mem[6][3] ), 
	.A1(n236), 
	.A0(\mem[4][3] ));
   OAI22X1M U246 (.Y(data_out[3]), 
	.B1(n217), 
	.B0(N10), 
	.A1(n218), 
	.A0(n241));
   AO22X1M U247 (.Y(n219), 
	.B1(n232), 
	.B0(\mem[1][4] ), 
	.A1(n233), 
	.A0(\mem[3][4] ));
   AOI221XLM U248 (.Y(n222), 
	.C0(n219), 
	.B1(n235), 
	.B0(\mem[7][4] ), 
	.A1(n236), 
	.A0(\mem[5][4] ));
   AO22X1M U249 (.Y(n220), 
	.B1(n232), 
	.B0(\mem[0][4] ), 
	.A1(n233), 
	.A0(\mem[2][4] ));
   AOI221XLM U250 (.Y(n221), 
	.C0(n220), 
	.B1(n235), 
	.B0(\mem[6][4] ), 
	.A1(n236), 
	.A0(\mem[4][4] ));
   OAI22X1M U251 (.Y(data_out[4]), 
	.B1(n221), 
	.B0(N10), 
	.A1(n222), 
	.A0(n241));
   AO22X1M U252 (.Y(n223), 
	.B1(n232), 
	.B0(\mem[1][5] ), 
	.A1(n233), 
	.A0(\mem[3][5] ));
   AOI221XLM U253 (.Y(n226), 
	.C0(n223), 
	.B1(n235), 
	.B0(\mem[7][5] ), 
	.A1(n236), 
	.A0(\mem[5][5] ));
   AO22X1M U254 (.Y(n224), 
	.B1(n232), 
	.B0(\mem[0][5] ), 
	.A1(n233), 
	.A0(\mem[2][5] ));
   AOI221XLM U255 (.Y(n225), 
	.C0(n224), 
	.B1(n235), 
	.B0(\mem[6][5] ), 
	.A1(n236), 
	.A0(\mem[4][5] ));
   OAI22X1M U256 (.Y(data_out[5]), 
	.B1(n225), 
	.B0(N10), 
	.A1(n226), 
	.A0(n241));
   AO22X1M U257 (.Y(n227), 
	.B1(n232), 
	.B0(\mem[1][6] ), 
	.A1(n233), 
	.A0(\mem[3][6] ));
   AOI221XLM U258 (.Y(n230), 
	.C0(n227), 
	.B1(n235), 
	.B0(\mem[7][6] ), 
	.A1(n236), 
	.A0(\mem[5][6] ));
   AO22X1M U259 (.Y(n228), 
	.B1(n232), 
	.B0(\mem[0][6] ), 
	.A1(n233), 
	.A0(\mem[2][6] ));
   AOI221XLM U260 (.Y(n229), 
	.C0(n228), 
	.B1(n235), 
	.B0(\mem[6][6] ), 
	.A1(n236), 
	.A0(\mem[4][6] ));
   OAI22X1M U261 (.Y(data_out[6]), 
	.B1(n229), 
	.B0(N10), 
	.A1(n230), 
	.A0(n241));
   AO22X1M U262 (.Y(n231), 
	.B1(n232), 
	.B0(\mem[1][7] ), 
	.A1(n233), 
	.A0(\mem[3][7] ));
   AOI221XLM U263 (.Y(n238), 
	.C0(n231), 
	.B1(n235), 
	.B0(\mem[7][7] ), 
	.A1(n236), 
	.A0(\mem[5][7] ));
   AO22X1M U264 (.Y(n234), 
	.B1(n232), 
	.B0(\mem[0][7] ), 
	.A1(n233), 
	.A0(\mem[2][7] ));
   AOI221XLM U265 (.Y(n237), 
	.C0(n234), 
	.B1(n235), 
	.B0(\mem[6][7] ), 
	.A1(n236), 
	.A0(\mem[4][7] ));
   OAI22X1M U266 (.Y(data_out[7]), 
	.B1(n237), 
	.B0(N10), 
	.A1(n241), 
	.A0(n238));
   INVXLM U268 (.Y(n262), 
	.A(test_se));
   CLKINVX2M U269 (.Y(n263), 
	.A(n262));
   CLKINVX2M U270 (.Y(n264), 
	.A(n262));
   CLKINVX2M U271 (.Y(n265), 
	.A(n262));
   CLKINVX2M U272 (.Y(n266), 
	.A(n262));
   SDFFRHQX1M \mem_reg[7][1]  (.SI(\mem[7][0] ), 
	.SE(n264), 
	.RN(w_rst), 
	.Q(\mem[7][1] ), 
	.D(n86), 
	.CK(scan_func_ref_clk__L7_N12));
   INVXLM U2 (.Y(n1), 
	.A(\mem[7][1] ));
   INVX2M U3 (.Y(test_so1), 
	.A(n1));
endmodule

module b2g_WIDTH3_0 (
	B, 
	G);
   input [2:0] B;
   output [2:0] G;

   CLKXOR2X2M U1 (.Y(G[1]), 
	.B(B[1]), 
	.A(B[2]));
   CLKXOR2X2M U2 (.Y(G[0]), 
	.B(B[0]), 
	.A(B[1]));
   BUFX2M U3 (.Y(G[2]), 
	.A(B[2]));
endmodule

module async_fifo_write_pointer_DEPTH8_test_1 (
	w_rst, 
	wclk, 
	w_en, 
	r_ptr_sync, 
	w_addr, 
	w_ptr_gray, 
	full_flag, 
	test_si, 
	test_se, 
	FE_OFN4_d0_scan_func_rst, 
	_0_net_);
   input w_rst;
   input wclk;
   input w_en;
   input [3:0] r_ptr_sync;
   output [3:0] w_addr;
   output [3:0] w_ptr_gray;
   output full_flag;
   input test_si;
   input test_se;
   input FE_OFN4_d0_scan_func_rst;
   input _0_net_;

   // Internal wires
   wire n12;
   wire n15;
   wire n16;
   wire n17;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n27;
   wire n28;
   wire n29;
   wire [3:0] w_addr_c;
   wire [2:0] w_ptr_gray_c;

   SDFFRX1M \w_addr_reg[3]  (.SI(w_addr[2]), 
	.SE(test_se), 
	.RN(w_rst), 
	.QN(n12), 
	.Q(w_addr[3]), 
	.D(w_addr_c[3]), 
	.CK(wclk));
   SDFFRQX1M \w_addr_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(w_rst), 
	.Q(w_addr[0]), 
	.D(w_addr_c[0]), 
	.CK(wclk));
   SDFFRQX1M \w_ptr_gray_reg[3]  (.SI(w_ptr_gray[2]), 
	.SE(test_se), 
	.RN(w_rst), 
	.Q(w_ptr_gray[3]), 
	.D(w_addr_c[3]), 
	.CK(wclk));
   SDFFRQX1M \w_addr_reg[1]  (.SI(w_addr[0]), 
	.SE(test_se), 
	.RN(FE_OFN4_d0_scan_func_rst), 
	.Q(w_addr[1]), 
	.D(w_addr_c[1]), 
	.CK(wclk));
   SDFFRQX1M \w_addr_reg[2]  (.SI(w_addr[1]), 
	.SE(test_se), 
	.RN(FE_OFN4_d0_scan_func_rst), 
	.Q(w_addr[2]), 
	.D(w_addr_c[2]), 
	.CK(wclk));
   SDFFRQX1M \w_ptr_gray_reg[0]  (.SI(w_addr[3]), 
	.SE(test_se), 
	.RN(w_rst), 
	.Q(w_ptr_gray[0]), 
	.D(w_ptr_gray_c[0]), 
	.CK(wclk));
   SDFFRQX1M \w_ptr_gray_reg[2]  (.SI(w_ptr_gray[1]), 
	.SE(test_se), 
	.RN(w_rst), 
	.Q(w_ptr_gray[2]), 
	.D(w_ptr_gray_c[2]), 
	.CK(wclk));
   SDFFRQX1M \w_ptr_gray_reg[1]  (.SI(w_ptr_gray[0]), 
	.SE(test_se), 
	.RN(w_rst), 
	.Q(w_ptr_gray[1]), 
	.D(w_ptr_gray_c[1]), 
	.CK(wclk));
   OAI32X1M U19 (.Y(w_addr_c[2]), 
	.B1(n29), 
	.B0(n27), 
	.A2(n28), 
	.A1(w_addr[2]), 
	.A0(n19));
   INVX2M U20 (.Y(n27), 
	.A(n17));
   OAI32X1M U21 (.Y(w_addr_c[3]), 
	.B1(n12), 
	.B0(n16), 
	.A2(n29), 
	.A1(n28), 
	.A0(n15));
   NAND3X2M U22 (.Y(n15), 
	.C(w_addr[0]), 
	.B(n12), 
	.A(_0_net_));
   NOR2X2M U23 (.Y(n16), 
	.B(n29), 
	.A(n17));
   OAI22X1M U24 (.Y(w_addr_c[1]), 
	.B1(n19), 
	.B0(w_addr[1]), 
	.A1(n28), 
	.A0(n20));
   AND4X2M U25 (.Y(full_flag), 
	.D(n24), 
	.C(n23), 
	.B(n22), 
	.A(n21));
   XNOR2X2M U26 (.Y(n21), 
	.B(r_ptr_sync[1]), 
	.A(w_ptr_gray[1]));
   XNOR2X2M U27 (.Y(n22), 
	.B(r_ptr_sync[0]), 
	.A(w_ptr_gray[0]));
   CLKXOR2X2M U28 (.Y(n23), 
	.B(r_ptr_sync[2]), 
	.A(w_ptr_gray[2]));
   NAND2X2M U29 (.Y(n17), 
	.B(n20), 
	.A(w_addr[1]));
   NAND2X2M U30 (.Y(n19), 
	.B(_0_net_), 
	.A(w_addr[0]));
   AND2X2M U31 (.Y(n20), 
	.B(_0_net_), 
	.A(w_addr[0]));
   CLKXOR2X2M U32 (.Y(w_addr_c[0]), 
	.B(_0_net_), 
	.A(w_addr[0]));
   CLKXOR2X2M U33 (.Y(n24), 
	.B(r_ptr_sync[3]), 
	.A(w_ptr_gray[3]));
   INVX2M U34 (.Y(n28), 
	.A(w_addr[1]));
   INVX2M U35 (.Y(n29), 
	.A(w_addr[2]));
   b2g_WIDTH3_0 b2g_w (.B({ w_addr_c[2],
		w_addr_c[1],
		w_addr_c[0] }), 
	.G({ w_ptr_gray_c[2],
		w_ptr_gray_c[1],
		w_ptr_gray_c[0] }));
endmodule

module b2g_WIDTH3_1 (
	B, 
	G);
   input [2:0] B;
   output [2:0] G;

   CLKXOR2X2M U1 (.Y(G[1]), 
	.B(B[1]), 
	.A(B[2]));
   CLKXOR2X2M U2 (.Y(G[0]), 
	.B(B[0]), 
	.A(B[1]));
   BUFX2M U3 (.Y(G[2]), 
	.A(B[2]));
endmodule

module async_fifo_read_pointer_DEPTH8_test_1 (
	r_rst, 
	rclk, 
	r_en, 
	w_ptr_sync, 
	r_addr, 
	r_ptr_gray, 
	empty_flag, 
	test_si, 
	test_se);
   input r_rst;
   input rclk;
   input r_en;
   input [3:0] w_ptr_sync;
   output [3:0] r_addr;
   output [3:0] r_ptr_gray;
   output empty_flag;
   input test_si;
   input test_se;

   // Internal wires
   wire n12;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n1;
   wire n2;
   wire n11;
   wire [3:0] r_addr_c;
   wire [2:0] r_ptr_gray_c;

   SDFFRX1M \r_addr_reg[3]  (.SI(r_addr[2]), 
	.SE(test_se), 
	.RN(r_rst), 
	.QN(n12), 
	.Q(r_addr[3]), 
	.D(r_addr_c[3]), 
	.CK(rclk));
   SDFFRQX2M \r_ptr_gray_reg[0]  (.SI(r_addr[3]), 
	.SE(test_se), 
	.RN(r_rst), 
	.Q(r_ptr_gray[0]), 
	.D(r_ptr_gray_c[0]), 
	.CK(rclk));
   SDFFRQX2M \r_ptr_gray_reg[1]  (.SI(r_ptr_gray[0]), 
	.SE(test_se), 
	.RN(r_rst), 
	.Q(r_ptr_gray[1]), 
	.D(r_ptr_gray_c[1]), 
	.CK(rclk));
   SDFFRQX2M \r_ptr_gray_reg[2]  (.SI(r_ptr_gray[1]), 
	.SE(test_se), 
	.RN(r_rst), 
	.Q(r_ptr_gray[2]), 
	.D(r_ptr_gray_c[2]), 
	.CK(rclk));
   SDFFRQX2M \r_ptr_gray_reg[3]  (.SI(r_ptr_gray[2]), 
	.SE(test_se), 
	.RN(r_rst), 
	.Q(r_ptr_gray[3]), 
	.D(r_addr_c[3]), 
	.CK(rclk));
   SDFFRQX2M \r_addr_reg[2]  (.SI(r_addr[1]), 
	.SE(test_se), 
	.RN(r_rst), 
	.Q(r_addr[2]), 
	.D(r_addr_c[2]), 
	.CK(rclk));
   SDFFRQX2M \r_addr_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(r_rst), 
	.Q(r_addr[0]), 
	.D(r_addr_c[0]), 
	.CK(rclk));
   SDFFRQX2M \r_addr_reg[1]  (.SI(r_addr[0]), 
	.SE(test_se), 
	.RN(r_rst), 
	.Q(r_addr[1]), 
	.D(r_addr_c[1]), 
	.CK(rclk));
   OAI32X1M U11 (.Y(r_addr_c[2]), 
	.B1(n11), 
	.B0(n1), 
	.A2(n2), 
	.A1(r_addr[2]), 
	.A0(n19));
   INVX2M U12 (.Y(n1), 
	.A(n17));
   OAI32X1M U13 (.Y(r_addr_c[3]), 
	.B1(n12), 
	.B0(n16), 
	.A2(n11), 
	.A1(n2), 
	.A0(n15));
   NAND3X2M U14 (.Y(n15), 
	.C(r_addr[0]), 
	.B(n12), 
	.A(n18));
   NOR2X2M U15 (.Y(n16), 
	.B(n11), 
	.A(n17));
   OAI22X1M U16 (.Y(r_addr_c[1]), 
	.B1(n19), 
	.B0(r_addr[1]), 
	.A1(n2), 
	.A0(n20));
   NOR2BX2M U17 (.Y(n18), 
	.B(empty_flag), 
	.AN(r_en));
   XNOR2X2M U18 (.Y(n21), 
	.B(r_ptr_gray[1]), 
	.A(w_ptr_sync[1]));
   NAND2X2M U19 (.Y(n17), 
	.B(n20), 
	.A(r_addr[1]));
   AND4X2M U20 (.Y(empty_flag), 
	.D(n24), 
	.C(n23), 
	.B(n22), 
	.A(n21));
   XNOR2X2M U21 (.Y(n22), 
	.B(r_ptr_gray[0]), 
	.A(w_ptr_sync[0]));
   XNOR2X2M U22 (.Y(n24), 
	.B(r_ptr_gray[2]), 
	.A(w_ptr_sync[2]));
   XNOR2X2M U23 (.Y(n23), 
	.B(r_ptr_gray[3]), 
	.A(w_ptr_sync[3]));
   NAND2X2M U24 (.Y(n19), 
	.B(n18), 
	.A(r_addr[0]));
   INVX2M U25 (.Y(n2), 
	.A(r_addr[1]));
   AND2X2M U26 (.Y(n20), 
	.B(n18), 
	.A(r_addr[0]));
   CLKXOR2X2M U27 (.Y(r_addr_c[0]), 
	.B(n18), 
	.A(r_addr[0]));
   INVX2M U28 (.Y(n11), 
	.A(r_addr[2]));
   b2g_WIDTH3_1 b2g_r (.B({ r_addr_c[2],
		r_addr_c[1],
		r_addr_c[0] }), 
	.G({ r_ptr_gray_c[2],
		r_ptr_gray_c[1],
		r_ptr_gray_c[0] }));
endmodule

module synchronizer_2ff_WIDTH4_test_1 (
	clk, 
	reset, 
	in, 
	out, 
	test_si, 
	test_so, 
	test_se);
   input clk;
   input reset;
   input [3:0] in;
   output [3:0] out;
   input test_si;
   output test_so;
   input test_se;

   // Internal wires
   wire [3:0] unstable_out;

   assign test_so = unstable_out[3] ;

   SDFFRQX2M \out_reg[3]  (.SI(out[2]), 
	.SE(test_se), 
	.RN(reset), 
	.Q(out[3]), 
	.D(unstable_out[3]), 
	.CK(clk));
   SDFFRQX2M \out_reg[2]  (.SI(out[1]), 
	.SE(test_se), 
	.RN(reset), 
	.Q(out[2]), 
	.D(unstable_out[2]), 
	.CK(clk));
   SDFFRQX2M \out_reg[1]  (.SI(out[0]), 
	.SE(test_se), 
	.RN(reset), 
	.Q(out[1]), 
	.D(unstable_out[1]), 
	.CK(clk));
   SDFFRQX2M \out_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(reset), 
	.Q(out[0]), 
	.D(unstable_out[0]), 
	.CK(clk));
   SDFFRQX2M \unstable_out_reg[3]  (.SI(unstable_out[2]), 
	.SE(test_se), 
	.RN(reset), 
	.Q(unstable_out[3]), 
	.D(in[3]), 
	.CK(clk));
   SDFFRQX2M \unstable_out_reg[2]  (.SI(unstable_out[1]), 
	.SE(test_se), 
	.RN(reset), 
	.Q(unstable_out[2]), 
	.D(in[2]), 
	.CK(clk));
   SDFFRQX2M \unstable_out_reg[1]  (.SI(unstable_out[0]), 
	.SE(test_se), 
	.RN(reset), 
	.Q(unstable_out[1]), 
	.D(in[1]), 
	.CK(clk));
   SDFFRQX2M \unstable_out_reg[0]  (.SI(out[3]), 
	.SE(test_se), 
	.RN(reset), 
	.Q(unstable_out[0]), 
	.D(in[0]), 
	.CK(clk));
endmodule

module synchronizer_2ff_WIDTH4_test_0 (
	clk, 
	reset, 
	in, 
	out, 
	test_si, 
	test_so, 
	test_se, 
	scan_func_ref_clk__L7_N9);
   input clk;
   input reset;
   input [3:0] in;
   output [3:0] out;
   input test_si;
   output test_so;
   input test_se;
   input scan_func_ref_clk__L7_N9;

   // Internal wires
   wire [3:0] unstable_out;

   assign test_so = unstable_out[3] ;

   SDFFRHQX1M \unstable_out_reg[3]  (.SI(unstable_out[2]), 
	.SE(test_se), 
	.RN(reset), 
	.Q(unstable_out[3]), 
	.D(in[3]), 
	.CK(scan_func_ref_clk__L7_N9));
   SDFFRHQX1M \unstable_out_reg[2]  (.SI(unstable_out[1]), 
	.SE(test_se), 
	.RN(reset), 
	.Q(unstable_out[2]), 
	.D(in[2]), 
	.CK(scan_func_ref_clk__L7_N9));
   SDFFRHQX1M \unstable_out_reg[1]  (.SI(unstable_out[0]), 
	.SE(test_se), 
	.RN(reset), 
	.Q(unstable_out[1]), 
	.D(in[1]), 
	.CK(clk));
   SDFFRHQX1M \unstable_out_reg[0]  (.SI(out[3]), 
	.SE(test_se), 
	.RN(reset), 
	.Q(unstable_out[0]), 
	.D(in[0]), 
	.CK(clk));
   SDFFRQX1M \out_reg[3]  (.SI(out[2]), 
	.SE(test_se), 
	.RN(reset), 
	.Q(out[3]), 
	.D(unstable_out[3]), 
	.CK(clk));
   SDFFRQX1M \out_reg[2]  (.SI(out[1]), 
	.SE(test_se), 
	.RN(reset), 
	.Q(out[2]), 
	.D(unstable_out[2]), 
	.CK(clk));
   SDFFRQX1M \out_reg[1]  (.SI(out[0]), 
	.SE(test_se), 
	.RN(reset), 
	.Q(out[1]), 
	.D(unstable_out[1]), 
	.CK(clk));
   SDFFRQX1M \out_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(reset), 
	.Q(out[0]), 
	.D(unstable_out[0]), 
	.CK(clk));
endmodule

module ASYNC_FIFO_DATA_WIDTH8_DEPTH8_test_1 (
	wclk, 
	rclk, 
	w_rst, 
	r_rst, 
	wr_inc, 
	rd_inc, 
	f_data_in, 
	empty_flag, 
	full_flag, 
	f_data_out, 
	test_si2, 
	test_si1, 
	test_so2, 
	test_so1, 
	test_se, 
	FE_OFN4_d0_scan_func_rst, 
	scan_func_ref_clk__L7_N11, 
	scan_func_ref_clk__L7_N12, 
	scan_func_ref_clk__L7_N13, 
	scan_func_ref_clk__L7_N8, 
	scan_func_ref_clk__L7_N9);
   input wclk;
   input rclk;
   input w_rst;
   input r_rst;
   input wr_inc;
   input rd_inc;
   input [7:0] f_data_in;
   output empty_flag;
   output full_flag;
   output [7:0] f_data_out;
   input test_si2;
   input test_si1;
   output test_so2;
   output test_so1;
   input test_se;
   input FE_OFN4_d0_scan_func_rst;
   input scan_func_ref_clk__L7_N11;
   input scan_func_ref_clk__L7_N12;
   input scan_func_ref_clk__L7_N13;
   input scan_func_ref_clk__L7_N8;
   input scan_func_ref_clk__L7_N9;

   // Internal wires
   wire _0_net_;
   wire n3;
   wire n4;
   wire [3:0] w_addr;
   wire [3:0] r_addr;
   wire [3:0] r_ptr_sync;
   wire [3:0] w_ptr_gray;
   wire [3:0] w_ptr_sync;
   wire [3:0] r_ptr_gray;

   NOR2BX2M U1 (.Y(_0_net_), 
	.B(full_flag), 
	.AN(wr_inc));
   asyc_fifo_mem_DATA_WIDTH8_DEPTH8_test_1 u_asyc_fifo_mem (.w_rst(FE_OFN4_d0_scan_func_rst), 
	.wclk(wclk), 
	.data_in({ f_data_in[7],
		f_data_in[6],
		f_data_in[5],
		f_data_in[4],
		f_data_in[3],
		f_data_in[2],
		f_data_in[1],
		f_data_in[0] }), 
	.w_addr({ w_addr[3],
		w_addr[2],
		w_addr[1],
		w_addr[0] }), 
	.r_addr({ r_addr[3],
		r_addr[2],
		r_addr[1],
		r_addr[0] }), 
	.w_en(_0_net_), 
	.data_out({ f_data_out[7],
		f_data_out[6],
		f_data_out[5],
		f_data_out[4],
		f_data_out[3],
		f_data_out[2],
		f_data_out[1],
		f_data_out[0] }), 
	.test_si2(test_si2), 
	.test_si1(test_si1), 
	.test_so2(n4), 
	.test_so1(test_so1), 
	.test_se(test_se), 
	.scan_func_ref_clk__L7_N11(scan_func_ref_clk__L7_N11), 
	.scan_func_ref_clk__L7_N12(scan_func_ref_clk__L7_N12), 
	.scan_func_ref_clk__L7_N13(scan_func_ref_clk__L7_N13), 
	.scan_func_ref_clk__L7_N8(scan_func_ref_clk__L7_N8));
   async_fifo_write_pointer_DEPTH8_test_1 u_async_fifo_write_pointer (.w_rst(w_rst), 
	.wclk(scan_func_ref_clk__L7_N8), 
	.w_en(wr_inc), 
	.r_ptr_sync({ r_ptr_sync[3],
		r_ptr_sync[2],
		r_ptr_sync[1],
		r_ptr_sync[0] }), 
	.w_addr({ w_addr[3],
		w_addr[2],
		w_addr[1],
		w_addr[0] }), 
	.w_ptr_gray({ w_ptr_gray[3],
		w_ptr_gray[2],
		w_ptr_gray[1],
		w_ptr_gray[0] }), 
	.full_flag(full_flag), 
	.test_si(r_ptr_gray[3]), 
	.test_se(test_se), 
	.FE_OFN4_d0_scan_func_rst(FE_OFN4_d0_scan_func_rst), 
	._0_net_(_0_net_));
   async_fifo_read_pointer_DEPTH8_test_1 u_async_fifo_read_pointer (.r_rst(r_rst), 
	.rclk(rclk), 
	.r_en(rd_inc), 
	.w_ptr_sync({ w_ptr_sync[3],
		w_ptr_sync[2],
		w_ptr_sync[1],
		w_ptr_sync[0] }), 
	.r_addr({ r_addr[3],
		r_addr[2],
		r_addr[1],
		r_addr[0] }), 
	.r_ptr_gray({ r_ptr_gray[3],
		r_ptr_gray[2],
		r_ptr_gray[1],
		r_ptr_gray[0] }), 
	.empty_flag(empty_flag), 
	.test_si(n4), 
	.test_se(test_se));
   synchronizer_2ff_WIDTH4_test_1 u_w_synchronizer_2ff (.clk(rclk), 
	.reset(r_rst), 
	.in({ w_ptr_gray[3],
		w_ptr_gray[2],
		w_ptr_gray[1],
		w_ptr_gray[0] }), 
	.out({ w_ptr_sync[3],
		w_ptr_sync[2],
		w_ptr_sync[1],
		w_ptr_sync[0] }), 
	.test_si(n3), 
	.test_so(test_so2), 
	.test_se(test_se));
   synchronizer_2ff_WIDTH4_test_0 u_r_synchronizer_2ff (.clk(scan_func_ref_clk__L7_N8), 
	.reset(w_rst), 
	.in({ r_ptr_gray[3],
		r_ptr_gray[2],
		r_ptr_gray[1],
		r_ptr_gray[0] }), 
	.out({ r_ptr_sync[3],
		r_ptr_sync[2],
		r_ptr_sync[1],
		r_ptr_sync[0] }), 
	.test_si(w_ptr_gray[3]), 
	.test_so(n3), 
	.test_se(test_se), 
	.scan_func_ref_clk__L7_N9(scan_func_ref_clk__L7_N9));
endmodule

module pulse_gen_test_0 (
	clk, 
	rst_n, 
	lvl_sig, 
	pulse_sig, 
	test_si, 
	test_so, 
	test_se);
   input clk;
   input rst_n;
   input lvl_sig;
   output pulse_sig;
   input test_si;
   output test_so;
   input test_se;

   // Internal wires
   wire q;

   assign test_so = q ;

   SDFFRQX2M q_reg (.SI(test_si), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(q), 
	.D(lvl_sig), 
	.CK(clk));
   NOR2BX2M U4 (.Y(pulse_sig), 
	.B(q), 
	.AN(lvl_sig));
endmodule

module sys_ctrl_ADDR_WIDTH4_DATA_WIDTH8_FUN_WIDTH4_OUT_WIDTH16_test_1 (
	clk, 
	rst_n, 
	payload, 
	payload_valid, 
	addr, 
	wr_en, 
	rd_en, 
	wr_data, 
	rd_data, 
	rd_data_valid, 
	alu_fun, 
	alu_en, 
	alu_out_valid, 
	alu_out, 
	clk_div_en, 
	clk_en, 
	wr_inc, 
	f_data_in, 
	full_flag, 
	test_si, 
	test_so, 
	test_se, 
	scan_func_ref_clk__L7_N2);
   input clk;
   input rst_n;
   input [7:0] payload;
   input payload_valid;
   output [3:0] addr;
   output wr_en;
   output rd_en;
   output [7:0] wr_data;
   input [7:0] rd_data;
   input rd_data_valid;
   output [3:0] alu_fun;
   output alu_en;
   input alu_out_valid;
   input [15:0] alu_out;
   output clk_div_en;
   output clk_en;
   output wr_inc;
   output [7:0] f_data_in;
   input full_flag;
   input test_si;
   output test_so;
   input test_se;
   input scan_func_ref_clk__L7_N2;

   // Internal wires
   wire LTIE_LTIELO_NET;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire n49;
   wire n50;
   wire n51;
   wire n52;
   wire n53;
   wire n54;
   wire n55;
   wire n56;
   wire n57;
   wire n58;
   wire n59;
   wire n60;
   wire n61;
   wire n62;
   wire n63;
   wire n64;
   wire n65;
   wire n66;
   wire n67;
   wire n68;
   wire n69;
   wire n70;
   wire n71;
   wire n72;
   wire n73;
   wire n74;
   wire n75;
   wire n76;
   wire n82;
   wire n83;
   wire n84;
   wire n85;
   wire n86;
   wire n87;
   wire n88;
   wire n89;
   wire n90;
   wire n91;
   wire n92;
   wire n93;
   wire n94;
   wire n95;
   wire n98;
   wire n99;
   wire n100;
   wire [3:0] current_state;
   wire [3:0] next_state;

   TIELOM LTIE_LTIELO (.Y(LTIE_LTIELO_NET));
   SDFFRX1M \paylaod_addr_reg[0]  (.SI(current_state[3]), 
	.SE(test_se), 
	.RN(rst_n), 
	.QN(n12), 
	.Q(n100), 
	.D(n76), 
	.CK(clk));
   SDFFRX1M \paylaod_addr_reg[1]  (.SI(n100), 
	.SE(test_se), 
	.RN(rst_n), 
	.QN(n11), 
	.Q(n99), 
	.D(n73), 
	.CK(scan_func_ref_clk__L7_N2));
   SDFFRX1M \paylaod_addr_reg[2]  (.SI(n99), 
	.SE(test_se), 
	.RN(rst_n), 
	.QN(n10), 
	.Q(n98), 
	.D(n74), 
	.CK(scan_func_ref_clk__L7_N2));
   SDFFRX1M \paylaod_addr_reg[3]  (.SI(n98), 
	.SE(test_se), 
	.RN(rst_n), 
	.QN(n9), 
	.Q(test_so), 
	.D(n75), 
	.CK(clk));
   SDFFRQX1M \current_state_reg[3]  (.SI(current_state[2]), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(current_state[3]), 
	.D(next_state[3]), 
	.CK(clk));
   SDFFRQX1M \current_state_reg[2]  (.SI(current_state[1]), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(current_state[2]), 
	.D(next_state[2]), 
	.CK(clk));
   SDFFRQX1M \current_state_reg[1]  (.SI(current_state[0]), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(current_state[1]), 
	.D(next_state[1]), 
	.CK(scan_func_ref_clk__L7_N2));
   SDFFRQX1M \current_state_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(current_state[0]), 
	.D(next_state[0]), 
	.CK(scan_func_ref_clk__L7_N2));
   BUFX2M U13 (.Y(alu_fun[0]), 
	.A(payload[0]));
   NOR2X2M U18 (.Y(addr[1]), 
	.B(n11), 
	.A(n70));
   NOR3X2M U19 (.Y(rd_en), 
	.C(n94), 
	.B(current_state[1]), 
	.A(n40));
   NOR2X2M U20 (.Y(addr[2]), 
	.B(n10), 
	.A(n70));
   INVX2M U21 (.Y(alu_en), 
	.A(n62));
   NOR2X2M U22 (.Y(n62), 
	.B(n89), 
	.A(n55));
   INVX2M U23 (.Y(n90), 
	.A(n40));
   INVX2M U24 (.Y(n92), 
	.A(n59));
   INVX2M U25 (.Y(n88), 
	.A(n33));
   INVX2M U26 (.Y(n84), 
	.A(n60));
   NAND2X2M U27 (.Y(n40), 
	.B(n95), 
	.A(n91));
   NAND2X2M U28 (.Y(n59), 
	.B(n93), 
	.A(n94));
   NOR3X4M U30 (.Y(n55), 
	.C(n91), 
	.B(n59), 
	.A(n95));
   INVX2M U31 (.Y(n89), 
	.A(n31));
   NAND2X2M U32 (.Y(n33), 
	.B(n93), 
	.A(n49));
   INVX2M U33 (.Y(n83), 
	.A(full_flag));
   INVX2M U34 (.Y(n82), 
	.A(n32));
   NOR2X2M U35 (.Y(n60), 
	.B(n85), 
	.A(n48));
   NOR2X2M U36 (.Y(n37), 
	.B(n93), 
	.A(n48));
   OAI21X2M U37 (.Y(addr[0]), 
	.B0(n35), 
	.A1(n12), 
	.A0(n70));
   AND4X2M U38 (.Y(n70), 
	.D(n95), 
	.C(n48), 
	.B(n72), 
	.A(n71));
   OAI21X2M U39 (.Y(n72), 
	.B0(current_state[1]), 
	.A1(n94), 
	.A0(current_state[0]));
   NAND2X2M U40 (.Y(n71), 
	.B(n93), 
	.A(n90));
   NAND3X2M U41 (.Y(n48), 
	.C(current_state[0]), 
	.B(n95), 
	.A(n94));
   INVX2M U42 (.Y(n93), 
	.A(current_state[1]));
   NAND3X2M U43 (.Y(n35), 
	.C(current_state[1]), 
	.B(n90), 
	.A(current_state[2]));
   INVX2M U44 (.Y(n94), 
	.A(current_state[2]));
   NAND3X2M U45 (.Y(n31), 
	.C(current_state[3]), 
	.B(n91), 
	.A(n92));
   INVX2M U46 (.Y(n95), 
	.A(current_state[3]));
   INVX2M U47 (.Y(n91), 
	.A(current_state[0]));
   AOI211X2M U48 (.Y(n41), 
	.C0(n38), 
	.B0(n86), 
	.A1(n37), 
	.A0(n85));
   INVX2M U49 (.Y(n86), 
	.A(n53));
   NAND3BX2M U50 (.Y(n53), 
	.C(payload[0]), 
	.B(payload[4]), 
	.AN(n54));
   NOR3X2M U51 (.Y(n49), 
	.C(n91), 
	.B(current_state[3]), 
	.A(n94));
   OAI22X1M U52 (.Y(n38), 
	.B1(n51), 
	.B0(n50), 
	.A1(n29), 
	.A0(payload_valid));
   NAND3X2M U53 (.Y(n51), 
	.C(payload[4]), 
	.B(payload[6]), 
	.A(payload[0]));
   NAND4BX1M U54 (.Y(n50), 
	.D(n87), 
	.C(n52), 
	.B(payload[2]), 
	.AN(payload[5]));
   NOR2X2M U55 (.Y(addr[3]), 
	.B(n9), 
	.A(n70));
   OAI211X2M U56 (.Y(next_state[1]), 
	.C0(n42), 
	.B0(n41), 
	.A1(n84), 
	.A0(current_state[1]));
   AOI21X2M U57 (.Y(n42), 
	.B0(n43), 
	.A1(payload_valid), 
	.A0(n88));
   OAI31X1M U58 (.Y(n43), 
	.B0(n35), 
	.A2(n40), 
	.A1(payload_valid), 
	.A0(n93));
   AND4X2M U59 (.Y(n52), 
	.D(payload_valid), 
	.C(n58), 
	.B(payload[3]), 
	.A(payload[7]));
   NOR2X2M U60 (.Y(n58), 
	.B(n40), 
	.A(n59));
   OAI2BB1X2M U61 (.Y(f_data_in[0]), 
	.B0(n69), 
	.A1N(n89), 
	.A0N(alu_out[0]));
   AOI22X1M U62 (.Y(n69), 
	.B1(n55), 
	.B0(alu_out[8]), 
	.A1(n62), 
	.A0(rd_data[0]));
   OAI2BB1X2M U63 (.Y(f_data_in[1]), 
	.B0(n68), 
	.A1N(n89), 
	.A0N(alu_out[1]));
   AOI22X1M U64 (.Y(n68), 
	.B1(n55), 
	.B0(alu_out[9]), 
	.A1(n62), 
	.A0(rd_data[1]));
   OAI2BB1X2M U65 (.Y(f_data_in[2]), 
	.B0(n67), 
	.A1N(n89), 
	.A0N(alu_out[2]));
   AOI22X1M U66 (.Y(n67), 
	.B1(n55), 
	.B0(alu_out[10]), 
	.A1(n62), 
	.A0(rd_data[2]));
   OAI2BB1X2M U67 (.Y(f_data_in[3]), 
	.B0(n66), 
	.A1N(n89), 
	.A0N(alu_out[3]));
   AOI22X1M U68 (.Y(n66), 
	.B1(n55), 
	.B0(alu_out[11]), 
	.A1(n62), 
	.A0(rd_data[3]));
   OAI2BB1X2M U69 (.Y(f_data_in[4]), 
	.B0(n65), 
	.A1N(n89), 
	.A0N(alu_out[4]));
   AOI22X1M U70 (.Y(n65), 
	.B1(n55), 
	.B0(alu_out[12]), 
	.A1(n62), 
	.A0(rd_data[4]));
   OAI2BB1X2M U71 (.Y(f_data_in[5]), 
	.B0(n64), 
	.A1N(n89), 
	.A0N(alu_out[5]));
   AOI22X1M U72 (.Y(n64), 
	.B1(n55), 
	.B0(alu_out[13]), 
	.A1(n62), 
	.A0(rd_data[5]));
   OAI2BB1X2M U73 (.Y(f_data_in[6]), 
	.B0(n63), 
	.A1N(n89), 
	.A0N(alu_out[6]));
   AOI22X1M U74 (.Y(n63), 
	.B1(n55), 
	.B0(alu_out[14]), 
	.A1(n62), 
	.A0(rd_data[6]));
   OAI2BB1X2M U75 (.Y(f_data_in[7]), 
	.B0(n61), 
	.A1N(n89), 
	.A0N(alu_out[7]));
   AOI22X1M U76 (.Y(n61), 
	.B1(n55), 
	.B0(alu_out[15]), 
	.A1(n62), 
	.A0(rd_data[7]));
   NAND4BX1M U77 (.Y(next_state[0]), 
	.D(n46), 
	.C(n41), 
	.B(n45), 
	.AN(n44));
   AOI2BB1X2M U78 (.Y(n46), 
	.B0(n47), 
	.A1N(n85), 
	.A0N(n35));
   AOI22X1M U79 (.Y(n45), 
	.B1(n82), 
	.B0(n89), 
	.A1(n32), 
	.A0(n55));
   OAI31X1M U80 (.Y(n44), 
	.B0(n34), 
	.A2(n54), 
	.A1(payload[4]), 
	.A0(payload[0]));
   NAND2X2M U81 (.Y(n32), 
	.B(n83), 
	.A(alu_out_valid));
   INVX2M U82 (.Y(n85), 
	.A(payload_valid));
   NAND4X2M U83 (.Y(n54), 
	.D(n52), 
	.C(n57), 
	.B(payload[1]), 
	.A(payload[5]));
   NOR2X2M U84 (.Y(n57), 
	.B(payload[2]), 
	.A(payload[6]));
   NAND4X2M U85 (.Y(next_state[2]), 
	.D(n36), 
	.C(n35), 
	.B(n34), 
	.A(n33));
   AOI211X2M U86 (.Y(n36), 
	.C0(n39), 
	.B0(n38), 
	.A1(payload_valid), 
	.A0(n37));
   AOI21BX2M U87 (.Y(n39), 
	.B0N(rd_en), 
	.A1(n83), 
	.A0(rd_data_valid));
   INVX2M U88 (.Y(wr_inc), 
	.A(n27));
   AOI33X2M U89 (.Y(n27), 
	.B2(n82), 
	.B1(n92), 
	.B0(current_state[3]), 
	.A2(rd_en), 
	.A1(n83), 
	.A0(rd_data_valid));
   NOR2X2M U90 (.Y(wr_en), 
	.B(n85), 
	.A(n28));
   AOI21X2M U91 (.Y(n28), 
	.B0(n88), 
	.A1(n90), 
	.A0(current_state[1]));
   OAI22X1M U92 (.Y(n73), 
	.B1(n11), 
	.B0(n60), 
	.A1(n84), 
	.A0(n87));
   OAI211X2M U93 (.Y(next_state[3]), 
	.C0(n31), 
	.B0(n30), 
	.A1(n29), 
	.A0(n85));
   NAND3X2M U94 (.Y(n30), 
	.C(current_state[3]), 
	.B(n32), 
	.A(n92));
   NAND2X2M U95 (.Y(n29), 
	.B(current_state[1]), 
	.A(n49));
   AOI21X2M U96 (.Y(n47), 
	.B0(payload_valid), 
	.A1(n48), 
	.A0(n33));
   NAND4X2M U97 (.Y(n34), 
	.D(n56), 
	.C(payload[6]), 
	.B(n52), 
	.A(payload[2]));
   NOR4X1M U98 (.Y(n56), 
	.D(payload[0]), 
	.C(payload[1]), 
	.B(payload[4]), 
	.A(payload[5]));
   OAI2BB2X1M U99 (.Y(n75), 
	.B1(n9), 
	.B0(n60), 
	.A1N(n60), 
	.A0N(payload[3]));
   OAI2BB2X1M U100 (.Y(n74), 
	.B1(n10), 
	.B0(n60), 
	.A1N(n60), 
	.A0N(payload[2]));
   OAI2BB2X1M U101 (.Y(n76), 
	.B1(n12), 
	.B0(n60), 
	.A1N(n60), 
	.A0N(payload[0]));
   INVX2M U102 (.Y(n87), 
	.A(payload[1]));
   NAND2X2M U103 (.Y(clk_en), 
	.B(n62), 
	.A(n29));
   BUFX2M U104 (.Y(wr_data[3]), 
	.A(payload[3]));
   BUFX2M U105 (.Y(alu_fun[3]), 
	.A(payload[3]));
   BUFX2M U106 (.Y(wr_data[2]), 
	.A(payload[2]));
   BUFX2M U107 (.Y(alu_fun[2]), 
	.A(payload[2]));
   BUFX2M U108 (.Y(wr_data[1]), 
	.A(payload[1]));
   BUFX2M U111 (.Y(wr_data[7]), 
	.A(payload[7]));
   BUFX2M U112 (.Y(wr_data[6]), 
	.A(payload[6]));
   BUFX2M U113 (.Y(wr_data[5]), 
	.A(payload[5]));
   BUFX2M U114 (.Y(wr_data[4]), 
	.A(payload[4]));
   INVX2M U3 (.Y(clk_div_en), 
	.A(LTIE_LTIELO_NET));
endmodule

module bit_sync_NUM_STAGES2_BUS_WIDTH1_test_2 (
	clk, 
	rst_n, 
	async, 
	sync, 
	test_si, 
	test_se);
   input clk;
   input rst_n;
   input [0:0] async;
   output [0:0] sync;
   input test_si;
   input test_se;

   // Internal wires
   wire \ff[0] ;

   SDFFRHQX1M \ff_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(\ff[0] ), 
	.D(async[0]), 
	.CK(clk));
   SDFFRQX1M \ff_reg[1]  (.SI(\ff[0] ), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(sync[0]), 
	.D(\ff[0] ), 
	.CK(clk));
endmodule

module pulse_gen_test_1 (
	clk, 
	rst_n, 
	lvl_sig, 
	pulse_sig, 
	test_si, 
	test_so, 
	test_se);
   input clk;
   input rst_n;
   input lvl_sig;
   output pulse_sig;
   input test_si;
   output test_so;
   input test_se;

   // Internal wires
   wire q;

   assign test_so = q ;

   SDFFRQX1M q_reg (.SI(test_si), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(q), 
	.D(lvl_sig), 
	.CK(clk));
   NOR2BX2M U5 (.Y(pulse_sig), 
	.B(q), 
	.AN(lvl_sig));
endmodule

module data_sync_BUS_WIDTH8_test_1 (
	clk, 
	rst_n, 
	bus_enable, 
	unsync_bus, 
	sync_bus, 
	enable_pulse, 
	test_si2, 
	test_si1, 
	test_se, 
	FE_OFN3_d0_scan_func_rst);
   input clk;
   input rst_n;
   input bus_enable;
   input [7:0] unsync_bus;
   output [7:0] sync_bus;
   output enable_pulse;
   input test_si2;
   input test_si1;
   input test_se;
   input FE_OFN3_d0_scan_func_rst;

   // Internal wires
   wire bus_enable_sync;
   wire bus_enable_sync_pulse;
   wire N4;
   wire N5;
   wire N6;
   wire N7;
   wire N8;
   wire N9;
   wire N10;
   wire N11;
   wire n19;
   wire n21;

   SDFFRQX1M \sync_bus_reg[7]  (.SI(sync_bus[6]), 
	.SE(test_se), 
	.RN(FE_OFN3_d0_scan_func_rst), 
	.Q(sync_bus[7]), 
	.D(N11), 
	.CK(clk));
   SDFFRQX1M \sync_bus_reg[6]  (.SI(sync_bus[5]), 
	.SE(test_se), 
	.RN(FE_OFN3_d0_scan_func_rst), 
	.Q(sync_bus[6]), 
	.D(N10), 
	.CK(clk));
   SDFFRQX1M \sync_bus_reg[5]  (.SI(sync_bus[4]), 
	.SE(test_se), 
	.RN(FE_OFN3_d0_scan_func_rst), 
	.Q(sync_bus[5]), 
	.D(N9), 
	.CK(clk));
   SDFFRQX1M \sync_bus_reg[4]  (.SI(sync_bus[3]), 
	.SE(test_se), 
	.RN(FE_OFN3_d0_scan_func_rst), 
	.Q(sync_bus[4]), 
	.D(N8), 
	.CK(clk));
   SDFFRQX1M \sync_bus_reg[3]  (.SI(sync_bus[2]), 
	.SE(test_se), 
	.RN(FE_OFN3_d0_scan_func_rst), 
	.Q(sync_bus[3]), 
	.D(N7), 
	.CK(clk));
   SDFFRQX1M \sync_bus_reg[2]  (.SI(sync_bus[1]), 
	.SE(test_se), 
	.RN(FE_OFN3_d0_scan_func_rst), 
	.Q(sync_bus[2]), 
	.D(N6), 
	.CK(clk));
   SDFFRQX1M \sync_bus_reg[1]  (.SI(sync_bus[0]), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(sync_bus[1]), 
	.D(N5), 
	.CK(clk));
   SDFFRQX1M \sync_bus_reg[0]  (.SI(n21), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(sync_bus[0]), 
	.D(N4), 
	.CK(clk));
   INVX2M U21 (.Y(n19), 
	.A(bus_enable_sync_pulse));
   AO22X1M U22 (.Y(N4), 
	.B1(n19), 
	.B0(sync_bus[0]), 
	.A1(bus_enable_sync_pulse), 
	.A0(unsync_bus[0]));
   AO22X1M U23 (.Y(N5), 
	.B1(n19), 
	.B0(sync_bus[1]), 
	.A1(bus_enable_sync_pulse), 
	.A0(unsync_bus[1]));
   AO22X1M U24 (.Y(N6), 
	.B1(n19), 
	.B0(sync_bus[2]), 
	.A1(bus_enable_sync_pulse), 
	.A0(unsync_bus[2]));
   AO22X1M U25 (.Y(N7), 
	.B1(n19), 
	.B0(sync_bus[3]), 
	.A1(bus_enable_sync_pulse), 
	.A0(unsync_bus[3]));
   AO22X1M U26 (.Y(N8), 
	.B1(n19), 
	.B0(sync_bus[4]), 
	.A1(bus_enable_sync_pulse), 
	.A0(unsync_bus[4]));
   AO22X1M U27 (.Y(N9), 
	.B1(n19), 
	.B0(sync_bus[5]), 
	.A1(bus_enable_sync_pulse), 
	.A0(unsync_bus[5]));
   AO22X1M U28 (.Y(N10), 
	.B1(n19), 
	.B0(sync_bus[6]), 
	.A1(bus_enable_sync_pulse), 
	.A0(unsync_bus[6]));
   AO22X1M U29 (.Y(N11), 
	.B1(n19), 
	.B0(sync_bus[7]), 
	.A1(bus_enable_sync_pulse), 
	.A0(unsync_bus[7]));
   bit_sync_NUM_STAGES2_BUS_WIDTH1_test_2 bit_sync_inst (.clk(clk), 
	.rst_n(rst_n), 
	.async(bus_enable), 
	.sync(bus_enable_sync), 
	.test_si(test_si1), 
	.test_se(test_se));
   pulse_gen_test_1 pulse_gen_inst (.clk(clk), 
	.rst_n(rst_n), 
	.lvl_sig(bus_enable_sync), 
	.pulse_sig(bus_enable_sync_pulse), 
	.test_si(test_si2), 
	.test_so(n21), 
	.test_se(test_se));
   SDFFRHQX1M enable_pulse_reg (.SI(bus_enable_sync), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(enable_pulse), 
	.D(bus_enable_sync_pulse), 
	.CK(clk));
endmodule

