/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06-SP1
// Date      : Thu Oct  8 20:28:41 2026
/////////////////////////////////////////////////////////////


module bit_sync_NUM_STAGES2_BUS_WIDTH1_test_0 ( clk, rst_n, async, sync, 
        test_si, test_se );
  input [0:0] async;
  output [0:0] sync;
  input clk, rst_n, test_si, test_se;
  wire   \ff[0] ;

  SDFFRQX2M \ff_reg[1]  ( .D(\ff[0] ), .SI(\ff[0] ), .SE(test_se), .CK(clk), 
        .RN(rst_n), .Q(sync[0]) );
  SDFFRQX2M \ff_reg[0]  ( .D(async[0]), .SI(test_si), .SE(test_se), .CK(clk), 
        .RN(rst_n), .Q(\ff[0] ) );
endmodule


module rst_sync_test_0 ( rst, clk, sync_rst, test_si, test_se );
  input rst, clk, test_si, test_se;
  output sync_rst;


  bit_sync_NUM_STAGES2_BUS_WIDTH1_test_0 \genblk1.bit_sync_inst  ( .clk(clk), 
        .rst_n(rst), .async(1'b1), .sync(sync_rst), .test_si(test_si), 
        .test_se(test_se) );
endmodule


module bit_sync_NUM_STAGES2_BUS_WIDTH1_test_1 ( clk, rst_n, async, sync, 
        test_si, test_se );
  input [0:0] async;
  output [0:0] sync;
  input clk, rst_n, test_si, test_se;
  wire   \ff[0] ;

  SDFFRQX2M \ff_reg[1]  ( .D(\ff[0] ), .SI(\ff[0] ), .SE(test_se), .CK(clk), 
        .RN(rst_n), .Q(sync[0]) );
  SDFFRQX2M \ff_reg[0]  ( .D(async[0]), .SI(test_si), .SE(test_se), .CK(clk), 
        .RN(rst_n), .Q(\ff[0] ) );
endmodule


module rst_sync_test_1 ( rst, clk, sync_rst, test_si, test_se );
  input rst, clk, test_si, test_se;
  output sync_rst;


  bit_sync_NUM_STAGES2_BUS_WIDTH1_test_1 \genblk1.bit_sync_inst  ( .clk(clk), 
        .rst_n(rst), .async(1'b1), .sync(sync_rst), .test_si(test_si), 
        .test_se(test_se) );
endmodule


module div_mux ( tx_div_ratio, prescale, rx_div_ratio );
  input [7:0] tx_div_ratio;
  input [5:0] prescale;
  output [7:0] rx_div_ratio;
  wire   n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19,
         n20, n21, n22, n23;

  NOR4X1M U7 ( .A(n21), .B(prescale[2]), .C(prescale[3]), .D(prescale[4]), .Y(
        n13) );
  INVX2M U8 ( .A(n16), .Y(n20) );
  NOR4BX1M U9 ( .AN(tx_div_ratio[7]), .B(n5), .C(prescale[0]), .D(n23), .Y(
        rx_div_ratio[5]) );
  OR4X1M U10 ( .A(prescale[1]), .B(prescale[3]), .C(prescale[4]), .D(
        prescale[5]), .Y(n5) );
  NOR4X1M U11 ( .A(n22), .B(prescale[2]), .C(prescale[4]), .D(prescale[5]), 
        .Y(n8) );
  NOR4X1M U12 ( .A(n23), .B(prescale[3]), .C(prescale[4]), .D(prescale[5]), 
        .Y(n9) );
  OAI2B11X2M U13 ( .A1N(tx_div_ratio[4]), .A0(n16), .B0(n17), .C0(n18), .Y(
        rx_div_ratio[0]) );
  AOI21X2M U14 ( .A0(n13), .A1(tx_div_ratio[5]), .B0(n19), .Y(n17) );
  AOI221XLM U15 ( .A0(tx_div_ratio[3]), .A1(n8), .B0(tx_div_ratio[2]), .B1(n9), 
        .C0(n7), .Y(n18) );
  NOR4X1M U16 ( .A(n9), .B(n8), .C(n20), .D(n13), .Y(n19) );
  AOI21X2M U17 ( .A0(n14), .A1(n15), .B0(n7), .Y(rx_div_ratio[1]) );
  AOI22X1M U18 ( .A0(n13), .A1(tx_div_ratio[6]), .B0(tx_div_ratio[5]), .B1(n20), .Y(n15) );
  AOI22X1M U19 ( .A0(tx_div_ratio[4]), .A1(n8), .B0(tx_div_ratio[3]), .B1(n9), 
        .Y(n14) );
  AOI21X2M U20 ( .A0(n11), .A1(n12), .B0(n7), .Y(rx_div_ratio[2]) );
  AOI22X1M U21 ( .A0(n13), .A1(tx_div_ratio[7]), .B0(n20), .B1(tx_div_ratio[6]), .Y(n12) );
  AOI22X1M U22 ( .A0(tx_div_ratio[5]), .A1(n8), .B0(tx_div_ratio[4]), .B1(n9), 
        .Y(n11) );
  NAND4X2M U23 ( .A(prescale[4]), .B(n23), .C(n22), .D(n21), .Y(n16) );
  NOR2X2M U24 ( .A(n6), .B(n7), .Y(rx_div_ratio[4]) );
  AOI22X1M U25 ( .A0(n8), .A1(tx_div_ratio[7]), .B0(tx_div_ratio[6]), .B1(n9), 
        .Y(n6) );
  NOR2X2M U26 ( .A(n10), .B(n7), .Y(rx_div_ratio[3]) );
  AOI222X1M U27 ( .A0(tx_div_ratio[5]), .A1(n9), .B0(n20), .B1(tx_div_ratio[7]), .C0(tx_div_ratio[6]), .C1(n8), .Y(n10) );
  OR2X2M U28 ( .A(prescale[0]), .B(prescale[1]), .Y(n7) );
  INVX2M U29 ( .A(prescale[3]), .Y(n22) );
  INVX2M U30 ( .A(prescale[5]), .Y(n21) );
  INVX2M U31 ( .A(prescale[2]), .Y(n23) );
  INVX2M U3 ( .A(1'b1), .Y(rx_div_ratio[7]) );
  INVX2M U5 ( .A(1'b1), .Y(rx_div_ratio[6]) );
endmodule


module clk_div_RATIO_WIDTH8_0_DW01_inc_0 ( A, SUM );
  input [6:0] A;
  output [6:0] SUM;

  wire   [6:2] carry;

  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKXOR2X2M U1 ( .A(carry[6]), .B(A[6]), .Y(SUM[6]) );
  CLKINVX1M U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module clk_div_RATIO_WIDTH8_test_1 ( i_ref_clk, i_rst_n, i_clk_en, i_div_ratio, 
        o_div_clk, test_si, test_so, test_se );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst_n, i_clk_en, test_si, test_se;
  output o_div_clk, test_so;
  wire   N0, div_clk, odd, N8, N9, N10, N11, N12, N13, N14, N15, N16, N19, N24,
         N25, N26, N27, N28, N29, N30, N43, N44, N45, N46, N47, N48, N49, n19,
         n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n1, n2, n3, n4, n5,
         n6, n7, n17, n18, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47;
  wire   [6:0] counter;
  assign test_so = odd;

  SDFFRQX2M div_clk_reg ( .D(n29), .SI(counter[6]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(div_clk) );
  SDFFSQX2M odd_reg ( .D(n28), .SI(div_clk), .SE(test_se), .CK(i_ref_clk), 
        .SN(i_rst_n), .Q(odd) );
  SDFFRQX2M \counter_reg[6]  ( .D(N49), .SI(counter[5]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[6]) );
  SDFFRQX2M \counter_reg[0]  ( .D(N43), .SI(test_si), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[0]) );
  SDFFRQX2M \counter_reg[3]  ( .D(N46), .SI(counter[2]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[3]) );
  SDFFRQX2M \counter_reg[2]  ( .D(N45), .SI(counter[1]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[2]) );
  SDFFRQX2M \counter_reg[5]  ( .D(N48), .SI(counter[4]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[5]) );
  SDFFRQX2M \counter_reg[4]  ( .D(N47), .SI(counter[3]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[4]) );
  SDFFRQX2M \counter_reg[1]  ( .D(N44), .SI(counter[0]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[1]) );
  NAND2X2M U5 ( .A(n23), .B(N0), .Y(n24) );
  NOR2BX2M U6 ( .AN(N25), .B(n24), .Y(N44) );
  NOR2BX2M U7 ( .AN(N26), .B(n24), .Y(N45) );
  NOR2BX2M U13 ( .AN(N27), .B(n24), .Y(N46) );
  NOR2BX2M U16 ( .AN(N28), .B(n24), .Y(N47) );
  NOR2BX2M U17 ( .AN(N29), .B(n24), .Y(N48) );
  INVX2M U18 ( .A(n21), .Y(N0) );
  NAND2X2M U19 ( .A(i_div_ratio[0]), .B(n25), .Y(n20) );
  AO2B2X2M U20 ( .B0(N16), .B1(odd), .A0(N19), .A1N(odd), .Y(n25) );
  NOR2BX2M U21 ( .AN(N30), .B(n24), .Y(N49) );
  NOR2BX2M U22 ( .AN(N24), .B(n24), .Y(N43) );
  CLKXOR2X2M U23 ( .A(div_clk), .B(n22), .Y(n29) );
  NOR2X2M U24 ( .A(n23), .B(n21), .Y(n22) );
  CLKXOR2X2M U25 ( .A(odd), .B(n19), .Y(n28) );
  NOR2X2M U26 ( .A(n20), .B(n21), .Y(n19) );
  AOI2B1X1M U27 ( .A1N(i_div_ratio[0]), .A0(N16), .B0(n47), .Y(n23) );
  INVX2M U28 ( .A(n20), .Y(n47) );
  OAI2BB1X2M U29 ( .A0N(n26), .A1N(n27), .B0(i_clk_en), .Y(n21) );
  NOR3X2M U30 ( .A(i_div_ratio[1]), .B(i_div_ratio[3]), .C(i_div_ratio[2]), 
        .Y(n26) );
  NOR4X1M U31 ( .A(i_div_ratio[7]), .B(i_div_ratio[6]), .C(i_div_ratio[5]), 
        .D(i_div_ratio[4]), .Y(n27) );
  OR2X2M U32 ( .A(i_div_ratio[2]), .B(i_div_ratio[1]), .Y(n1) );
  MX2X2M U33 ( .A(i_ref_clk), .B(div_clk), .S0(N0), .Y(o_div_clk) );
  CLKINVX1M U34 ( .A(i_div_ratio[1]), .Y(N8) );
  OAI2BB1X1M U35 ( .A0N(i_div_ratio[1]), .A1N(i_div_ratio[2]), .B0(n1), .Y(N9)
         );
  OR2X1M U36 ( .A(n1), .B(i_div_ratio[3]), .Y(n2) );
  OAI2BB1X1M U37 ( .A0N(n1), .A1N(i_div_ratio[3]), .B0(n2), .Y(N10) );
  OR2X1M U38 ( .A(n2), .B(i_div_ratio[4]), .Y(n3) );
  OAI2BB1X1M U39 ( .A0N(n2), .A1N(i_div_ratio[4]), .B0(n3), .Y(N11) );
  OR2X1M U40 ( .A(n3), .B(i_div_ratio[5]), .Y(n4) );
  OAI2BB1X1M U41 ( .A0N(n3), .A1N(i_div_ratio[5]), .B0(n4), .Y(N12) );
  XNOR2X1M U42 ( .A(i_div_ratio[6]), .B(n4), .Y(N13) );
  NOR3X1M U43 ( .A(i_div_ratio[6]), .B(i_div_ratio[7]), .C(n4), .Y(N15) );
  OAI21X1M U44 ( .A0(i_div_ratio[6]), .A1(n4), .B0(i_div_ratio[7]), .Y(n5) );
  NAND2BX1M U45 ( .AN(N15), .B(n5), .Y(N14) );
  NOR2BX1M U46 ( .AN(N8), .B(counter[0]), .Y(n6) );
  OAI2B2X1M U47 ( .A1N(counter[1]), .A0(n6), .B0(N9), .B1(n6), .Y(n30) );
  XNOR2X1M U48 ( .A(N10), .B(counter[2]), .Y(n18) );
  NOR2BX1M U49 ( .AN(counter[0]), .B(N8), .Y(n7) );
  OAI2B2X1M U50 ( .A1N(N9), .A0(n7), .B0(counter[1]), .B1(n7), .Y(n17) );
  NAND4BX1M U51 ( .AN(N15), .B(n30), .C(n18), .D(n17), .Y(n36) );
  XNOR2X1M U52 ( .A(N14), .B(counter[6]), .Y(n34) );
  XNOR2X1M U53 ( .A(N13), .B(counter[5]), .Y(n33) );
  XNOR2X1M U54 ( .A(N12), .B(counter[4]), .Y(n32) );
  XNOR2X1M U55 ( .A(N11), .B(counter[3]), .Y(n31) );
  NAND4X1M U56 ( .A(n34), .B(n33), .C(n32), .D(n31), .Y(n35) );
  NOR2X1M U57 ( .A(n36), .B(n35), .Y(N16) );
  XNOR2X1M U58 ( .A(i_div_ratio[4]), .B(counter[3]), .Y(n42) );
  XNOR2X1M U59 ( .A(i_div_ratio[3]), .B(counter[2]), .Y(n41) );
  NOR2BX1M U60 ( .AN(i_div_ratio[1]), .B(counter[0]), .Y(n37) );
  OAI2B2X1M U61 ( .A1N(counter[1]), .A0(n37), .B0(i_div_ratio[2]), .B1(n37), 
        .Y(n40) );
  NOR2BX1M U62 ( .AN(counter[0]), .B(i_div_ratio[1]), .Y(n38) );
  OAI2B2X1M U63 ( .A1N(i_div_ratio[2]), .A0(n38), .B0(counter[1]), .B1(n38), 
        .Y(n39) );
  NAND4X1M U64 ( .A(n42), .B(n41), .C(n40), .D(n39), .Y(n46) );
  CLKXOR2X2M U65 ( .A(i_div_ratio[7]), .B(counter[6]), .Y(n45) );
  CLKXOR2X2M U66 ( .A(i_div_ratio[5]), .B(counter[4]), .Y(n44) );
  CLKXOR2X2M U67 ( .A(i_div_ratio[6]), .B(counter[5]), .Y(n43) );
  NOR4X1M U68 ( .A(n46), .B(n45), .C(n44), .D(n43), .Y(N19) );
  clk_div_RATIO_WIDTH8_0_DW01_inc_0 add_46 ( .A(counter), .SUM({N30, N29, N28, 
        N27, N26, N25, N24}) );
endmodule


module clk_div_RATIO_WIDTH8_1_DW01_inc_0 ( A, SUM );
  input [6:0] A;
  output [6:0] SUM;

  wire   [6:2] carry;

  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKXOR2X2M U1 ( .A(carry[6]), .B(A[6]), .Y(SUM[6]) );
  CLKINVX1M U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module clk_div_RATIO_WIDTH8_test_0 ( i_ref_clk, i_rst_n, i_clk_en, i_div_ratio, 
        o_div_clk, test_si, test_so, test_se );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst_n, i_clk_en, test_si, test_se;
  output o_div_clk, test_so;
  wire   N0, div_clk, odd, N8, N9, N10, N11, N12, N13, N14, N15, N16, N19, N24,
         N25, N26, N27, N28, N29, N30, N43, N44, N45, N46, N47, N48, N49, n1,
         n2, n3, n4, n5, n6, n7, n17, n18, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51, n52, n53, n54, n55, n56, n57, n58;
  wire   [6:0] counter;
  assign test_so = odd;

  SDFFRQX2M div_clk_reg ( .D(n48), .SI(counter[6]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(div_clk) );
  SDFFSQX2M odd_reg ( .D(n49), .SI(div_clk), .SE(test_se), .CK(i_ref_clk), 
        .SN(i_rst_n), .Q(odd) );
  SDFFRQX2M \counter_reg[6]  ( .D(N49), .SI(counter[5]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[6]) );
  SDFFRQX2M \counter_reg[0]  ( .D(N43), .SI(test_si), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[0]) );
  SDFFRQX2M \counter_reg[3]  ( .D(N46), .SI(counter[2]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[3]) );
  SDFFRQX2M \counter_reg[2]  ( .D(N45), .SI(counter[1]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[2]) );
  SDFFRQX2M \counter_reg[5]  ( .D(N48), .SI(counter[4]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[5]) );
  SDFFRQX2M \counter_reg[4]  ( .D(N47), .SI(counter[3]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[4]) );
  SDFFRQX2M \counter_reg[1]  ( .D(N44), .SI(counter[0]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[1]) );
  AOI2B1X1M U5 ( .A1N(i_div_ratio[0]), .A0(N16), .B0(n47), .Y(n54) );
  INVX2M U6 ( .A(n57), .Y(n47) );
  NAND2X2M U7 ( .A(n54), .B(N0), .Y(n53) );
  NOR2BX2M U13 ( .AN(N25), .B(n53), .Y(N44) );
  NOR2BX2M U16 ( .AN(N26), .B(n53), .Y(N45) );
  NOR2BX2M U17 ( .AN(N27), .B(n53), .Y(N46) );
  NOR2BX2M U18 ( .AN(N28), .B(n53), .Y(N47) );
  NOR2BX2M U19 ( .AN(N29), .B(n53), .Y(N48) );
  OR2X2M U20 ( .A(i_div_ratio[2]), .B(i_div_ratio[1]), .Y(n1) );
  INVX2M U21 ( .A(n56), .Y(N0) );
  NAND2X2M U22 ( .A(i_div_ratio[0]), .B(n52), .Y(n57) );
  AO2B2X2M U23 ( .B0(N16), .B1(odd), .A0(N19), .A1N(odd), .Y(n52) );
  CLKXOR2X2M U24 ( .A(odd), .B(n58), .Y(n49) );
  NOR2X2M U25 ( .A(n57), .B(n56), .Y(n58) );
  NOR2BX2M U26 ( .AN(N30), .B(n53), .Y(N49) );
  NOR2BX2M U27 ( .AN(N24), .B(n53), .Y(N43) );
  CLKXOR2X2M U28 ( .A(div_clk), .B(n55), .Y(n48) );
  NOR2X2M U29 ( .A(n54), .B(n56), .Y(n55) );
  OAI2BB1X2M U30 ( .A0N(n51), .A1N(n50), .B0(i_clk_en), .Y(n56) );
  NOR3X2M U31 ( .A(i_div_ratio[1]), .B(i_div_ratio[3]), .C(i_div_ratio[2]), 
        .Y(n51) );
  NOR4X1M U32 ( .A(i_div_ratio[7]), .B(i_div_ratio[6]), .C(i_div_ratio[5]), 
        .D(i_div_ratio[4]), .Y(n50) );
  MX2X2M U33 ( .A(i_ref_clk), .B(div_clk), .S0(N0), .Y(o_div_clk) );
  CLKINVX1M U34 ( .A(i_div_ratio[1]), .Y(N8) );
  OAI2BB1X1M U35 ( .A0N(i_div_ratio[1]), .A1N(i_div_ratio[2]), .B0(n1), .Y(N9)
         );
  OR2X1M U36 ( .A(n1), .B(i_div_ratio[3]), .Y(n2) );
  OAI2BB1X1M U37 ( .A0N(n1), .A1N(i_div_ratio[3]), .B0(n2), .Y(N10) );
  OR2X1M U38 ( .A(n2), .B(i_div_ratio[4]), .Y(n3) );
  OAI2BB1X1M U39 ( .A0N(n2), .A1N(i_div_ratio[4]), .B0(n3), .Y(N11) );
  OR2X1M U40 ( .A(n3), .B(i_div_ratio[5]), .Y(n4) );
  OAI2BB1X1M U41 ( .A0N(n3), .A1N(i_div_ratio[5]), .B0(n4), .Y(N12) );
  XNOR2X1M U42 ( .A(i_div_ratio[6]), .B(n4), .Y(N13) );
  NOR3X1M U43 ( .A(i_div_ratio[6]), .B(i_div_ratio[7]), .C(n4), .Y(N15) );
  OAI21X1M U44 ( .A0(i_div_ratio[6]), .A1(n4), .B0(i_div_ratio[7]), .Y(n5) );
  NAND2BX1M U45 ( .AN(N15), .B(n5), .Y(N14) );
  NOR2BX1M U46 ( .AN(N8), .B(counter[0]), .Y(n6) );
  OAI2B2X1M U47 ( .A1N(counter[1]), .A0(n6), .B0(N9), .B1(n6), .Y(n30) );
  XNOR2X1M U48 ( .A(N10), .B(counter[2]), .Y(n18) );
  NOR2BX1M U49 ( .AN(counter[0]), .B(N8), .Y(n7) );
  OAI2B2X1M U50 ( .A1N(N9), .A0(n7), .B0(counter[1]), .B1(n7), .Y(n17) );
  NAND4BX1M U51 ( .AN(N15), .B(n30), .C(n18), .D(n17), .Y(n36) );
  XNOR2X1M U52 ( .A(N14), .B(counter[6]), .Y(n34) );
  XNOR2X1M U53 ( .A(N13), .B(counter[5]), .Y(n33) );
  XNOR2X1M U54 ( .A(N12), .B(counter[4]), .Y(n32) );
  XNOR2X1M U55 ( .A(N11), .B(counter[3]), .Y(n31) );
  NAND4X1M U56 ( .A(n34), .B(n33), .C(n32), .D(n31), .Y(n35) );
  NOR2X1M U57 ( .A(n36), .B(n35), .Y(N16) );
  XNOR2X1M U58 ( .A(i_div_ratio[4]), .B(counter[3]), .Y(n42) );
  XNOR2X1M U59 ( .A(i_div_ratio[3]), .B(counter[2]), .Y(n41) );
  NOR2BX1M U60 ( .AN(i_div_ratio[1]), .B(counter[0]), .Y(n37) );
  OAI2B2X1M U61 ( .A1N(counter[1]), .A0(n37), .B0(i_div_ratio[2]), .B1(n37), 
        .Y(n40) );
  NOR2BX1M U62 ( .AN(counter[0]), .B(i_div_ratio[1]), .Y(n38) );
  OAI2B2X1M U63 ( .A1N(i_div_ratio[2]), .A0(n38), .B0(counter[1]), .B1(n38), 
        .Y(n39) );
  NAND4X1M U64 ( .A(n42), .B(n41), .C(n40), .D(n39), .Y(n46) );
  CLKXOR2X2M U65 ( .A(i_div_ratio[7]), .B(counter[6]), .Y(n45) );
  CLKXOR2X2M U66 ( .A(i_div_ratio[5]), .B(counter[4]), .Y(n44) );
  CLKXOR2X2M U67 ( .A(i_div_ratio[6]), .B(counter[5]), .Y(n43) );
  NOR4X1M U68 ( .A(n46), .B(n45), .C(n44), .D(n43), .Y(N19) );
  clk_div_RATIO_WIDTH8_1_DW01_inc_0 add_46 ( .A(counter), .SUM({N30, N29, N28, 
        N27, N26, N25, N24}) );
endmodule


module tx_controller_test_1 ( clk, rst_n, data_valid, par_en, ser_done, 
        mux_sel, ser_en, latch_data, busy, test_si, test_so, test_se );
  output [1:0] mux_sel;
  input clk, rst_n, data_valid, par_en, ser_done, test_si, test_se;
  output ser_en, latch_data, busy, test_so;
  wire   par_en_latched, n7, n9, n10, n11, n12, n13, n14, n15, n5, n6, n8, n17
;
  wire   [2:0] current_state;
  wire   [2:0] next_state;
  assign test_so = par_en_latched;

  SDFFRQX2M par_en_latched_reg ( .D(n15), .SI(n17), .SE(test_se), .CK(clk), 
        .RN(rst_n), .Q(par_en_latched) );
  SDFFRQX2M \current_state_reg[0]  ( .D(n5), .SI(test_si), .SE(test_se), .CK(
        clk), .RN(rst_n), .Q(current_state[0]) );
  SDFFRQX2M \current_state_reg[1]  ( .D(next_state[1]), .SI(current_state[0]), 
        .SE(test_se), .CK(clk), .RN(rst_n), .Q(current_state[1]) );
  SDFFRX1M \current_state_reg[2]  ( .D(next_state[2]), .SI(current_state[1]), 
        .SE(test_se), .CK(clk), .RN(rst_n), .Q(n17), .QN(n7) );
  NOR2BX2M U7 ( .AN(data_valid), .B(n14), .Y(latch_data) );
  NOR2X2M U8 ( .A(n8), .B(n13), .Y(ser_en) );
  OAI2B11X2M U9 ( .A1N(current_state[0]), .A0(n8), .B0(n14), .C0(n7), .Y(
        mux_sel[0]) );
  INVX2M U10 ( .A(n10), .Y(mux_sel[1]) );
  NAND2X2M U11 ( .A(current_state[1]), .B(n7), .Y(n10) );
  OR2X2M U12 ( .A(current_state[0]), .B(current_state[1]), .Y(n14) );
  INVX2M U13 ( .A(current_state[1]), .Y(n8) );
  OAI32X1M U14 ( .A0(n10), .A1(current_state[0]), .A2(n9), .B0(
        current_state[1]), .B1(n11), .Y(next_state[1]) );
  OAI211X2M U15 ( .A0(n14), .A1(n7), .B0(n11), .C0(n10), .Y(busy) );
  NAND2X2M U16 ( .A(current_state[0]), .B(n7), .Y(n11) );
  NAND2X2M U17 ( .A(n11), .B(n7), .Y(n13) );
  NOR2BX2M U18 ( .AN(ser_done), .B(par_en_latched), .Y(n9) );
  AOI2BB1X2M U19 ( .A0N(current_state[0]), .A1N(n9), .B0(n10), .Y(
        next_state[2]) );
  INVX2M U20 ( .A(n12), .Y(n5) );
  AOI33X2M U21 ( .A0(par_en_latched), .A1(ser_done), .A2(ser_en), .B0(
        data_valid), .B1(n8), .B2(n6), .Y(n12) );
  INVX2M U22 ( .A(n13), .Y(n6) );
  AO2B2X2M U23 ( .B0(par_en), .B1(latch_data), .A0(par_en_latched), .A1N(
        latch_data), .Y(n15) );
endmodule


module counter_test_1 ( clk, rst_n, en, high, low, test_si, test_so, test_se
 );
  input clk, rst_n, en, test_si, test_se;
  output high, low, test_so;
  wire   N9, N10, N11, n7, n8, n5, n6, n9;
  wire   [3:0] c;
  assign test_so = c[2];

  SDFFRQX2M \c_reg[2]  ( .D(N11), .SI(c[1]), .SE(test_se), .CK(clk), .RN(rst_n), .Q(c[2]) );
  SDFFRQX2M \c_reg[1]  ( .D(N10), .SI(c[0]), .SE(test_se), .CK(clk), .RN(rst_n), .Q(c[1]) );
  SDFFRQX2M \c_reg[0]  ( .D(N9), .SI(test_si), .SE(test_se), .CK(clk), .RN(
        rst_n), .Q(c[0]) );
  AND3X2M U4 ( .A(n6), .B(n9), .C(n5), .Y(low) );
  NAND2BX2M U7 ( .AN(high), .B(en), .Y(n7) );
  NOR3X2M U8 ( .A(n6), .B(n5), .C(n9), .Y(high) );
  OAI32X1M U9 ( .A0(n7), .A1(n5), .A2(n6), .B0(n9), .B1(n7), .Y(N11) );
  INVX2M U10 ( .A(c[0]), .Y(n5) );
  INVX2M U11 ( .A(c[1]), .Y(n6) );
  INVX2M U12 ( .A(c[2]), .Y(n9) );
  NOR2X2M U13 ( .A(c[0]), .B(n7), .Y(N9) );
  NOR2X2M U14 ( .A(n8), .B(n7), .Y(N10) );
  XNOR2X2M U15 ( .A(c[0]), .B(c[1]), .Y(n8) );
endmodule


module serializer_test_1 ( clk, rst_n, p_data, ser_en, latch_data, ser_done, 
        ser_data, test_si, test_so, test_se );
  input [7:0] p_data;
  input clk, rst_n, ser_en, latch_data, test_si, test_se;
  output ser_done, ser_data, test_so;
  wire   n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n2, n4, n5;
  wire   [7:1] data;
  assign test_so = data[7];

  SDFFRQX2M \data_reg[6]  ( .D(n21), .SI(data[5]), .SE(n5), .CK(clk), .RN(
        rst_n), .Q(data[6]) );
  SDFFRQX2M \data_reg[5]  ( .D(n22), .SI(data[4]), .SE(n5), .CK(clk), .RN(
        rst_n), .Q(data[5]) );
  SDFFRQX2M \data_reg[4]  ( .D(n23), .SI(data[3]), .SE(n5), .CK(clk), .RN(
        rst_n), .Q(data[4]) );
  SDFFRQX2M \data_reg[3]  ( .D(n24), .SI(data[2]), .SE(n5), .CK(clk), .RN(
        rst_n), .Q(data[3]) );
  SDFFRQX2M \data_reg[2]  ( .D(n25), .SI(data[1]), .SE(n5), .CK(clk), .RN(
        rst_n), .Q(data[2]) );
  SDFFRQX2M \data_reg[1]  ( .D(n26), .SI(ser_data), .SE(n5), .CK(clk), .RN(
        rst_n), .Q(data[1]) );
  SDFFRQX2M \data_reg[7]  ( .D(n20), .SI(data[6]), .SE(n5), .CK(clk), .RN(
        rst_n), .Q(data[7]) );
  SDFFRQX2M \data_reg[0]  ( .D(n19), .SI(n2), .SE(n5), .CK(clk), .RN(rst_n), 
        .Q(ser_data) );
  NOR2X2M U11 ( .A(n11), .B(n12), .Y(n9) );
  NOR2BX2M U12 ( .AN(ser_en), .B(ser_done), .Y(n11) );
  NOR2BX2M U13 ( .AN(latch_data), .B(n11), .Y(n12) );
  OAI2BB1X2M U14 ( .A0N(ser_data), .A1N(n9), .B0(n10), .Y(n19) );
  AOI22X1M U15 ( .A0(data[1]), .A1(n11), .B0(p_data[0]), .B1(n12), .Y(n10) );
  OAI2BB1X2M U16 ( .A0N(data[1]), .A1N(n9), .B0(n18), .Y(n26) );
  AOI22X1M U17 ( .A0(data[2]), .A1(n11), .B0(p_data[1]), .B1(n12), .Y(n18) );
  OAI2BB1X2M U18 ( .A0N(n9), .A1N(data[2]), .B0(n17), .Y(n25) );
  AOI22X1M U19 ( .A0(data[3]), .A1(n11), .B0(p_data[2]), .B1(n12), .Y(n17) );
  OAI2BB1X2M U20 ( .A0N(n9), .A1N(data[3]), .B0(n16), .Y(n24) );
  AOI22X1M U21 ( .A0(data[4]), .A1(n11), .B0(p_data[3]), .B1(n12), .Y(n16) );
  OAI2BB1X2M U22 ( .A0N(n9), .A1N(data[4]), .B0(n15), .Y(n23) );
  AOI22X1M U23 ( .A0(data[5]), .A1(n11), .B0(p_data[4]), .B1(n12), .Y(n15) );
  OAI2BB1X2M U24 ( .A0N(n9), .A1N(data[5]), .B0(n14), .Y(n22) );
  AOI22X1M U25 ( .A0(data[6]), .A1(n11), .B0(p_data[5]), .B1(n12), .Y(n14) );
  OAI2BB1X2M U26 ( .A0N(n9), .A1N(data[6]), .B0(n13), .Y(n21) );
  AOI22X1M U27 ( .A0(data[7]), .A1(n11), .B0(p_data[6]), .B1(n12), .Y(n13) );
  AO22X1M U28 ( .A0(n9), .A1(data[7]), .B0(p_data[7]), .B1(n12), .Y(n20) );
  INVXLM U29 ( .A(test_se), .Y(n4) );
  INVXLM U30 ( .A(n4), .Y(n5) );
  counter_test_1 counter_inst ( .clk(clk), .rst_n(rst_n), .en(ser_en), .high(
        ser_done), .test_si(test_si), .test_so(n2), .test_se(n5) );
endmodule


module parity_calc_test_1 ( clk, rst_n, p_data, latch_data, par_typ, par_bit, 
        test_si, test_so, test_se );
  input [7:0] p_data;
  input clk, rst_n, latch_data, par_typ, test_si, test_se;
  output par_bit, test_so;
  wire   par_typ_latched, n1, n2, n3, n4, n6, n8, n10, n12, n14, n16, n18, n20,
         n22, n9, n11;
  wire   [7:0] p_data_latched;
  assign test_so = par_typ_latched;

  SDFFRQX2M \p_data_latched_reg[5]  ( .D(n16), .SI(p_data_latched[4]), .SE(n11), .CK(clk), .RN(rst_n), .Q(p_data_latched[5]) );
  SDFFRQX2M \p_data_latched_reg[1]  ( .D(n8), .SI(p_data_latched[0]), .SE(n11), 
        .CK(clk), .RN(rst_n), .Q(p_data_latched[1]) );
  SDFFRQX2M \p_data_latched_reg[4]  ( .D(n14), .SI(p_data_latched[3]), .SE(n11), .CK(clk), .RN(rst_n), .Q(p_data_latched[4]) );
  SDFFRQX2M \p_data_latched_reg[0]  ( .D(n6), .SI(test_si), .SE(n11), .CK(clk), 
        .RN(rst_n), .Q(p_data_latched[0]) );
  SDFFRQX2M par_typ_latched_reg ( .D(n22), .SI(p_data_latched[7]), .SE(n11), 
        .CK(clk), .RN(rst_n), .Q(par_typ_latched) );
  SDFFRQX2M \p_data_latched_reg[6]  ( .D(n18), .SI(p_data_latched[5]), .SE(n11), .CK(clk), .RN(rst_n), .Q(p_data_latched[6]) );
  SDFFRQX2M \p_data_latched_reg[2]  ( .D(n10), .SI(p_data_latched[1]), .SE(n11), .CK(clk), .RN(rst_n), .Q(p_data_latched[2]) );
  SDFFRQX2M \p_data_latched_reg[7]  ( .D(n20), .SI(p_data_latched[6]), .SE(n11), .CK(clk), .RN(rst_n), .Q(p_data_latched[7]) );
  SDFFRQX2M \p_data_latched_reg[3]  ( .D(n12), .SI(p_data_latched[2]), .SE(n11), .CK(clk), .RN(rst_n), .Q(p_data_latched[3]) );
  XOR3XLM U2 ( .A(n1), .B(n2), .C(par_typ_latched), .Y(par_bit) );
  XOR3XLM U3 ( .A(p_data_latched[5]), .B(p_data_latched[4]), .C(n4), .Y(n1) );
  XOR3XLM U4 ( .A(p_data_latched[1]), .B(p_data_latched[0]), .C(n3), .Y(n2) );
  CLKXOR2X2M U5 ( .A(p_data_latched[7]), .B(p_data_latched[6]), .Y(n4) );
  CLKXOR2X2M U6 ( .A(p_data_latched[3]), .B(p_data_latched[2]), .Y(n3) );
  AO2B2X2M U7 ( .B0(p_data[0]), .B1(latch_data), .A0(p_data_latched[0]), .A1N(
        latch_data), .Y(n6) );
  AO2B2X2M U8 ( .B0(p_data[1]), .B1(latch_data), .A0(p_data_latched[1]), .A1N(
        latch_data), .Y(n8) );
  AO2B2X2M U9 ( .B0(p_data[2]), .B1(latch_data), .A0(p_data_latched[2]), .A1N(
        latch_data), .Y(n10) );
  AO2B2X2M U10 ( .B0(p_data[3]), .B1(latch_data), .A0(p_data_latched[3]), 
        .A1N(latch_data), .Y(n12) );
  AO2B2X2M U11 ( .B0(p_data[4]), .B1(latch_data), .A0(p_data_latched[4]), 
        .A1N(latch_data), .Y(n14) );
  AO2B2X2M U12 ( .B0(p_data[5]), .B1(latch_data), .A0(p_data_latched[5]), 
        .A1N(latch_data), .Y(n16) );
  AO2B2X2M U13 ( .B0(p_data[6]), .B1(latch_data), .A0(p_data_latched[6]), 
        .A1N(latch_data), .Y(n18) );
  AO2B2X2M U14 ( .B0(p_data[7]), .B1(latch_data), .A0(p_data_latched[7]), 
        .A1N(latch_data), .Y(n20) );
  AO2B2X2M U15 ( .B0(par_typ), .B1(latch_data), .A0(par_typ_latched), .A1N(
        latch_data), .Y(n22) );
  INVXLM U25 ( .A(test_se), .Y(n9) );
  INVXLM U26 ( .A(n9), .Y(n11) );
endmodule


module mux ( mux_sel, mux_in, tx_out );
  input [1:0] mux_sel;
  input [3:0] mux_in;
  output tx_out;
  wire   N0, N1, n1, n2, n3;
  assign N0 = mux_sel[0];
  assign N1 = mux_sel[1];

  OAI2B2X4M U1 ( .A1N(N1), .A0(n2), .B0(N1), .B1(n1), .Y(tx_out) );
  INVX2M U2 ( .A(N0), .Y(n3) );
  AOI22X1M U3 ( .A0(mux_in[2]), .A1(n3), .B0(mux_in[3]), .B1(N0), .Y(n2) );
  AOI22X1M U4 ( .A0(mux_in[0]), .A1(n3), .B0(mux_in[1]), .B1(N0), .Y(n1) );
endmodule


module uart_tx_DATA_WIDTH8_test_1 ( clk, rst_n, p_data, data_valid, par_en, 
        par_typ, tx_out, busy, test_si, test_so, test_se );
  input [7:0] p_data;
  input clk, rst_n, data_valid, par_en, par_typ, test_si, test_se;
  output tx_out, busy, test_so;
  wire   latch_data, ser_en, ser_done, n3, n4;
  wire   [1:0] mux_sel;
  wire   [3:2] mux_in;

  tx_controller_test_1 controller_inst ( .clk(clk), .rst_n(rst_n), 
        .data_valid(data_valid), .par_en(par_en), .ser_done(ser_done), 
        .mux_sel(mux_sel), .ser_en(ser_en), .latch_data(latch_data), .busy(
        busy), .test_si(test_si), .test_so(n4), .test_se(test_se) );
  serializer_test_1 serializer_inst ( .clk(clk), .rst_n(rst_n), .p_data(p_data), .ser_en(ser_en), .latch_data(latch_data), .ser_done(ser_done), .ser_data(
        mux_in[2]), .test_si(n3), .test_so(test_so), .test_se(test_se) );
  parity_calc_test_1 parity_calc_inst ( .clk(clk), .rst_n(rst_n), .p_data(
        p_data), .latch_data(latch_data), .par_typ(par_typ), .par_bit(
        mux_in[3]), .test_si(n4), .test_so(n3), .test_se(test_se) );
  mux mux_inst ( .mux_sel(mux_sel), .mux_in({mux_in, 1'b1, 1'b0}), .tx_out(
        tx_out) );
endmodule


module rx_controller_test_1 ( clk, rst_n, rx_in, par_en, par_typ, bit_cnt, 
        strt_glitch, par_err, stp_err, bit_valid, cnt_en, dat_samp_en, 
        strt_chk_en, par_pdata_en, par_chk_en, stp_chk_en, deser_en, 
        data_valid, par_typ_latched, test_si, test_se );
  input [3:0] bit_cnt;
  input clk, rst_n, rx_in, par_en, par_typ, strt_glitch, par_err, stp_err,
         bit_valid, test_si, test_se;
  output cnt_en, dat_samp_en, strt_chk_en, par_pdata_en, par_chk_en,
         stp_chk_en, deser_en, data_valid, par_typ_latched;
  wire   par_en_latched, data_valid_c, n2, n3, n4, n6, n7, n8, n9, n10, n12,
         n13, n14, n16, n17, n20, n23, n24, n28, n30, n5, n11, n15, n18, n19,
         n21, n22, n25, n34;
  wire   [2:0] current_state;
  wire   [2:0] next_state;

  SDFFRQX2M par_typ_latched_reg ( .D(n28), .SI(par_en_latched), .SE(test_se), 
        .CK(clk), .RN(rst_n), .Q(par_typ_latched) );
  SDFFRQX2M par_en_latched_reg ( .D(n30), .SI(data_valid), .SE(test_se), .CK(
        clk), .RN(rst_n), .Q(par_en_latched) );
  SDFFRQX2M \current_state_reg[0]  ( .D(next_state[0]), .SI(test_si), .SE(
        test_se), .CK(clk), .RN(rst_n), .Q(current_state[0]) );
  SDFFRQX2M \current_state_reg[1]  ( .D(next_state[1]), .SI(current_state[0]), 
        .SE(test_se), .CK(clk), .RN(rst_n), .Q(current_state[1]) );
  SDFFRQX2M \current_state_reg[2]  ( .D(next_state[2]), .SI(current_state[1]), 
        .SE(test_se), .CK(clk), .RN(rst_n), .Q(current_state[2]) );
  SDFFRQX2M data_valid_reg ( .D(data_valid_c), .SI(current_state[2]), .SE(
        test_se), .CK(clk), .RN(rst_n), .Q(data_valid) );
  NOR3X2M U3 ( .A(n5), .B(strt_glitch), .C(n19), .Y(n23) );
  OAI221X1M U4 ( .A0(n3), .A1(n4), .B0(n11), .B1(n6), .C0(n7), .Y(
        next_state[2]) );
  INVX2M U5 ( .A(n8), .Y(n11) );
  OAI211X2M U6 ( .A0(n8), .A1(n6), .B0(n9), .C0(n2), .Y(next_state[1]) );
  NAND4BX1M U7 ( .AN(strt_glitch), .B(strt_chk_en), .C(n10), .D(n18), .Y(n9)
         );
  NOR2X2M U8 ( .A(n5), .B(n7), .Y(stp_chk_en) );
  NAND2X2M U9 ( .A(n16), .B(n21), .Y(n6) );
  NAND2BX2M U10 ( .AN(n3), .B(n4), .Y(n2) );
  NOR3BX2M U11 ( .AN(n12), .B(n6), .C(n5), .Y(deser_en) );
  INVX2M U12 ( .A(strt_chk_en), .Y(n19) );
  INVX2M U13 ( .A(n3), .Y(par_pdata_en) );
  OAI32X1M U14 ( .A0(n34), .A1(n25), .A2(n12), .B0(rx_in), .B1(
        current_state[1]), .Y(n20) );
  NAND4BX1M U15 ( .AN(stp_chk_en), .B(n13), .C(n14), .D(n2), .Y(next_state[0])
         );
  NAND4BX1M U16 ( .AN(bit_cnt[2]), .B(n18), .C(n15), .D(n17), .Y(n14) );
  NAND3BX2M U17 ( .AN(current_state[2]), .B(n21), .C(n20), .Y(n13) );
  AOI211X2M U18 ( .A0(strt_glitch), .A1(bit_valid), .B0(n19), .C0(bit_cnt[0]), 
        .Y(n17) );
  OAI211X2M U19 ( .A0(current_state[2]), .A1(n21), .B0(n22), .C0(n7), .Y(
        cnt_en) );
  INVX2M U20 ( .A(n16), .Y(n22) );
  NOR2X2M U21 ( .A(n25), .B(current_state[2]), .Y(n16) );
  NAND3X2M U22 ( .A(n21), .B(n25), .C(current_state[2]), .Y(n7) );
  INVX2M U23 ( .A(current_state[0]), .Y(n21) );
  INVX2M U24 ( .A(current_state[1]), .Y(n25) );
  NOR3BX2M U25 ( .AN(bit_cnt[0]), .B(bit_cnt[1]), .C(bit_cnt[2]), .Y(n10) );
  NOR3X2M U26 ( .A(current_state[1]), .B(current_state[2]), .C(n21), .Y(
        strt_chk_en) );
  NOR2X2M U27 ( .A(n12), .B(par_en_latched), .Y(n8) );
  NAND2X2M U28 ( .A(n10), .B(bit_cnt[3]), .Y(n12) );
  NAND2X2M U29 ( .A(n16), .B(current_state[0]), .Y(n3) );
  OAI2BB2X1M U30 ( .B0(n23), .B1(n34), .A0N(par_en), .A1N(n23), .Y(n30) );
  NOR2X2M U31 ( .A(n5), .B(n2), .Y(par_chk_en) );
  INVX2M U32 ( .A(bit_valid), .Y(n5) );
  OR4X1M U33 ( .A(bit_cnt[0]), .B(n18), .C(n15), .D(bit_cnt[2]), .Y(n4) );
  INVX2M U34 ( .A(bit_cnt[3]), .Y(n18) );
  INVX2M U35 ( .A(bit_cnt[1]), .Y(n15) );
  AO2B2X2M U36 ( .B0(par_typ), .B1(n23), .A0(par_typ_latched), .A1N(n23), .Y(
        n28) );
  INVX2M U37 ( .A(par_en_latched), .Y(n34) );
  NOR4X1M U38 ( .A(n24), .B(current_state[1]), .C(stp_err), .D(par_err), .Y(
        data_valid_c) );
  NAND2X2M U39 ( .A(current_state[2]), .B(current_state[0]), .Y(n24) );
  BUFX2M U46 ( .A(cnt_en), .Y(dat_samp_en) );
endmodule


module edge_bit_counter_MAX_WIDTH6_test_1 ( clk, rst_n, prescale, cnt_en, 
        edge_cnt, bit_cnt, test_si, test_se );
  input [5:0] prescale;
  output [5:0] edge_cnt;
  output [3:0] bit_cnt;
  input clk, rst_n, cnt_en, test_si, test_se;
  wire   N5, N7, N8, N9, N10, N11, N12, N19, N20, N21, N22, N23, N24, N27, N28,
         N29, N30, N31, N32, N33, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, \add_18/carry[5] , \add_18/carry[4] , \add_18/carry[3] ,
         \add_18/carry[2] , n1, n2, n3, n4, n5, n16, n17, n18, n19, n20, n21,
         n22, n33, n34, n35, n36, n37, n38, n39, n40, n43, n44;

  SDFFRQX2M \bit_cnt_reg[2]  ( .D(n30), .SI(bit_cnt[1]), .SE(n44), .CK(clk), 
        .RN(rst_n), .Q(bit_cnt[2]) );
  SDFFRQX2M \bit_cnt_reg[1]  ( .D(n31), .SI(bit_cnt[0]), .SE(n44), .CK(clk), 
        .RN(rst_n), .Q(bit_cnt[1]) );
  SDFFRQX2M \bit_cnt_reg[3]  ( .D(n29), .SI(bit_cnt[2]), .SE(n44), .CK(clk), 
        .RN(rst_n), .Q(bit_cnt[3]) );
  SDFFRQX2M \bit_cnt_reg[0]  ( .D(n32), .SI(test_si), .SE(n44), .CK(clk), .RN(
        rst_n), .Q(bit_cnt[0]) );
  SDFFRQX2M \edge_cnt_reg[5]  ( .D(N24), .SI(edge_cnt[4]), .SE(n44), .CK(clk), 
        .RN(rst_n), .Q(edge_cnt[5]) );
  SDFFRQX2M \edge_cnt_reg[4]  ( .D(N23), .SI(edge_cnt[3]), .SE(n44), .CK(clk), 
        .RN(rst_n), .Q(edge_cnt[4]) );
  SDFFRQX2M \edge_cnt_reg[3]  ( .D(N22), .SI(edge_cnt[2]), .SE(n44), .CK(clk), 
        .RN(rst_n), .Q(edge_cnt[3]) );
  SDFFRQX2M \edge_cnt_reg[2]  ( .D(N21), .SI(edge_cnt[1]), .SE(n44), .CK(clk), 
        .RN(rst_n), .Q(edge_cnt[2]) );
  SDFFRQX2M \edge_cnt_reg[1]  ( .D(N20), .SI(edge_cnt[0]), .SE(n44), .CK(clk), 
        .RN(rst_n), .Q(edge_cnt[1]) );
  SDFFRQX2M \edge_cnt_reg[0]  ( .D(N19), .SI(bit_cnt[3]), .SE(n44), .CK(clk), 
        .RN(rst_n), .Q(edge_cnt[0]) );
  INVX2M U7 ( .A(n28), .Y(n34) );
  NOR2X2M U8 ( .A(n40), .B(N5), .Y(n28) );
  AOI21X2M U15 ( .A0(n36), .A1(cnt_en), .B0(n28), .Y(n27) );
  INVX2M U16 ( .A(cnt_en), .Y(n40) );
  AND2X2M U17 ( .A(N8), .B(n28), .Y(N20) );
  AND2X2M U18 ( .A(N9), .B(n28), .Y(N21) );
  AND2X2M U19 ( .A(N10), .B(n28), .Y(N22) );
  AND2X2M U20 ( .A(N11), .B(n28), .Y(N23) );
  NOR3X2M U21 ( .A(n37), .B(n36), .C(n38), .Y(n24) );
  OAI32X1M U22 ( .A0(n40), .A1(bit_cnt[0]), .A2(n28), .B0(n36), .B1(n34), .Y(
        n32) );
  OAI32X1M U23 ( .A0(n25), .A1(bit_cnt[2]), .A2(n37), .B0(n26), .B1(n38), .Y(
        n30) );
  OA21X2M U24 ( .A0(n40), .A1(bit_cnt[1]), .B0(n27), .Y(n26) );
  OAI22X1M U25 ( .A0(n39), .A1(n34), .B0(n23), .B1(n40), .Y(n29) );
  AOI32X1M U26 ( .A0(n24), .A1(n39), .A2(N5), .B0(bit_cnt[3]), .B1(n35), .Y(
        n23) );
  INVX2M U27 ( .A(bit_cnt[3]), .Y(n39) );
  INVX2M U28 ( .A(n24), .Y(n35) );
  OAI22X1M U29 ( .A0(n27), .A1(n37), .B0(bit_cnt[1]), .B1(n25), .Y(n31) );
  NAND3X2M U30 ( .A(bit_cnt[0]), .B(n34), .C(cnt_en), .Y(n25) );
  AND2X2M U31 ( .A(N12), .B(n28), .Y(N24) );
  AND2X2M U32 ( .A(N7), .B(n28), .Y(N19) );
  INVX2M U33 ( .A(bit_cnt[0]), .Y(n36) );
  INVX2M U34 ( .A(bit_cnt[1]), .Y(n37) );
  INVX2M U35 ( .A(bit_cnt[2]), .Y(n38) );
  ADDHX1M U36 ( .A(edge_cnt[1]), .B(edge_cnt[0]), .CO(\add_18/carry[2] ), .S(
        N8) );
  ADDHX1M U37 ( .A(edge_cnt[2]), .B(\add_18/carry[2] ), .CO(\add_18/carry[3] ), 
        .S(N9) );
  ADDHX1M U38 ( .A(edge_cnt[3]), .B(\add_18/carry[3] ), .CO(\add_18/carry[4] ), 
        .S(N10) );
  ADDHX1M U39 ( .A(edge_cnt[4]), .B(\add_18/carry[4] ), .CO(\add_18/carry[5] ), 
        .S(N11) );
  OR2X2M U40 ( .A(prescale[1]), .B(prescale[0]), .Y(n1) );
  CLKINVX1M U41 ( .A(prescale[0]), .Y(N27) );
  OAI2BB1X1M U42 ( .A0N(prescale[0]), .A1N(prescale[1]), .B0(n1), .Y(N28) );
  OR2X1M U43 ( .A(n1), .B(prescale[2]), .Y(n2) );
  OAI2BB1X1M U44 ( .A0N(n1), .A1N(prescale[2]), .B0(n2), .Y(N29) );
  OR2X1M U45 ( .A(n2), .B(prescale[3]), .Y(n3) );
  OAI2BB1X1M U46 ( .A0N(n2), .A1N(prescale[3]), .B0(n3), .Y(N30) );
  OR2X1M U47 ( .A(n3), .B(prescale[4]), .Y(n4) );
  OAI2BB1X1M U48 ( .A0N(n3), .A1N(prescale[4]), .B0(n4), .Y(N31) );
  NOR2X1M U49 ( .A(n4), .B(prescale[5]), .Y(N33) );
  AO21XLM U50 ( .A0(n4), .A1(prescale[5]), .B0(N33), .Y(N32) );
  CLKINVX1M U51 ( .A(edge_cnt[0]), .Y(N7) );
  CLKXOR2X2M U52 ( .A(\add_18/carry[5] ), .B(edge_cnt[5]), .Y(N12) );
  NOR2BX1M U53 ( .AN(N27), .B(edge_cnt[0]), .Y(n5) );
  OAI2B2X1M U54 ( .A1N(edge_cnt[1]), .A0(n5), .B0(N28), .B1(n5), .Y(n19) );
  XNOR2X1M U55 ( .A(N32), .B(edge_cnt[5]), .Y(n18) );
  NOR2BX1M U56 ( .AN(edge_cnt[0]), .B(N27), .Y(n16) );
  OAI2B2X1M U57 ( .A1N(N28), .A0(n16), .B0(edge_cnt[1]), .B1(n16), .Y(n17) );
  NAND4BX1M U58 ( .AN(N33), .B(n19), .C(n18), .D(n17), .Y(n33) );
  CLKXOR2X2M U59 ( .A(N31), .B(edge_cnt[4]), .Y(n22) );
  CLKXOR2X2M U60 ( .A(N29), .B(edge_cnt[2]), .Y(n21) );
  CLKXOR2X2M U61 ( .A(N30), .B(edge_cnt[3]), .Y(n20) );
  NOR4X1M U62 ( .A(n33), .B(n22), .C(n21), .D(n20), .Y(N5) );
  INVXLM U63 ( .A(test_se), .Y(n43) );
  INVXLM U64 ( .A(n43), .Y(n44) );
endmodule


module data_sampling_MAX_WIDTH6_test_1 ( clk, rst_n, prescale, rx_in, 
        dat_samp_en, edge_cnt, bit_valid, sampled_bit, test_si, test_se );
  input [5:0] prescale;
  input [5:0] edge_cnt;
  input clk, rst_n, rx_in, dat_samp_en, test_si, test_se;
  output bit_valid, sampled_bit;
  wire   N33, N34, N35, N36, N37, N38, N39, N40, N42, N43, N44, N46, N54, N71,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, \sub_36/carry[4] , \sub_36/carry[3] , n1, n2, n3, n4,
         n5, n6, n7, n8, n9, n10, n11, n12, n17, n18, n19, n20, n21, n22, n23,
         n24, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57;
  wire   [1:0] s;
  assign N40 = prescale[1];

  SDFFRQX2M bit_valid_reg ( .D(N71), .SI(test_si), .SE(test_se), .CK(clk), 
        .RN(rst_n), .Q(bit_valid) );
  SDFFSQX2M sampled_bit_reg ( .D(n39), .SI(s[1]), .SE(test_se), .CK(clk), .SN(
        rst_n), .Q(sampled_bit) );
  SDFFRQX2M \s_reg[1]  ( .D(n41), .SI(s[0]), .SE(test_se), .CK(clk), .RN(rst_n), .Q(s[1]) );
  SDFFRQX2M \s_reg[0]  ( .D(n40), .SI(bit_valid), .SE(test_se), .CK(clk), .RN(
        rst_n), .Q(s[0]) );
  NOR2X2M U5 ( .A(prescale[5]), .B(\sub_36/carry[4] ), .Y(n1) );
  NOR4X1M U6 ( .A(n54), .B(n28), .C(prescale[0]), .D(N40), .Y(n32) );
  INVX2M U7 ( .A(dat_samp_en), .Y(n54) );
  INVX2M U8 ( .A(N46), .Y(n51) );
  NOR2X2M U9 ( .A(n54), .B(n50), .Y(N71) );
  OAI2B1X2M U12 ( .A1N(sampled_bit), .A0(n25), .B0(n26), .Y(n39) );
  OAI21X2M U13 ( .A0(n54), .A1(n27), .B0(n25), .Y(n26) );
  NAND2X2M U14 ( .A(dat_samp_en), .B(n50), .Y(n25) );
  OAI31X1M U15 ( .A0(n52), .A1(n28), .A2(n53), .B0(n29), .Y(n27) );
  OAI31X1M U16 ( .A0(n30), .A1(s[1]), .A2(s[0]), .B0(rx_in), .Y(n29) );
  OAI2BB2X1M U17 ( .B0(n57), .B1(n31), .A0N(n31), .A1N(s[0]), .Y(n40) );
  NAND2X2M U18 ( .A(N46), .B(n32), .Y(n31) );
  OAI2BB2X1M U19 ( .B0(n57), .B1(n33), .A0N(n33), .A1N(s[1]), .Y(n41) );
  NAND3X2M U20 ( .A(N39), .B(n51), .C(n32), .Y(n33) );
  INVX2M U21 ( .A(rx_in), .Y(n57) );
  INVX2M U22 ( .A(n34), .Y(n50) );
  NOR3BX2M U23 ( .AN(n35), .B(prescale[0]), .C(N40), .Y(n34) );
  OAI2BB1X2M U24 ( .A0N(n30), .A1N(N39), .B0(n36), .Y(n35) );
  NAND4BBX1M U25 ( .AN(N39), .BN(n28), .C(N54), .D(n51), .Y(n36) );
  INVX2M U26 ( .A(s[0]), .Y(n53) );
  INVX2M U27 ( .A(s[1]), .Y(n52) );
  NOR4X1M U28 ( .A(n56), .B(prescale[3]), .C(prescale[4]), .D(prescale[5]), 
        .Y(n30) );
  NAND2X2M U29 ( .A(n37), .B(n56), .Y(n28) );
  OAI32X1M U30 ( .A0(n55), .A1(prescale[4]), .A2(prescale[3]), .B0(prescale[5]), .B1(n38), .Y(n37) );
  INVX2M U31 ( .A(prescale[5]), .Y(n55) );
  XNOR2X2M U32 ( .A(prescale[3]), .B(prescale[4]), .Y(n38) );
  INVX2M U33 ( .A(prescale[2]), .Y(n56) );
  OR2X2M U34 ( .A(prescale[2]), .B(N40), .Y(n2) );
  XNOR2X1M U35 ( .A(\sub_36/carry[4] ), .B(prescale[5]), .Y(N44) );
  OR2X1M U36 ( .A(prescale[4]), .B(\sub_36/carry[3] ), .Y(\sub_36/carry[4] )
         );
  XNOR2X1M U37 ( .A(\sub_36/carry[3] ), .B(prescale[4]), .Y(N43) );
  OR2X1M U38 ( .A(prescale[3]), .B(prescale[2]), .Y(\sub_36/carry[3] ) );
  XNOR2X1M U39 ( .A(prescale[2]), .B(prescale[3]), .Y(N42) );
  CLKINVX1M U40 ( .A(N40), .Y(N33) );
  OAI2BB1X1M U41 ( .A0N(N40), .A1N(prescale[2]), .B0(n2), .Y(N34) );
  OR2X1M U42 ( .A(n2), .B(prescale[3]), .Y(n3) );
  OAI2BB1X1M U43 ( .A0N(n2), .A1N(prescale[3]), .B0(n3), .Y(N35) );
  XNOR2X1M U44 ( .A(prescale[4]), .B(n3), .Y(N36) );
  NOR3X1M U45 ( .A(prescale[4]), .B(prescale[5]), .C(n3), .Y(N38) );
  OAI21X1M U46 ( .A0(prescale[4]), .A1(n3), .B0(prescale[5]), .Y(n4) );
  NAND2BX1M U47 ( .AN(N38), .B(n4), .Y(N37) );
  NOR2BX1M U48 ( .AN(edge_cnt[0]), .B(N33), .Y(n5) );
  OAI2B2X1M U49 ( .A1N(N34), .A0(n5), .B0(edge_cnt[1]), .B1(n5), .Y(n8) );
  NOR2BX1M U50 ( .AN(N33), .B(edge_cnt[0]), .Y(n6) );
  OAI2B2X1M U51 ( .A1N(edge_cnt[1]), .A0(n6), .B0(N34), .B1(n6), .Y(n7) );
  NAND4BBX1M U52 ( .AN(N38), .BN(edge_cnt[5]), .C(n8), .D(n7), .Y(n12) );
  CLKXOR2X2M U53 ( .A(N37), .B(edge_cnt[4]), .Y(n11) );
  CLKXOR2X2M U54 ( .A(N35), .B(edge_cnt[2]), .Y(n10) );
  CLKXOR2X2M U55 ( .A(N36), .B(edge_cnt[3]), .Y(n9) );
  NOR4X1M U56 ( .A(n12), .B(n11), .C(n10), .D(n9), .Y(N39) );
  NOR2BX1M U57 ( .AN(edge_cnt[0]), .B(N40), .Y(n17) );
  OAI2B2X1M U58 ( .A1N(n56), .A0(n17), .B0(edge_cnt[1]), .B1(n17), .Y(n20) );
  NOR2BX1M U59 ( .AN(N40), .B(edge_cnt[0]), .Y(n18) );
  OAI2B2X1M U60 ( .A1N(edge_cnt[1]), .A0(n18), .B0(n56), .B1(n18), .Y(n19) );
  NAND4BBX1M U61 ( .AN(n1), .BN(edge_cnt[5]), .C(n20), .D(n19), .Y(n24) );
  CLKXOR2X2M U62 ( .A(N44), .B(edge_cnt[4]), .Y(n23) );
  CLKXOR2X2M U63 ( .A(N42), .B(edge_cnt[2]), .Y(n22) );
  CLKXOR2X2M U64 ( .A(N43), .B(edge_cnt[3]), .Y(n21) );
  NOR4X1M U65 ( .A(n24), .B(n23), .C(n22), .D(n21), .Y(N46) );
  NOR2BX1M U66 ( .AN(edge_cnt[0]), .B(N40), .Y(n42) );
  OAI2B2X1M U67 ( .A1N(prescale[2]), .A0(n42), .B0(edge_cnt[1]), .B1(n42), .Y(
        n45) );
  NOR2BX1M U68 ( .AN(N40), .B(edge_cnt[0]), .Y(n43) );
  OAI2B2X1M U69 ( .A1N(edge_cnt[1]), .A0(n43), .B0(prescale[2]), .B1(n43), .Y(
        n44) );
  NAND3BX1M U70 ( .AN(edge_cnt[5]), .B(n45), .C(n44), .Y(n49) );
  CLKXOR2X2M U71 ( .A(prescale[5]), .B(edge_cnt[4]), .Y(n48) );
  CLKXOR2X2M U72 ( .A(prescale[3]), .B(edge_cnt[2]), .Y(n47) );
  CLKXOR2X2M U73 ( .A(prescale[4]), .B(edge_cnt[3]), .Y(n46) );
  NOR4X1M U74 ( .A(n49), .B(n48), .C(n47), .D(n46), .Y(N54) );
endmodule


module deserializer_test_1 ( clk, rst_n, sampled_bit, deser_en, p_data, 
        test_se );
  output [7:0] p_data;
  input clk, rst_n, sampled_bit, deser_en, test_se;
  wire   n10, n12, n14, n16, n18, n20, n22, n24, n1, n2, n3, n4, n5, n6, n7,
         n8, n25;

  SDFFRQX2M \p_data_reg[0]  ( .D(n10), .SI(sampled_bit), .SE(test_se), .CK(clk), .RN(rst_n), .Q(p_data[0]) );
  SDFFRQX2M \p_data_reg[5]  ( .D(n20), .SI(p_data[4]), .SE(test_se), .CK(clk), 
        .RN(rst_n), .Q(p_data[5]) );
  SDFFRQX2M \p_data_reg[1]  ( .D(n12), .SI(p_data[0]), .SE(test_se), .CK(clk), 
        .RN(rst_n), .Q(p_data[1]) );
  SDFFRQX2M \p_data_reg[4]  ( .D(n18), .SI(p_data[3]), .SE(test_se), .CK(clk), 
        .RN(rst_n), .Q(p_data[4]) );
  SDFFRQX2M \p_data_reg[7]  ( .D(n24), .SI(p_data[6]), .SE(test_se), .CK(clk), 
        .RN(rst_n), .Q(p_data[7]) );
  SDFFRQX2M \p_data_reg[3]  ( .D(n16), .SI(p_data[2]), .SE(test_se), .CK(clk), 
        .RN(rst_n), .Q(p_data[3]) );
  SDFFRQX2M \p_data_reg[6]  ( .D(n22), .SI(p_data[5]), .SE(test_se), .CK(clk), 
        .RN(rst_n), .Q(p_data[6]) );
  SDFFRQX2M \p_data_reg[2]  ( .D(n14), .SI(p_data[1]), .SE(test_se), .CK(clk), 
        .RN(rst_n), .Q(p_data[2]) );
  INVX2M U2 ( .A(n1), .Y(n25) );
  OAI22X1M U3 ( .A0(n25), .A1(n7), .B0(n1), .B1(n8), .Y(n12) );
  OAI22X1M U4 ( .A0(n25), .A1(n6), .B0(n1), .B1(n7), .Y(n14) );
  OAI22X1M U5 ( .A0(n25), .A1(n5), .B0(n1), .B1(n6), .Y(n16) );
  OAI22X1M U6 ( .A0(n25), .A1(n4), .B0(n1), .B1(n5), .Y(n18) );
  OAI22X1M U7 ( .A0(n25), .A1(n3), .B0(n1), .B1(n4), .Y(n20) );
  OAI22X1M U8 ( .A0(n25), .A1(n2), .B0(n1), .B1(n3), .Y(n22) );
  BUFX2M U9 ( .A(deser_en), .Y(n1) );
  OAI2BB2X1M U10 ( .B0(n25), .B1(n8), .A0N(p_data[0]), .A1N(n25), .Y(n10) );
  OAI2BB2X1M U11 ( .B0(n1), .B1(n2), .A0N(sampled_bit), .A1N(n1), .Y(n24) );
  INVX2M U12 ( .A(p_data[2]), .Y(n7) );
  INVX2M U13 ( .A(p_data[6]), .Y(n3) );
  INVX2M U14 ( .A(p_data[7]), .Y(n2) );
  INVX2M U15 ( .A(p_data[3]), .Y(n6) );
  INVX2M U16 ( .A(p_data[1]), .Y(n8) );
  INVX2M U17 ( .A(p_data[4]), .Y(n5) );
  INVX2M U26 ( .A(p_data[5]), .Y(n4) );
endmodule


module start_check ( sampled_bit, strt_chk_en, strt_glitch );
  input sampled_bit, strt_chk_en;
  output strt_glitch;


  AND2X2M U2 ( .A(strt_chk_en), .B(sampled_bit), .Y(strt_glitch) );
endmodule


module parity_check_test_1 ( clk, rst_n, par_typ_latched, sampled_bit, p_data, 
        par_chk_en, par_pdata_en, par_err, test_si, test_se );
  input [7:0] p_data;
  input clk, rst_n, par_typ_latched, sampled_bit, par_chk_en, par_pdata_en,
         test_si, test_se;
  output par_err;
  wire   n1, n3, n4, n5, n6, n8, n9, n10, n12, n2, n7;

  SDFFRQX2M par_err_reg ( .D(n12), .SI(test_si), .SE(test_se), .CK(clk), .RN(
        rst_n), .Q(par_err) );
  INVX2M U2 ( .A(par_pdata_en), .Y(n7) );
  XNOR2X2M U3 ( .A(sampled_bit), .B(par_typ_latched), .Y(n5) );
  OAI2BB2X1M U4 ( .B0(n1), .B1(n2), .A0N(par_err), .A1N(n2), .Y(n12) );
  INVX2M U5 ( .A(par_chk_en), .Y(n2) );
  XOR3XLM U6 ( .A(n3), .B(n4), .C(n5), .Y(n1) );
  NOR2X2M U7 ( .A(n6), .B(n7), .Y(n4) );
  XOR3XLM U8 ( .A(p_data[1]), .B(p_data[0]), .C(n8), .Y(n6) );
  XNOR2X2M U9 ( .A(p_data[3]), .B(p_data[2]), .Y(n8) );
  NOR2X2M U10 ( .A(n9), .B(n7), .Y(n3) );
  XOR3XLM U11 ( .A(p_data[5]), .B(p_data[4]), .C(n10), .Y(n9) );
  XNOR2X2M U12 ( .A(p_data[7]), .B(p_data[6]), .Y(n10) );
endmodule


module stop_check_test_1 ( clk, rst_n, sampled_bit, stp_chk_en, stp_err, 
        test_si, test_se );
  input clk, rst_n, sampled_bit, stp_chk_en, test_si, test_se;
  output stp_err;
  wire   n3, n1, n5, n6;

  SDFFRQX2M stp_err_reg ( .D(n3), .SI(test_si), .SE(test_se), .CK(clk), .RN(
        rst_n), .Q(stp_err) );
  OAI2BB2X1M U2 ( .B0(sampled_bit), .B1(n1), .A0N(n6), .A1N(n1), .Y(n3) );
  INVX2M U3 ( .A(stp_chk_en), .Y(n1) );
  INVXLM U5 ( .A(stp_err), .Y(n5) );
  INVXLM U6 ( .A(n5), .Y(n6) );
endmodule


module uart_rx_DATA_WIDTH8_test_1 ( clk, rst_n, par_typ, par_en, prescale, 
        rx_in, p_data, data_valid, par_err, stp_err, test_si2, test_si1, 
        test_se );
  input [5:0] prescale;
  output [7:0] p_data;
  input clk, rst_n, par_typ, par_en, rx_in, test_si2, test_si1, test_se;
  output data_valid, par_err, stp_err;
  wire   par_typ_latched, deser_en, stp_chk_en, par_chk_en, par_pdata_en,
         strt_chk_en, dat_samp_en, cnt_en, bit_valid, strt_glitch, sampled_bit,
         n4, n5;
  wire   [3:0] bit_cnt;
  wire   [5:0] edge_cnt;

  INVXLM U1 ( .A(stp_err), .Y(n4) );
  INVXLM U2 ( .A(n4), .Y(n5) );
  rx_controller_test_1 controller_inst ( .clk(clk), .rst_n(rst_n), .rx_in(
        rx_in), .par_en(par_en), .par_typ(par_typ), .bit_cnt(bit_cnt), 
        .strt_glitch(strt_glitch), .par_err(par_err), .stp_err(n5), 
        .bit_valid(bit_valid), .cnt_en(cnt_en), .dat_samp_en(dat_samp_en), 
        .strt_chk_en(strt_chk_en), .par_pdata_en(par_pdata_en), .par_chk_en(
        par_chk_en), .stp_chk_en(stp_chk_en), .deser_en(deser_en), 
        .data_valid(data_valid), .par_typ_latched(par_typ_latched), .test_si(
        test_si1), .test_se(test_se) );
  edge_bit_counter_MAX_WIDTH6_test_1 edge_bit_counter_inst ( .clk(clk), 
        .rst_n(rst_n), .prescale(prescale), .cnt_en(cnt_en), .edge_cnt(
        edge_cnt), .bit_cnt(bit_cnt), .test_si(p_data[7]), .test_se(test_se)
         );
  data_sampling_MAX_WIDTH6_test_1 data_sampling_inst ( .clk(clk), .rst_n(rst_n), .prescale(prescale), .rx_in(rx_in), .dat_samp_en(dat_samp_en), .edge_cnt(
        edge_cnt), .bit_valid(bit_valid), .sampled_bit(sampled_bit), .test_si(
        par_typ_latched), .test_se(test_se) );
  deserializer_test_1 deserializer_inst ( .clk(clk), .rst_n(rst_n), 
        .sampled_bit(sampled_bit), .deser_en(deser_en), .p_data(p_data), 
        .test_se(test_se) );
  start_check start_check_inst ( .sampled_bit(sampled_bit), .strt_chk_en(
        strt_chk_en), .strt_glitch(strt_glitch) );
  parity_check_test_1 parity_check_inst ( .clk(clk), .rst_n(rst_n), 
        .par_typ_latched(par_typ_latched), .sampled_bit(sampled_bit), .p_data(
        p_data), .par_chk_en(par_chk_en), .par_pdata_en(par_pdata_en), 
        .par_err(par_err), .test_si(edge_cnt[5]), .test_se(test_se) );
  stop_check_test_1 stop_check_inst ( .clk(clk), .rst_n(rst_n), .sampled_bit(
        sampled_bit), .stp_chk_en(stp_chk_en), .stp_err(stp_err), .test_si(
        test_si2), .test_se(test_se) );
endmodule


module uart_DATA_WIDTH8_test_1 ( rst_n, tx_clk, rx_clk, rx_in, rx_p_data, 
        rx_data_valid, tx_p_data, tx_data_valid, tx_out, tx_busy, prescale, 
        parity_enable, parity_type, parity_error, framing_error, test_si, 
        test_se );
  output [7:0] rx_p_data;
  input [7:0] tx_p_data;
  input [5:0] prescale;
  input rst_n, tx_clk, rx_clk, rx_in, tx_data_valid, parity_enable,
         parity_type, test_si, test_se;
  output rx_data_valid, tx_out, tx_busy, parity_error, framing_error;
  wire   n2;

  uart_tx_DATA_WIDTH8_test_1 U0_UART_TX ( .clk(tx_clk), .rst_n(rst_n), 
        .p_data(tx_p_data), .data_valid(tx_data_valid), .par_en(parity_enable), 
        .par_typ(parity_type), .tx_out(tx_out), .busy(tx_busy), .test_si(
        parity_error), .test_so(n2), .test_se(test_se) );
  uart_rx_DATA_WIDTH8_test_1 U0_UART_RX ( .clk(rx_clk), .rst_n(rst_n), 
        .par_typ(parity_type), .par_en(parity_enable), .prescale(prescale), 
        .rx_in(rx_in), .p_data(rx_p_data), .data_valid(rx_data_valid), 
        .par_err(parity_error), .stp_err(framing_error), .test_si2(n2), 
        .test_si1(test_si), .test_se(test_se) );
endmodule


module clk_gate_USE_ICG1 ( clk, clk_en, gated_clk );
  input clk, clk_en;
  output gated_clk;


  TLATNCAX4M \genblk1.U0  ( .E(clk_en), .CK(clk), .ECK(gated_clk) );
endmodule


module ALU_DATA_WIDTH8_FUN_WIDTH4_OUT_WIDTH16_DW_div_uns_0 ( a, b, quotient, 
        remainder, divide_by_0 );
  input [7:0] a;
  input [7:0] b;
  output [7:0] quotient;
  output [7:0] remainder;
  output divide_by_0;
  wire   \u_div/SumTmp[1][0] , \u_div/SumTmp[1][1] , \u_div/SumTmp[1][2] ,
         \u_div/SumTmp[1][3] , \u_div/SumTmp[1][4] , \u_div/SumTmp[1][5] ,
         \u_div/SumTmp[1][6] , \u_div/SumTmp[2][0] , \u_div/SumTmp[2][1] ,
         \u_div/SumTmp[2][2] , \u_div/SumTmp[2][3] , \u_div/SumTmp[2][4] ,
         \u_div/SumTmp[2][5] , \u_div/SumTmp[3][0] , \u_div/SumTmp[3][1] ,
         \u_div/SumTmp[3][2] , \u_div/SumTmp[3][3] , \u_div/SumTmp[3][4] ,
         \u_div/SumTmp[4][0] , \u_div/SumTmp[4][1] , \u_div/SumTmp[4][2] ,
         \u_div/SumTmp[4][3] , \u_div/SumTmp[5][0] , \u_div/SumTmp[5][1] ,
         \u_div/SumTmp[5][2] , \u_div/SumTmp[6][0] , \u_div/SumTmp[6][1] ,
         \u_div/SumTmp[7][0] , \u_div/CryTmp[0][1] , \u_div/CryTmp[0][2] ,
         \u_div/CryTmp[0][3] , \u_div/CryTmp[0][4] , \u_div/CryTmp[0][5] ,
         \u_div/CryTmp[0][6] , \u_div/CryTmp[0][7] , \u_div/CryTmp[1][1] ,
         \u_div/CryTmp[1][2] , \u_div/CryTmp[1][3] , \u_div/CryTmp[1][4] ,
         \u_div/CryTmp[1][5] , \u_div/CryTmp[1][6] , \u_div/CryTmp[1][7] ,
         \u_div/CryTmp[2][1] , \u_div/CryTmp[2][2] , \u_div/CryTmp[2][3] ,
         \u_div/CryTmp[2][4] , \u_div/CryTmp[2][5] , \u_div/CryTmp[2][6] ,
         \u_div/CryTmp[3][1] , \u_div/CryTmp[3][2] , \u_div/CryTmp[3][3] ,
         \u_div/CryTmp[3][4] , \u_div/CryTmp[3][5] , \u_div/CryTmp[4][1] ,
         \u_div/CryTmp[4][2] , \u_div/CryTmp[4][3] , \u_div/CryTmp[4][4] ,
         \u_div/CryTmp[5][1] , \u_div/CryTmp[5][2] , \u_div/CryTmp[5][3] ,
         \u_div/CryTmp[6][1] , \u_div/CryTmp[6][2] , \u_div/CryTmp[7][1] ,
         \u_div/PartRem[1][1] , \u_div/PartRem[1][2] , \u_div/PartRem[1][3] ,
         \u_div/PartRem[1][4] , \u_div/PartRem[1][5] , \u_div/PartRem[1][6] ,
         \u_div/PartRem[1][7] , \u_div/PartRem[2][1] , \u_div/PartRem[2][2] ,
         \u_div/PartRem[2][3] , \u_div/PartRem[2][4] , \u_div/PartRem[2][5] ,
         \u_div/PartRem[2][6] , \u_div/PartRem[3][1] , \u_div/PartRem[3][2] ,
         \u_div/PartRem[3][3] , \u_div/PartRem[3][4] , \u_div/PartRem[3][5] ,
         \u_div/PartRem[4][1] , \u_div/PartRem[4][2] , \u_div/PartRem[4][3] ,
         \u_div/PartRem[4][4] , \u_div/PartRem[5][1] , \u_div/PartRem[5][2] ,
         \u_div/PartRem[5][3] , \u_div/PartRem[6][1] , \u_div/PartRem[6][2] ,
         \u_div/PartRem[7][1] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22;

  ADDFX2M \u_div/u_fa_PartRem_0_2_5  ( .A(\u_div/PartRem[3][5] ), .B(n14), 
        .CI(\u_div/CryTmp[2][5] ), .CO(\u_div/CryTmp[2][6] ), .S(
        \u_div/SumTmp[2][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_3  ( .A(\u_div/PartRem[5][3] ), .B(n16), 
        .CI(\u_div/CryTmp[4][3] ), .CO(\u_div/CryTmp[4][4] ), .S(
        \u_div/SumTmp[4][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_5_2  ( .A(\u_div/PartRem[6][2] ), .B(n17), 
        .CI(\u_div/CryTmp[5][2] ), .CO(\u_div/CryTmp[5][3] ), .S(
        \u_div/SumTmp[5][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_6_1  ( .A(\u_div/PartRem[7][1] ), .B(n18), 
        .CI(\u_div/CryTmp[6][1] ), .CO(\u_div/CryTmp[6][2] ), .S(
        \u_div/SumTmp[6][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_4  ( .A(\u_div/PartRem[4][4] ), .B(n15), 
        .CI(\u_div/CryTmp[3][4] ), .CO(\u_div/CryTmp[3][5] ), .S(
        \u_div/SumTmp[3][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_6  ( .A(\u_div/PartRem[1][6] ), .B(n13), 
        .CI(\u_div/CryTmp[0][6] ), .CO(\u_div/CryTmp[0][7] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_7  ( .A(\u_div/PartRem[1][7] ), .B(n12), 
        .CI(\u_div/CryTmp[0][7] ), .CO(quotient[0]) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_1  ( .A(\u_div/PartRem[1][1] ), .B(n18), 
        .CI(\u_div/CryTmp[0][1] ), .CO(\u_div/CryTmp[0][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_1  ( .A(\u_div/PartRem[2][1] ), .B(n18), 
        .CI(\u_div/CryTmp[1][1] ), .CO(\u_div/CryTmp[1][2] ), .S(
        \u_div/SumTmp[1][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_1  ( .A(\u_div/PartRem[3][1] ), .B(n18), 
        .CI(\u_div/CryTmp[2][1] ), .CO(\u_div/CryTmp[2][2] ), .S(
        \u_div/SumTmp[2][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_1  ( .A(\u_div/PartRem[4][1] ), .B(n18), 
        .CI(\u_div/CryTmp[3][1] ), .CO(\u_div/CryTmp[3][2] ), .S(
        \u_div/SumTmp[3][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_1  ( .A(\u_div/PartRem[5][1] ), .B(n18), 
        .CI(\u_div/CryTmp[4][1] ), .CO(\u_div/CryTmp[4][2] ), .S(
        \u_div/SumTmp[4][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_5_1  ( .A(\u_div/PartRem[6][1] ), .B(n18), 
        .CI(\u_div/CryTmp[5][1] ), .CO(\u_div/CryTmp[5][2] ), .S(
        \u_div/SumTmp[5][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_4  ( .A(\u_div/PartRem[1][4] ), .B(n15), 
        .CI(\u_div/CryTmp[0][4] ), .CO(\u_div/CryTmp[0][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_5  ( .A(\u_div/PartRem[1][5] ), .B(n14), 
        .CI(\u_div/CryTmp[0][5] ), .CO(\u_div/CryTmp[0][6] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_5  ( .A(\u_div/PartRem[2][5] ), .B(n14), 
        .CI(\u_div/CryTmp[1][5] ), .CO(\u_div/CryTmp[1][6] ), .S(
        \u_div/SumTmp[1][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_4  ( .A(\u_div/PartRem[2][4] ), .B(n15), 
        .CI(\u_div/CryTmp[1][4] ), .CO(\u_div/CryTmp[1][5] ), .S(
        \u_div/SumTmp[1][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_2  ( .A(\u_div/PartRem[1][2] ), .B(n17), 
        .CI(\u_div/CryTmp[0][2] ), .CO(\u_div/CryTmp[0][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_3  ( .A(\u_div/PartRem[1][3] ), .B(n16), 
        .CI(\u_div/CryTmp[0][3] ), .CO(\u_div/CryTmp[0][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_4  ( .A(\u_div/PartRem[3][4] ), .B(n15), 
        .CI(\u_div/CryTmp[2][4] ), .CO(\u_div/CryTmp[2][5] ), .S(
        \u_div/SumTmp[2][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_3  ( .A(\u_div/PartRem[2][3] ), .B(n16), 
        .CI(\u_div/CryTmp[1][3] ), .CO(\u_div/CryTmp[1][4] ), .S(
        \u_div/SumTmp[1][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_3  ( .A(\u_div/PartRem[3][3] ), .B(n16), 
        .CI(\u_div/CryTmp[2][3] ), .CO(\u_div/CryTmp[2][4] ), .S(
        \u_div/SumTmp[2][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_2  ( .A(\u_div/PartRem[2][2] ), .B(n17), 
        .CI(\u_div/CryTmp[1][2] ), .CO(\u_div/CryTmp[1][3] ), .S(
        \u_div/SumTmp[1][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_3  ( .A(\u_div/PartRem[4][3] ), .B(n16), 
        .CI(\u_div/CryTmp[3][3] ), .CO(\u_div/CryTmp[3][4] ), .S(
        \u_div/SumTmp[3][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_2  ( .A(\u_div/PartRem[3][2] ), .B(n17), 
        .CI(\u_div/CryTmp[2][2] ), .CO(\u_div/CryTmp[2][3] ), .S(
        \u_div/SumTmp[2][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_2  ( .A(\u_div/PartRem[4][2] ), .B(n17), 
        .CI(\u_div/CryTmp[3][2] ), .CO(\u_div/CryTmp[3][3] ), .S(
        \u_div/SumTmp[3][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_2  ( .A(\u_div/PartRem[5][2] ), .B(n17), 
        .CI(\u_div/CryTmp[4][2] ), .CO(\u_div/CryTmp[4][3] ), .S(
        \u_div/SumTmp[4][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_6  ( .A(\u_div/PartRem[2][6] ), .B(n13), 
        .CI(\u_div/CryTmp[1][6] ), .CO(\u_div/CryTmp[1][7] ), .S(
        \u_div/SumTmp[1][6] ) );
  INVX2M U1 ( .A(b[0]), .Y(n19) );
  XNOR2X2M U2 ( .A(n19), .B(a[7]), .Y(\u_div/SumTmp[7][0] ) );
  XNOR2X2M U3 ( .A(n19), .B(a[6]), .Y(\u_div/SumTmp[6][0] ) );
  XNOR2X2M U4 ( .A(n19), .B(a[5]), .Y(\u_div/SumTmp[5][0] ) );
  XNOR2X2M U5 ( .A(n19), .B(a[4]), .Y(\u_div/SumTmp[4][0] ) );
  XNOR2X2M U6 ( .A(n19), .B(a[3]), .Y(\u_div/SumTmp[3][0] ) );
  XNOR2X2M U7 ( .A(n19), .B(a[2]), .Y(\u_div/SumTmp[2][0] ) );
  OR2X2M U8 ( .A(n19), .B(a[7]), .Y(\u_div/CryTmp[7][1] ) );
  NAND2X2M U9 ( .A(n3), .B(n4), .Y(\u_div/CryTmp[5][1] ) );
  INVX2M U10 ( .A(a[5]), .Y(n4) );
  INVX2M U11 ( .A(n19), .Y(n3) );
  NAND2X2M U12 ( .A(n5), .B(n6), .Y(\u_div/CryTmp[4][1] ) );
  INVX2M U13 ( .A(a[4]), .Y(n6) );
  INVX2M U14 ( .A(n19), .Y(n5) );
  NAND2X2M U15 ( .A(n7), .B(n8), .Y(\u_div/CryTmp[3][1] ) );
  INVX2M U16 ( .A(a[3]), .Y(n8) );
  INVX2M U17 ( .A(n19), .Y(n7) );
  NAND2X2M U18 ( .A(n7), .B(n9), .Y(\u_div/CryTmp[2][1] ) );
  INVX2M U19 ( .A(a[2]), .Y(n9) );
  NAND2X2M U20 ( .A(n7), .B(n10), .Y(\u_div/CryTmp[1][1] ) );
  INVX2M U21 ( .A(a[1]), .Y(n10) );
  NAND2X2M U22 ( .A(n7), .B(n11), .Y(\u_div/CryTmp[0][1] ) );
  INVX2M U23 ( .A(a[0]), .Y(n11) );
  NAND2X2M U24 ( .A(n1), .B(n2), .Y(\u_div/CryTmp[6][1] ) );
  INVX2M U25 ( .A(a[6]), .Y(n2) );
  INVX2M U26 ( .A(n19), .Y(n1) );
  XNOR2X2M U27 ( .A(n19), .B(a[1]), .Y(\u_div/SumTmp[1][0] ) );
  INVX2M U28 ( .A(b[6]), .Y(n13) );
  INVX2M U29 ( .A(b[1]), .Y(n18) );
  INVX2M U30 ( .A(b[2]), .Y(n17) );
  INVX2M U31 ( .A(b[3]), .Y(n16) );
  INVX2M U32 ( .A(b[4]), .Y(n15) );
  INVX2M U33 ( .A(b[5]), .Y(n14) );
  INVX2M U34 ( .A(b[7]), .Y(n12) );
  CLKMX2X2M U35 ( .A(\u_div/PartRem[2][6] ), .B(\u_div/SumTmp[1][6] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][7] ) );
  CLKMX2X2M U36 ( .A(\u_div/PartRem[3][5] ), .B(\u_div/SumTmp[2][5] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][6] ) );
  CLKMX2X2M U37 ( .A(\u_div/PartRem[4][4] ), .B(\u_div/SumTmp[3][4] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][5] ) );
  CLKMX2X2M U38 ( .A(\u_div/PartRem[5][3] ), .B(\u_div/SumTmp[4][3] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][4] ) );
  CLKMX2X2M U39 ( .A(\u_div/PartRem[6][2] ), .B(\u_div/SumTmp[5][2] ), .S0(
        quotient[5]), .Y(\u_div/PartRem[5][3] ) );
  CLKMX2X2M U40 ( .A(\u_div/PartRem[7][1] ), .B(\u_div/SumTmp[6][1] ), .S0(
        quotient[6]), .Y(\u_div/PartRem[6][2] ) );
  CLKMX2X2M U41 ( .A(a[7]), .B(\u_div/SumTmp[7][0] ), .S0(quotient[7]), .Y(
        \u_div/PartRem[7][1] ) );
  CLKMX2X2M U42 ( .A(\u_div/PartRem[2][5] ), .B(\u_div/SumTmp[1][5] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][6] ) );
  CLKMX2X2M U43 ( .A(\u_div/PartRem[3][4] ), .B(\u_div/SumTmp[2][4] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][5] ) );
  CLKMX2X2M U44 ( .A(\u_div/PartRem[4][3] ), .B(\u_div/SumTmp[3][3] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][4] ) );
  CLKMX2X2M U45 ( .A(\u_div/PartRem[5][2] ), .B(\u_div/SumTmp[4][2] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][3] ) );
  CLKMX2X2M U46 ( .A(\u_div/PartRem[6][1] ), .B(\u_div/SumTmp[5][1] ), .S0(
        quotient[5]), .Y(\u_div/PartRem[5][2] ) );
  CLKMX2X2M U47 ( .A(a[6]), .B(\u_div/SumTmp[6][0] ), .S0(quotient[6]), .Y(
        \u_div/PartRem[6][1] ) );
  CLKMX2X2M U48 ( .A(\u_div/PartRem[2][4] ), .B(\u_div/SumTmp[1][4] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][5] ) );
  CLKMX2X2M U49 ( .A(\u_div/PartRem[3][3] ), .B(\u_div/SumTmp[2][3] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][4] ) );
  CLKMX2X2M U50 ( .A(\u_div/PartRem[4][2] ), .B(\u_div/SumTmp[3][2] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][3] ) );
  CLKMX2X2M U51 ( .A(\u_div/PartRem[5][1] ), .B(\u_div/SumTmp[4][1] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][2] ) );
  CLKMX2X2M U52 ( .A(a[5]), .B(\u_div/SumTmp[5][0] ), .S0(quotient[5]), .Y(
        \u_div/PartRem[5][1] ) );
  CLKMX2X2M U53 ( .A(\u_div/PartRem[2][3] ), .B(\u_div/SumTmp[1][3] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][4] ) );
  CLKMX2X2M U54 ( .A(\u_div/PartRem[3][2] ), .B(\u_div/SumTmp[2][2] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][3] ) );
  CLKMX2X2M U55 ( .A(\u_div/PartRem[4][1] ), .B(\u_div/SumTmp[3][1] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][2] ) );
  CLKMX2X2M U56 ( .A(a[4]), .B(\u_div/SumTmp[4][0] ), .S0(quotient[4]), .Y(
        \u_div/PartRem[4][1] ) );
  CLKMX2X2M U57 ( .A(\u_div/PartRem[2][2] ), .B(\u_div/SumTmp[1][2] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][3] ) );
  CLKMX2X2M U58 ( .A(\u_div/PartRem[3][1] ), .B(\u_div/SumTmp[2][1] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][2] ) );
  CLKMX2X2M U59 ( .A(a[3]), .B(\u_div/SumTmp[3][0] ), .S0(quotient[3]), .Y(
        \u_div/PartRem[3][1] ) );
  CLKMX2X2M U60 ( .A(\u_div/PartRem[2][1] ), .B(\u_div/SumTmp[1][1] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][2] ) );
  CLKMX2X2M U61 ( .A(a[2]), .B(\u_div/SumTmp[2][0] ), .S0(quotient[2]), .Y(
        \u_div/PartRem[2][1] ) );
  CLKMX2X2M U62 ( .A(a[1]), .B(\u_div/SumTmp[1][0] ), .S0(quotient[1]), .Y(
        \u_div/PartRem[1][1] ) );
  AND4X1M U63 ( .A(\u_div/CryTmp[7][1] ), .B(n20), .C(n18), .D(n17), .Y(
        quotient[7]) );
  AND3X1M U64 ( .A(n20), .B(n17), .C(\u_div/CryTmp[6][2] ), .Y(quotient[6]) );
  AND2X1M U65 ( .A(\u_div/CryTmp[5][3] ), .B(n20), .Y(quotient[5]) );
  AND2X1M U66 ( .A(n21), .B(n16), .Y(n20) );
  AND2X1M U67 ( .A(\u_div/CryTmp[4][4] ), .B(n21), .Y(quotient[4]) );
  AND3X1M U68 ( .A(n22), .B(n15), .C(n14), .Y(n21) );
  AND3X1M U69 ( .A(n22), .B(n14), .C(\u_div/CryTmp[3][5] ), .Y(quotient[3]) );
  AND2X1M U70 ( .A(\u_div/CryTmp[2][6] ), .B(n22), .Y(quotient[2]) );
  NOR2X1M U71 ( .A(b[6]), .B(b[7]), .Y(n22) );
  AND2X1M U72 ( .A(\u_div/CryTmp[1][7] ), .B(n12), .Y(quotient[1]) );
endmodule


module ALU_DATA_WIDTH8_FUN_WIDTH4_OUT_WIDTH16_DW01_sub_0 ( A, B, CI, DIFF, CO
 );
  input [8:0] A;
  input [8:0] B;
  output [8:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;
  wire   [9:0] carry;

  ADDFX2M U2_7 ( .A(A[7]), .B(n2), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFX2M U2_1 ( .A(A[1]), .B(n8), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFX2M U2_5 ( .A(A[5]), .B(n4), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFX2M U2_4 ( .A(A[4]), .B(n5), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFX2M U2_3 ( .A(A[3]), .B(n6), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFX2M U2_2 ( .A(A[2]), .B(n7), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFX2M U2_6 ( .A(A[6]), .B(n3), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  INVX2M U1 ( .A(B[6]), .Y(n3) );
  INVX2M U2 ( .A(A[0]), .Y(n1) );
  XNOR2X2M U3 ( .A(n9), .B(A[0]), .Y(DIFF[0]) );
  INVX2M U4 ( .A(B[0]), .Y(n9) );
  INVX2M U5 ( .A(B[2]), .Y(n7) );
  INVX2M U6 ( .A(B[3]), .Y(n6) );
  INVX2M U7 ( .A(B[4]), .Y(n5) );
  INVX2M U8 ( .A(B[5]), .Y(n4) );
  INVX2M U9 ( .A(B[1]), .Y(n8) );
  NAND2X2M U10 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  INVX2M U11 ( .A(B[7]), .Y(n2) );
  CLKINVX1M U12 ( .A(carry[8]), .Y(DIFF[8]) );
endmodule


module ALU_DATA_WIDTH8_FUN_WIDTH4_OUT_WIDTH16_DW01_add_0 ( A, B, CI, SUM, CO
 );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [8:1] carry;

  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(SUM[8]), .S(SUM[7]) );
  ADDFX2M U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2M U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFX2M U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  AND2X2M U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  CLKXOR2X2M U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module ALU_DATA_WIDTH8_FUN_WIDTH4_OUT_WIDTH16_DW01_add_1 ( A, B, CI, SUM, CO
 );
  input [13:0] A;
  input [13:0] B;
  output [13:0] SUM;
  input CI;
  output CO;
  wire   n1, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27;

  AOI21BX2M U2 ( .A0(n18), .A1(A[12]), .B0N(n19), .Y(n1) );
  NAND2X2M U3 ( .A(A[7]), .B(B[7]), .Y(n15) );
  INVX2M U4 ( .A(A[6]), .Y(n9) );
  XNOR2X2M U5 ( .A(B[13]), .B(n1), .Y(SUM[13]) );
  XNOR2X2M U6 ( .A(A[7]), .B(n8), .Y(SUM[7]) );
  INVX2M U7 ( .A(B[7]), .Y(n8) );
  INVX2M U8 ( .A(n9), .Y(SUM[6]) );
  BUFX2M U9 ( .A(A[0]), .Y(SUM[0]) );
  BUFX2M U10 ( .A(A[1]), .Y(SUM[1]) );
  BUFX2M U11 ( .A(A[2]), .Y(SUM[2]) );
  BUFX2M U12 ( .A(A[3]), .Y(SUM[3]) );
  BUFX2M U13 ( .A(A[4]), .Y(SUM[4]) );
  BUFX2M U14 ( .A(A[5]), .Y(SUM[5]) );
  XNOR2X1M U15 ( .A(n10), .B(n11), .Y(SUM[9]) );
  NOR2X1M U16 ( .A(n12), .B(n13), .Y(n11) );
  CLKXOR2X2M U17 ( .A(n14), .B(n15), .Y(SUM[8]) );
  NAND2BX1M U18 ( .AN(n16), .B(n17), .Y(n14) );
  OAI21X1M U19 ( .A0(A[12]), .A1(n18), .B0(B[12]), .Y(n19) );
  XOR3XLM U20 ( .A(B[12]), .B(A[12]), .C(n18), .Y(SUM[12]) );
  OAI21BX1M U21 ( .A0(n20), .A1(n21), .B0N(n22), .Y(n18) );
  XNOR2X1M U22 ( .A(n21), .B(n23), .Y(SUM[11]) );
  NOR2X1M U23 ( .A(n22), .B(n20), .Y(n23) );
  NOR2X1M U24 ( .A(B[11]), .B(A[11]), .Y(n20) );
  AND2X1M U25 ( .A(B[11]), .B(A[11]), .Y(n22) );
  OA21X1M U26 ( .A0(n24), .A1(n25), .B0(n26), .Y(n21) );
  CLKXOR2X2M U27 ( .A(n27), .B(n25), .Y(SUM[10]) );
  AOI2BB1X1M U28 ( .A0N(n10), .A1N(n13), .B0(n12), .Y(n25) );
  AND2X1M U29 ( .A(B[9]), .B(A[9]), .Y(n12) );
  NOR2X1M U30 ( .A(B[9]), .B(A[9]), .Y(n13) );
  OA21X1M U31 ( .A0(n15), .A1(n16), .B0(n17), .Y(n10) );
  CLKNAND2X2M U32 ( .A(B[8]), .B(A[8]), .Y(n17) );
  NOR2X1M U33 ( .A(B[8]), .B(A[8]), .Y(n16) );
  NAND2BX1M U34 ( .AN(n24), .B(n26), .Y(n27) );
  CLKNAND2X2M U35 ( .A(B[10]), .B(A[10]), .Y(n26) );
  NOR2X1M U36 ( .A(B[10]), .B(A[10]), .Y(n24) );
endmodule


module ALU_DATA_WIDTH8_FUN_WIDTH4_OUT_WIDTH16_DW02_mult_0 ( A, B, TC, PRODUCT
 );
  input [7:0] A;
  input [7:0] B;
  output [15:0] PRODUCT;
  input TC;
  wire   \ab[7][7] , \ab[7][6] , \ab[7][5] , \ab[7][4] , \ab[7][3] ,
         \ab[7][2] , \ab[7][1] , \ab[7][0] , \ab[6][7] , \ab[6][6] ,
         \ab[6][5] , \ab[6][4] , \ab[6][3] , \ab[6][2] , \ab[6][1] ,
         \ab[6][0] , \ab[5][7] , \ab[5][6] , \ab[5][5] , \ab[5][4] ,
         \ab[5][3] , \ab[5][2] , \ab[5][1] , \ab[5][0] , \ab[4][7] ,
         \ab[4][6] , \ab[4][5] , \ab[4][4] , \ab[4][3] , \ab[4][2] ,
         \ab[4][1] , \ab[4][0] , \ab[3][7] , \ab[3][6] , \ab[3][5] ,
         \ab[3][4] , \ab[3][3] , \ab[3][2] , \ab[3][1] , \ab[3][0] ,
         \ab[2][7] , \ab[2][6] , \ab[2][5] , \ab[2][4] , \ab[2][3] ,
         \ab[2][2] , \ab[2][1] , \ab[2][0] , \ab[1][7] , \ab[1][6] ,
         \ab[1][5] , \ab[1][4] , \ab[1][3] , \ab[1][2] , \ab[1][1] ,
         \ab[1][0] , \ab[0][7] , \ab[0][6] , \ab[0][5] , \ab[0][4] ,
         \ab[0][3] , \ab[0][2] , \ab[0][1] , \CARRYB[7][6] , \CARRYB[7][5] ,
         \CARRYB[7][4] , \CARRYB[7][3] , \CARRYB[7][2] , \CARRYB[7][1] ,
         \CARRYB[7][0] , \CARRYB[6][6] , \CARRYB[6][5] , \CARRYB[6][4] ,
         \CARRYB[6][3] , \CARRYB[6][2] , \CARRYB[6][1] , \CARRYB[6][0] ,
         \CARRYB[5][6] , \CARRYB[5][5] , \CARRYB[5][4] , \CARRYB[5][3] ,
         \CARRYB[5][2] , \CARRYB[5][1] , \CARRYB[5][0] , \CARRYB[4][6] ,
         \CARRYB[4][5] , \CARRYB[4][4] , \CARRYB[4][3] , \CARRYB[4][2] ,
         \CARRYB[4][1] , \CARRYB[4][0] , \CARRYB[3][6] , \CARRYB[3][5] ,
         \CARRYB[3][4] , \CARRYB[3][3] , \CARRYB[3][2] , \CARRYB[3][1] ,
         \CARRYB[3][0] , \CARRYB[2][6] , \CARRYB[2][5] , \CARRYB[2][4] ,
         \CARRYB[2][3] , \CARRYB[2][2] , \CARRYB[2][1] , \CARRYB[2][0] ,
         \SUMB[7][6] , \SUMB[7][5] , \SUMB[7][4] , \SUMB[7][3] , \SUMB[7][2] ,
         \SUMB[7][1] , \SUMB[7][0] , \SUMB[6][6] , \SUMB[6][5] , \SUMB[6][4] ,
         \SUMB[6][3] , \SUMB[6][2] , \SUMB[6][1] , \SUMB[5][6] , \SUMB[5][5] ,
         \SUMB[5][4] , \SUMB[5][3] , \SUMB[5][2] , \SUMB[5][1] , \SUMB[4][6] ,
         \SUMB[4][5] , \SUMB[4][4] , \SUMB[4][3] , \SUMB[4][2] , \SUMB[4][1] ,
         \SUMB[3][6] , \SUMB[3][5] , \SUMB[3][4] , \SUMB[3][3] , \SUMB[3][2] ,
         \SUMB[3][1] , \SUMB[2][6] , \SUMB[2][5] , \SUMB[2][4] , \SUMB[2][3] ,
         \SUMB[2][2] , \SUMB[2][1] , \SUMB[1][6] , \SUMB[1][5] , \SUMB[1][4] ,
         \SUMB[1][3] , \SUMB[1][2] , \SUMB[1][1] , \A1[12] , \A1[11] ,
         \A1[10] , \A1[9] , \A1[8] , \A1[7] , \A1[6] , \A1[4] , \A1[3] ,
         \A1[2] , \A1[1] , \A1[0] , n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39;

  ADDFX2M S3_6_6 ( .A(\ab[6][6] ), .B(\CARRYB[5][6] ), .CI(\ab[5][7] ), .CO(
        \CARRYB[6][6] ), .S(\SUMB[6][6] ) );
  ADDFX2M S3_5_6 ( .A(\ab[5][6] ), .B(\CARRYB[4][6] ), .CI(\ab[4][7] ), .CO(
        \CARRYB[5][6] ), .S(\SUMB[5][6] ) );
  ADDFX2M S5_6 ( .A(\ab[7][6] ), .B(\CARRYB[6][6] ), .CI(\ab[6][7] ), .CO(
        \CARRYB[7][6] ), .S(\SUMB[7][6] ) );
  ADDFX2M S4_5 ( .A(\ab[7][5] ), .B(\CARRYB[6][5] ), .CI(\SUMB[6][6] ), .CO(
        \CARRYB[7][5] ), .S(\SUMB[7][5] ) );
  ADDFX2M S1_6_0 ( .A(\ab[6][0] ), .B(\CARRYB[5][0] ), .CI(\SUMB[5][1] ), .CO(
        \CARRYB[6][0] ), .S(\A1[4] ) );
  ADDFX2M S2_6_2 ( .A(\ab[6][2] ), .B(\CARRYB[5][2] ), .CI(\SUMB[5][3] ), .CO(
        \CARRYB[6][2] ), .S(\SUMB[6][2] ) );
  ADDFX2M S2_6_1 ( .A(\ab[6][1] ), .B(\CARRYB[5][1] ), .CI(\SUMB[5][2] ), .CO(
        \CARRYB[6][1] ), .S(\SUMB[6][1] ) );
  ADDFX2M S1_5_0 ( .A(\ab[5][0] ), .B(\CARRYB[4][0] ), .CI(\SUMB[4][1] ), .CO(
        \CARRYB[5][0] ), .S(\A1[3] ) );
  ADDFX2M S2_5_3 ( .A(\ab[5][3] ), .B(\CARRYB[4][3] ), .CI(\SUMB[4][4] ), .CO(
        \CARRYB[5][3] ), .S(\SUMB[5][3] ) );
  ADDFX2M S2_5_2 ( .A(\ab[5][2] ), .B(\CARRYB[4][2] ), .CI(\SUMB[4][3] ), .CO(
        \CARRYB[5][2] ), .S(\SUMB[5][2] ) );
  ADDFX2M S2_5_1 ( .A(\ab[5][1] ), .B(\CARRYB[4][1] ), .CI(\SUMB[4][2] ), .CO(
        \CARRYB[5][1] ), .S(\SUMB[5][1] ) );
  ADDFX2M S1_4_0 ( .A(\ab[4][0] ), .B(\CARRYB[3][0] ), .CI(\SUMB[3][1] ), .CO(
        \CARRYB[4][0] ), .S(\A1[2] ) );
  ADDFX2M S2_4_4 ( .A(\ab[4][4] ), .B(\CARRYB[3][4] ), .CI(\SUMB[3][5] ), .CO(
        \CARRYB[4][4] ), .S(\SUMB[4][4] ) );
  ADDFX2M S2_4_3 ( .A(\ab[4][3] ), .B(\CARRYB[3][3] ), .CI(\SUMB[3][4] ), .CO(
        \CARRYB[4][3] ), .S(\SUMB[4][3] ) );
  ADDFX2M S2_4_2 ( .A(\ab[4][2] ), .B(\CARRYB[3][2] ), .CI(\SUMB[3][3] ), .CO(
        \CARRYB[4][2] ), .S(\SUMB[4][2] ) );
  ADDFX2M S2_4_1 ( .A(\ab[4][1] ), .B(\CARRYB[3][1] ), .CI(\SUMB[3][2] ), .CO(
        \CARRYB[4][1] ), .S(\SUMB[4][1] ) );
  ADDFX2M S1_3_0 ( .A(\ab[3][0] ), .B(\CARRYB[2][0] ), .CI(\SUMB[2][1] ), .CO(
        \CARRYB[3][0] ), .S(\A1[1] ) );
  ADDFX2M S2_3_4 ( .A(\ab[3][4] ), .B(\CARRYB[2][4] ), .CI(\SUMB[2][5] ), .CO(
        \CARRYB[3][4] ), .S(\SUMB[3][4] ) );
  ADDFX2M S2_3_2 ( .A(\ab[3][2] ), .B(\CARRYB[2][2] ), .CI(\SUMB[2][3] ), .CO(
        \CARRYB[3][2] ), .S(\SUMB[3][2] ) );
  ADDFX2M S2_3_1 ( .A(\ab[3][1] ), .B(\CARRYB[2][1] ), .CI(\SUMB[2][2] ), .CO(
        \CARRYB[3][1] ), .S(\SUMB[3][1] ) );
  ADDFX2M S2_3_5 ( .A(\ab[3][5] ), .B(\CARRYB[2][5] ), .CI(\SUMB[2][6] ), .CO(
        \CARRYB[3][5] ), .S(\SUMB[3][5] ) );
  ADDFX2M S1_2_0 ( .A(\ab[2][0] ), .B(n8), .CI(\SUMB[1][1] ), .CO(
        \CARRYB[2][0] ), .S(\A1[0] ) );
  ADDFX2M S2_2_2 ( .A(\ab[2][2] ), .B(n7), .CI(\SUMB[1][3] ), .CO(
        \CARRYB[2][2] ), .S(\SUMB[2][2] ) );
  ADDFX2M S2_2_1 ( .A(\ab[2][1] ), .B(n6), .CI(\SUMB[1][2] ), .CO(
        \CARRYB[2][1] ), .S(\SUMB[2][1] ) );
  ADDFX2M S2_6_4 ( .A(\ab[6][4] ), .B(\CARRYB[5][4] ), .CI(\SUMB[5][5] ), .CO(
        \CARRYB[6][4] ), .S(\SUMB[6][4] ) );
  ADDFX2M S2_6_3 ( .A(\ab[6][3] ), .B(\CARRYB[5][3] ), .CI(\SUMB[5][4] ), .CO(
        \CARRYB[6][3] ), .S(\SUMB[6][3] ) );
  ADDFX2M S2_6_5 ( .A(\ab[6][5] ), .B(\CARRYB[5][5] ), .CI(\SUMB[5][6] ), .CO(
        \CARRYB[6][5] ), .S(\SUMB[6][5] ) );
  ADDFX2M S2_5_4 ( .A(\ab[5][4] ), .B(\CARRYB[4][4] ), .CI(\SUMB[4][5] ), .CO(
        \CARRYB[5][4] ), .S(\SUMB[5][4] ) );
  ADDFX2M S2_5_5 ( .A(\ab[5][5] ), .B(\CARRYB[4][5] ), .CI(\SUMB[4][6] ), .CO(
        \CARRYB[5][5] ), .S(\SUMB[5][5] ) );
  ADDFX2M S3_4_6 ( .A(\ab[4][6] ), .B(\CARRYB[3][6] ), .CI(\ab[3][7] ), .CO(
        \CARRYB[4][6] ), .S(\SUMB[4][6] ) );
  ADDFX2M S2_4_5 ( .A(\ab[4][5] ), .B(\CARRYB[3][5] ), .CI(\SUMB[3][6] ), .CO(
        \CARRYB[4][5] ), .S(\SUMB[4][5] ) );
  ADDFX2M S2_3_3 ( .A(\ab[3][3] ), .B(\CARRYB[2][3] ), .CI(\SUMB[2][4] ), .CO(
        \CARRYB[3][3] ), .S(\SUMB[3][3] ) );
  ADDFX2M S3_3_6 ( .A(\ab[3][6] ), .B(\CARRYB[2][6] ), .CI(\ab[2][7] ), .CO(
        \CARRYB[3][6] ), .S(\SUMB[3][6] ) );
  ADDFX2M S2_2_4 ( .A(\ab[2][4] ), .B(n5), .CI(\SUMB[1][5] ), .CO(
        \CARRYB[2][4] ), .S(\SUMB[2][4] ) );
  ADDFX2M S2_2_3 ( .A(\ab[2][3] ), .B(n4), .CI(\SUMB[1][4] ), .CO(
        \CARRYB[2][3] ), .S(\SUMB[2][3] ) );
  ADDFX2M S3_2_6 ( .A(\ab[2][6] ), .B(n9), .CI(\ab[1][7] ), .CO(\CARRYB[2][6] ), .S(\SUMB[2][6] ) );
  ADDFX2M S2_2_5 ( .A(\ab[2][5] ), .B(n3), .CI(\SUMB[1][6] ), .CO(
        \CARRYB[2][5] ), .S(\SUMB[2][5] ) );
  ADDFX2M S4_0 ( .A(\ab[7][0] ), .B(\CARRYB[6][0] ), .CI(\SUMB[6][1] ), .CO(
        \CARRYB[7][0] ), .S(\SUMB[7][0] ) );
  ADDFX2M S4_1 ( .A(\ab[7][1] ), .B(\CARRYB[6][1] ), .CI(\SUMB[6][2] ), .CO(
        \CARRYB[7][1] ), .S(\SUMB[7][1] ) );
  ADDFX2M S4_4 ( .A(\ab[7][4] ), .B(\CARRYB[6][4] ), .CI(\SUMB[6][5] ), .CO(
        \CARRYB[7][4] ), .S(\SUMB[7][4] ) );
  ADDFX2M S4_3 ( .A(\ab[7][3] ), .B(\CARRYB[6][3] ), .CI(\SUMB[6][4] ), .CO(
        \CARRYB[7][3] ), .S(\SUMB[7][3] ) );
  ADDFX2M S4_2 ( .A(\ab[7][2] ), .B(\CARRYB[6][2] ), .CI(\SUMB[6][3] ), .CO(
        \CARRYB[7][2] ), .S(\SUMB[7][2] ) );
  AND2X2M U2 ( .A(\ab[0][6] ), .B(\ab[1][5] ), .Y(n3) );
  AND2X2M U3 ( .A(\ab[0][4] ), .B(\ab[1][3] ), .Y(n4) );
  AND2X2M U4 ( .A(\ab[0][5] ), .B(\ab[1][4] ), .Y(n5) );
  AND2X2M U5 ( .A(\ab[0][2] ), .B(\ab[1][1] ), .Y(n6) );
  AND2X2M U6 ( .A(\ab[0][3] ), .B(\ab[1][2] ), .Y(n7) );
  AND2X2M U7 ( .A(\ab[0][1] ), .B(\ab[1][0] ), .Y(n8) );
  AND2X2M U8 ( .A(\ab[0][7] ), .B(\ab[1][6] ), .Y(n9) );
  AND2X2M U9 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(n10) );
  INVX2M U10 ( .A(\ab[0][6] ), .Y(n22) );
  CLKXOR2X2M U11 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(\A1[8] ) );
  INVX2M U12 ( .A(\ab[0][7] ), .Y(n23) );
  INVX2M U13 ( .A(\ab[0][4] ), .Y(n20) );
  INVX2M U14 ( .A(\ab[0][5] ), .Y(n21) );
  INVX2M U15 ( .A(\ab[0][3] ), .Y(n19) );
  INVX2M U16 ( .A(\ab[0][2] ), .Y(n18) );
  AND2X2M U17 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(n11) );
  AND2X2M U18 ( .A(\CARRYB[7][0] ), .B(\SUMB[7][1] ), .Y(n12) );
  CLKXOR2X2M U19 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(\A1[9] ) );
  CLKXOR2X2M U20 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(\A1[7] ) );
  AND2X2M U21 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(n13) );
  CLKXOR2X2M U22 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(\A1[10] ) );
  CLKXOR2X2M U23 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(\A1[11] ) );
  AND2X2M U24 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(n14) );
  AND2X2M U25 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(n15) );
  AND2X2M U26 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(n16) );
  CLKXOR2X2M U27 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(\A1[12] ) );
  XNOR2X2M U28 ( .A(\CARRYB[7][0] ), .B(n17), .Y(\A1[6] ) );
  INVX2M U29 ( .A(\SUMB[7][1] ), .Y(n17) );
  CLKXOR2X2M U30 ( .A(\ab[1][0] ), .B(\ab[0][1] ), .Y(PRODUCT[1]) );
  XNOR2X2M U31 ( .A(\ab[1][6] ), .B(n23), .Y(\SUMB[1][6] ) );
  XNOR2X2M U32 ( .A(\ab[1][4] ), .B(n21), .Y(\SUMB[1][4] ) );
  XNOR2X2M U33 ( .A(\ab[1][5] ), .B(n22), .Y(\SUMB[1][5] ) );
  XNOR2X2M U34 ( .A(\ab[1][2] ), .B(n19), .Y(\SUMB[1][2] ) );
  XNOR2X2M U35 ( .A(\ab[1][3] ), .B(n20), .Y(\SUMB[1][3] ) );
  XNOR2X2M U36 ( .A(\ab[1][1] ), .B(n18), .Y(\SUMB[1][1] ) );
  INVX2M U37 ( .A(A[1]), .Y(n38) );
  INVX2M U38 ( .A(A[0]), .Y(n39) );
  INVX2M U39 ( .A(A[2]), .Y(n37) );
  INVX2M U40 ( .A(B[6]), .Y(n25) );
  INVX2M U41 ( .A(A[3]), .Y(n36) );
  INVX2M U42 ( .A(A[4]), .Y(n35) );
  INVX2M U43 ( .A(A[5]), .Y(n34) );
  INVX2M U44 ( .A(A[6]), .Y(n33) );
  INVX2M U45 ( .A(A[7]), .Y(n32) );
  INVX2M U46 ( .A(B[2]), .Y(n29) );
  INVX2M U47 ( .A(B[3]), .Y(n28) );
  INVX2M U48 ( .A(B[5]), .Y(n26) );
  INVX2M U49 ( .A(B[4]), .Y(n27) );
  INVX2M U50 ( .A(B[7]), .Y(n24) );
  INVX2M U51 ( .A(B[0]), .Y(n31) );
  INVX2M U52 ( .A(B[1]), .Y(n30) );
  NOR2X1M U54 ( .A(n32), .B(n24), .Y(\ab[7][7] ) );
  NOR2X1M U55 ( .A(n32), .B(n25), .Y(\ab[7][6] ) );
  NOR2X1M U56 ( .A(n32), .B(n26), .Y(\ab[7][5] ) );
  NOR2X1M U57 ( .A(n32), .B(n27), .Y(\ab[7][4] ) );
  NOR2X1M U58 ( .A(n32), .B(n28), .Y(\ab[7][3] ) );
  NOR2X1M U59 ( .A(n32), .B(n29), .Y(\ab[7][2] ) );
  NOR2X1M U60 ( .A(n32), .B(n30), .Y(\ab[7][1] ) );
  NOR2X1M U61 ( .A(n32), .B(n31), .Y(\ab[7][0] ) );
  NOR2X1M U62 ( .A(n24), .B(n33), .Y(\ab[6][7] ) );
  NOR2X1M U63 ( .A(n25), .B(n33), .Y(\ab[6][6] ) );
  NOR2X1M U64 ( .A(n26), .B(n33), .Y(\ab[6][5] ) );
  NOR2X1M U65 ( .A(n27), .B(n33), .Y(\ab[6][4] ) );
  NOR2X1M U66 ( .A(n28), .B(n33), .Y(\ab[6][3] ) );
  NOR2X1M U67 ( .A(n29), .B(n33), .Y(\ab[6][2] ) );
  NOR2X1M U68 ( .A(n30), .B(n33), .Y(\ab[6][1] ) );
  NOR2X1M U69 ( .A(n31), .B(n33), .Y(\ab[6][0] ) );
  NOR2X1M U70 ( .A(n24), .B(n34), .Y(\ab[5][7] ) );
  NOR2X1M U71 ( .A(n25), .B(n34), .Y(\ab[5][6] ) );
  NOR2X1M U72 ( .A(n26), .B(n34), .Y(\ab[5][5] ) );
  NOR2X1M U73 ( .A(n27), .B(n34), .Y(\ab[5][4] ) );
  NOR2X1M U74 ( .A(n28), .B(n34), .Y(\ab[5][3] ) );
  NOR2X1M U75 ( .A(n29), .B(n34), .Y(\ab[5][2] ) );
  NOR2X1M U76 ( .A(n30), .B(n34), .Y(\ab[5][1] ) );
  NOR2X1M U77 ( .A(n31), .B(n34), .Y(\ab[5][0] ) );
  NOR2X1M U78 ( .A(n24), .B(n35), .Y(\ab[4][7] ) );
  NOR2X1M U79 ( .A(n25), .B(n35), .Y(\ab[4][6] ) );
  NOR2X1M U80 ( .A(n26), .B(n35), .Y(\ab[4][5] ) );
  NOR2X1M U81 ( .A(n27), .B(n35), .Y(\ab[4][4] ) );
  NOR2X1M U82 ( .A(n28), .B(n35), .Y(\ab[4][3] ) );
  NOR2X1M U83 ( .A(n29), .B(n35), .Y(\ab[4][2] ) );
  NOR2X1M U84 ( .A(n30), .B(n35), .Y(\ab[4][1] ) );
  NOR2X1M U85 ( .A(n31), .B(n35), .Y(\ab[4][0] ) );
  NOR2X1M U86 ( .A(n24), .B(n36), .Y(\ab[3][7] ) );
  NOR2X1M U87 ( .A(n25), .B(n36), .Y(\ab[3][6] ) );
  NOR2X1M U88 ( .A(n26), .B(n36), .Y(\ab[3][5] ) );
  NOR2X1M U89 ( .A(n27), .B(n36), .Y(\ab[3][4] ) );
  NOR2X1M U90 ( .A(n28), .B(n36), .Y(\ab[3][3] ) );
  NOR2X1M U91 ( .A(n29), .B(n36), .Y(\ab[3][2] ) );
  NOR2X1M U92 ( .A(n30), .B(n36), .Y(\ab[3][1] ) );
  NOR2X1M U93 ( .A(n31), .B(n36), .Y(\ab[3][0] ) );
  NOR2X1M U94 ( .A(n24), .B(n37), .Y(\ab[2][7] ) );
  NOR2X1M U95 ( .A(n25), .B(n37), .Y(\ab[2][6] ) );
  NOR2X1M U96 ( .A(n26), .B(n37), .Y(\ab[2][5] ) );
  NOR2X1M U97 ( .A(n27), .B(n37), .Y(\ab[2][4] ) );
  NOR2X1M U98 ( .A(n28), .B(n37), .Y(\ab[2][3] ) );
  NOR2X1M U99 ( .A(n29), .B(n37), .Y(\ab[2][2] ) );
  NOR2X1M U100 ( .A(n30), .B(n37), .Y(\ab[2][1] ) );
  NOR2X1M U101 ( .A(n31), .B(n37), .Y(\ab[2][0] ) );
  NOR2X1M U102 ( .A(n24), .B(n38), .Y(\ab[1][7] ) );
  NOR2X1M U103 ( .A(n25), .B(n38), .Y(\ab[1][6] ) );
  NOR2X1M U104 ( .A(n26), .B(n38), .Y(\ab[1][5] ) );
  NOR2X1M U105 ( .A(n27), .B(n38), .Y(\ab[1][4] ) );
  NOR2X1M U106 ( .A(n28), .B(n38), .Y(\ab[1][3] ) );
  NOR2X1M U107 ( .A(n29), .B(n38), .Y(\ab[1][2] ) );
  NOR2X1M U108 ( .A(n30), .B(n38), .Y(\ab[1][1] ) );
  NOR2X1M U109 ( .A(n31), .B(n38), .Y(\ab[1][0] ) );
  NOR2X1M U110 ( .A(n24), .B(n39), .Y(\ab[0][7] ) );
  NOR2X1M U111 ( .A(n25), .B(n39), .Y(\ab[0][6] ) );
  NOR2X1M U112 ( .A(n26), .B(n39), .Y(\ab[0][5] ) );
  NOR2X1M U113 ( .A(n27), .B(n39), .Y(\ab[0][4] ) );
  NOR2X1M U114 ( .A(n28), .B(n39), .Y(\ab[0][3] ) );
  NOR2X1M U115 ( .A(n29), .B(n39), .Y(\ab[0][2] ) );
  NOR2X1M U116 ( .A(n30), .B(n39), .Y(\ab[0][1] ) );
  NOR2X1M U117 ( .A(n31), .B(n39), .Y(PRODUCT[0]) );
  ALU_DATA_WIDTH8_FUN_WIDTH4_OUT_WIDTH16_DW01_add_1 FS_1 ( .A({1'b0, \A1[12] , 
        \A1[11] , \A1[10] , \A1[9] , \A1[8] , \A1[7] , \A1[6] , \SUMB[7][0] , 
        \A1[4] , \A1[3] , \A1[2] , \A1[1] , \A1[0] }), .B({n10, n15, n16, n14, 
        n13, n11, n12, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), 
        .SUM(PRODUCT[15:2]) );
endmodule


module ALU_DATA_WIDTH8_FUN_WIDTH4_OUT_WIDTH16_test_1 ( clk, rst_n, op_a, op_b, 
        alu_fun, alu_en, alu_out_valid, alu_out, test_si, test_so, test_se );
  input [7:0] op_a;
  input [7:0] op_b;
  input [3:0] alu_fun;
  output [15:0] alu_out;
  input clk, rst_n, alu_en, test_si, test_se;
  output alu_out_valid, test_so;
  wire   N63, N64, N65, N66, N67, N68, N69, N70, N71, N72, N73, N74, N75, N76,
         N77, N78, N79, N80, N81, N82, N83, N84, N85, N86, N87, N88, N89, N90,
         N91, N92, N93, N94, N95, N96, N97, N98, N99, N100, N101, N102, N103,
         N104, N153, N154, N155, n10, n11, n12, n13, n14, n16, n18, n19, n20,
         n21, n22, n24, n27, n28, n29, n30, n31, n34, n36, n37, n38, n39, n40,
         n41, n42, n44, n45, n46, n49, n50, n51, n52, n53, n55, n57, n58, n59,
         n60, n61, n63, n65, n66, n67, n68, n69, n71, n73, n74, n75, n76, n77,
         n79, n81, n82, n83, n84, n85, n87, n89, n90, n93, n94, n95, n96, n98,
         n100, n101, n102, n105, n106, n107, n108, n109, n110, n111, n113,
         n114, n115, n116, n117, n118, n120, n122, n124, n126, n128, n130,
         n132, n134, n136, n138, n104, n112, n119, n140, n142, n144, n146,
         n148, n150, n152, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232;
  wire   [7:0] a;
  wire   [7:0] b;
  assign test_so = b[7];

  SDFFRQX1M \b_reg[7]  ( .D(op_b[7]), .SI(b[6]), .SE(test_se), .CK(clk), .RN(
        rst_n), .Q(b[7]) );
  SDFFRQX1M \b_reg[6]  ( .D(op_b[6]), .SI(b[5]), .SE(test_se), .CK(clk), .RN(
        rst_n), .Q(b[6]) );
  SDFFRQX1M \b_reg[5]  ( .D(op_b[5]), .SI(b[4]), .SE(test_se), .CK(clk), .RN(
        rst_n), .Q(b[5]) );
  SDFFRQX1M \b_reg[4]  ( .D(op_b[4]), .SI(b[3]), .SE(test_se), .CK(clk), .RN(
        rst_n), .Q(b[4]) );
  SDFFRQX1M \b_reg[3]  ( .D(op_b[3]), .SI(b[2]), .SE(test_se), .CK(clk), .RN(
        rst_n), .Q(b[3]) );
  SDFFRQX1M \b_reg[2]  ( .D(op_b[2]), .SI(b[1]), .SE(test_se), .CK(clk), .RN(
        rst_n), .Q(b[2]) );
  SDFFRQX1M \b_reg[1]  ( .D(op_b[1]), .SI(b[0]), .SE(test_se), .CK(clk), .RN(
        rst_n), .Q(b[1]) );
  SDFFRQX1M \b_reg[0]  ( .D(op_b[0]), .SI(alu_out_valid), .SE(test_se), .CK(
        clk), .RN(rst_n), .Q(b[0]) );
  SDFFRQX1M \a_reg[7]  ( .D(op_a[7]), .SI(a[6]), .SE(test_se), .CK(clk), .RN(
        rst_n), .Q(a[7]) );
  SDFFRQX1M \a_reg[6]  ( .D(op_a[6]), .SI(a[5]), .SE(test_se), .CK(clk), .RN(
        rst_n), .Q(a[6]) );
  SDFFRQX1M \a_reg[5]  ( .D(op_a[5]), .SI(a[4]), .SE(test_se), .CK(clk), .RN(
        rst_n), .Q(a[5]) );
  SDFFRQX1M \a_reg[4]  ( .D(op_a[4]), .SI(a[3]), .SE(test_se), .CK(clk), .RN(
        rst_n), .Q(a[4]) );
  SDFFRQX1M \a_reg[3]  ( .D(op_a[3]), .SI(a[2]), .SE(test_se), .CK(clk), .RN(
        rst_n), .Q(a[3]) );
  SDFFRQX1M \a_reg[2]  ( .D(op_a[2]), .SI(a[1]), .SE(test_se), .CK(clk), .RN(
        rst_n), .Q(a[2]) );
  SDFFRQX1M \a_reg[1]  ( .D(op_a[1]), .SI(a[0]), .SE(test_se), .CK(clk), .RN(
        rst_n), .Q(a[1]) );
  SDFFRQX1M \a_reg[0]  ( .D(op_a[0]), .SI(test_si), .SE(test_se), .CK(clk), 
        .RN(rst_n), .Q(a[0]) );
  SDFFRQX1M alu_out_valid_reg ( .D(alu_en), .SI(alu_out[15]), .SE(test_se), 
        .CK(clk), .RN(rst_n), .Q(alu_out_valid) );
  SDFFRQX1M \alu_out_reg[5]  ( .D(n132), .SI(alu_out[4]), .SE(test_se), .CK(
        clk), .RN(rst_n), .Q(alu_out[5]) );
  SDFFRQX1M \alu_out_reg[6]  ( .D(n134), .SI(alu_out[5]), .SE(test_se), .CK(
        clk), .RN(rst_n), .Q(alu_out[6]) );
  SDFFRQX1M \alu_out_reg[7]  ( .D(n136), .SI(alu_out[6]), .SE(test_se), .CK(
        clk), .RN(rst_n), .Q(alu_out[7]) );
  SDFFRQX1M \alu_out_reg[8]  ( .D(n138), .SI(alu_out[7]), .SE(test_se), .CK(
        clk), .RN(rst_n), .Q(alu_out[8]) );
  SDFFRQX1M \alu_out_reg[9]  ( .D(n209), .SI(alu_out[8]), .SE(test_se), .CK(
        clk), .RN(rst_n), .Q(alu_out[9]) );
  SDFFRQX1M \alu_out_reg[10]  ( .D(n208), .SI(alu_out[9]), .SE(test_se), .CK(
        clk), .RN(rst_n), .Q(alu_out[10]) );
  SDFFRQX1M \alu_out_reg[4]  ( .D(n130), .SI(alu_out[3]), .SE(test_se), .CK(
        clk), .RN(rst_n), .Q(alu_out[4]) );
  SDFFRQX1M \alu_out_reg[11]  ( .D(n207), .SI(alu_out[10]), .SE(test_se), .CK(
        clk), .RN(rst_n), .Q(alu_out[11]) );
  SDFFRQX1M \alu_out_reg[12]  ( .D(n206), .SI(alu_out[11]), .SE(test_se), .CK(
        clk), .RN(rst_n), .Q(alu_out[12]) );
  SDFFRQX1M \alu_out_reg[13]  ( .D(n205), .SI(alu_out[12]), .SE(test_se), .CK(
        clk), .RN(rst_n), .Q(alu_out[13]) );
  SDFFRQX1M \alu_out_reg[14]  ( .D(n204), .SI(alu_out[13]), .SE(test_se), .CK(
        clk), .RN(rst_n), .Q(alu_out[14]) );
  SDFFRQX1M \alu_out_reg[15]  ( .D(n203), .SI(alu_out[14]), .SE(test_se), .CK(
        clk), .RN(rst_n), .Q(alu_out[15]) );
  SDFFRQX1M \alu_out_reg[3]  ( .D(n128), .SI(alu_out[2]), .SE(test_se), .CK(
        clk), .RN(rst_n), .Q(alu_out[3]) );
  SDFFRQX1M \alu_out_reg[2]  ( .D(n126), .SI(alu_out[1]), .SE(test_se), .CK(
        clk), .RN(rst_n), .Q(alu_out[2]) );
  SDFFRQX1M \alu_out_reg[1]  ( .D(n124), .SI(alu_out[0]), .SE(test_se), .CK(
        clk), .RN(rst_n), .Q(alu_out[1]) );
  SDFFRQX1M \alu_out_reg[0]  ( .D(n122), .SI(a[7]), .SE(test_se), .CK(clk), 
        .RN(rst_n), .Q(alu_out[0]) );
  BUFX2M U38 ( .A(a[6]), .Y(n148) );
  INVX2M U39 ( .A(alu_en), .Y(n222) );
  INVX2M U40 ( .A(n27), .Y(n213) );
  INVX2M U41 ( .A(n19), .Y(n211) );
  AOI222X1M U42 ( .A0(N88), .A1(n104), .B0(N104), .B1(n31), .C0(n213), .C1(
        n226), .Y(n96) );
  NOR3BX2M U43 ( .AN(n98), .B(n220), .C(n221), .Y(n31) );
  NOR3X2M U44 ( .A(n214), .B(n222), .C(n221), .Y(n44) );
  NAND4BX1M U45 ( .AN(n100), .B(alu_en), .C(n221), .D(n214), .Y(n27) );
  NOR2BX2M U46 ( .AN(n18), .B(n100), .Y(n40) );
  NOR2BX2M U47 ( .AN(n44), .B(n90), .Y(n30) );
  NAND3X2M U48 ( .A(n219), .B(n18), .C(N155), .Y(n19) );
  INVX2M U49 ( .A(n107), .Y(n210) );
  INVX2M U50 ( .A(n89), .Y(n217) );
  INVX2M U51 ( .A(n24), .Y(n216) );
  INVX2M U52 ( .A(n29), .Y(n212) );
  INVX2M U53 ( .A(n90), .Y(n219) );
  AOI222X1M U54 ( .A0(n119), .A1(n30), .B0(N97), .B1(n31), .C0(n213), .C1(n232), .Y(n11) );
  AOI222X1M U55 ( .A0(n140), .A1(n30), .B0(N98), .B1(n31), .C0(n213), .C1(n196), .Y(n37) );
  AOI222X1M U56 ( .A0(N87), .A1(n104), .B0(n213), .B1(n227), .C0(n150), .C1(
        n30), .Y(n82) );
  INVX2M U57 ( .A(n152), .Y(n202) );
  AOI211X2M U58 ( .A0(N80), .A1(n21), .B0(n216), .C0(n213), .Y(n107) );
  NOR3X2M U59 ( .A(n222), .B(alu_fun[0]), .C(n106), .Y(n89) );
  NAND2X2M U60 ( .A(n42), .B(n19), .Y(n41) );
  NAND4X2M U61 ( .A(N154), .B(n44), .C(alu_fun[1]), .D(n218), .Y(n42) );
  NOR3X2M U62 ( .A(n222), .B(alu_fun[0]), .C(n214), .Y(n18) );
  NAND4X2M U63 ( .A(alu_fun[0]), .B(n219), .C(alu_en), .D(n214), .Y(n29) );
  OAI221X1M U64 ( .A0(n112), .A1(n24), .B0(n217), .B1(n232), .C0(n27), .Y(n22)
         );
  OAI221X1M U65 ( .A0(n119), .A1(n24), .B0(n217), .B1(n196), .C0(n27), .Y(n46)
         );
  OAI221X1M U66 ( .A0(n148), .A1(n24), .B0(n217), .B1(n227), .C0(n27), .Y(n85)
         );
  OAI221X1M U67 ( .A0(n232), .A1(n28), .B0(n112), .B1(n217), .C0(n29), .Y(n20)
         );
  OAI221X1M U68 ( .A0(n28), .A1(n196), .B0(n119), .B1(n217), .C0(n29), .Y(n45)
         );
  OAI221X1M U69 ( .A0(n28), .A1(n227), .B0(n148), .B1(n217), .C0(n29), .Y(n87)
         );
  NOR2BX2M U70 ( .AN(n110), .B(alu_fun[0]), .Y(n14) );
  NOR3X2M U71 ( .A(alu_fun[2]), .B(alu_fun[3]), .C(n222), .Y(n98) );
  NAND3X2M U72 ( .A(alu_en), .B(n120), .C(alu_fun[0]), .Y(n24) );
  OAI21X2M U73 ( .A0(alu_fun[3]), .A1(n100), .B0(n106), .Y(n120) );
  INVX2M U74 ( .A(alu_fun[0]), .Y(n221) );
  INVX2M U75 ( .A(alu_fun[1]), .Y(n220) );
  NAND3X2M U76 ( .A(n220), .B(n218), .C(alu_fun[3]), .Y(n106) );
  INVX2M U77 ( .A(alu_fun[2]), .Y(n218) );
  NOR2BX2M U78 ( .AN(n98), .B(alu_fun[1]), .Y(n110) );
  AND2X2M U79 ( .A(n110), .B(alu_fun[0]), .Y(n21) );
  BUFX2M U80 ( .A(n34), .Y(n104) );
  NOR3BX2M U81 ( .AN(n98), .B(n220), .C(alu_fun[0]), .Y(n34) );
  AND4X2M U82 ( .A(N153), .B(n218), .C(n18), .D(alu_fun[1]), .Y(n16) );
  INVX2M U83 ( .A(n119), .Y(n196) );
  AOI221XLM U84 ( .A0(n150), .A1(n89), .B0(n216), .B1(n226), .C0(n213), .Y(
        n102) );
  AOI221XLM U85 ( .A0(n89), .A1(n226), .B0(n150), .B1(n215), .C0(n212), .Y(
        n101) );
  INVX2M U86 ( .A(n28), .Y(n215) );
  NAND2X2M U87 ( .A(alu_fun[1]), .B(alu_fun[2]), .Y(n100) );
  NAND2X2M U88 ( .A(alu_fun[2]), .B(n220), .Y(n90) );
  INVX2M U89 ( .A(alu_fun[3]), .Y(n214) );
  NAND2X2M U90 ( .A(alu_en), .B(n105), .Y(n28) );
  OAI22X1M U91 ( .A0(n221), .A1(n106), .B0(alu_fun[3]), .B1(n90), .Y(n105) );
  INVX2M U92 ( .A(n150), .Y(n226) );
  INVX2M U93 ( .A(n148), .Y(n227) );
  INVX2M U94 ( .A(n112), .Y(n232) );
  INVX2M U95 ( .A(n140), .Y(n231) );
  INVX2M U96 ( .A(n142), .Y(n230) );
  INVX2M U97 ( .A(n144), .Y(n229) );
  INVX2M U98 ( .A(n146), .Y(n228) );
  NAND4X2M U99 ( .A(n10), .B(n11), .C(n12), .D(n13), .Y(n122) );
  AOI222X1M U100 ( .A0(b[0]), .A1(n20), .B0(N72), .B1(n21), .C0(n22), .C1(n197), .Y(n12) );
  AOI222X1M U101 ( .A0(alu_out[0]), .A1(n222), .B0(N81), .B1(n104), .C0(n212), 
        .C1(n112), .Y(n10) );
  AOI211X2M U102 ( .A0(N63), .A1(n14), .B0(n211), .C0(n16), .Y(n13) );
  BUFX2M U103 ( .A(a[7]), .Y(n150) );
  BUFX2M U104 ( .A(b[6]), .Y(n152) );
  NAND4X2M U105 ( .A(n36), .B(n37), .C(n38), .D(n39), .Y(n124) );
  AOI222X1M U106 ( .A0(b[1]), .A1(n45), .B0(N73), .B1(n21), .C0(n46), .C1(n225), .Y(n38) );
  AOI222X1M U107 ( .A0(alu_out[1]), .A1(n222), .B0(N82), .B1(n104), .C0(n212), 
        .C1(n119), .Y(n36) );
  AOI221XLM U108 ( .A0(n40), .A1(n112), .B0(N64), .B1(n14), .C0(n41), .Y(n39)
         );
  BUFX2M U109 ( .A(a[5]), .Y(n146) );
  AOI222X1M U110 ( .A0(N99), .A1(n31), .B0(n53), .B1(n199), .C0(b[2]), .C1(n55), .Y(n51) );
  OAI221X1M U111 ( .A0(n140), .A1(n24), .B0(n217), .B1(n231), .C0(n27), .Y(n53) );
  OAI221X1M U112 ( .A0(n28), .A1(n231), .B0(n140), .B1(n217), .C0(n29), .Y(n55) );
  NAND4X2M U113 ( .A(n49), .B(n50), .C(n51), .D(n52), .Y(n126) );
  AOI22X1M U114 ( .A0(n140), .A1(n212), .B0(alu_out[2]), .B1(n222), .Y(n49) );
  AOI222X1M U115 ( .A0(N83), .A1(n104), .B0(n213), .B1(n231), .C0(n142), .C1(
        n30), .Y(n50) );
  AOI222X1M U116 ( .A0(N74), .A1(n21), .B0(n40), .B1(n119), .C0(N65), .C1(n14), 
        .Y(n52) );
  BUFX2M U117 ( .A(a[4]), .Y(n144) );
  BUFX2M U118 ( .A(a[3]), .Y(n142) );
  AOI222X1M U119 ( .A0(N100), .A1(n31), .B0(n61), .B1(n201), .C0(b[3]), .C1(
        n63), .Y(n59) );
  OAI221X1M U120 ( .A0(n142), .A1(n24), .B0(n217), .B1(n230), .C0(n27), .Y(n61) );
  OAI221X1M U121 ( .A0(n28), .A1(n230), .B0(n142), .B1(n217), .C0(n29), .Y(n63) );
  NAND4X2M U122 ( .A(n57), .B(n58), .C(n59), .D(n60), .Y(n128) );
  AOI22X1M U123 ( .A0(n142), .A1(n212), .B0(alu_out[3]), .B1(n222), .Y(n57) );
  AOI222X1M U124 ( .A0(N75), .A1(n21), .B0(n140), .B1(n40), .C0(N66), .C1(n14), 
        .Y(n60) );
  AOI222X1M U125 ( .A0(N84), .A1(n104), .B0(n213), .B1(n230), .C0(n144), .C1(
        n30), .Y(n58) );
  BUFX2M U126 ( .A(a[2]), .Y(n140) );
  AOI222X1M U127 ( .A0(N101), .A1(n31), .B0(n69), .B1(n224), .C0(b[4]), .C1(
        n71), .Y(n67) );
  INVX2M U128 ( .A(b[4]), .Y(n224) );
  OAI221X1M U129 ( .A0(n144), .A1(n24), .B0(n217), .B1(n229), .C0(n27), .Y(n69) );
  OAI221X1M U130 ( .A0(n28), .A1(n229), .B0(n144), .B1(n217), .C0(n29), .Y(n71) );
  INVX2M U131 ( .A(n116), .Y(n205) );
  AOI221XLM U132 ( .A0(N94), .A1(n104), .B0(alu_out[13]), .B1(n222), .C0(n210), 
        .Y(n116) );
  INVX2M U166 ( .A(n117), .Y(n204) );
  AOI221XLM U167 ( .A0(N95), .A1(n104), .B0(alu_out[14]), .B1(n222), .C0(n210), 
        .Y(n117) );
  INVX2M U168 ( .A(n118), .Y(n203) );
  AOI221XLM U169 ( .A0(N96), .A1(n104), .B0(alu_out[15]), .B1(n222), .C0(n210), 
        .Y(n118) );
  NAND4X2M U170 ( .A(n65), .B(n66), .C(n67), .D(n68), .Y(n130) );
  AOI22X1M U171 ( .A0(n144), .A1(n212), .B0(alu_out[4]), .B1(n222), .Y(n65) );
  AOI222X1M U172 ( .A0(N76), .A1(n21), .B0(n142), .B1(n40), .C0(N67), .C1(n14), 
        .Y(n68) );
  AOI222X1M U173 ( .A0(N85), .A1(n104), .B0(n213), .B1(n229), .C0(n146), .C1(
        n30), .Y(n66) );
  BUFX2M U174 ( .A(a[1]), .Y(n119) );
  BUFX2M U175 ( .A(a[0]), .Y(n112) );
  INVX2M U176 ( .A(n113), .Y(n208) );
  AOI221XLM U177 ( .A0(N91), .A1(n104), .B0(alu_out[10]), .B1(n222), .C0(n210), 
        .Y(n113) );
  INVX2M U178 ( .A(n114), .Y(n207) );
  AOI221XLM U179 ( .A0(N92), .A1(n104), .B0(alu_out[11]), .B1(n222), .C0(n210), 
        .Y(n114) );
  INVX2M U180 ( .A(n115), .Y(n206) );
  AOI221XLM U181 ( .A0(N93), .A1(n104), .B0(alu_out[12]), .B1(n222), .C0(n210), 
        .Y(n115) );
  AOI222X1M U182 ( .A0(N102), .A1(n31), .B0(n77), .B1(n223), .C0(b[5]), .C1(
        n79), .Y(n75) );
  INVX2M U183 ( .A(b[5]), .Y(n223) );
  OAI221X1M U184 ( .A0(n146), .A1(n24), .B0(n217), .B1(n228), .C0(n27), .Y(n77) );
  OAI221X1M U185 ( .A0(n28), .A1(n228), .B0(n146), .B1(n217), .C0(n29), .Y(n79) );
  INVX2M U186 ( .A(n111), .Y(n209) );
  AOI221XLM U187 ( .A0(N90), .A1(n104), .B0(alu_out[9]), .B1(n222), .C0(n210), 
        .Y(n111) );
  OAI2B11X2M U188 ( .A1N(alu_out[8]), .A0(alu_en), .B0(n107), .C0(n108), .Y(
        n138) );
  AOI221XLM U189 ( .A0(N89), .A1(n104), .B0(N71), .B1(n14), .C0(n109), .Y(n108) );
  NOR4X1M U190 ( .A(alu_fun[0]), .B(n222), .C(n100), .D(n226), .Y(n109) );
  NAND4X2M U191 ( .A(n73), .B(n74), .C(n75), .D(n76), .Y(n132) );
  AOI22X1M U192 ( .A0(n146), .A1(n212), .B0(alu_out[5]), .B1(n222), .Y(n73) );
  AOI222X1M U193 ( .A0(N77), .A1(n21), .B0(n144), .B1(n40), .C0(N68), .C1(n14), 
        .Y(n76) );
  AOI222X1M U194 ( .A0(N86), .A1(n104), .B0(n213), .B1(n228), .C0(n148), .C1(
        n30), .Y(n74) );
  NAND4X2M U195 ( .A(n81), .B(n82), .C(n83), .D(n84), .Y(n134) );
  AOI22X1M U196 ( .A0(n148), .A1(n212), .B0(alu_out[6]), .B1(n222), .Y(n81) );
  AOI222X1M U197 ( .A0(N78), .A1(n21), .B0(n146), .B1(n40), .C0(N69), .C1(n14), 
        .Y(n84) );
  AOI222X1M U198 ( .A0(N103), .A1(n31), .B0(n85), .B1(n202), .C0(n152), .C1(
        n87), .Y(n83) );
  NAND4BX1M U199 ( .AN(n93), .B(n94), .C(n95), .D(n96), .Y(n136) );
  AOI22X1M U200 ( .A0(n150), .A1(n212), .B0(alu_out[7]), .B1(n222), .Y(n95) );
  OAI2B2X1M U201 ( .A1N(b[7]), .A0(n101), .B0(b[7]), .B1(n102), .Y(n93) );
  AOI222X1M U202 ( .A0(N79), .A1(n21), .B0(n148), .B1(n40), .C0(N70), .C1(n14), 
        .Y(n94) );
  INVX2M U203 ( .A(n170), .Y(n198) );
  INVX2M U204 ( .A(n181), .Y(n200) );
  INVX2M U205 ( .A(b[0]), .Y(n197) );
  INVX2M U206 ( .A(b[2]), .Y(n199) );
  INVX2M U207 ( .A(b[3]), .Y(n201) );
  INVX2M U208 ( .A(b[1]), .Y(n225) );
  NOR2X1M U209 ( .A(n226), .B(b[7]), .Y(n192) );
  NAND2BX1M U210 ( .AN(b[4]), .B(n144), .Y(n185) );
  NAND2BX1M U211 ( .AN(n144), .B(b[4]), .Y(n174) );
  CLKNAND2X2M U212 ( .A(n185), .B(n174), .Y(n187) );
  NOR2X1M U213 ( .A(n201), .B(n142), .Y(n182) );
  NOR2X1M U214 ( .A(n199), .B(n140), .Y(n173) );
  NOR2X1M U215 ( .A(n197), .B(n112), .Y(n170) );
  CLKNAND2X2M U216 ( .A(n140), .B(n199), .Y(n184) );
  NAND2BX1M U217 ( .AN(n173), .B(n184), .Y(n179) );
  AOI21X1M U218 ( .A0(n170), .A1(n196), .B0(b[1]), .Y(n171) );
  AOI211X1M U219 ( .A0(n119), .A1(n198), .B0(n179), .C0(n171), .Y(n172) );
  CLKNAND2X2M U220 ( .A(n142), .B(n201), .Y(n183) );
  OAI31X1M U221 ( .A0(n182), .A1(n173), .A2(n172), .B0(n183), .Y(n175) );
  NAND2BX1M U222 ( .AN(n146), .B(b[5]), .Y(n190) );
  OAI211X1M U223 ( .A0(n187), .A1(n175), .B0(n174), .C0(n190), .Y(n176) );
  NAND2BX1M U224 ( .AN(b[5]), .B(n146), .Y(n186) );
  XNOR2X1M U225 ( .A(n148), .B(n152), .Y(n189) );
  AOI32X1M U226 ( .A0(n176), .A1(n186), .A2(n189), .B0(n152), .B1(n227), .Y(
        n177) );
  CLKNAND2X2M U227 ( .A(b[7]), .B(n226), .Y(n193) );
  OAI21X1M U228 ( .A0(n192), .A1(n177), .B0(n193), .Y(N155) );
  CLKNAND2X2M U229 ( .A(n112), .B(n197), .Y(n180) );
  OA21X1M U230 ( .A0(n180), .A1(n196), .B0(b[1]), .Y(n178) );
  AOI211X1M U231 ( .A0(n180), .A1(n196), .B0(n179), .C0(n178), .Y(n181) );
  AOI31X1M U232 ( .A0(n200), .A1(n184), .A2(n183), .B0(n182), .Y(n188) );
  OAI2B11X1M U233 ( .A1N(n188), .A0(n187), .B0(n186), .C0(n185), .Y(n191) );
  AOI32X1M U234 ( .A0(n191), .A1(n190), .A2(n189), .B0(n148), .B1(n202), .Y(
        n194) );
  AOI2B1X1M U235 ( .A1N(n194), .A0(n193), .B0(n192), .Y(n195) );
  CLKINVX1M U236 ( .A(n195), .Y(N154) );
  NOR2X1M U237 ( .A(N155), .B(N154), .Y(N153) );
  ALU_DATA_WIDTH8_FUN_WIDTH4_OUT_WIDTH16_DW_div_uns_0 div_50 ( .a({n150, n148, 
        n146, n144, n142, n140, n119, n112}), .b({b[7], n152, b[5:0]}), 
        .quotient({N104, N103, N102, N101, N100, N99, N98, N97}) );
  ALU_DATA_WIDTH8_FUN_WIDTH4_OUT_WIDTH16_DW01_sub_0 sub_47 ( .A({1'b0, n150, 
        n148, n146, n144, n142, n140, n119, n112}), .B({1'b0, b[7], n152, 
        b[5:0]}), .CI(1'b0), .DIFF({N80, N79, N78, N77, N76, N75, N74, N73, 
        N72}) );
  ALU_DATA_WIDTH8_FUN_WIDTH4_OUT_WIDTH16_DW01_add_0 add_44 ( .A({1'b0, n150, 
        n148, n146, n144, n142, n140, n119, n112}), .B({1'b0, b[7], n152, 
        b[5:0]}), .CI(1'b0), .SUM({N71, N70, N69, N68, N67, N66, N65, N64, N63}) );
  ALU_DATA_WIDTH8_FUN_WIDTH4_OUT_WIDTH16_DW02_mult_0 mult_49 ( .A({n150, n148, 
        n146, n144, n142, n140, n119, n112}), .B({b[7], n152, b[5:0]}), .TC(
        1'b0), .PRODUCT({N96, N95, N94, N93, N92, N91, N90, N89, N88, N87, N86, 
        N85, N84, N83, N82, N81}) );
endmodule


module RegFile_ADDR_WIDTH4_DATA_WIDTH8_test_1 ( clk, rst_n, addr, wr_en, rd_en, 
        wr_data, rd_data, rd_data_valid, reg_0, reg_1, reg_2, reg_3, test_si2, 
        test_si1, test_so1, test_se );
  input [3:0] addr;
  input [7:0] wr_data;
  output [7:0] rd_data;
  output [7:0] reg_0;
  output [7:0] reg_1;
  output [7:0] reg_2;
  output [7:0] reg_3;
  input clk, rst_n, wr_en, rd_en, test_si2, test_si1, test_se;
  output rd_data_valid, test_so1;
  wire   N10, N11, N12, N13, \mem[4][7] , \mem[4][6] , \mem[4][5] ,
         \mem[4][4] , \mem[4][3] , \mem[4][2] , \mem[4][1] , \mem[4][0] ,
         \mem[5][7] , \mem[5][6] , \mem[5][5] , \mem[5][4] , \mem[5][3] ,
         \mem[5][2] , \mem[5][1] , \mem[5][0] , \mem[6][7] , \mem[6][6] ,
         \mem[6][5] , \mem[6][4] , \mem[6][3] , \mem[6][2] , \mem[6][1] ,
         \mem[6][0] , \mem[7][7] , \mem[7][6] , \mem[7][5] , \mem[7][4] ,
         \mem[7][3] , \mem[7][2] , \mem[7][1] , \mem[7][0] , \mem[8][7] ,
         \mem[8][6] , \mem[8][5] , \mem[8][4] , \mem[8][3] , \mem[8][2] ,
         \mem[8][1] , \mem[8][0] , \mem[9][7] , \mem[9][6] , \mem[9][5] ,
         \mem[9][4] , \mem[9][3] , \mem[9][2] , \mem[9][1] , \mem[9][0] ,
         \mem[10][7] , \mem[10][6] , \mem[10][5] , \mem[10][4] , \mem[10][3] ,
         \mem[10][2] , \mem[10][1] , \mem[10][0] , \mem[11][7] , \mem[11][6] ,
         \mem[11][5] , \mem[11][4] , \mem[11][3] , \mem[11][2] , \mem[11][1] ,
         \mem[11][0] , \mem[12][7] , \mem[12][6] , \mem[12][5] , \mem[12][4] ,
         \mem[12][3] , \mem[12][2] , \mem[12][1] , \mem[12][0] , \mem[13][7] ,
         \mem[13][6] , \mem[13][5] , \mem[13][4] , \mem[13][3] , \mem[13][2] ,
         \mem[13][1] , \mem[13][0] , \mem[14][7] , \mem[14][6] , \mem[14][5] ,
         \mem[14][4] , \mem[14][3] , \mem[14][2] , \mem[14][1] , \mem[14][0] ,
         \mem[15][7] , \mem[15][6] , \mem[15][5] , \mem[15][4] , \mem[15][3] ,
         \mem[15][2] , \mem[15][1] , \mem[15][0] , N35, N36, N37, N38, N39,
         N40, N41, N42, n151, n152, n153, n154, n155, n156, n157, n158, n159,
         n160, n161, n162, n163, n164, n165, n166, n167, n168, n169, n170,
         n171, n172, n173, n174, n175, n176, n177, n178, n179, n180, n181,
         n182, n183, n184, n185, n186, n187, n188, n189, n190, n191, n192,
         n193, n194, n195, n196, n197, n198, n199, n200, n201, n202, n203,
         n204, n205, n206, n207, n208, n209, n210, n211, n212, n213, n214,
         n215, n216, n217, n218, n219, n220, n221, n222, n223, n224, n225,
         n226, n227, n228, n229, n230, n231, n232, n233, n234, n235, n236,
         n237, n238, n239, n240, n241, n242, n243, n244, n245, n246, n247,
         n248, n249, n250, n251, n252, n253, n254, n255, n256, n257, n258,
         n259, n260, n261, n262, n263, n264, n265, n266, n267, n268, n269,
         n270, n271, n272, n273, n274, n275, n276, n277, n278, n279, n280,
         n281, n282, n283, n284, n285, n286, n287, n288, n289, n290, n291,
         n292, n293, n294, n295, n296, n297, n298, n299, n300, n301, n302,
         n303, n304, n305, n306, n307, n308, n309, n310, n311, n312, n313,
         n314, n315, n437, n438, n439, n440, n441, n442, n443, n444, n445,
         n446, n447, n448, n449, n450, n451, n452, n453, n454, n455, n456,
         n457, n458, n459, n460, n461, n462, n463, n464, n465, n466, n467,
         n468, n469, n470, n471, n472, n473, n474, n475, n476, n477, n478,
         n479, n480, n481, n482, n483, n484, n485, n486, n487, n488, n489,
         n490, n491, n492, n493, n494, n495, n496, n497, n498, n499, n500,
         n501, n502, n503, n504, n505, n506, n507, n508, n509, n510, n511,
         n512, n513, n514, n515, n516, n517, n518, n519, n520, n521, n522,
         n523, n524, n525, n526, n527, n528, n529, n530, n531, n532, n533,
         n534, n535, n536, n537, n538, n539, n540, n541, n542, n543, n544,
         n545, n546, n547, n548, n549, n550, n551, n552, n553, n554, n555,
         n556, n557, n558, n559, n563, n564, n565, n566, n567, n568, n1;
  assign N10 = addr[0];
  assign N11 = addr[1];
  assign N12 = addr[2];
  assign N13 = addr[3];

  SDFFSQX1M \mem_reg[2][0]  ( .D(n292), .SI(reg_1[7]), .SE(n567), .CK(clk), 
        .SN(rst_n), .Q(reg_2[0]) );
  SDFFSQX1M \mem_reg[3][5]  ( .D(n289), .SI(reg_3[4]), .SE(n566), .CK(clk), 
        .SN(rst_n), .Q(reg_3[5]) );
  SDFFSQX1M \mem_reg[2][7]  ( .D(n299), .SI(reg_2[6]), .SE(n565), .CK(clk), 
        .SN(rst_n), .Q(reg_2[7]) );
  SDFFRQX1M rd_data_valid_reg ( .D(n179), .SI(rd_data[7]), .SE(n563), .CK(clk), 
        .RN(rst_n), .Q(rd_data_valid) );
  SDFFRQX1M \mem_reg[14][7]  ( .D(n203), .SI(\mem[14][6] ), .SE(n567), .CK(clk), .RN(rst_n), .Q(\mem[14][7] ) );
  SDFFRQX1M \mem_reg[14][6]  ( .D(n202), .SI(\mem[14][5] ), .SE(n566), .CK(clk), .RN(rst_n), .Q(\mem[14][6] ) );
  SDFFRQX1M \mem_reg[14][5]  ( .D(n201), .SI(\mem[14][4] ), .SE(n565), .CK(clk), .RN(rst_n), .Q(\mem[14][5] ) );
  SDFFRQX1M \mem_reg[14][4]  ( .D(n200), .SI(\mem[14][3] ), .SE(n564), .CK(clk), .RN(rst_n), .Q(\mem[14][4] ) );
  SDFFRQX1M \mem_reg[14][3]  ( .D(n199), .SI(\mem[14][2] ), .SE(n567), .CK(clk), .RN(rst_n), .Q(\mem[14][3] ) );
  SDFFRQX1M \mem_reg[14][2]  ( .D(n198), .SI(\mem[14][1] ), .SE(n566), .CK(clk), .RN(rst_n), .Q(\mem[14][2] ) );
  SDFFRQX1M \mem_reg[14][1]  ( .D(n197), .SI(\mem[14][0] ), .SE(n565), .CK(clk), .RN(rst_n), .Q(\mem[14][1] ) );
  SDFFRQX1M \mem_reg[14][0]  ( .D(n196), .SI(\mem[13][7] ), .SE(n563), .CK(clk), .RN(rst_n), .Q(\mem[14][0] ) );
  SDFFRQX1M \mem_reg[11][7]  ( .D(n227), .SI(\mem[11][6] ), .SE(n567), .CK(clk), .RN(rst_n), .Q(\mem[11][7] ) );
  SDFFRQX1M \mem_reg[11][6]  ( .D(n226), .SI(\mem[11][5] ), .SE(n566), .CK(clk), .RN(rst_n), .Q(\mem[11][6] ) );
  SDFFRQX1M \mem_reg[11][5]  ( .D(n225), .SI(\mem[11][4] ), .SE(n565), .CK(clk), .RN(rst_n), .Q(\mem[11][5] ) );
  SDFFRQX1M \mem_reg[11][4]  ( .D(n224), .SI(\mem[11][3] ), .SE(n564), .CK(clk), .RN(rst_n), .Q(\mem[11][4] ) );
  SDFFRQX1M \mem_reg[11][3]  ( .D(n223), .SI(\mem[11][2] ), .SE(n567), .CK(clk), .RN(rst_n), .Q(\mem[11][3] ) );
  SDFFRQX1M \mem_reg[11][2]  ( .D(n222), .SI(\mem[11][1] ), .SE(n566), .CK(clk), .RN(rst_n), .Q(\mem[11][2] ) );
  SDFFRQX1M \mem_reg[11][1]  ( .D(n221), .SI(\mem[11][0] ), .SE(n565), .CK(clk), .RN(rst_n), .Q(\mem[11][1] ) );
  SDFFRQX1M \mem_reg[11][0]  ( .D(n220), .SI(\mem[10][7] ), .SE(n563), .CK(clk), .RN(rst_n), .Q(\mem[11][0] ) );
  SDFFRQX1M \mem_reg[9][7]  ( .D(n243), .SI(\mem[9][6] ), .SE(n567), .CK(clk), 
        .RN(rst_n), .Q(\mem[9][7] ) );
  SDFFRQX1M \mem_reg[9][6]  ( .D(n242), .SI(\mem[9][5] ), .SE(n566), .CK(clk), 
        .RN(rst_n), .Q(\mem[9][6] ) );
  SDFFRQX1M \mem_reg[9][5]  ( .D(n241), .SI(\mem[9][4] ), .SE(n565), .CK(clk), 
        .RN(rst_n), .Q(\mem[9][5] ) );
  SDFFRQX1M \mem_reg[9][4]  ( .D(n240), .SI(\mem[9][3] ), .SE(n564), .CK(clk), 
        .RN(rst_n), .Q(\mem[9][4] ) );
  SDFFRQX1M \mem_reg[9][3]  ( .D(n239), .SI(\mem[9][2] ), .SE(n567), .CK(clk), 
        .RN(rst_n), .Q(\mem[9][3] ) );
  SDFFRQX1M \mem_reg[9][2]  ( .D(n238), .SI(\mem[9][1] ), .SE(n566), .CK(clk), 
        .RN(rst_n), .Q(\mem[9][2] ) );
  SDFFRQX1M \mem_reg[9][1]  ( .D(n237), .SI(\mem[9][0] ), .SE(n565), .CK(clk), 
        .RN(rst_n), .Q(\mem[9][1] ) );
  SDFFRQX1M \mem_reg[9][0]  ( .D(n236), .SI(\mem[8][7] ), .SE(n563), .CK(clk), 
        .RN(rst_n), .Q(\mem[9][0] ) );
  SDFFRQX1M \mem_reg[10][7]  ( .D(n235), .SI(\mem[10][6] ), .SE(n567), .CK(clk), .RN(rst_n), .Q(\mem[10][7] ) );
  SDFFRQX1M \mem_reg[10][6]  ( .D(n234), .SI(\mem[10][5] ), .SE(n566), .CK(clk), .RN(rst_n), .Q(\mem[10][6] ) );
  SDFFRQX1M \mem_reg[10][5]  ( .D(n233), .SI(\mem[10][4] ), .SE(n565), .CK(clk), .RN(rst_n), .Q(\mem[10][5] ) );
  SDFFRQX1M \mem_reg[10][4]  ( .D(n232), .SI(\mem[10][3] ), .SE(n564), .CK(clk), .RN(rst_n), .Q(\mem[10][4] ) );
  SDFFRQX1M \mem_reg[10][3]  ( .D(n231), .SI(\mem[10][2] ), .SE(n567), .CK(clk), .RN(rst_n), .Q(\mem[10][3] ) );
  SDFFRQX1M \mem_reg[10][2]  ( .D(n230), .SI(\mem[10][1] ), .SE(n566), .CK(clk), .RN(rst_n), .Q(\mem[10][2] ) );
  SDFFRQX1M \mem_reg[10][1]  ( .D(n229), .SI(\mem[10][0] ), .SE(n565), .CK(clk), .RN(rst_n), .Q(\mem[10][1] ) );
  SDFFRQX1M \mem_reg[10][0]  ( .D(n228), .SI(\mem[9][7] ), .SE(n563), .CK(clk), 
        .RN(rst_n), .Q(\mem[10][0] ) );
  SDFFRQX1M \mem_reg[8][7]  ( .D(n251), .SI(\mem[8][6] ), .SE(n567), .CK(clk), 
        .RN(rst_n), .Q(\mem[8][7] ) );
  SDFFRQX1M \mem_reg[8][6]  ( .D(n250), .SI(\mem[8][5] ), .SE(n566), .CK(clk), 
        .RN(rst_n), .Q(\mem[8][6] ) );
  SDFFRQX1M \mem_reg[8][5]  ( .D(n249), .SI(\mem[8][4] ), .SE(n565), .CK(clk), 
        .RN(rst_n), .Q(\mem[8][5] ) );
  SDFFRQX1M \mem_reg[8][4]  ( .D(n248), .SI(\mem[8][3] ), .SE(n564), .CK(clk), 
        .RN(rst_n), .Q(\mem[8][4] ) );
  SDFFRQX1M \mem_reg[8][3]  ( .D(n247), .SI(\mem[8][2] ), .SE(n567), .CK(clk), 
        .RN(rst_n), .Q(\mem[8][3] ) );
  SDFFRQX1M \mem_reg[8][2]  ( .D(n246), .SI(\mem[8][1] ), .SE(n566), .CK(clk), 
        .RN(rst_n), .Q(\mem[8][2] ) );
  SDFFRQX1M \mem_reg[8][1]  ( .D(n245), .SI(\mem[8][0] ), .SE(n565), .CK(clk), 
        .RN(rst_n), .Q(\mem[8][1] ) );
  SDFFRQX1M \mem_reg[8][0]  ( .D(n244), .SI(\mem[7][7] ), .SE(n563), .CK(clk), 
        .RN(rst_n), .Q(\mem[8][0] ) );
  SDFFRQX1M \mem_reg[13][7]  ( .D(n211), .SI(\mem[13][6] ), .SE(n567), .CK(clk), .RN(rst_n), .Q(\mem[13][7] ) );
  SDFFRQX1M \mem_reg[13][6]  ( .D(n210), .SI(\mem[13][5] ), .SE(n566), .CK(clk), .RN(rst_n), .Q(\mem[13][6] ) );
  SDFFRQX1M \mem_reg[13][5]  ( .D(n209), .SI(\mem[13][4] ), .SE(n565), .CK(clk), .RN(rst_n), .Q(\mem[13][5] ) );
  SDFFRQX1M \mem_reg[13][4]  ( .D(n208), .SI(\mem[13][3] ), .SE(n564), .CK(clk), .RN(rst_n), .Q(\mem[13][4] ) );
  SDFFRQX1M \mem_reg[13][3]  ( .D(n207), .SI(\mem[13][2] ), .SE(n567), .CK(clk), .RN(rst_n), .Q(\mem[13][3] ) );
  SDFFRQX1M \mem_reg[13][2]  ( .D(n206), .SI(\mem[13][1] ), .SE(n566), .CK(clk), .RN(rst_n), .Q(\mem[13][2] ) );
  SDFFRQX1M \mem_reg[13][1]  ( .D(n205), .SI(\mem[13][0] ), .SE(n565), .CK(clk), .RN(rst_n), .Q(\mem[13][1] ) );
  SDFFRQX1M \mem_reg[13][0]  ( .D(n204), .SI(\mem[12][7] ), .SE(n563), .CK(clk), .RN(rst_n), .Q(\mem[13][0] ) );
  SDFFRQX1M \mem_reg[12][7]  ( .D(n219), .SI(\mem[12][6] ), .SE(n567), .CK(clk), .RN(rst_n), .Q(\mem[12][7] ) );
  SDFFRQX1M \mem_reg[12][6]  ( .D(n218), .SI(\mem[12][5] ), .SE(n566), .CK(clk), .RN(rst_n), .Q(\mem[12][6] ) );
  SDFFRQX1M \mem_reg[12][5]  ( .D(n217), .SI(\mem[12][4] ), .SE(n565), .CK(clk), .RN(rst_n), .Q(\mem[12][5] ) );
  SDFFRQX1M \mem_reg[12][4]  ( .D(n216), .SI(\mem[12][3] ), .SE(n564), .CK(clk), .RN(rst_n), .Q(\mem[12][4] ) );
  SDFFRQX1M \mem_reg[12][3]  ( .D(n215), .SI(\mem[12][2] ), .SE(n567), .CK(clk), .RN(rst_n), .Q(\mem[12][3] ) );
  SDFFRQX1M \mem_reg[12][2]  ( .D(n214), .SI(\mem[12][1] ), .SE(n566), .CK(clk), .RN(rst_n), .Q(\mem[12][2] ) );
  SDFFRQX1M \mem_reg[12][1]  ( .D(n213), .SI(\mem[12][0] ), .SE(n565), .CK(clk), .RN(rst_n), .Q(\mem[12][1] ) );
  SDFFRQX1M \mem_reg[12][0]  ( .D(n212), .SI(\mem[11][7] ), .SE(n563), .CK(clk), .RN(rst_n), .Q(\mem[12][0] ) );
  SDFFRQX1M \mem_reg[15][7]  ( .D(n195), .SI(\mem[15][6] ), .SE(n567), .CK(clk), .RN(rst_n), .Q(\mem[15][7] ) );
  SDFFRQX1M \mem_reg[15][6]  ( .D(n194), .SI(\mem[15][5] ), .SE(n566), .CK(clk), .RN(rst_n), .Q(\mem[15][6] ) );
  SDFFRQX1M \mem_reg[15][5]  ( .D(n193), .SI(\mem[15][4] ), .SE(n565), .CK(clk), .RN(rst_n), .Q(\mem[15][5] ) );
  SDFFRQX1M \mem_reg[15][4]  ( .D(n192), .SI(\mem[15][3] ), .SE(n564), .CK(clk), .RN(rst_n), .Q(\mem[15][4] ) );
  SDFFRQX1M \mem_reg[15][3]  ( .D(n191), .SI(\mem[15][2] ), .SE(n567), .CK(clk), .RN(rst_n), .Q(\mem[15][3] ) );
  SDFFRQX1M \mem_reg[15][2]  ( .D(n190), .SI(\mem[15][1] ), .SE(n566), .CK(clk), .RN(rst_n), .Q(\mem[15][2] ) );
  SDFFRQX1M \mem_reg[15][1]  ( .D(n189), .SI(\mem[15][0] ), .SE(n565), .CK(clk), .RN(rst_n), .Q(\mem[15][1] ) );
  SDFFRQX1M \mem_reg[15][0]  ( .D(n188), .SI(\mem[14][7] ), .SE(n563), .CK(clk), .RN(rst_n), .Q(\mem[15][0] ) );
  SDFFRQX1M \mem_reg[6][7]  ( .D(n267), .SI(\mem[6][6] ), .SE(n567), .CK(clk), 
        .RN(rst_n), .Q(\mem[6][7] ) );
  SDFFRQX1M \mem_reg[6][6]  ( .D(n266), .SI(\mem[6][5] ), .SE(n566), .CK(clk), 
        .RN(rst_n), .Q(\mem[6][6] ) );
  SDFFRQX1M \mem_reg[6][5]  ( .D(n265), .SI(test_si2), .SE(n565), .CK(clk), 
        .RN(rst_n), .Q(\mem[6][5] ) );
  SDFFRQX1M \mem_reg[6][3]  ( .D(n263), .SI(\mem[6][2] ), .SE(n567), .CK(clk), 
        .RN(rst_n), .Q(\mem[6][3] ) );
  SDFFRQX1M \mem_reg[6][2]  ( .D(n262), .SI(\mem[6][1] ), .SE(n566), .CK(clk), 
        .RN(rst_n), .Q(\mem[6][2] ) );
  SDFFRQX1M \mem_reg[6][1]  ( .D(n261), .SI(\mem[6][0] ), .SE(n565), .CK(clk), 
        .RN(rst_n), .Q(\mem[6][1] ) );
  SDFFRQX1M \mem_reg[6][0]  ( .D(n260), .SI(\mem[5][7] ), .SE(n563), .CK(clk), 
        .RN(rst_n), .Q(\mem[6][0] ) );
  SDFFRQX1M \mem_reg[4][7]  ( .D(n283), .SI(\mem[4][6] ), .SE(n567), .CK(clk), 
        .RN(rst_n), .Q(\mem[4][7] ) );
  SDFFRQX1M \mem_reg[4][6]  ( .D(n282), .SI(\mem[4][5] ), .SE(n566), .CK(clk), 
        .RN(rst_n), .Q(\mem[4][6] ) );
  SDFFRQX1M \mem_reg[4][5]  ( .D(n281), .SI(\mem[4][4] ), .SE(n565), .CK(clk), 
        .RN(rst_n), .Q(\mem[4][5] ) );
  SDFFRQX1M \mem_reg[4][4]  ( .D(n280), .SI(\mem[4][3] ), .SE(n564), .CK(clk), 
        .RN(rst_n), .Q(\mem[4][4] ) );
  SDFFRQX1M \mem_reg[4][3]  ( .D(n279), .SI(\mem[4][2] ), .SE(n567), .CK(clk), 
        .RN(rst_n), .Q(\mem[4][3] ) );
  SDFFRQX1M \mem_reg[4][2]  ( .D(n278), .SI(\mem[4][1] ), .SE(n566), .CK(clk), 
        .RN(rst_n), .Q(\mem[4][2] ) );
  SDFFRQX1M \mem_reg[4][1]  ( .D(n277), .SI(\mem[4][0] ), .SE(n565), .CK(clk), 
        .RN(rst_n), .Q(\mem[4][1] ) );
  SDFFRQX1M \mem_reg[4][0]  ( .D(n276), .SI(reg_3[7]), .SE(n563), .CK(clk), 
        .RN(rst_n), .Q(\mem[4][0] ) );
  SDFFRQX1M \mem_reg[2][4]  ( .D(n296), .SI(reg_2[3]), .SE(n567), .CK(clk), 
        .RN(rst_n), .Q(reg_2[4]) );
  SDFFRQX1M \mem_reg[2][3]  ( .D(n295), .SI(reg_2[2]), .SE(n566), .CK(clk), 
        .RN(rst_n), .Q(reg_2[3]) );
  SDFFRQX1M \mem_reg[2][2]  ( .D(n294), .SI(reg_2[1]), .SE(n565), .CK(clk), 
        .RN(rst_n), .Q(reg_2[2]) );
  SDFFRQX1M \mem_reg[2][1]  ( .D(n293), .SI(reg_2[0]), .SE(n564), .CK(clk), 
        .RN(rst_n), .Q(reg_2[1]) );
  SDFFRQX1M \mem_reg[0][7]  ( .D(n315), .SI(reg_0[6]), .SE(n567), .CK(clk), 
        .RN(rst_n), .Q(reg_0[7]) );
  SDFFRQX1M \mem_reg[0][6]  ( .D(n314), .SI(reg_0[5]), .SE(n566), .CK(clk), 
        .RN(rst_n), .Q(reg_0[6]) );
  SDFFRQX1M \mem_reg[0][5]  ( .D(n313), .SI(reg_0[4]), .SE(n565), .CK(clk), 
        .RN(rst_n), .Q(reg_0[5]) );
  SDFFRQX1M \mem_reg[0][4]  ( .D(n312), .SI(reg_0[3]), .SE(n563), .CK(clk), 
        .RN(rst_n), .Q(reg_0[4]) );
  SDFFRQX1M \mem_reg[0][3]  ( .D(n311), .SI(reg_0[2]), .SE(n567), .CK(clk), 
        .RN(rst_n), .Q(reg_0[3]) );
  SDFFRQX1M \mem_reg[0][2]  ( .D(n310), .SI(reg_0[1]), .SE(n566), .CK(clk), 
        .RN(rst_n), .Q(reg_0[2]) );
  SDFFRQX1M \mem_reg[0][1]  ( .D(n309), .SI(reg_0[0]), .SE(n565), .CK(clk), 
        .RN(rst_n), .Q(reg_0[1]) );
  SDFFRQX1M \mem_reg[0][0]  ( .D(n308), .SI(test_si1), .SE(n564), .CK(clk), 
        .RN(rst_n), .Q(reg_0[0]) );
  SDFFRQX1M \mem_reg[7][7]  ( .D(n259), .SI(\mem[7][6] ), .SE(n567), .CK(clk), 
        .RN(rst_n), .Q(\mem[7][7] ) );
  SDFFRQX1M \mem_reg[7][6]  ( .D(n258), .SI(\mem[7][5] ), .SE(n566), .CK(clk), 
        .RN(rst_n), .Q(\mem[7][6] ) );
  SDFFRQX1M \mem_reg[7][5]  ( .D(n257), .SI(\mem[7][4] ), .SE(n565), .CK(clk), 
        .RN(rst_n), .Q(\mem[7][5] ) );
  SDFFRQX1M \mem_reg[7][4]  ( .D(n256), .SI(\mem[7][3] ), .SE(n563), .CK(clk), 
        .RN(rst_n), .Q(\mem[7][4] ) );
  SDFFRQX1M \mem_reg[7][3]  ( .D(n255), .SI(\mem[7][2] ), .SE(n567), .CK(clk), 
        .RN(rst_n), .Q(\mem[7][3] ) );
  SDFFRQX1M \mem_reg[7][2]  ( .D(n254), .SI(\mem[7][1] ), .SE(n566), .CK(clk), 
        .RN(rst_n), .Q(\mem[7][2] ) );
  SDFFRQX1M \mem_reg[7][1]  ( .D(n253), .SI(\mem[7][0] ), .SE(n565), .CK(clk), 
        .RN(rst_n), .Q(\mem[7][1] ) );
  SDFFRQX1M \mem_reg[7][0]  ( .D(n252), .SI(\mem[6][7] ), .SE(n564), .CK(clk), 
        .RN(rst_n), .Q(\mem[7][0] ) );
  SDFFRQX1M \mem_reg[5][7]  ( .D(n275), .SI(\mem[5][6] ), .SE(n567), .CK(clk), 
        .RN(rst_n), .Q(\mem[5][7] ) );
  SDFFRQX1M \mem_reg[5][6]  ( .D(n274), .SI(\mem[5][5] ), .SE(n566), .CK(clk), 
        .RN(rst_n), .Q(\mem[5][6] ) );
  SDFFRQX1M \mem_reg[5][5]  ( .D(n273), .SI(\mem[5][4] ), .SE(n565), .CK(clk), 
        .RN(rst_n), .Q(\mem[5][5] ) );
  SDFFRQX1M \mem_reg[5][4]  ( .D(n272), .SI(\mem[5][3] ), .SE(n563), .CK(clk), 
        .RN(rst_n), .Q(\mem[5][4] ) );
  SDFFRQX1M \mem_reg[5][3]  ( .D(n271), .SI(\mem[5][2] ), .SE(n567), .CK(clk), 
        .RN(rst_n), .Q(\mem[5][3] ) );
  SDFFRQX1M \mem_reg[5][2]  ( .D(n270), .SI(\mem[5][1] ), .SE(n566), .CK(clk), 
        .RN(rst_n), .Q(\mem[5][2] ) );
  SDFFRQX1M \mem_reg[5][1]  ( .D(n269), .SI(\mem[5][0] ), .SE(n565), .CK(clk), 
        .RN(rst_n), .Q(\mem[5][1] ) );
  SDFFRQX1M \mem_reg[5][0]  ( .D(n268), .SI(\mem[4][7] ), .SE(n564), .CK(clk), 
        .RN(rst_n), .Q(\mem[5][0] ) );
  SDFFRQX1M \mem_reg[3][7]  ( .D(n291), .SI(reg_3[6]), .SE(n567), .CK(clk), 
        .RN(rst_n), .Q(reg_3[7]) );
  SDFFRQX1M \mem_reg[3][6]  ( .D(n290), .SI(reg_3[5]), .SE(n566), .CK(clk), 
        .RN(rst_n), .Q(reg_3[6]) );
  SDFFRQX1M \mem_reg[3][4]  ( .D(n288), .SI(reg_3[3]), .SE(n565), .CK(clk), 
        .RN(rst_n), .Q(reg_3[4]) );
  SDFFRQX1M \mem_reg[3][3]  ( .D(n287), .SI(reg_3[2]), .SE(n563), .CK(clk), 
        .RN(rst_n), .Q(reg_3[3]) );
  SDFFRQX1M \mem_reg[3][2]  ( .D(n286), .SI(reg_3[1]), .SE(n567), .CK(clk), 
        .RN(rst_n), .Q(reg_3[2]) );
  SDFFRQX1M \mem_reg[3][1]  ( .D(n285), .SI(reg_3[0]), .SE(n566), .CK(clk), 
        .RN(rst_n), .Q(reg_3[1]) );
  SDFFRQX1M \mem_reg[3][0]  ( .D(n284), .SI(reg_2[7]), .SE(n565), .CK(clk), 
        .RN(rst_n), .Q(reg_3[0]) );
  SDFFRQX1M \mem_reg[1][7]  ( .D(n307), .SI(reg_1[6]), .SE(n564), .CK(clk), 
        .RN(rst_n), .Q(reg_1[7]) );
  SDFFRQX1M \mem_reg[1][6]  ( .D(n306), .SI(reg_1[5]), .SE(n567), .CK(clk), 
        .RN(rst_n), .Q(reg_1[6]) );
  SDFFRQX1M \mem_reg[1][5]  ( .D(n305), .SI(reg_1[4]), .SE(n566), .CK(clk), 
        .RN(rst_n), .Q(reg_1[5]) );
  SDFFRQX1M \mem_reg[1][4]  ( .D(n304), .SI(reg_1[3]), .SE(n565), .CK(clk), 
        .RN(rst_n), .Q(reg_1[4]) );
  SDFFRQX1M \mem_reg[1][3]  ( .D(n303), .SI(reg_1[2]), .SE(n563), .CK(clk), 
        .RN(rst_n), .Q(reg_1[3]) );
  SDFFRQX1M \mem_reg[1][2]  ( .D(n302), .SI(reg_1[1]), .SE(n567), .CK(clk), 
        .RN(rst_n), .Q(reg_1[2]) );
  SDFFRQX1M \mem_reg[1][1]  ( .D(n301), .SI(reg_1[0]), .SE(n566), .CK(clk), 
        .RN(rst_n), .Q(reg_1[1]) );
  SDFFRQX1M \mem_reg[1][0]  ( .D(n300), .SI(reg_0[7]), .SE(n565), .CK(clk), 
        .RN(rst_n), .Q(reg_1[0]) );
  SDFFRQX1M \mem_reg[2][6]  ( .D(n298), .SI(reg_2[5]), .SE(n564), .CK(clk), 
        .RN(rst_n), .Q(reg_2[6]) );
  SDFFRQX1M \mem_reg[2][5]  ( .D(n297), .SI(reg_2[4]), .SE(n567), .CK(clk), 
        .RN(rst_n), .Q(reg_2[5]) );
  SDFFRQX1M \rd_data_reg[7]  ( .D(n187), .SI(rd_data[6]), .SE(n566), .CK(clk), 
        .RN(rst_n), .Q(rd_data[7]) );
  SDFFRQX1M \rd_data_reg[6]  ( .D(n186), .SI(rd_data[5]), .SE(n565), .CK(clk), 
        .RN(rst_n), .Q(rd_data[6]) );
  SDFFRQX1M \rd_data_reg[2]  ( .D(n182), .SI(rd_data[1]), .SE(n563), .CK(clk), 
        .RN(rst_n), .Q(rd_data[2]) );
  SDFFRQX1M \rd_data_reg[1]  ( .D(n181), .SI(rd_data[0]), .SE(n567), .CK(clk), 
        .RN(rst_n), .Q(rd_data[1]) );
  SDFFRQX1M \rd_data_reg[0]  ( .D(n180), .SI(\mem[15][7] ), .SE(n566), .CK(clk), .RN(rst_n), .Q(rd_data[0]) );
  SDFFRQX1M \rd_data_reg[5]  ( .D(n185), .SI(rd_data[4]), .SE(n565), .CK(clk), 
        .RN(rst_n), .Q(rd_data[5]) );
  SDFFRQX1M \rd_data_reg[4]  ( .D(n184), .SI(rd_data[3]), .SE(n564), .CK(clk), 
        .RN(rst_n), .Q(rd_data[4]) );
  SDFFRQX1M \rd_data_reg[3]  ( .D(n183), .SI(rd_data[2]), .SE(n563), .CK(clk), 
        .RN(rst_n), .Q(rd_data[3]) );
  NOR2X2M U274 ( .A(n559), .B(N11), .Y(n159) );
  NOR2X2M U275 ( .A(n542), .B(N12), .Y(n162) );
  NOR2X2M U276 ( .A(N11), .B(N12), .Y(n165) );
  INVX2M U277 ( .A(wr_data[4]), .Y(n554) );
  INVX2M U278 ( .A(wr_data[0]), .Y(n558) );
  INVX2M U279 ( .A(wr_data[2]), .Y(n556) );
  INVX2M U280 ( .A(wr_data[1]), .Y(n557) );
  INVX2M U281 ( .A(wr_data[6]), .Y(n552) );
  INVX2M U282 ( .A(wr_data[5]), .Y(n553) );
  INVX2M U283 ( .A(wr_data[3]), .Y(n555) );
  INVX2M U284 ( .A(wr_data[7]), .Y(n551) );
  INVX2M U285 ( .A(n544), .Y(n545) );
  BUFX2M U286 ( .A(n437), .Y(n544) );
  NAND2X2M U287 ( .A(n157), .B(n154), .Y(n156) );
  NAND2X2M U288 ( .A(n171), .B(n154), .Y(n170) );
  OR2X2M U289 ( .A(n542), .B(n543), .Y(n437) );
  INVX2M U290 ( .A(n440), .Y(n547) );
  INVX2M U291 ( .A(n438), .Y(n546) );
  INVX2M U292 ( .A(n439), .Y(n548) );
  NOR2X2M U293 ( .A(n559), .B(n542), .Y(n154) );
  NAND2X2M U294 ( .A(n159), .B(n155), .Y(n158) );
  NAND2X2M U295 ( .A(n159), .B(n157), .Y(n160) );
  NAND2X2M U296 ( .A(n162), .B(n155), .Y(n161) );
  NAND2X2M U297 ( .A(n162), .B(n157), .Y(n163) );
  NAND2X2M U298 ( .A(n165), .B(n155), .Y(n164) );
  NAND2X2M U299 ( .A(n165), .B(n157), .Y(n167) );
  NAND2X2M U300 ( .A(n169), .B(n159), .Y(n172) );
  NAND2X2M U301 ( .A(n171), .B(n159), .Y(n173) );
  NAND2X2M U302 ( .A(n169), .B(n162), .Y(n174) );
  NAND2X2M U303 ( .A(n171), .B(n162), .Y(n175) );
  NAND2X2M U304 ( .A(n169), .B(n165), .Y(n176) );
  NAND2X2M U305 ( .A(n171), .B(n165), .Y(n178) );
  NAND2X2M U306 ( .A(n169), .B(n154), .Y(n168) );
  NAND2X2M U307 ( .A(n154), .B(n155), .Y(n153) );
  AND2X2M U308 ( .A(n166), .B(n543), .Y(n157) );
  AND2X2M U309 ( .A(n177), .B(n543), .Y(n171) );
  INVX2M U310 ( .A(n152), .Y(n549) );
  OR2X2M U311 ( .A(n542), .B(N10), .Y(n438) );
  OR2X2M U312 ( .A(N10), .B(N11), .Y(n439) );
  OR2X2M U313 ( .A(n543), .B(N11), .Y(n440) );
  INVX2M U314 ( .A(N10), .Y(n543) );
  INVX2M U315 ( .A(N11), .Y(n542) );
  NAND2X2M U316 ( .A(rd_en), .B(n550), .Y(n152) );
  NOR2X2M U317 ( .A(n550), .B(rd_en), .Y(n151) );
  AND2X2M U318 ( .A(n166), .B(N10), .Y(n155) );
  AND2X2M U319 ( .A(n177), .B(N10), .Y(n169) );
  NOR2BX2M U320 ( .AN(n151), .B(N13), .Y(n177) );
  INVX2M U321 ( .A(N12), .Y(n559) );
  AND2X2M U322 ( .A(N13), .B(n151), .Y(n166) );
  INVX2M U323 ( .A(N13), .Y(n541) );
  AO22X1M U324 ( .A0(N39), .A1(n549), .B0(rd_data[3]), .B1(n152), .Y(n183) );
  AO22X1M U325 ( .A0(N37), .A1(n549), .B0(rd_data[5]), .B1(n152), .Y(n185) );
  AO22X1M U326 ( .A0(N42), .A1(n549), .B0(rd_data[0]), .B1(n152), .Y(n180) );
  AO22X1M U327 ( .A0(N41), .A1(n549), .B0(rd_data[1]), .B1(n152), .Y(n181) );
  AO22X1M U328 ( .A0(N40), .A1(n549), .B0(rd_data[2]), .B1(n152), .Y(n182) );
  AO22X1M U329 ( .A0(N38), .A1(n549), .B0(rd_data[4]), .B1(n152), .Y(n184) );
  AO22X1M U330 ( .A0(N36), .A1(n549), .B0(rd_data[6]), .B1(n152), .Y(n186) );
  AO22X1M U331 ( .A0(N35), .A1(n549), .B0(rd_data[7]), .B1(n152), .Y(n187) );
  OAI2BB2X1M U332 ( .B0(n153), .B1(n558), .A0N(\mem[15][0] ), .A1N(n153), .Y(
        n188) );
  OAI2BB2X1M U333 ( .B0(n153), .B1(n557), .A0N(\mem[15][1] ), .A1N(n153), .Y(
        n189) );
  OAI2BB2X1M U334 ( .B0(n153), .B1(n556), .A0N(\mem[15][2] ), .A1N(n153), .Y(
        n190) );
  OAI2BB2X1M U335 ( .B0(n153), .B1(n555), .A0N(\mem[15][3] ), .A1N(n153), .Y(
        n191) );
  OAI2BB2X1M U336 ( .B0(n153), .B1(n554), .A0N(\mem[15][4] ), .A1N(n153), .Y(
        n192) );
  OAI2BB2X1M U337 ( .B0(n153), .B1(n553), .A0N(\mem[15][5] ), .A1N(n153), .Y(
        n193) );
  OAI2BB2X1M U338 ( .B0(n153), .B1(n552), .A0N(\mem[15][6] ), .A1N(n153), .Y(
        n194) );
  OAI2BB2X1M U339 ( .B0(n153), .B1(n551), .A0N(\mem[15][7] ), .A1N(n153), .Y(
        n195) );
  OAI2BB2X1M U340 ( .B0(n558), .B1(n158), .A0N(\mem[13][0] ), .A1N(n158), .Y(
        n204) );
  OAI2BB2X1M U341 ( .B0(n557), .B1(n158), .A0N(\mem[13][1] ), .A1N(n158), .Y(
        n205) );
  OAI2BB2X1M U342 ( .B0(n556), .B1(n158), .A0N(\mem[13][2] ), .A1N(n158), .Y(
        n206) );
  OAI2BB2X1M U343 ( .B0(n555), .B1(n158), .A0N(\mem[13][3] ), .A1N(n158), .Y(
        n207) );
  OAI2BB2X1M U344 ( .B0(n554), .B1(n158), .A0N(\mem[13][4] ), .A1N(n158), .Y(
        n208) );
  OAI2BB2X1M U345 ( .B0(n553), .B1(n158), .A0N(\mem[13][5] ), .A1N(n158), .Y(
        n209) );
  OAI2BB2X1M U346 ( .B0(n552), .B1(n158), .A0N(\mem[13][6] ), .A1N(n158), .Y(
        n210) );
  OAI2BB2X1M U347 ( .B0(n551), .B1(n158), .A0N(\mem[13][7] ), .A1N(n158), .Y(
        n211) );
  OAI2BB2X1M U348 ( .B0(n558), .B1(n160), .A0N(\mem[12][0] ), .A1N(n160), .Y(
        n212) );
  OAI2BB2X1M U349 ( .B0(n557), .B1(n160), .A0N(\mem[12][1] ), .A1N(n160), .Y(
        n213) );
  OAI2BB2X1M U350 ( .B0(n556), .B1(n160), .A0N(\mem[12][2] ), .A1N(n160), .Y(
        n214) );
  OAI2BB2X1M U351 ( .B0(n555), .B1(n160), .A0N(\mem[12][3] ), .A1N(n160), .Y(
        n215) );
  OAI2BB2X1M U352 ( .B0(n554), .B1(n160), .A0N(\mem[12][4] ), .A1N(n160), .Y(
        n216) );
  OAI2BB2X1M U353 ( .B0(n553), .B1(n160), .A0N(\mem[12][5] ), .A1N(n160), .Y(
        n217) );
  OAI2BB2X1M U354 ( .B0(n552), .B1(n160), .A0N(\mem[12][6] ), .A1N(n160), .Y(
        n218) );
  OAI2BB2X1M U355 ( .B0(n551), .B1(n160), .A0N(\mem[12][7] ), .A1N(n160), .Y(
        n219) );
  OAI2BB2X1M U356 ( .B0(n558), .B1(n161), .A0N(\mem[11][0] ), .A1N(n161), .Y(
        n220) );
  OAI2BB2X1M U357 ( .B0(n557), .B1(n161), .A0N(\mem[11][1] ), .A1N(n161), .Y(
        n221) );
  OAI2BB2X1M U358 ( .B0(n556), .B1(n161), .A0N(\mem[11][2] ), .A1N(n161), .Y(
        n222) );
  OAI2BB2X1M U359 ( .B0(n555), .B1(n161), .A0N(\mem[11][3] ), .A1N(n161), .Y(
        n223) );
  OAI2BB2X1M U360 ( .B0(n554), .B1(n161), .A0N(\mem[11][4] ), .A1N(n161), .Y(
        n224) );
  OAI2BB2X1M U361 ( .B0(n553), .B1(n161), .A0N(\mem[11][5] ), .A1N(n161), .Y(
        n225) );
  OAI2BB2X1M U362 ( .B0(n552), .B1(n161), .A0N(\mem[11][6] ), .A1N(n161), .Y(
        n226) );
  OAI2BB2X1M U363 ( .B0(n551), .B1(n161), .A0N(\mem[11][7] ), .A1N(n161), .Y(
        n227) );
  OAI2BB2X1M U364 ( .B0(n558), .B1(n163), .A0N(\mem[10][0] ), .A1N(n163), .Y(
        n228) );
  OAI2BB2X1M U365 ( .B0(n557), .B1(n163), .A0N(\mem[10][1] ), .A1N(n163), .Y(
        n229) );
  OAI2BB2X1M U366 ( .B0(n556), .B1(n163), .A0N(\mem[10][2] ), .A1N(n163), .Y(
        n230) );
  OAI2BB2X1M U367 ( .B0(n555), .B1(n163), .A0N(\mem[10][3] ), .A1N(n163), .Y(
        n231) );
  OAI2BB2X1M U368 ( .B0(n554), .B1(n163), .A0N(\mem[10][4] ), .A1N(n163), .Y(
        n232) );
  OAI2BB2X1M U369 ( .B0(n553), .B1(n163), .A0N(\mem[10][5] ), .A1N(n163), .Y(
        n233) );
  OAI2BB2X1M U370 ( .B0(n552), .B1(n163), .A0N(\mem[10][6] ), .A1N(n163), .Y(
        n234) );
  OAI2BB2X1M U371 ( .B0(n551), .B1(n163), .A0N(\mem[10][7] ), .A1N(n163), .Y(
        n235) );
  OAI2BB2X1M U372 ( .B0(n558), .B1(n164), .A0N(\mem[9][0] ), .A1N(n164), .Y(
        n236) );
  OAI2BB2X1M U373 ( .B0(n557), .B1(n164), .A0N(\mem[9][1] ), .A1N(n164), .Y(
        n237) );
  OAI2BB2X1M U374 ( .B0(n556), .B1(n164), .A0N(\mem[9][2] ), .A1N(n164), .Y(
        n238) );
  OAI2BB2X1M U375 ( .B0(n555), .B1(n164), .A0N(\mem[9][3] ), .A1N(n164), .Y(
        n239) );
  OAI2BB2X1M U376 ( .B0(n554), .B1(n164), .A0N(\mem[9][4] ), .A1N(n164), .Y(
        n240) );
  OAI2BB2X1M U377 ( .B0(n553), .B1(n164), .A0N(\mem[9][5] ), .A1N(n164), .Y(
        n241) );
  OAI2BB2X1M U378 ( .B0(n552), .B1(n164), .A0N(\mem[9][6] ), .A1N(n164), .Y(
        n242) );
  OAI2BB2X1M U379 ( .B0(n551), .B1(n164), .A0N(\mem[9][7] ), .A1N(n164), .Y(
        n243) );
  OAI2BB2X1M U380 ( .B0(n558), .B1(n167), .A0N(\mem[8][0] ), .A1N(n167), .Y(
        n244) );
  OAI2BB2X1M U381 ( .B0(n557), .B1(n167), .A0N(\mem[8][1] ), .A1N(n167), .Y(
        n245) );
  OAI2BB2X1M U382 ( .B0(n556), .B1(n167), .A0N(\mem[8][2] ), .A1N(n167), .Y(
        n246) );
  OAI2BB2X1M U383 ( .B0(n555), .B1(n167), .A0N(\mem[8][3] ), .A1N(n167), .Y(
        n247) );
  OAI2BB2X1M U384 ( .B0(n554), .B1(n167), .A0N(\mem[8][4] ), .A1N(n167), .Y(
        n248) );
  OAI2BB2X1M U385 ( .B0(n553), .B1(n167), .A0N(\mem[8][5] ), .A1N(n167), .Y(
        n249) );
  OAI2BB2X1M U386 ( .B0(n552), .B1(n167), .A0N(\mem[8][6] ), .A1N(n167), .Y(
        n250) );
  OAI2BB2X1M U387 ( .B0(n551), .B1(n167), .A0N(\mem[8][7] ), .A1N(n167), .Y(
        n251) );
  OAI2BB2X1M U388 ( .B0(n558), .B1(n156), .A0N(\mem[14][0] ), .A1N(n156), .Y(
        n196) );
  OAI2BB2X1M U389 ( .B0(n557), .B1(n156), .A0N(\mem[14][1] ), .A1N(n156), .Y(
        n197) );
  OAI2BB2X1M U390 ( .B0(n556), .B1(n156), .A0N(\mem[14][2] ), .A1N(n156), .Y(
        n198) );
  OAI2BB2X1M U391 ( .B0(n555), .B1(n156), .A0N(\mem[14][3] ), .A1N(n156), .Y(
        n199) );
  OAI2BB2X1M U392 ( .B0(n554), .B1(n156), .A0N(\mem[14][4] ), .A1N(n156), .Y(
        n200) );
  OAI2BB2X1M U393 ( .B0(n553), .B1(n156), .A0N(\mem[14][5] ), .A1N(n156), .Y(
        n201) );
  OAI2BB2X1M U394 ( .B0(n552), .B1(n156), .A0N(\mem[14][6] ), .A1N(n156), .Y(
        n202) );
  OAI2BB2X1M U395 ( .B0(n551), .B1(n156), .A0N(\mem[14][7] ), .A1N(n156), .Y(
        n203) );
  OAI2BB2X1M U396 ( .B0(n558), .B1(n168), .A0N(\mem[7][0] ), .A1N(n168), .Y(
        n252) );
  OAI2BB2X1M U397 ( .B0(n557), .B1(n168), .A0N(\mem[7][1] ), .A1N(n168), .Y(
        n253) );
  OAI2BB2X1M U398 ( .B0(n556), .B1(n168), .A0N(\mem[7][2] ), .A1N(n168), .Y(
        n254) );
  OAI2BB2X1M U399 ( .B0(n555), .B1(n168), .A0N(\mem[7][3] ), .A1N(n168), .Y(
        n255) );
  OAI2BB2X1M U400 ( .B0(n554), .B1(n168), .A0N(\mem[7][4] ), .A1N(n168), .Y(
        n256) );
  OAI2BB2X1M U401 ( .B0(n553), .B1(n168), .A0N(\mem[7][5] ), .A1N(n168), .Y(
        n257) );
  OAI2BB2X1M U402 ( .B0(n552), .B1(n168), .A0N(\mem[7][6] ), .A1N(n168), .Y(
        n258) );
  OAI2BB2X1M U403 ( .B0(n551), .B1(n168), .A0N(\mem[7][7] ), .A1N(n168), .Y(
        n259) );
  OAI2BB2X1M U404 ( .B0(n558), .B1(n170), .A0N(\mem[6][0] ), .A1N(n170), .Y(
        n260) );
  OAI2BB2X1M U405 ( .B0(n557), .B1(n170), .A0N(\mem[6][1] ), .A1N(n170), .Y(
        n261) );
  OAI2BB2X1M U406 ( .B0(n556), .B1(n170), .A0N(\mem[6][2] ), .A1N(n170), .Y(
        n262) );
  OAI2BB2X1M U407 ( .B0(n555), .B1(n170), .A0N(\mem[6][3] ), .A1N(n170), .Y(
        n263) );
  OAI2BB2X1M U408 ( .B0(n554), .B1(n170), .A0N(test_so1), .A1N(n170), .Y(n264)
         );
  OAI2BB2X1M U409 ( .B0(n553), .B1(n170), .A0N(\mem[6][5] ), .A1N(n170), .Y(
        n265) );
  OAI2BB2X1M U410 ( .B0(n552), .B1(n170), .A0N(\mem[6][6] ), .A1N(n170), .Y(
        n266) );
  OAI2BB2X1M U411 ( .B0(n551), .B1(n170), .A0N(\mem[6][7] ), .A1N(n170), .Y(
        n267) );
  OAI2BB2X1M U412 ( .B0(n558), .B1(n172), .A0N(\mem[5][0] ), .A1N(n172), .Y(
        n268) );
  OAI2BB2X1M U413 ( .B0(n557), .B1(n172), .A0N(\mem[5][1] ), .A1N(n172), .Y(
        n269) );
  OAI2BB2X1M U414 ( .B0(n556), .B1(n172), .A0N(\mem[5][2] ), .A1N(n172), .Y(
        n270) );
  OAI2BB2X1M U415 ( .B0(n555), .B1(n172), .A0N(\mem[5][3] ), .A1N(n172), .Y(
        n271) );
  OAI2BB2X1M U416 ( .B0(n554), .B1(n172), .A0N(\mem[5][4] ), .A1N(n172), .Y(
        n272) );
  OAI2BB2X1M U417 ( .B0(n553), .B1(n172), .A0N(\mem[5][5] ), .A1N(n172), .Y(
        n273) );
  OAI2BB2X1M U418 ( .B0(n552), .B1(n172), .A0N(\mem[5][6] ), .A1N(n172), .Y(
        n274) );
  OAI2BB2X1M U419 ( .B0(n551), .B1(n172), .A0N(\mem[5][7] ), .A1N(n172), .Y(
        n275) );
  OAI2BB2X1M U420 ( .B0(n558), .B1(n173), .A0N(\mem[4][0] ), .A1N(n173), .Y(
        n276) );
  OAI2BB2X1M U421 ( .B0(n557), .B1(n173), .A0N(\mem[4][1] ), .A1N(n173), .Y(
        n277) );
  OAI2BB2X1M U422 ( .B0(n556), .B1(n173), .A0N(\mem[4][2] ), .A1N(n173), .Y(
        n278) );
  OAI2BB2X1M U423 ( .B0(n555), .B1(n173), .A0N(\mem[4][3] ), .A1N(n173), .Y(
        n279) );
  OAI2BB2X1M U424 ( .B0(n554), .B1(n173), .A0N(\mem[4][4] ), .A1N(n173), .Y(
        n280) );
  OAI2BB2X1M U425 ( .B0(n553), .B1(n173), .A0N(\mem[4][5] ), .A1N(n173), .Y(
        n281) );
  OAI2BB2X1M U426 ( .B0(n552), .B1(n173), .A0N(\mem[4][6] ), .A1N(n173), .Y(
        n282) );
  OAI2BB2X1M U427 ( .B0(n551), .B1(n173), .A0N(\mem[4][7] ), .A1N(n173), .Y(
        n283) );
  OAI2BB2X1M U428 ( .B0(n558), .B1(n174), .A0N(reg_3[0]), .A1N(n174), .Y(n284)
         );
  OAI2BB2X1M U429 ( .B0(n557), .B1(n174), .A0N(reg_3[1]), .A1N(n174), .Y(n285)
         );
  OAI2BB2X1M U430 ( .B0(n556), .B1(n174), .A0N(reg_3[2]), .A1N(n174), .Y(n286)
         );
  OAI2BB2X1M U431 ( .B0(n555), .B1(n174), .A0N(reg_3[3]), .A1N(n174), .Y(n287)
         );
  OAI2BB2X1M U432 ( .B0(n554), .B1(n174), .A0N(reg_3[4]), .A1N(n174), .Y(n288)
         );
  OAI2BB2X1M U433 ( .B0(n552), .B1(n174), .A0N(reg_3[6]), .A1N(n174), .Y(n290)
         );
  OAI2BB2X1M U434 ( .B0(n551), .B1(n174), .A0N(reg_3[7]), .A1N(n174), .Y(n291)
         );
  OAI2BB2X1M U435 ( .B0(n557), .B1(n175), .A0N(reg_2[1]), .A1N(n175), .Y(n293)
         );
  OAI2BB2X1M U436 ( .B0(n556), .B1(n175), .A0N(reg_2[2]), .A1N(n175), .Y(n294)
         );
  OAI2BB2X1M U437 ( .B0(n555), .B1(n175), .A0N(reg_2[3]), .A1N(n175), .Y(n295)
         );
  OAI2BB2X1M U438 ( .B0(n554), .B1(n175), .A0N(reg_2[4]), .A1N(n175), .Y(n296)
         );
  OAI2BB2X1M U439 ( .B0(n553), .B1(n175), .A0N(reg_2[5]), .A1N(n175), .Y(n297)
         );
  OAI2BB2X1M U440 ( .B0(n552), .B1(n175), .A0N(reg_2[6]), .A1N(n175), .Y(n298)
         );
  OAI2BB2X1M U441 ( .B0(n558), .B1(n176), .A0N(reg_1[0]), .A1N(n176), .Y(n300)
         );
  OAI2BB2X1M U442 ( .B0(n557), .B1(n176), .A0N(reg_1[1]), .A1N(n176), .Y(n301)
         );
  OAI2BB2X1M U443 ( .B0(n556), .B1(n176), .A0N(reg_1[2]), .A1N(n176), .Y(n302)
         );
  OAI2BB2X1M U444 ( .B0(n555), .B1(n176), .A0N(reg_1[3]), .A1N(n176), .Y(n303)
         );
  OAI2BB2X1M U445 ( .B0(n554), .B1(n176), .A0N(reg_1[4]), .A1N(n176), .Y(n304)
         );
  OAI2BB2X1M U446 ( .B0(n553), .B1(n176), .A0N(reg_1[5]), .A1N(n176), .Y(n305)
         );
  OAI2BB2X1M U447 ( .B0(n552), .B1(n176), .A0N(reg_1[6]), .A1N(n176), .Y(n306)
         );
  OAI2BB2X1M U448 ( .B0(n551), .B1(n176), .A0N(reg_1[7]), .A1N(n176), .Y(n307)
         );
  OAI2BB2X1M U449 ( .B0(n558), .B1(n178), .A0N(reg_0[0]), .A1N(n178), .Y(n308)
         );
  OAI2BB2X1M U450 ( .B0(n557), .B1(n178), .A0N(reg_0[1]), .A1N(n178), .Y(n309)
         );
  OAI2BB2X1M U451 ( .B0(n556), .B1(n178), .A0N(reg_0[2]), .A1N(n178), .Y(n310)
         );
  OAI2BB2X1M U452 ( .B0(n555), .B1(n178), .A0N(reg_0[3]), .A1N(n178), .Y(n311)
         );
  OAI2BB2X1M U453 ( .B0(n554), .B1(n178), .A0N(reg_0[4]), .A1N(n178), .Y(n312)
         );
  OAI2BB2X1M U454 ( .B0(n553), .B1(n178), .A0N(reg_0[5]), .A1N(n178), .Y(n313)
         );
  OAI2BB2X1M U455 ( .B0(n552), .B1(n178), .A0N(reg_0[6]), .A1N(n178), .Y(n314)
         );
  OAI2BB2X1M U456 ( .B0(n551), .B1(n178), .A0N(reg_0[7]), .A1N(n178), .Y(n315)
         );
  OAI2BB2X1M U457 ( .B0(n553), .B1(n174), .A0N(reg_3[5]), .A1N(n174), .Y(n289)
         );
  OAI2BB2X1M U458 ( .B0(n558), .B1(n175), .A0N(reg_2[0]), .A1N(n175), .Y(n292)
         );
  OAI2BB2X1M U459 ( .B0(n551), .B1(n175), .A0N(reg_2[7]), .A1N(n175), .Y(n299)
         );
  INVX2M U460 ( .A(wr_en), .Y(n550) );
  AO21XLM U461 ( .A0(rd_data_valid), .A1(n151), .B0(n549), .Y(n179) );
  AOI22X1M U462 ( .A0(\mem[10][0] ), .A1(n546), .B0(\mem[11][0] ), .B1(n545), 
        .Y(n442) );
  AOI22X1M U463 ( .A0(\mem[8][0] ), .A1(n548), .B0(\mem[9][0] ), .B1(n547), 
        .Y(n441) );
  CLKNAND2X2M U464 ( .A(N13), .B(n559), .Y(n525) );
  AOI21X1M U465 ( .A0(n442), .A1(n441), .B0(n525), .Y(n452) );
  AOI22X1M U466 ( .A0(\mem[14][0] ), .A1(n546), .B0(\mem[15][0] ), .B1(n545), 
        .Y(n444) );
  AOI22X1M U467 ( .A0(\mem[12][0] ), .A1(n548), .B0(\mem[13][0] ), .B1(n547), 
        .Y(n443) );
  CLKNAND2X2M U468 ( .A(N13), .B(N12), .Y(n528) );
  AOI21X1M U469 ( .A0(n444), .A1(n443), .B0(n528), .Y(n451) );
  AOI22X1M U470 ( .A0(reg_2[0]), .A1(n546), .B0(reg_3[0]), .B1(n545), .Y(n446)
         );
  AOI22X1M U471 ( .A0(reg_0[0]), .A1(n548), .B0(reg_1[0]), .B1(n547), .Y(n445)
         );
  CLKNAND2X2M U472 ( .A(n559), .B(n541), .Y(n531) );
  AOI21X1M U473 ( .A0(n446), .A1(n445), .B0(n531), .Y(n450) );
  AOI22X1M U474 ( .A0(\mem[6][0] ), .A1(n546), .B0(\mem[7][0] ), .B1(n545), 
        .Y(n448) );
  AOI22X1M U475 ( .A0(\mem[4][0] ), .A1(n548), .B0(\mem[5][0] ), .B1(n547), 
        .Y(n447) );
  CLKNAND2X2M U476 ( .A(N12), .B(n541), .Y(n534) );
  AOI21X1M U477 ( .A0(n448), .A1(n447), .B0(n534), .Y(n449) );
  OR4X1M U478 ( .A(n452), .B(n451), .C(n450), .D(n449), .Y(N42) );
  AOI22X1M U479 ( .A0(\mem[10][1] ), .A1(n546), .B0(\mem[11][1] ), .B1(n545), 
        .Y(n454) );
  AOI22X1M U480 ( .A0(\mem[8][1] ), .A1(n548), .B0(\mem[9][1] ), .B1(n547), 
        .Y(n453) );
  AOI21X1M U481 ( .A0(n454), .A1(n453), .B0(n525), .Y(n464) );
  AOI22X1M U482 ( .A0(\mem[14][1] ), .A1(n546), .B0(\mem[15][1] ), .B1(n545), 
        .Y(n456) );
  AOI22X1M U483 ( .A0(\mem[12][1] ), .A1(n548), .B0(\mem[13][1] ), .B1(n547), 
        .Y(n455) );
  AOI21X1M U484 ( .A0(n456), .A1(n455), .B0(n528), .Y(n463) );
  AOI22X1M U485 ( .A0(reg_2[1]), .A1(n546), .B0(reg_3[1]), .B1(n545), .Y(n458)
         );
  AOI22X1M U486 ( .A0(reg_0[1]), .A1(n548), .B0(reg_1[1]), .B1(n547), .Y(n457)
         );
  AOI21X1M U487 ( .A0(n458), .A1(n457), .B0(n531), .Y(n462) );
  AOI22X1M U488 ( .A0(\mem[6][1] ), .A1(n546), .B0(\mem[7][1] ), .B1(n545), 
        .Y(n460) );
  AOI22X1M U489 ( .A0(\mem[4][1] ), .A1(n548), .B0(\mem[5][1] ), .B1(n547), 
        .Y(n459) );
  AOI21X1M U490 ( .A0(n460), .A1(n459), .B0(n534), .Y(n461) );
  OR4X1M U491 ( .A(n464), .B(n463), .C(n462), .D(n461), .Y(N41) );
  AOI22X1M U492 ( .A0(\mem[10][2] ), .A1(n546), .B0(\mem[11][2] ), .B1(n545), 
        .Y(n466) );
  AOI22X1M U493 ( .A0(\mem[8][2] ), .A1(n548), .B0(\mem[9][2] ), .B1(n547), 
        .Y(n465) );
  AOI21X1M U494 ( .A0(n466), .A1(n465), .B0(n525), .Y(n476) );
  AOI22X1M U495 ( .A0(\mem[14][2] ), .A1(n546), .B0(\mem[15][2] ), .B1(n545), 
        .Y(n468) );
  AOI22X1M U496 ( .A0(\mem[12][2] ), .A1(n548), .B0(\mem[13][2] ), .B1(n547), 
        .Y(n467) );
  AOI21X1M U497 ( .A0(n468), .A1(n467), .B0(n528), .Y(n475) );
  AOI22X1M U498 ( .A0(reg_2[2]), .A1(n546), .B0(reg_3[2]), .B1(n545), .Y(n470)
         );
  AOI22X1M U499 ( .A0(reg_0[2]), .A1(n548), .B0(reg_1[2]), .B1(n547), .Y(n469)
         );
  AOI21X1M U500 ( .A0(n470), .A1(n469), .B0(n531), .Y(n474) );
  AOI22X1M U501 ( .A0(\mem[6][2] ), .A1(n546), .B0(\mem[7][2] ), .B1(n545), 
        .Y(n472) );
  AOI22X1M U502 ( .A0(\mem[4][2] ), .A1(n548), .B0(\mem[5][2] ), .B1(n547), 
        .Y(n471) );
  AOI21X1M U503 ( .A0(n472), .A1(n471), .B0(n534), .Y(n473) );
  OR4X1M U504 ( .A(n476), .B(n475), .C(n474), .D(n473), .Y(N40) );
  AOI22X1M U505 ( .A0(\mem[10][3] ), .A1(n546), .B0(\mem[11][3] ), .B1(n545), 
        .Y(n478) );
  AOI22X1M U506 ( .A0(\mem[8][3] ), .A1(n548), .B0(\mem[9][3] ), .B1(n547), 
        .Y(n477) );
  AOI21X1M U507 ( .A0(n478), .A1(n477), .B0(n525), .Y(n488) );
  AOI22X1M U508 ( .A0(\mem[14][3] ), .A1(n546), .B0(\mem[15][3] ), .B1(n545), 
        .Y(n480) );
  AOI22X1M U509 ( .A0(\mem[12][3] ), .A1(n548), .B0(\mem[13][3] ), .B1(n547), 
        .Y(n479) );
  AOI21X1M U510 ( .A0(n480), .A1(n479), .B0(n528), .Y(n487) );
  AOI22X1M U511 ( .A0(reg_2[3]), .A1(n546), .B0(reg_3[3]), .B1(n545), .Y(n482)
         );
  AOI22X1M U512 ( .A0(reg_0[3]), .A1(n548), .B0(reg_1[3]), .B1(n547), .Y(n481)
         );
  AOI21X1M U513 ( .A0(n482), .A1(n481), .B0(n531), .Y(n486) );
  AOI22X1M U514 ( .A0(\mem[6][3] ), .A1(n546), .B0(\mem[7][3] ), .B1(n545), 
        .Y(n484) );
  AOI22X1M U515 ( .A0(\mem[4][3] ), .A1(n548), .B0(\mem[5][3] ), .B1(n547), 
        .Y(n483) );
  AOI21X1M U516 ( .A0(n484), .A1(n483), .B0(n534), .Y(n485) );
  OR4X1M U517 ( .A(n488), .B(n487), .C(n486), .D(n485), .Y(N39) );
  AOI22X1M U518 ( .A0(\mem[10][4] ), .A1(n546), .B0(\mem[11][4] ), .B1(n545), 
        .Y(n490) );
  AOI22X1M U519 ( .A0(\mem[8][4] ), .A1(n548), .B0(\mem[9][4] ), .B1(n547), 
        .Y(n489) );
  AOI21X1M U520 ( .A0(n490), .A1(n489), .B0(n525), .Y(n500) );
  AOI22X1M U521 ( .A0(\mem[14][4] ), .A1(n546), .B0(\mem[15][4] ), .B1(n545), 
        .Y(n492) );
  AOI22X1M U522 ( .A0(\mem[12][4] ), .A1(n548), .B0(\mem[13][4] ), .B1(n547), 
        .Y(n491) );
  AOI21X1M U523 ( .A0(n492), .A1(n491), .B0(n528), .Y(n499) );
  AOI22X1M U524 ( .A0(reg_2[4]), .A1(n546), .B0(reg_3[4]), .B1(n545), .Y(n494)
         );
  AOI22X1M U525 ( .A0(reg_0[4]), .A1(n548), .B0(reg_1[4]), .B1(n547), .Y(n493)
         );
  AOI21X1M U526 ( .A0(n494), .A1(n493), .B0(n531), .Y(n498) );
  AOI22X1M U527 ( .A0(test_so1), .A1(n546), .B0(\mem[7][4] ), .B1(n545), .Y(
        n496) );
  AOI22X1M U528 ( .A0(\mem[4][4] ), .A1(n548), .B0(\mem[5][4] ), .B1(n547), 
        .Y(n495) );
  AOI21X1M U529 ( .A0(n496), .A1(n495), .B0(n534), .Y(n497) );
  OR4X1M U530 ( .A(n500), .B(n499), .C(n498), .D(n497), .Y(N38) );
  AOI22X1M U531 ( .A0(\mem[10][5] ), .A1(n546), .B0(\mem[11][5] ), .B1(n545), 
        .Y(n502) );
  AOI22X1M U532 ( .A0(\mem[8][5] ), .A1(n548), .B0(\mem[9][5] ), .B1(n547), 
        .Y(n501) );
  AOI21X1M U533 ( .A0(n502), .A1(n501), .B0(n525), .Y(n512) );
  AOI22X1M U534 ( .A0(\mem[14][5] ), .A1(n546), .B0(\mem[15][5] ), .B1(n545), 
        .Y(n504) );
  AOI22X1M U535 ( .A0(\mem[12][5] ), .A1(n548), .B0(\mem[13][5] ), .B1(n547), 
        .Y(n503) );
  AOI21X1M U536 ( .A0(n504), .A1(n503), .B0(n528), .Y(n511) );
  AOI22X1M U537 ( .A0(reg_2[5]), .A1(n546), .B0(reg_3[5]), .B1(n545), .Y(n506)
         );
  AOI22X1M U538 ( .A0(reg_0[5]), .A1(n548), .B0(reg_1[5]), .B1(n547), .Y(n505)
         );
  AOI21X1M U539 ( .A0(n506), .A1(n505), .B0(n531), .Y(n510) );
  AOI22X1M U540 ( .A0(\mem[6][5] ), .A1(n546), .B0(\mem[7][5] ), .B1(n545), 
        .Y(n508) );
  AOI22X1M U541 ( .A0(\mem[4][5] ), .A1(n548), .B0(\mem[5][5] ), .B1(n547), 
        .Y(n507) );
  AOI21X1M U542 ( .A0(n508), .A1(n507), .B0(n534), .Y(n509) );
  OR4X1M U543 ( .A(n512), .B(n511), .C(n510), .D(n509), .Y(N37) );
  AOI22X1M U544 ( .A0(\mem[10][6] ), .A1(n546), .B0(\mem[11][6] ), .B1(n545), 
        .Y(n514) );
  AOI22X1M U545 ( .A0(\mem[8][6] ), .A1(n548), .B0(\mem[9][6] ), .B1(n547), 
        .Y(n513) );
  AOI21X1M U546 ( .A0(n514), .A1(n513), .B0(n525), .Y(n524) );
  AOI22X1M U547 ( .A0(\mem[14][6] ), .A1(n546), .B0(\mem[15][6] ), .B1(n545), 
        .Y(n516) );
  AOI22X1M U548 ( .A0(\mem[12][6] ), .A1(n548), .B0(\mem[13][6] ), .B1(n547), 
        .Y(n515) );
  AOI21X1M U549 ( .A0(n516), .A1(n515), .B0(n528), .Y(n523) );
  AOI22X1M U550 ( .A0(reg_2[6]), .A1(n546), .B0(reg_3[6]), .B1(n545), .Y(n518)
         );
  AOI22X1M U551 ( .A0(reg_0[6]), .A1(n548), .B0(reg_1[6]), .B1(n547), .Y(n517)
         );
  AOI21X1M U552 ( .A0(n518), .A1(n517), .B0(n531), .Y(n522) );
  AOI22X1M U553 ( .A0(\mem[6][6] ), .A1(n546), .B0(\mem[7][6] ), .B1(n545), 
        .Y(n520) );
  AOI22X1M U554 ( .A0(\mem[4][6] ), .A1(n548), .B0(\mem[5][6] ), .B1(n547), 
        .Y(n519) );
  AOI21X1M U555 ( .A0(n520), .A1(n519), .B0(n534), .Y(n521) );
  OR4X1M U556 ( .A(n524), .B(n523), .C(n522), .D(n521), .Y(N36) );
  AOI22X1M U557 ( .A0(\mem[10][7] ), .A1(n546), .B0(\mem[11][7] ), .B1(n545), 
        .Y(n527) );
  AOI22X1M U558 ( .A0(\mem[8][7] ), .A1(n548), .B0(\mem[9][7] ), .B1(n547), 
        .Y(n526) );
  AOI21X1M U559 ( .A0(n527), .A1(n526), .B0(n525), .Y(n540) );
  AOI22X1M U560 ( .A0(\mem[14][7] ), .A1(n546), .B0(\mem[15][7] ), .B1(n545), 
        .Y(n530) );
  AOI22X1M U561 ( .A0(\mem[12][7] ), .A1(n548), .B0(\mem[13][7] ), .B1(n547), 
        .Y(n529) );
  AOI21X1M U562 ( .A0(n530), .A1(n529), .B0(n528), .Y(n539) );
  AOI22X1M U563 ( .A0(reg_2[7]), .A1(n546), .B0(reg_3[7]), .B1(n545), .Y(n533)
         );
  AOI22X1M U564 ( .A0(reg_0[7]), .A1(n548), .B0(reg_1[7]), .B1(n547), .Y(n532)
         );
  AOI21X1M U565 ( .A0(n533), .A1(n532), .B0(n531), .Y(n538) );
  AOI22X1M U566 ( .A0(\mem[6][7] ), .A1(n546), .B0(\mem[7][7] ), .B1(n545), 
        .Y(n536) );
  AOI22X1M U567 ( .A0(\mem[4][7] ), .A1(n548), .B0(\mem[5][7] ), .B1(n547), 
        .Y(n535) );
  AOI21X1M U568 ( .A0(n536), .A1(n535), .B0(n534), .Y(n537) );
  OR4X1M U569 ( .A(n540), .B(n539), .C(n538), .D(n537), .Y(N35) );
  INVXLM U570 ( .A(test_se), .Y(n568) );
  INVXLM U571 ( .A(n568), .Y(n563) );
  INVXLM U572 ( .A(n568), .Y(n564) );
  DLY1X1M U573 ( .A(test_se), .Y(n565) );
  DLY1X1M U574 ( .A(test_se), .Y(n566) );
  DLY1X1M U575 ( .A(test_se), .Y(n567) );
  SDFFRHQX1M \mem_reg[6][4]  ( .D(n264), .SI(\mem[6][3] ), .SE(n564), .CK(clk), 
        .RN(rst_n), .Q(\mem[6][4] ) );
  INVXLM U3 ( .A(\mem[6][4] ), .Y(n1) );
  INVX2M U4 ( .A(n1), .Y(test_so1) );
endmodule


module asyc_fifo_mem_DATA_WIDTH8_DEPTH8_test_1 ( w_rst, wclk, data_in, w_addr, 
        r_addr, w_en, data_out, test_si2, test_si1, test_so2, test_so1, 
        test_se );
  input [7:0] data_in;
  input [3:0] w_addr;
  input [3:0] r_addr;
  output [7:0] data_out;
  input w_rst, wclk, w_en, test_si2, test_si1, test_se;
  output test_so2, test_so1;
  wire   N10, N11, N12, \mem[0][7] , \mem[0][6] , \mem[0][5] , \mem[0][4] ,
         \mem[0][3] , \mem[0][2] , \mem[0][1] , \mem[0][0] , \mem[1][7] ,
         \mem[1][6] , \mem[1][5] , \mem[1][4] , \mem[1][3] , \mem[1][2] ,
         \mem[1][1] , \mem[1][0] , \mem[2][7] , \mem[2][6] , \mem[2][5] ,
         \mem[2][4] , \mem[2][3] , \mem[2][2] , \mem[2][1] , \mem[2][0] ,
         \mem[3][7] , \mem[3][6] , \mem[3][5] , \mem[3][4] , \mem[3][3] ,
         \mem[3][2] , \mem[3][1] , \mem[3][0] , \mem[4][7] , \mem[4][6] ,
         \mem[4][5] , \mem[4][4] , \mem[4][3] , \mem[4][2] , \mem[4][1] ,
         \mem[4][0] , \mem[5][7] , \mem[5][6] , \mem[5][5] , \mem[5][4] ,
         \mem[5][3] , \mem[5][2] , \mem[5][1] , \mem[5][0] , \mem[6][7] ,
         \mem[6][6] , \mem[6][5] , \mem[6][4] , \mem[6][3] , \mem[6][2] ,
         \mem[6][1] , \mem[6][0] , \mem[7][7] , \mem[7][6] , \mem[7][5] ,
         \mem[7][4] , \mem[7][3] , \mem[7][2] , \mem[7][1] , \mem[7][0] , n75,
         n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89,
         n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102,
         n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113,
         n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124,
         n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135,
         n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, n146,
         n147, n148, n203, n204, n205, n206, n207, n208, n209, n210, n211,
         n212, n213, n214, n215, n216, n217, n218, n219, n220, n221, n222,
         n223, n224, n225, n226, n227, n228, n229, n230, n231, n232, n233,
         n234, n235, n236, n237, n238, n239, n240, n241, n242, n243, n244,
         n245, n246, n247, n248, n249, n250, n251, n252, n253, n254, n255,
         n256, n257, n261, n262, n263, n264, n265, n266, n1;
  assign N10 = r_addr[0];
  assign N11 = r_addr[1];
  assign N12 = r_addr[2];
  assign test_so2 = \mem[7][7] ;

  SDFFRQX1M \mem_reg[5][7]  ( .D(n108), .SI(\mem[5][6] ), .SE(n266), .CK(wclk), 
        .RN(w_rst), .Q(\mem[5][7] ) );
  SDFFRQX1M \mem_reg[5][6]  ( .D(n107), .SI(\mem[5][5] ), .SE(n265), .CK(wclk), 
        .RN(w_rst), .Q(\mem[5][6] ) );
  SDFFRQX1M \mem_reg[5][5]  ( .D(n106), .SI(\mem[5][4] ), .SE(n264), .CK(wclk), 
        .RN(w_rst), .Q(\mem[5][5] ) );
  SDFFRQX1M \mem_reg[5][4]  ( .D(n105), .SI(\mem[5][3] ), .SE(n263), .CK(wclk), 
        .RN(w_rst), .Q(\mem[5][4] ) );
  SDFFRQX1M \mem_reg[5][3]  ( .D(n104), .SI(\mem[5][2] ), .SE(n266), .CK(wclk), 
        .RN(w_rst), .Q(\mem[5][3] ) );
  SDFFRQX1M \mem_reg[5][2]  ( .D(n103), .SI(\mem[5][1] ), .SE(n265), .CK(wclk), 
        .RN(w_rst), .Q(\mem[5][2] ) );
  SDFFRQX1M \mem_reg[5][1]  ( .D(n102), .SI(\mem[5][0] ), .SE(n264), .CK(wclk), 
        .RN(w_rst), .Q(\mem[5][1] ) );
  SDFFRQX1M \mem_reg[5][0]  ( .D(n101), .SI(\mem[4][7] ), .SE(n263), .CK(wclk), 
        .RN(w_rst), .Q(\mem[5][0] ) );
  SDFFRQX1M \mem_reg[6][7]  ( .D(n100), .SI(\mem[6][6] ), .SE(n266), .CK(wclk), 
        .RN(w_rst), .Q(\mem[6][7] ) );
  SDFFRQX1M \mem_reg[6][6]  ( .D(n99), .SI(\mem[6][5] ), .SE(n265), .CK(wclk), 
        .RN(w_rst), .Q(\mem[6][6] ) );
  SDFFRQX1M \mem_reg[6][5]  ( .D(n98), .SI(\mem[6][4] ), .SE(n264), .CK(wclk), 
        .RN(w_rst), .Q(\mem[6][5] ) );
  SDFFRQX1M \mem_reg[6][4]  ( .D(n97), .SI(\mem[6][3] ), .SE(n263), .CK(wclk), 
        .RN(w_rst), .Q(\mem[6][4] ) );
  SDFFRQX1M \mem_reg[6][3]  ( .D(n96), .SI(\mem[6][2] ), .SE(n266), .CK(wclk), 
        .RN(w_rst), .Q(\mem[6][3] ) );
  SDFFRQX1M \mem_reg[6][2]  ( .D(n95), .SI(\mem[6][1] ), .SE(n265), .CK(wclk), 
        .RN(w_rst), .Q(\mem[6][2] ) );
  SDFFRQX1M \mem_reg[6][1]  ( .D(n94), .SI(\mem[6][0] ), .SE(n264), .CK(wclk), 
        .RN(w_rst), .Q(\mem[6][1] ) );
  SDFFRQX1M \mem_reg[6][0]  ( .D(n93), .SI(\mem[5][7] ), .SE(n263), .CK(wclk), 
        .RN(w_rst), .Q(\mem[6][0] ) );
  SDFFRQX1M \mem_reg[7][7]  ( .D(n92), .SI(\mem[7][6] ), .SE(n266), .CK(wclk), 
        .RN(w_rst), .Q(\mem[7][7] ) );
  SDFFRQX1M \mem_reg[7][6]  ( .D(n91), .SI(\mem[7][5] ), .SE(n265), .CK(wclk), 
        .RN(w_rst), .Q(\mem[7][6] ) );
  SDFFRQX1M \mem_reg[7][5]  ( .D(n90), .SI(\mem[7][4] ), .SE(n264), .CK(wclk), 
        .RN(w_rst), .Q(\mem[7][5] ) );
  SDFFRQX1M \mem_reg[7][4]  ( .D(n89), .SI(\mem[7][3] ), .SE(n263), .CK(wclk), 
        .RN(w_rst), .Q(\mem[7][4] ) );
  SDFFRQX1M \mem_reg[7][3]  ( .D(n88), .SI(\mem[7][2] ), .SE(n266), .CK(wclk), 
        .RN(w_rst), .Q(\mem[7][3] ) );
  SDFFRQX1M \mem_reg[7][2]  ( .D(n87), .SI(test_si2), .SE(n265), .CK(wclk), 
        .RN(w_rst), .Q(\mem[7][2] ) );
  SDFFRQX1M \mem_reg[7][0]  ( .D(n85), .SI(\mem[6][7] ), .SE(n263), .CK(wclk), 
        .RN(w_rst), .Q(\mem[7][0] ) );
  SDFFRQX1M \mem_reg[4][7]  ( .D(n116), .SI(\mem[4][6] ), .SE(n266), .CK(wclk), 
        .RN(w_rst), .Q(\mem[4][7] ) );
  SDFFRQX1M \mem_reg[4][6]  ( .D(n115), .SI(\mem[4][5] ), .SE(n265), .CK(wclk), 
        .RN(w_rst), .Q(\mem[4][6] ) );
  SDFFRQX1M \mem_reg[4][5]  ( .D(n114), .SI(\mem[4][4] ), .SE(n264), .CK(wclk), 
        .RN(w_rst), .Q(\mem[4][5] ) );
  SDFFRQX1M \mem_reg[4][4]  ( .D(n113), .SI(\mem[4][3] ), .SE(n263), .CK(wclk), 
        .RN(w_rst), .Q(\mem[4][4] ) );
  SDFFRQX1M \mem_reg[4][3]  ( .D(n112), .SI(\mem[4][2] ), .SE(n266), .CK(wclk), 
        .RN(w_rst), .Q(\mem[4][3] ) );
  SDFFRQX1M \mem_reg[4][2]  ( .D(n111), .SI(\mem[4][1] ), .SE(n265), .CK(wclk), 
        .RN(w_rst), .Q(\mem[4][2] ) );
  SDFFRQX1M \mem_reg[4][1]  ( .D(n110), .SI(\mem[4][0] ), .SE(n264), .CK(wclk), 
        .RN(w_rst), .Q(\mem[4][1] ) );
  SDFFRQX1M \mem_reg[4][0]  ( .D(n109), .SI(\mem[3][7] ), .SE(n263), .CK(wclk), 
        .RN(w_rst), .Q(\mem[4][0] ) );
  SDFFRQX1M \mem_reg[1][7]  ( .D(n140), .SI(\mem[1][6] ), .SE(n266), .CK(wclk), 
        .RN(w_rst), .Q(\mem[1][7] ) );
  SDFFRQX1M \mem_reg[1][6]  ( .D(n139), .SI(\mem[1][5] ), .SE(n265), .CK(wclk), 
        .RN(w_rst), .Q(\mem[1][6] ) );
  SDFFRQX1M \mem_reg[1][5]  ( .D(n138), .SI(\mem[1][4] ), .SE(n264), .CK(wclk), 
        .RN(w_rst), .Q(\mem[1][5] ) );
  SDFFRQX1M \mem_reg[1][4]  ( .D(n137), .SI(\mem[1][3] ), .SE(n263), .CK(wclk), 
        .RN(w_rst), .Q(\mem[1][4] ) );
  SDFFRQX1M \mem_reg[1][3]  ( .D(n136), .SI(\mem[1][2] ), .SE(n266), .CK(wclk), 
        .RN(w_rst), .Q(\mem[1][3] ) );
  SDFFRQX1M \mem_reg[1][2]  ( .D(n135), .SI(\mem[1][1] ), .SE(n265), .CK(wclk), 
        .RN(w_rst), .Q(\mem[1][2] ) );
  SDFFRQX1M \mem_reg[1][1]  ( .D(n134), .SI(\mem[1][0] ), .SE(n264), .CK(wclk), 
        .RN(w_rst), .Q(\mem[1][1] ) );
  SDFFRQX1M \mem_reg[1][0]  ( .D(n133), .SI(\mem[0][7] ), .SE(n263), .CK(wclk), 
        .RN(w_rst), .Q(\mem[1][0] ) );
  SDFFRQX1M \mem_reg[3][7]  ( .D(n124), .SI(\mem[3][6] ), .SE(n266), .CK(wclk), 
        .RN(w_rst), .Q(\mem[3][7] ) );
  SDFFRQX1M \mem_reg[3][6]  ( .D(n123), .SI(\mem[3][5] ), .SE(n265), .CK(wclk), 
        .RN(w_rst), .Q(\mem[3][6] ) );
  SDFFRQX1M \mem_reg[3][5]  ( .D(n122), .SI(\mem[3][4] ), .SE(n264), .CK(wclk), 
        .RN(w_rst), .Q(\mem[3][5] ) );
  SDFFRQX1M \mem_reg[3][4]  ( .D(n121), .SI(\mem[3][3] ), .SE(n263), .CK(wclk), 
        .RN(w_rst), .Q(\mem[3][4] ) );
  SDFFRQX1M \mem_reg[3][3]  ( .D(n120), .SI(\mem[3][2] ), .SE(n266), .CK(wclk), 
        .RN(w_rst), .Q(\mem[3][3] ) );
  SDFFRQX1M \mem_reg[3][2]  ( .D(n119), .SI(\mem[3][1] ), .SE(n265), .CK(wclk), 
        .RN(w_rst), .Q(\mem[3][2] ) );
  SDFFRQX1M \mem_reg[3][1]  ( .D(n118), .SI(\mem[3][0] ), .SE(n264), .CK(wclk), 
        .RN(w_rst), .Q(\mem[3][1] ) );
  SDFFRQX1M \mem_reg[3][0]  ( .D(n117), .SI(\mem[2][7] ), .SE(n263), .CK(wclk), 
        .RN(w_rst), .Q(\mem[3][0] ) );
  SDFFRQX1M \mem_reg[2][7]  ( .D(n132), .SI(\mem[2][6] ), .SE(n266), .CK(wclk), 
        .RN(w_rst), .Q(\mem[2][7] ) );
  SDFFRQX1M \mem_reg[2][6]  ( .D(n131), .SI(\mem[2][5] ), .SE(n265), .CK(wclk), 
        .RN(w_rst), .Q(\mem[2][6] ) );
  SDFFRQX1M \mem_reg[2][5]  ( .D(n130), .SI(\mem[2][4] ), .SE(n264), .CK(wclk), 
        .RN(w_rst), .Q(\mem[2][5] ) );
  SDFFRQX1M \mem_reg[2][4]  ( .D(n129), .SI(\mem[2][3] ), .SE(n263), .CK(wclk), 
        .RN(w_rst), .Q(\mem[2][4] ) );
  SDFFRQX1M \mem_reg[2][3]  ( .D(n128), .SI(\mem[2][2] ), .SE(n266), .CK(wclk), 
        .RN(w_rst), .Q(\mem[2][3] ) );
  SDFFRQX1M \mem_reg[2][2]  ( .D(n127), .SI(\mem[2][1] ), .SE(n265), .CK(wclk), 
        .RN(w_rst), .Q(\mem[2][2] ) );
  SDFFRQX1M \mem_reg[2][1]  ( .D(n126), .SI(\mem[2][0] ), .SE(n264), .CK(wclk), 
        .RN(w_rst), .Q(\mem[2][1] ) );
  SDFFRQX1M \mem_reg[2][0]  ( .D(n125), .SI(\mem[1][7] ), .SE(n263), .CK(wclk), 
        .RN(w_rst), .Q(\mem[2][0] ) );
  SDFFRQX1M \mem_reg[0][7]  ( .D(n148), .SI(\mem[0][6] ), .SE(n266), .CK(wclk), 
        .RN(w_rst), .Q(\mem[0][7] ) );
  SDFFRQX1M \mem_reg[0][6]  ( .D(n147), .SI(\mem[0][5] ), .SE(n265), .CK(wclk), 
        .RN(w_rst), .Q(\mem[0][6] ) );
  SDFFRQX1M \mem_reg[0][5]  ( .D(n146), .SI(\mem[0][4] ), .SE(n264), .CK(wclk), 
        .RN(w_rst), .Q(\mem[0][5] ) );
  SDFFRQX1M \mem_reg[0][4]  ( .D(n145), .SI(\mem[0][3] ), .SE(n263), .CK(wclk), 
        .RN(w_rst), .Q(\mem[0][4] ) );
  SDFFRQX1M \mem_reg[0][3]  ( .D(n144), .SI(\mem[0][2] ), .SE(n266), .CK(wclk), 
        .RN(w_rst), .Q(\mem[0][3] ) );
  SDFFRQX1M \mem_reg[0][2]  ( .D(n143), .SI(\mem[0][1] ), .SE(n265), .CK(wclk), 
        .RN(w_rst), .Q(\mem[0][2] ) );
  SDFFRQX1M \mem_reg[0][1]  ( .D(n142), .SI(\mem[0][0] ), .SE(n264), .CK(wclk), 
        .RN(w_rst), .Q(\mem[0][1] ) );
  SDFFRQX1M \mem_reg[0][0]  ( .D(n141), .SI(test_si1), .SE(n263), .CK(wclk), 
        .RN(w_rst), .Q(\mem[0][0] ) );
  BUFX2M U130 ( .A(n75), .Y(n247) );
  BUFX2M U131 ( .A(n80), .Y(n244) );
  BUFX2M U132 ( .A(n82), .Y(n243) );
  BUFX2M U133 ( .A(n77), .Y(n246) );
  BUFX2M U134 ( .A(n83), .Y(n242) );
  BUFX2M U135 ( .A(n78), .Y(n245) );
  NAND3X2M U136 ( .A(n248), .B(n249), .C(n76), .Y(n79) );
  NAND3X2M U137 ( .A(n248), .B(n249), .C(n81), .Y(n84) );
  NOR2X2M U138 ( .A(n239), .B(n240), .Y(n235) );
  NOR2BX2M U139 ( .AN(w_en), .B(w_addr[2]), .Y(n81) );
  OAI2BB2X1M U140 ( .B0(n257), .B1(n84), .A0N(\mem[0][0] ), .A1N(n84), .Y(n141) );
  OAI2BB2X1M U141 ( .B0(n256), .B1(n84), .A0N(\mem[0][1] ), .A1N(n84), .Y(n142) );
  OAI2BB2X1M U142 ( .B0(n255), .B1(n84), .A0N(\mem[0][2] ), .A1N(n84), .Y(n143) );
  OAI2BB2X1M U143 ( .B0(n254), .B1(n84), .A0N(\mem[0][3] ), .A1N(n84), .Y(n144) );
  OAI2BB2X1M U144 ( .B0(n253), .B1(n84), .A0N(\mem[0][4] ), .A1N(n84), .Y(n145) );
  OAI2BB2X1M U145 ( .B0(n252), .B1(n84), .A0N(\mem[0][5] ), .A1N(n84), .Y(n146) );
  OAI2BB2X1M U146 ( .B0(n251), .B1(n84), .A0N(\mem[0][6] ), .A1N(n84), .Y(n147) );
  OAI2BB2X1M U147 ( .B0(n250), .B1(n84), .A0N(\mem[0][7] ), .A1N(n84), .Y(n148) );
  OAI2BB2X1M U148 ( .B0(n257), .B1(n79), .A0N(\mem[4][0] ), .A1N(n79), .Y(n109) );
  OAI2BB2X1M U149 ( .B0(n256), .B1(n79), .A0N(\mem[4][1] ), .A1N(n79), .Y(n110) );
  OAI2BB2X1M U150 ( .B0(n255), .B1(n79), .A0N(\mem[4][2] ), .A1N(n79), .Y(n111) );
  OAI2BB2X1M U151 ( .B0(n254), .B1(n79), .A0N(\mem[4][3] ), .A1N(n79), .Y(n112) );
  OAI2BB2X1M U152 ( .B0(n253), .B1(n79), .A0N(\mem[4][4] ), .A1N(n79), .Y(n113) );
  OAI2BB2X1M U153 ( .B0(n252), .B1(n79), .A0N(\mem[4][5] ), .A1N(n79), .Y(n114) );
  OAI2BB2X1M U154 ( .B0(n251), .B1(n79), .A0N(\mem[4][6] ), .A1N(n79), .Y(n115) );
  OAI2BB2X1M U155 ( .B0(n250), .B1(n79), .A0N(\mem[4][7] ), .A1N(n79), .Y(n116) );
  INVX2M U156 ( .A(data_in[0]), .Y(n257) );
  INVX2M U157 ( .A(data_in[1]), .Y(n256) );
  INVX2M U158 ( .A(data_in[2]), .Y(n255) );
  INVX2M U159 ( .A(data_in[3]), .Y(n254) );
  INVX2M U160 ( .A(data_in[4]), .Y(n253) );
  INVX2M U161 ( .A(data_in[5]), .Y(n252) );
  INVX2M U162 ( .A(data_in[6]), .Y(n251) );
  INVX2M U163 ( .A(data_in[7]), .Y(n250) );
  OAI2BB2X1M U164 ( .B0(n257), .B1(n246), .A0N(\mem[6][0] ), .A1N(n246), .Y(
        n93) );
  OAI2BB2X1M U165 ( .B0(n256), .B1(n246), .A0N(\mem[6][1] ), .A1N(n246), .Y(
        n94) );
  OAI2BB2X1M U166 ( .B0(n255), .B1(n246), .A0N(\mem[6][2] ), .A1N(n246), .Y(
        n95) );
  OAI2BB2X1M U167 ( .B0(n254), .B1(n246), .A0N(\mem[6][3] ), .A1N(n246), .Y(
        n96) );
  OAI2BB2X1M U168 ( .B0(n253), .B1(n246), .A0N(\mem[6][4] ), .A1N(n246), .Y(
        n97) );
  OAI2BB2X1M U169 ( .B0(n252), .B1(n246), .A0N(\mem[6][5] ), .A1N(n246), .Y(
        n98) );
  OAI2BB2X1M U170 ( .B0(n251), .B1(n246), .A0N(\mem[6][6] ), .A1N(n246), .Y(
        n99) );
  OAI2BB2X1M U171 ( .B0(n250), .B1(n246), .A0N(\mem[6][7] ), .A1N(n246), .Y(
        n100) );
  OAI2BB2X1M U172 ( .B0(n257), .B1(n245), .A0N(\mem[5][0] ), .A1N(n245), .Y(
        n101) );
  OAI2BB2X1M U173 ( .B0(n256), .B1(n245), .A0N(\mem[5][1] ), .A1N(n245), .Y(
        n102) );
  OAI2BB2X1M U174 ( .B0(n255), .B1(n245), .A0N(\mem[5][2] ), .A1N(n245), .Y(
        n103) );
  OAI2BB2X1M U175 ( .B0(n254), .B1(n245), .A0N(\mem[5][3] ), .A1N(n245), .Y(
        n104) );
  OAI2BB2X1M U176 ( .B0(n253), .B1(n245), .A0N(\mem[5][4] ), .A1N(n245), .Y(
        n105) );
  OAI2BB2X1M U177 ( .B0(n252), .B1(n245), .A0N(\mem[5][5] ), .A1N(n245), .Y(
        n106) );
  OAI2BB2X1M U178 ( .B0(n251), .B1(n245), .A0N(\mem[5][6] ), .A1N(n245), .Y(
        n107) );
  OAI2BB2X1M U179 ( .B0(n250), .B1(n245), .A0N(\mem[5][7] ), .A1N(n245), .Y(
        n108) );
  OAI2BB2X1M U180 ( .B0(n257), .B1(n244), .A0N(\mem[3][0] ), .A1N(n244), .Y(
        n117) );
  OAI2BB2X1M U181 ( .B0(n256), .B1(n244), .A0N(\mem[3][1] ), .A1N(n244), .Y(
        n118) );
  OAI2BB2X1M U182 ( .B0(n255), .B1(n244), .A0N(\mem[3][2] ), .A1N(n244), .Y(
        n119) );
  OAI2BB2X1M U183 ( .B0(n254), .B1(n244), .A0N(\mem[3][3] ), .A1N(n244), .Y(
        n120) );
  OAI2BB2X1M U184 ( .B0(n253), .B1(n244), .A0N(\mem[3][4] ), .A1N(n244), .Y(
        n121) );
  OAI2BB2X1M U185 ( .B0(n252), .B1(n244), .A0N(\mem[3][5] ), .A1N(n244), .Y(
        n122) );
  OAI2BB2X1M U186 ( .B0(n251), .B1(n244), .A0N(\mem[3][6] ), .A1N(n244), .Y(
        n123) );
  OAI2BB2X1M U187 ( .B0(n250), .B1(n244), .A0N(\mem[3][7] ), .A1N(n244), .Y(
        n124) );
  OAI2BB2X1M U188 ( .B0(n257), .B1(n243), .A0N(\mem[2][0] ), .A1N(n243), .Y(
        n125) );
  OAI2BB2X1M U189 ( .B0(n256), .B1(n243), .A0N(\mem[2][1] ), .A1N(n243), .Y(
        n126) );
  OAI2BB2X1M U190 ( .B0(n255), .B1(n243), .A0N(\mem[2][2] ), .A1N(n243), .Y(
        n127) );
  OAI2BB2X1M U191 ( .B0(n254), .B1(n243), .A0N(\mem[2][3] ), .A1N(n243), .Y(
        n128) );
  OAI2BB2X1M U192 ( .B0(n253), .B1(n243), .A0N(\mem[2][4] ), .A1N(n243), .Y(
        n129) );
  OAI2BB2X1M U193 ( .B0(n252), .B1(n243), .A0N(\mem[2][5] ), .A1N(n243), .Y(
        n130) );
  OAI2BB2X1M U194 ( .B0(n251), .B1(n243), .A0N(\mem[2][6] ), .A1N(n243), .Y(
        n131) );
  OAI2BB2X1M U195 ( .B0(n250), .B1(n243), .A0N(\mem[2][7] ), .A1N(n243), .Y(
        n132) );
  OAI2BB2X1M U196 ( .B0(n257), .B1(n242), .A0N(\mem[1][0] ), .A1N(n242), .Y(
        n133) );
  OAI2BB2X1M U197 ( .B0(n256), .B1(n242), .A0N(\mem[1][1] ), .A1N(n242), .Y(
        n134) );
  OAI2BB2X1M U198 ( .B0(n255), .B1(n242), .A0N(\mem[1][2] ), .A1N(n242), .Y(
        n135) );
  OAI2BB2X1M U199 ( .B0(n254), .B1(n242), .A0N(\mem[1][3] ), .A1N(n242), .Y(
        n136) );
  OAI2BB2X1M U200 ( .B0(n253), .B1(n242), .A0N(\mem[1][4] ), .A1N(n242), .Y(
        n137) );
  OAI2BB2X1M U201 ( .B0(n252), .B1(n242), .A0N(\mem[1][5] ), .A1N(n242), .Y(
        n138) );
  OAI2BB2X1M U202 ( .B0(n251), .B1(n242), .A0N(\mem[1][6] ), .A1N(n242), .Y(
        n139) );
  OAI2BB2X1M U203 ( .B0(n250), .B1(n242), .A0N(\mem[1][7] ), .A1N(n242), .Y(
        n140) );
  OAI2BB2X1M U204 ( .B0(n247), .B1(n257), .A0N(\mem[7][0] ), .A1N(n247), .Y(
        n85) );
  OAI2BB2X1M U205 ( .B0(n247), .B1(n256), .A0N(n261), .A1N(n247), .Y(n86) );
  OAI2BB2X1M U206 ( .B0(n247), .B1(n255), .A0N(\mem[7][2] ), .A1N(n247), .Y(
        n87) );
  OAI2BB2X1M U207 ( .B0(n247), .B1(n254), .A0N(\mem[7][3] ), .A1N(n247), .Y(
        n88) );
  OAI2BB2X1M U208 ( .B0(n247), .B1(n253), .A0N(\mem[7][4] ), .A1N(n247), .Y(
        n89) );
  OAI2BB2X1M U209 ( .B0(n247), .B1(n252), .A0N(\mem[7][5] ), .A1N(n247), .Y(
        n90) );
  OAI2BB2X1M U210 ( .B0(n247), .B1(n251), .A0N(\mem[7][6] ), .A1N(n247), .Y(
        n91) );
  OAI2BB2X1M U211 ( .B0(n247), .B1(n250), .A0N(\mem[7][7] ), .A1N(n247), .Y(
        n92) );
  AND2X2M U212 ( .A(w_en), .B(w_addr[2]), .Y(n76) );
  NAND3X2M U213 ( .A(n76), .B(n249), .C(w_addr[0]), .Y(n78) );
  NAND3X2M U214 ( .A(n76), .B(n248), .C(w_addr[1]), .Y(n77) );
  NAND3X2M U215 ( .A(w_addr[1]), .B(w_addr[0]), .C(n81), .Y(n80) );
  NAND3X2M U216 ( .A(w_addr[1]), .B(n248), .C(n81), .Y(n82) );
  NAND3X2M U217 ( .A(w_addr[0]), .B(n249), .C(n81), .Y(n83) );
  NAND3X2M U218 ( .A(w_addr[0]), .B(n76), .C(w_addr[1]), .Y(n75) );
  INVX2M U219 ( .A(w_addr[0]), .Y(n248) );
  INVX2M U220 ( .A(w_addr[1]), .Y(n249) );
  NOR2X2M U221 ( .A(n239), .B(N11), .Y(n236) );
  NOR2X2M U222 ( .A(n240), .B(N12), .Y(n233) );
  NOR2X2M U223 ( .A(N11), .B(N12), .Y(n232) );
  INVX2M U224 ( .A(N11), .Y(n240) );
  INVX2M U225 ( .A(N12), .Y(n239) );
  INVX2M U226 ( .A(N10), .Y(n241) );
  AO22X1M U227 ( .A0(\mem[3][0] ), .A1(n233), .B0(\mem[1][0] ), .B1(n232), .Y(
        n203) );
  AOI221XLM U228 ( .A0(\mem[5][0] ), .A1(n236), .B0(\mem[7][0] ), .B1(n235), 
        .C0(n203), .Y(n206) );
  AO22X1M U229 ( .A0(\mem[2][0] ), .A1(n233), .B0(\mem[0][0] ), .B1(n232), .Y(
        n204) );
  AOI221XLM U230 ( .A0(\mem[4][0] ), .A1(n236), .B0(\mem[6][0] ), .B1(n235), 
        .C0(n204), .Y(n205) );
  OAI22X1M U231 ( .A0(n241), .A1(n206), .B0(N10), .B1(n205), .Y(data_out[0])
         );
  AO22X1M U232 ( .A0(\mem[3][1] ), .A1(n233), .B0(\mem[1][1] ), .B1(n232), .Y(
        n207) );
  AOI221XLM U233 ( .A0(\mem[5][1] ), .A1(n236), .B0(n261), .B1(n235), .C0(n207), .Y(n210) );
  AO22X1M U234 ( .A0(\mem[2][1] ), .A1(n233), .B0(\mem[0][1] ), .B1(n232), .Y(
        n208) );
  AOI221XLM U235 ( .A0(\mem[4][1] ), .A1(n236), .B0(\mem[6][1] ), .B1(n235), 
        .C0(n208), .Y(n209) );
  OAI22X1M U236 ( .A0(n241), .A1(n210), .B0(N10), .B1(n209), .Y(data_out[1])
         );
  AO22X1M U237 ( .A0(\mem[3][2] ), .A1(n233), .B0(\mem[1][2] ), .B1(n232), .Y(
        n211) );
  AOI221XLM U238 ( .A0(\mem[5][2] ), .A1(n236), .B0(\mem[7][2] ), .B1(n235), 
        .C0(n211), .Y(n214) );
  AO22X1M U239 ( .A0(\mem[2][2] ), .A1(n233), .B0(\mem[0][2] ), .B1(n232), .Y(
        n212) );
  AOI221XLM U240 ( .A0(\mem[4][2] ), .A1(n236), .B0(\mem[6][2] ), .B1(n235), 
        .C0(n212), .Y(n213) );
  OAI22X1M U241 ( .A0(n241), .A1(n214), .B0(N10), .B1(n213), .Y(data_out[2])
         );
  AO22X1M U242 ( .A0(\mem[3][3] ), .A1(n233), .B0(\mem[1][3] ), .B1(n232), .Y(
        n215) );
  AOI221XLM U243 ( .A0(\mem[5][3] ), .A1(n236), .B0(\mem[7][3] ), .B1(n235), 
        .C0(n215), .Y(n218) );
  AO22X1M U244 ( .A0(\mem[2][3] ), .A1(n233), .B0(\mem[0][3] ), .B1(n232), .Y(
        n216) );
  AOI221XLM U245 ( .A0(\mem[4][3] ), .A1(n236), .B0(\mem[6][3] ), .B1(n235), 
        .C0(n216), .Y(n217) );
  OAI22X1M U246 ( .A0(n241), .A1(n218), .B0(N10), .B1(n217), .Y(data_out[3])
         );
  AO22X1M U247 ( .A0(\mem[3][4] ), .A1(n233), .B0(\mem[1][4] ), .B1(n232), .Y(
        n219) );
  AOI221XLM U248 ( .A0(\mem[5][4] ), .A1(n236), .B0(\mem[7][4] ), .B1(n235), 
        .C0(n219), .Y(n222) );
  AO22X1M U249 ( .A0(\mem[2][4] ), .A1(n233), .B0(\mem[0][4] ), .B1(n232), .Y(
        n220) );
  AOI221XLM U250 ( .A0(\mem[4][4] ), .A1(n236), .B0(\mem[6][4] ), .B1(n235), 
        .C0(n220), .Y(n221) );
  OAI22X1M U251 ( .A0(n241), .A1(n222), .B0(N10), .B1(n221), .Y(data_out[4])
         );
  AO22X1M U252 ( .A0(\mem[3][5] ), .A1(n233), .B0(\mem[1][5] ), .B1(n232), .Y(
        n223) );
  AOI221XLM U253 ( .A0(\mem[5][5] ), .A1(n236), .B0(\mem[7][5] ), .B1(n235), 
        .C0(n223), .Y(n226) );
  AO22X1M U254 ( .A0(\mem[2][5] ), .A1(n233), .B0(\mem[0][5] ), .B1(n232), .Y(
        n224) );
  AOI221XLM U255 ( .A0(\mem[4][5] ), .A1(n236), .B0(\mem[6][5] ), .B1(n235), 
        .C0(n224), .Y(n225) );
  OAI22X1M U256 ( .A0(n241), .A1(n226), .B0(N10), .B1(n225), .Y(data_out[5])
         );
  AO22X1M U257 ( .A0(\mem[3][6] ), .A1(n233), .B0(\mem[1][6] ), .B1(n232), .Y(
        n227) );
  AOI221XLM U258 ( .A0(\mem[5][6] ), .A1(n236), .B0(\mem[7][6] ), .B1(n235), 
        .C0(n227), .Y(n230) );
  AO22X1M U259 ( .A0(\mem[2][6] ), .A1(n233), .B0(\mem[0][6] ), .B1(n232), .Y(
        n228) );
  AOI221XLM U260 ( .A0(\mem[4][6] ), .A1(n236), .B0(\mem[6][6] ), .B1(n235), 
        .C0(n228), .Y(n229) );
  OAI22X1M U261 ( .A0(n241), .A1(n230), .B0(N10), .B1(n229), .Y(data_out[6])
         );
  AO22X1M U262 ( .A0(\mem[3][7] ), .A1(n233), .B0(\mem[1][7] ), .B1(n232), .Y(
        n231) );
  AOI221XLM U263 ( .A0(\mem[5][7] ), .A1(n236), .B0(\mem[7][7] ), .B1(n235), 
        .C0(n231), .Y(n238) );
  AO22X1M U264 ( .A0(\mem[2][7] ), .A1(n233), .B0(\mem[0][7] ), .B1(n232), .Y(
        n234) );
  AOI221XLM U265 ( .A0(\mem[4][7] ), .A1(n236), .B0(\mem[6][7] ), .B1(n235), 
        .C0(n234), .Y(n237) );
  OAI22X1M U266 ( .A0(n238), .A1(n241), .B0(N10), .B1(n237), .Y(data_out[7])
         );
  DLY1X1M U267 ( .A(test_so1), .Y(n261) );
  INVXLM U268 ( .A(test_se), .Y(n262) );
  INVXLM U269 ( .A(n262), .Y(n263) );
  INVXLM U270 ( .A(n262), .Y(n264) );
  INVXLM U271 ( .A(n262), .Y(n265) );
  INVXLM U272 ( .A(n262), .Y(n266) );
  SDFFRHQX1M \mem_reg[7][1]  ( .D(n86), .SI(\mem[7][0] ), .SE(n264), .CK(wclk), 
        .RN(w_rst), .Q(\mem[7][1] ) );
  INVXLM U2 ( .A(\mem[7][1] ), .Y(n1) );
  INVX2M U3 ( .A(n1), .Y(test_so1) );
endmodule


module b2g_WIDTH3_0 ( B, G );
  input [2:0] B;
  output [2:0] G;


  CLKXOR2X2M U1 ( .A(B[2]), .B(B[1]), .Y(G[1]) );
  CLKXOR2X2M U2 ( .A(B[1]), .B(B[0]), .Y(G[0]) );
  BUFX2M U3 ( .A(B[2]), .Y(G[2]) );
endmodule


module async_fifo_write_pointer_DEPTH8_test_1 ( w_rst, wclk, w_en, r_ptr_sync, 
        w_addr, w_ptr_gray, full_flag, test_si, test_se );
  input [3:0] r_ptr_sync;
  output [3:0] w_addr;
  output [3:0] w_ptr_gray;
  input w_rst, wclk, w_en, test_si, test_se;
  output full_flag;
  wire   n12, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n27, n28, n29;
  wire   [3:0] w_addr_c;
  wire   [2:0] w_ptr_gray_c;

  SDFFRX1M \w_addr_reg[3]  ( .D(w_addr_c[3]), .SI(w_addr[2]), .SE(test_se), 
        .CK(wclk), .RN(w_rst), .Q(w_addr[3]), .QN(n12) );
  SDFFRQX1M \w_addr_reg[0]  ( .D(w_addr_c[0]), .SI(test_si), .SE(test_se), 
        .CK(wclk), .RN(w_rst), .Q(w_addr[0]) );
  SDFFRQX1M \w_ptr_gray_reg[3]  ( .D(w_addr_c[3]), .SI(w_ptr_gray[2]), .SE(
        test_se), .CK(wclk), .RN(w_rst), .Q(w_ptr_gray[3]) );
  SDFFRQX1M \w_addr_reg[1]  ( .D(w_addr_c[1]), .SI(w_addr[0]), .SE(test_se), 
        .CK(wclk), .RN(w_rst), .Q(w_addr[1]) );
  SDFFRQX1M \w_addr_reg[2]  ( .D(w_addr_c[2]), .SI(w_addr[1]), .SE(test_se), 
        .CK(wclk), .RN(w_rst), .Q(w_addr[2]) );
  SDFFRQX1M \w_ptr_gray_reg[0]  ( .D(w_ptr_gray_c[0]), .SI(w_addr[3]), .SE(
        test_se), .CK(wclk), .RN(w_rst), .Q(w_ptr_gray[0]) );
  SDFFRQX1M \w_ptr_gray_reg[2]  ( .D(w_ptr_gray_c[2]), .SI(w_ptr_gray[1]), 
        .SE(test_se), .CK(wclk), .RN(w_rst), .Q(w_ptr_gray[2]) );
  SDFFRQX1M \w_ptr_gray_reg[1]  ( .D(w_ptr_gray_c[1]), .SI(w_ptr_gray[0]), 
        .SE(test_se), .CK(wclk), .RN(w_rst), .Q(w_ptr_gray[1]) );
  NOR2BX2M U18 ( .AN(w_en), .B(full_flag), .Y(n18) );
  OAI32X1M U19 ( .A0(n19), .A1(w_addr[2]), .A2(n28), .B0(n27), .B1(n29), .Y(
        w_addr_c[2]) );
  INVX2M U20 ( .A(n17), .Y(n27) );
  OAI32X1M U21 ( .A0(n15), .A1(n28), .A2(n29), .B0(n16), .B1(n12), .Y(
        w_addr_c[3]) );
  NAND3X2M U22 ( .A(n18), .B(n12), .C(w_addr[0]), .Y(n15) );
  NOR2X2M U23 ( .A(n17), .B(n29), .Y(n16) );
  OAI22X1M U24 ( .A0(n20), .A1(n28), .B0(w_addr[1]), .B1(n19), .Y(w_addr_c[1])
         );
  AND4X2M U25 ( .A(n21), .B(n22), .C(n23), .D(n24), .Y(full_flag) );
  XNOR2X2M U26 ( .A(w_ptr_gray[1]), .B(r_ptr_sync[1]), .Y(n21) );
  XNOR2X2M U27 ( .A(w_ptr_gray[0]), .B(r_ptr_sync[0]), .Y(n22) );
  CLKXOR2X2M U28 ( .A(w_ptr_gray[2]), .B(r_ptr_sync[2]), .Y(n23) );
  NAND2X2M U29 ( .A(w_addr[1]), .B(n20), .Y(n17) );
  NAND2X2M U30 ( .A(w_addr[0]), .B(n18), .Y(n19) );
  AND2X2M U31 ( .A(w_addr[0]), .B(n18), .Y(n20) );
  CLKXOR2X2M U32 ( .A(w_addr[0]), .B(n18), .Y(w_addr_c[0]) );
  CLKXOR2X2M U33 ( .A(w_ptr_gray[3]), .B(r_ptr_sync[3]), .Y(n24) );
  INVX2M U34 ( .A(w_addr[1]), .Y(n28) );
  INVX2M U35 ( .A(w_addr[2]), .Y(n29) );
  b2g_WIDTH3_0 b2g_w ( .B(w_addr_c[2:0]), .G(w_ptr_gray_c) );
endmodule


module b2g_WIDTH3_1 ( B, G );
  input [2:0] B;
  output [2:0] G;


  CLKXOR2X2M U1 ( .A(B[2]), .B(B[1]), .Y(G[1]) );
  CLKXOR2X2M U2 ( .A(B[1]), .B(B[0]), .Y(G[0]) );
  BUFX2M U3 ( .A(B[2]), .Y(G[2]) );
endmodule


module async_fifo_read_pointer_DEPTH8_test_1 ( r_rst, rclk, r_en, w_ptr_sync, 
        r_addr, r_ptr_gray, empty_flag, test_si, test_se );
  input [3:0] w_ptr_sync;
  output [3:0] r_addr;
  output [3:0] r_ptr_gray;
  input r_rst, rclk, r_en, test_si, test_se;
  output empty_flag;
  wire   n12, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n1, n2, n11;
  wire   [3:0] r_addr_c;
  wire   [2:0] r_ptr_gray_c;

  SDFFRX1M \r_addr_reg[3]  ( .D(r_addr_c[3]), .SI(r_addr[2]), .SE(test_se), 
        .CK(rclk), .RN(r_rst), .Q(r_addr[3]), .QN(n12) );
  SDFFRQX2M \r_ptr_gray_reg[0]  ( .D(r_ptr_gray_c[0]), .SI(r_addr[3]), .SE(
        test_se), .CK(rclk), .RN(r_rst), .Q(r_ptr_gray[0]) );
  SDFFRQX2M \r_ptr_gray_reg[1]  ( .D(r_ptr_gray_c[1]), .SI(r_ptr_gray[0]), 
        .SE(test_se), .CK(rclk), .RN(r_rst), .Q(r_ptr_gray[1]) );
  SDFFRQX2M \r_ptr_gray_reg[2]  ( .D(r_ptr_gray_c[2]), .SI(r_ptr_gray[1]), 
        .SE(test_se), .CK(rclk), .RN(r_rst), .Q(r_ptr_gray[2]) );
  SDFFRQX2M \r_ptr_gray_reg[3]  ( .D(r_addr_c[3]), .SI(r_ptr_gray[2]), .SE(
        test_se), .CK(rclk), .RN(r_rst), .Q(r_ptr_gray[3]) );
  SDFFRQX2M \r_addr_reg[2]  ( .D(r_addr_c[2]), .SI(r_addr[1]), .SE(test_se), 
        .CK(rclk), .RN(r_rst), .Q(r_addr[2]) );
  SDFFRQX2M \r_addr_reg[0]  ( .D(r_addr_c[0]), .SI(test_si), .SE(test_se), 
        .CK(rclk), .RN(r_rst), .Q(r_addr[0]) );
  SDFFRQX2M \r_addr_reg[1]  ( .D(r_addr_c[1]), .SI(r_addr[0]), .SE(test_se), 
        .CK(rclk), .RN(r_rst), .Q(r_addr[1]) );
  OAI32X1M U11 ( .A0(n19), .A1(r_addr[2]), .A2(n2), .B0(n1), .B1(n11), .Y(
        r_addr_c[2]) );
  INVX2M U12 ( .A(n17), .Y(n1) );
  OAI32X1M U13 ( .A0(n15), .A1(n2), .A2(n11), .B0(n16), .B1(n12), .Y(
        r_addr_c[3]) );
  NAND3X2M U14 ( .A(n18), .B(n12), .C(r_addr[0]), .Y(n15) );
  NOR2X2M U15 ( .A(n17), .B(n11), .Y(n16) );
  OAI22X1M U16 ( .A0(n20), .A1(n2), .B0(r_addr[1]), .B1(n19), .Y(r_addr_c[1])
         );
  NOR2BX2M U17 ( .AN(r_en), .B(empty_flag), .Y(n18) );
  XNOR2X2M U18 ( .A(w_ptr_sync[1]), .B(r_ptr_gray[1]), .Y(n21) );
  NAND2X2M U19 ( .A(r_addr[1]), .B(n20), .Y(n17) );
  AND4X2M U20 ( .A(n21), .B(n22), .C(n23), .D(n24), .Y(empty_flag) );
  XNOR2X2M U21 ( .A(w_ptr_sync[0]), .B(r_ptr_gray[0]), .Y(n22) );
  XNOR2X2M U22 ( .A(w_ptr_sync[2]), .B(r_ptr_gray[2]), .Y(n24) );
  XNOR2X2M U23 ( .A(w_ptr_sync[3]), .B(r_ptr_gray[3]), .Y(n23) );
  NAND2X2M U24 ( .A(r_addr[0]), .B(n18), .Y(n19) );
  INVX2M U25 ( .A(r_addr[1]), .Y(n2) );
  AND2X2M U26 ( .A(r_addr[0]), .B(n18), .Y(n20) );
  CLKXOR2X2M U27 ( .A(r_addr[0]), .B(n18), .Y(r_addr_c[0]) );
  INVX2M U28 ( .A(r_addr[2]), .Y(n11) );
  b2g_WIDTH3_1 b2g_r ( .B(r_addr_c[2:0]), .G(r_ptr_gray_c) );
endmodule


module synchronizer_2ff_WIDTH4_test_1 ( clk, reset, in, out, test_si, test_so, 
        test_se );
  input [3:0] in;
  output [3:0] out;
  input clk, reset, test_si, test_se;
  output test_so;

  wire   [3:0] unstable_out;
  assign test_so = unstable_out[3];

  SDFFRQX2M \out_reg[3]  ( .D(unstable_out[3]), .SI(out[2]), .SE(test_se), 
        .CK(clk), .RN(reset), .Q(out[3]) );
  SDFFRQX2M \out_reg[2]  ( .D(unstable_out[2]), .SI(out[1]), .SE(test_se), 
        .CK(clk), .RN(reset), .Q(out[2]) );
  SDFFRQX2M \out_reg[1]  ( .D(unstable_out[1]), .SI(out[0]), .SE(test_se), 
        .CK(clk), .RN(reset), .Q(out[1]) );
  SDFFRQX2M \out_reg[0]  ( .D(unstable_out[0]), .SI(test_si), .SE(test_se), 
        .CK(clk), .RN(reset), .Q(out[0]) );
  SDFFRQX2M \unstable_out_reg[3]  ( .D(in[3]), .SI(unstable_out[2]), .SE(
        test_se), .CK(clk), .RN(reset), .Q(unstable_out[3]) );
  SDFFRQX2M \unstable_out_reg[2]  ( .D(in[2]), .SI(unstable_out[1]), .SE(
        test_se), .CK(clk), .RN(reset), .Q(unstable_out[2]) );
  SDFFRQX2M \unstable_out_reg[1]  ( .D(in[1]), .SI(unstable_out[0]), .SE(
        test_se), .CK(clk), .RN(reset), .Q(unstable_out[1]) );
  SDFFRQX2M \unstable_out_reg[0]  ( .D(in[0]), .SI(out[3]), .SE(test_se), .CK(
        clk), .RN(reset), .Q(unstable_out[0]) );
endmodule


module synchronizer_2ff_WIDTH4_test_0 ( clk, reset, in, out, test_si, test_so, 
        test_se );
  input [3:0] in;
  output [3:0] out;
  input clk, reset, test_si, test_se;
  output test_so;

  wire   [3:0] unstable_out;
  assign test_so = unstable_out[3];

  SDFFRHQX1M \unstable_out_reg[3]  ( .D(in[3]), .SI(unstable_out[2]), .SE(
        test_se), .CK(clk), .RN(reset), .Q(unstable_out[3]) );
  SDFFRHQX1M \unstable_out_reg[2]  ( .D(in[2]), .SI(unstable_out[1]), .SE(
        test_se), .CK(clk), .RN(reset), .Q(unstable_out[2]) );
  SDFFRHQX1M \unstable_out_reg[1]  ( .D(in[1]), .SI(unstable_out[0]), .SE(
        test_se), .CK(clk), .RN(reset), .Q(unstable_out[1]) );
  SDFFRHQX1M \unstable_out_reg[0]  ( .D(in[0]), .SI(out[3]), .SE(test_se), 
        .CK(clk), .RN(reset), .Q(unstable_out[0]) );
  SDFFRQX1M \out_reg[3]  ( .D(unstable_out[3]), .SI(out[2]), .SE(test_se), 
        .CK(clk), .RN(reset), .Q(out[3]) );
  SDFFRQX1M \out_reg[2]  ( .D(unstable_out[2]), .SI(out[1]), .SE(test_se), 
        .CK(clk), .RN(reset), .Q(out[2]) );
  SDFFRQX1M \out_reg[1]  ( .D(unstable_out[1]), .SI(out[0]), .SE(test_se), 
        .CK(clk), .RN(reset), .Q(out[1]) );
  SDFFRQX1M \out_reg[0]  ( .D(unstable_out[0]), .SI(test_si), .SE(test_se), 
        .CK(clk), .RN(reset), .Q(out[0]) );
endmodule


module ASYNC_FIFO_DATA_WIDTH8_DEPTH8_test_1 ( wclk, rclk, w_rst, r_rst, wr_inc, 
        rd_inc, f_data_in, empty_flag, full_flag, f_data_out, test_si2, 
        test_si1, test_so2, test_so1, test_se );
  input [7:0] f_data_in;
  output [7:0] f_data_out;
  input wclk, rclk, w_rst, r_rst, wr_inc, rd_inc, test_si2, test_si1, test_se;
  output empty_flag, full_flag, test_so2, test_so1;
  wire   _0_net_, n3, n4;
  wire   [3:0] w_addr;
  wire   [3:0] r_addr;
  wire   [3:0] r_ptr_sync;
  wire   [3:0] w_ptr_gray;
  wire   [3:0] w_ptr_sync;
  wire   [3:0] r_ptr_gray;

  NOR2BX2M U1 ( .AN(wr_inc), .B(full_flag), .Y(_0_net_) );
  asyc_fifo_mem_DATA_WIDTH8_DEPTH8_test_1 u_asyc_fifo_mem ( .w_rst(w_rst), 
        .wclk(wclk), .data_in(f_data_in), .w_addr(w_addr), .r_addr(r_addr), 
        .w_en(_0_net_), .data_out(f_data_out), .test_si2(test_si2), .test_si1(
        test_si1), .test_so2(n4), .test_so1(test_so1), .test_se(test_se) );
  async_fifo_write_pointer_DEPTH8_test_1 u_async_fifo_write_pointer ( .w_rst(
        w_rst), .wclk(wclk), .w_en(wr_inc), .r_ptr_sync(r_ptr_sync), .w_addr(
        w_addr), .w_ptr_gray(w_ptr_gray), .full_flag(full_flag), .test_si(
        r_ptr_gray[3]), .test_se(test_se) );
  async_fifo_read_pointer_DEPTH8_test_1 u_async_fifo_read_pointer ( .r_rst(
        r_rst), .rclk(rclk), .r_en(rd_inc), .w_ptr_sync(w_ptr_sync), .r_addr(
        r_addr), .r_ptr_gray(r_ptr_gray), .empty_flag(empty_flag), .test_si(n4), .test_se(test_se) );
  synchronizer_2ff_WIDTH4_test_1 u_w_synchronizer_2ff ( .clk(rclk), .reset(
        r_rst), .in(w_ptr_gray), .out(w_ptr_sync), .test_si(n3), .test_so(
        test_so2), .test_se(test_se) );
  synchronizer_2ff_WIDTH4_test_0 u_r_synchronizer_2ff ( .clk(wclk), .reset(
        w_rst), .in(r_ptr_gray), .out(r_ptr_sync), .test_si(w_ptr_gray[3]), 
        .test_so(n3), .test_se(test_se) );
endmodule


module pulse_gen_test_0 ( clk, rst_n, lvl_sig, pulse_sig, test_si, test_so, 
        test_se );
  input clk, rst_n, lvl_sig, test_si, test_se;
  output pulse_sig, test_so;
  wire   q;
  assign test_so = q;

  SDFFRQX2M q_reg ( .D(lvl_sig), .SI(test_si), .SE(test_se), .CK(clk), .RN(
        rst_n), .Q(q) );
  NOR2BX2M U4 ( .AN(lvl_sig), .B(q), .Y(pulse_sig) );
endmodule


module sys_ctrl_ADDR_WIDTH4_DATA_WIDTH8_FUN_WIDTH4_OUT_WIDTH16_test_1 ( clk, 
        rst_n, payload, payload_valid, addr, wr_en, rd_en, wr_data, rd_data, 
        rd_data_valid, alu_fun, alu_en, alu_out_valid, alu_out, clk_div_en, 
        clk_en, wr_inc, f_data_in, full_flag, test_si, test_so, test_se );
  input [7:0] payload;
  output [3:0] addr;
  output [7:0] wr_data;
  input [7:0] rd_data;
  output [3:0] alu_fun;
  input [15:0] alu_out;
  output [7:0] f_data_in;
  input clk, rst_n, payload_valid, rd_data_valid, alu_out_valid, full_flag,
         test_si, test_se;
  output wr_en, rd_en, alu_en, clk_div_en, clk_en, wr_inc, test_so;
  wire   n9, n10, n11, n12, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64,
         n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n81, n82,
         n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n98,
         n99, n100, n102, n103;
  wire   [3:0] current_state;
  wire   [3:0] next_state;

  SDFFRX1M \paylaod_addr_reg[0]  ( .D(n76), .SI(current_state[3]), .SE(test_se), .CK(clk), .RN(rst_n), .Q(n100), .QN(n12) );
  SDFFRX1M \paylaod_addr_reg[1]  ( .D(n73), .SI(n100), .SE(test_se), .CK(clk), 
        .RN(rst_n), .Q(n99), .QN(n11) );
  SDFFRX1M \paylaod_addr_reg[2]  ( .D(n74), .SI(n99), .SE(test_se), .CK(clk), 
        .RN(rst_n), .Q(n98), .QN(n10) );
  SDFFRX1M \paylaod_addr_reg[3]  ( .D(n75), .SI(n98), .SE(test_se), .CK(clk), 
        .RN(rst_n), .Q(test_so), .QN(n9) );
  SDFFRQX1M \current_state_reg[3]  ( .D(next_state[3]), .SI(current_state[2]), 
        .SE(test_se), .CK(clk), .RN(rst_n), .Q(current_state[3]) );
  SDFFRQX1M \current_state_reg[2]  ( .D(next_state[2]), .SI(current_state[1]), 
        .SE(test_se), .CK(clk), .RN(rst_n), .Q(current_state[2]) );
  SDFFRQX1M \current_state_reg[1]  ( .D(next_state[1]), .SI(current_state[0]), 
        .SE(test_se), .CK(clk), .RN(rst_n), .Q(current_state[1]) );
  SDFFRQX1M \current_state_reg[0]  ( .D(next_state[0]), .SI(test_si), .SE(
        test_se), .CK(clk), .RN(rst_n), .Q(current_state[0]) );
  BUFX2M U13 ( .A(payload[0]), .Y(alu_fun[0]) );
  NOR2X2M U18 ( .A(n70), .B(n11), .Y(addr[1]) );
  NOR3X2M U19 ( .A(n40), .B(current_state[1]), .C(n94), .Y(rd_en) );
  NOR2X2M U20 ( .A(n70), .B(n10), .Y(addr[2]) );
  INVX2M U21 ( .A(n62), .Y(alu_en) );
  NOR2X2M U22 ( .A(n81), .B(n89), .Y(n62) );
  INVX2M U23 ( .A(n40), .Y(n90) );
  INVX2M U24 ( .A(n59), .Y(n92) );
  INVX2M U25 ( .A(n33), .Y(n88) );
  INVX2M U26 ( .A(n60), .Y(n84) );
  NAND2X2M U27 ( .A(n91), .B(n95), .Y(n40) );
  NAND2X2M U28 ( .A(n94), .B(n93), .Y(n59) );
  BUFX2M U29 ( .A(n55), .Y(n81) );
  NOR3X2M U30 ( .A(n95), .B(n59), .C(n91), .Y(n55) );
  INVX2M U31 ( .A(n31), .Y(n89) );
  NAND2X2M U32 ( .A(n49), .B(n93), .Y(n33) );
  INVX2M U33 ( .A(full_flag), .Y(n83) );
  INVX2M U34 ( .A(n32), .Y(n82) );
  NOR2X2M U35 ( .A(n48), .B(n85), .Y(n60) );
  NOR2X2M U36 ( .A(n48), .B(n93), .Y(n37) );
  OAI21X2M U37 ( .A0(n70), .A1(n12), .B0(n35), .Y(addr[0]) );
  AND4X2M U38 ( .A(n71), .B(n72), .C(n48), .D(n95), .Y(n70) );
  OAI21X2M U39 ( .A0(current_state[0]), .A1(n94), .B0(current_state[1]), .Y(
        n72) );
  NAND2X2M U40 ( .A(n90), .B(n93), .Y(n71) );
  NAND3X2M U41 ( .A(n94), .B(n95), .C(current_state[0]), .Y(n48) );
  INVX2M U42 ( .A(current_state[1]), .Y(n93) );
  NAND3X2M U43 ( .A(current_state[2]), .B(n90), .C(current_state[1]), .Y(n35)
         );
  INVX2M U44 ( .A(current_state[2]), .Y(n94) );
  NAND3X2M U45 ( .A(n92), .B(n91), .C(current_state[3]), .Y(n31) );
  INVX2M U46 ( .A(current_state[3]), .Y(n95) );
  INVX2M U47 ( .A(current_state[0]), .Y(n91) );
  AOI211X2M U48 ( .A0(n85), .A1(n37), .B0(n86), .C0(n38), .Y(n41) );
  INVX2M U49 ( .A(n53), .Y(n86) );
  NAND3BX2M U50 ( .AN(n54), .B(payload[4]), .C(payload[0]), .Y(n53) );
  NOR3X2M U51 ( .A(n94), .B(current_state[3]), .C(n91), .Y(n49) );
  OAI22X1M U52 ( .A0(n103), .A1(n29), .B0(n50), .B1(n51), .Y(n38) );
  NAND3X2M U53 ( .A(payload[0]), .B(payload[6]), .C(payload[4]), .Y(n51) );
  NAND4BX1M U54 ( .AN(payload[5]), .B(payload[2]), .C(n52), .D(n87), .Y(n50)
         );
  NOR2X2M U55 ( .A(n70), .B(n9), .Y(addr[3]) );
  OAI211X2M U56 ( .A0(current_state[1]), .A1(n84), .B0(n41), .C0(n42), .Y(
        next_state[1]) );
  AOI21X2M U57 ( .A0(n88), .A1(n103), .B0(n43), .Y(n42) );
  OAI31X1M U58 ( .A0(n93), .A1(n103), .A2(n40), .B0(n35), .Y(n43) );
  AND4X2M U59 ( .A(payload[7]), .B(payload[3]), .C(n58), .D(n103), .Y(n52) );
  NOR2X2M U60 ( .A(n59), .B(n40), .Y(n58) );
  OAI2BB1X2M U61 ( .A0N(alu_out[0]), .A1N(n89), .B0(n69), .Y(f_data_in[0]) );
  AOI22X1M U62 ( .A0(rd_data[0]), .A1(n62), .B0(alu_out[8]), .B1(n81), .Y(n69)
         );
  OAI2BB1X2M U63 ( .A0N(alu_out[1]), .A1N(n89), .B0(n68), .Y(f_data_in[1]) );
  AOI22X1M U64 ( .A0(rd_data[1]), .A1(n62), .B0(alu_out[9]), .B1(n81), .Y(n68)
         );
  OAI2BB1X2M U65 ( .A0N(alu_out[2]), .A1N(n89), .B0(n67), .Y(f_data_in[2]) );
  AOI22X1M U66 ( .A0(rd_data[2]), .A1(n62), .B0(alu_out[10]), .B1(n81), .Y(n67) );
  OAI2BB1X2M U67 ( .A0N(alu_out[3]), .A1N(n89), .B0(n66), .Y(f_data_in[3]) );
  AOI22X1M U68 ( .A0(rd_data[3]), .A1(n62), .B0(alu_out[11]), .B1(n81), .Y(n66) );
  OAI2BB1X2M U69 ( .A0N(alu_out[4]), .A1N(n89), .B0(n65), .Y(f_data_in[4]) );
  AOI22X1M U70 ( .A0(rd_data[4]), .A1(n62), .B0(alu_out[12]), .B1(n81), .Y(n65) );
  OAI2BB1X2M U71 ( .A0N(alu_out[5]), .A1N(n89), .B0(n64), .Y(f_data_in[5]) );
  AOI22X1M U72 ( .A0(rd_data[5]), .A1(n62), .B0(alu_out[13]), .B1(n81), .Y(n64) );
  OAI2BB1X2M U73 ( .A0N(alu_out[6]), .A1N(n89), .B0(n63), .Y(f_data_in[6]) );
  AOI22X1M U74 ( .A0(rd_data[6]), .A1(n62), .B0(alu_out[14]), .B1(n81), .Y(n63) );
  OAI2BB1X2M U75 ( .A0N(alu_out[7]), .A1N(n89), .B0(n61), .Y(f_data_in[7]) );
  AOI22X1M U76 ( .A0(rd_data[7]), .A1(n62), .B0(alu_out[15]), .B1(n81), .Y(n61) );
  NAND4BX1M U77 ( .AN(n44), .B(n45), .C(n41), .D(n46), .Y(next_state[0]) );
  AOI2BB1X2M U78 ( .A0N(n35), .A1N(n85), .B0(n47), .Y(n46) );
  AOI22X1M U79 ( .A0(n81), .A1(n32), .B0(n89), .B1(n82), .Y(n45) );
  OAI31X1M U80 ( .A0(payload[0]), .A1(payload[4]), .A2(n54), .B0(n34), .Y(n44)
         );
  NAND2X2M U81 ( .A(alu_out_valid), .B(n83), .Y(n32) );
  INVX2M U82 ( .A(n103), .Y(n85) );
  NAND4X2M U83 ( .A(payload[5]), .B(payload[1]), .C(n57), .D(n52), .Y(n54) );
  NOR2X2M U84 ( .A(payload[6]), .B(payload[2]), .Y(n57) );
  NAND4X2M U85 ( .A(n33), .B(n34), .C(n35), .D(n36), .Y(next_state[2]) );
  AOI211X2M U86 ( .A0(n37), .A1(n103), .B0(n38), .C0(n39), .Y(n36) );
  AOI21BX2M U87 ( .A0(rd_data_valid), .A1(n83), .B0N(rd_en), .Y(n39) );
  INVX2M U88 ( .A(n27), .Y(wr_inc) );
  AOI33X2M U89 ( .A0(rd_data_valid), .A1(n83), .A2(rd_en), .B0(
        current_state[3]), .B1(n92), .B2(n82), .Y(n27) );
  NOR2X2M U90 ( .A(n28), .B(n85), .Y(wr_en) );
  AOI21X2M U91 ( .A0(current_state[1]), .A1(n90), .B0(n88), .Y(n28) );
  OAI22X1M U92 ( .A0(n87), .A1(n84), .B0(n60), .B1(n11), .Y(n73) );
  OAI211X2M U93 ( .A0(n85), .A1(n29), .B0(n30), .C0(n31), .Y(next_state[3]) );
  NAND3X2M U94 ( .A(n92), .B(n32), .C(current_state[3]), .Y(n30) );
  NAND2X2M U95 ( .A(n49), .B(current_state[1]), .Y(n29) );
  AOI21X2M U96 ( .A0(n33), .A1(n48), .B0(n103), .Y(n47) );
  NAND4X2M U97 ( .A(payload[2]), .B(n52), .C(payload[6]), .D(n56), .Y(n34) );
  NOR4X1M U98 ( .A(payload[5]), .B(payload[4]), .C(payload[1]), .D(payload[0]), 
        .Y(n56) );
  OAI2BB2X1M U99 ( .B0(n60), .B1(n9), .A0N(payload[3]), .A1N(n60), .Y(n75) );
  OAI2BB2X1M U100 ( .B0(n60), .B1(n10), .A0N(payload[2]), .A1N(n60), .Y(n74)
         );
  OAI2BB2X1M U101 ( .B0(n60), .B1(n12), .A0N(payload[0]), .A1N(n60), .Y(n76)
         );
  INVX2M U102 ( .A(payload[1]), .Y(n87) );
  NAND2X2M U103 ( .A(n29), .B(n62), .Y(clk_en) );
  BUFX2M U104 ( .A(payload[3]), .Y(wr_data[3]) );
  BUFX2M U105 ( .A(payload[3]), .Y(alu_fun[3]) );
  BUFX2M U106 ( .A(payload[2]), .Y(wr_data[2]) );
  BUFX2M U107 ( .A(payload[2]), .Y(alu_fun[2]) );
  BUFX2M U108 ( .A(payload[1]), .Y(wr_data[1]) );
  BUFX2M U109 ( .A(payload[1]), .Y(alu_fun[1]) );
  BUFX2M U110 ( .A(payload[0]), .Y(wr_data[0]) );
  BUFX2M U111 ( .A(payload[7]), .Y(wr_data[7]) );
  BUFX2M U112 ( .A(payload[6]), .Y(wr_data[6]) );
  BUFX2M U113 ( .A(payload[5]), .Y(wr_data[5]) );
  BUFX2M U114 ( .A(payload[4]), .Y(wr_data[4]) );
  INVXLM U115 ( .A(payload_valid), .Y(n102) );
  INVXLM U116 ( .A(n102), .Y(n103) );
  INVX2M U3 ( .A(1'b0), .Y(clk_div_en) );
endmodule


module bit_sync_NUM_STAGES2_BUS_WIDTH1_test_2 ( clk, rst_n, async, sync, 
        test_si, test_se );
  input [0:0] async;
  output [0:0] sync;
  input clk, rst_n, test_si, test_se;
  wire   \ff[0] ;

  SDFFRHQX1M \ff_reg[0]  ( .D(async[0]), .SI(test_si), .SE(test_se), .CK(clk), 
        .RN(rst_n), .Q(\ff[0] ) );
  SDFFRQX1M \ff_reg[1]  ( .D(\ff[0] ), .SI(\ff[0] ), .SE(test_se), .CK(clk), 
        .RN(rst_n), .Q(sync[0]) );
endmodule


module pulse_gen_test_1 ( clk, rst_n, lvl_sig, pulse_sig, test_si, test_so, 
        test_se );
  input clk, rst_n, lvl_sig, test_si, test_se;
  output pulse_sig, test_so;
  wire   q;
  assign test_so = q;

  SDFFRQX1M q_reg ( .D(lvl_sig), .SI(test_si), .SE(test_se), .CK(clk), .RN(
        rst_n), .Q(q) );
  NOR2BX2M U5 ( .AN(lvl_sig), .B(q), .Y(pulse_sig) );
endmodule


module data_sync_BUS_WIDTH8_test_1 ( clk, rst_n, bus_enable, unsync_bus, 
        sync_bus, enable_pulse, test_si2, test_si1, test_se );
  input [7:0] unsync_bus;
  output [7:0] sync_bus;
  input clk, rst_n, bus_enable, test_si2, test_si1, test_se;
  output enable_pulse;
  wire   bus_enable_sync, bus_enable_sync_pulse, N4, N5, N6, N7, N8, N9, N10,
         N11, n19, n21;

  SDFFRQX1M \sync_bus_reg[7]  ( .D(N11), .SI(sync_bus[6]), .SE(test_se), .CK(
        clk), .RN(rst_n), .Q(sync_bus[7]) );
  SDFFRQX1M \sync_bus_reg[6]  ( .D(N10), .SI(sync_bus[5]), .SE(test_se), .CK(
        clk), .RN(rst_n), .Q(sync_bus[6]) );
  SDFFRQX1M \sync_bus_reg[5]  ( .D(N9), .SI(sync_bus[4]), .SE(test_se), .CK(
        clk), .RN(rst_n), .Q(sync_bus[5]) );
  SDFFRQX1M \sync_bus_reg[4]  ( .D(N8), .SI(sync_bus[3]), .SE(test_se), .CK(
        clk), .RN(rst_n), .Q(sync_bus[4]) );
  SDFFRQX1M \sync_bus_reg[3]  ( .D(N7), .SI(sync_bus[2]), .SE(test_se), .CK(
        clk), .RN(rst_n), .Q(sync_bus[3]) );
  SDFFRQX1M \sync_bus_reg[2]  ( .D(N6), .SI(sync_bus[1]), .SE(test_se), .CK(
        clk), .RN(rst_n), .Q(sync_bus[2]) );
  SDFFRQX1M \sync_bus_reg[1]  ( .D(N5), .SI(sync_bus[0]), .SE(test_se), .CK(
        clk), .RN(rst_n), .Q(sync_bus[1]) );
  SDFFRQX1M \sync_bus_reg[0]  ( .D(N4), .SI(n21), .SE(test_se), .CK(clk), .RN(
        rst_n), .Q(sync_bus[0]) );
  INVX2M U21 ( .A(bus_enable_sync_pulse), .Y(n19) );
  AO22X1M U22 ( .A0(unsync_bus[0]), .A1(bus_enable_sync_pulse), .B0(
        sync_bus[0]), .B1(n19), .Y(N4) );
  AO22X1M U23 ( .A0(unsync_bus[1]), .A1(bus_enable_sync_pulse), .B0(
        sync_bus[1]), .B1(n19), .Y(N5) );
  AO22X1M U24 ( .A0(unsync_bus[2]), .A1(bus_enable_sync_pulse), .B0(
        sync_bus[2]), .B1(n19), .Y(N6) );
  AO22X1M U25 ( .A0(unsync_bus[3]), .A1(bus_enable_sync_pulse), .B0(
        sync_bus[3]), .B1(n19), .Y(N7) );
  AO22X1M U26 ( .A0(unsync_bus[4]), .A1(bus_enable_sync_pulse), .B0(
        sync_bus[4]), .B1(n19), .Y(N8) );
  AO22X1M U27 ( .A0(unsync_bus[5]), .A1(bus_enable_sync_pulse), .B0(
        sync_bus[5]), .B1(n19), .Y(N9) );
  AO22X1M U28 ( .A0(unsync_bus[6]), .A1(bus_enable_sync_pulse), .B0(
        sync_bus[6]), .B1(n19), .Y(N10) );
  AO22X1M U29 ( .A0(unsync_bus[7]), .A1(bus_enable_sync_pulse), .B0(
        sync_bus[7]), .B1(n19), .Y(N11) );
  bit_sync_NUM_STAGES2_BUS_WIDTH1_test_2 bit_sync_inst ( .clk(clk), .rst_n(
        rst_n), .async(bus_enable), .sync(bus_enable_sync), .test_si(test_si1), 
        .test_se(test_se) );
  pulse_gen_test_1 pulse_gen_inst ( .clk(clk), .rst_n(rst_n), .lvl_sig(
        bus_enable_sync), .pulse_sig(bus_enable_sync_pulse), .test_si(test_si2), .test_so(n21), .test_se(test_se) );
  SDFFRHQX1M enable_pulse_reg ( .D(bus_enable_sync_pulse), .SI(bus_enable_sync), .SE(test_se), .CK(clk), .RN(rst_n), .Q(enable_pulse) );
endmodule


module SYS_TOP ( REF_CLK, UART_CLK, RST_N, UART_RX_IN, UART_TX_OUT, 
        parity_error, framing_error, scan_clk, scan_rst, test_mode, SE, SI, SO
 );
  input [3:0] SI;
  output [3:0] SO;
  input REF_CLK, UART_CLK, RST_N, UART_RX_IN, scan_clk, scan_rst, test_mode,
         SE;
  output UART_TX_OUT, parity_error, framing_error;
  wire   N0, scan_func_rst, scan_func_ref_clk, scan_func_uart_clk,
         d0_sync_rst_n, d1_sync_rst_n, d0_scan_func_rst, d1_scan_func_rst,
         tx_clk, rx_clk, scan_func_tx_clk, scan_func_rx_clk, parity_type,
         parity_enable, tx_busy, rx_data_valid, _0_net_, gated_clk, clk_en,
         alu_out_valid, alu_en, rd_data_valid, rd_en, wr_en, full_flag,
         empty_flag, rd_inc, wr_inc, payload_valid, n1, n3, n4, n5, n6, n10,
         n13, n15, n18, n19, n20, n21, n22, n23, n24, n25, n26;
  wire   [7:0] rx_div_ratio;
  wire   [5:0] prescale;
  wire   [7:0] tx_div_ratio;
  wire   [7:0] tx_p_data;
  wire   [7:0] rx_p_data;
  wire   [15:0] alu_out;
  wire   [3:0] alu_fun;
  wire   [7:0] op_b;
  wire   [7:0] op_a;
  wire   [7:0] rd_data;
  wire   [7:0] wr_data;
  wire   [3:0] addr;
  wire   [7:0] f_data_in;
  wire   [7:0] payload;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1;
  assign N0 = test_mode;

  MX2X6M U10 ( .A(REF_CLK), .B(scan_clk), .S0(N0), .Y(scan_func_ref_clk) );
  INVX2M U11 ( .A(empty_flag), .Y(n1) );
  OR2X2M U12 ( .A(clk_en), .B(N0), .Y(_0_net_) );
  MX2X6M U13 ( .A(d1_sync_rst_n), .B(scan_rst), .S0(N0), .Y(d1_scan_func_rst)
         );
  MX2X2M U14 ( .A(RST_N), .B(scan_rst), .S0(N0), .Y(scan_func_rst) );
  MX2X2M U15 ( .A(tx_clk), .B(scan_clk), .S0(N0), .Y(scan_func_tx_clk) );
  MX2X2M U16 ( .A(rx_clk), .B(scan_clk), .S0(N0), .Y(scan_func_rx_clk) );
  MX2X2M U17 ( .A(UART_CLK), .B(scan_clk), .S0(N0), .Y(scan_func_uart_clk) );
  MX2X8M U18 ( .A(d0_sync_rst_n), .B(scan_rst), .S0(N0), .Y(d0_scan_func_rst)
         );
  DLY1X1M U22 ( .A(payload_valid), .Y(n15) );
  DLY1X1M U25 ( .A(n25), .Y(n18) );
  DLY1X1M U26 ( .A(n24), .Y(n19) );
  INVXLM U27 ( .A(n26), .Y(n20) );
  INVXLM U28 ( .A(n20), .Y(n21) );
  INVXLM U29 ( .A(n20), .Y(n22) );
  INVXLM U30 ( .A(SE), .Y(n23) );
  INVXLM U31 ( .A(n23), .Y(n24) );
  INVXLM U32 ( .A(n23), .Y(n25) );
  INVXLM U33 ( .A(n23), .Y(n26) );
  rst_sync_test_0 d0_rst_sync_inst ( .rst(scan_func_rst), .clk(
        scan_func_ref_clk), .sync_rst(d0_sync_rst_n), .test_si(rd_data_valid), 
        .test_se(n24) );
  rst_sync_test_1 d1_rst_sync_inst ( .rst(scan_func_rst), .clk(
        scan_func_uart_clk), .sync_rst(d1_sync_rst_n), .test_si(d0_sync_rst_n), 
        .test_se(n26) );
  div_mux div_mux_inst ( .tx_div_ratio(tx_div_ratio), .prescale(prescale), 
        .rx_div_ratio({SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        rx_div_ratio[5:0]}) );
  clk_div_RATIO_WIDTH8_test_1 tx_clk_div_inst ( .i_ref_clk(scan_func_uart_clk), 
        .i_rst_n(d1_scan_func_rst), .i_clk_en(1'b1), .i_div_ratio(tx_div_ratio), .o_div_clk(tx_clk), .test_si(n4), .test_so(n3), .test_se(n24) );
  clk_div_RATIO_WIDTH8_test_0 rx_clk_div_inst ( .i_ref_clk(scan_func_uart_clk), 
        .i_rst_n(d1_scan_func_rst), .i_clk_en(1'b1), .i_div_ratio({1'b0, 1'b0, 
        rx_div_ratio[5:0]}), .o_div_clk(rx_clk), .test_si(n6), .test_so(n5), 
        .test_se(n26) );
  uart_DATA_WIDTH8_test_1 uart_inst ( .rst_n(d1_scan_func_rst), .tx_clk(
        scan_func_tx_clk), .rx_clk(scan_func_rx_clk), .rx_in(UART_RX_IN), 
        .rx_p_data(rx_p_data), .rx_data_valid(rx_data_valid), .tx_p_data(
        tx_p_data), .tx_data_valid(n1), .tx_out(UART_TX_OUT), .tx_busy(tx_busy), .prescale(prescale), .parity_enable(parity_enable), .parity_type(parity_type), .parity_error(parity_error), .framing_error(framing_error), .test_si(n3), 
        .test_se(n19) );
  clk_gate_USE_ICG1 clk_gate_inst ( .clk(scan_func_ref_clk), .clk_en(_0_net_), 
        .gated_clk(gated_clk) );
  ALU_DATA_WIDTH8_FUN_WIDTH4_OUT_WIDTH16_test_1 ALU_inst ( .clk(gated_clk), 
        .rst_n(d0_scan_func_rst), .op_a(op_a), .op_b(op_b), .alu_fun(alu_fun), 
        .alu_en(alu_en), .alu_out_valid(alu_out_valid), .alu_out(alu_out), 
        .test_si(SI[3]), .test_so(n13), .test_se(n18) );
  RegFile_ADDR_WIDTH4_DATA_WIDTH8_test_1 RegFile_inst ( .clk(scan_func_ref_clk), .rst_n(d0_scan_func_rst), .addr(addr), .wr_en(wr_en), .rd_en(rd_en), 
        .wr_data(wr_data), .rd_data(rd_data), .rd_data_valid(rd_data_valid), 
        .reg_0(op_a), .reg_1(op_b), .reg_2({prescale, parity_type, 
        parity_enable}), .reg_3(tx_div_ratio), .test_si2(SI[1]), .test_si1(n10), .test_so1(SO[2]), .test_se(SE) );
  ASYNC_FIFO_DATA_WIDTH8_DEPTH8_test_1 ASYNC_FIFO_inst ( .wclk(
        scan_func_ref_clk), .rclk(scan_func_tx_clk), .w_rst(d0_scan_func_rst), 
        .r_rst(d1_scan_func_rst), .wr_inc(wr_inc), .rd_inc(rd_inc), 
        .f_data_in(f_data_in), .empty_flag(empty_flag), .full_flag(full_flag), 
        .f_data_out(tx_p_data), .test_si2(SI[2]), .test_si1(n13), .test_so2(
        n10), .test_so1(SO[3]), .test_se(SE) );
  pulse_gen_test_0 pulse_gen_inst ( .clk(scan_func_tx_clk), .rst_n(
        d1_scan_func_rst), .lvl_sig(tx_busy), .pulse_sig(rd_inc), .test_si(
        payload[7]), .test_so(n6), .test_se(n21) );
  sys_ctrl_ADDR_WIDTH4_DATA_WIDTH8_FUN_WIDTH4_OUT_WIDTH16_test_1 sys_ctrl_inst ( 
        .clk(scan_func_ref_clk), .rst_n(d0_scan_func_rst), .payload(payload), 
        .payload_valid(n15), .addr(addr), .wr_en(wr_en), .rd_en(rd_en), 
        .wr_data(wr_data), .rd_data(rd_data), .rd_data_valid(rd_data_valid), 
        .alu_fun(alu_fun), .alu_en(alu_en), .alu_out_valid(alu_out_valid), 
        .alu_out(alu_out), .clk_en(clk_en), .wr_inc(wr_inc), .f_data_in(
        f_data_in), .full_flag(full_flag), .test_si(n5), .test_so(n4), 
        .test_se(n22) );
  data_sync_BUS_WIDTH8_test_1 data_sync_inst ( .clk(scan_func_ref_clk), 
        .rst_n(d0_scan_func_rst), .bus_enable(rx_data_valid), .unsync_bus(
        rx_p_data), .sync_bus(payload), .enable_pulse(payload_valid), 
        .test_si2(SI[0]), .test_si1(d1_sync_rst_n), .test_se(n21) );
  BUFX2M U23 ( .A(framing_error), .Y(SO[0]) );
  BUFX2M U24 ( .A(payload_valid), .Y(SO[1]) );
endmodule

