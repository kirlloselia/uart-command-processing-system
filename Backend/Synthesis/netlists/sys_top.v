/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06-SP1
// Date      : Tue Oct  6 21:00:48 2026
/////////////////////////////////////////////////////////////


module bit_sync_NUM_STAGES2_BUS_WIDTH1_1 ( clk, rst_n, async, sync );
  input [0:0] async;
  output [0:0] sync;
  input clk, rst_n;
  wire   \ff[0] ;

  DFFRQX2M \ff_reg[1]  ( .D(\ff[0] ), .CK(clk), .RN(rst_n), .Q(sync[0]) );
  DFFRQX2M \ff_reg[0]  ( .D(async[0]), .CK(clk), .RN(rst_n), .Q(\ff[0] ) );
endmodule


module rst_sync_0 ( rst, clk, sync_rst );
  input rst, clk;
  output sync_rst;
  wire   n2;

  bit_sync_NUM_STAGES2_BUS_WIDTH1_1 \genblk1.bit_sync_inst  ( .clk(clk), 
        .rst_n(rst), .async(1'b1), .sync(n2) );
  BUFX2M U2 ( .A(n2), .Y(sync_rst) );
endmodule


module bit_sync_NUM_STAGES2_BUS_WIDTH1_2 ( clk, rst_n, async, sync );
  input [0:0] async;
  output [0:0] sync;
  input clk, rst_n;
  wire   \ff[0] ;

  DFFRQX2M \ff_reg[1]  ( .D(\ff[0] ), .CK(clk), .RN(rst_n), .Q(sync[0]) );
  DFFRQX2M \ff_reg[0]  ( .D(async[0]), .CK(clk), .RN(rst_n), .Q(\ff[0] ) );
endmodule


module rst_sync_1 ( rst, clk, sync_rst );
  input rst, clk;
  output sync_rst;
  wire   n2;

  bit_sync_NUM_STAGES2_BUS_WIDTH1_2 \genblk1.bit_sync_inst  ( .clk(clk), 
        .rst_n(rst), .async(1'b1), .sync(n2) );
  BUFX2M U2 ( .A(n2), .Y(sync_rst) );
endmodule


module div_mux ( tx_div_ratio, prescale, rx_div_ratio );
  input [7:0] tx_div_ratio;
  input [5:0] prescale;
  output [7:0] rx_div_ratio;
  wire   n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19,
         n20, n21, n22, n23;

  INVX2M U3 ( .A(1'b1), .Y(rx_div_ratio[7]) );
  INVX2M U5 ( .A(1'b1), .Y(rx_div_ratio[6]) );
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
  INVX2M U29 ( .A(prescale[5]), .Y(n21) );
  INVX2M U30 ( .A(prescale[3]), .Y(n22) );
  INVX2M U31 ( .A(prescale[2]), .Y(n23) );
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


module clk_div_RATIO_WIDTH8_0 ( i_ref_clk, i_rst_n, i_clk_en, i_div_ratio, 
        o_div_clk );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst_n, i_clk_en;
  output o_div_clk;
  wire   N0, div_clk, odd, N8, N9, N10, N11, N12, N13, N14, N15, N16, N19, N24,
         N25, N26, N27, N28, N29, N30, N43, N44, N45, N46, N47, N48, N49, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n1, n2, n3, n4, n5,
         n6, n7, n8, n9, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36, n37, n38;
  wire   [6:0] counter;

  clk_div_RATIO_WIDTH8_0_DW01_inc_0 add_46 ( .A(counter), .SUM({N30, N29, N28, 
        N27, N26, N25, N24}) );
  DFFRQX2M div_clk_reg ( .D(n20), .CK(i_ref_clk), .RN(i_rst_n), .Q(div_clk) );
  DFFRQX2M \counter_reg[6]  ( .D(N49), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[6]) );
  DFFSQX2M odd_reg ( .D(n19), .CK(i_ref_clk), .SN(i_rst_n), .Q(odd) );
  DFFRQX2M \counter_reg[0]  ( .D(N43), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[0]) );
  DFFRQX2M \counter_reg[3]  ( .D(N46), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[3]) );
  DFFRQX2M \counter_reg[2]  ( .D(N45), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[2]) );
  DFFRQX2M \counter_reg[5]  ( .D(N48), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[5]) );
  DFFRQX2M \counter_reg[4]  ( .D(N47), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[4]) );
  DFFRQX2M \counter_reg[1]  ( .D(N44), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[1]) );
  MX2X2M U3 ( .A(i_ref_clk), .B(div_clk), .S0(N0), .Y(o_div_clk) );
  NAND2X2M U4 ( .A(n14), .B(N0), .Y(n15) );
  NOR2BX2M U5 ( .AN(N25), .B(n15), .Y(N44) );
  NOR2BX2M U6 ( .AN(N26), .B(n15), .Y(N45) );
  NOR2BX2M U7 ( .AN(N27), .B(n15), .Y(N46) );
  NOR2BX2M U8 ( .AN(N28), .B(n15), .Y(N47) );
  NOR2BX2M U9 ( .AN(N29), .B(n15), .Y(N48) );
  INVX2M U10 ( .A(n12), .Y(N0) );
  AOI2B1X1M U11 ( .A1N(i_div_ratio[0]), .A0(N16), .B0(n38), .Y(n14) );
  INVX2M U12 ( .A(n11), .Y(n38) );
  NAND2X2M U13 ( .A(i_div_ratio[0]), .B(n16), .Y(n11) );
  AO2B2X2M U14 ( .B0(N16), .B1(odd), .A0(N19), .A1N(odd), .Y(n16) );
  NOR2BX2M U15 ( .AN(N30), .B(n15), .Y(N49) );
  NOR2BX2M U16 ( .AN(N24), .B(n15), .Y(N43) );
  CLKXOR2X2M U17 ( .A(div_clk), .B(n13), .Y(n20) );
  NOR2X2M U18 ( .A(n14), .B(n12), .Y(n13) );
  CLKXOR2X2M U19 ( .A(odd), .B(n10), .Y(n19) );
  NOR2X2M U20 ( .A(n11), .B(n12), .Y(n10) );
  OAI2BB1X2M U21 ( .A0N(n17), .A1N(n18), .B0(i_clk_en), .Y(n12) );
  NOR3X2M U22 ( .A(i_div_ratio[1]), .B(i_div_ratio[3]), .C(i_div_ratio[2]), 
        .Y(n17) );
  NOR4X1M U23 ( .A(i_div_ratio[7]), .B(i_div_ratio[6]), .C(i_div_ratio[5]), 
        .D(i_div_ratio[4]), .Y(n18) );
  OR2X2M U24 ( .A(i_div_ratio[2]), .B(i_div_ratio[1]), .Y(n1) );
  CLKINVX1M U25 ( .A(i_div_ratio[1]), .Y(N8) );
  OAI2BB1X1M U26 ( .A0N(i_div_ratio[1]), .A1N(i_div_ratio[2]), .B0(n1), .Y(N9)
         );
  OR2X1M U27 ( .A(n1), .B(i_div_ratio[3]), .Y(n2) );
  OAI2BB1X1M U28 ( .A0N(n1), .A1N(i_div_ratio[3]), .B0(n2), .Y(N10) );
  OR2X1M U29 ( .A(n2), .B(i_div_ratio[4]), .Y(n3) );
  OAI2BB1X1M U30 ( .A0N(n2), .A1N(i_div_ratio[4]), .B0(n3), .Y(N11) );
  OR2X1M U31 ( .A(n3), .B(i_div_ratio[5]), .Y(n4) );
  OAI2BB1X1M U32 ( .A0N(n3), .A1N(i_div_ratio[5]), .B0(n4), .Y(N12) );
  XNOR2X1M U33 ( .A(i_div_ratio[6]), .B(n4), .Y(N13) );
  NOR3X1M U34 ( .A(i_div_ratio[6]), .B(i_div_ratio[7]), .C(n4), .Y(N15) );
  OAI21X1M U35 ( .A0(i_div_ratio[6]), .A1(n4), .B0(i_div_ratio[7]), .Y(n5) );
  NAND2BX1M U36 ( .AN(N15), .B(n5), .Y(N14) );
  NOR2BX1M U37 ( .AN(N8), .B(counter[0]), .Y(n6) );
  OAI2B2X1M U38 ( .A1N(counter[1]), .A0(n6), .B0(N9), .B1(n6), .Y(n21) );
  XNOR2X1M U39 ( .A(N10), .B(counter[2]), .Y(n9) );
  NOR2BX1M U40 ( .AN(counter[0]), .B(N8), .Y(n7) );
  OAI2B2X1M U41 ( .A1N(N9), .A0(n7), .B0(counter[1]), .B1(n7), .Y(n8) );
  NAND4BX1M U42 ( .AN(N15), .B(n21), .C(n9), .D(n8), .Y(n27) );
  XNOR2X1M U43 ( .A(N14), .B(counter[6]), .Y(n25) );
  XNOR2X1M U44 ( .A(N13), .B(counter[5]), .Y(n24) );
  XNOR2X1M U45 ( .A(N12), .B(counter[4]), .Y(n23) );
  XNOR2X1M U46 ( .A(N11), .B(counter[3]), .Y(n22) );
  NAND4X1M U47 ( .A(n25), .B(n24), .C(n23), .D(n22), .Y(n26) );
  NOR2X1M U48 ( .A(n27), .B(n26), .Y(N16) );
  XNOR2X1M U49 ( .A(i_div_ratio[4]), .B(counter[3]), .Y(n33) );
  XNOR2X1M U50 ( .A(i_div_ratio[3]), .B(counter[2]), .Y(n32) );
  NOR2BX1M U51 ( .AN(i_div_ratio[1]), .B(counter[0]), .Y(n28) );
  OAI2B2X1M U52 ( .A1N(counter[1]), .A0(n28), .B0(i_div_ratio[2]), .B1(n28), 
        .Y(n31) );
  NOR2BX1M U53 ( .AN(counter[0]), .B(i_div_ratio[1]), .Y(n29) );
  OAI2B2X1M U54 ( .A1N(i_div_ratio[2]), .A0(n29), .B0(counter[1]), .B1(n29), 
        .Y(n30) );
  NAND4X1M U55 ( .A(n33), .B(n32), .C(n31), .D(n30), .Y(n37) );
  CLKXOR2X2M U56 ( .A(i_div_ratio[7]), .B(counter[6]), .Y(n36) );
  CLKXOR2X2M U57 ( .A(i_div_ratio[5]), .B(counter[4]), .Y(n35) );
  CLKXOR2X2M U58 ( .A(i_div_ratio[6]), .B(counter[5]), .Y(n34) );
  NOR4X1M U59 ( .A(n37), .B(n36), .C(n35), .D(n34), .Y(N19) );
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


module clk_div_RATIO_WIDTH8_1 ( i_ref_clk, i_rst_n, i_clk_en, i_div_ratio, 
        o_div_clk );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst_n, i_clk_en;
  output o_div_clk;
  wire   N0, div_clk, odd, N8, N9, N10, N11, N12, N13, N14, N15, N16, N19, N24,
         N25, N26, N27, N28, N29, N30, N43, N44, N45, N46, N47, N48, N49, n1,
         n2, n3, n4, n5, n6, n7, n8, n9, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49;
  wire   [6:0] counter;

  clk_div_RATIO_WIDTH8_1_DW01_inc_0 add_46 ( .A(counter), .SUM({N30, N29, N28, 
        N27, N26, N25, N24}) );
  DFFRQX2M div_clk_reg ( .D(n39), .CK(i_ref_clk), .RN(i_rst_n), .Q(div_clk) );
  DFFSQX2M odd_reg ( .D(n40), .CK(i_ref_clk), .SN(i_rst_n), .Q(odd) );
  DFFRQX2M \counter_reg[6]  ( .D(N49), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[6]) );
  DFFRQX2M \counter_reg[0]  ( .D(N43), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[0]) );
  DFFRQX2M \counter_reg[3]  ( .D(N46), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[3]) );
  DFFRQX2M \counter_reg[2]  ( .D(N45), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[2]) );
  DFFRQX2M \counter_reg[5]  ( .D(N48), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[5]) );
  DFFRQX2M \counter_reg[4]  ( .D(N47), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[4]) );
  DFFRQX2M \counter_reg[1]  ( .D(N44), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[1]) );
  MX2X2M U3 ( .A(i_ref_clk), .B(div_clk), .S0(N0), .Y(o_div_clk) );
  NAND2X2M U4 ( .A(n45), .B(N0), .Y(n44) );
  NOR2BX2M U5 ( .AN(N25), .B(n44), .Y(N44) );
  NOR2BX2M U6 ( .AN(N26), .B(n44), .Y(N45) );
  NOR2BX2M U7 ( .AN(N27), .B(n44), .Y(N46) );
  NOR2BX2M U8 ( .AN(N28), .B(n44), .Y(N47) );
  NOR2BX2M U9 ( .AN(N29), .B(n44), .Y(N48) );
  AOI2B1X1M U10 ( .A1N(i_div_ratio[0]), .A0(N16), .B0(n38), .Y(n45) );
  INVX2M U11 ( .A(n48), .Y(n38) );
  OR2X2M U12 ( .A(i_div_ratio[2]), .B(i_div_ratio[1]), .Y(n1) );
  INVX2M U13 ( .A(n47), .Y(N0) );
  NAND2X2M U14 ( .A(i_div_ratio[0]), .B(n43), .Y(n48) );
  AO2B2X2M U15 ( .B0(N16), .B1(odd), .A0(N19), .A1N(odd), .Y(n43) );
  NOR2BX2M U16 ( .AN(N30), .B(n44), .Y(N49) );
  NOR2BX2M U17 ( .AN(N24), .B(n44), .Y(N43) );
  CLKXOR2X2M U18 ( .A(div_clk), .B(n46), .Y(n39) );
  NOR2X2M U19 ( .A(n45), .B(n47), .Y(n46) );
  CLKXOR2X2M U20 ( .A(odd), .B(n49), .Y(n40) );
  NOR2X2M U21 ( .A(n48), .B(n47), .Y(n49) );
  OAI2BB1X2M U22 ( .A0N(n42), .A1N(n41), .B0(i_clk_en), .Y(n47) );
  NOR3X2M U23 ( .A(i_div_ratio[1]), .B(i_div_ratio[3]), .C(i_div_ratio[2]), 
        .Y(n42) );
  NOR4X1M U24 ( .A(i_div_ratio[7]), .B(i_div_ratio[6]), .C(i_div_ratio[5]), 
        .D(i_div_ratio[4]), .Y(n41) );
  CLKINVX1M U25 ( .A(i_div_ratio[1]), .Y(N8) );
  OAI2BB1X1M U26 ( .A0N(i_div_ratio[1]), .A1N(i_div_ratio[2]), .B0(n1), .Y(N9)
         );
  OR2X1M U27 ( .A(n1), .B(i_div_ratio[3]), .Y(n2) );
  OAI2BB1X1M U28 ( .A0N(n1), .A1N(i_div_ratio[3]), .B0(n2), .Y(N10) );
  OR2X1M U29 ( .A(n2), .B(i_div_ratio[4]), .Y(n3) );
  OAI2BB1X1M U30 ( .A0N(n2), .A1N(i_div_ratio[4]), .B0(n3), .Y(N11) );
  OR2X1M U31 ( .A(n3), .B(i_div_ratio[5]), .Y(n4) );
  OAI2BB1X1M U32 ( .A0N(n3), .A1N(i_div_ratio[5]), .B0(n4), .Y(N12) );
  XNOR2X1M U33 ( .A(i_div_ratio[6]), .B(n4), .Y(N13) );
  NOR3X1M U34 ( .A(i_div_ratio[6]), .B(i_div_ratio[7]), .C(n4), .Y(N15) );
  OAI21X1M U35 ( .A0(i_div_ratio[6]), .A1(n4), .B0(i_div_ratio[7]), .Y(n5) );
  NAND2BX1M U36 ( .AN(N15), .B(n5), .Y(N14) );
  NOR2BX1M U37 ( .AN(N8), .B(counter[0]), .Y(n6) );
  OAI2B2X1M U38 ( .A1N(counter[1]), .A0(n6), .B0(N9), .B1(n6), .Y(n21) );
  XNOR2X1M U39 ( .A(N10), .B(counter[2]), .Y(n9) );
  NOR2BX1M U40 ( .AN(counter[0]), .B(N8), .Y(n7) );
  OAI2B2X1M U41 ( .A1N(N9), .A0(n7), .B0(counter[1]), .B1(n7), .Y(n8) );
  NAND4BX1M U42 ( .AN(N15), .B(n21), .C(n9), .D(n8), .Y(n27) );
  XNOR2X1M U43 ( .A(N14), .B(counter[6]), .Y(n25) );
  XNOR2X1M U44 ( .A(N13), .B(counter[5]), .Y(n24) );
  XNOR2X1M U45 ( .A(N12), .B(counter[4]), .Y(n23) );
  XNOR2X1M U46 ( .A(N11), .B(counter[3]), .Y(n22) );
  NAND4X1M U47 ( .A(n25), .B(n24), .C(n23), .D(n22), .Y(n26) );
  NOR2X1M U48 ( .A(n27), .B(n26), .Y(N16) );
  XNOR2X1M U49 ( .A(i_div_ratio[4]), .B(counter[3]), .Y(n33) );
  XNOR2X1M U50 ( .A(i_div_ratio[3]), .B(counter[2]), .Y(n32) );
  NOR2BX1M U51 ( .AN(i_div_ratio[1]), .B(counter[0]), .Y(n28) );
  OAI2B2X1M U52 ( .A1N(counter[1]), .A0(n28), .B0(i_div_ratio[2]), .B1(n28), 
        .Y(n31) );
  NOR2BX1M U53 ( .AN(counter[0]), .B(i_div_ratio[1]), .Y(n29) );
  OAI2B2X1M U54 ( .A1N(i_div_ratio[2]), .A0(n29), .B0(counter[1]), .B1(n29), 
        .Y(n30) );
  NAND4X1M U55 ( .A(n33), .B(n32), .C(n31), .D(n30), .Y(n37) );
  CLKXOR2X2M U56 ( .A(i_div_ratio[7]), .B(counter[6]), .Y(n36) );
  CLKXOR2X2M U57 ( .A(i_div_ratio[5]), .B(counter[4]), .Y(n35) );
  CLKXOR2X2M U58 ( .A(i_div_ratio[6]), .B(counter[5]), .Y(n34) );
  NOR4X1M U59 ( .A(n37), .B(n36), .C(n35), .D(n34), .Y(N19) );
endmodule


module tx_controller ( clk, rst_n, data_valid, par_en, ser_done, mux_sel, 
        ser_en, latch_data, busy );
  output [1:0] mux_sel;
  input clk, rst_n, data_valid, par_en, ser_done;
  output ser_en, latch_data, busy;
  wire   par_en_latched, n3, n5, n6, n7, n8, n9, n10, n11, n1, n2, n4;
  wire   [2:0] current_state;
  wire   [2:0] next_state;

  DFFRQX2M par_en_latched_reg ( .D(n11), .CK(clk), .RN(rst_n), .Q(
        par_en_latched) );
  DFFRQX2M \current_state_reg[0]  ( .D(n1), .CK(clk), .RN(rst_n), .Q(
        current_state[0]) );
  DFFRQX2M \current_state_reg[1]  ( .D(next_state[1]), .CK(clk), .RN(rst_n), 
        .Q(current_state[1]) );
  DFFRX1M \current_state_reg[2]  ( .D(next_state[2]), .CK(clk), .RN(rst_n), 
        .QN(n3) );
  NOR2BX2M U3 ( .AN(data_valid), .B(n10), .Y(latch_data) );
  NOR2X2M U4 ( .A(n4), .B(n9), .Y(ser_en) );
  OAI2B11X2M U5 ( .A1N(current_state[0]), .A0(n4), .B0(n10), .C0(n3), .Y(
        mux_sel[0]) );
  INVX2M U6 ( .A(n6), .Y(mux_sel[1]) );
  NAND2X2M U7 ( .A(current_state[1]), .B(n3), .Y(n6) );
  OR2X2M U8 ( .A(current_state[0]), .B(current_state[1]), .Y(n10) );
  INVX2M U9 ( .A(current_state[1]), .Y(n4) );
  OAI211X2M U10 ( .A0(n10), .A1(n3), .B0(n7), .C0(n6), .Y(busy) );
  NAND2X2M U11 ( .A(current_state[0]), .B(n3), .Y(n7) );
  NAND2X2M U12 ( .A(n7), .B(n3), .Y(n9) );
  NOR2BX2M U13 ( .AN(ser_done), .B(par_en_latched), .Y(n5) );
  AOI2BB1X2M U14 ( .A0N(current_state[0]), .A1N(n5), .B0(n6), .Y(next_state[2]) );
  INVX2M U15 ( .A(n8), .Y(n1) );
  AOI33X2M U16 ( .A0(par_en_latched), .A1(ser_done), .A2(ser_en), .B0(
        data_valid), .B1(n4), .B2(n2), .Y(n8) );
  INVX2M U17 ( .A(n9), .Y(n2) );
  AO2B2X2M U18 ( .B0(par_en), .B1(latch_data), .A0(par_en_latched), .A1N(
        latch_data), .Y(n11) );
  OAI32X1M U19 ( .A0(n6), .A1(current_state[0]), .A2(n5), .B0(current_state[1]), .B1(n7), .Y(next_state[1]) );
endmodule


module counter ( clk, rst_n, en, high, low );
  input clk, rst_n, en;
  output high, low;
  wire   N9, N10, N11, n4, n5, n2, n3, n6;
  wire   [3:0] c;

  DFFRQX2M \c_reg[2]  ( .D(N11), .CK(clk), .RN(rst_n), .Q(c[2]) );
  DFFRQX2M \c_reg[1]  ( .D(N10), .CK(clk), .RN(rst_n), .Q(c[1]) );
  DFFRQX2M \c_reg[0]  ( .D(N9), .CK(clk), .RN(rst_n), .Q(c[0]) );
  AND3X2M U3 ( .A(n3), .B(n6), .C(n2), .Y(low) );
  NAND2BX2M U4 ( .AN(high), .B(en), .Y(n4) );
  NOR3X2M U5 ( .A(n3), .B(n2), .C(n6), .Y(high) );
  OAI32X1M U6 ( .A0(n4), .A1(n2), .A2(n3), .B0(n6), .B1(n4), .Y(N11) );
  INVX2M U7 ( .A(c[0]), .Y(n2) );
  NOR2X2M U8 ( .A(c[0]), .B(n4), .Y(N9) );
  INVX2M U9 ( .A(c[1]), .Y(n3) );
  NOR2X2M U10 ( .A(n5), .B(n4), .Y(N10) );
  XNOR2X2M U11 ( .A(c[0]), .B(c[1]), .Y(n5) );
  INVX2M U12 ( .A(c[2]), .Y(n6) );
endmodule


module serializer ( clk, rst_n, p_data, ser_en, latch_data, ser_done, ser_data
 );
  input [7:0] p_data;
  input clk, rst_n, ser_en, latch_data;
  output ser_done, ser_data;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18;
  wire   [7:1] data;

  counter counter_inst ( .clk(clk), .rst_n(rst_n), .en(ser_en), .high(ser_done) );
  DFFRQX2M \data_reg[6]  ( .D(n13), .CK(clk), .RN(rst_n), .Q(data[6]) );
  DFFRQX2M \data_reg[5]  ( .D(n14), .CK(clk), .RN(rst_n), .Q(data[5]) );
  DFFRQX2M \data_reg[4]  ( .D(n15), .CK(clk), .RN(rst_n), .Q(data[4]) );
  DFFRQX2M \data_reg[3]  ( .D(n16), .CK(clk), .RN(rst_n), .Q(data[3]) );
  DFFRQX2M \data_reg[2]  ( .D(n17), .CK(clk), .RN(rst_n), .Q(data[2]) );
  DFFRQX2M \data_reg[1]  ( .D(n18), .CK(clk), .RN(rst_n), .Q(data[1]) );
  DFFRQX2M \data_reg[7]  ( .D(n12), .CK(clk), .RN(rst_n), .Q(data[7]) );
  DFFRQX2M \data_reg[0]  ( .D(n11), .CK(clk), .RN(rst_n), .Q(ser_data) );
  NOR2X2M U3 ( .A(n3), .B(n4), .Y(n1) );
  NOR2BX2M U4 ( .AN(ser_en), .B(ser_done), .Y(n3) );
  NOR2BX2M U5 ( .AN(latch_data), .B(n3), .Y(n4) );
  OAI2BB1X2M U6 ( .A0N(ser_data), .A1N(n1), .B0(n2), .Y(n11) );
  AOI22X1M U7 ( .A0(data[1]), .A1(n3), .B0(p_data[0]), .B1(n4), .Y(n2) );
  OAI2BB1X2M U8 ( .A0N(data[1]), .A1N(n1), .B0(n10), .Y(n18) );
  AOI22X1M U9 ( .A0(data[2]), .A1(n3), .B0(p_data[1]), .B1(n4), .Y(n10) );
  OAI2BB1X2M U10 ( .A0N(n1), .A1N(data[2]), .B0(n9), .Y(n17) );
  AOI22X1M U11 ( .A0(data[3]), .A1(n3), .B0(p_data[2]), .B1(n4), .Y(n9) );
  OAI2BB1X2M U12 ( .A0N(n1), .A1N(data[3]), .B0(n8), .Y(n16) );
  AOI22X1M U13 ( .A0(data[4]), .A1(n3), .B0(p_data[3]), .B1(n4), .Y(n8) );
  OAI2BB1X2M U14 ( .A0N(n1), .A1N(data[4]), .B0(n7), .Y(n15) );
  AOI22X1M U15 ( .A0(data[5]), .A1(n3), .B0(p_data[4]), .B1(n4), .Y(n7) );
  OAI2BB1X2M U16 ( .A0N(n1), .A1N(data[5]), .B0(n6), .Y(n14) );
  AOI22X1M U17 ( .A0(data[6]), .A1(n3), .B0(p_data[5]), .B1(n4), .Y(n6) );
  OAI2BB1X2M U18 ( .A0N(n1), .A1N(data[6]), .B0(n5), .Y(n13) );
  AOI22X1M U19 ( .A0(data[7]), .A1(n3), .B0(p_data[6]), .B1(n4), .Y(n5) );
  AO22X1M U20 ( .A0(n1), .A1(data[7]), .B0(p_data[7]), .B1(n4), .Y(n12) );
endmodule


module parity_calc ( clk, rst_n, p_data, latch_data, par_typ, par_bit );
  input [7:0] p_data;
  input clk, rst_n, latch_data, par_typ;
  output par_bit;
  wire   par_typ_latched, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13;
  wire   [7:0] p_data_latched;

  DFFRQX2M \p_data_latched_reg[5]  ( .D(n10), .CK(clk), .RN(rst_n), .Q(
        p_data_latched[5]) );
  DFFRQX2M \p_data_latched_reg[1]  ( .D(n6), .CK(clk), .RN(rst_n), .Q(
        p_data_latched[1]) );
  DFFRQX2M \p_data_latched_reg[4]  ( .D(n9), .CK(clk), .RN(rst_n), .Q(
        p_data_latched[4]) );
  DFFRQX2M \p_data_latched_reg[0]  ( .D(n5), .CK(clk), .RN(rst_n), .Q(
        p_data_latched[0]) );
  DFFRQX2M par_typ_latched_reg ( .D(n13), .CK(clk), .RN(rst_n), .Q(
        par_typ_latched) );
  DFFRQX2M \p_data_latched_reg[6]  ( .D(n11), .CK(clk), .RN(rst_n), .Q(
        p_data_latched[6]) );
  DFFRQX2M \p_data_latched_reg[2]  ( .D(n7), .CK(clk), .RN(rst_n), .Q(
        p_data_latched[2]) );
  DFFRQX2M \p_data_latched_reg[7]  ( .D(n12), .CK(clk), .RN(rst_n), .Q(
        p_data_latched[7]) );
  DFFRQX2M \p_data_latched_reg[3]  ( .D(n8), .CK(clk), .RN(rst_n), .Q(
        p_data_latched[3]) );
  XOR3XLM U2 ( .A(n1), .B(n2), .C(par_typ_latched), .Y(par_bit) );
  XOR3XLM U3 ( .A(p_data_latched[5]), .B(p_data_latched[4]), .C(n4), .Y(n1) );
  XOR3XLM U4 ( .A(p_data_latched[1]), .B(p_data_latched[0]), .C(n3), .Y(n2) );
  CLKXOR2X2M U5 ( .A(p_data_latched[7]), .B(p_data_latched[6]), .Y(n4) );
  CLKXOR2X2M U6 ( .A(p_data_latched[3]), .B(p_data_latched[2]), .Y(n3) );
  AO2B2X2M U7 ( .B0(p_data[0]), .B1(latch_data), .A0(p_data_latched[0]), .A1N(
        latch_data), .Y(n5) );
  AO2B2X2M U8 ( .B0(p_data[1]), .B1(latch_data), .A0(p_data_latched[1]), .A1N(
        latch_data), .Y(n6) );
  AO2B2X2M U9 ( .B0(p_data[2]), .B1(latch_data), .A0(p_data_latched[2]), .A1N(
        latch_data), .Y(n7) );
  AO2B2X2M U10 ( .B0(p_data[3]), .B1(latch_data), .A0(p_data_latched[3]), 
        .A1N(latch_data), .Y(n8) );
  AO2B2X2M U11 ( .B0(p_data[4]), .B1(latch_data), .A0(p_data_latched[4]), 
        .A1N(latch_data), .Y(n9) );
  AO2B2X2M U12 ( .B0(p_data[5]), .B1(latch_data), .A0(p_data_latched[5]), 
        .A1N(latch_data), .Y(n10) );
  AO2B2X2M U13 ( .B0(p_data[6]), .B1(latch_data), .A0(p_data_latched[6]), 
        .A1N(latch_data), .Y(n11) );
  AO2B2X2M U14 ( .B0(p_data[7]), .B1(latch_data), .A0(p_data_latched[7]), 
        .A1N(latch_data), .Y(n12) );
  AO2B2X2M U15 ( .B0(par_typ), .B1(latch_data), .A0(par_typ_latched), .A1N(
        latch_data), .Y(n13) );
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


module uart_tx_DATA_WIDTH8 ( clk, rst_n, p_data, data_valid, par_en, par_typ, 
        tx_out, busy );
  input [7:0] p_data;
  input clk, rst_n, data_valid, par_en, par_typ;
  output tx_out, busy;
  wire   latch_data, ser_en, ser_done, n1, n2;
  wire   [1:0] mux_sel;
  wire   [3:2] mux_in;

  tx_controller controller_inst ( .clk(clk), .rst_n(n1), .data_valid(
        data_valid), .par_en(par_en), .ser_done(ser_done), .mux_sel(mux_sel), 
        .ser_en(ser_en), .latch_data(latch_data), .busy(busy) );
  serializer serializer_inst ( .clk(clk), .rst_n(n1), .p_data(p_data), 
        .ser_en(ser_en), .latch_data(latch_data), .ser_done(ser_done), 
        .ser_data(mux_in[2]) );
  parity_calc parity_calc_inst ( .clk(clk), .rst_n(n1), .p_data(p_data), 
        .latch_data(latch_data), .par_typ(par_typ), .par_bit(mux_in[3]) );
  mux mux_inst ( .mux_sel(mux_sel), .mux_in({mux_in, 1'b1, 1'b0}), .tx_out(
        tx_out) );
  INVX2M U3 ( .A(n2), .Y(n1) );
  INVX2M U4 ( .A(rst_n), .Y(n2) );
endmodule


module rx_controller ( clk, rst_n, rx_in, par_en, par_typ, bit_cnt, 
        strt_glitch, par_err, stp_err, bit_valid, cnt_en, dat_samp_en, 
        strt_chk_en, par_pdata_en, par_chk_en, stp_chk_en, deser_en, 
        data_valid, par_typ_latched );
  input [3:0] bit_cnt;
  input clk, rst_n, rx_in, par_en, par_typ, strt_glitch, par_err, stp_err,
         bit_valid;
  output cnt_en, dat_samp_en, strt_chk_en, par_pdata_en, par_chk_en,
         stp_chk_en, deser_en, data_valid, par_typ_latched;
  wire   par_en_latched, data_valid_c, n2, n3, n4, n6, n7, n8, n9, n10, n12,
         n13, n14, n16, n17, n20, n23, n24, n26, n27, n5, n11, n15, n18, n19,
         n21, n22, n25, n28;
  wire   [2:0] current_state;
  wire   [2:0] next_state;

  DFFRQX2M par_typ_latched_reg ( .D(n26), .CK(clk), .RN(rst_n), .Q(
        par_typ_latched) );
  DFFRQX2M par_en_latched_reg ( .D(n27), .CK(clk), .RN(rst_n), .Q(
        par_en_latched) );
  DFFRQX2M \current_state_reg[0]  ( .D(next_state[0]), .CK(clk), .RN(rst_n), 
        .Q(current_state[0]) );
  DFFRQX2M \current_state_reg[1]  ( .D(next_state[1]), .CK(clk), .RN(rst_n), 
        .Q(current_state[1]) );
  DFFRQX2M \current_state_reg[2]  ( .D(next_state[2]), .CK(clk), .RN(rst_n), 
        .Q(current_state[2]) );
  DFFRQX2M data_valid_reg ( .D(data_valid_c), .CK(clk), .RN(rst_n), .Q(
        data_valid) );
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
  OAI32X1M U14 ( .A0(n28), .A1(n25), .A2(n12), .B0(rx_in), .B1(
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
  OAI2BB2X1M U30 ( .B0(n23), .B1(n28), .A0N(par_en), .A1N(n23), .Y(n27) );
  NOR2X2M U31 ( .A(n5), .B(n2), .Y(par_chk_en) );
  INVX2M U32 ( .A(bit_valid), .Y(n5) );
  OR4X1M U33 ( .A(bit_cnt[0]), .B(n18), .C(n15), .D(bit_cnt[2]), .Y(n4) );
  INVX2M U34 ( .A(bit_cnt[3]), .Y(n18) );
  INVX2M U35 ( .A(bit_cnt[1]), .Y(n15) );
  AO2B2X2M U36 ( .B0(par_typ), .B1(n23), .A0(par_typ_latched), .A1N(n23), .Y(
        n26) );
  INVX2M U37 ( .A(par_en_latched), .Y(n28) );
  NOR4X1M U38 ( .A(n24), .B(current_state[1]), .C(stp_err), .D(par_err), .Y(
        data_valid_c) );
  NAND2X2M U39 ( .A(current_state[2]), .B(current_state[0]), .Y(n24) );
  BUFX2M U40 ( .A(cnt_en), .Y(dat_samp_en) );
endmodule


module edge_bit_counter_MAX_WIDTH6 ( clk, rst_n, prescale, cnt_en, edge_cnt, 
        bit_cnt );
  input [5:0] prescale;
  output [5:0] edge_cnt;
  output [3:0] bit_cnt;
  input clk, rst_n, cnt_en;
  wire   N5, N7, N8, N9, N10, N11, N12, N19, N20, N21, N22, N23, N24, N27, N28,
         N29, N30, N31, N32, N33, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, \add_18/carry[5] , \add_18/carry[4] , \add_18/carry[3] ,
         \add_18/carry[2] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n23, n24, n25, n26, n27, n28, n29, n30;

  DFFRQX2M \bit_cnt_reg[2]  ( .D(n20), .CK(clk), .RN(rst_n), .Q(bit_cnt[2]) );
  DFFRQX2M \bit_cnt_reg[1]  ( .D(n21), .CK(clk), .RN(rst_n), .Q(bit_cnt[1]) );
  DFFRQX2M \bit_cnt_reg[3]  ( .D(n19), .CK(clk), .RN(rst_n), .Q(bit_cnt[3]) );
  DFFRQX2M \bit_cnt_reg[0]  ( .D(n22), .CK(clk), .RN(rst_n), .Q(bit_cnt[0]) );
  DFFRQX2M \edge_cnt_reg[5]  ( .D(N24), .CK(clk), .RN(rst_n), .Q(edge_cnt[5])
         );
  DFFRQX2M \edge_cnt_reg[4]  ( .D(N23), .CK(clk), .RN(rst_n), .Q(edge_cnt[4])
         );
  DFFRQX2M \edge_cnt_reg[3]  ( .D(N22), .CK(clk), .RN(rst_n), .Q(edge_cnt[3])
         );
  DFFRQX2M \edge_cnt_reg[2]  ( .D(N21), .CK(clk), .RN(rst_n), .Q(edge_cnt[2])
         );
  DFFRQX2M \edge_cnt_reg[1]  ( .D(N20), .CK(clk), .RN(rst_n), .Q(edge_cnt[1])
         );
  DFFRQX2M \edge_cnt_reg[0]  ( .D(N19), .CK(clk), .RN(rst_n), .Q(edge_cnt[0])
         );
  INVX2M U3 ( .A(n18), .Y(n24) );
  NOR2X2M U4 ( .A(n30), .B(N5), .Y(n18) );
  AOI21X2M U5 ( .A0(n26), .A1(cnt_en), .B0(n18), .Y(n17) );
  AND2X2M U6 ( .A(N8), .B(n18), .Y(N20) );
  AND2X2M U7 ( .A(N9), .B(n18), .Y(N21) );
  AND2X2M U8 ( .A(N10), .B(n18), .Y(N22) );
  AND2X2M U9 ( .A(N11), .B(n18), .Y(N23) );
  NOR3X2M U10 ( .A(n27), .B(n26), .C(n28), .Y(n14) );
  INVX2M U11 ( .A(cnt_en), .Y(n30) );
  OAI32X1M U12 ( .A0(n30), .A1(bit_cnt[0]), .A2(n18), .B0(n26), .B1(n24), .Y(
        n22) );
  OAI32X1M U13 ( .A0(n15), .A1(bit_cnt[2]), .A2(n27), .B0(n16), .B1(n28), .Y(
        n20) );
  OA21X2M U14 ( .A0(n30), .A1(bit_cnt[1]), .B0(n17), .Y(n16) );
  OAI22X1M U15 ( .A0(n29), .A1(n24), .B0(n13), .B1(n30), .Y(n19) );
  AOI32X1M U16 ( .A0(n14), .A1(n29), .A2(N5), .B0(bit_cnt[3]), .B1(n25), .Y(
        n13) );
  INVX2M U17 ( .A(bit_cnt[3]), .Y(n29) );
  INVX2M U18 ( .A(n14), .Y(n25) );
  OAI22X1M U19 ( .A0(n17), .A1(n27), .B0(bit_cnt[1]), .B1(n15), .Y(n21) );
  NAND3X2M U20 ( .A(bit_cnt[0]), .B(n24), .C(cnt_en), .Y(n15) );
  AND2X2M U21 ( .A(N12), .B(n18), .Y(N24) );
  AND2X2M U22 ( .A(N7), .B(n18), .Y(N19) );
  INVX2M U23 ( .A(bit_cnt[0]), .Y(n26) );
  INVX2M U24 ( .A(bit_cnt[1]), .Y(n27) );
  INVX2M U25 ( .A(bit_cnt[2]), .Y(n28) );
  ADDHX1M U26 ( .A(edge_cnt[1]), .B(edge_cnt[0]), .CO(\add_18/carry[2] ), .S(
        N8) );
  ADDHX1M U27 ( .A(edge_cnt[2]), .B(\add_18/carry[2] ), .CO(\add_18/carry[3] ), 
        .S(N9) );
  ADDHX1M U28 ( .A(edge_cnt[3]), .B(\add_18/carry[3] ), .CO(\add_18/carry[4] ), 
        .S(N10) );
  ADDHX1M U29 ( .A(edge_cnt[4]), .B(\add_18/carry[4] ), .CO(\add_18/carry[5] ), 
        .S(N11) );
  OR2X2M U30 ( .A(prescale[1]), .B(prescale[0]), .Y(n1) );
  CLKINVX1M U31 ( .A(prescale[0]), .Y(N27) );
  OAI2BB1X1M U32 ( .A0N(prescale[0]), .A1N(prescale[1]), .B0(n1), .Y(N28) );
  OR2X1M U33 ( .A(n1), .B(prescale[2]), .Y(n2) );
  OAI2BB1X1M U34 ( .A0N(n1), .A1N(prescale[2]), .B0(n2), .Y(N29) );
  OR2X1M U35 ( .A(n2), .B(prescale[3]), .Y(n3) );
  OAI2BB1X1M U36 ( .A0N(n2), .A1N(prescale[3]), .B0(n3), .Y(N30) );
  OR2X1M U37 ( .A(n3), .B(prescale[4]), .Y(n4) );
  OAI2BB1X1M U38 ( .A0N(n3), .A1N(prescale[4]), .B0(n4), .Y(N31) );
  NOR2X1M U39 ( .A(n4), .B(prescale[5]), .Y(N33) );
  AO21XLM U40 ( .A0(n4), .A1(prescale[5]), .B0(N33), .Y(N32) );
  CLKINVX1M U41 ( .A(edge_cnt[0]), .Y(N7) );
  CLKXOR2X2M U42 ( .A(\add_18/carry[5] ), .B(edge_cnt[5]), .Y(N12) );
  NOR2BX1M U43 ( .AN(N27), .B(edge_cnt[0]), .Y(n5) );
  OAI2B2X1M U44 ( .A1N(edge_cnt[1]), .A0(n5), .B0(N28), .B1(n5), .Y(n9) );
  XNOR2X1M U45 ( .A(N32), .B(edge_cnt[5]), .Y(n8) );
  NOR2BX1M U46 ( .AN(edge_cnt[0]), .B(N27), .Y(n6) );
  OAI2B2X1M U47 ( .A1N(N28), .A0(n6), .B0(edge_cnt[1]), .B1(n6), .Y(n7) );
  NAND4BX1M U48 ( .AN(N33), .B(n9), .C(n8), .D(n7), .Y(n23) );
  CLKXOR2X2M U49 ( .A(N31), .B(edge_cnt[4]), .Y(n12) );
  CLKXOR2X2M U50 ( .A(N29), .B(edge_cnt[2]), .Y(n11) );
  CLKXOR2X2M U51 ( .A(N30), .B(edge_cnt[3]), .Y(n10) );
  NOR4X1M U52 ( .A(n23), .B(n12), .C(n11), .D(n10), .Y(N5) );
endmodule


module data_sampling_MAX_WIDTH6 ( clk, rst_n, prescale, rx_in, dat_samp_en, 
        edge_cnt, bit_valid, sampled_bit );
  input [5:0] prescale;
  input [5:0] edge_cnt;
  input clk, rst_n, rx_in, dat_samp_en;
  output bit_valid, sampled_bit;
  wire   N33, N34, N35, N36, N37, N38, N39, N40, N42, N43, N44, N46, N54, N71,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, \sub_36/carry[4] , \sub_36/carry[3] , n1, n2, n3, n4,
         n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19,
         n20, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51, n52, n53;
  wire   [1:0] s;
  assign N40 = prescale[1];

  DFFRQX2M bit_valid_reg ( .D(N71), .CK(clk), .RN(rst_n), .Q(bit_valid) );
  DFFSQX2M sampled_bit_reg ( .D(n35), .CK(clk), .SN(rst_n), .Q(sampled_bit) );
  DFFRQX2M \s_reg[1]  ( .D(n37), .CK(clk), .RN(rst_n), .Q(s[1]) );
  DFFRQX2M \s_reg[0]  ( .D(n36), .CK(clk), .RN(rst_n), .Q(s[0]) );
  NOR2X2M U3 ( .A(prescale[5]), .B(\sub_36/carry[4] ), .Y(n1) );
  NOR4X1M U4 ( .A(n50), .B(n24), .C(prescale[0]), .D(N40), .Y(n28) );
  INVX2M U5 ( .A(dat_samp_en), .Y(n50) );
  INVX2M U6 ( .A(N46), .Y(n47) );
  NOR2X2M U7 ( .A(n50), .B(n46), .Y(N71) );
  OAI31X1M U8 ( .A0(n26), .A1(s[1]), .A2(s[0]), .B0(rx_in), .Y(n25) );
  OAI2BB2X1M U9 ( .B0(n53), .B1(n27), .A0N(n27), .A1N(s[0]), .Y(n36) );
  NAND2X2M U10 ( .A(N46), .B(n28), .Y(n27) );
  OAI2BB2X1M U11 ( .B0(n53), .B1(n29), .A0N(n29), .A1N(s[1]), .Y(n37) );
  NAND3X2M U12 ( .A(N39), .B(n47), .C(n28), .Y(n29) );
  OAI2B1X2M U13 ( .A1N(sampled_bit), .A0(n21), .B0(n22), .Y(n35) );
  OAI21X2M U14 ( .A0(n50), .A1(n23), .B0(n21), .Y(n22) );
  NAND2X2M U15 ( .A(dat_samp_en), .B(n46), .Y(n21) );
  OAI31X1M U16 ( .A0(n48), .A1(n24), .A2(n49), .B0(n25), .Y(n23) );
  INVX2M U17 ( .A(rx_in), .Y(n53) );
  INVX2M U18 ( .A(n30), .Y(n46) );
  NOR3BX2M U19 ( .AN(n31), .B(prescale[0]), .C(N40), .Y(n30) );
  OAI2BB1X2M U20 ( .A0N(n26), .A1N(N39), .B0(n32), .Y(n31) );
  NAND4BBX1M U21 ( .AN(N39), .BN(n24), .C(N54), .D(n47), .Y(n32) );
  INVX2M U22 ( .A(s[0]), .Y(n49) );
  INVX2M U23 ( .A(s[1]), .Y(n48) );
  NOR4X1M U24 ( .A(n52), .B(prescale[3]), .C(prescale[4]), .D(prescale[5]), 
        .Y(n26) );
  NAND2X2M U25 ( .A(n33), .B(n52), .Y(n24) );
  OAI32X1M U26 ( .A0(n51), .A1(prescale[4]), .A2(prescale[3]), .B0(prescale[5]), .B1(n34), .Y(n33) );
  INVX2M U27 ( .A(prescale[5]), .Y(n51) );
  XNOR2X2M U28 ( .A(prescale[3]), .B(prescale[4]), .Y(n34) );
  INVX2M U29 ( .A(prescale[2]), .Y(n52) );
  OR2X2M U30 ( .A(prescale[2]), .B(N40), .Y(n2) );
  XNOR2X1M U31 ( .A(\sub_36/carry[4] ), .B(prescale[5]), .Y(N44) );
  OR2X1M U32 ( .A(prescale[4]), .B(\sub_36/carry[3] ), .Y(\sub_36/carry[4] )
         );
  XNOR2X1M U33 ( .A(\sub_36/carry[3] ), .B(prescale[4]), .Y(N43) );
  OR2X1M U34 ( .A(prescale[3]), .B(prescale[2]), .Y(\sub_36/carry[3] ) );
  XNOR2X1M U35 ( .A(prescale[2]), .B(prescale[3]), .Y(N42) );
  CLKINVX1M U36 ( .A(N40), .Y(N33) );
  OAI2BB1X1M U37 ( .A0N(N40), .A1N(prescale[2]), .B0(n2), .Y(N34) );
  OR2X1M U38 ( .A(n2), .B(prescale[3]), .Y(n3) );
  OAI2BB1X1M U39 ( .A0N(n2), .A1N(prescale[3]), .B0(n3), .Y(N35) );
  XNOR2X1M U40 ( .A(prescale[4]), .B(n3), .Y(N36) );
  NOR3X1M U41 ( .A(prescale[4]), .B(prescale[5]), .C(n3), .Y(N38) );
  OAI21X1M U42 ( .A0(prescale[4]), .A1(n3), .B0(prescale[5]), .Y(n4) );
  NAND2BX1M U43 ( .AN(N38), .B(n4), .Y(N37) );
  NOR2BX1M U44 ( .AN(edge_cnt[0]), .B(N33), .Y(n5) );
  OAI2B2X1M U45 ( .A1N(N34), .A0(n5), .B0(edge_cnt[1]), .B1(n5), .Y(n8) );
  NOR2BX1M U46 ( .AN(N33), .B(edge_cnt[0]), .Y(n6) );
  OAI2B2X1M U47 ( .A1N(edge_cnt[1]), .A0(n6), .B0(N34), .B1(n6), .Y(n7) );
  NAND4BBX1M U48 ( .AN(N38), .BN(edge_cnt[5]), .C(n8), .D(n7), .Y(n12) );
  CLKXOR2X2M U49 ( .A(N37), .B(edge_cnt[4]), .Y(n11) );
  CLKXOR2X2M U50 ( .A(N35), .B(edge_cnt[2]), .Y(n10) );
  CLKXOR2X2M U51 ( .A(N36), .B(edge_cnt[3]), .Y(n9) );
  NOR4X1M U52 ( .A(n12), .B(n11), .C(n10), .D(n9), .Y(N39) );
  NOR2BX1M U53 ( .AN(edge_cnt[0]), .B(N40), .Y(n13) );
  OAI2B2X1M U54 ( .A1N(n52), .A0(n13), .B0(edge_cnt[1]), .B1(n13), .Y(n16) );
  NOR2BX1M U55 ( .AN(N40), .B(edge_cnt[0]), .Y(n14) );
  OAI2B2X1M U56 ( .A1N(edge_cnt[1]), .A0(n14), .B0(n52), .B1(n14), .Y(n15) );
  NAND4BBX1M U57 ( .AN(n1), .BN(edge_cnt[5]), .C(n16), .D(n15), .Y(n20) );
  CLKXOR2X2M U58 ( .A(N44), .B(edge_cnt[4]), .Y(n19) );
  CLKXOR2X2M U59 ( .A(N42), .B(edge_cnt[2]), .Y(n18) );
  CLKXOR2X2M U60 ( .A(N43), .B(edge_cnt[3]), .Y(n17) );
  NOR4X1M U61 ( .A(n20), .B(n19), .C(n18), .D(n17), .Y(N46) );
  NOR2BX1M U62 ( .AN(edge_cnt[0]), .B(N40), .Y(n38) );
  OAI2B2X1M U63 ( .A1N(prescale[2]), .A0(n38), .B0(edge_cnt[1]), .B1(n38), .Y(
        n41) );
  NOR2BX1M U64 ( .AN(N40), .B(edge_cnt[0]), .Y(n39) );
  OAI2B2X1M U65 ( .A1N(edge_cnt[1]), .A0(n39), .B0(prescale[2]), .B1(n39), .Y(
        n40) );
  NAND3BX1M U66 ( .AN(edge_cnt[5]), .B(n41), .C(n40), .Y(n45) );
  CLKXOR2X2M U67 ( .A(prescale[5]), .B(edge_cnt[4]), .Y(n44) );
  CLKXOR2X2M U68 ( .A(prescale[3]), .B(edge_cnt[2]), .Y(n43) );
  CLKXOR2X2M U69 ( .A(prescale[4]), .B(edge_cnt[3]), .Y(n42) );
  NOR4X1M U70 ( .A(n45), .B(n44), .C(n43), .D(n42), .Y(N54) );
endmodule


module deserializer ( clk, rst_n, sampled_bit, deser_en, p_data );
  output [7:0] p_data;
  input clk, rst_n, sampled_bit, deser_en;
  wire   n9, n10, n11, n12, n13, n14, n15, n16, n1, n2, n3, n4, n5, n6, n7, n8,
         n17;

  DFFRQX2M \p_data_reg[0]  ( .D(n9), .CK(clk), .RN(rst_n), .Q(p_data[0]) );
  DFFRQX2M \p_data_reg[5]  ( .D(n14), .CK(clk), .RN(rst_n), .Q(p_data[5]) );
  DFFRQX2M \p_data_reg[1]  ( .D(n10), .CK(clk), .RN(rst_n), .Q(p_data[1]) );
  DFFRQX2M \p_data_reg[4]  ( .D(n13), .CK(clk), .RN(rst_n), .Q(p_data[4]) );
  DFFRQX2M \p_data_reg[7]  ( .D(n16), .CK(clk), .RN(rst_n), .Q(p_data[7]) );
  DFFRQX2M \p_data_reg[3]  ( .D(n12), .CK(clk), .RN(rst_n), .Q(p_data[3]) );
  DFFRQX2M \p_data_reg[6]  ( .D(n15), .CK(clk), .RN(rst_n), .Q(p_data[6]) );
  DFFRQX2M \p_data_reg[2]  ( .D(n11), .CK(clk), .RN(rst_n), .Q(p_data[2]) );
  INVX2M U2 ( .A(n1), .Y(n17) );
  OAI22X1M U3 ( .A0(n17), .A1(n7), .B0(n1), .B1(n8), .Y(n10) );
  OAI22X1M U4 ( .A0(n17), .A1(n6), .B0(n1), .B1(n7), .Y(n11) );
  OAI22X1M U5 ( .A0(n17), .A1(n5), .B0(n1), .B1(n6), .Y(n12) );
  OAI22X1M U6 ( .A0(n17), .A1(n4), .B0(n1), .B1(n5), .Y(n13) );
  OAI22X1M U7 ( .A0(n17), .A1(n3), .B0(n1), .B1(n4), .Y(n14) );
  OAI22X1M U8 ( .A0(n17), .A1(n2), .B0(n1), .B1(n3), .Y(n15) );
  BUFX2M U9 ( .A(deser_en), .Y(n1) );
  OAI2BB2X1M U10 ( .B0(n17), .B1(n8), .A0N(p_data[0]), .A1N(n17), .Y(n9) );
  OAI2BB2X1M U11 ( .B0(n1), .B1(n2), .A0N(sampled_bit), .A1N(n1), .Y(n16) );
  INVX2M U12 ( .A(p_data[2]), .Y(n7) );
  INVX2M U13 ( .A(p_data[6]), .Y(n3) );
  INVX2M U14 ( .A(p_data[7]), .Y(n2) );
  INVX2M U15 ( .A(p_data[3]), .Y(n6) );
  INVX2M U16 ( .A(p_data[1]), .Y(n8) );
  INVX2M U17 ( .A(p_data[4]), .Y(n5) );
  INVX2M U18 ( .A(p_data[5]), .Y(n4) );
endmodule


module start_check ( sampled_bit, strt_chk_en, strt_glitch );
  input sampled_bit, strt_chk_en;
  output strt_glitch;


  AND2X2M U2 ( .A(strt_chk_en), .B(sampled_bit), .Y(strt_glitch) );
endmodule


module parity_check ( clk, rst_n, par_typ_latched, sampled_bit, p_data, 
        par_chk_en, par_pdata_en, par_err );
  input [7:0] p_data;
  input clk, rst_n, par_typ_latched, sampled_bit, par_chk_en, par_pdata_en;
  output par_err;
  wire   n1, n3, n4, n5, n6, n8, n9, n10, n11, n2, n7;

  DFFRQX2M par_err_reg ( .D(n11), .CK(clk), .RN(rst_n), .Q(par_err) );
  INVX2M U2 ( .A(par_pdata_en), .Y(n7) );
  XNOR2X2M U3 ( .A(sampled_bit), .B(par_typ_latched), .Y(n5) );
  OAI2BB2X1M U4 ( .B0(n1), .B1(n2), .A0N(par_err), .A1N(n2), .Y(n11) );
  INVX2M U5 ( .A(par_chk_en), .Y(n2) );
  XOR3XLM U6 ( .A(n3), .B(n4), .C(n5), .Y(n1) );
  NOR2X2M U7 ( .A(n6), .B(n7), .Y(n4) );
  XOR3XLM U8 ( .A(p_data[1]), .B(p_data[0]), .C(n8), .Y(n6) );
  XNOR2X2M U9 ( .A(p_data[3]), .B(p_data[2]), .Y(n8) );
  NOR2X2M U10 ( .A(n9), .B(n7), .Y(n3) );
  XOR3XLM U11 ( .A(p_data[5]), .B(p_data[4]), .C(n10), .Y(n9) );
  XNOR2X2M U12 ( .A(p_data[7]), .B(p_data[6]), .Y(n10) );
endmodule


module stop_check ( clk, rst_n, sampled_bit, stp_chk_en, stp_err );
  input clk, rst_n, sampled_bit, stp_chk_en;
  output stp_err;
  wire   n2, n1;

  DFFRQX2M stp_err_reg ( .D(n2), .CK(clk), .RN(rst_n), .Q(stp_err) );
  OAI2BB2X1M U2 ( .B0(sampled_bit), .B1(n1), .A0N(stp_err), .A1N(n1), .Y(n2)
         );
  INVX2M U3 ( .A(stp_chk_en), .Y(n1) );
endmodule


module uart_rx_DATA_WIDTH8 ( clk, rst_n, par_typ, par_en, prescale, rx_in, 
        p_data, data_valid, par_err, stp_err );
  input [5:0] prescale;
  output [7:0] p_data;
  input clk, rst_n, par_typ, par_en, rx_in;
  output data_valid, par_err, stp_err;
  wire   par_typ_latched, deser_en, stp_chk_en, par_chk_en, par_pdata_en,
         strt_chk_en, dat_samp_en, cnt_en, bit_valid, strt_glitch, sampled_bit,
         n1, n2;
  wire   [3:0] bit_cnt;
  wire   [5:0] edge_cnt;

  rx_controller controller_inst ( .clk(clk), .rst_n(n1), .rx_in(rx_in), 
        .par_en(par_en), .par_typ(par_typ), .bit_cnt(bit_cnt), .strt_glitch(
        strt_glitch), .par_err(par_err), .stp_err(stp_err), .bit_valid(
        bit_valid), .cnt_en(cnt_en), .dat_samp_en(dat_samp_en), .strt_chk_en(
        strt_chk_en), .par_pdata_en(par_pdata_en), .par_chk_en(par_chk_en), 
        .stp_chk_en(stp_chk_en), .deser_en(deser_en), .data_valid(data_valid), 
        .par_typ_latched(par_typ_latched) );
  edge_bit_counter_MAX_WIDTH6 edge_bit_counter_inst ( .clk(clk), .rst_n(n1), 
        .prescale(prescale), .cnt_en(cnt_en), .edge_cnt(edge_cnt), .bit_cnt(
        bit_cnt) );
  data_sampling_MAX_WIDTH6 data_sampling_inst ( .clk(clk), .rst_n(n1), 
        .prescale(prescale), .rx_in(rx_in), .dat_samp_en(dat_samp_en), 
        .edge_cnt(edge_cnt), .bit_valid(bit_valid), .sampled_bit(sampled_bit)
         );
  deserializer deserializer_inst ( .clk(clk), .rst_n(n1), .sampled_bit(
        sampled_bit), .deser_en(deser_en), .p_data(p_data) );
  start_check start_check_inst ( .sampled_bit(sampled_bit), .strt_chk_en(
        strt_chk_en), .strt_glitch(strt_glitch) );
  parity_check parity_check_inst ( .clk(clk), .rst_n(n1), .par_typ_latched(
        par_typ_latched), .sampled_bit(sampled_bit), .p_data(p_data), 
        .par_chk_en(par_chk_en), .par_pdata_en(par_pdata_en), .par_err(par_err) );
  stop_check stop_check_inst ( .clk(clk), .rst_n(n1), .sampled_bit(sampled_bit), .stp_chk_en(stp_chk_en), .stp_err(stp_err) );
  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(rst_n), .Y(n2) );
endmodule


module uart_DATA_WIDTH8 ( rst_n, tx_clk, rx_clk, rx_in, rx_p_data, 
        rx_data_valid, tx_p_data, tx_data_valid, tx_out, tx_busy, prescale, 
        parity_enable, parity_type, parity_error, framing_error );
  output [7:0] rx_p_data;
  input [7:0] tx_p_data;
  input [5:0] prescale;
  input rst_n, tx_clk, rx_clk, rx_in, tx_data_valid, parity_enable,
         parity_type;
  output rx_data_valid, tx_out, tx_busy, parity_error, framing_error;
  wire   n1, n2;

  uart_tx_DATA_WIDTH8 U0_UART_TX ( .clk(tx_clk), .rst_n(n1), .p_data(tx_p_data), .data_valid(tx_data_valid), .par_en(parity_enable), .par_typ(parity_type), 
        .tx_out(tx_out), .busy(tx_busy) );
  uart_rx_DATA_WIDTH8 U0_UART_RX ( .clk(rx_clk), .rst_n(n1), .par_typ(
        parity_type), .par_en(parity_enable), .prescale(prescale), .rx_in(
        rx_in), .p_data(rx_p_data), .data_valid(rx_data_valid), .par_err(
        parity_error), .stp_err(framing_error) );
  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(rst_n), .Y(n2) );
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

  NAND2X2M U2 ( .A(A[7]), .B(B[7]), .Y(n15) );
  AOI21BX2M U3 ( .A0(n18), .A1(A[12]), .B0N(n19), .Y(n1) );
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

  ALU_DATA_WIDTH8_FUN_WIDTH4_OUT_WIDTH16_DW01_add_1 FS_1 ( .A({1'b0, \A1[12] , 
        \A1[11] , \A1[10] , \A1[9] , \A1[8] , \A1[7] , \A1[6] , \SUMB[7][0] , 
        \A1[4] , \A1[3] , \A1[2] , \A1[1] , \A1[0] }), .B({n10, n16, n14, n15, 
        n13, n11, n12, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), 
        .SUM(PRODUCT[15:2]) );
  ADDFX2M S1_3_0 ( .A(\ab[3][0] ), .B(\CARRYB[2][0] ), .CI(\SUMB[2][1] ), .CO(
        \CARRYB[3][0] ), .S(\A1[1] ) );
  ADDFX2M S1_2_0 ( .A(\ab[2][0] ), .B(n7), .CI(\SUMB[1][1] ), .CO(
        \CARRYB[2][0] ), .S(\A1[0] ) );
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
  ADDFX2M S2_3_4 ( .A(\ab[3][4] ), .B(\CARRYB[2][4] ), .CI(\SUMB[2][5] ), .CO(
        \CARRYB[3][4] ), .S(\SUMB[3][4] ) );
  ADDFX2M S2_3_2 ( .A(\ab[3][2] ), .B(\CARRYB[2][2] ), .CI(\SUMB[2][3] ), .CO(
        \CARRYB[3][2] ), .S(\SUMB[3][2] ) );
  ADDFX2M S2_3_1 ( .A(\ab[3][1] ), .B(\CARRYB[2][1] ), .CI(\SUMB[2][2] ), .CO(
        \CARRYB[3][1] ), .S(\SUMB[3][1] ) );
  ADDFX2M S2_3_5 ( .A(\ab[3][5] ), .B(\CARRYB[2][5] ), .CI(\SUMB[2][6] ), .CO(
        \CARRYB[3][5] ), .S(\SUMB[3][5] ) );
  ADDFX2M S2_2_2 ( .A(\ab[2][2] ), .B(n6), .CI(\SUMB[1][3] ), .CO(
        \CARRYB[2][2] ), .S(\SUMB[2][2] ) );
  ADDFX2M S2_2_1 ( .A(\ab[2][1] ), .B(n5), .CI(\SUMB[1][2] ), .CO(
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
  ADDFX2M S2_2_4 ( .A(\ab[2][4] ), .B(n4), .CI(\SUMB[1][5] ), .CO(
        \CARRYB[2][4] ), .S(\SUMB[2][4] ) );
  ADDFX2M S2_2_3 ( .A(\ab[2][3] ), .B(n3), .CI(\SUMB[1][4] ), .CO(
        \CARRYB[2][3] ), .S(\SUMB[2][3] ) );
  ADDFX2M S3_2_6 ( .A(\ab[2][6] ), .B(n9), .CI(\ab[1][7] ), .CO(\CARRYB[2][6] ), .S(\SUMB[2][6] ) );
  ADDFX2M S2_2_5 ( .A(\ab[2][5] ), .B(n8), .CI(\SUMB[1][6] ), .CO(
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
  AND2X2M U2 ( .A(\ab[0][4] ), .B(\ab[1][3] ), .Y(n3) );
  AND2X2M U3 ( .A(\ab[0][5] ), .B(\ab[1][4] ), .Y(n4) );
  AND2X2M U4 ( .A(\ab[0][2] ), .B(\ab[1][1] ), .Y(n5) );
  AND2X2M U5 ( .A(\ab[0][3] ), .B(\ab[1][2] ), .Y(n6) );
  AND2X2M U6 ( .A(\ab[0][1] ), .B(\ab[1][0] ), .Y(n7) );
  AND2X2M U7 ( .A(\ab[0][6] ), .B(\ab[1][5] ), .Y(n8) );
  AND2X2M U8 ( .A(\ab[0][7] ), .B(\ab[1][6] ), .Y(n9) );
  AND2X2M U9 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(n10) );
  INVX2M U10 ( .A(\ab[0][6] ), .Y(n22) );
  CLKXOR2X2M U11 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(\A1[7] ) );
  CLKXOR2X2M U12 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(\A1[8] ) );
  INVX2M U13 ( .A(\ab[0][7] ), .Y(n23) );
  INVX2M U14 ( .A(\ab[0][4] ), .Y(n20) );
  INVX2M U15 ( .A(\ab[0][5] ), .Y(n21) );
  INVX2M U16 ( .A(\ab[0][3] ), .Y(n19) );
  AND2X2M U17 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(n11) );
  AND2X2M U18 ( .A(\CARRYB[7][0] ), .B(\SUMB[7][1] ), .Y(n12) );
  CLKXOR2X2M U19 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(\A1[9] ) );
  CLKXOR2X2M U20 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(\A1[10] ) );
  CLKXOR2X2M U21 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(\A1[11] ) );
  INVX2M U22 ( .A(\ab[0][2] ), .Y(n18) );
  AND2X2M U23 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(n13) );
  AND2X2M U24 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(n14) );
  AND2X2M U25 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(n15) );
  CLKXOR2X2M U26 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(\A1[12] ) );
  XNOR2X2M U27 ( .A(\CARRYB[7][0] ), .B(n17), .Y(\A1[6] ) );
  INVX2M U28 ( .A(\SUMB[7][1] ), .Y(n17) );
  AND2X2M U29 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(n16) );
  CLKXOR2X2M U30 ( .A(\ab[1][0] ), .B(\ab[0][1] ), .Y(PRODUCT[1]) );
  XNOR2X2M U31 ( .A(\ab[1][6] ), .B(n23), .Y(\SUMB[1][6] ) );
  XNOR2X2M U32 ( .A(\ab[1][4] ), .B(n21), .Y(\SUMB[1][4] ) );
  XNOR2X2M U33 ( .A(\ab[1][5] ), .B(n22), .Y(\SUMB[1][5] ) );
  XNOR2X2M U34 ( .A(\ab[1][2] ), .B(n19), .Y(\SUMB[1][2] ) );
  XNOR2X2M U35 ( .A(\ab[1][3] ), .B(n20), .Y(\SUMB[1][3] ) );
  INVX2M U36 ( .A(A[1]), .Y(n38) );
  INVX2M U37 ( .A(A[0]), .Y(n39) );
  INVX2M U38 ( .A(A[2]), .Y(n37) );
  INVX2M U39 ( .A(B[6]), .Y(n25) );
  XNOR2X2M U40 ( .A(\ab[1][1] ), .B(n18), .Y(\SUMB[1][1] ) );
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
endmodule


module ALU_DATA_WIDTH8_FUN_WIDTH4_OUT_WIDTH16 ( clk, rst_n, op_a, op_b, 
        alu_fun, alu_en, alu_out_valid, alu_out );
  input [7:0] op_a;
  input [7:0] op_b;
  input [3:0] alu_fun;
  output [15:0] alu_out;
  input clk, rst_n, alu_en;
  output alu_out_valid;
  wire   N63, N64, N65, N66, N67, N68, N69, N70, N71, N72, N73, N74, N75, N76,
         N77, N78, N79, N80, N81, N82, N83, N84, N85, N86, N87, N88, N89, N90,
         N91, N92, N93, N94, N95, N96, N97, N98, N99, N100, N101, N102, N103,
         N104, N153, N154, N155, n10, n11, n12, n13, n14, n16, n18, n19, n20,
         n21, n22, n24, n27, n28, n29, n30, n31, n34, n36, n37, n38, n39, n40,
         n41, n42, n44, n45, n46, n49, n50, n51, n52, n53, n55, n57, n58, n59,
         n60, n61, n63, n65, n66, n67, n68, n69, n71, n73, n74, n75, n76, n77,
         n79, n81, n82, n83, n84, n85, n87, n89, n90, n93, n94, n95, n96, n98,
         n100, n101, n102, n105, n106, n107, n108, n109, n110, n111, n113,
         n114, n115, n116, n117, n118, n120, n121, n122, n123, n124, n125,
         n126, n127, n128, n129, n3, n4, n5, n6, n7, n8, n9, n15, n17, n23,
         n25, n26, n32, n33, n35, n43, n47, n48, n54, n56, n62, n64, n70, n72,
         n78, n80, n86, n88, n91, n92, n97, n99, n103, n104, n112, n119, n130,
         n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, n141,
         n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152,
         n153, n154, n155, n156, n157, n158, n159, n160, n161, n162, n163,
         n164, n165, n166, n167, n168, n169, n170;
  wire   [7:0] a;
  wire   [7:0] b;

  ALU_DATA_WIDTH8_FUN_WIDTH4_OUT_WIDTH16_DW_div_uns_0 div_50 ( .a({n32, n26, 
        n25, n23, n17, n15, n9, n8}), .b({b[7], n33, b[5:0]}), .quotient({N104, 
        N103, N102, N101, N100, N99, N98, N97}) );
  ALU_DATA_WIDTH8_FUN_WIDTH4_OUT_WIDTH16_DW01_sub_0 sub_47 ( .A({1'b0, n32, 
        n26, n25, n23, n17, n15, n9, n8}), .B({1'b0, b[7], n33, b[5:0]}), .CI(
        1'b0), .DIFF({N80, N79, N78, N77, N76, N75, N74, N73, N72}) );
  ALU_DATA_WIDTH8_FUN_WIDTH4_OUT_WIDTH16_DW01_add_0 add_44 ( .A({1'b0, n32, 
        n26, n25, n23, n17, n15, n9, n8}), .B({1'b0, b[7], n33, b[5:0]}), .CI(
        1'b0), .SUM({N71, N70, N69, N68, N67, N66, N65, N64, N63}) );
  ALU_DATA_WIDTH8_FUN_WIDTH4_OUT_WIDTH16_DW02_mult_0 mult_49 ( .A({n32, n26, 
        n25, n23, n17, n15, n9, n8}), .B({b[7], n33, b[5:0]}), .TC(1'b0), 
        .PRODUCT({N96, N95, N94, N93, N92, N91, N90, N89, N88, N87, N86, N85, 
        N84, N83, N82, N81}) );
  DFFRQX2M \alu_out_reg[7]  ( .D(n128), .CK(clk), .RN(n3), .Q(alu_out[7]) );
  DFFRQX2M \alu_out_reg[6]  ( .D(n127), .CK(clk), .RN(n4), .Q(alu_out[6]) );
  DFFRQX2M \alu_out_reg[5]  ( .D(n126), .CK(clk), .RN(n4), .Q(alu_out[5]) );
  DFFRQX2M \alu_out_reg[4]  ( .D(n125), .CK(clk), .RN(n4), .Q(alu_out[4]) );
  DFFRQX2M \alu_out_reg[3]  ( .D(n124), .CK(clk), .RN(n4), .Q(alu_out[3]) );
  DFFRQX2M \alu_out_reg[2]  ( .D(n123), .CK(clk), .RN(n4), .Q(alu_out[2]) );
  DFFRQX2M \alu_out_reg[1]  ( .D(n122), .CK(clk), .RN(n4), .Q(alu_out[1]) );
  DFFRQX2M \alu_out_reg[0]  ( .D(n121), .CK(clk), .RN(n4), .Q(alu_out[0]) );
  DFFRQX2M \alu_out_reg[8]  ( .D(n129), .CK(clk), .RN(n3), .Q(alu_out[8]) );
  DFFRQX2M \alu_out_reg[15]  ( .D(n143), .CK(clk), .RN(n3), .Q(alu_out[15]) );
  DFFRQX2M \alu_out_reg[14]  ( .D(n144), .CK(clk), .RN(n3), .Q(alu_out[14]) );
  DFFRQX2M \alu_out_reg[13]  ( .D(n145), .CK(clk), .RN(n3), .Q(alu_out[13]) );
  DFFRQX2M \alu_out_reg[12]  ( .D(n146), .CK(clk), .RN(n3), .Q(alu_out[12]) );
  DFFRQX2M \alu_out_reg[11]  ( .D(n147), .CK(clk), .RN(n3), .Q(alu_out[11]) );
  DFFRQX2M \alu_out_reg[10]  ( .D(n148), .CK(clk), .RN(n3), .Q(alu_out[10]) );
  DFFRQX2M \alu_out_reg[9]  ( .D(n149), .CK(clk), .RN(n3), .Q(alu_out[9]) );
  DFFRQX2M alu_out_valid_reg ( .D(alu_en), .CK(clk), .RN(n3), .Q(alu_out_valid) );
  DFFRQX2M \a_reg[1]  ( .D(op_a[1]), .CK(clk), .RN(n3), .Q(a[1]) );
  DFFRQX2M \a_reg[0]  ( .D(op_a[0]), .CK(clk), .RN(n3), .Q(a[0]) );
  DFFRQX2M \a_reg[2]  ( .D(op_a[2]), .CK(clk), .RN(n3), .Q(a[2]) );
  DFFRQX2M \a_reg[3]  ( .D(op_a[3]), .CK(clk), .RN(n4), .Q(a[3]) );
  DFFRQX2M \a_reg[4]  ( .D(op_a[4]), .CK(clk), .RN(n4), .Q(a[4]) );
  DFFRQX2M \a_reg[5]  ( .D(op_a[5]), .CK(clk), .RN(n4), .Q(a[5]) );
  DFFRQX2M \a_reg[6]  ( .D(op_a[6]), .CK(clk), .RN(n4), .Q(a[6]) );
  DFFRQX2M \b_reg[6]  ( .D(op_b[6]), .CK(clk), .RN(rst_n), .Q(b[6]) );
  DFFRQX2M \a_reg[7]  ( .D(op_a[7]), .CK(clk), .RN(n4), .Q(a[7]) );
  DFFRQX2M \b_reg[7]  ( .D(op_b[7]), .CK(clk), .RN(rst_n), .Q(b[7]) );
  DFFRQX2M \b_reg[5]  ( .D(op_b[5]), .CK(clk), .RN(rst_n), .Q(b[5]) );
  DFFRQX2M \b_reg[4]  ( .D(op_b[4]), .CK(clk), .RN(rst_n), .Q(b[4]) );
  DFFRQX2M \b_reg[1]  ( .D(op_b[1]), .CK(clk), .RN(rst_n), .Q(b[1]) );
  DFFRQX2M \b_reg[3]  ( .D(op_b[3]), .CK(clk), .RN(rst_n), .Q(b[3]) );
  DFFRQX2M \b_reg[2]  ( .D(op_b[2]), .CK(clk), .RN(rst_n), .Q(b[2]) );
  DFFRQX2M \b_reg[0]  ( .D(op_b[0]), .CK(clk), .RN(n4), .Q(b[0]) );
  BUFX2M U3 ( .A(a[6]), .Y(n26) );
  INVX2M U4 ( .A(alu_en), .Y(n162) );
  INVX2M U7 ( .A(n27), .Y(n153) );
  INVX2M U8 ( .A(n19), .Y(n151) );
  INVX2M U9 ( .A(n5), .Y(n4) );
  AOI222X1M U10 ( .A0(N88), .A1(n7), .B0(N104), .B1(n31), .C0(n153), .C1(n136), 
        .Y(n96) );
  NOR3BX2M U11 ( .AN(n98), .B(n160), .C(n161), .Y(n31) );
  NAND4BX1M U12 ( .AN(n100), .B(alu_en), .C(n161), .D(n154), .Y(n27) );
  NAND3X2M U13 ( .A(n159), .B(n18), .C(N155), .Y(n19) );
  INVX2M U14 ( .A(n107), .Y(n150) );
  INVX2M U15 ( .A(n89), .Y(n157) );
  INVX2M U16 ( .A(n24), .Y(n156) );
  NOR3X2M U17 ( .A(n154), .B(n162), .C(n161), .Y(n44) );
  NOR2BX2M U18 ( .AN(n18), .B(n100), .Y(n40) );
  NOR2BX2M U19 ( .AN(n44), .B(n90), .Y(n30) );
  INVX2M U20 ( .A(n29), .Y(n152) );
  INVX2M U21 ( .A(n90), .Y(n159) );
  BUFX2M U22 ( .A(n6), .Y(n5) );
  INVX2M U23 ( .A(n6), .Y(n3) );
  AOI222X1M U24 ( .A0(n9), .A1(n30), .B0(N97), .B1(n31), .C0(n153), .C1(n170), 
        .Y(n11) );
  AOI222X1M U25 ( .A0(n15), .A1(n30), .B0(N98), .B1(n31), .C0(n153), .C1(n134), 
        .Y(n37) );
  AOI222X1M U26 ( .A0(N87), .A1(n7), .B0(n153), .B1(n135), .C0(n32), .C1(n30), 
        .Y(n82) );
  INVX2M U27 ( .A(n33), .Y(n142) );
  AOI211X2M U28 ( .A0(N80), .A1(n21), .B0(n156), .C0(n153), .Y(n107) );
  NOR3X2M U29 ( .A(n162), .B(alu_fun[0]), .C(n106), .Y(n89) );
  NAND2X2M U30 ( .A(n42), .B(n19), .Y(n41) );
  NAND4X2M U31 ( .A(N154), .B(n44), .C(alu_fun[1]), .D(n158), .Y(n42) );
  OAI221X1M U32 ( .A0(n8), .A1(n24), .B0(n157), .B1(n170), .C0(n27), .Y(n22)
         );
  OAI221X1M U33 ( .A0(n9), .A1(n24), .B0(n157), .B1(n134), .C0(n27), .Y(n46)
         );
  OAI221X1M U34 ( .A0(n26), .A1(n24), .B0(n157), .B1(n135), .C0(n27), .Y(n85)
         );
  OAI221X1M U35 ( .A0(n28), .A1(n135), .B0(n26), .B1(n157), .C0(n29), .Y(n87)
         );
  NOR2BX2M U36 ( .AN(n110), .B(alu_fun[0]), .Y(n14) );
  NOR3X2M U37 ( .A(alu_fun[2]), .B(alu_fun[3]), .C(n162), .Y(n98) );
  NAND3X2M U38 ( .A(alu_en), .B(n120), .C(alu_fun[0]), .Y(n24) );
  OAI21X2M U39 ( .A0(alu_fun[3]), .A1(n100), .B0(n106), .Y(n120) );
  INVX2M U40 ( .A(n26), .Y(n135) );
  INVX2M U41 ( .A(alu_fun[1]), .Y(n160) );
  NAND3X2M U42 ( .A(n160), .B(n158), .C(alu_fun[3]), .Y(n106) );
  NOR2BX2M U43 ( .AN(n98), .B(alu_fun[1]), .Y(n110) );
  AND2X2M U44 ( .A(n110), .B(alu_fun[0]), .Y(n21) );
  AND4X2M U45 ( .A(N153), .B(n158), .C(n18), .D(alu_fun[1]), .Y(n16) );
  BUFX2M U46 ( .A(n34), .Y(n7) );
  NOR3BX2M U47 ( .AN(n98), .B(n160), .C(alu_fun[0]), .Y(n34) );
  INVX2M U48 ( .A(n9), .Y(n134) );
  AOI221XLM U49 ( .A0(n32), .A1(n89), .B0(n156), .B1(n136), .C0(n153), .Y(n102) );
  AOI221XLM U50 ( .A0(n89), .A1(n136), .B0(n32), .B1(n155), .C0(n152), .Y(n101) );
  INVX2M U51 ( .A(n28), .Y(n155) );
  NOR3X2M U52 ( .A(n162), .B(alu_fun[0]), .C(n154), .Y(n18) );
  NAND4X2M U53 ( .A(alu_fun[0]), .B(n159), .C(alu_en), .D(n154), .Y(n29) );
  OAI221X1M U54 ( .A0(n170), .A1(n28), .B0(n8), .B1(n157), .C0(n29), .Y(n20)
         );
  OAI221X1M U55 ( .A0(n28), .A1(n134), .B0(n9), .B1(n157), .C0(n29), .Y(n45)
         );
  NAND2X2M U56 ( .A(alu_fun[1]), .B(alu_fun[2]), .Y(n100) );
  NAND2X2M U57 ( .A(alu_fun[2]), .B(n160), .Y(n90) );
  INVX2M U58 ( .A(alu_fun[3]), .Y(n154) );
  INVX2M U59 ( .A(alu_fun[0]), .Y(n161) );
  INVX2M U60 ( .A(alu_fun[2]), .Y(n158) );
  NAND2X2M U61 ( .A(alu_en), .B(n105), .Y(n28) );
  OAI22X1M U62 ( .A0(n161), .A1(n106), .B0(alu_fun[3]), .B1(n90), .Y(n105) );
  INVX2M U63 ( .A(n32), .Y(n136) );
  INVX2M U64 ( .A(n8), .Y(n170) );
  INVX2M U65 ( .A(n15), .Y(n169) );
  INVX2M U66 ( .A(n17), .Y(n168) );
  INVX2M U67 ( .A(n23), .Y(n167) );
  INVX2M U68 ( .A(n25), .Y(n166) );
  INVX2M U69 ( .A(rst_n), .Y(n6) );
  NAND4X2M U70 ( .A(n10), .B(n11), .C(n12), .D(n13), .Y(n121) );
  AOI222X1M U71 ( .A0(b[0]), .A1(n20), .B0(N72), .B1(n21), .C0(n22), .C1(n137), 
        .Y(n12) );
  AOI222X1M U72 ( .A0(alu_out[0]), .A1(n162), .B0(N81), .B1(n7), .C0(n152), 
        .C1(n8), .Y(n10) );
  AOI211X2M U73 ( .A0(N63), .A1(n14), .B0(n151), .C0(n16), .Y(n13) );
  BUFX2M U74 ( .A(a[7]), .Y(n32) );
  BUFX2M U75 ( .A(b[6]), .Y(n33) );
  NAND4X2M U76 ( .A(n36), .B(n37), .C(n38), .D(n39), .Y(n122) );
  AOI222X1M U77 ( .A0(b[1]), .A1(n45), .B0(N73), .B1(n21), .C0(n46), .C1(n165), 
        .Y(n38) );
  AOI222X1M U78 ( .A0(alu_out[1]), .A1(n162), .B0(N82), .B1(n7), .C0(n152), 
        .C1(n9), .Y(n36) );
  AOI221XLM U79 ( .A0(n40), .A1(n8), .B0(N64), .B1(n14), .C0(n41), .Y(n39) );
  BUFX2M U80 ( .A(a[5]), .Y(n25) );
  AOI222X1M U81 ( .A0(N99), .A1(n31), .B0(n53), .B1(n139), .C0(b[2]), .C1(n55), 
        .Y(n51) );
  OAI221X1M U82 ( .A0(n15), .A1(n24), .B0(n157), .B1(n169), .C0(n27), .Y(n53)
         );
  OAI221X1M U83 ( .A0(n28), .A1(n169), .B0(n15), .B1(n157), .C0(n29), .Y(n55)
         );
  NAND4X2M U84 ( .A(n49), .B(n50), .C(n51), .D(n52), .Y(n123) );
  AOI22X1M U85 ( .A0(n15), .A1(n152), .B0(alu_out[2]), .B1(n162), .Y(n49) );
  AOI222X1M U86 ( .A0(N83), .A1(n7), .B0(n153), .B1(n169), .C0(n17), .C1(n30), 
        .Y(n50) );
  AOI222X1M U87 ( .A0(N74), .A1(n21), .B0(n40), .B1(n9), .C0(N65), .C1(n14), 
        .Y(n52) );
  BUFX2M U88 ( .A(a[4]), .Y(n23) );
  BUFX2M U89 ( .A(a[3]), .Y(n17) );
  AOI222X1M U90 ( .A0(N100), .A1(n31), .B0(n61), .B1(n141), .C0(b[3]), .C1(n63), .Y(n59) );
  OAI221X1M U91 ( .A0(n17), .A1(n24), .B0(n157), .B1(n168), .C0(n27), .Y(n61)
         );
  OAI221X1M U92 ( .A0(n28), .A1(n168), .B0(n17), .B1(n157), .C0(n29), .Y(n63)
         );
  NAND4X2M U93 ( .A(n57), .B(n58), .C(n59), .D(n60), .Y(n124) );
  AOI22X1M U94 ( .A0(n17), .A1(n152), .B0(alu_out[3]), .B1(n162), .Y(n57) );
  AOI222X1M U95 ( .A0(N75), .A1(n21), .B0(n15), .B1(n40), .C0(N66), .C1(n14), 
        .Y(n60) );
  AOI222X1M U96 ( .A0(N84), .A1(n7), .B0(n153), .B1(n168), .C0(n23), .C1(n30), 
        .Y(n58) );
  BUFX2M U97 ( .A(a[2]), .Y(n15) );
  AOI222X1M U98 ( .A0(N101), .A1(n31), .B0(n69), .B1(n164), .C0(b[4]), .C1(n71), .Y(n67) );
  INVX2M U99 ( .A(b[4]), .Y(n164) );
  OAI221X1M U100 ( .A0(n23), .A1(n24), .B0(n157), .B1(n167), .C0(n27), .Y(n69)
         );
  OAI221X1M U101 ( .A0(n28), .A1(n167), .B0(n23), .B1(n157), .C0(n29), .Y(n71)
         );
  INVX2M U102 ( .A(n117), .Y(n144) );
  AOI221XLM U103 ( .A0(N95), .A1(n7), .B0(alu_out[14]), .B1(n162), .C0(n150), 
        .Y(n117) );
  INVX2M U104 ( .A(n118), .Y(n143) );
  AOI221XLM U105 ( .A0(N96), .A1(n7), .B0(alu_out[15]), .B1(n162), .C0(n150), 
        .Y(n118) );
  NAND4X2M U106 ( .A(n65), .B(n66), .C(n67), .D(n68), .Y(n125) );
  AOI22X1M U107 ( .A0(n23), .A1(n152), .B0(alu_out[4]), .B1(n162), .Y(n65) );
  AOI222X1M U108 ( .A0(N76), .A1(n21), .B0(n17), .B1(n40), .C0(N67), .C1(n14), 
        .Y(n68) );
  AOI222X1M U109 ( .A0(N85), .A1(n7), .B0(n153), .B1(n167), .C0(n25), .C1(n30), 
        .Y(n66) );
  BUFX2M U110 ( .A(a[1]), .Y(n9) );
  BUFX2M U111 ( .A(a[0]), .Y(n8) );
  INVX2M U112 ( .A(n114), .Y(n147) );
  AOI221XLM U113 ( .A0(N92), .A1(n7), .B0(alu_out[11]), .B1(n162), .C0(n150), 
        .Y(n114) );
  INVX2M U114 ( .A(n115), .Y(n146) );
  AOI221XLM U115 ( .A0(N93), .A1(n7), .B0(alu_out[12]), .B1(n162), .C0(n150), 
        .Y(n115) );
  INVX2M U116 ( .A(n116), .Y(n145) );
  AOI221XLM U117 ( .A0(N94), .A1(n7), .B0(alu_out[13]), .B1(n162), .C0(n150), 
        .Y(n116) );
  INVX2M U118 ( .A(n113), .Y(n148) );
  AOI221XLM U119 ( .A0(N91), .A1(n7), .B0(alu_out[10]), .B1(n162), .C0(n150), 
        .Y(n113) );
  AOI222X1M U120 ( .A0(N102), .A1(n31), .B0(n77), .B1(n163), .C0(b[5]), .C1(
        n79), .Y(n75) );
  INVX2M U121 ( .A(b[5]), .Y(n163) );
  OAI221X1M U122 ( .A0(n25), .A1(n24), .B0(n157), .B1(n166), .C0(n27), .Y(n77)
         );
  OAI221X1M U123 ( .A0(n28), .A1(n166), .B0(n25), .B1(n157), .C0(n29), .Y(n79)
         );
  INVX2M U124 ( .A(n111), .Y(n149) );
  AOI221XLM U125 ( .A0(N90), .A1(n7), .B0(alu_out[9]), .B1(n162), .C0(n150), 
        .Y(n111) );
  NAND4X2M U126 ( .A(n73), .B(n74), .C(n75), .D(n76), .Y(n126) );
  AOI22X1M U127 ( .A0(n25), .A1(n152), .B0(alu_out[5]), .B1(n162), .Y(n73) );
  AOI222X1M U128 ( .A0(N77), .A1(n21), .B0(n23), .B1(n40), .C0(N68), .C1(n14), 
        .Y(n76) );
  AOI222X1M U129 ( .A0(N86), .A1(n7), .B0(n153), .B1(n166), .C0(n26), .C1(n30), 
        .Y(n74) );
  NAND4X2M U130 ( .A(n81), .B(n82), .C(n83), .D(n84), .Y(n127) );
  AOI22X1M U131 ( .A0(n26), .A1(n152), .B0(alu_out[6]), .B1(n162), .Y(n81) );
  AOI222X1M U132 ( .A0(N78), .A1(n21), .B0(n25), .B1(n40), .C0(N69), .C1(n14), 
        .Y(n84) );
  AOI222X1M U133 ( .A0(N103), .A1(n31), .B0(n85), .B1(n142), .C0(n33), .C1(n87), .Y(n83) );
  NAND4BX1M U134 ( .AN(n93), .B(n94), .C(n95), .D(n96), .Y(n128) );
  AOI22X1M U135 ( .A0(n32), .A1(n152), .B0(alu_out[7]), .B1(n162), .Y(n95) );
  OAI2B2X1M U136 ( .A1N(b[7]), .A0(n101), .B0(b[7]), .B1(n102), .Y(n93) );
  AOI222X1M U137 ( .A0(N79), .A1(n21), .B0(n26), .B1(n40), .C0(N70), .C1(n14), 
        .Y(n94) );
  OAI2B11X2M U138 ( .A1N(alu_out[8]), .A0(alu_en), .B0(n107), .C0(n108), .Y(
        n129) );
  AOI221XLM U139 ( .A0(N89), .A1(n7), .B0(N71), .B1(n14), .C0(n109), .Y(n108)
         );
  NOR4X1M U140 ( .A(alu_fun[0]), .B(n162), .C(n100), .D(n136), .Y(n109) );
  INVX2M U141 ( .A(n35), .Y(n138) );
  INVX2M U142 ( .A(n80), .Y(n140) );
  INVX2M U143 ( .A(b[0]), .Y(n137) );
  INVX2M U144 ( .A(b[2]), .Y(n139) );
  INVX2M U145 ( .A(b[3]), .Y(n141) );
  INVX2M U146 ( .A(b[1]), .Y(n165) );
  NOR2X1M U147 ( .A(n136), .B(b[7]), .Y(n130) );
  NAND2BX1M U148 ( .AN(b[4]), .B(n23), .Y(n92) );
  NAND2BX1M U149 ( .AN(n23), .B(b[4]), .Y(n54) );
  CLKNAND2X2M U150 ( .A(n92), .B(n54), .Y(n99) );
  NOR2X1M U151 ( .A(n141), .B(n17), .Y(n86) );
  NOR2X1M U152 ( .A(n139), .B(n15), .Y(n48) );
  NOR2X1M U153 ( .A(n137), .B(n8), .Y(n35) );
  CLKNAND2X2M U154 ( .A(n15), .B(n139), .Y(n91) );
  NAND2BX1M U155 ( .AN(n48), .B(n91), .Y(n72) );
  AOI21X1M U156 ( .A0(n35), .A1(n134), .B0(b[1]), .Y(n43) );
  AOI211X1M U157 ( .A0(n9), .A1(n138), .B0(n72), .C0(n43), .Y(n47) );
  CLKNAND2X2M U158 ( .A(n17), .B(n141), .Y(n88) );
  OAI31X1M U159 ( .A0(n86), .A1(n48), .A2(n47), .B0(n88), .Y(n56) );
  NAND2BX1M U160 ( .AN(n25), .B(b[5]), .Y(n112) );
  OAI211X1M U161 ( .A0(n99), .A1(n56), .B0(n54), .C0(n112), .Y(n62) );
  NAND2BX1M U162 ( .AN(b[5]), .B(n25), .Y(n97) );
  XNOR2X1M U163 ( .A(n26), .B(n33), .Y(n104) );
  AOI32X1M U164 ( .A0(n62), .A1(n97), .A2(n104), .B0(n33), .B1(n135), .Y(n64)
         );
  CLKNAND2X2M U165 ( .A(b[7]), .B(n136), .Y(n131) );
  OAI21X1M U166 ( .A0(n130), .A1(n64), .B0(n131), .Y(N155) );
  CLKNAND2X2M U167 ( .A(n8), .B(n137), .Y(n78) );
  OA21X1M U168 ( .A0(n78), .A1(n134), .B0(b[1]), .Y(n70) );
  AOI211X1M U169 ( .A0(n78), .A1(n134), .B0(n72), .C0(n70), .Y(n80) );
  AOI31X1M U170 ( .A0(n140), .A1(n91), .A2(n88), .B0(n86), .Y(n103) );
  OAI2B11X1M U171 ( .A1N(n103), .A0(n99), .B0(n97), .C0(n92), .Y(n119) );
  AOI32X1M U172 ( .A0(n119), .A1(n112), .A2(n104), .B0(n26), .B1(n142), .Y(
        n132) );
  AOI2B1X1M U173 ( .A1N(n132), .A0(n131), .B0(n130), .Y(n133) );
  CLKINVX1M U174 ( .A(n133), .Y(N154) );
  NOR2X1M U175 ( .A(N155), .B(N154), .Y(N153) );
endmodule


module RegFile_ADDR_WIDTH4_DATA_WIDTH8 ( clk, rst_n, addr, wr_en, rd_en, 
        wr_data, rd_data, rd_data_valid, reg_0, reg_1, reg_2, reg_3 );
  input [3:0] addr;
  input [7:0] wr_data;
  output [7:0] rd_data;
  output [7:0] reg_0;
  output [7:0] reg_1;
  output [7:0] reg_2;
  output [7:0] reg_3;
  input clk, rst_n, wr_en, rd_en;
  output rd_data_valid;
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
         N40, N41, N42, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66,
         n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80,
         n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94,
         n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106,
         n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117,
         n118, n119, n120, n121, n122, n123, n124, n125, n126, n127, n128,
         n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139,
         n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n150,
         n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161,
         n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n172,
         n173, n174, n175, n176, n177, n178, n1, n2, n3, n4, n5, n6, n7, n8,
         n9, n10, n11, n12, n13, n179, n180, n181, n182, n183, n184, n185,
         n186, n187, n188, n189, n190, n191, n192, n193, n194, n195, n196,
         n197, n198, n199, n200, n201, n202, n203, n204, n205, n206, n207,
         n208, n209, n210, n211, n212, n213, n214, n215, n216, n217, n218,
         n219, n220, n221, n222, n223, n224, n225, n226, n227, n228, n229,
         n230, n231, n232, n233, n234, n235, n236, n237, n238, n239, n240,
         n241, n242, n243, n244, n245, n246, n247, n248, n249, n250, n251,
         n252, n253, n254, n255, n256, n257, n258, n259, n260, n261, n262,
         n263, n264, n265, n266, n267, n268, n269, n270, n271, n272, n273,
         n274, n275, n276, n277, n278, n279, n280, n281, n282, n283, n284,
         n285, n286, n287, n288, n289, n290, n291, n292, n293, n294, n295,
         n296, n297, n298, n299, n300, n301, n302, n303, n304, n305;
  assign N10 = addr[0];
  assign N11 = addr[1];
  assign N12 = addr[2];
  assign N13 = addr[3];

  DFFSQX2M \mem_reg[2][0]  ( .D(n155), .CK(clk), .SN(n280), .Q(reg_2[0]) );
  DFFRQX2M \mem_reg[5][7]  ( .D(n138), .CK(clk), .RN(n283), .Q(\mem[5][7] ) );
  DFFRQX2M \mem_reg[5][6]  ( .D(n137), .CK(clk), .RN(n282), .Q(\mem[5][6] ) );
  DFFRQX2M \mem_reg[5][5]  ( .D(n136), .CK(clk), .RN(n282), .Q(\mem[5][5] ) );
  DFFRQX2M \mem_reg[5][4]  ( .D(n135), .CK(clk), .RN(n282), .Q(\mem[5][4] ) );
  DFFRQX2M \mem_reg[5][3]  ( .D(n134), .CK(clk), .RN(n282), .Q(\mem[5][3] ) );
  DFFRQX2M \mem_reg[5][2]  ( .D(n133), .CK(clk), .RN(n282), .Q(\mem[5][2] ) );
  DFFRQX2M \mem_reg[5][1]  ( .D(n132), .CK(clk), .RN(n282), .Q(\mem[5][1] ) );
  DFFRQX2M \mem_reg[5][0]  ( .D(n131), .CK(clk), .RN(n282), .Q(\mem[5][0] ) );
  DFFRQX2M \mem_reg[7][7]  ( .D(n122), .CK(clk), .RN(n283), .Q(\mem[7][7] ) );
  DFFRQX2M \mem_reg[7][6]  ( .D(n121), .CK(clk), .RN(n283), .Q(\mem[7][6] ) );
  DFFRQX2M \mem_reg[7][5]  ( .D(n120), .CK(clk), .RN(n283), .Q(\mem[7][5] ) );
  DFFRQX2M \mem_reg[7][4]  ( .D(n119), .CK(clk), .RN(n283), .Q(\mem[7][4] ) );
  DFFRQX2M \mem_reg[7][3]  ( .D(n118), .CK(clk), .RN(n283), .Q(\mem[7][3] ) );
  DFFRQX2M \mem_reg[7][2]  ( .D(n117), .CK(clk), .RN(n283), .Q(\mem[7][2] ) );
  DFFRQX2M \mem_reg[7][1]  ( .D(n116), .CK(clk), .RN(n283), .Q(\mem[7][1] ) );
  DFFRQX2M \mem_reg[7][0]  ( .D(n115), .CK(clk), .RN(n283), .Q(\mem[7][0] ) );
  DFFRQX2M \mem_reg[9][7]  ( .D(n106), .CK(clk), .RN(n284), .Q(\mem[9][7] ) );
  DFFRQX2M \mem_reg[9][6]  ( .D(n105), .CK(clk), .RN(n284), .Q(\mem[9][6] ) );
  DFFRQX2M \mem_reg[9][5]  ( .D(n104), .CK(clk), .RN(n284), .Q(\mem[9][5] ) );
  DFFRQX2M \mem_reg[9][4]  ( .D(n103), .CK(clk), .RN(n284), .Q(\mem[9][4] ) );
  DFFRQX2M \mem_reg[9][3]  ( .D(n102), .CK(clk), .RN(n284), .Q(\mem[9][3] ) );
  DFFRQX2M \mem_reg[9][2]  ( .D(n101), .CK(clk), .RN(n284), .Q(\mem[9][2] ) );
  DFFRQX2M \mem_reg[9][1]  ( .D(n100), .CK(clk), .RN(n284), .Q(\mem[9][1] ) );
  DFFRQX2M \mem_reg[9][0]  ( .D(n99), .CK(clk), .RN(n284), .Q(\mem[9][0] ) );
  DFFRQX2M \mem_reg[11][7]  ( .D(n90), .CK(clk), .RN(n285), .Q(\mem[11][7] )
         );
  DFFRQX2M \mem_reg[11][6]  ( .D(n89), .CK(clk), .RN(n285), .Q(\mem[11][6] )
         );
  DFFRQX2M \mem_reg[11][5]  ( .D(n88), .CK(clk), .RN(n285), .Q(\mem[11][5] )
         );
  DFFRQX2M \mem_reg[11][4]  ( .D(n87), .CK(clk), .RN(n285), .Q(\mem[11][4] )
         );
  DFFRQX2M \mem_reg[11][3]  ( .D(n86), .CK(clk), .RN(n285), .Q(\mem[11][3] )
         );
  DFFRQX2M \mem_reg[11][2]  ( .D(n85), .CK(clk), .RN(n285), .Q(\mem[11][2] )
         );
  DFFRQX2M \mem_reg[11][1]  ( .D(n84), .CK(clk), .RN(n285), .Q(\mem[11][1] )
         );
  DFFRQX2M \mem_reg[11][0]  ( .D(n83), .CK(clk), .RN(n287), .Q(\mem[11][0] )
         );
  DFFRQX2M \mem_reg[13][7]  ( .D(n74), .CK(clk), .RN(n286), .Q(\mem[13][7] )
         );
  DFFRQX2M \mem_reg[13][6]  ( .D(n73), .CK(clk), .RN(n286), .Q(\mem[13][6] )
         );
  DFFRQX2M \mem_reg[13][5]  ( .D(n72), .CK(clk), .RN(n286), .Q(\mem[13][5] )
         );
  DFFRQX2M \mem_reg[13][4]  ( .D(n71), .CK(clk), .RN(n286), .Q(\mem[13][4] )
         );
  DFFRQX2M \mem_reg[13][3]  ( .D(n70), .CK(clk), .RN(n286), .Q(\mem[13][3] )
         );
  DFFRQX2M \mem_reg[13][2]  ( .D(n69), .CK(clk), .RN(n286), .Q(\mem[13][2] )
         );
  DFFRQX2M \mem_reg[13][1]  ( .D(n68), .CK(clk), .RN(n288), .Q(\mem[13][1] )
         );
  DFFRQX2M \mem_reg[13][0]  ( .D(n67), .CK(clk), .RN(n288), .Q(\mem[13][0] )
         );
  DFFRQX2M \mem_reg[15][7]  ( .D(n58), .CK(clk), .RN(n287), .Q(\mem[15][7] )
         );
  DFFRQX2M \mem_reg[15][6]  ( .D(n57), .CK(clk), .RN(n287), .Q(\mem[15][6] )
         );
  DFFRQX2M \mem_reg[15][5]  ( .D(n56), .CK(clk), .RN(n287), .Q(\mem[15][5] )
         );
  DFFRQX2M \mem_reg[15][4]  ( .D(n55), .CK(clk), .RN(n287), .Q(\mem[15][4] )
         );
  DFFRQX2M \mem_reg[15][3]  ( .D(n54), .CK(clk), .RN(n280), .Q(\mem[15][3] )
         );
  DFFRQX2M \mem_reg[15][2]  ( .D(n53), .CK(clk), .RN(n287), .Q(\mem[15][2] )
         );
  DFFRQX2M \mem_reg[15][1]  ( .D(n52), .CK(clk), .RN(n289), .Q(\mem[15][1] )
         );
  DFFRQX2M \mem_reg[15][0]  ( .D(n51), .CK(clk), .RN(n289), .Q(\mem[15][0] )
         );
  DFFRQX2M \mem_reg[4][7]  ( .D(n146), .CK(clk), .RN(n281), .Q(\mem[4][7] ) );
  DFFRQX2M \mem_reg[4][6]  ( .D(n145), .CK(clk), .RN(n281), .Q(\mem[4][6] ) );
  DFFRQX2M \mem_reg[4][5]  ( .D(n144), .CK(clk), .RN(n281), .Q(\mem[4][5] ) );
  DFFRQX2M \mem_reg[4][4]  ( .D(n143), .CK(clk), .RN(n281), .Q(\mem[4][4] ) );
  DFFRQX2M \mem_reg[4][3]  ( .D(n142), .CK(clk), .RN(n283), .Q(\mem[4][3] ) );
  DFFRQX2M \mem_reg[4][2]  ( .D(n141), .CK(clk), .RN(n283), .Q(\mem[4][2] ) );
  DFFRQX2M \mem_reg[4][1]  ( .D(n140), .CK(clk), .RN(n283), .Q(\mem[4][1] ) );
  DFFRQX2M \mem_reg[4][0]  ( .D(n139), .CK(clk), .RN(n283), .Q(\mem[4][0] ) );
  DFFRQX2M \mem_reg[6][7]  ( .D(n130), .CK(clk), .RN(n282), .Q(\mem[6][7] ) );
  DFFRQX2M \mem_reg[6][6]  ( .D(n129), .CK(clk), .RN(n282), .Q(\mem[6][6] ) );
  DFFRQX2M \mem_reg[6][5]  ( .D(n128), .CK(clk), .RN(n282), .Q(\mem[6][5] ) );
  DFFRQX2M \mem_reg[6][4]  ( .D(n127), .CK(clk), .RN(n284), .Q(\mem[6][4] ) );
  DFFRQX2M \mem_reg[6][3]  ( .D(n126), .CK(clk), .RN(n284), .Q(\mem[6][3] ) );
  DFFRQX2M \mem_reg[6][2]  ( .D(n125), .CK(clk), .RN(n284), .Q(\mem[6][2] ) );
  DFFRQX2M \mem_reg[6][1]  ( .D(n124), .CK(clk), .RN(n284), .Q(\mem[6][1] ) );
  DFFRQX2M \mem_reg[6][0]  ( .D(n123), .CK(clk), .RN(n284), .Q(\mem[6][0] ) );
  DFFRQX2M \mem_reg[8][7]  ( .D(n114), .CK(clk), .RN(n283), .Q(\mem[8][7] ) );
  DFFRQX2M \mem_reg[8][6]  ( .D(n113), .CK(clk), .RN(n283), .Q(\mem[8][6] ) );
  DFFRQX2M \mem_reg[8][5]  ( .D(n112), .CK(clk), .RN(n285), .Q(\mem[8][5] ) );
  DFFRQX2M \mem_reg[8][4]  ( .D(n111), .CK(clk), .RN(n285), .Q(\mem[8][4] ) );
  DFFRQX2M \mem_reg[8][3]  ( .D(n110), .CK(clk), .RN(n285), .Q(\mem[8][3] ) );
  DFFRQX2M \mem_reg[8][2]  ( .D(n109), .CK(clk), .RN(n285), .Q(\mem[8][2] ) );
  DFFRQX2M \mem_reg[8][1]  ( .D(n108), .CK(clk), .RN(n285), .Q(\mem[8][1] ) );
  DFFRQX2M \mem_reg[8][0]  ( .D(n107), .CK(clk), .RN(n284), .Q(\mem[8][0] ) );
  DFFRQX2M \mem_reg[10][7]  ( .D(n98), .CK(clk), .RN(n286), .Q(\mem[10][7] )
         );
  DFFRQX2M \mem_reg[10][6]  ( .D(n97), .CK(clk), .RN(n286), .Q(\mem[10][6] )
         );
  DFFRQX2M \mem_reg[10][5]  ( .D(n96), .CK(clk), .RN(n286), .Q(\mem[10][5] )
         );
  DFFRQX2M \mem_reg[10][4]  ( .D(n95), .CK(clk), .RN(n286), .Q(\mem[10][4] )
         );
  DFFRQX2M \mem_reg[10][3]  ( .D(n94), .CK(clk), .RN(n286), .Q(\mem[10][3] )
         );
  DFFRQX2M \mem_reg[10][2]  ( .D(n93), .CK(clk), .RN(n286), .Q(\mem[10][2] )
         );
  DFFRQX2M \mem_reg[10][1]  ( .D(n92), .CK(clk), .RN(n285), .Q(\mem[10][1] )
         );
  DFFRQX2M \mem_reg[10][0]  ( .D(n91), .CK(clk), .RN(n285), .Q(\mem[10][0] )
         );
  DFFRQX2M \mem_reg[12][7]  ( .D(n82), .CK(clk), .RN(n287), .Q(\mem[12][7] )
         );
  DFFRQX2M \mem_reg[12][6]  ( .D(n81), .CK(clk), .RN(n287), .Q(\mem[12][6] )
         );
  DFFRQX2M \mem_reg[12][5]  ( .D(n80), .CK(clk), .RN(n287), .Q(\mem[12][5] )
         );
  DFFRQX2M \mem_reg[12][4]  ( .D(n79), .CK(clk), .RN(n287), .Q(\mem[12][4] )
         );
  DFFRQX2M \mem_reg[12][3]  ( .D(n78), .CK(clk), .RN(n287), .Q(\mem[12][3] )
         );
  DFFRQX2M \mem_reg[12][2]  ( .D(n77), .CK(clk), .RN(n286), .Q(\mem[12][2] )
         );
  DFFRQX2M \mem_reg[12][1]  ( .D(n76), .CK(clk), .RN(n286), .Q(\mem[12][1] )
         );
  DFFRQX2M \mem_reg[12][0]  ( .D(n75), .CK(clk), .RN(n286), .Q(\mem[12][0] )
         );
  DFFRQX2M \mem_reg[14][7]  ( .D(n66), .CK(clk), .RN(n288), .Q(\mem[14][7] )
         );
  DFFRQX2M \mem_reg[14][6]  ( .D(n65), .CK(clk), .RN(n288), .Q(\mem[14][6] )
         );
  DFFRQX2M \mem_reg[14][5]  ( .D(n64), .CK(clk), .RN(n288), .Q(\mem[14][5] )
         );
  DFFRQX2M \mem_reg[14][4]  ( .D(n63), .CK(clk), .RN(n287), .Q(\mem[14][4] )
         );
  DFFRQX2M \mem_reg[14][3]  ( .D(n62), .CK(clk), .RN(n288), .Q(\mem[14][3] )
         );
  DFFRQX2M \mem_reg[14][2]  ( .D(n61), .CK(clk), .RN(n287), .Q(\mem[14][2] )
         );
  DFFRQX2M \mem_reg[14][1]  ( .D(n60), .CK(clk), .RN(n287), .Q(\mem[14][1] )
         );
  DFFRQX2M \mem_reg[14][0]  ( .D(n59), .CK(clk), .RN(n287), .Q(\mem[14][0] )
         );
  DFFRQX2M \mem_reg[1][7]  ( .D(n170), .CK(clk), .RN(n280), .Q(reg_1[7]) );
  DFFRQX2M \mem_reg[1][6]  ( .D(n169), .CK(clk), .RN(n280), .Q(reg_1[6]) );
  DFFRQX2M \mem_reg[1][5]  ( .D(n168), .CK(clk), .RN(n280), .Q(reg_1[5]) );
  DFFRQX2M \mem_reg[1][4]  ( .D(n167), .CK(clk), .RN(n280), .Q(reg_1[4]) );
  DFFRQX2M \mem_reg[1][3]  ( .D(n166), .CK(clk), .RN(n280), .Q(reg_1[3]) );
  DFFRQX2M \mem_reg[1][2]  ( .D(n165), .CK(clk), .RN(n280), .Q(reg_1[2]) );
  DFFRQX2M \mem_reg[1][1]  ( .D(n164), .CK(clk), .RN(n280), .Q(reg_1[1]) );
  DFFRQX2M \mem_reg[1][0]  ( .D(n163), .CK(clk), .RN(n280), .Q(reg_1[0]) );
  DFFRQX2M \mem_reg[0][7]  ( .D(n178), .CK(clk), .RN(n288), .Q(reg_0[7]) );
  DFFRQX2M \mem_reg[0][6]  ( .D(n177), .CK(clk), .RN(n280), .Q(reg_0[6]) );
  DFFRQX2M \mem_reg[0][5]  ( .D(n176), .CK(clk), .RN(n284), .Q(reg_0[5]) );
  DFFRQX2M \mem_reg[0][4]  ( .D(n175), .CK(clk), .RN(n281), .Q(reg_0[4]) );
  DFFRQX2M \mem_reg[0][3]  ( .D(n174), .CK(clk), .RN(n281), .Q(reg_0[3]) );
  DFFRQX2M \mem_reg[0][2]  ( .D(n173), .CK(clk), .RN(n281), .Q(reg_0[2]) );
  DFFRQX2M \mem_reg[0][1]  ( .D(n172), .CK(clk), .RN(n281), .Q(reg_0[1]) );
  DFFRQX2M \mem_reg[0][0]  ( .D(n171), .CK(clk), .RN(n281), .Q(reg_0[0]) );
  DFFRQX2M \rd_data_reg[7]  ( .D(n50), .CK(clk), .RN(n288), .Q(rd_data[7]) );
  DFFRQX2M \rd_data_reg[6]  ( .D(n49), .CK(clk), .RN(n288), .Q(rd_data[6]) );
  DFFRQX2M \rd_data_reg[5]  ( .D(n48), .CK(clk), .RN(n288), .Q(rd_data[5]) );
  DFFRQX2M \rd_data_reg[4]  ( .D(n47), .CK(clk), .RN(n288), .Q(rd_data[4]) );
  DFFRQX2M \rd_data_reg[3]  ( .D(n46), .CK(clk), .RN(n288), .Q(rd_data[3]) );
  DFFRQX2M \rd_data_reg[2]  ( .D(n45), .CK(clk), .RN(n288), .Q(rd_data[2]) );
  DFFRQX2M \rd_data_reg[1]  ( .D(n44), .CK(clk), .RN(n288), .Q(rd_data[1]) );
  DFFRQX2M \rd_data_reg[0]  ( .D(n43), .CK(clk), .RN(n288), .Q(rd_data[0]) );
  DFFRQX2M \mem_reg[2][1]  ( .D(n156), .CK(clk), .RN(n282), .Q(reg_2[1]) );
  DFFRQX2M rd_data_valid_reg ( .D(n42), .CK(clk), .RN(n285), .Q(rd_data_valid)
         );
  DFFRQX2M \mem_reg[3][0]  ( .D(n147), .CK(clk), .RN(n281), .Q(reg_3[0]) );
  DFFRQX2M \mem_reg[3][2]  ( .D(n149), .CK(clk), .RN(n281), .Q(reg_3[2]) );
  DFFRQX2M \mem_reg[3][3]  ( .D(n150), .CK(clk), .RN(n281), .Q(reg_3[3]) );
  DFFRQX2M \mem_reg[3][1]  ( .D(n148), .CK(clk), .RN(n281), .Q(reg_3[1]) );
  DFFRQX2M \mem_reg[3][4]  ( .D(n151), .CK(clk), .RN(n281), .Q(reg_3[4]) );
  DFFSQX2M \mem_reg[3][5]  ( .D(n152), .CK(clk), .SN(n280), .Q(reg_3[5]) );
  DFFRQX2M \mem_reg[3][7]  ( .D(n154), .CK(clk), .RN(n282), .Q(reg_3[7]) );
  DFFRQX2M \mem_reg[3][6]  ( .D(n153), .CK(clk), .RN(n281), .Q(reg_3[6]) );
  DFFRQX2M \mem_reg[2][2]  ( .D(n157), .CK(clk), .RN(n282), .Q(reg_2[2]) );
  DFFRQX2M \mem_reg[2][3]  ( .D(n158), .CK(clk), .RN(n282), .Q(reg_2[3]) );
  DFFRQX2M \mem_reg[2][4]  ( .D(n159), .CK(clk), .RN(n282), .Q(reg_2[4]) );
  DFFRQX2M \mem_reg[2][5]  ( .D(n160), .CK(clk), .RN(n280), .Q(reg_2[5]) );
  DFFSQX2M \mem_reg[2][7]  ( .D(n162), .CK(clk), .SN(n280), .Q(reg_2[7]) );
  DFFRQX2M \mem_reg[2][6]  ( .D(n161), .CK(clk), .RN(n280), .Q(reg_2[6]) );
  NOR2X2M U3 ( .A(n305), .B(N11), .Y(n22) );
  NOR2X2M U4 ( .A(n271), .B(N12), .Y(n25) );
  NOR2X2M U5 ( .A(N11), .B(N12), .Y(n28) );
  INVX2M U6 ( .A(wr_data[6]), .Y(n298) );
  INVX2M U7 ( .A(wr_data[0]), .Y(n304) );
  INVX2M U8 ( .A(wr_data[2]), .Y(n302) );
  INVX2M U9 ( .A(wr_data[4]), .Y(n300) );
  INVX2M U10 ( .A(wr_data[1]), .Y(n303) );
  INVX2M U11 ( .A(wr_data[5]), .Y(n299) );
  INVX2M U12 ( .A(wr_data[3]), .Y(n301) );
  INVX2M U13 ( .A(wr_data[7]), .Y(n297) );
  INVX2M U14 ( .A(n273), .Y(n274) );
  BUFX2M U15 ( .A(n1), .Y(n273) );
  INVX2M U16 ( .A(n275), .Y(n276) );
  INVX2M U17 ( .A(n278), .Y(n279) );
  NAND2X2M U18 ( .A(n20), .B(n17), .Y(n19) );
  NAND2X2M U19 ( .A(n34), .B(n17), .Y(n33) );
  OR2X2M U20 ( .A(n271), .B(n272), .Y(n1) );
  BUFX2M U21 ( .A(n2), .Y(n275) );
  BUFX2M U22 ( .A(n3), .Y(n278) );
  INVX2M U23 ( .A(n4), .Y(n277) );
  NOR2X2M U24 ( .A(n305), .B(n271), .Y(n17) );
  NAND2X2M U25 ( .A(n22), .B(n18), .Y(n21) );
  NAND2X2M U26 ( .A(n22), .B(n20), .Y(n23) );
  NAND2X2M U27 ( .A(n25), .B(n18), .Y(n24) );
  NAND2X2M U28 ( .A(n25), .B(n20), .Y(n26) );
  NAND2X2M U29 ( .A(n28), .B(n18), .Y(n27) );
  NAND2X2M U30 ( .A(n28), .B(n20), .Y(n30) );
  NAND2X2M U31 ( .A(n32), .B(n22), .Y(n35) );
  NAND2X2M U32 ( .A(n34), .B(n22), .Y(n36) );
  NAND2X2M U33 ( .A(n32), .B(n25), .Y(n37) );
  NAND2X2M U34 ( .A(n34), .B(n25), .Y(n38) );
  NAND2X2M U35 ( .A(n32), .B(n28), .Y(n39) );
  NAND2X2M U36 ( .A(n34), .B(n28), .Y(n41) );
  NAND2X2M U37 ( .A(n32), .B(n17), .Y(n31) );
  NAND2X2M U38 ( .A(n17), .B(n18), .Y(n16) );
  AND2X2M U39 ( .A(n29), .B(n272), .Y(n20) );
  AND2X2M U40 ( .A(n40), .B(n272), .Y(n34) );
  INVX2M U41 ( .A(n15), .Y(n295) );
  BUFX2M U42 ( .A(n294), .Y(n280) );
  BUFX2M U43 ( .A(n291), .Y(n287) );
  BUFX2M U44 ( .A(n291), .Y(n286) );
  BUFX2M U45 ( .A(n292), .Y(n285) );
  BUFX2M U46 ( .A(n293), .Y(n283) );
  BUFX2M U47 ( .A(n293), .Y(n282) );
  BUFX2M U48 ( .A(n294), .Y(n281) );
  BUFX2M U49 ( .A(n292), .Y(n284) );
  BUFX2M U50 ( .A(n290), .Y(n288) );
  BUFX2M U51 ( .A(n290), .Y(n289) );
  OR2X2M U52 ( .A(n271), .B(N10), .Y(n2) );
  OR2X2M U53 ( .A(N10), .B(N11), .Y(n3) );
  OR2X2M U54 ( .A(n272), .B(N11), .Y(n4) );
  INVX2M U55 ( .A(N10), .Y(n272) );
  INVX2M U56 ( .A(N11), .Y(n271) );
  NAND2X2M U57 ( .A(rd_en), .B(n296), .Y(n15) );
  NOR2X2M U58 ( .A(n296), .B(rd_en), .Y(n14) );
  AND2X2M U59 ( .A(n29), .B(N10), .Y(n18) );
  AND2X2M U60 ( .A(n40), .B(N10), .Y(n32) );
  NOR2BX2M U61 ( .AN(n14), .B(N13), .Y(n40) );
  INVX2M U62 ( .A(N12), .Y(n305) );
  AND2X2M U63 ( .A(N13), .B(n14), .Y(n29) );
  INVX2M U64 ( .A(N13), .Y(n270) );
  BUFX2M U65 ( .A(rst_n), .Y(n291) );
  BUFX2M U66 ( .A(rst_n), .Y(n293) );
  BUFX2M U67 ( .A(rst_n), .Y(n292) );
  BUFX2M U68 ( .A(rst_n), .Y(n294) );
  BUFX2M U69 ( .A(rst_n), .Y(n290) );
  AO22X1M U70 ( .A0(N42), .A1(n295), .B0(rd_data[0]), .B1(n15), .Y(n43) );
  AO22X1M U71 ( .A0(N41), .A1(n295), .B0(rd_data[1]), .B1(n15), .Y(n44) );
  AO22X1M U72 ( .A0(N40), .A1(n295), .B0(rd_data[2]), .B1(n15), .Y(n45) );
  AO22X1M U73 ( .A0(N39), .A1(n295), .B0(rd_data[3]), .B1(n15), .Y(n46) );
  AO22X1M U74 ( .A0(N38), .A1(n295), .B0(rd_data[4]), .B1(n15), .Y(n47) );
  AO22X1M U75 ( .A0(N37), .A1(n295), .B0(rd_data[5]), .B1(n15), .Y(n48) );
  AO22X1M U76 ( .A0(N36), .A1(n295), .B0(rd_data[6]), .B1(n15), .Y(n49) );
  AO22X1M U77 ( .A0(N35), .A1(n295), .B0(rd_data[7]), .B1(n15), .Y(n50) );
  OAI2BB2X1M U78 ( .B0(n16), .B1(n304), .A0N(\mem[15][0] ), .A1N(n16), .Y(n51)
         );
  OAI2BB2X1M U79 ( .B0(n16), .B1(n303), .A0N(\mem[15][1] ), .A1N(n16), .Y(n52)
         );
  OAI2BB2X1M U80 ( .B0(n16), .B1(n302), .A0N(\mem[15][2] ), .A1N(n16), .Y(n53)
         );
  OAI2BB2X1M U81 ( .B0(n16), .B1(n301), .A0N(\mem[15][3] ), .A1N(n16), .Y(n54)
         );
  OAI2BB2X1M U82 ( .B0(n16), .B1(n300), .A0N(\mem[15][4] ), .A1N(n16), .Y(n55)
         );
  OAI2BB2X1M U83 ( .B0(n16), .B1(n299), .A0N(\mem[15][5] ), .A1N(n16), .Y(n56)
         );
  OAI2BB2X1M U84 ( .B0(n16), .B1(n298), .A0N(\mem[15][6] ), .A1N(n16), .Y(n57)
         );
  OAI2BB2X1M U85 ( .B0(n16), .B1(n297), .A0N(\mem[15][7] ), .A1N(n16), .Y(n58)
         );
  OAI2BB2X1M U86 ( .B0(n304), .B1(n21), .A0N(\mem[13][0] ), .A1N(n21), .Y(n67)
         );
  OAI2BB2X1M U87 ( .B0(n303), .B1(n21), .A0N(\mem[13][1] ), .A1N(n21), .Y(n68)
         );
  OAI2BB2X1M U88 ( .B0(n302), .B1(n21), .A0N(\mem[13][2] ), .A1N(n21), .Y(n69)
         );
  OAI2BB2X1M U89 ( .B0(n301), .B1(n21), .A0N(\mem[13][3] ), .A1N(n21), .Y(n70)
         );
  OAI2BB2X1M U90 ( .B0(n300), .B1(n21), .A0N(\mem[13][4] ), .A1N(n21), .Y(n71)
         );
  OAI2BB2X1M U91 ( .B0(n299), .B1(n21), .A0N(\mem[13][5] ), .A1N(n21), .Y(n72)
         );
  OAI2BB2X1M U92 ( .B0(n298), .B1(n21), .A0N(\mem[13][6] ), .A1N(n21), .Y(n73)
         );
  OAI2BB2X1M U93 ( .B0(n297), .B1(n21), .A0N(\mem[13][7] ), .A1N(n21), .Y(n74)
         );
  OAI2BB2X1M U94 ( .B0(n304), .B1(n23), .A0N(\mem[12][0] ), .A1N(n23), .Y(n75)
         );
  OAI2BB2X1M U95 ( .B0(n303), .B1(n23), .A0N(\mem[12][1] ), .A1N(n23), .Y(n76)
         );
  OAI2BB2X1M U96 ( .B0(n302), .B1(n23), .A0N(\mem[12][2] ), .A1N(n23), .Y(n77)
         );
  OAI2BB2X1M U97 ( .B0(n301), .B1(n23), .A0N(\mem[12][3] ), .A1N(n23), .Y(n78)
         );
  OAI2BB2X1M U98 ( .B0(n300), .B1(n23), .A0N(\mem[12][4] ), .A1N(n23), .Y(n79)
         );
  OAI2BB2X1M U99 ( .B0(n299), .B1(n23), .A0N(\mem[12][5] ), .A1N(n23), .Y(n80)
         );
  OAI2BB2X1M U100 ( .B0(n298), .B1(n23), .A0N(\mem[12][6] ), .A1N(n23), .Y(n81) );
  OAI2BB2X1M U101 ( .B0(n297), .B1(n23), .A0N(\mem[12][7] ), .A1N(n23), .Y(n82) );
  OAI2BB2X1M U102 ( .B0(n304), .B1(n24), .A0N(\mem[11][0] ), .A1N(n24), .Y(n83) );
  OAI2BB2X1M U103 ( .B0(n303), .B1(n24), .A0N(\mem[11][1] ), .A1N(n24), .Y(n84) );
  OAI2BB2X1M U104 ( .B0(n302), .B1(n24), .A0N(\mem[11][2] ), .A1N(n24), .Y(n85) );
  OAI2BB2X1M U105 ( .B0(n301), .B1(n24), .A0N(\mem[11][3] ), .A1N(n24), .Y(n86) );
  OAI2BB2X1M U106 ( .B0(n300), .B1(n24), .A0N(\mem[11][4] ), .A1N(n24), .Y(n87) );
  OAI2BB2X1M U107 ( .B0(n299), .B1(n24), .A0N(\mem[11][5] ), .A1N(n24), .Y(n88) );
  OAI2BB2X1M U108 ( .B0(n298), .B1(n24), .A0N(\mem[11][6] ), .A1N(n24), .Y(n89) );
  OAI2BB2X1M U109 ( .B0(n297), .B1(n24), .A0N(\mem[11][7] ), .A1N(n24), .Y(n90) );
  OAI2BB2X1M U110 ( .B0(n304), .B1(n26), .A0N(\mem[10][0] ), .A1N(n26), .Y(n91) );
  OAI2BB2X1M U111 ( .B0(n303), .B1(n26), .A0N(\mem[10][1] ), .A1N(n26), .Y(n92) );
  OAI2BB2X1M U112 ( .B0(n302), .B1(n26), .A0N(\mem[10][2] ), .A1N(n26), .Y(n93) );
  OAI2BB2X1M U113 ( .B0(n301), .B1(n26), .A0N(\mem[10][3] ), .A1N(n26), .Y(n94) );
  OAI2BB2X1M U114 ( .B0(n300), .B1(n26), .A0N(\mem[10][4] ), .A1N(n26), .Y(n95) );
  OAI2BB2X1M U115 ( .B0(n299), .B1(n26), .A0N(\mem[10][5] ), .A1N(n26), .Y(n96) );
  OAI2BB2X1M U116 ( .B0(n298), .B1(n26), .A0N(\mem[10][6] ), .A1N(n26), .Y(n97) );
  OAI2BB2X1M U117 ( .B0(n297), .B1(n26), .A0N(\mem[10][7] ), .A1N(n26), .Y(n98) );
  OAI2BB2X1M U118 ( .B0(n304), .B1(n27), .A0N(\mem[9][0] ), .A1N(n27), .Y(n99)
         );
  OAI2BB2X1M U119 ( .B0(n303), .B1(n27), .A0N(\mem[9][1] ), .A1N(n27), .Y(n100) );
  OAI2BB2X1M U120 ( .B0(n302), .B1(n27), .A0N(\mem[9][2] ), .A1N(n27), .Y(n101) );
  OAI2BB2X1M U121 ( .B0(n301), .B1(n27), .A0N(\mem[9][3] ), .A1N(n27), .Y(n102) );
  OAI2BB2X1M U122 ( .B0(n300), .B1(n27), .A0N(\mem[9][4] ), .A1N(n27), .Y(n103) );
  OAI2BB2X1M U123 ( .B0(n299), .B1(n27), .A0N(\mem[9][5] ), .A1N(n27), .Y(n104) );
  OAI2BB2X1M U124 ( .B0(n298), .B1(n27), .A0N(\mem[9][6] ), .A1N(n27), .Y(n105) );
  OAI2BB2X1M U125 ( .B0(n297), .B1(n27), .A0N(\mem[9][7] ), .A1N(n27), .Y(n106) );
  OAI2BB2X1M U126 ( .B0(n304), .B1(n30), .A0N(\mem[8][0] ), .A1N(n30), .Y(n107) );
  OAI2BB2X1M U127 ( .B0(n303), .B1(n30), .A0N(\mem[8][1] ), .A1N(n30), .Y(n108) );
  OAI2BB2X1M U128 ( .B0(n302), .B1(n30), .A0N(\mem[8][2] ), .A1N(n30), .Y(n109) );
  OAI2BB2X1M U129 ( .B0(n301), .B1(n30), .A0N(\mem[8][3] ), .A1N(n30), .Y(n110) );
  OAI2BB2X1M U130 ( .B0(n300), .B1(n30), .A0N(\mem[8][4] ), .A1N(n30), .Y(n111) );
  OAI2BB2X1M U131 ( .B0(n299), .B1(n30), .A0N(\mem[8][5] ), .A1N(n30), .Y(n112) );
  OAI2BB2X1M U132 ( .B0(n298), .B1(n30), .A0N(\mem[8][6] ), .A1N(n30), .Y(n113) );
  OAI2BB2X1M U133 ( .B0(n297), .B1(n30), .A0N(\mem[8][7] ), .A1N(n30), .Y(n114) );
  OAI2BB2X1M U134 ( .B0(n304), .B1(n19), .A0N(\mem[14][0] ), .A1N(n19), .Y(n59) );
  OAI2BB2X1M U135 ( .B0(n303), .B1(n19), .A0N(\mem[14][1] ), .A1N(n19), .Y(n60) );
  OAI2BB2X1M U136 ( .B0(n302), .B1(n19), .A0N(\mem[14][2] ), .A1N(n19), .Y(n61) );
  OAI2BB2X1M U137 ( .B0(n301), .B1(n19), .A0N(\mem[14][3] ), .A1N(n19), .Y(n62) );
  OAI2BB2X1M U138 ( .B0(n300), .B1(n19), .A0N(\mem[14][4] ), .A1N(n19), .Y(n63) );
  OAI2BB2X1M U139 ( .B0(n299), .B1(n19), .A0N(\mem[14][5] ), .A1N(n19), .Y(n64) );
  OAI2BB2X1M U140 ( .B0(n298), .B1(n19), .A0N(\mem[14][6] ), .A1N(n19), .Y(n65) );
  OAI2BB2X1M U141 ( .B0(n297), .B1(n19), .A0N(\mem[14][7] ), .A1N(n19), .Y(n66) );
  OAI2BB2X1M U142 ( .B0(n304), .B1(n31), .A0N(\mem[7][0] ), .A1N(n31), .Y(n115) );
  OAI2BB2X1M U143 ( .B0(n303), .B1(n31), .A0N(\mem[7][1] ), .A1N(n31), .Y(n116) );
  OAI2BB2X1M U144 ( .B0(n302), .B1(n31), .A0N(\mem[7][2] ), .A1N(n31), .Y(n117) );
  OAI2BB2X1M U145 ( .B0(n301), .B1(n31), .A0N(\mem[7][3] ), .A1N(n31), .Y(n118) );
  OAI2BB2X1M U146 ( .B0(n300), .B1(n31), .A0N(\mem[7][4] ), .A1N(n31), .Y(n119) );
  OAI2BB2X1M U147 ( .B0(n299), .B1(n31), .A0N(\mem[7][5] ), .A1N(n31), .Y(n120) );
  OAI2BB2X1M U148 ( .B0(n298), .B1(n31), .A0N(\mem[7][6] ), .A1N(n31), .Y(n121) );
  OAI2BB2X1M U149 ( .B0(n297), .B1(n31), .A0N(\mem[7][7] ), .A1N(n31), .Y(n122) );
  OAI2BB2X1M U150 ( .B0(n304), .B1(n33), .A0N(\mem[6][0] ), .A1N(n33), .Y(n123) );
  OAI2BB2X1M U151 ( .B0(n303), .B1(n33), .A0N(\mem[6][1] ), .A1N(n33), .Y(n124) );
  OAI2BB2X1M U152 ( .B0(n302), .B1(n33), .A0N(\mem[6][2] ), .A1N(n33), .Y(n125) );
  OAI2BB2X1M U153 ( .B0(n301), .B1(n33), .A0N(\mem[6][3] ), .A1N(n33), .Y(n126) );
  OAI2BB2X1M U154 ( .B0(n300), .B1(n33), .A0N(\mem[6][4] ), .A1N(n33), .Y(n127) );
  OAI2BB2X1M U155 ( .B0(n299), .B1(n33), .A0N(\mem[6][5] ), .A1N(n33), .Y(n128) );
  OAI2BB2X1M U156 ( .B0(n298), .B1(n33), .A0N(\mem[6][6] ), .A1N(n33), .Y(n129) );
  OAI2BB2X1M U157 ( .B0(n297), .B1(n33), .A0N(\mem[6][7] ), .A1N(n33), .Y(n130) );
  OAI2BB2X1M U158 ( .B0(n304), .B1(n35), .A0N(\mem[5][0] ), .A1N(n35), .Y(n131) );
  OAI2BB2X1M U159 ( .B0(n303), .B1(n35), .A0N(\mem[5][1] ), .A1N(n35), .Y(n132) );
  OAI2BB2X1M U160 ( .B0(n302), .B1(n35), .A0N(\mem[5][2] ), .A1N(n35), .Y(n133) );
  OAI2BB2X1M U161 ( .B0(n301), .B1(n35), .A0N(\mem[5][3] ), .A1N(n35), .Y(n134) );
  OAI2BB2X1M U162 ( .B0(n300), .B1(n35), .A0N(\mem[5][4] ), .A1N(n35), .Y(n135) );
  OAI2BB2X1M U163 ( .B0(n299), .B1(n35), .A0N(\mem[5][5] ), .A1N(n35), .Y(n136) );
  OAI2BB2X1M U164 ( .B0(n298), .B1(n35), .A0N(\mem[5][6] ), .A1N(n35), .Y(n137) );
  OAI2BB2X1M U165 ( .B0(n297), .B1(n35), .A0N(\mem[5][7] ), .A1N(n35), .Y(n138) );
  OAI2BB2X1M U166 ( .B0(n304), .B1(n36), .A0N(\mem[4][0] ), .A1N(n36), .Y(n139) );
  OAI2BB2X1M U167 ( .B0(n303), .B1(n36), .A0N(\mem[4][1] ), .A1N(n36), .Y(n140) );
  OAI2BB2X1M U168 ( .B0(n302), .B1(n36), .A0N(\mem[4][2] ), .A1N(n36), .Y(n141) );
  OAI2BB2X1M U169 ( .B0(n301), .B1(n36), .A0N(\mem[4][3] ), .A1N(n36), .Y(n142) );
  OAI2BB2X1M U170 ( .B0(n300), .B1(n36), .A0N(\mem[4][4] ), .A1N(n36), .Y(n143) );
  OAI2BB2X1M U171 ( .B0(n299), .B1(n36), .A0N(\mem[4][5] ), .A1N(n36), .Y(n144) );
  OAI2BB2X1M U172 ( .B0(n298), .B1(n36), .A0N(\mem[4][6] ), .A1N(n36), .Y(n145) );
  OAI2BB2X1M U173 ( .B0(n297), .B1(n36), .A0N(\mem[4][7] ), .A1N(n36), .Y(n146) );
  OAI2BB2X1M U174 ( .B0(n304), .B1(n37), .A0N(reg_3[0]), .A1N(n37), .Y(n147)
         );
  OAI2BB2X1M U175 ( .B0(n303), .B1(n37), .A0N(reg_3[1]), .A1N(n37), .Y(n148)
         );
  OAI2BB2X1M U176 ( .B0(n302), .B1(n37), .A0N(reg_3[2]), .A1N(n37), .Y(n149)
         );
  OAI2BB2X1M U177 ( .B0(n301), .B1(n37), .A0N(reg_3[3]), .A1N(n37), .Y(n150)
         );
  OAI2BB2X1M U178 ( .B0(n300), .B1(n37), .A0N(reg_3[4]), .A1N(n37), .Y(n151)
         );
  OAI2BB2X1M U179 ( .B0(n298), .B1(n37), .A0N(reg_3[6]), .A1N(n37), .Y(n153)
         );
  OAI2BB2X1M U180 ( .B0(n297), .B1(n37), .A0N(reg_3[7]), .A1N(n37), .Y(n154)
         );
  OAI2BB2X1M U181 ( .B0(n303), .B1(n38), .A0N(reg_2[1]), .A1N(n38), .Y(n156)
         );
  OAI2BB2X1M U182 ( .B0(n302), .B1(n38), .A0N(reg_2[2]), .A1N(n38), .Y(n157)
         );
  OAI2BB2X1M U183 ( .B0(n301), .B1(n38), .A0N(reg_2[3]), .A1N(n38), .Y(n158)
         );
  OAI2BB2X1M U184 ( .B0(n300), .B1(n38), .A0N(reg_2[4]), .A1N(n38), .Y(n159)
         );
  OAI2BB2X1M U185 ( .B0(n299), .B1(n38), .A0N(reg_2[5]), .A1N(n38), .Y(n160)
         );
  OAI2BB2X1M U186 ( .B0(n298), .B1(n38), .A0N(reg_2[6]), .A1N(n38), .Y(n161)
         );
  OAI2BB2X1M U187 ( .B0(n304), .B1(n39), .A0N(reg_1[0]), .A1N(n39), .Y(n163)
         );
  OAI2BB2X1M U188 ( .B0(n303), .B1(n39), .A0N(reg_1[1]), .A1N(n39), .Y(n164)
         );
  OAI2BB2X1M U189 ( .B0(n302), .B1(n39), .A0N(reg_1[2]), .A1N(n39), .Y(n165)
         );
  OAI2BB2X1M U190 ( .B0(n301), .B1(n39), .A0N(reg_1[3]), .A1N(n39), .Y(n166)
         );
  OAI2BB2X1M U191 ( .B0(n300), .B1(n39), .A0N(reg_1[4]), .A1N(n39), .Y(n167)
         );
  OAI2BB2X1M U192 ( .B0(n299), .B1(n39), .A0N(reg_1[5]), .A1N(n39), .Y(n168)
         );
  OAI2BB2X1M U193 ( .B0(n298), .B1(n39), .A0N(reg_1[6]), .A1N(n39), .Y(n169)
         );
  OAI2BB2X1M U194 ( .B0(n297), .B1(n39), .A0N(reg_1[7]), .A1N(n39), .Y(n170)
         );
  OAI2BB2X1M U195 ( .B0(n304), .B1(n41), .A0N(reg_0[0]), .A1N(n41), .Y(n171)
         );
  OAI2BB2X1M U196 ( .B0(n303), .B1(n41), .A0N(reg_0[1]), .A1N(n41), .Y(n172)
         );
  OAI2BB2X1M U197 ( .B0(n302), .B1(n41), .A0N(reg_0[2]), .A1N(n41), .Y(n173)
         );
  OAI2BB2X1M U198 ( .B0(n301), .B1(n41), .A0N(reg_0[3]), .A1N(n41), .Y(n174)
         );
  OAI2BB2X1M U199 ( .B0(n300), .B1(n41), .A0N(reg_0[4]), .A1N(n41), .Y(n175)
         );
  OAI2BB2X1M U200 ( .B0(n299), .B1(n41), .A0N(reg_0[5]), .A1N(n41), .Y(n176)
         );
  OAI2BB2X1M U201 ( .B0(n298), .B1(n41), .A0N(reg_0[6]), .A1N(n41), .Y(n177)
         );
  OAI2BB2X1M U202 ( .B0(n297), .B1(n41), .A0N(reg_0[7]), .A1N(n41), .Y(n178)
         );
  OAI2BB2X1M U203 ( .B0(n299), .B1(n37), .A0N(reg_3[5]), .A1N(n37), .Y(n152)
         );
  OAI2BB2X1M U204 ( .B0(n304), .B1(n38), .A0N(reg_2[0]), .A1N(n38), .Y(n155)
         );
  OAI2BB2X1M U205 ( .B0(n297), .B1(n38), .A0N(reg_2[7]), .A1N(n38), .Y(n162)
         );
  INVX2M U206 ( .A(wr_en), .Y(n296) );
  AO21XLM U207 ( .A0(rd_data_valid), .A1(n14), .B0(n295), .Y(n42) );
  AOI22X1M U208 ( .A0(\mem[10][0] ), .A1(n276), .B0(\mem[11][0] ), .B1(n274), 
        .Y(n6) );
  AOI22X1M U209 ( .A0(\mem[8][0] ), .A1(n279), .B0(\mem[9][0] ), .B1(n277), 
        .Y(n5) );
  CLKNAND2X2M U210 ( .A(N13), .B(n305), .Y(n254) );
  AOI21X1M U211 ( .A0(n6), .A1(n5), .B0(n254), .Y(n181) );
  AOI22X1M U212 ( .A0(\mem[14][0] ), .A1(n276), .B0(\mem[15][0] ), .B1(n274), 
        .Y(n8) );
  AOI22X1M U213 ( .A0(\mem[12][0] ), .A1(n279), .B0(\mem[13][0] ), .B1(n277), 
        .Y(n7) );
  CLKNAND2X2M U214 ( .A(N13), .B(N12), .Y(n257) );
  AOI21X1M U215 ( .A0(n8), .A1(n7), .B0(n257), .Y(n180) );
  AOI22X1M U216 ( .A0(reg_2[0]), .A1(n276), .B0(reg_3[0]), .B1(n274), .Y(n10)
         );
  AOI22X1M U217 ( .A0(reg_0[0]), .A1(n279), .B0(reg_1[0]), .B1(n277), .Y(n9)
         );
  CLKNAND2X2M U218 ( .A(n305), .B(n270), .Y(n260) );
  AOI21X1M U219 ( .A0(n10), .A1(n9), .B0(n260), .Y(n179) );
  AOI22X1M U220 ( .A0(\mem[6][0] ), .A1(n276), .B0(\mem[7][0] ), .B1(n274), 
        .Y(n12) );
  AOI22X1M U221 ( .A0(\mem[4][0] ), .A1(n279), .B0(\mem[5][0] ), .B1(n277), 
        .Y(n11) );
  CLKNAND2X2M U222 ( .A(N12), .B(n270), .Y(n263) );
  AOI21X1M U223 ( .A0(n12), .A1(n11), .B0(n263), .Y(n13) );
  OR4X1M U224 ( .A(n181), .B(n180), .C(n179), .D(n13), .Y(N42) );
  AOI22X1M U225 ( .A0(\mem[10][1] ), .A1(n276), .B0(\mem[11][1] ), .B1(n274), 
        .Y(n183) );
  AOI22X1M U226 ( .A0(\mem[8][1] ), .A1(n279), .B0(\mem[9][1] ), .B1(n277), 
        .Y(n182) );
  AOI21X1M U227 ( .A0(n183), .A1(n182), .B0(n254), .Y(n193) );
  AOI22X1M U228 ( .A0(\mem[14][1] ), .A1(n276), .B0(\mem[15][1] ), .B1(n274), 
        .Y(n185) );
  AOI22X1M U229 ( .A0(\mem[12][1] ), .A1(n279), .B0(\mem[13][1] ), .B1(n277), 
        .Y(n184) );
  AOI21X1M U230 ( .A0(n185), .A1(n184), .B0(n257), .Y(n192) );
  AOI22X1M U231 ( .A0(reg_2[1]), .A1(n276), .B0(reg_3[1]), .B1(n274), .Y(n187)
         );
  AOI22X1M U232 ( .A0(reg_0[1]), .A1(n279), .B0(reg_1[1]), .B1(n277), .Y(n186)
         );
  AOI21X1M U233 ( .A0(n187), .A1(n186), .B0(n260), .Y(n191) );
  AOI22X1M U234 ( .A0(\mem[6][1] ), .A1(n276), .B0(\mem[7][1] ), .B1(n274), 
        .Y(n189) );
  AOI22X1M U235 ( .A0(\mem[4][1] ), .A1(n279), .B0(\mem[5][1] ), .B1(n277), 
        .Y(n188) );
  AOI21X1M U236 ( .A0(n189), .A1(n188), .B0(n263), .Y(n190) );
  OR4X1M U237 ( .A(n193), .B(n192), .C(n191), .D(n190), .Y(N41) );
  AOI22X1M U238 ( .A0(\mem[10][2] ), .A1(n276), .B0(\mem[11][2] ), .B1(n274), 
        .Y(n195) );
  AOI22X1M U239 ( .A0(\mem[8][2] ), .A1(n279), .B0(\mem[9][2] ), .B1(n277), 
        .Y(n194) );
  AOI21X1M U240 ( .A0(n195), .A1(n194), .B0(n254), .Y(n205) );
  AOI22X1M U241 ( .A0(\mem[14][2] ), .A1(n276), .B0(\mem[15][2] ), .B1(n274), 
        .Y(n197) );
  AOI22X1M U242 ( .A0(\mem[12][2] ), .A1(n279), .B0(\mem[13][2] ), .B1(n277), 
        .Y(n196) );
  AOI21X1M U243 ( .A0(n197), .A1(n196), .B0(n257), .Y(n204) );
  AOI22X1M U244 ( .A0(reg_2[2]), .A1(n276), .B0(reg_3[2]), .B1(n274), .Y(n199)
         );
  AOI22X1M U245 ( .A0(reg_0[2]), .A1(n279), .B0(reg_1[2]), .B1(n277), .Y(n198)
         );
  AOI21X1M U246 ( .A0(n199), .A1(n198), .B0(n260), .Y(n203) );
  AOI22X1M U247 ( .A0(\mem[6][2] ), .A1(n276), .B0(\mem[7][2] ), .B1(n274), 
        .Y(n201) );
  AOI22X1M U248 ( .A0(\mem[4][2] ), .A1(n279), .B0(\mem[5][2] ), .B1(n277), 
        .Y(n200) );
  AOI21X1M U249 ( .A0(n201), .A1(n200), .B0(n263), .Y(n202) );
  OR4X1M U250 ( .A(n205), .B(n204), .C(n203), .D(n202), .Y(N40) );
  AOI22X1M U251 ( .A0(\mem[10][3] ), .A1(n276), .B0(\mem[11][3] ), .B1(n274), 
        .Y(n207) );
  AOI22X1M U252 ( .A0(\mem[8][3] ), .A1(n279), .B0(\mem[9][3] ), .B1(n277), 
        .Y(n206) );
  AOI21X1M U253 ( .A0(n207), .A1(n206), .B0(n254), .Y(n217) );
  AOI22X1M U254 ( .A0(\mem[14][3] ), .A1(n276), .B0(\mem[15][3] ), .B1(n274), 
        .Y(n209) );
  AOI22X1M U255 ( .A0(\mem[12][3] ), .A1(n279), .B0(\mem[13][3] ), .B1(n277), 
        .Y(n208) );
  AOI21X1M U256 ( .A0(n209), .A1(n208), .B0(n257), .Y(n216) );
  AOI22X1M U257 ( .A0(reg_2[3]), .A1(n276), .B0(reg_3[3]), .B1(n274), .Y(n211)
         );
  AOI22X1M U258 ( .A0(reg_0[3]), .A1(n279), .B0(reg_1[3]), .B1(n277), .Y(n210)
         );
  AOI21X1M U259 ( .A0(n211), .A1(n210), .B0(n260), .Y(n215) );
  AOI22X1M U260 ( .A0(\mem[6][3] ), .A1(n276), .B0(\mem[7][3] ), .B1(n274), 
        .Y(n213) );
  AOI22X1M U261 ( .A0(\mem[4][3] ), .A1(n279), .B0(\mem[5][3] ), .B1(n277), 
        .Y(n212) );
  AOI21X1M U262 ( .A0(n213), .A1(n212), .B0(n263), .Y(n214) );
  OR4X1M U263 ( .A(n217), .B(n216), .C(n215), .D(n214), .Y(N39) );
  AOI22X1M U264 ( .A0(\mem[10][4] ), .A1(n276), .B0(\mem[11][4] ), .B1(n274), 
        .Y(n219) );
  AOI22X1M U265 ( .A0(\mem[8][4] ), .A1(n279), .B0(\mem[9][4] ), .B1(n277), 
        .Y(n218) );
  AOI21X1M U266 ( .A0(n219), .A1(n218), .B0(n254), .Y(n229) );
  AOI22X1M U267 ( .A0(\mem[14][4] ), .A1(n276), .B0(\mem[15][4] ), .B1(n274), 
        .Y(n221) );
  AOI22X1M U268 ( .A0(\mem[12][4] ), .A1(n279), .B0(\mem[13][4] ), .B1(n277), 
        .Y(n220) );
  AOI21X1M U269 ( .A0(n221), .A1(n220), .B0(n257), .Y(n228) );
  AOI22X1M U270 ( .A0(reg_2[4]), .A1(n276), .B0(reg_3[4]), .B1(n274), .Y(n223)
         );
  AOI22X1M U271 ( .A0(reg_0[4]), .A1(n279), .B0(reg_1[4]), .B1(n277), .Y(n222)
         );
  AOI21X1M U272 ( .A0(n223), .A1(n222), .B0(n260), .Y(n227) );
  AOI22X1M U273 ( .A0(\mem[6][4] ), .A1(n276), .B0(\mem[7][4] ), .B1(n274), 
        .Y(n225) );
  AOI22X1M U274 ( .A0(\mem[4][4] ), .A1(n279), .B0(\mem[5][4] ), .B1(n277), 
        .Y(n224) );
  AOI21X1M U275 ( .A0(n225), .A1(n224), .B0(n263), .Y(n226) );
  OR4X1M U276 ( .A(n229), .B(n228), .C(n227), .D(n226), .Y(N38) );
  AOI22X1M U277 ( .A0(\mem[10][5] ), .A1(n276), .B0(\mem[11][5] ), .B1(n274), 
        .Y(n231) );
  AOI22X1M U278 ( .A0(\mem[8][5] ), .A1(n279), .B0(\mem[9][5] ), .B1(n277), 
        .Y(n230) );
  AOI21X1M U279 ( .A0(n231), .A1(n230), .B0(n254), .Y(n241) );
  AOI22X1M U280 ( .A0(\mem[14][5] ), .A1(n276), .B0(\mem[15][5] ), .B1(n274), 
        .Y(n233) );
  AOI22X1M U281 ( .A0(\mem[12][5] ), .A1(n279), .B0(\mem[13][5] ), .B1(n277), 
        .Y(n232) );
  AOI21X1M U282 ( .A0(n233), .A1(n232), .B0(n257), .Y(n240) );
  AOI22X1M U283 ( .A0(reg_2[5]), .A1(n276), .B0(reg_3[5]), .B1(n274), .Y(n235)
         );
  AOI22X1M U284 ( .A0(reg_0[5]), .A1(n279), .B0(reg_1[5]), .B1(n277), .Y(n234)
         );
  AOI21X1M U285 ( .A0(n235), .A1(n234), .B0(n260), .Y(n239) );
  AOI22X1M U286 ( .A0(\mem[6][5] ), .A1(n276), .B0(\mem[7][5] ), .B1(n274), 
        .Y(n237) );
  AOI22X1M U287 ( .A0(\mem[4][5] ), .A1(n279), .B0(\mem[5][5] ), .B1(n277), 
        .Y(n236) );
  AOI21X1M U288 ( .A0(n237), .A1(n236), .B0(n263), .Y(n238) );
  OR4X1M U289 ( .A(n241), .B(n240), .C(n239), .D(n238), .Y(N37) );
  AOI22X1M U290 ( .A0(\mem[10][6] ), .A1(n276), .B0(\mem[11][6] ), .B1(n274), 
        .Y(n243) );
  AOI22X1M U291 ( .A0(\mem[8][6] ), .A1(n279), .B0(\mem[9][6] ), .B1(n277), 
        .Y(n242) );
  AOI21X1M U292 ( .A0(n243), .A1(n242), .B0(n254), .Y(n253) );
  AOI22X1M U293 ( .A0(\mem[14][6] ), .A1(n276), .B0(\mem[15][6] ), .B1(n274), 
        .Y(n245) );
  AOI22X1M U294 ( .A0(\mem[12][6] ), .A1(n279), .B0(\mem[13][6] ), .B1(n277), 
        .Y(n244) );
  AOI21X1M U295 ( .A0(n245), .A1(n244), .B0(n257), .Y(n252) );
  AOI22X1M U296 ( .A0(reg_2[6]), .A1(n276), .B0(reg_3[6]), .B1(n274), .Y(n247)
         );
  AOI22X1M U297 ( .A0(reg_0[6]), .A1(n279), .B0(reg_1[6]), .B1(n277), .Y(n246)
         );
  AOI21X1M U298 ( .A0(n247), .A1(n246), .B0(n260), .Y(n251) );
  AOI22X1M U299 ( .A0(\mem[6][6] ), .A1(n276), .B0(\mem[7][6] ), .B1(n274), 
        .Y(n249) );
  AOI22X1M U300 ( .A0(\mem[4][6] ), .A1(n279), .B0(\mem[5][6] ), .B1(n277), 
        .Y(n248) );
  AOI21X1M U301 ( .A0(n249), .A1(n248), .B0(n263), .Y(n250) );
  OR4X1M U302 ( .A(n253), .B(n252), .C(n251), .D(n250), .Y(N36) );
  AOI22X1M U303 ( .A0(\mem[10][7] ), .A1(n276), .B0(\mem[11][7] ), .B1(n274), 
        .Y(n256) );
  AOI22X1M U304 ( .A0(\mem[8][7] ), .A1(n279), .B0(\mem[9][7] ), .B1(n277), 
        .Y(n255) );
  AOI21X1M U305 ( .A0(n256), .A1(n255), .B0(n254), .Y(n269) );
  AOI22X1M U306 ( .A0(\mem[14][7] ), .A1(n276), .B0(\mem[15][7] ), .B1(n274), 
        .Y(n259) );
  AOI22X1M U307 ( .A0(\mem[12][7] ), .A1(n279), .B0(\mem[13][7] ), .B1(n277), 
        .Y(n258) );
  AOI21X1M U308 ( .A0(n259), .A1(n258), .B0(n257), .Y(n268) );
  AOI22X1M U309 ( .A0(reg_2[7]), .A1(n276), .B0(reg_3[7]), .B1(n274), .Y(n262)
         );
  AOI22X1M U310 ( .A0(reg_0[7]), .A1(n279), .B0(reg_1[7]), .B1(n277), .Y(n261)
         );
  AOI21X1M U311 ( .A0(n262), .A1(n261), .B0(n260), .Y(n267) );
  AOI22X1M U312 ( .A0(\mem[6][7] ), .A1(n276), .B0(\mem[7][7] ), .B1(n274), 
        .Y(n265) );
  AOI22X1M U313 ( .A0(\mem[4][7] ), .A1(n279), .B0(\mem[5][7] ), .B1(n277), 
        .Y(n264) );
  AOI21X1M U314 ( .A0(n265), .A1(n264), .B0(n263), .Y(n266) );
  OR4X1M U315 ( .A(n269), .B(n268), .C(n267), .D(n266), .Y(N35) );
endmodule


module asyc_fifo_mem_DATA_WIDTH8_DEPTH8 ( w_rst, wclk, data_in, w_addr, r_addr, 
        w_en, data_out );
  input [7:0] data_in;
  input [3:0] w_addr;
  input [3:0] r_addr;
  output [7:0] data_out;
  input w_rst, wclk, w_en;
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
         \mem[7][4] , \mem[7][3] , \mem[7][2] , \mem[7][1] , \mem[7][0] , n11,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67,
         n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81,
         n82, n83, n84, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n85, n86, n87,
         n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136;
  assign N10 = r_addr[0];
  assign N11 = r_addr[1];
  assign N12 = r_addr[2];

  DFFRQX2M \mem_reg[0][7]  ( .D(n84), .CK(wclk), .RN(n120), .Q(\mem[0][7] ) );
  DFFRQX2M \mem_reg[0][6]  ( .D(n83), .CK(wclk), .RN(n120), .Q(\mem[0][6] ) );
  DFFRQX2M \mem_reg[0][5]  ( .D(n82), .CK(wclk), .RN(n120), .Q(\mem[0][5] ) );
  DFFRQX2M \mem_reg[0][4]  ( .D(n81), .CK(wclk), .RN(n120), .Q(\mem[0][4] ) );
  DFFRQX2M \mem_reg[0][3]  ( .D(n80), .CK(wclk), .RN(n120), .Q(\mem[0][3] ) );
  DFFRQX2M \mem_reg[0][2]  ( .D(n79), .CK(wclk), .RN(n120), .Q(\mem[0][2] ) );
  DFFRQX2M \mem_reg[0][1]  ( .D(n78), .CK(wclk), .RN(n120), .Q(\mem[0][1] ) );
  DFFRQX2M \mem_reg[0][0]  ( .D(n77), .CK(wclk), .RN(n120), .Q(\mem[0][0] ) );
  DFFRQX2M \mem_reg[1][7]  ( .D(n76), .CK(wclk), .RN(n120), .Q(\mem[1][7] ) );
  DFFRQX2M \mem_reg[1][6]  ( .D(n75), .CK(wclk), .RN(n120), .Q(\mem[1][6] ) );
  DFFRQX2M \mem_reg[1][5]  ( .D(n74), .CK(wclk), .RN(n120), .Q(\mem[1][5] ) );
  DFFRQX2M \mem_reg[1][4]  ( .D(n73), .CK(wclk), .RN(n120), .Q(\mem[1][4] ) );
  DFFRQX2M \mem_reg[1][3]  ( .D(n72), .CK(wclk), .RN(n119), .Q(\mem[1][3] ) );
  DFFRQX2M \mem_reg[1][2]  ( .D(n71), .CK(wclk), .RN(n119), .Q(\mem[1][2] ) );
  DFFRQX2M \mem_reg[1][1]  ( .D(n70), .CK(wclk), .RN(n119), .Q(\mem[1][1] ) );
  DFFRQX2M \mem_reg[1][0]  ( .D(n69), .CK(wclk), .RN(n119), .Q(\mem[1][0] ) );
  DFFRQX2M \mem_reg[4][7]  ( .D(n52), .CK(wclk), .RN(n118), .Q(\mem[4][7] ) );
  DFFRQX2M \mem_reg[4][6]  ( .D(n51), .CK(wclk), .RN(n118), .Q(\mem[4][6] ) );
  DFFRQX2M \mem_reg[4][5]  ( .D(n50), .CK(wclk), .RN(n118), .Q(\mem[4][5] ) );
  DFFRQX2M \mem_reg[4][4]  ( .D(n49), .CK(wclk), .RN(n118), .Q(\mem[4][4] ) );
  DFFRQX2M \mem_reg[4][3]  ( .D(n48), .CK(wclk), .RN(n118), .Q(\mem[4][3] ) );
  DFFRQX2M \mem_reg[4][2]  ( .D(n47), .CK(wclk), .RN(n118), .Q(\mem[4][2] ) );
  DFFRQX2M \mem_reg[4][1]  ( .D(n46), .CK(wclk), .RN(n117), .Q(\mem[4][1] ) );
  DFFRQX2M \mem_reg[4][0]  ( .D(n45), .CK(wclk), .RN(n117), .Q(\mem[4][0] ) );
  DFFRQX2M \mem_reg[5][7]  ( .D(n44), .CK(wclk), .RN(n117), .Q(\mem[5][7] ) );
  DFFRQX2M \mem_reg[5][6]  ( .D(n43), .CK(wclk), .RN(n117), .Q(\mem[5][6] ) );
  DFFRQX2M \mem_reg[5][5]  ( .D(n42), .CK(wclk), .RN(n117), .Q(\mem[5][5] ) );
  DFFRQX2M \mem_reg[5][4]  ( .D(n41), .CK(wclk), .RN(n117), .Q(\mem[5][4] ) );
  DFFRQX2M \mem_reg[5][3]  ( .D(n40), .CK(wclk), .RN(n117), .Q(\mem[5][3] ) );
  DFFRQX2M \mem_reg[5][2]  ( .D(n39), .CK(wclk), .RN(n117), .Q(\mem[5][2] ) );
  DFFRQX2M \mem_reg[5][1]  ( .D(n38), .CK(wclk), .RN(n117), .Q(\mem[5][1] ) );
  DFFRQX2M \mem_reg[5][0]  ( .D(n37), .CK(wclk), .RN(n117), .Q(\mem[5][0] ) );
  DFFRQX2M \mem_reg[6][7]  ( .D(n36), .CK(wclk), .RN(n117), .Q(\mem[6][7] ) );
  DFFRQX2M \mem_reg[6][6]  ( .D(n35), .CK(wclk), .RN(n117), .Q(\mem[6][6] ) );
  DFFRQX2M \mem_reg[6][5]  ( .D(n34), .CK(wclk), .RN(n117), .Q(\mem[6][5] ) );
  DFFRQX2M \mem_reg[6][4]  ( .D(n33), .CK(wclk), .RN(n116), .Q(\mem[6][4] ) );
  DFFRQX2M \mem_reg[6][3]  ( .D(n32), .CK(wclk), .RN(n116), .Q(\mem[6][3] ) );
  DFFRQX2M \mem_reg[6][2]  ( .D(n31), .CK(wclk), .RN(n116), .Q(\mem[6][2] ) );
  DFFRQX2M \mem_reg[6][1]  ( .D(n30), .CK(wclk), .RN(n116), .Q(\mem[6][1] ) );
  DFFRQX2M \mem_reg[6][0]  ( .D(n29), .CK(wclk), .RN(n116), .Q(\mem[6][0] ) );
  DFFRQX2M \mem_reg[7][7]  ( .D(n28), .CK(wclk), .RN(n116), .Q(\mem[7][7] ) );
  DFFRQX2M \mem_reg[7][6]  ( .D(n27), .CK(wclk), .RN(n116), .Q(\mem[7][6] ) );
  DFFRQX2M \mem_reg[7][5]  ( .D(n26), .CK(wclk), .RN(n116), .Q(\mem[7][5] ) );
  DFFRQX2M \mem_reg[7][4]  ( .D(n25), .CK(wclk), .RN(n116), .Q(\mem[7][4] ) );
  DFFRQX2M \mem_reg[7][3]  ( .D(n24), .CK(wclk), .RN(n116), .Q(\mem[7][3] ) );
  DFFRQX2M \mem_reg[7][2]  ( .D(n23), .CK(wclk), .RN(n116), .Q(\mem[7][2] ) );
  DFFRQX2M \mem_reg[7][1]  ( .D(n22), .CK(wclk), .RN(n116), .Q(\mem[7][1] ) );
  DFFRQX2M \mem_reg[7][0]  ( .D(n21), .CK(wclk), .RN(n116), .Q(\mem[7][0] ) );
  DFFRQX2M \mem_reg[2][7]  ( .D(n68), .CK(wclk), .RN(n119), .Q(\mem[2][7] ) );
  DFFRQX2M \mem_reg[2][6]  ( .D(n67), .CK(wclk), .RN(n119), .Q(\mem[2][6] ) );
  DFFRQX2M \mem_reg[2][5]  ( .D(n66), .CK(wclk), .RN(n119), .Q(\mem[2][5] ) );
  DFFRQX2M \mem_reg[2][4]  ( .D(n65), .CK(wclk), .RN(n119), .Q(\mem[2][4] ) );
  DFFRQX2M \mem_reg[2][3]  ( .D(n64), .CK(wclk), .RN(n119), .Q(\mem[2][3] ) );
  DFFRQX2M \mem_reg[2][2]  ( .D(n63), .CK(wclk), .RN(n119), .Q(\mem[2][2] ) );
  DFFRQX2M \mem_reg[2][1]  ( .D(n62), .CK(wclk), .RN(n119), .Q(\mem[2][1] ) );
  DFFRQX2M \mem_reg[2][0]  ( .D(n61), .CK(wclk), .RN(n119), .Q(\mem[2][0] ) );
  DFFRQX2M \mem_reg[3][7]  ( .D(n60), .CK(wclk), .RN(n119), .Q(\mem[3][7] ) );
  DFFRQX2M \mem_reg[3][6]  ( .D(n59), .CK(wclk), .RN(n118), .Q(\mem[3][6] ) );
  DFFRQX2M \mem_reg[3][5]  ( .D(n58), .CK(wclk), .RN(n118), .Q(\mem[3][5] ) );
  DFFRQX2M \mem_reg[3][4]  ( .D(n57), .CK(wclk), .RN(n118), .Q(\mem[3][4] ) );
  DFFRQX2M \mem_reg[3][3]  ( .D(n56), .CK(wclk), .RN(n118), .Q(\mem[3][3] ) );
  DFFRQX2M \mem_reg[3][2]  ( .D(n55), .CK(wclk), .RN(n118), .Q(\mem[3][2] ) );
  DFFRQX2M \mem_reg[3][1]  ( .D(n54), .CK(wclk), .RN(n118), .Q(\mem[3][1] ) );
  DFFRQX2M \mem_reg[3][0]  ( .D(n53), .CK(wclk), .RN(n118), .Q(\mem[3][0] ) );
  BUFX2M U2 ( .A(n11), .Y(n126) );
  BUFX2M U3 ( .A(n18), .Y(n122) );
  BUFX2M U4 ( .A(n19), .Y(n121) );
  BUFX2M U5 ( .A(n16), .Y(n123) );
  BUFX2M U6 ( .A(n13), .Y(n125) );
  BUFX2M U7 ( .A(n14), .Y(n124) );
  BUFX2M U8 ( .A(n114), .Y(n116) );
  BUFX2M U9 ( .A(n114), .Y(n117) );
  BUFX2M U10 ( .A(n114), .Y(n118) );
  BUFX2M U11 ( .A(n115), .Y(n119) );
  BUFX2M U12 ( .A(n115), .Y(n120) );
  BUFX2M U13 ( .A(w_rst), .Y(n114) );
  BUFX2M U14 ( .A(w_rst), .Y(n115) );
  NAND3X2M U15 ( .A(n127), .B(n128), .C(n12), .Y(n15) );
  NAND3X2M U16 ( .A(n127), .B(n128), .C(n17), .Y(n20) );
  NOR2X2M U17 ( .A(n111), .B(n112), .Y(n107) );
  NOR2BX2M U18 ( .AN(w_en), .B(w_addr[2]), .Y(n17) );
  OAI2BB2X1M U19 ( .B0(n136), .B1(n20), .A0N(\mem[0][0] ), .A1N(n20), .Y(n77)
         );
  OAI2BB2X1M U20 ( .B0(n135), .B1(n20), .A0N(\mem[0][1] ), .A1N(n20), .Y(n78)
         );
  OAI2BB2X1M U21 ( .B0(n134), .B1(n20), .A0N(\mem[0][2] ), .A1N(n20), .Y(n79)
         );
  OAI2BB2X1M U22 ( .B0(n133), .B1(n20), .A0N(\mem[0][3] ), .A1N(n20), .Y(n80)
         );
  OAI2BB2X1M U23 ( .B0(n132), .B1(n20), .A0N(\mem[0][4] ), .A1N(n20), .Y(n81)
         );
  OAI2BB2X1M U24 ( .B0(n131), .B1(n20), .A0N(\mem[0][5] ), .A1N(n20), .Y(n82)
         );
  OAI2BB2X1M U25 ( .B0(n130), .B1(n20), .A0N(\mem[0][6] ), .A1N(n20), .Y(n83)
         );
  OAI2BB2X1M U26 ( .B0(n129), .B1(n20), .A0N(\mem[0][7] ), .A1N(n20), .Y(n84)
         );
  OAI2BB2X1M U27 ( .B0(n136), .B1(n15), .A0N(\mem[4][0] ), .A1N(n15), .Y(n45)
         );
  OAI2BB2X1M U28 ( .B0(n135), .B1(n15), .A0N(\mem[4][1] ), .A1N(n15), .Y(n46)
         );
  OAI2BB2X1M U29 ( .B0(n134), .B1(n15), .A0N(\mem[4][2] ), .A1N(n15), .Y(n47)
         );
  OAI2BB2X1M U30 ( .B0(n133), .B1(n15), .A0N(\mem[4][3] ), .A1N(n15), .Y(n48)
         );
  OAI2BB2X1M U31 ( .B0(n132), .B1(n15), .A0N(\mem[4][4] ), .A1N(n15), .Y(n49)
         );
  OAI2BB2X1M U32 ( .B0(n131), .B1(n15), .A0N(\mem[4][5] ), .A1N(n15), .Y(n50)
         );
  OAI2BB2X1M U33 ( .B0(n130), .B1(n15), .A0N(\mem[4][6] ), .A1N(n15), .Y(n51)
         );
  OAI2BB2X1M U34 ( .B0(n129), .B1(n15), .A0N(\mem[4][7] ), .A1N(n15), .Y(n52)
         );
  INVX2M U35 ( .A(data_in[0]), .Y(n136) );
  INVX2M U36 ( .A(data_in[1]), .Y(n135) );
  INVX2M U37 ( .A(data_in[2]), .Y(n134) );
  INVX2M U38 ( .A(data_in[3]), .Y(n133) );
  INVX2M U39 ( .A(data_in[4]), .Y(n132) );
  INVX2M U40 ( .A(data_in[5]), .Y(n131) );
  INVX2M U41 ( .A(data_in[6]), .Y(n130) );
  INVX2M U42 ( .A(data_in[7]), .Y(n129) );
  OAI2BB2X1M U43 ( .B0(n136), .B1(n125), .A0N(\mem[6][0] ), .A1N(n125), .Y(n29) );
  OAI2BB2X1M U44 ( .B0(n135), .B1(n125), .A0N(\mem[6][1] ), .A1N(n125), .Y(n30) );
  OAI2BB2X1M U45 ( .B0(n134), .B1(n125), .A0N(\mem[6][2] ), .A1N(n125), .Y(n31) );
  OAI2BB2X1M U46 ( .B0(n133), .B1(n125), .A0N(\mem[6][3] ), .A1N(n125), .Y(n32) );
  OAI2BB2X1M U47 ( .B0(n132), .B1(n125), .A0N(\mem[6][4] ), .A1N(n125), .Y(n33) );
  OAI2BB2X1M U48 ( .B0(n131), .B1(n125), .A0N(\mem[6][5] ), .A1N(n125), .Y(n34) );
  OAI2BB2X1M U49 ( .B0(n130), .B1(n125), .A0N(\mem[6][6] ), .A1N(n125), .Y(n35) );
  OAI2BB2X1M U50 ( .B0(n129), .B1(n125), .A0N(\mem[6][7] ), .A1N(n125), .Y(n36) );
  OAI2BB2X1M U51 ( .B0(n136), .B1(n124), .A0N(\mem[5][0] ), .A1N(n124), .Y(n37) );
  OAI2BB2X1M U52 ( .B0(n135), .B1(n124), .A0N(\mem[5][1] ), .A1N(n124), .Y(n38) );
  OAI2BB2X1M U53 ( .B0(n134), .B1(n124), .A0N(\mem[5][2] ), .A1N(n124), .Y(n39) );
  OAI2BB2X1M U54 ( .B0(n133), .B1(n124), .A0N(\mem[5][3] ), .A1N(n124), .Y(n40) );
  OAI2BB2X1M U55 ( .B0(n132), .B1(n124), .A0N(\mem[5][4] ), .A1N(n124), .Y(n41) );
  OAI2BB2X1M U56 ( .B0(n131), .B1(n124), .A0N(\mem[5][5] ), .A1N(n124), .Y(n42) );
  OAI2BB2X1M U57 ( .B0(n130), .B1(n124), .A0N(\mem[5][6] ), .A1N(n124), .Y(n43) );
  OAI2BB2X1M U58 ( .B0(n129), .B1(n124), .A0N(\mem[5][7] ), .A1N(n124), .Y(n44) );
  OAI2BB2X1M U59 ( .B0(n136), .B1(n123), .A0N(\mem[3][0] ), .A1N(n123), .Y(n53) );
  OAI2BB2X1M U60 ( .B0(n135), .B1(n123), .A0N(\mem[3][1] ), .A1N(n123), .Y(n54) );
  OAI2BB2X1M U61 ( .B0(n134), .B1(n123), .A0N(\mem[3][2] ), .A1N(n123), .Y(n55) );
  OAI2BB2X1M U62 ( .B0(n133), .B1(n123), .A0N(\mem[3][3] ), .A1N(n123), .Y(n56) );
  OAI2BB2X1M U63 ( .B0(n132), .B1(n123), .A0N(\mem[3][4] ), .A1N(n123), .Y(n57) );
  OAI2BB2X1M U64 ( .B0(n131), .B1(n123), .A0N(\mem[3][5] ), .A1N(n123), .Y(n58) );
  OAI2BB2X1M U65 ( .B0(n130), .B1(n123), .A0N(\mem[3][6] ), .A1N(n123), .Y(n59) );
  OAI2BB2X1M U66 ( .B0(n129), .B1(n123), .A0N(\mem[3][7] ), .A1N(n123), .Y(n60) );
  OAI2BB2X1M U67 ( .B0(n136), .B1(n122), .A0N(\mem[2][0] ), .A1N(n122), .Y(n61) );
  OAI2BB2X1M U68 ( .B0(n135), .B1(n122), .A0N(\mem[2][1] ), .A1N(n122), .Y(n62) );
  OAI2BB2X1M U69 ( .B0(n134), .B1(n122), .A0N(\mem[2][2] ), .A1N(n122), .Y(n63) );
  OAI2BB2X1M U70 ( .B0(n133), .B1(n122), .A0N(\mem[2][3] ), .A1N(n122), .Y(n64) );
  OAI2BB2X1M U71 ( .B0(n132), .B1(n122), .A0N(\mem[2][4] ), .A1N(n122), .Y(n65) );
  OAI2BB2X1M U72 ( .B0(n131), .B1(n122), .A0N(\mem[2][5] ), .A1N(n122), .Y(n66) );
  OAI2BB2X1M U73 ( .B0(n130), .B1(n122), .A0N(\mem[2][6] ), .A1N(n122), .Y(n67) );
  OAI2BB2X1M U74 ( .B0(n129), .B1(n122), .A0N(\mem[2][7] ), .A1N(n122), .Y(n68) );
  OAI2BB2X1M U75 ( .B0(n136), .B1(n121), .A0N(\mem[1][0] ), .A1N(n121), .Y(n69) );
  OAI2BB2X1M U76 ( .B0(n135), .B1(n121), .A0N(\mem[1][1] ), .A1N(n121), .Y(n70) );
  OAI2BB2X1M U77 ( .B0(n134), .B1(n121), .A0N(\mem[1][2] ), .A1N(n121), .Y(n71) );
  OAI2BB2X1M U78 ( .B0(n133), .B1(n121), .A0N(\mem[1][3] ), .A1N(n121), .Y(n72) );
  OAI2BB2X1M U79 ( .B0(n132), .B1(n121), .A0N(\mem[1][4] ), .A1N(n121), .Y(n73) );
  OAI2BB2X1M U80 ( .B0(n131), .B1(n121), .A0N(\mem[1][5] ), .A1N(n121), .Y(n74) );
  OAI2BB2X1M U81 ( .B0(n130), .B1(n121), .A0N(\mem[1][6] ), .A1N(n121), .Y(n75) );
  OAI2BB2X1M U82 ( .B0(n129), .B1(n121), .A0N(\mem[1][7] ), .A1N(n121), .Y(n76) );
  OAI2BB2X1M U83 ( .B0(n126), .B1(n136), .A0N(\mem[7][0] ), .A1N(n126), .Y(n21) );
  OAI2BB2X1M U84 ( .B0(n126), .B1(n135), .A0N(\mem[7][1] ), .A1N(n126), .Y(n22) );
  OAI2BB2X1M U85 ( .B0(n126), .B1(n134), .A0N(\mem[7][2] ), .A1N(n126), .Y(n23) );
  OAI2BB2X1M U86 ( .B0(n126), .B1(n133), .A0N(\mem[7][3] ), .A1N(n126), .Y(n24) );
  OAI2BB2X1M U87 ( .B0(n126), .B1(n132), .A0N(\mem[7][4] ), .A1N(n126), .Y(n25) );
  OAI2BB2X1M U88 ( .B0(n126), .B1(n131), .A0N(\mem[7][5] ), .A1N(n126), .Y(n26) );
  OAI2BB2X1M U89 ( .B0(n126), .B1(n130), .A0N(\mem[7][6] ), .A1N(n126), .Y(n27) );
  OAI2BB2X1M U90 ( .B0(n126), .B1(n129), .A0N(\mem[7][7] ), .A1N(n126), .Y(n28) );
  AND2X2M U91 ( .A(w_en), .B(w_addr[2]), .Y(n12) );
  NAND3X2M U92 ( .A(n12), .B(n128), .C(w_addr[0]), .Y(n14) );
  NAND3X2M U93 ( .A(n12), .B(n127), .C(w_addr[1]), .Y(n13) );
  NAND3X2M U94 ( .A(w_addr[1]), .B(w_addr[0]), .C(n17), .Y(n16) );
  NAND3X2M U95 ( .A(w_addr[1]), .B(n127), .C(n17), .Y(n18) );
  NAND3X2M U96 ( .A(w_addr[0]), .B(n128), .C(n17), .Y(n19) );
  NAND3X2M U97 ( .A(w_addr[0]), .B(n12), .C(w_addr[1]), .Y(n11) );
  INVX2M U98 ( .A(w_addr[0]), .Y(n127) );
  INVX2M U99 ( .A(w_addr[1]), .Y(n128) );
  NOR2X2M U100 ( .A(n111), .B(N11), .Y(n108) );
  NOR2X2M U101 ( .A(n112), .B(N12), .Y(n105) );
  NOR2X2M U102 ( .A(N11), .B(N12), .Y(n104) );
  INVX2M U103 ( .A(N11), .Y(n112) );
  INVX2M U104 ( .A(N12), .Y(n111) );
  INVX2M U105 ( .A(N10), .Y(n113) );
  AO22X1M U106 ( .A0(\mem[3][0] ), .A1(n105), .B0(\mem[1][0] ), .B1(n104), .Y(
        n1) );
  AOI221XLM U107 ( .A0(\mem[5][0] ), .A1(n108), .B0(\mem[7][0] ), .B1(n107), 
        .C0(n1), .Y(n4) );
  AO22X1M U108 ( .A0(\mem[2][0] ), .A1(n105), .B0(\mem[0][0] ), .B1(n104), .Y(
        n2) );
  AOI221XLM U109 ( .A0(\mem[4][0] ), .A1(n108), .B0(\mem[6][0] ), .B1(n107), 
        .C0(n2), .Y(n3) );
  OAI22X1M U110 ( .A0(n113), .A1(n4), .B0(N10), .B1(n3), .Y(data_out[0]) );
  AO22X1M U111 ( .A0(\mem[3][1] ), .A1(n105), .B0(\mem[1][1] ), .B1(n104), .Y(
        n5) );
  AOI221XLM U112 ( .A0(\mem[5][1] ), .A1(n108), .B0(\mem[7][1] ), .B1(n107), 
        .C0(n5), .Y(n8) );
  AO22X1M U113 ( .A0(\mem[2][1] ), .A1(n105), .B0(\mem[0][1] ), .B1(n104), .Y(
        n6) );
  AOI221XLM U114 ( .A0(\mem[4][1] ), .A1(n108), .B0(\mem[6][1] ), .B1(n107), 
        .C0(n6), .Y(n7) );
  OAI22X1M U115 ( .A0(n113), .A1(n8), .B0(N10), .B1(n7), .Y(data_out[1]) );
  AO22X1M U116 ( .A0(\mem[3][2] ), .A1(n105), .B0(\mem[1][2] ), .B1(n104), .Y(
        n9) );
  AOI221XLM U117 ( .A0(\mem[5][2] ), .A1(n108), .B0(\mem[7][2] ), .B1(n107), 
        .C0(n9), .Y(n86) );
  AO22X1M U118 ( .A0(\mem[2][2] ), .A1(n105), .B0(\mem[0][2] ), .B1(n104), .Y(
        n10) );
  AOI221XLM U119 ( .A0(\mem[4][2] ), .A1(n108), .B0(\mem[6][2] ), .B1(n107), 
        .C0(n10), .Y(n85) );
  OAI22X1M U120 ( .A0(n113), .A1(n86), .B0(N10), .B1(n85), .Y(data_out[2]) );
  AO22X1M U121 ( .A0(\mem[3][3] ), .A1(n105), .B0(\mem[1][3] ), .B1(n104), .Y(
        n87) );
  AOI221XLM U122 ( .A0(\mem[5][3] ), .A1(n108), .B0(\mem[7][3] ), .B1(n107), 
        .C0(n87), .Y(n90) );
  AO22X1M U123 ( .A0(\mem[2][3] ), .A1(n105), .B0(\mem[0][3] ), .B1(n104), .Y(
        n88) );
  AOI221XLM U124 ( .A0(\mem[4][3] ), .A1(n108), .B0(\mem[6][3] ), .B1(n107), 
        .C0(n88), .Y(n89) );
  OAI22X1M U125 ( .A0(n113), .A1(n90), .B0(N10), .B1(n89), .Y(data_out[3]) );
  AO22X1M U126 ( .A0(\mem[3][4] ), .A1(n105), .B0(\mem[1][4] ), .B1(n104), .Y(
        n91) );
  AOI221XLM U127 ( .A0(\mem[5][4] ), .A1(n108), .B0(\mem[7][4] ), .B1(n107), 
        .C0(n91), .Y(n94) );
  AO22X1M U128 ( .A0(\mem[2][4] ), .A1(n105), .B0(\mem[0][4] ), .B1(n104), .Y(
        n92) );
  AOI221XLM U129 ( .A0(\mem[4][4] ), .A1(n108), .B0(\mem[6][4] ), .B1(n107), 
        .C0(n92), .Y(n93) );
  OAI22X1M U130 ( .A0(n113), .A1(n94), .B0(N10), .B1(n93), .Y(data_out[4]) );
  AO22X1M U131 ( .A0(\mem[3][5] ), .A1(n105), .B0(\mem[1][5] ), .B1(n104), .Y(
        n95) );
  AOI221XLM U132 ( .A0(\mem[5][5] ), .A1(n108), .B0(\mem[7][5] ), .B1(n107), 
        .C0(n95), .Y(n98) );
  AO22X1M U133 ( .A0(\mem[2][5] ), .A1(n105), .B0(\mem[0][5] ), .B1(n104), .Y(
        n96) );
  AOI221XLM U134 ( .A0(\mem[4][5] ), .A1(n108), .B0(\mem[6][5] ), .B1(n107), 
        .C0(n96), .Y(n97) );
  OAI22X1M U135 ( .A0(n113), .A1(n98), .B0(N10), .B1(n97), .Y(data_out[5]) );
  AO22X1M U136 ( .A0(\mem[3][6] ), .A1(n105), .B0(\mem[1][6] ), .B1(n104), .Y(
        n99) );
  AOI221XLM U137 ( .A0(\mem[5][6] ), .A1(n108), .B0(\mem[7][6] ), .B1(n107), 
        .C0(n99), .Y(n102) );
  AO22X1M U138 ( .A0(\mem[2][6] ), .A1(n105), .B0(\mem[0][6] ), .B1(n104), .Y(
        n100) );
  AOI221XLM U139 ( .A0(\mem[4][6] ), .A1(n108), .B0(\mem[6][6] ), .B1(n107), 
        .C0(n100), .Y(n101) );
  OAI22X1M U140 ( .A0(n113), .A1(n102), .B0(N10), .B1(n101), .Y(data_out[6])
         );
  AO22X1M U141 ( .A0(\mem[3][7] ), .A1(n105), .B0(\mem[1][7] ), .B1(n104), .Y(
        n103) );
  AOI221XLM U142 ( .A0(\mem[5][7] ), .A1(n108), .B0(\mem[7][7] ), .B1(n107), 
        .C0(n103), .Y(n110) );
  AO22X1M U143 ( .A0(\mem[2][7] ), .A1(n105), .B0(\mem[0][7] ), .B1(n104), .Y(
        n106) );
  AOI221XLM U144 ( .A0(\mem[4][7] ), .A1(n108), .B0(\mem[6][7] ), .B1(n107), 
        .C0(n106), .Y(n109) );
  OAI22X1M U145 ( .A0(n110), .A1(n113), .B0(N10), .B1(n109), .Y(data_out[7])
         );
endmodule


module b2g_WIDTH3_0 ( B, G );
  input [2:0] B;
  output [2:0] G;


  CLKXOR2X2M U1 ( .A(B[2]), .B(B[1]), .Y(G[1]) );
  CLKXOR2X2M U2 ( .A(B[1]), .B(B[0]), .Y(G[0]) );
  BUFX2M U3 ( .A(B[2]), .Y(G[2]) );
endmodule


module async_fifo_write_pointer_DEPTH8 ( w_rst, wclk, w_en, r_ptr_sync, w_addr, 
        w_ptr_gray, full_flag );
  input [3:0] r_ptr_sync;
  output [3:0] w_addr;
  output [3:0] w_ptr_gray;
  input w_rst, wclk, w_en;
  output full_flag;
  wire   n4, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n1, n2, n3;
  wire   [3:0] w_addr_c;
  wire   [2:0] w_ptr_gray_c;

  b2g_WIDTH3_0 b2g_w ( .B(w_addr_c[2:0]), .G(w_ptr_gray_c) );
  DFFRX1M \w_addr_reg[3]  ( .D(w_addr_c[3]), .CK(wclk), .RN(w_rst), .Q(
        w_addr[3]), .QN(n4) );
  DFFRQX2M \w_addr_reg[2]  ( .D(w_addr_c[2]), .CK(wclk), .RN(w_rst), .Q(
        w_addr[2]) );
  DFFRQX2M \w_addr_reg[1]  ( .D(w_addr_c[1]), .CK(wclk), .RN(w_rst), .Q(
        w_addr[1]) );
  DFFRQX2M \w_ptr_gray_reg[0]  ( .D(w_ptr_gray_c[0]), .CK(wclk), .RN(w_rst), 
        .Q(w_ptr_gray[0]) );
  DFFRQX2M \w_ptr_gray_reg[1]  ( .D(w_ptr_gray_c[1]), .CK(wclk), .RN(w_rst), 
        .Q(w_ptr_gray[1]) );
  DFFRQX2M \w_ptr_gray_reg[2]  ( .D(w_ptr_gray_c[2]), .CK(wclk), .RN(w_rst), 
        .Q(w_ptr_gray[2]) );
  DFFRQX2M \w_ptr_gray_reg[3]  ( .D(w_addr_c[3]), .CK(wclk), .RN(w_rst), .Q(
        w_ptr_gray[3]) );
  DFFRQX2M \w_addr_reg[0]  ( .D(w_addr_c[0]), .CK(wclk), .RN(w_rst), .Q(
        w_addr[0]) );
  NOR2BX2M U3 ( .AN(w_en), .B(full_flag), .Y(n10) );
  OAI32X1M U4 ( .A0(n11), .A1(w_addr[2]), .A2(n2), .B0(n1), .B1(n3), .Y(
        w_addr_c[2]) );
  INVX2M U5 ( .A(n9), .Y(n1) );
  OAI32X1M U6 ( .A0(n7), .A1(n2), .A2(n3), .B0(n8), .B1(n4), .Y(w_addr_c[3])
         );
  NAND3X2M U7 ( .A(n10), .B(n4), .C(w_addr[0]), .Y(n7) );
  NOR2X2M U8 ( .A(n9), .B(n3), .Y(n8) );
  OAI22X1M U9 ( .A0(n12), .A1(n2), .B0(w_addr[1]), .B1(n11), .Y(w_addr_c[1])
         );
  AND4X2M U10 ( .A(n13), .B(n14), .C(n15), .D(n16), .Y(full_flag) );
  XNOR2X2M U11 ( .A(w_ptr_gray[1]), .B(r_ptr_sync[1]), .Y(n13) );
  XNOR2X2M U12 ( .A(w_ptr_gray[0]), .B(r_ptr_sync[0]), .Y(n14) );
  CLKXOR2X2M U13 ( .A(w_ptr_gray[2]), .B(r_ptr_sync[2]), .Y(n15) );
  NAND2X2M U14 ( .A(w_addr[1]), .B(n12), .Y(n9) );
  NAND2X2M U15 ( .A(w_addr[0]), .B(n10), .Y(n11) );
  AND2X2M U16 ( .A(w_addr[0]), .B(n10), .Y(n12) );
  CLKXOR2X2M U17 ( .A(w_addr[0]), .B(n10), .Y(w_addr_c[0]) );
  CLKXOR2X2M U18 ( .A(w_ptr_gray[3]), .B(r_ptr_sync[3]), .Y(n16) );
  INVX2M U19 ( .A(w_addr[1]), .Y(n2) );
  INVX2M U20 ( .A(w_addr[2]), .Y(n3) );
endmodule


module b2g_WIDTH3_1 ( B, G );
  input [2:0] B;
  output [2:0] G;


  CLKXOR2X2M U1 ( .A(B[2]), .B(B[1]), .Y(G[1]) );
  CLKXOR2X2M U2 ( .A(B[1]), .B(B[0]), .Y(G[0]) );
  BUFX2M U3 ( .A(B[2]), .Y(G[2]) );
endmodule


module async_fifo_read_pointer_DEPTH8 ( r_rst, rclk, r_en, w_ptr_sync, r_addr, 
        r_ptr_gray, empty_flag );
  input [3:0] w_ptr_sync;
  output [3:0] r_addr;
  output [3:0] r_ptr_gray;
  input r_rst, rclk, r_en;
  output empty_flag;
  wire   n4, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n1, n2, n3;
  wire   [3:0] r_addr_c;
  wire   [2:0] r_ptr_gray_c;

  b2g_WIDTH3_1 b2g_r ( .B(r_addr_c[2:0]), .G(r_ptr_gray_c) );
  DFFRX1M \r_addr_reg[3]  ( .D(r_addr_c[3]), .CK(rclk), .RN(r_rst), .Q(
        r_addr[3]), .QN(n4) );
  DFFRQX2M \r_ptr_gray_reg[0]  ( .D(r_ptr_gray_c[0]), .CK(rclk), .RN(r_rst), 
        .Q(r_ptr_gray[0]) );
  DFFRQX2M \r_ptr_gray_reg[1]  ( .D(r_ptr_gray_c[1]), .CK(rclk), .RN(r_rst), 
        .Q(r_ptr_gray[1]) );
  DFFRQX2M \r_ptr_gray_reg[2]  ( .D(r_ptr_gray_c[2]), .CK(rclk), .RN(r_rst), 
        .Q(r_ptr_gray[2]) );
  DFFRQX2M \r_ptr_gray_reg[3]  ( .D(r_addr_c[3]), .CK(rclk), .RN(r_rst), .Q(
        r_ptr_gray[3]) );
  DFFRQX2M \r_addr_reg[2]  ( .D(r_addr_c[2]), .CK(rclk), .RN(r_rst), .Q(
        r_addr[2]) );
  DFFRQX2M \r_addr_reg[0]  ( .D(r_addr_c[0]), .CK(rclk), .RN(r_rst), .Q(
        r_addr[0]) );
  DFFRQX2M \r_addr_reg[1]  ( .D(r_addr_c[1]), .CK(rclk), .RN(r_rst), .Q(
        r_addr[1]) );
  OAI32X1M U3 ( .A0(n11), .A1(r_addr[2]), .A2(n2), .B0(n1), .B1(n3), .Y(
        r_addr_c[2]) );
  INVX2M U4 ( .A(n9), .Y(n1) );
  OAI32X1M U5 ( .A0(n7), .A1(n2), .A2(n3), .B0(n8), .B1(n4), .Y(r_addr_c[3])
         );
  NAND3X2M U6 ( .A(n10), .B(n4), .C(r_addr[0]), .Y(n7) );
  NOR2X2M U7 ( .A(n9), .B(n3), .Y(n8) );
  OAI22X1M U8 ( .A0(n12), .A1(n2), .B0(r_addr[1]), .B1(n11), .Y(r_addr_c[1])
         );
  XNOR2X2M U9 ( .A(w_ptr_sync[1]), .B(r_ptr_gray[1]), .Y(n13) );
  NAND2X2M U10 ( .A(r_addr[1]), .B(n12), .Y(n9) );
  AND4X2M U11 ( .A(n13), .B(n14), .C(n15), .D(n16), .Y(empty_flag) );
  XNOR2X2M U12 ( .A(w_ptr_sync[0]), .B(r_ptr_gray[0]), .Y(n14) );
  XNOR2X2M U13 ( .A(w_ptr_sync[2]), .B(r_ptr_gray[2]), .Y(n16) );
  XNOR2X2M U14 ( .A(w_ptr_sync[3]), .B(r_ptr_gray[3]), .Y(n15) );
  NAND2X2M U15 ( .A(r_addr[0]), .B(n10), .Y(n11) );
  NOR2BX2M U16 ( .AN(r_en), .B(empty_flag), .Y(n10) );
  INVX2M U17 ( .A(r_addr[1]), .Y(n2) );
  AND2X2M U18 ( .A(r_addr[0]), .B(n10), .Y(n12) );
  CLKXOR2X2M U19 ( .A(r_addr[0]), .B(n10), .Y(r_addr_c[0]) );
  INVX2M U20 ( .A(r_addr[2]), .Y(n3) );
endmodule


module synchronizer_2ff_WIDTH4_0 ( clk, reset, in, out );
  input [3:0] in;
  output [3:0] out;
  input clk, reset;

  wire   [3:0] unstable_out;

  DFFRQX2M \out_reg[3]  ( .D(unstable_out[3]), .CK(clk), .RN(reset), .Q(out[3]) );
  DFFRQX2M \out_reg[2]  ( .D(unstable_out[2]), .CK(clk), .RN(reset), .Q(out[2]) );
  DFFRQX2M \out_reg[1]  ( .D(unstable_out[1]), .CK(clk), .RN(reset), .Q(out[1]) );
  DFFRQX2M \out_reg[0]  ( .D(unstable_out[0]), .CK(clk), .RN(reset), .Q(out[0]) );
  DFFRQX2M \unstable_out_reg[3]  ( .D(in[3]), .CK(clk), .RN(reset), .Q(
        unstable_out[3]) );
  DFFRQX2M \unstable_out_reg[2]  ( .D(in[2]), .CK(clk), .RN(reset), .Q(
        unstable_out[2]) );
  DFFRQX2M \unstable_out_reg[1]  ( .D(in[1]), .CK(clk), .RN(reset), .Q(
        unstable_out[1]) );
  DFFRQX2M \unstable_out_reg[0]  ( .D(in[0]), .CK(clk), .RN(reset), .Q(
        unstable_out[0]) );
endmodule


module synchronizer_2ff_WIDTH4_1 ( clk, reset, in, out );
  input [3:0] in;
  output [3:0] out;
  input clk, reset;

  wire   [3:0] unstable_out;

  DFFRQX2M \out_reg[1]  ( .D(unstable_out[1]), .CK(clk), .RN(reset), .Q(out[1]) );
  DFFRQX2M \out_reg[0]  ( .D(unstable_out[0]), .CK(clk), .RN(reset), .Q(out[0]) );
  DFFRQX2M \out_reg[3]  ( .D(unstable_out[3]), .CK(clk), .RN(reset), .Q(out[3]) );
  DFFRQX2M \out_reg[2]  ( .D(unstable_out[2]), .CK(clk), .RN(reset), .Q(out[2]) );
  DFFRQX2M \unstable_out_reg[3]  ( .D(in[3]), .CK(clk), .RN(reset), .Q(
        unstable_out[3]) );
  DFFRQX2M \unstable_out_reg[2]  ( .D(in[2]), .CK(clk), .RN(reset), .Q(
        unstable_out[2]) );
  DFFRQX2M \unstable_out_reg[1]  ( .D(in[1]), .CK(clk), .RN(reset), .Q(
        unstable_out[1]) );
  DFFRQX2M \unstable_out_reg[0]  ( .D(in[0]), .CK(clk), .RN(reset), .Q(
        unstable_out[0]) );
endmodule


module ASYNC_FIFO_DATA_WIDTH8_DEPTH8 ( wclk, rclk, w_rst, r_rst, wr_inc, 
        rd_inc, f_data_in, empty_flag, full_flag, f_data_out );
  input [7:0] f_data_in;
  output [7:0] f_data_out;
  input wclk, rclk, w_rst, r_rst, wr_inc, rd_inc;
  output empty_flag, full_flag;
  wire   _0_net_, n1, n2;
  wire   [3:0] w_addr;
  wire   [3:0] r_addr;
  wire   [3:0] r_ptr_sync;
  wire   [3:0] w_ptr_gray;
  wire   [3:0] w_ptr_sync;
  wire   [3:0] r_ptr_gray;

  asyc_fifo_mem_DATA_WIDTH8_DEPTH8 u_asyc_fifo_mem ( .w_rst(n1), .wclk(wclk), 
        .data_in(f_data_in), .w_addr(w_addr), .r_addr(r_addr), .w_en(_0_net_), 
        .data_out(f_data_out) );
  async_fifo_write_pointer_DEPTH8 u_async_fifo_write_pointer ( .w_rst(n1), 
        .wclk(wclk), .w_en(wr_inc), .r_ptr_sync(r_ptr_sync), .w_addr(w_addr), 
        .w_ptr_gray(w_ptr_gray), .full_flag(full_flag) );
  async_fifo_read_pointer_DEPTH8 u_async_fifo_read_pointer ( .r_rst(r_rst), 
        .rclk(rclk), .r_en(rd_inc), .w_ptr_sync(w_ptr_sync), .r_addr(r_addr), 
        .r_ptr_gray(r_ptr_gray), .empty_flag(empty_flag) );
  synchronizer_2ff_WIDTH4_0 u_w_synchronizer_2ff ( .clk(rclk), .reset(r_rst), 
        .in(w_ptr_gray), .out(w_ptr_sync) );
  synchronizer_2ff_WIDTH4_1 u_r_synchronizer_2ff ( .clk(wclk), .reset(n1), 
        .in(r_ptr_gray), .out(r_ptr_sync) );
  NOR2BX2M U1 ( .AN(wr_inc), .B(full_flag), .Y(_0_net_) );
  INVX2M U2 ( .A(n2), .Y(n1) );
  INVX2M U3 ( .A(w_rst), .Y(n2) );
endmodule


module pulse_gen_0 ( clk, rst_n, lvl_sig, pulse_sig );
  input clk, rst_n, lvl_sig;
  output pulse_sig;
  wire   q;

  DFFRQX2M q_reg ( .D(lvl_sig), .CK(clk), .RN(rst_n), .Q(q) );
  NOR2BX2M U3 ( .AN(lvl_sig), .B(q), .Y(pulse_sig) );
endmodule


module sys_ctrl_ADDR_WIDTH4_DATA_WIDTH8_FUN_WIDTH4_OUT_WIDTH16 ( clk, rst_n, 
        payload, payload_valid, addr, wr_en, rd_en, wr_data, rd_data, 
        rd_data_valid, alu_fun, alu_en, alu_out_valid, alu_out, clk_div_en, 
        clk_en, wr_inc, f_data_in, full_flag );
  input [7:0] payload;
  output [3:0] addr;
  output [7:0] wr_data;
  input [7:0] rd_data;
  output [3:0] alu_fun;
  input [15:0] alu_out;
  output [7:0] f_data_in;
  input clk, rst_n, payload_valid, rd_data_valid, alu_out_valid, full_flag;
  output wr_en, rd_en, alu_en, clk_div_en, clk_en, wr_inc;
  wire   n1, n2, n3, n4, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57,
         n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71,
         n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83;
  wire   [3:0] current_state;
  wire   [3:0] next_state;

  DFFRX1M \paylaod_addr_reg[0]  ( .D(n68), .CK(clk), .RN(rst_n), .QN(n4) );
  DFFRX1M \paylaod_addr_reg[1]  ( .D(n65), .CK(clk), .RN(rst_n), .QN(n3) );
  DFFRX1M \paylaod_addr_reg[2]  ( .D(n66), .CK(clk), .RN(rst_n), .QN(n2) );
  DFFRX1M \paylaod_addr_reg[3]  ( .D(n67), .CK(clk), .RN(rst_n), .QN(n1) );
  DFFRQX2M \current_state_reg[2]  ( .D(next_state[2]), .CK(clk), .RN(rst_n), 
        .Q(current_state[2]) );
  DFFRQX2M \current_state_reg[0]  ( .D(next_state[0]), .CK(clk), .RN(rst_n), 
        .Q(current_state[0]) );
  DFFRQX2M \current_state_reg[3]  ( .D(next_state[3]), .CK(clk), .RN(rst_n), 
        .Q(current_state[3]) );
  DFFRQX2M \current_state_reg[1]  ( .D(next_state[1]), .CK(clk), .RN(rst_n), 
        .Q(current_state[1]) );
  INVX2M U3 ( .A(1'b0), .Y(clk_div_en) );
  BUFX2M U5 ( .A(payload[0]), .Y(alu_fun[0]) );
  NOR2X2M U6 ( .A(n62), .B(n3), .Y(addr[1]) );
  NOR3X2M U7 ( .A(n32), .B(current_state[1]), .C(n82), .Y(rd_en) );
  NOR2X2M U8 ( .A(n62), .B(n2), .Y(addr[2]) );
  INVX2M U9 ( .A(n54), .Y(alu_en) );
  NOR2X2M U10 ( .A(n69), .B(n77), .Y(n54) );
  INVX2M U11 ( .A(n32), .Y(n78) );
  INVX2M U12 ( .A(n51), .Y(n80) );
  INVX2M U13 ( .A(n25), .Y(n76) );
  INVX2M U14 ( .A(n52), .Y(n72) );
  BUFX2M U15 ( .A(n47), .Y(n69) );
  NOR3X2M U16 ( .A(n83), .B(n51), .C(n79), .Y(n47) );
  NAND2X2M U17 ( .A(n79), .B(n83), .Y(n32) );
  NAND2X2M U18 ( .A(n82), .B(n81), .Y(n51) );
  INVX2M U19 ( .A(n23), .Y(n77) );
  NAND2X2M U20 ( .A(n41), .B(n81), .Y(n25) );
  INVX2M U21 ( .A(full_flag), .Y(n71) );
  INVX2M U22 ( .A(n24), .Y(n70) );
  NOR2X2M U23 ( .A(n40), .B(n73), .Y(n52) );
  NOR2X2M U24 ( .A(n40), .B(n81), .Y(n29) );
  NAND2X2M U25 ( .A(n21), .B(n54), .Y(clk_en) );
  OAI21X2M U26 ( .A0(n62), .A1(n4), .B0(n27), .Y(addr[0]) );
  AND4X2M U27 ( .A(n63), .B(n64), .C(n40), .D(n83), .Y(n62) );
  OAI21X2M U28 ( .A0(current_state[0]), .A1(n82), .B0(current_state[1]), .Y(
        n64) );
  NAND2X2M U29 ( .A(n78), .B(n81), .Y(n63) );
  NAND3X2M U30 ( .A(n82), .B(n83), .C(current_state[0]), .Y(n40) );
  INVX2M U31 ( .A(current_state[1]), .Y(n81) );
  NAND3X2M U32 ( .A(current_state[2]), .B(n78), .C(current_state[1]), .Y(n27)
         );
  INVX2M U33 ( .A(current_state[2]), .Y(n82) );
  NAND3X2M U34 ( .A(n80), .B(n79), .C(current_state[3]), .Y(n23) );
  INVX2M U35 ( .A(current_state[3]), .Y(n83) );
  INVX2M U36 ( .A(current_state[0]), .Y(n79) );
  NOR3X2M U37 ( .A(n82), .B(current_state[3]), .C(n79), .Y(n41) );
  OAI22X1M U38 ( .A0(payload_valid), .A1(n21), .B0(n42), .B1(n43), .Y(n30) );
  NAND3X2M U39 ( .A(payload[0]), .B(payload[6]), .C(payload[4]), .Y(n43) );
  NAND4BX1M U40 ( .AN(payload[5]), .B(payload[2]), .C(n44), .D(n75), .Y(n42)
         );
  NOR2X2M U41 ( .A(n62), .B(n1), .Y(addr[3]) );
  OAI211X2M U42 ( .A0(current_state[1]), .A1(n72), .B0(n33), .C0(n34), .Y(
        next_state[1]) );
  AOI21X2M U43 ( .A0(n76), .A1(payload_valid), .B0(n35), .Y(n34) );
  OAI31X1M U44 ( .A0(n81), .A1(payload_valid), .A2(n32), .B0(n27), .Y(n35) );
  AND4X2M U45 ( .A(payload[7]), .B(payload[3]), .C(n50), .D(payload_valid), 
        .Y(n44) );
  NOR2X2M U46 ( .A(n51), .B(n32), .Y(n50) );
  OAI2BB1X2M U47 ( .A0N(alu_out[0]), .A1N(n77), .B0(n61), .Y(f_data_in[0]) );
  AOI22X1M U48 ( .A0(rd_data[0]), .A1(n54), .B0(alu_out[8]), .B1(n69), .Y(n61)
         );
  OAI2BB1X2M U49 ( .A0N(alu_out[1]), .A1N(n77), .B0(n60), .Y(f_data_in[1]) );
  AOI22X1M U50 ( .A0(rd_data[1]), .A1(n54), .B0(alu_out[9]), .B1(n69), .Y(n60)
         );
  OAI2BB1X2M U51 ( .A0N(alu_out[2]), .A1N(n77), .B0(n59), .Y(f_data_in[2]) );
  AOI22X1M U52 ( .A0(rd_data[2]), .A1(n54), .B0(alu_out[10]), .B1(n69), .Y(n59) );
  OAI2BB1X2M U53 ( .A0N(alu_out[3]), .A1N(n77), .B0(n58), .Y(f_data_in[3]) );
  AOI22X1M U54 ( .A0(rd_data[3]), .A1(n54), .B0(alu_out[11]), .B1(n69), .Y(n58) );
  OAI2BB1X2M U55 ( .A0N(alu_out[4]), .A1N(n77), .B0(n57), .Y(f_data_in[4]) );
  AOI22X1M U56 ( .A0(rd_data[4]), .A1(n54), .B0(alu_out[12]), .B1(n69), .Y(n57) );
  OAI2BB1X2M U57 ( .A0N(alu_out[5]), .A1N(n77), .B0(n56), .Y(f_data_in[5]) );
  AOI22X1M U58 ( .A0(rd_data[5]), .A1(n54), .B0(alu_out[13]), .B1(n69), .Y(n56) );
  OAI2BB1X2M U59 ( .A0N(alu_out[6]), .A1N(n77), .B0(n55), .Y(f_data_in[6]) );
  AOI22X1M U60 ( .A0(rd_data[6]), .A1(n54), .B0(alu_out[14]), .B1(n69), .Y(n55) );
  OAI2BB1X2M U61 ( .A0N(alu_out[7]), .A1N(n77), .B0(n53), .Y(f_data_in[7]) );
  AOI22X1M U62 ( .A0(rd_data[7]), .A1(n54), .B0(alu_out[15]), .B1(n69), .Y(n53) );
  NAND4BX1M U63 ( .AN(n36), .B(n37), .C(n33), .D(n38), .Y(next_state[0]) );
  AOI2BB1X2M U64 ( .A0N(n27), .A1N(n73), .B0(n39), .Y(n38) );
  AOI22X1M U65 ( .A0(n69), .A1(n24), .B0(n77), .B1(n70), .Y(n37) );
  OAI31X1M U66 ( .A0(payload[0]), .A1(payload[4]), .A2(n46), .B0(n26), .Y(n36)
         );
  NAND2X2M U67 ( .A(alu_out_valid), .B(n71), .Y(n24) );
  INVX2M U68 ( .A(payload_valid), .Y(n73) );
  NAND4X2M U69 ( .A(payload[5]), .B(payload[1]), .C(n49), .D(n44), .Y(n46) );
  NOR2X2M U70 ( .A(payload[6]), .B(payload[2]), .Y(n49) );
  NAND4X2M U71 ( .A(n25), .B(n26), .C(n27), .D(n28), .Y(next_state[2]) );
  AOI211X2M U72 ( .A0(n29), .A1(payload_valid), .B0(n30), .C0(n31), .Y(n28) );
  AOI21BX2M U73 ( .A0(rd_data_valid), .A1(n71), .B0N(rd_en), .Y(n31) );
  INVX2M U74 ( .A(n19), .Y(wr_inc) );
  AOI33X2M U75 ( .A0(rd_data_valid), .A1(n71), .A2(rd_en), .B0(
        current_state[3]), .B1(n80), .B2(n70), .Y(n19) );
  NOR2X2M U76 ( .A(n20), .B(n73), .Y(wr_en) );
  AOI21X2M U77 ( .A0(current_state[1]), .A1(n78), .B0(n76), .Y(n20) );
  AOI211X2M U78 ( .A0(n73), .A1(n29), .B0(n74), .C0(n30), .Y(n33) );
  INVX2M U79 ( .A(n45), .Y(n74) );
  NAND3BX2M U80 ( .AN(n46), .B(payload[4]), .C(payload[0]), .Y(n45) );
  OAI22X1M U81 ( .A0(n75), .A1(n72), .B0(n52), .B1(n3), .Y(n65) );
  OAI211X2M U82 ( .A0(n73), .A1(n21), .B0(n22), .C0(n23), .Y(next_state[3]) );
  NAND3X2M U83 ( .A(n80), .B(n24), .C(current_state[3]), .Y(n22) );
  NAND2X2M U84 ( .A(n41), .B(current_state[1]), .Y(n21) );
  AOI21X2M U85 ( .A0(n25), .A1(n40), .B0(payload_valid), .Y(n39) );
  NAND4X2M U86 ( .A(payload[2]), .B(n44), .C(payload[6]), .D(n48), .Y(n26) );
  NOR4X1M U87 ( .A(payload[5]), .B(payload[4]), .C(payload[1]), .D(payload[0]), 
        .Y(n48) );
  OAI2BB2X1M U88 ( .B0(n52), .B1(n1), .A0N(payload[3]), .A1N(n52), .Y(n67) );
  OAI2BB2X1M U89 ( .B0(n52), .B1(n2), .A0N(payload[2]), .A1N(n52), .Y(n66) );
  OAI2BB2X1M U90 ( .B0(n52), .B1(n4), .A0N(payload[0]), .A1N(n52), .Y(n68) );
  INVX2M U91 ( .A(payload[1]), .Y(n75) );
  BUFX2M U92 ( .A(payload[3]), .Y(wr_data[3]) );
  BUFX2M U93 ( .A(payload[3]), .Y(alu_fun[3]) );
  BUFX2M U94 ( .A(payload[2]), .Y(wr_data[2]) );
  BUFX2M U95 ( .A(payload[2]), .Y(alu_fun[2]) );
  BUFX2M U96 ( .A(payload[1]), .Y(wr_data[1]) );
  BUFX2M U97 ( .A(payload[1]), .Y(alu_fun[1]) );
  BUFX2M U98 ( .A(payload[0]), .Y(wr_data[0]) );
  BUFX2M U99 ( .A(payload[7]), .Y(wr_data[7]) );
  BUFX2M U100 ( .A(payload[6]), .Y(wr_data[6]) );
  BUFX2M U101 ( .A(payload[5]), .Y(wr_data[5]) );
  BUFX2M U102 ( .A(payload[4]), .Y(wr_data[4]) );
endmodule


module bit_sync_NUM_STAGES2_BUS_WIDTH1_0 ( clk, rst_n, async, sync );
  input [0:0] async;
  output [0:0] sync;
  input clk, rst_n;
  wire   \ff[0] ;

  DFFRQX2M \ff_reg[1]  ( .D(\ff[0] ), .CK(clk), .RN(rst_n), .Q(sync[0]) );
  DFFRQX2M \ff_reg[0]  ( .D(async[0]), .CK(clk), .RN(rst_n), .Q(\ff[0] ) );
endmodule


module pulse_gen_1 ( clk, rst_n, lvl_sig, pulse_sig );
  input clk, rst_n, lvl_sig;
  output pulse_sig;
  wire   q;

  DFFRQX2M q_reg ( .D(lvl_sig), .CK(clk), .RN(rst_n), .Q(q) );
  NOR2BX2M U3 ( .AN(lvl_sig), .B(q), .Y(pulse_sig) );
endmodule


module data_sync_BUS_WIDTH8 ( clk, rst_n, bus_enable, unsync_bus, sync_bus, 
        enable_pulse );
  input [7:0] unsync_bus;
  output [7:0] sync_bus;
  input clk, rst_n, bus_enable;
  output enable_pulse;
  wire   bus_enable_sync, bus_enable_sync_pulse, N4, N5, N6, N7, N8, N9, N10,
         N11, n1;

  bit_sync_NUM_STAGES2_BUS_WIDTH1_0 bit_sync_inst ( .clk(clk), .rst_n(rst_n), 
        .async(bus_enable), .sync(bus_enable_sync) );
  pulse_gen_1 pulse_gen_inst ( .clk(clk), .rst_n(rst_n), .lvl_sig(
        bus_enable_sync), .pulse_sig(bus_enable_sync_pulse) );
  DFFRQX2M \sync_bus_reg[7]  ( .D(N11), .CK(clk), .RN(rst_n), .Q(sync_bus[7])
         );
  DFFRQX2M \sync_bus_reg[5]  ( .D(N9), .CK(clk), .RN(rst_n), .Q(sync_bus[5])
         );
  DFFRQX2M \sync_bus_reg[6]  ( .D(N10), .CK(clk), .RN(rst_n), .Q(sync_bus[6])
         );
  DFFRQX2M \sync_bus_reg[4]  ( .D(N8), .CK(clk), .RN(rst_n), .Q(sync_bus[4])
         );
  DFFRQX2M \sync_bus_reg[3]  ( .D(N7), .CK(clk), .RN(rst_n), .Q(sync_bus[3])
         );
  DFFRQX2M \sync_bus_reg[2]  ( .D(N6), .CK(clk), .RN(rst_n), .Q(sync_bus[2])
         );
  DFFRQX2M enable_pulse_reg ( .D(bus_enable_sync_pulse), .CK(clk), .RN(rst_n), 
        .Q(enable_pulse) );
  DFFRQX2M \sync_bus_reg[0]  ( .D(N4), .CK(clk), .RN(rst_n), .Q(sync_bus[0])
         );
  DFFRQX2M \sync_bus_reg[1]  ( .D(N5), .CK(clk), .RN(rst_n), .Q(sync_bus[1])
         );
  INVX2M U3 ( .A(bus_enable_sync_pulse), .Y(n1) );
  AO22X1M U4 ( .A0(unsync_bus[0]), .A1(bus_enable_sync_pulse), .B0(sync_bus[0]), .B1(n1), .Y(N4) );
  AO22X1M U5 ( .A0(unsync_bus[1]), .A1(bus_enable_sync_pulse), .B0(sync_bus[1]), .B1(n1), .Y(N5) );
  AO22X1M U6 ( .A0(unsync_bus[2]), .A1(bus_enable_sync_pulse), .B0(sync_bus[2]), .B1(n1), .Y(N6) );
  AO22X1M U7 ( .A0(unsync_bus[3]), .A1(bus_enable_sync_pulse), .B0(sync_bus[3]), .B1(n1), .Y(N7) );
  AO22X1M U8 ( .A0(unsync_bus[4]), .A1(bus_enable_sync_pulse), .B0(sync_bus[4]), .B1(n1), .Y(N8) );
  AO22X1M U9 ( .A0(unsync_bus[5]), .A1(bus_enable_sync_pulse), .B0(sync_bus[5]), .B1(n1), .Y(N9) );
  AO22X1M U10 ( .A0(unsync_bus[6]), .A1(bus_enable_sync_pulse), .B0(
        sync_bus[6]), .B1(n1), .Y(N10) );
  AO22X1M U11 ( .A0(unsync_bus[7]), .A1(bus_enable_sync_pulse), .B0(
        sync_bus[7]), .B1(n1), .Y(N11) );
endmodule


module sys_top ( ref_clk, uart_clk, rst_n, rx_in, tx_out, parity_error, 
        framing_error );
  input ref_clk, uart_clk, rst_n, rx_in;
  output tx_out, parity_error, framing_error;
  wire   d0_sync_rst_n, d1_sync_rst_n, tx_clk, rx_clk, parity_type,
         parity_enable, tx_busy, rx_data_valid, gated_clk, clk_en,
         alu_out_valid, alu_en, rd_data_valid, rd_en, wr_en, full_flag,
         empty_flag, rd_inc, wr_inc, payload_valid, n1, n2, n3;
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

  rst_sync_0 d0_rst_sync_inst ( .rst(rst_n), .clk(ref_clk), .sync_rst(
        d0_sync_rst_n) );
  rst_sync_1 d1_rst_sync_inst ( .rst(rst_n), .clk(uart_clk), .sync_rst(
        d1_sync_rst_n) );
  div_mux div_mux_inst ( .tx_div_ratio(tx_div_ratio), .prescale(prescale), 
        .rx_div_ratio({SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        rx_div_ratio[5:0]}) );
  clk_div_RATIO_WIDTH8_0 tx_clk_div_inst ( .i_ref_clk(uart_clk), .i_rst_n(n2), 
        .i_clk_en(1'b1), .i_div_ratio(tx_div_ratio), .o_div_clk(tx_clk) );
  clk_div_RATIO_WIDTH8_1 rx_clk_div_inst ( .i_ref_clk(uart_clk), .i_rst_n(n2), 
        .i_clk_en(1'b1), .i_div_ratio({1'b0, 1'b0, rx_div_ratio[5:0]}), 
        .o_div_clk(rx_clk) );
  uart_DATA_WIDTH8 uart_inst ( .rst_n(n2), .tx_clk(tx_clk), .rx_clk(rx_clk), 
        .rx_in(rx_in), .rx_p_data(rx_p_data), .rx_data_valid(rx_data_valid), 
        .tx_p_data(tx_p_data), .tx_data_valid(n1), .tx_out(tx_out), .tx_busy(
        tx_busy), .prescale(prescale), .parity_enable(parity_enable), 
        .parity_type(parity_type), .parity_error(parity_error), 
        .framing_error(framing_error) );
  clk_gate_USE_ICG1 clk_gate_inst ( .clk(ref_clk), .clk_en(clk_en), 
        .gated_clk(gated_clk) );
  ALU_DATA_WIDTH8_FUN_WIDTH4_OUT_WIDTH16 ALU_inst ( .clk(gated_clk), .rst_n(
        d0_sync_rst_n), .op_a(op_a), .op_b(op_b), .alu_fun(alu_fun), .alu_en(
        alu_en), .alu_out_valid(alu_out_valid), .alu_out(alu_out) );
  RegFile_ADDR_WIDTH4_DATA_WIDTH8 RegFile_inst ( .clk(ref_clk), .rst_n(
        d0_sync_rst_n), .addr(addr), .wr_en(wr_en), .rd_en(rd_en), .wr_data(
        wr_data), .rd_data(rd_data), .rd_data_valid(rd_data_valid), .reg_0(
        op_a), .reg_1(op_b), .reg_2({prescale, parity_type, parity_enable}), 
        .reg_3(tx_div_ratio) );
  ASYNC_FIFO_DATA_WIDTH8_DEPTH8 ASYNC_FIFO_inst ( .wclk(ref_clk), .rclk(tx_clk), .w_rst(d0_sync_rst_n), .r_rst(n2), .wr_inc(wr_inc), .rd_inc(rd_inc), 
        .f_data_in(f_data_in), .empty_flag(empty_flag), .full_flag(full_flag), 
        .f_data_out(tx_p_data) );
  pulse_gen_0 pulse_gen_inst ( .clk(tx_clk), .rst_n(n2), .lvl_sig(tx_busy), 
        .pulse_sig(rd_inc) );
  sys_ctrl_ADDR_WIDTH4_DATA_WIDTH8_FUN_WIDTH4_OUT_WIDTH16 sys_ctrl ( .clk(
        ref_clk), .rst_n(d0_sync_rst_n), .payload(payload), .payload_valid(
        payload_valid), .addr(addr), .wr_en(wr_en), .rd_en(rd_en), .wr_data(
        wr_data), .rd_data(rd_data), .rd_data_valid(rd_data_valid), .alu_fun(
        alu_fun), .alu_en(alu_en), .alu_out_valid(alu_out_valid), .alu_out(
        alu_out), .clk_en(clk_en), .wr_inc(wr_inc), .f_data_in(f_data_in), 
        .full_flag(full_flag) );
  data_sync_BUS_WIDTH8 data_sync_inst ( .clk(ref_clk), .rst_n(d0_sync_rst_n), 
        .bus_enable(rx_data_valid), .unsync_bus(rx_p_data), .sync_bus(payload), 
        .enable_pulse(payload_valid) );
  INVX2M U2 ( .A(empty_flag), .Y(n1) );
  INVX4M U3 ( .A(n3), .Y(n2) );
  INVX2M U4 ( .A(d1_sync_rst_n), .Y(n3) );
endmodule

