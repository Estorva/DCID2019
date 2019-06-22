/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : N-2017.09-SP2
// Date      : Sat Jun 22 20:58:44 2019
/////////////////////////////////////////////////////////////


module PPG_9_DW01_inc_0 ( A_19_, A_18_, A_17_, A_16_, A_15_, A_14_, A_13_, 
        A_12_, A_11_, A_10_, A_9_, A_8_, A_7_, A_6_, A_5_, A_4_, A_3_, A_2_, 
        A_1_, SUM_19_, SUM_18_, SUM_17_, SUM_16_, SUM_15_, SUM_14_, SUM_13_, 
        SUM_12_, SUM_11_, SUM_10_, SUM_9_, SUM_8_, SUM_7_, SUM_6_, SUM_5_, 
        SUM_4_, SUM_3_, SUM_2_, SUM_1_ );
  input A_19_, A_18_, A_17_, A_16_, A_15_, A_14_, A_13_, A_12_, A_11_, A_10_,
         A_9_, A_8_, A_7_, A_6_, A_5_, A_4_, A_3_, A_2_, A_1_;
  output SUM_19_, SUM_18_, SUM_17_, SUM_16_, SUM_15_, SUM_14_, SUM_13_,
         SUM_12_, SUM_11_, SUM_10_, SUM_9_, SUM_8_, SUM_7_, SUM_6_, SUM_5_,
         SUM_4_, SUM_3_, SUM_2_, SUM_1_;
  wire   carry_19_, carry_18_, carry_17_, carry_16_, carry_15_, carry_14_,
         carry_13_, carry_12_, carry_11_, carry_10_, carry_9_, carry_8_,
         carry_7_, carry_6_, carry_5_, carry_4_, carry_3_;

  ADDHXL U1_1_18 ( .A(A_18_), .B(carry_18_), .CO(carry_19_), .S(SUM_18_) );
  ADDHXL U1_1_17 ( .A(A_17_), .B(carry_17_), .CO(carry_18_), .S(SUM_17_) );
  ADDHXL U1_1_16 ( .A(A_16_), .B(carry_16_), .CO(carry_17_), .S(SUM_16_) );
  ADDHXL U1_1_15 ( .A(A_15_), .B(carry_15_), .CO(carry_16_), .S(SUM_15_) );
  ADDHXL U1_1_14 ( .A(A_14_), .B(carry_14_), .CO(carry_15_), .S(SUM_14_) );
  ADDHXL U1_1_13 ( .A(A_13_), .B(carry_13_), .CO(carry_14_), .S(SUM_13_) );
  ADDHXL U1_1_12 ( .A(A_12_), .B(carry_12_), .CO(carry_13_), .S(SUM_12_) );
  ADDHXL U1_1_11 ( .A(A_11_), .B(carry_11_), .CO(carry_12_), .S(SUM_11_) );
  ADDHXL U1_1_10 ( .A(A_10_), .B(carry_10_), .CO(carry_11_), .S(SUM_10_) );
  ADDHXL U1_1_9 ( .A(A_9_), .B(carry_9_), .CO(carry_10_), .S(SUM_9_) );
  ADDHXL U1_1_8 ( .A(A_8_), .B(carry_8_), .CO(carry_9_), .S(SUM_8_) );
  ADDHXL U1_1_7 ( .A(A_7_), .B(carry_7_), .CO(carry_8_), .S(SUM_7_) );
  ADDHXL U1_1_6 ( .A(A_6_), .B(carry_6_), .CO(carry_7_), .S(SUM_6_) );
  ADDHXL U1_1_5 ( .A(A_5_), .B(carry_5_), .CO(carry_6_), .S(SUM_5_) );
  ADDHXL U1_1_4 ( .A(A_4_), .B(carry_4_), .CO(carry_5_), .S(SUM_4_) );
  ADDHXL U1_1_3 ( .A(A_3_), .B(carry_3_), .CO(carry_4_), .S(SUM_3_) );
  ADDHXL U1_1_2 ( .A(A_2_), .B(A_1_), .CO(carry_3_), .S(SUM_2_) );
  CLKINVX1 U1 ( .A(A_1_), .Y(SUM_1_) );
  XOR2X1 U2 ( .A(carry_19_), .B(A_19_), .Y(SUM_19_) );
endmodule


module PPG_9_DW01_inc_1 ( SUM, A_18_, A_17_, A_16_, A_15_, A_14_, A_13_, A_12_, 
        A_11_, A_10_, A_9_, A_8_, A_7_, A_6_, A_5_, A_4_, A_3_, A_2_, A_1_, 
        A_0_ );
  output [19:0] SUM;
  input A_18_, A_17_, A_16_, A_15_, A_14_, A_13_, A_12_, A_11_, A_10_, A_9_,
         A_8_, A_7_, A_6_, A_5_, A_4_, A_3_, A_2_, A_1_, A_0_;

  wire   [19:2] carry;

  ADDHXL U1_1_18 ( .A(A_18_), .B(carry[18]), .CO(carry[19]), .S(SUM[18]) );
  ADDHXL U1_1_17 ( .A(A_17_), .B(carry[17]), .CO(carry[18]), .S(SUM[17]) );
  ADDHXL U1_1_16 ( .A(A_16_), .B(carry[16]), .CO(carry[17]), .S(SUM[16]) );
  ADDHXL U1_1_15 ( .A(A_15_), .B(carry[15]), .CO(carry[16]), .S(SUM[15]) );
  ADDHXL U1_1_14 ( .A(A_14_), .B(carry[14]), .CO(carry[15]), .S(SUM[14]) );
  ADDHXL U1_1_13 ( .A(A_13_), .B(carry[13]), .CO(carry[14]), .S(SUM[13]) );
  ADDHXL U1_1_12 ( .A(A_12_), .B(carry[12]), .CO(carry[13]), .S(SUM[12]) );
  ADDHXL U1_1_11 ( .A(A_11_), .B(carry[11]), .CO(carry[12]), .S(SUM[11]) );
  ADDHXL U1_1_10 ( .A(A_10_), .B(carry[10]), .CO(carry[11]), .S(SUM[10]) );
  ADDHXL U1_1_9 ( .A(A_9_), .B(carry[9]), .CO(carry[10]), .S(SUM[9]) );
  ADDHXL U1_1_8 ( .A(A_8_), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  ADDHXL U1_1_7 ( .A(A_7_), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  ADDHXL U1_1_6 ( .A(A_6_), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_5 ( .A(A_5_), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A_4_), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_3 ( .A(A_3_), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_2 ( .A(A_2_), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_1 ( .A(A_1_), .B(A_0_), .CO(carry[2]), .S(SUM[1]) );
  CLKINVX1 U1 ( .A(carry[19]), .Y(SUM[19]) );
  CLKINVX1 U2 ( .A(A_0_), .Y(SUM[0]) );
endmodule


module PPG_9 ( Mc, Mp, phase, PP );
  input [18:0] Mc;
  input [4:0] Mp;
  output [19:0] PP;
  input phase;
  wire   N56, N57, N58, N59, N60, N61, N62, N63, N64, N65, N66, N67, N68, N69,
         N70, N71, N72, N73, N74, N75, N76, N77, N78, N79, N80, N81, N82, N83,
         N84, N85, N86, N87, N88, N89, N90, N91, N92, N93, N94, n2, n3, n4, n5,
         n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n560, n570, n580, n590, n600, n610,
         n620, n630, n640, n650, n660, n670, n680, n690, n700, n710, n720,
         n730, n740, n750, n760;
  wire   [2:0] bitGroup;

  PPG_9_DW01_inc_0 add_43 ( .A_19_(n590), .A_18_(n600), .A_17_(n610), .A_16_(
        n620), .A_15_(n630), .A_14_(n640), .A_13_(n650), .A_12_(n660), .A_11_(
        n670), .A_10_(n580), .A_9_(n680), .A_8_(n690), .A_7_(n700), .A_6_(n710), .A_5_(n720), .A_4_(n730), .A_3_(n740), .A_2_(n750), .A_1_(n760), .SUM_19_(
        N74), .SUM_18_(N73), .SUM_17_(N72), .SUM_16_(N71), .SUM_15_(N70), 
        .SUM_14_(N69), .SUM_13_(N68), .SUM_12_(N67), .SUM_11_(N66), .SUM_10_(
        N65), .SUM_9_(N64), .SUM_8_(N63), .SUM_7_(N62), .SUM_6_(N61), .SUM_5_(
        N60), .SUM_4_(N59), .SUM_3_(N58), .SUM_2_(N57), .SUM_1_(N56) );
  PPG_9_DW01_inc_1 r297 ( .SUM({N94, N93, N92, N91, N90, N89, N88, N87, N86, 
        N85, N84, N83, N82, N81, N80, N79, N78, N77, N76, N75}), .A_18_(n590), 
        .A_17_(n600), .A_16_(n610), .A_15_(n620), .A_14_(n630), .A_13_(n640), 
        .A_12_(n650), .A_11_(n660), .A_10_(n670), .A_9_(n580), .A_8_(n680), 
        .A_7_(n690), .A_6_(n700), .A_5_(n710), .A_4_(n720), .A_3_(n730), 
        .A_2_(n740), .A_1_(n750), .A_0_(n760) );
  OAI21X1 U4 ( .A0(bitGroup[1]), .A1(bitGroup[0]), .B0(n45), .Y(n48) );
  AOI211XL U5 ( .A0(n49), .A1(n48), .B0(n47), .C0(n46), .Y(PP[19]) );
  NOR2XL U6 ( .A(N94), .B(n48), .Y(n46) );
  AND2XL U7 ( .A(n3), .B(n48), .Y(n4) );
  CLKBUFX3 U8 ( .A(n41), .Y(n53) );
  INVXL U9 ( .A(phase), .Y(n570) );
  CLKINVX1 U10 ( .A(N56), .Y(n50) );
  CLKINVX1 U11 ( .A(n53), .Y(n51) );
  NOR2XL U12 ( .A(n48), .B(bitGroup[2]), .Y(n41) );
  CLKBUFX3 U13 ( .A(n40), .Y(n54) );
  NOR2BXL U14 ( .AN(bitGroup[2]), .B(n48), .Y(n40) );
  CLKBUFX3 U15 ( .A(n44), .Y(n55) );
  NAND2X1 U16 ( .A(n4), .B(bitGroup[1]), .Y(n44) );
  CLKBUFX3 U17 ( .A(n39), .Y(n560) );
  NOR2BX1 U18 ( .AN(n4), .B(bitGroup[1]), .Y(n39) );
  CLKINVX1 U19 ( .A(Mc[1]), .Y(n750) );
  CLKINVX1 U20 ( .A(Mc[2]), .Y(n740) );
  CLKINVX1 U21 ( .A(Mc[3]), .Y(n730) );
  CLKINVX1 U22 ( .A(Mc[4]), .Y(n720) );
  CLKINVX1 U23 ( .A(Mc[5]), .Y(n710) );
  CLKINVX1 U24 ( .A(Mc[6]), .Y(n700) );
  CLKINVX1 U25 ( .A(Mc[7]), .Y(n690) );
  CLKINVX1 U26 ( .A(Mc[8]), .Y(n680) );
  CLKINVX1 U27 ( .A(Mc[9]), .Y(n580) );
  CLKINVX1 U28 ( .A(Mc[10]), .Y(n670) );
  CLKINVX1 U29 ( .A(Mc[11]), .Y(n660) );
  CLKINVX1 U30 ( .A(Mc[12]), .Y(n650) );
  CLKINVX1 U31 ( .A(Mc[13]), .Y(n640) );
  CLKINVX1 U32 ( .A(Mc[14]), .Y(n630) );
  CLKINVX1 U33 ( .A(Mc[15]), .Y(n620) );
  CLKINVX1 U34 ( .A(Mc[16]), .Y(n610) );
  CLKINVX1 U35 ( .A(Mc[17]), .Y(n600) );
  CLKINVX1 U36 ( .A(Mc[18]), .Y(n590) );
  CLKINVX1 U37 ( .A(Mc[0]), .Y(n760) );
  CLKINVX1 U38 ( .A(bitGroup[1]), .Y(n52) );
  AO22X2 U39 ( .A0(Mp[3]), .A1(phase), .B0(Mp[1]), .B1(n570), .Y(bitGroup[1])
         );
  AO22X1 U40 ( .A0(Mp[2]), .A1(phase), .B0(Mp[0]), .B1(n570), .Y(bitGroup[0])
         );
  AO22X1 U41 ( .A0(n570), .A1(Mp[2]), .B0(phase), .B1(Mp[4]), .Y(bitGroup[2])
         );
  NAND2X1 U42 ( .A(bitGroup[1]), .B(bitGroup[0]), .Y(n45) );
  NAND2X1 U43 ( .A(N75), .B(n54), .Y(n2) );
  XOR2X1 U44 ( .A(bitGroup[1]), .B(bitGroup[2]), .Y(n3) );
  NAND2X1 U45 ( .A(N56), .B(n560), .Y(n6) );
  AOI22X1 U46 ( .A0(N76), .A1(n54), .B0(Mc[1]), .B1(n53), .Y(n5) );
  OAI211X1 U47 ( .A0(n55), .A1(n50), .B0(n6), .C0(n5), .Y(PP[1]) );
  NAND2X1 U48 ( .A(N57), .B(n560), .Y(n8) );
  AOI22X1 U49 ( .A0(N77), .A1(n54), .B0(Mc[2]), .B1(n53), .Y(n7) );
  OAI211X1 U50 ( .A0(n55), .A1(n750), .B0(n8), .C0(n7), .Y(PP[2]) );
  NAND2X1 U51 ( .A(N58), .B(n560), .Y(n10) );
  AOI22X1 U52 ( .A0(N78), .A1(n54), .B0(Mc[3]), .B1(n53), .Y(n9) );
  OAI211X1 U53 ( .A0(n55), .A1(n740), .B0(n10), .C0(n9), .Y(PP[3]) );
  NAND2X1 U54 ( .A(N59), .B(n560), .Y(n12) );
  AOI22X1 U55 ( .A0(N79), .A1(n54), .B0(Mc[4]), .B1(n53), .Y(n11) );
  OAI211X1 U56 ( .A0(n55), .A1(n730), .B0(n12), .C0(n11), .Y(PP[4]) );
  NAND2X1 U57 ( .A(N60), .B(n560), .Y(n14) );
  AOI22X1 U58 ( .A0(N80), .A1(n54), .B0(Mc[5]), .B1(n53), .Y(n13) );
  OAI211X1 U59 ( .A0(n55), .A1(n720), .B0(n14), .C0(n13), .Y(PP[5]) );
  NAND2X1 U60 ( .A(N61), .B(n560), .Y(n16) );
  AOI22X1 U61 ( .A0(N81), .A1(n54), .B0(Mc[6]), .B1(n53), .Y(n15) );
  OAI211X1 U62 ( .A0(n55), .A1(n710), .B0(n16), .C0(n15), .Y(PP[6]) );
  NAND2X1 U63 ( .A(N62), .B(n560), .Y(n18) );
  AOI22X1 U64 ( .A0(N82), .A1(n54), .B0(Mc[7]), .B1(n53), .Y(n17) );
  OAI211X1 U65 ( .A0(n55), .A1(n700), .B0(n18), .C0(n17), .Y(PP[7]) );
  NAND2X1 U66 ( .A(N63), .B(n560), .Y(n20) );
  AOI22X1 U67 ( .A0(N83), .A1(n54), .B0(Mc[8]), .B1(n53), .Y(n19) );
  OAI211X1 U68 ( .A0(n55), .A1(n690), .B0(n20), .C0(n19), .Y(PP[8]) );
  NAND2X1 U69 ( .A(N64), .B(n560), .Y(n22) );
  AOI22X1 U70 ( .A0(N84), .A1(n54), .B0(Mc[9]), .B1(n53), .Y(n21) );
  OAI211X1 U71 ( .A0(n55), .A1(n680), .B0(n22), .C0(n21), .Y(PP[9]) );
  NAND2X1 U72 ( .A(N65), .B(n560), .Y(n24) );
  AOI22X1 U73 ( .A0(N85), .A1(n54), .B0(Mc[10]), .B1(n53), .Y(n23) );
  OAI211X1 U74 ( .A0(n55), .A1(n580), .B0(n24), .C0(n23), .Y(PP[10]) );
  NAND2X1 U75 ( .A(N66), .B(n560), .Y(n26) );
  AOI22X1 U76 ( .A0(N86), .A1(n54), .B0(Mc[11]), .B1(n53), .Y(n25) );
  OAI211X1 U77 ( .A0(n55), .A1(n670), .B0(n26), .C0(n25), .Y(PP[11]) );
  NAND2X1 U78 ( .A(N67), .B(n560), .Y(n28) );
  AOI22X1 U79 ( .A0(N87), .A1(n54), .B0(Mc[12]), .B1(n53), .Y(n27) );
  OAI211X1 U80 ( .A0(n55), .A1(n660), .B0(n28), .C0(n27), .Y(PP[12]) );
  NAND2X1 U81 ( .A(N68), .B(n560), .Y(n30) );
  AOI22X1 U82 ( .A0(N88), .A1(n54), .B0(Mc[13]), .B1(n53), .Y(n29) );
  OAI211X1 U83 ( .A0(n55), .A1(n650), .B0(n30), .C0(n29), .Y(PP[13]) );
  NAND2X1 U84 ( .A(N69), .B(n560), .Y(n32) );
  AOI22X1 U85 ( .A0(N89), .A1(n54), .B0(Mc[14]), .B1(n53), .Y(n31) );
  OAI211X1 U86 ( .A0(n55), .A1(n640), .B0(n32), .C0(n31), .Y(PP[14]) );
  NAND2X1 U87 ( .A(N70), .B(n560), .Y(n34) );
  AOI22X1 U88 ( .A0(N90), .A1(n54), .B0(Mc[15]), .B1(n53), .Y(n33) );
  OAI211X1 U89 ( .A0(n55), .A1(n630), .B0(n34), .C0(n33), .Y(PP[15]) );
  NAND2X1 U90 ( .A(N71), .B(n560), .Y(n36) );
  AOI22X1 U91 ( .A0(N91), .A1(n54), .B0(Mc[16]), .B1(n53), .Y(n35) );
  OAI211X1 U92 ( .A0(n55), .A1(n620), .B0(n36), .C0(n35), .Y(PP[16]) );
  NAND2X1 U93 ( .A(N72), .B(n560), .Y(n38) );
  AOI22X1 U94 ( .A0(N92), .A1(n54), .B0(n53), .B1(Mc[17]), .Y(n37) );
  OAI211X1 U95 ( .A0(n55), .A1(n610), .B0(n38), .C0(n37), .Y(PP[17]) );
  NAND2X1 U96 ( .A(N73), .B(n560), .Y(n43) );
  AOI22X1 U97 ( .A0(Mc[18]), .A1(n53), .B0(N93), .B1(n54), .Y(n42) );
  OAI211X1 U98 ( .A0(n55), .A1(n600), .B0(n43), .C0(n42), .Y(PP[18]) );
  OAI22XL U99 ( .A0(Mc[18]), .A1(n52), .B0(N74), .B1(bitGroup[1]), .Y(n49) );
  XOR2X1 U100 ( .A(n45), .B(bitGroup[2]), .Y(n47) );
  OAI21XL U101 ( .A0(n51), .A1(n50), .B0(n2), .Y(PP[0]) );
endmodule


module PPG_8_DW01_inc_0 ( A_19_, A_18_, A_17_, A_16_, A_15_, A_14_, A_13_, 
        A_12_, A_11_, A_10_, A_9_, A_8_, A_7_, A_6_, A_5_, A_4_, A_3_, A_2_, 
        A_1_, SUM_19_, SUM_18_, SUM_17_, SUM_16_, SUM_15_, SUM_14_, SUM_13_, 
        SUM_12_, SUM_11_, SUM_10_, SUM_9_, SUM_8_, SUM_7_, SUM_6_, SUM_5_, 
        SUM_4_, SUM_3_, SUM_2_, SUM_1_ );
  input A_19_, A_18_, A_17_, A_16_, A_15_, A_14_, A_13_, A_12_, A_11_, A_10_,
         A_9_, A_8_, A_7_, A_6_, A_5_, A_4_, A_3_, A_2_, A_1_;
  output SUM_19_, SUM_18_, SUM_17_, SUM_16_, SUM_15_, SUM_14_, SUM_13_,
         SUM_12_, SUM_11_, SUM_10_, SUM_9_, SUM_8_, SUM_7_, SUM_6_, SUM_5_,
         SUM_4_, SUM_3_, SUM_2_, SUM_1_;
  wire   carry_19_, carry_18_, carry_17_, carry_16_, carry_15_, carry_14_,
         carry_13_, carry_12_, carry_11_, carry_10_, carry_9_, carry_8_,
         carry_7_, carry_6_, carry_5_, carry_4_, carry_3_;

  ADDHXL U1_1_18 ( .A(A_18_), .B(carry_18_), .CO(carry_19_), .S(SUM_18_) );
  ADDHXL U1_1_17 ( .A(A_17_), .B(carry_17_), .CO(carry_18_), .S(SUM_17_) );
  ADDHXL U1_1_16 ( .A(A_16_), .B(carry_16_), .CO(carry_17_), .S(SUM_16_) );
  ADDHXL U1_1_15 ( .A(A_15_), .B(carry_15_), .CO(carry_16_), .S(SUM_15_) );
  ADDHXL U1_1_14 ( .A(A_14_), .B(carry_14_), .CO(carry_15_), .S(SUM_14_) );
  ADDHXL U1_1_13 ( .A(A_13_), .B(carry_13_), .CO(carry_14_), .S(SUM_13_) );
  ADDHXL U1_1_12 ( .A(A_12_), .B(carry_12_), .CO(carry_13_), .S(SUM_12_) );
  ADDHXL U1_1_11 ( .A(A_11_), .B(carry_11_), .CO(carry_12_), .S(SUM_11_) );
  ADDHXL U1_1_10 ( .A(A_10_), .B(carry_10_), .CO(carry_11_), .S(SUM_10_) );
  ADDHXL U1_1_9 ( .A(A_9_), .B(carry_9_), .CO(carry_10_), .S(SUM_9_) );
  ADDHXL U1_1_8 ( .A(A_8_), .B(carry_8_), .CO(carry_9_), .S(SUM_8_) );
  ADDHXL U1_1_7 ( .A(A_7_), .B(carry_7_), .CO(carry_8_), .S(SUM_7_) );
  ADDHXL U1_1_6 ( .A(A_6_), .B(carry_6_), .CO(carry_7_), .S(SUM_6_) );
  ADDHXL U1_1_5 ( .A(A_5_), .B(carry_5_), .CO(carry_6_), .S(SUM_5_) );
  ADDHXL U1_1_4 ( .A(A_4_), .B(carry_4_), .CO(carry_5_), .S(SUM_4_) );
  ADDHXL U1_1_3 ( .A(A_3_), .B(carry_3_), .CO(carry_4_), .S(SUM_3_) );
  ADDHXL U1_1_2 ( .A(A_2_), .B(A_1_), .CO(carry_3_), .S(SUM_2_) );
  CLKINVX1 U1 ( .A(A_1_), .Y(SUM_1_) );
  XOR2X1 U2 ( .A(carry_19_), .B(A_19_), .Y(SUM_19_) );
endmodule


module PPG_8_DW01_inc_1 ( SUM, A_18_, A_17_, A_16_, A_15_, A_14_, A_13_, A_12_, 
        A_11_, A_10_, A_9_, A_8_, A_7_, A_6_, A_5_, A_4_, A_3_, A_2_, A_1_, 
        A_0_ );
  output [19:0] SUM;
  input A_18_, A_17_, A_16_, A_15_, A_14_, A_13_, A_12_, A_11_, A_10_, A_9_,
         A_8_, A_7_, A_6_, A_5_, A_4_, A_3_, A_2_, A_1_, A_0_;

  wire   [19:2] carry;

  ADDHXL U1_1_18 ( .A(A_18_), .B(carry[18]), .CO(carry[19]), .S(SUM[18]) );
  ADDHXL U1_1_17 ( .A(A_17_), .B(carry[17]), .CO(carry[18]), .S(SUM[17]) );
  ADDHXL U1_1_16 ( .A(A_16_), .B(carry[16]), .CO(carry[17]), .S(SUM[16]) );
  ADDHXL U1_1_15 ( .A(A_15_), .B(carry[15]), .CO(carry[16]), .S(SUM[15]) );
  ADDHXL U1_1_14 ( .A(A_14_), .B(carry[14]), .CO(carry[15]), .S(SUM[14]) );
  ADDHXL U1_1_13 ( .A(A_13_), .B(carry[13]), .CO(carry[14]), .S(SUM[13]) );
  ADDHXL U1_1_12 ( .A(A_12_), .B(carry[12]), .CO(carry[13]), .S(SUM[12]) );
  ADDHXL U1_1_11 ( .A(A_11_), .B(carry[11]), .CO(carry[12]), .S(SUM[11]) );
  ADDHXL U1_1_10 ( .A(A_10_), .B(carry[10]), .CO(carry[11]), .S(SUM[10]) );
  ADDHXL U1_1_9 ( .A(A_9_), .B(carry[9]), .CO(carry[10]), .S(SUM[9]) );
  ADDHXL U1_1_8 ( .A(A_8_), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  ADDHXL U1_1_7 ( .A(A_7_), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  ADDHXL U1_1_6 ( .A(A_6_), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_5 ( .A(A_5_), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A_4_), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_3 ( .A(A_3_), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_2 ( .A(A_2_), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_1 ( .A(A_1_), .B(A_0_), .CO(carry[2]), .S(SUM[1]) );
  CLKINVX1 U1 ( .A(carry[19]), .Y(SUM[19]) );
  CLKINVX1 U2 ( .A(A_0_), .Y(SUM[0]) );
endmodule


module PPG_8 ( Mc, Mp, phase, PP );
  input [18:0] Mc;
  input [4:0] Mp;
  output [19:0] PP;
  input phase;
  wire   N56, N57, N58, N59, N60, N61, N62, N63, N64, N65, N66, N67, N68, N69,
         N70, N71, N72, N73, N74, N75, N76, N77, N78, N79, N80, N81, N82, N83,
         N84, N85, N86, N87, N88, N89, N90, N91, N92, N93, N94, n2, n3, n4, n5,
         n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n560, n570, n580, n590, n600, n610,
         n620, n630, n640, n650, n660, n670, n680, n690, n700, n710, n720,
         n730, n740, n750, n760, n770, n780;
  wire   [2:0] bitGroup;

  PPG_8_DW01_inc_0 add_43 ( .A_19_(n610), .A_18_(n620), .A_17_(n630), .A_16_(
        n640), .A_15_(n650), .A_14_(n660), .A_13_(n670), .A_12_(n680), .A_11_(
        n690), .A_10_(n600), .A_9_(n700), .A_8_(n710), .A_7_(n720), .A_6_(n730), .A_5_(n740), .A_4_(n750), .A_3_(n760), .A_2_(n770), .A_1_(n780), .SUM_19_(
        N74), .SUM_18_(N73), .SUM_17_(N72), .SUM_16_(N71), .SUM_15_(N70), 
        .SUM_14_(N69), .SUM_13_(N68), .SUM_12_(N67), .SUM_11_(N66), .SUM_10_(
        N65), .SUM_9_(N64), .SUM_8_(N63), .SUM_7_(N62), .SUM_6_(N61), .SUM_5_(
        N60), .SUM_4_(N59), .SUM_3_(N58), .SUM_2_(N57), .SUM_1_(N56) );
  PPG_8_DW01_inc_1 r297 ( .SUM({N94, N93, N92, N91, N90, N89, N88, N87, N86, 
        N85, N84, N83, N82, N81, N80, N79, N78, N77, N76, N75}), .A_18_(n610), 
        .A_17_(n620), .A_16_(n630), .A_15_(n640), .A_14_(n650), .A_13_(n660), 
        .A_12_(n670), .A_11_(n680), .A_10_(n690), .A_9_(n600), .A_8_(n700), 
        .A_7_(n710), .A_6_(n720), .A_5_(n730), .A_4_(n740), .A_3_(n750), 
        .A_2_(n760), .A_1_(n770), .A_0_(n780) );
  CLKBUFX3 U4 ( .A(n40), .Y(n560) );
  OAI21X1 U5 ( .A0(bitGroup[1]), .A1(bitGroup[0]), .B0(n45), .Y(n48) );
  NOR2BXL U6 ( .AN(n4), .B(bitGroup[1]), .Y(n39) );
  CLKBUFX3 U7 ( .A(n41), .Y(n55) );
  AOI211XL U8 ( .A0(n49), .A1(n48), .B0(n47), .C0(n46), .Y(PP[19]) );
  XOR2XL U9 ( .A(n45), .B(bitGroup[2]), .Y(n47) );
  NOR2XL U10 ( .A(N94), .B(n48), .Y(n46) );
  OAI211XL U11 ( .A0(n570), .A1(n50), .B0(n6), .C0(n5), .Y(PP[1]) );
  AOI22XL U12 ( .A0(N76), .A1(n560), .B0(Mc[1]), .B1(n55), .Y(n5) );
  NAND2XL U13 ( .A(N56), .B(n580), .Y(n6) );
  NAND2XL U14 ( .A(bitGroup[1]), .B(bitGroup[0]), .Y(n45) );
  AND2XL U15 ( .A(n3), .B(n48), .Y(n4) );
  XOR2XL U16 ( .A(bitGroup[1]), .B(bitGroup[2]), .Y(n3) );
  INVXL U17 ( .A(bitGroup[1]), .Y(n53) );
  INVXL U18 ( .A(phase), .Y(n590) );
  CLKINVX1 U19 ( .A(N56), .Y(n50) );
  CLKINVX1 U20 ( .A(n55), .Y(n54) );
  CLKINVX1 U21 ( .A(Mc[12]), .Y(n51) );
  CLKINVX1 U22 ( .A(Mc[13]), .Y(n52) );
  CLKBUFX3 U23 ( .A(n39), .Y(n580) );
  NOR2XL U24 ( .A(n48), .B(bitGroup[2]), .Y(n41) );
  NOR2BXL U25 ( .AN(bitGroup[2]), .B(n48), .Y(n40) );
  CLKBUFX3 U26 ( .A(n44), .Y(n570) );
  NAND2X1 U27 ( .A(n4), .B(bitGroup[1]), .Y(n44) );
  CLKINVX1 U28 ( .A(Mc[1]), .Y(n770) );
  CLKINVX1 U29 ( .A(Mc[2]), .Y(n760) );
  CLKINVX1 U30 ( .A(Mc[3]), .Y(n750) );
  CLKINVX1 U31 ( .A(Mc[4]), .Y(n740) );
  CLKINVX1 U32 ( .A(Mc[5]), .Y(n730) );
  CLKINVX1 U33 ( .A(Mc[6]), .Y(n720) );
  CLKINVX1 U34 ( .A(Mc[7]), .Y(n710) );
  CLKINVX1 U35 ( .A(Mc[8]), .Y(n700) );
  CLKINVX1 U36 ( .A(Mc[9]), .Y(n600) );
  CLKINVX1 U37 ( .A(Mc[10]), .Y(n690) );
  CLKINVX1 U38 ( .A(Mc[11]), .Y(n680) );
  CLKINVX1 U39 ( .A(Mc[12]), .Y(n670) );
  CLKINVX1 U40 ( .A(Mc[13]), .Y(n660) );
  CLKINVX1 U41 ( .A(Mc[14]), .Y(n650) );
  CLKINVX1 U42 ( .A(Mc[15]), .Y(n640) );
  CLKINVX1 U43 ( .A(Mc[16]), .Y(n630) );
  CLKINVX1 U44 ( .A(Mc[17]), .Y(n620) );
  CLKINVX1 U45 ( .A(Mc[18]), .Y(n610) );
  CLKINVX1 U46 ( .A(Mc[0]), .Y(n780) );
  AO22X2 U47 ( .A0(Mp[3]), .A1(phase), .B0(Mp[1]), .B1(n590), .Y(bitGroup[1])
         );
  AO22X1 U48 ( .A0(n590), .A1(Mp[2]), .B0(phase), .B1(Mp[4]), .Y(bitGroup[2])
         );
  AO22X1 U49 ( .A0(Mp[2]), .A1(phase), .B0(Mp[0]), .B1(n590), .Y(bitGroup[0])
         );
  NAND2X1 U50 ( .A(N75), .B(n560), .Y(n2) );
  NAND2X1 U51 ( .A(N57), .B(n580), .Y(n8) );
  AOI22X1 U52 ( .A0(N77), .A1(n560), .B0(Mc[2]), .B1(n55), .Y(n7) );
  OAI211X1 U53 ( .A0(n570), .A1(n770), .B0(n8), .C0(n7), .Y(PP[2]) );
  NAND2X1 U54 ( .A(N58), .B(n580), .Y(n10) );
  AOI22X1 U55 ( .A0(N78), .A1(n560), .B0(Mc[3]), .B1(n55), .Y(n9) );
  OAI211X1 U56 ( .A0(n570), .A1(n760), .B0(n10), .C0(n9), .Y(PP[3]) );
  NAND2X1 U57 ( .A(N59), .B(n580), .Y(n12) );
  AOI22X1 U58 ( .A0(N79), .A1(n560), .B0(Mc[4]), .B1(n55), .Y(n11) );
  OAI211X1 U59 ( .A0(n570), .A1(n750), .B0(n12), .C0(n11), .Y(PP[4]) );
  NAND2X1 U60 ( .A(N60), .B(n580), .Y(n14) );
  AOI22X1 U61 ( .A0(N80), .A1(n560), .B0(Mc[5]), .B1(n55), .Y(n13) );
  OAI211X1 U62 ( .A0(n570), .A1(n740), .B0(n14), .C0(n13), .Y(PP[5]) );
  NAND2X1 U63 ( .A(N61), .B(n580), .Y(n16) );
  AOI22X1 U64 ( .A0(N81), .A1(n560), .B0(Mc[6]), .B1(n55), .Y(n15) );
  OAI211X1 U65 ( .A0(n570), .A1(n730), .B0(n16), .C0(n15), .Y(PP[6]) );
  NAND2X1 U66 ( .A(N62), .B(n580), .Y(n18) );
  AOI22X1 U67 ( .A0(N82), .A1(n560), .B0(Mc[7]), .B1(n55), .Y(n17) );
  OAI211X1 U68 ( .A0(n570), .A1(n720), .B0(n18), .C0(n17), .Y(PP[7]) );
  NAND2X1 U69 ( .A(N63), .B(n580), .Y(n20) );
  AOI22X1 U70 ( .A0(N83), .A1(n560), .B0(Mc[8]), .B1(n55), .Y(n19) );
  OAI211X1 U71 ( .A0(n570), .A1(n710), .B0(n20), .C0(n19), .Y(PP[8]) );
  NAND2X1 U72 ( .A(N64), .B(n580), .Y(n22) );
  AOI22X1 U73 ( .A0(N84), .A1(n560), .B0(Mc[9]), .B1(n55), .Y(n21) );
  OAI211X1 U74 ( .A0(n570), .A1(n700), .B0(n22), .C0(n21), .Y(PP[9]) );
  NAND2X1 U75 ( .A(N65), .B(n580), .Y(n24) );
  AOI22X1 U76 ( .A0(N85), .A1(n560), .B0(Mc[10]), .B1(n55), .Y(n23) );
  OAI211X1 U77 ( .A0(n570), .A1(n600), .B0(n24), .C0(n23), .Y(PP[10]) );
  NAND2X1 U78 ( .A(N66), .B(n580), .Y(n26) );
  AOI22X1 U79 ( .A0(N86), .A1(n560), .B0(Mc[11]), .B1(n55), .Y(n25) );
  OAI211X1 U80 ( .A0(n570), .A1(n690), .B0(n26), .C0(n25), .Y(PP[11]) );
  NAND2X1 U81 ( .A(N67), .B(n580), .Y(n28) );
  AOI22X1 U82 ( .A0(N87), .A1(n560), .B0(Mc[12]), .B1(n55), .Y(n27) );
  OAI211X1 U83 ( .A0(n570), .A1(n680), .B0(n28), .C0(n27), .Y(PP[12]) );
  NAND2X1 U84 ( .A(N68), .B(n580), .Y(n30) );
  AOI22X1 U85 ( .A0(N88), .A1(n560), .B0(Mc[13]), .B1(n55), .Y(n29) );
  OAI211X1 U86 ( .A0(n570), .A1(n51), .B0(n30), .C0(n29), .Y(PP[13]) );
  NAND2X1 U87 ( .A(N69), .B(n580), .Y(n32) );
  AOI22X1 U88 ( .A0(N89), .A1(n560), .B0(Mc[14]), .B1(n55), .Y(n31) );
  OAI211X1 U89 ( .A0(n570), .A1(n52), .B0(n32), .C0(n31), .Y(PP[14]) );
  NAND2X1 U90 ( .A(N70), .B(n580), .Y(n34) );
  AOI22X1 U91 ( .A0(N90), .A1(n560), .B0(Mc[15]), .B1(n55), .Y(n33) );
  OAI211X1 U92 ( .A0(n570), .A1(n650), .B0(n34), .C0(n33), .Y(PP[15]) );
  NAND2X1 U93 ( .A(N71), .B(n580), .Y(n36) );
  AOI22X1 U94 ( .A0(N91), .A1(n560), .B0(Mc[16]), .B1(n55), .Y(n35) );
  OAI211X1 U95 ( .A0(n570), .A1(n640), .B0(n36), .C0(n35), .Y(PP[16]) );
  NAND2X1 U96 ( .A(N72), .B(n580), .Y(n38) );
  AOI22X1 U97 ( .A0(N92), .A1(n560), .B0(n55), .B1(Mc[17]), .Y(n37) );
  OAI211X1 U98 ( .A0(n570), .A1(n630), .B0(n38), .C0(n37), .Y(PP[17]) );
  NAND2X1 U99 ( .A(N73), .B(n580), .Y(n43) );
  AOI22X1 U100 ( .A0(Mc[18]), .A1(n55), .B0(N93), .B1(n560), .Y(n42) );
  OAI211X1 U101 ( .A0(n570), .A1(n620), .B0(n43), .C0(n42), .Y(PP[18]) );
  OAI22XL U102 ( .A0(Mc[18]), .A1(n53), .B0(N74), .B1(bitGroup[1]), .Y(n49) );
  OAI21XL U103 ( .A0(n54), .A1(n50), .B0(n2), .Y(PP[0]) );
endmodule


module PPG_7_DW01_inc_0 ( A_19_, A_18_, A_17_, A_16_, A_15_, A_14_, A_13_, 
        A_12_, A_11_, A_10_, A_9_, A_8_, A_7_, A_6_, A_5_, A_4_, A_3_, A_2_, 
        A_1_, SUM_19_, SUM_18_, SUM_17_, SUM_16_, SUM_15_, SUM_14_, SUM_13_, 
        SUM_12_, SUM_11_, SUM_10_, SUM_9_, SUM_8_, SUM_7_, SUM_6_, SUM_5_, 
        SUM_4_, SUM_3_, SUM_2_, SUM_1_ );
  input A_19_, A_18_, A_17_, A_16_, A_15_, A_14_, A_13_, A_12_, A_11_, A_10_,
         A_9_, A_8_, A_7_, A_6_, A_5_, A_4_, A_3_, A_2_, A_1_;
  output SUM_19_, SUM_18_, SUM_17_, SUM_16_, SUM_15_, SUM_14_, SUM_13_,
         SUM_12_, SUM_11_, SUM_10_, SUM_9_, SUM_8_, SUM_7_, SUM_6_, SUM_5_,
         SUM_4_, SUM_3_, SUM_2_, SUM_1_;
  wire   carry_19_, carry_18_, carry_17_, carry_16_, carry_15_, carry_14_,
         carry_13_, carry_12_, carry_11_, carry_10_, carry_9_, carry_8_,
         carry_7_, carry_6_, carry_5_, carry_4_, carry_3_;

  ADDHXL U1_1_18 ( .A(A_18_), .B(carry_18_), .CO(carry_19_), .S(SUM_18_) );
  ADDHXL U1_1_17 ( .A(A_17_), .B(carry_17_), .CO(carry_18_), .S(SUM_17_) );
  ADDHXL U1_1_16 ( .A(A_16_), .B(carry_16_), .CO(carry_17_), .S(SUM_16_) );
  ADDHXL U1_1_15 ( .A(A_15_), .B(carry_15_), .CO(carry_16_), .S(SUM_15_) );
  ADDHXL U1_1_14 ( .A(A_14_), .B(carry_14_), .CO(carry_15_), .S(SUM_14_) );
  ADDHXL U1_1_13 ( .A(A_13_), .B(carry_13_), .CO(carry_14_), .S(SUM_13_) );
  ADDHXL U1_1_12 ( .A(A_12_), .B(carry_12_), .CO(carry_13_), .S(SUM_12_) );
  ADDHXL U1_1_11 ( .A(A_11_), .B(carry_11_), .CO(carry_12_), .S(SUM_11_) );
  ADDHXL U1_1_10 ( .A(A_10_), .B(carry_10_), .CO(carry_11_), .S(SUM_10_) );
  ADDHXL U1_1_9 ( .A(A_9_), .B(carry_9_), .CO(carry_10_), .S(SUM_9_) );
  ADDHXL U1_1_8 ( .A(A_8_), .B(carry_8_), .CO(carry_9_), .S(SUM_8_) );
  ADDHXL U1_1_7 ( .A(A_7_), .B(carry_7_), .CO(carry_8_), .S(SUM_7_) );
  ADDHXL U1_1_6 ( .A(A_6_), .B(carry_6_), .CO(carry_7_), .S(SUM_6_) );
  ADDHXL U1_1_5 ( .A(A_5_), .B(carry_5_), .CO(carry_6_), .S(SUM_5_) );
  ADDHXL U1_1_4 ( .A(A_4_), .B(carry_4_), .CO(carry_5_), .S(SUM_4_) );
  ADDHXL U1_1_3 ( .A(A_3_), .B(carry_3_), .CO(carry_4_), .S(SUM_3_) );
  ADDHXL U1_1_2 ( .A(A_2_), .B(A_1_), .CO(carry_3_), .S(SUM_2_) );
  CLKINVX1 U1 ( .A(A_1_), .Y(SUM_1_) );
  XOR2X1 U2 ( .A(carry_19_), .B(A_19_), .Y(SUM_19_) );
endmodule


module PPG_7_DW01_inc_1 ( SUM, A_18_, A_17_, A_16_, A_15_, A_14_, A_13_, A_12_, 
        A_11_, A_10_, A_9_, A_8_, A_7_, A_6_, A_5_, A_4_, A_3_, A_2_, A_1_, 
        A_0_ );
  output [19:0] SUM;
  input A_18_, A_17_, A_16_, A_15_, A_14_, A_13_, A_12_, A_11_, A_10_, A_9_,
         A_8_, A_7_, A_6_, A_5_, A_4_, A_3_, A_2_, A_1_, A_0_;

  wire   [19:2] carry;

  ADDHXL U1_1_18 ( .A(A_18_), .B(carry[18]), .CO(carry[19]), .S(SUM[18]) );
  ADDHXL U1_1_17 ( .A(A_17_), .B(carry[17]), .CO(carry[18]), .S(SUM[17]) );
  ADDHXL U1_1_16 ( .A(A_16_), .B(carry[16]), .CO(carry[17]), .S(SUM[16]) );
  ADDHXL U1_1_15 ( .A(A_15_), .B(carry[15]), .CO(carry[16]), .S(SUM[15]) );
  ADDHXL U1_1_14 ( .A(A_14_), .B(carry[14]), .CO(carry[15]), .S(SUM[14]) );
  ADDHXL U1_1_13 ( .A(A_13_), .B(carry[13]), .CO(carry[14]), .S(SUM[13]) );
  ADDHXL U1_1_12 ( .A(A_12_), .B(carry[12]), .CO(carry[13]), .S(SUM[12]) );
  ADDHXL U1_1_11 ( .A(A_11_), .B(carry[11]), .CO(carry[12]), .S(SUM[11]) );
  ADDHXL U1_1_10 ( .A(A_10_), .B(carry[10]), .CO(carry[11]), .S(SUM[10]) );
  ADDHXL U1_1_9 ( .A(A_9_), .B(carry[9]), .CO(carry[10]), .S(SUM[9]) );
  ADDHXL U1_1_8 ( .A(A_8_), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  ADDHXL U1_1_7 ( .A(A_7_), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  ADDHXL U1_1_6 ( .A(A_6_), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_5 ( .A(A_5_), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A_4_), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_3 ( .A(A_3_), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_2 ( .A(A_2_), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_1 ( .A(A_1_), .B(A_0_), .CO(carry[2]), .S(SUM[1]) );
  CLKINVX1 U1 ( .A(carry[19]), .Y(SUM[19]) );
  CLKINVX1 U2 ( .A(A_0_), .Y(SUM[0]) );
endmodule


module PPG_7 ( Mc, Mp, phase, PP );
  input [18:0] Mc;
  input [4:0] Mp;
  output [19:0] PP;
  input phase;
  wire   N56, N57, N58, N59, N60, N61, N62, N63, N64, N65, N66, N67, N68, N69,
         N70, N71, N72, N73, N74, N75, N76, N77, N78, N79, N80, N81, N82, N83,
         N84, N85, N86, N87, N88, N89, N90, N91, N92, N93, N94, n2, n3, n4, n5,
         n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n560, n570, n580, n590, n600, n610,
         n620, n630, n640, n650, n660, n670, n680, n690, n700, n710, n720,
         n730, n740, n750, n760;
  wire   [2:0] bitGroup;

  PPG_7_DW01_inc_0 add_43 ( .A_19_(n590), .A_18_(n600), .A_17_(n610), .A_16_(
        n620), .A_15_(n630), .A_14_(n640), .A_13_(n650), .A_12_(n660), .A_11_(
        n670), .A_10_(n580), .A_9_(n680), .A_8_(n690), .A_7_(n700), .A_6_(n710), .A_5_(n720), .A_4_(n730), .A_3_(n740), .A_2_(n750), .A_1_(n760), .SUM_19_(
        N74), .SUM_18_(N73), .SUM_17_(N72), .SUM_16_(N71), .SUM_15_(N70), 
        .SUM_14_(N69), .SUM_13_(N68), .SUM_12_(N67), .SUM_11_(N66), .SUM_10_(
        N65), .SUM_9_(N64), .SUM_8_(N63), .SUM_7_(N62), .SUM_6_(N61), .SUM_5_(
        N60), .SUM_4_(N59), .SUM_3_(N58), .SUM_2_(N57), .SUM_1_(N56) );
  PPG_7_DW01_inc_1 r297 ( .SUM({N94, N93, N92, N91, N90, N89, N88, N87, N86, 
        N85, N84, N83, N82, N81, N80, N79, N78, N77, N76, N75}), .A_18_(n590), 
        .A_17_(n600), .A_16_(n610), .A_15_(n620), .A_14_(n630), .A_13_(n640), 
        .A_12_(n650), .A_11_(n660), .A_10_(n670), .A_9_(n580), .A_8_(n680), 
        .A_7_(n690), .A_6_(n700), .A_5_(n710), .A_4_(n720), .A_3_(n730), 
        .A_2_(n740), .A_1_(n750), .A_0_(n760) );
  CLKBUFX3 U4 ( .A(n41), .Y(n53) );
  AO22X1 U5 ( .A0(Mp[3]), .A1(phase), .B0(Mp[1]), .B1(n570), .Y(bitGroup[1])
         );
  CLKBUFX3 U6 ( .A(n40), .Y(n54) );
  INVXL U7 ( .A(n53), .Y(n52) );
  OAI21X1 U8 ( .A0(bitGroup[1]), .A1(bitGroup[0]), .B0(n45), .Y(n48) );
  NAND2XL U9 ( .A(n4), .B(bitGroup[1]), .Y(n44) );
  NOR2BXL U10 ( .AN(n4), .B(bitGroup[1]), .Y(n39) );
  AOI211XL U11 ( .A0(n49), .A1(n48), .B0(n47), .C0(n46), .Y(PP[19]) );
  XOR2XL U12 ( .A(n45), .B(bitGroup[2]), .Y(n47) );
  NOR2XL U13 ( .A(N94), .B(n48), .Y(n46) );
  NAND2XL U14 ( .A(bitGroup[1]), .B(bitGroup[0]), .Y(n45) );
  AND2XL U15 ( .A(n3), .B(n48), .Y(n4) );
  XOR2XL U16 ( .A(bitGroup[1]), .B(bitGroup[2]), .Y(n3) );
  INVXL U17 ( .A(bitGroup[1]), .Y(n51) );
  INVXL U18 ( .A(phase), .Y(n570) );
  CLKINVX1 U19 ( .A(N56), .Y(n50) );
  NOR2XL U20 ( .A(n48), .B(bitGroup[2]), .Y(n41) );
  NOR2BXL U21 ( .AN(bitGroup[2]), .B(n48), .Y(n40) );
  CLKBUFX3 U22 ( .A(n44), .Y(n55) );
  CLKBUFX3 U23 ( .A(n39), .Y(n560) );
  CLKINVX1 U24 ( .A(Mc[1]), .Y(n750) );
  CLKINVX1 U25 ( .A(Mc[2]), .Y(n740) );
  CLKINVX1 U26 ( .A(Mc[3]), .Y(n730) );
  CLKINVX1 U27 ( .A(Mc[4]), .Y(n720) );
  CLKINVX1 U28 ( .A(Mc[5]), .Y(n710) );
  CLKINVX1 U29 ( .A(Mc[6]), .Y(n700) );
  CLKINVX1 U30 ( .A(Mc[7]), .Y(n690) );
  CLKINVX1 U31 ( .A(Mc[8]), .Y(n680) );
  CLKINVX1 U32 ( .A(Mc[9]), .Y(n580) );
  CLKINVX1 U33 ( .A(Mc[10]), .Y(n670) );
  CLKINVX1 U34 ( .A(Mc[11]), .Y(n660) );
  CLKINVX1 U35 ( .A(Mc[12]), .Y(n650) );
  CLKINVX1 U36 ( .A(Mc[13]), .Y(n640) );
  CLKINVX1 U37 ( .A(Mc[14]), .Y(n630) );
  CLKINVX1 U38 ( .A(Mc[15]), .Y(n620) );
  CLKINVX1 U39 ( .A(Mc[16]), .Y(n610) );
  CLKINVX1 U40 ( .A(Mc[17]), .Y(n600) );
  CLKINVX1 U41 ( .A(Mc[18]), .Y(n590) );
  CLKINVX1 U42 ( .A(Mc[0]), .Y(n760) );
  AO22X1 U43 ( .A0(Mp[2]), .A1(phase), .B0(Mp[0]), .B1(n570), .Y(bitGroup[0])
         );
  AO22X1 U44 ( .A0(n570), .A1(Mp[2]), .B0(phase), .B1(Mp[4]), .Y(bitGroup[2])
         );
  NAND2X1 U45 ( .A(N75), .B(n54), .Y(n2) );
  NAND2X1 U46 ( .A(N56), .B(n560), .Y(n6) );
  AOI22X1 U47 ( .A0(N76), .A1(n54), .B0(Mc[1]), .B1(n53), .Y(n5) );
  OAI211X1 U48 ( .A0(n55), .A1(n50), .B0(n6), .C0(n5), .Y(PP[1]) );
  NAND2X1 U49 ( .A(N57), .B(n560), .Y(n8) );
  AOI22X1 U50 ( .A0(N77), .A1(n54), .B0(Mc[2]), .B1(n53), .Y(n7) );
  OAI211X1 U51 ( .A0(n55), .A1(n750), .B0(n8), .C0(n7), .Y(PP[2]) );
  NAND2X1 U52 ( .A(N58), .B(n560), .Y(n10) );
  AOI22X1 U53 ( .A0(N78), .A1(n54), .B0(Mc[3]), .B1(n53), .Y(n9) );
  OAI211X1 U54 ( .A0(n55), .A1(n740), .B0(n10), .C0(n9), .Y(PP[3]) );
  NAND2X1 U55 ( .A(N59), .B(n560), .Y(n12) );
  AOI22X1 U56 ( .A0(N79), .A1(n54), .B0(Mc[4]), .B1(n53), .Y(n11) );
  OAI211X1 U57 ( .A0(n55), .A1(n730), .B0(n12), .C0(n11), .Y(PP[4]) );
  NAND2X1 U58 ( .A(N60), .B(n560), .Y(n14) );
  AOI22X1 U59 ( .A0(N80), .A1(n54), .B0(Mc[5]), .B1(n53), .Y(n13) );
  OAI211X1 U60 ( .A0(n55), .A1(n720), .B0(n14), .C0(n13), .Y(PP[5]) );
  NAND2X1 U61 ( .A(N61), .B(n560), .Y(n16) );
  AOI22X1 U62 ( .A0(N81), .A1(n54), .B0(Mc[6]), .B1(n53), .Y(n15) );
  OAI211X1 U63 ( .A0(n55), .A1(n710), .B0(n16), .C0(n15), .Y(PP[6]) );
  NAND2X1 U64 ( .A(N62), .B(n560), .Y(n18) );
  AOI22X1 U65 ( .A0(N82), .A1(n54), .B0(Mc[7]), .B1(n53), .Y(n17) );
  OAI211X1 U66 ( .A0(n55), .A1(n700), .B0(n18), .C0(n17), .Y(PP[7]) );
  NAND2X1 U67 ( .A(N63), .B(n560), .Y(n20) );
  AOI22X1 U68 ( .A0(N83), .A1(n54), .B0(Mc[8]), .B1(n53), .Y(n19) );
  OAI211X1 U69 ( .A0(n55), .A1(n690), .B0(n20), .C0(n19), .Y(PP[8]) );
  NAND2X1 U70 ( .A(N64), .B(n560), .Y(n22) );
  AOI22X1 U71 ( .A0(N84), .A1(n54), .B0(Mc[9]), .B1(n53), .Y(n21) );
  OAI211X1 U72 ( .A0(n55), .A1(n680), .B0(n22), .C0(n21), .Y(PP[9]) );
  NAND2X1 U73 ( .A(N65), .B(n560), .Y(n24) );
  AOI22X1 U74 ( .A0(N85), .A1(n54), .B0(Mc[10]), .B1(n53), .Y(n23) );
  OAI211X1 U75 ( .A0(n55), .A1(n580), .B0(n24), .C0(n23), .Y(PP[10]) );
  NAND2X1 U76 ( .A(N66), .B(n560), .Y(n26) );
  AOI22X1 U77 ( .A0(N86), .A1(n54), .B0(Mc[11]), .B1(n53), .Y(n25) );
  OAI211X1 U78 ( .A0(n55), .A1(n670), .B0(n26), .C0(n25), .Y(PP[11]) );
  NAND2X1 U79 ( .A(N67), .B(n560), .Y(n28) );
  AOI22X1 U80 ( .A0(N87), .A1(n54), .B0(Mc[12]), .B1(n53), .Y(n27) );
  OAI211X1 U81 ( .A0(n55), .A1(n660), .B0(n28), .C0(n27), .Y(PP[12]) );
  NAND2X1 U82 ( .A(N68), .B(n560), .Y(n30) );
  AOI22X1 U83 ( .A0(N88), .A1(n54), .B0(Mc[13]), .B1(n53), .Y(n29) );
  OAI211X1 U84 ( .A0(n55), .A1(n650), .B0(n30), .C0(n29), .Y(PP[13]) );
  NAND2X1 U85 ( .A(N69), .B(n560), .Y(n32) );
  AOI22X1 U86 ( .A0(N89), .A1(n54), .B0(Mc[14]), .B1(n53), .Y(n31) );
  OAI211X1 U87 ( .A0(n55), .A1(n640), .B0(n32), .C0(n31), .Y(PP[14]) );
  NAND2X1 U88 ( .A(N70), .B(n560), .Y(n34) );
  AOI22X1 U89 ( .A0(N90), .A1(n54), .B0(Mc[15]), .B1(n53), .Y(n33) );
  OAI211X1 U90 ( .A0(n55), .A1(n630), .B0(n34), .C0(n33), .Y(PP[15]) );
  NAND2X1 U91 ( .A(N71), .B(n560), .Y(n36) );
  AOI22X1 U92 ( .A0(N91), .A1(n54), .B0(Mc[16]), .B1(n53), .Y(n35) );
  OAI211X1 U93 ( .A0(n55), .A1(n620), .B0(n36), .C0(n35), .Y(PP[16]) );
  NAND2X1 U94 ( .A(N72), .B(n560), .Y(n38) );
  AOI22X1 U95 ( .A0(N92), .A1(n54), .B0(n53), .B1(Mc[17]), .Y(n37) );
  OAI211X1 U96 ( .A0(n55), .A1(n610), .B0(n38), .C0(n37), .Y(PP[17]) );
  NAND2X1 U97 ( .A(N73), .B(n560), .Y(n43) );
  AOI22X1 U98 ( .A0(Mc[18]), .A1(n53), .B0(N93), .B1(n54), .Y(n42) );
  OAI211X1 U99 ( .A0(n55), .A1(n600), .B0(n43), .C0(n42), .Y(PP[18]) );
  OAI22XL U100 ( .A0(Mc[18]), .A1(n51), .B0(N74), .B1(bitGroup[1]), .Y(n49) );
  OAI21XL U101 ( .A0(n52), .A1(n50), .B0(n2), .Y(PP[0]) );
endmodule


module PPG_6_DW01_inc_0 ( A_19_, A_18_, A_17_, A_16_, A_15_, A_14_, A_13_, 
        A_12_, A_11_, A_10_, A_9_, A_8_, A_7_, A_6_, A_5_, A_4_, A_3_, A_2_, 
        A_1_, SUM_19_, SUM_18_, SUM_17_, SUM_16_, SUM_15_, SUM_14_, SUM_13_, 
        SUM_12_, SUM_11_, SUM_10_, SUM_9_, SUM_8_, SUM_7_, SUM_6_, SUM_5_, 
        SUM_4_, SUM_3_, SUM_2_, SUM_1_ );
  input A_19_, A_18_, A_17_, A_16_, A_15_, A_14_, A_13_, A_12_, A_11_, A_10_,
         A_9_, A_8_, A_7_, A_6_, A_5_, A_4_, A_3_, A_2_, A_1_;
  output SUM_19_, SUM_18_, SUM_17_, SUM_16_, SUM_15_, SUM_14_, SUM_13_,
         SUM_12_, SUM_11_, SUM_10_, SUM_9_, SUM_8_, SUM_7_, SUM_6_, SUM_5_,
         SUM_4_, SUM_3_, SUM_2_, SUM_1_;
  wire   carry_19_, carry_18_, carry_17_, carry_16_, carry_15_, carry_14_,
         carry_13_, carry_12_, carry_11_, carry_10_, carry_9_, carry_8_,
         carry_7_, carry_6_, carry_5_, carry_4_, carry_3_;

  ADDHXL U1_1_18 ( .A(A_18_), .B(carry_18_), .CO(carry_19_), .S(SUM_18_) );
  ADDHXL U1_1_2 ( .A(A_2_), .B(A_1_), .CO(carry_3_), .S(SUM_2_) );
  ADDHXL U1_1_3 ( .A(A_3_), .B(carry_3_), .CO(carry_4_), .S(SUM_3_) );
  ADDHXL U1_1_4 ( .A(A_4_), .B(carry_4_), .CO(carry_5_), .S(SUM_4_) );
  ADDHXL U1_1_5 ( .A(A_5_), .B(carry_5_), .CO(carry_6_), .S(SUM_5_) );
  ADDHXL U1_1_6 ( .A(A_6_), .B(carry_6_), .CO(carry_7_), .S(SUM_6_) );
  ADDHXL U1_1_7 ( .A(A_7_), .B(carry_7_), .CO(carry_8_), .S(SUM_7_) );
  ADDHXL U1_1_8 ( .A(A_8_), .B(carry_8_), .CO(carry_9_), .S(SUM_8_) );
  ADDHXL U1_1_9 ( .A(A_9_), .B(carry_9_), .CO(carry_10_), .S(SUM_9_) );
  ADDHXL U1_1_10 ( .A(A_10_), .B(carry_10_), .CO(carry_11_), .S(SUM_10_) );
  ADDHXL U1_1_11 ( .A(A_11_), .B(carry_11_), .CO(carry_12_), .S(SUM_11_) );
  ADDHXL U1_1_12 ( .A(A_12_), .B(carry_12_), .CO(carry_13_), .S(SUM_12_) );
  ADDHXL U1_1_13 ( .A(A_13_), .B(carry_13_), .CO(carry_14_), .S(SUM_13_) );
  ADDHXL U1_1_14 ( .A(A_14_), .B(carry_14_), .CO(carry_15_), .S(SUM_14_) );
  ADDHXL U1_1_15 ( .A(A_15_), .B(carry_15_), .CO(carry_16_), .S(SUM_15_) );
  ADDHXL U1_1_16 ( .A(A_16_), .B(carry_16_), .CO(carry_17_), .S(SUM_16_) );
  ADDHXL U1_1_17 ( .A(A_17_), .B(carry_17_), .CO(carry_18_), .S(SUM_17_) );
  CLKINVX1 U1 ( .A(A_1_), .Y(SUM_1_) );
  XOR2X1 U2 ( .A(carry_19_), .B(A_19_), .Y(SUM_19_) );
endmodule


module PPG_6_DW01_inc_1 ( SUM, A_18_, A_17_, A_16_, A_15_, A_14_, A_13_, A_12_, 
        A_11_, A_10_, A_9_, A_8_, A_7_, A_6_, A_5_, A_4_, A_3_, A_2_, A_1_, 
        A_0_ );
  output [19:0] SUM;
  input A_18_, A_17_, A_16_, A_15_, A_14_, A_13_, A_12_, A_11_, A_10_, A_9_,
         A_8_, A_7_, A_6_, A_5_, A_4_, A_3_, A_2_, A_1_, A_0_;

  wire   [19:2] carry;

  ADDHXL U1_1_18 ( .A(A_18_), .B(carry[18]), .CO(carry[19]), .S(SUM[18]) );
  ADDHXL U1_1_17 ( .A(A_17_), .B(carry[17]), .CO(carry[18]), .S(SUM[17]) );
  ADDHXL U1_1_2 ( .A(A_2_), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_3 ( .A(A_3_), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_4 ( .A(A_4_), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_5 ( .A(A_5_), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_6 ( .A(A_6_), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_7 ( .A(A_7_), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  ADDHXL U1_1_8 ( .A(A_8_), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  ADDHXL U1_1_9 ( .A(A_9_), .B(carry[9]), .CO(carry[10]), .S(SUM[9]) );
  ADDHXL U1_1_10 ( .A(A_10_), .B(carry[10]), .CO(carry[11]), .S(SUM[10]) );
  ADDHXL U1_1_11 ( .A(A_11_), .B(carry[11]), .CO(carry[12]), .S(SUM[11]) );
  ADDHXL U1_1_12 ( .A(A_12_), .B(carry[12]), .CO(carry[13]), .S(SUM[12]) );
  ADDHXL U1_1_13 ( .A(A_13_), .B(carry[13]), .CO(carry[14]), .S(SUM[13]) );
  ADDHXL U1_1_14 ( .A(A_14_), .B(carry[14]), .CO(carry[15]), .S(SUM[14]) );
  ADDHXL U1_1_15 ( .A(A_15_), .B(carry[15]), .CO(carry[16]), .S(SUM[15]) );
  ADDHXL U1_1_16 ( .A(A_16_), .B(carry[16]), .CO(carry[17]), .S(SUM[16]) );
  ADDHXL U1_1_1 ( .A(A_1_), .B(A_0_), .CO(carry[2]), .S(SUM[1]) );
  CLKINVX1 U1 ( .A(carry[19]), .Y(SUM[19]) );
  CLKINVX1 U2 ( .A(A_0_), .Y(SUM[0]) );
endmodule


module PPG_6 ( Mc, Mp, phase, PP );
  input [18:0] Mc;
  input [4:0] Mp;
  output [19:0] PP;
  input phase;
  wire   N56, N57, N58, N59, N60, N61, N62, N63, N64, N65, N66, N67, N68, N69,
         N70, N71, N72, N73, N74, N75, N76, N77, N78, N79, N80, N81, N82, N83,
         N84, N85, N86, N87, N88, N89, N90, N91, N92, N93, N94, n2, n3, n4, n5,
         n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n560, n570, n580, n590, n600, n610,
         n620, n630, n640, n650, n660, n670, n680, n690, n700, n710, n720,
         n730, n740, n750, n760;
  wire   [2:0] bitGroup;

  PPG_6_DW01_inc_0 add_43 ( .A_19_(n590), .A_18_(n600), .A_17_(n610), .A_16_(
        n620), .A_15_(n630), .A_14_(n640), .A_13_(n650), .A_12_(n660), .A_11_(
        n670), .A_10_(n580), .A_9_(n680), .A_8_(n690), .A_7_(n700), .A_6_(n710), .A_5_(n720), .A_4_(n730), .A_3_(n740), .A_2_(n750), .A_1_(n760), .SUM_19_(
        N74), .SUM_18_(N73), .SUM_17_(N72), .SUM_16_(N71), .SUM_15_(N70), 
        .SUM_14_(N69), .SUM_13_(N68), .SUM_12_(N67), .SUM_11_(N66), .SUM_10_(
        N65), .SUM_9_(N64), .SUM_8_(N63), .SUM_7_(N62), .SUM_6_(N61), .SUM_5_(
        N60), .SUM_4_(N59), .SUM_3_(N58), .SUM_2_(N57), .SUM_1_(N56) );
  PPG_6_DW01_inc_1 r297 ( .SUM({N94, N93, N92, N91, N90, N89, N88, N87, N86, 
        N85, N84, N83, N82, N81, N80, N79, N78, N77, N76, N75}), .A_18_(n590), 
        .A_17_(n600), .A_16_(n610), .A_15_(n620), .A_14_(n630), .A_13_(n640), 
        .A_12_(n650), .A_11_(n660), .A_10_(n670), .A_9_(n580), .A_8_(n680), 
        .A_7_(n690), .A_6_(n700), .A_5_(n710), .A_4_(n720), .A_3_(n730), 
        .A_2_(n740), .A_1_(n750), .A_0_(n760) );
  BUFX6 U4 ( .A(n39), .Y(n560) );
  NOR2BXL U5 ( .AN(n4), .B(bitGroup[1]), .Y(n39) );
  OAI21X4 U6 ( .A0(bitGroup[1]), .A1(bitGroup[0]), .B0(n45), .Y(n48) );
  NAND2X8 U7 ( .A(bitGroup[1]), .B(bitGroup[0]), .Y(n45) );
  AND2X2 U8 ( .A(n3), .B(n48), .Y(n4) );
  CLKBUFX3 U9 ( .A(n41), .Y(n53) );
  CLKBUFX3 U10 ( .A(n40), .Y(n54) );
  INVX1 U11 ( .A(n53), .Y(n52) );
  XOR2X1 U12 ( .A(bitGroup[1]), .B(bitGroup[2]), .Y(n3) );
  AOI211XL U13 ( .A0(n49), .A1(n48), .B0(n47), .C0(n46), .Y(PP[19]) );
  XOR2XL U14 ( .A(n45), .B(bitGroup[2]), .Y(n47) );
  NOR2XL U15 ( .A(N94), .B(n48), .Y(n46) );
  INVXL U16 ( .A(bitGroup[1]), .Y(n51) );
  INVXL U17 ( .A(phase), .Y(n570) );
  CLKINVX1 U18 ( .A(N56), .Y(n50) );
  NOR2XL U19 ( .A(n48), .B(bitGroup[2]), .Y(n41) );
  NOR2BXL U20 ( .AN(bitGroup[2]), .B(n48), .Y(n40) );
  CLKBUFX3 U21 ( .A(n44), .Y(n55) );
  NAND2X1 U22 ( .A(n4), .B(bitGroup[1]), .Y(n44) );
  CLKINVX1 U23 ( .A(Mc[1]), .Y(n750) );
  CLKINVX1 U24 ( .A(Mc[16]), .Y(n610) );
  CLKINVX1 U25 ( .A(Mc[15]), .Y(n620) );
  CLKINVX1 U26 ( .A(Mc[14]), .Y(n630) );
  CLKINVX1 U27 ( .A(Mc[13]), .Y(n640) );
  CLKINVX1 U28 ( .A(Mc[12]), .Y(n650) );
  CLKINVX1 U29 ( .A(Mc[11]), .Y(n660) );
  CLKINVX1 U30 ( .A(Mc[10]), .Y(n670) );
  CLKINVX1 U31 ( .A(Mc[9]), .Y(n580) );
  CLKINVX1 U32 ( .A(Mc[8]), .Y(n680) );
  CLKINVX1 U33 ( .A(Mc[7]), .Y(n690) );
  CLKINVX1 U34 ( .A(Mc[6]), .Y(n700) );
  CLKINVX1 U35 ( .A(Mc[5]), .Y(n710) );
  CLKINVX1 U36 ( .A(Mc[4]), .Y(n720) );
  CLKINVX1 U37 ( .A(Mc[3]), .Y(n730) );
  CLKINVX1 U38 ( .A(Mc[2]), .Y(n740) );
  CLKINVX1 U39 ( .A(Mc[17]), .Y(n600) );
  CLKINVX1 U40 ( .A(Mc[18]), .Y(n590) );
  CLKINVX1 U41 ( .A(Mc[0]), .Y(n760) );
  AO22X2 U42 ( .A0(Mp[3]), .A1(phase), .B0(Mp[1]), .B1(n570), .Y(bitGroup[1])
         );
  AO22X1 U43 ( .A0(Mp[2]), .A1(phase), .B0(Mp[0]), .B1(n570), .Y(bitGroup[0])
         );
  AO22X1 U44 ( .A0(n570), .A1(Mp[2]), .B0(phase), .B1(Mp[4]), .Y(bitGroup[2])
         );
  NAND2X1 U45 ( .A(N75), .B(n54), .Y(n2) );
  NAND2X1 U46 ( .A(N56), .B(n560), .Y(n6) );
  AOI22X1 U47 ( .A0(N76), .A1(n54), .B0(Mc[1]), .B1(n53), .Y(n5) );
  OAI211X1 U48 ( .A0(n55), .A1(n50), .B0(n6), .C0(n5), .Y(PP[1]) );
  NAND2X1 U49 ( .A(N57), .B(n560), .Y(n8) );
  AOI22X1 U50 ( .A0(N77), .A1(n54), .B0(Mc[2]), .B1(n53), .Y(n7) );
  OAI211X1 U51 ( .A0(n55), .A1(n750), .B0(n8), .C0(n7), .Y(PP[2]) );
  NAND2X1 U52 ( .A(N58), .B(n560), .Y(n10) );
  AOI22X1 U53 ( .A0(N78), .A1(n54), .B0(Mc[3]), .B1(n53), .Y(n9) );
  OAI211X1 U54 ( .A0(n55), .A1(n740), .B0(n10), .C0(n9), .Y(PP[3]) );
  NAND2X1 U55 ( .A(N59), .B(n560), .Y(n12) );
  AOI22X1 U56 ( .A0(N79), .A1(n54), .B0(Mc[4]), .B1(n53), .Y(n11) );
  OAI211X1 U57 ( .A0(n55), .A1(n730), .B0(n12), .C0(n11), .Y(PP[4]) );
  NAND2X1 U58 ( .A(N60), .B(n560), .Y(n14) );
  AOI22X1 U59 ( .A0(N80), .A1(n54), .B0(Mc[5]), .B1(n53), .Y(n13) );
  OAI211X1 U60 ( .A0(n55), .A1(n720), .B0(n14), .C0(n13), .Y(PP[5]) );
  NAND2X1 U61 ( .A(N61), .B(n560), .Y(n16) );
  AOI22X1 U62 ( .A0(N81), .A1(n54), .B0(Mc[6]), .B1(n53), .Y(n15) );
  OAI211X1 U63 ( .A0(n55), .A1(n710), .B0(n16), .C0(n15), .Y(PP[6]) );
  NAND2X1 U64 ( .A(N62), .B(n560), .Y(n18) );
  AOI22X1 U65 ( .A0(N82), .A1(n54), .B0(Mc[7]), .B1(n53), .Y(n17) );
  OAI211X1 U66 ( .A0(n55), .A1(n700), .B0(n18), .C0(n17), .Y(PP[7]) );
  NAND2X1 U67 ( .A(N63), .B(n560), .Y(n20) );
  AOI22X1 U68 ( .A0(N83), .A1(n54), .B0(Mc[8]), .B1(n53), .Y(n19) );
  OAI211X1 U69 ( .A0(n55), .A1(n690), .B0(n20), .C0(n19), .Y(PP[8]) );
  NAND2X1 U70 ( .A(N64), .B(n560), .Y(n22) );
  AOI22X1 U71 ( .A0(N84), .A1(n54), .B0(Mc[9]), .B1(n53), .Y(n21) );
  OAI211X1 U72 ( .A0(n55), .A1(n680), .B0(n22), .C0(n21), .Y(PP[9]) );
  NAND2X1 U73 ( .A(N65), .B(n560), .Y(n24) );
  AOI22X1 U74 ( .A0(N85), .A1(n54), .B0(Mc[10]), .B1(n53), .Y(n23) );
  OAI211X1 U75 ( .A0(n55), .A1(n580), .B0(n24), .C0(n23), .Y(PP[10]) );
  NAND2X1 U76 ( .A(N66), .B(n560), .Y(n26) );
  AOI22X1 U77 ( .A0(N86), .A1(n54), .B0(Mc[11]), .B1(n53), .Y(n25) );
  OAI211X1 U78 ( .A0(n55), .A1(n670), .B0(n26), .C0(n25), .Y(PP[11]) );
  NAND2X1 U79 ( .A(N67), .B(n560), .Y(n28) );
  AOI22X1 U80 ( .A0(N87), .A1(n54), .B0(Mc[12]), .B1(n53), .Y(n27) );
  OAI211X1 U81 ( .A0(n55), .A1(n660), .B0(n28), .C0(n27), .Y(PP[12]) );
  NAND2X1 U82 ( .A(N68), .B(n560), .Y(n30) );
  AOI22X1 U83 ( .A0(N88), .A1(n54), .B0(Mc[13]), .B1(n53), .Y(n29) );
  OAI211X1 U84 ( .A0(n55), .A1(n650), .B0(n30), .C0(n29), .Y(PP[13]) );
  NAND2X1 U85 ( .A(N69), .B(n560), .Y(n32) );
  AOI22X1 U86 ( .A0(N89), .A1(n54), .B0(Mc[14]), .B1(n53), .Y(n31) );
  OAI211X1 U87 ( .A0(n55), .A1(n640), .B0(n32), .C0(n31), .Y(PP[14]) );
  NAND2X1 U88 ( .A(N70), .B(n560), .Y(n34) );
  AOI22X1 U89 ( .A0(N90), .A1(n54), .B0(Mc[15]), .B1(n53), .Y(n33) );
  OAI211X1 U90 ( .A0(n55), .A1(n630), .B0(n34), .C0(n33), .Y(PP[15]) );
  NAND2X1 U91 ( .A(N71), .B(n560), .Y(n36) );
  AOI22X1 U92 ( .A0(N91), .A1(n54), .B0(Mc[16]), .B1(n53), .Y(n35) );
  OAI211X1 U93 ( .A0(n55), .A1(n620), .B0(n36), .C0(n35), .Y(PP[16]) );
  NAND2X1 U94 ( .A(N72), .B(n560), .Y(n38) );
  AOI22X1 U95 ( .A0(N92), .A1(n54), .B0(n53), .B1(Mc[17]), .Y(n37) );
  OAI211X1 U96 ( .A0(n55), .A1(n610), .B0(n38), .C0(n37), .Y(PP[17]) );
  NAND2X1 U97 ( .A(N73), .B(n560), .Y(n43) );
  AOI22X1 U98 ( .A0(Mc[18]), .A1(n53), .B0(N93), .B1(n54), .Y(n42) );
  OAI211X1 U99 ( .A0(n55), .A1(n600), .B0(n43), .C0(n42), .Y(PP[18]) );
  OAI22XL U100 ( .A0(Mc[18]), .A1(n51), .B0(N74), .B1(bitGroup[1]), .Y(n49) );
  OAI21XL U101 ( .A0(n52), .A1(n50), .B0(n2), .Y(PP[0]) );
endmodule


module PPG_5_DW01_inc_0 ( A_19_, A_18_, A_17_, A_16_, A_15_, A_14_, A_13_, 
        A_12_, A_11_, A_10_, A_9_, A_8_, A_7_, A_6_, A_5_, A_4_, A_3_, A_2_, 
        A_1_, SUM_19_, SUM_18_, SUM_17_, SUM_16_, SUM_15_, SUM_14_, SUM_13_, 
        SUM_12_, SUM_11_, SUM_10_, SUM_9_, SUM_8_, SUM_7_, SUM_6_, SUM_5_, 
        SUM_4_, SUM_3_, SUM_2_, SUM_1_ );
  input A_19_, A_18_, A_17_, A_16_, A_15_, A_14_, A_13_, A_12_, A_11_, A_10_,
         A_9_, A_8_, A_7_, A_6_, A_5_, A_4_, A_3_, A_2_, A_1_;
  output SUM_19_, SUM_18_, SUM_17_, SUM_16_, SUM_15_, SUM_14_, SUM_13_,
         SUM_12_, SUM_11_, SUM_10_, SUM_9_, SUM_8_, SUM_7_, SUM_6_, SUM_5_,
         SUM_4_, SUM_3_, SUM_2_, SUM_1_;
  wire   carry_19_, carry_18_, carry_17_, carry_16_, carry_15_, carry_14_,
         carry_13_, carry_12_, carry_11_, carry_10_, carry_9_, carry_8_,
         carry_7_, carry_6_, carry_5_, carry_4_, carry_3_;

  ADDHXL U1_1_18 ( .A(A_18_), .B(carry_18_), .CO(carry_19_), .S(SUM_18_) );
  ADDHXL U1_1_2 ( .A(A_2_), .B(A_1_), .CO(carry_3_), .S(SUM_2_) );
  ADDHXL U1_1_3 ( .A(A_3_), .B(carry_3_), .CO(carry_4_), .S(SUM_3_) );
  ADDHXL U1_1_4 ( .A(A_4_), .B(carry_4_), .CO(carry_5_), .S(SUM_4_) );
  ADDHXL U1_1_5 ( .A(A_5_), .B(carry_5_), .CO(carry_6_), .S(SUM_5_) );
  ADDHXL U1_1_6 ( .A(A_6_), .B(carry_6_), .CO(carry_7_), .S(SUM_6_) );
  ADDHXL U1_1_7 ( .A(A_7_), .B(carry_7_), .CO(carry_8_), .S(SUM_7_) );
  ADDHXL U1_1_8 ( .A(A_8_), .B(carry_8_), .CO(carry_9_), .S(SUM_8_) );
  ADDHXL U1_1_9 ( .A(A_9_), .B(carry_9_), .CO(carry_10_), .S(SUM_9_) );
  ADDHXL U1_1_10 ( .A(A_10_), .B(carry_10_), .CO(carry_11_), .S(SUM_10_) );
  ADDHXL U1_1_11 ( .A(A_11_), .B(carry_11_), .CO(carry_12_), .S(SUM_11_) );
  ADDHXL U1_1_12 ( .A(A_12_), .B(carry_12_), .CO(carry_13_), .S(SUM_12_) );
  ADDHXL U1_1_13 ( .A(A_13_), .B(carry_13_), .CO(carry_14_), .S(SUM_13_) );
  ADDHXL U1_1_14 ( .A(A_14_), .B(carry_14_), .CO(carry_15_), .S(SUM_14_) );
  ADDHXL U1_1_15 ( .A(A_15_), .B(carry_15_), .CO(carry_16_), .S(SUM_15_) );
  ADDHXL U1_1_16 ( .A(A_16_), .B(carry_16_), .CO(carry_17_), .S(SUM_16_) );
  ADDHXL U1_1_17 ( .A(A_17_), .B(carry_17_), .CO(carry_18_), .S(SUM_17_) );
  CLKINVX1 U1 ( .A(A_1_), .Y(SUM_1_) );
  XOR2X1 U2 ( .A(carry_19_), .B(A_19_), .Y(SUM_19_) );
endmodule


module PPG_5_DW01_inc_1 ( SUM, A_18_, A_17_, A_16_, A_15_, A_14_, A_13_, A_12_, 
        A_11_, A_10_, A_9_, A_8_, A_7_, A_6_, A_5_, A_4_, A_3_, A_2_, A_1_, 
        A_0_ );
  output [19:0] SUM;
  input A_18_, A_17_, A_16_, A_15_, A_14_, A_13_, A_12_, A_11_, A_10_, A_9_,
         A_8_, A_7_, A_6_, A_5_, A_4_, A_3_, A_2_, A_1_, A_0_;

  wire   [19:2] carry;

  ADDHXL U1_1_18 ( .A(A_18_), .B(carry[18]), .CO(carry[19]), .S(SUM[18]) );
  ADDHXL U1_1_17 ( .A(A_17_), .B(carry[17]), .CO(carry[18]), .S(SUM[17]) );
  ADDHXL U1_1_2 ( .A(A_2_), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_3 ( .A(A_3_), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_4 ( .A(A_4_), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_5 ( .A(A_5_), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_6 ( .A(A_6_), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_7 ( .A(A_7_), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  ADDHXL U1_1_8 ( .A(A_8_), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  ADDHXL U1_1_9 ( .A(A_9_), .B(carry[9]), .CO(carry[10]), .S(SUM[9]) );
  ADDHXL U1_1_10 ( .A(A_10_), .B(carry[10]), .CO(carry[11]), .S(SUM[10]) );
  ADDHXL U1_1_11 ( .A(A_11_), .B(carry[11]), .CO(carry[12]), .S(SUM[11]) );
  ADDHXL U1_1_12 ( .A(A_12_), .B(carry[12]), .CO(carry[13]), .S(SUM[12]) );
  ADDHXL U1_1_13 ( .A(A_13_), .B(carry[13]), .CO(carry[14]), .S(SUM[13]) );
  ADDHXL U1_1_14 ( .A(A_14_), .B(carry[14]), .CO(carry[15]), .S(SUM[14]) );
  ADDHXL U1_1_15 ( .A(A_15_), .B(carry[15]), .CO(carry[16]), .S(SUM[15]) );
  ADDHXL U1_1_16 ( .A(A_16_), .B(carry[16]), .CO(carry[17]), .S(SUM[16]) );
  ADDHXL U1_1_1 ( .A(A_1_), .B(A_0_), .CO(carry[2]), .S(SUM[1]) );
  CLKINVX1 U1 ( .A(carry[19]), .Y(SUM[19]) );
  CLKINVX1 U2 ( .A(A_0_), .Y(SUM[0]) );
endmodule


module PPG_5 ( Mc, Mp, phase, PP );
  input [18:0] Mc;
  input [4:0] Mp;
  output [19:0] PP;
  input phase;
  wire   N56, N57, N58, N59, N60, N61, N62, N63, N64, N65, N66, N67, N68, N69,
         N70, N71, N72, N73, N74, N75, N76, N77, N78, N79, N80, N81, N82, N83,
         N84, N85, N86, N87, N88, N89, N90, N91, N92, N93, N94, n2, n3, n4, n5,
         n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n560, n570, n580, n590, n600, n610,
         n620, n630, n640, n650, n660, n670, n680, n690, n700, n710, n720,
         n730, n740, n750, n760, n770, n780, n790, n800, n810, n820, n830;
  wire   [2:0] bitGroup;

  PPG_5_DW01_inc_0 add_43 ( .A_19_(n660), .A_18_(n670), .A_17_(n680), .A_16_(
        n690), .A_15_(n700), .A_14_(n710), .A_13_(n720), .A_12_(n730), .A_11_(
        n740), .A_10_(n650), .A_9_(n750), .A_8_(n760), .A_7_(n770), .A_6_(n780), .A_5_(n790), .A_4_(n800), .A_3_(n810), .A_2_(n820), .A_1_(n830), .SUM_19_(
        N74), .SUM_18_(N73), .SUM_17_(N72), .SUM_16_(N71), .SUM_15_(N70), 
        .SUM_14_(N69), .SUM_13_(N68), .SUM_12_(N67), .SUM_11_(N66), .SUM_10_(
        N65), .SUM_9_(N64), .SUM_8_(N63), .SUM_7_(N62), .SUM_6_(N61), .SUM_5_(
        N60), .SUM_4_(N59), .SUM_3_(N58), .SUM_2_(N57), .SUM_1_(N56) );
  PPG_5_DW01_inc_1 r297 ( .SUM({N94, N93, N92, N91, N90, N89, N88, N87, N86, 
        N85, N84, N83, N82, N81, N80, N79, N78, N77, N76, N75}), .A_18_(n660), 
        .A_17_(n670), .A_16_(n680), .A_15_(n690), .A_14_(n700), .A_13_(n710), 
        .A_12_(n720), .A_11_(n730), .A_10_(n740), .A_9_(n650), .A_8_(n750), 
        .A_7_(n760), .A_6_(n770), .A_5_(n780), .A_4_(n790), .A_3_(n800), 
        .A_2_(n810), .A_1_(n820), .A_0_(n830) );
  AO22X2 U4 ( .A0(n640), .A1(Mp[2]), .B0(phase), .B1(Mp[4]), .Y(bitGroup[2])
         );
  AO22X1 U5 ( .A0(Mp[2]), .A1(phase), .B0(Mp[0]), .B1(n640), .Y(bitGroup[0])
         );
  AO22X4 U6 ( .A0(Mp[3]), .A1(phase), .B0(Mp[1]), .B1(n640), .Y(bitGroup[1])
         );
  AND2X6 U7 ( .A(n10), .B(n55), .Y(n11) );
  XOR2X1 U8 ( .A(bitGroup[1]), .B(bitGroup[2]), .Y(n10) );
  OAI21X4 U9 ( .A0(bitGroup[1]), .A1(bitGroup[0]), .B0(n52), .Y(n55) );
  NAND2X2 U10 ( .A(bitGroup[1]), .B(bitGroup[0]), .Y(n52) );
  OAI211X2 U11 ( .A0(n620), .A1(n670), .B0(n50), .C0(n49), .Y(PP[18]) );
  OAI211X2 U12 ( .A0(n620), .A1(n680), .B0(n45), .C0(n44), .Y(PP[17]) );
  OAI211X2 U13 ( .A0(n620), .A1(n690), .B0(n43), .C0(n42), .Y(PP[16]) );
  OAI211X2 U14 ( .A0(n620), .A1(n700), .B0(n41), .C0(n40), .Y(PP[15]) );
  OAI211X2 U15 ( .A0(n620), .A1(n710), .B0(n39), .C0(n38), .Y(PP[14]) );
  OAI211X2 U16 ( .A0(n620), .A1(n720), .B0(n37), .C0(n36), .Y(PP[13]) );
  BUFX12 U17 ( .A(n51), .Y(n620) );
  INVX8 U18 ( .A(n610), .Y(n2) );
  CLKINVX20 U19 ( .A(n2), .Y(n3) );
  BUFX3 U20 ( .A(n47), .Y(n610) );
  INVX8 U21 ( .A(n600), .Y(n4) );
  CLKINVX8 U22 ( .A(n4), .Y(n5) );
  INVX16 U23 ( .A(n4), .Y(n6) );
  INVX8 U24 ( .A(n630), .Y(n7) );
  CLKINVX16 U25 ( .A(n7), .Y(n8) );
  BUFX3 U26 ( .A(n46), .Y(n630) );
  CLKBUFX3 U27 ( .A(n48), .Y(n600) );
  NOR2BXL U28 ( .AN(n11), .B(bitGroup[1]), .Y(n46) );
  NAND2XL U29 ( .A(n11), .B(bitGroup[1]), .Y(n51) );
  INVX1 U30 ( .A(n5), .Y(n580) );
  AOI211XL U31 ( .A0(n560), .A1(n55), .B0(n54), .C0(n53), .Y(PP[19]) );
  XOR2XL U32 ( .A(n52), .B(bitGroup[2]), .Y(n54) );
  NOR2XL U33 ( .A(N94), .B(n55), .Y(n53) );
  INVXL U34 ( .A(bitGroup[1]), .Y(n590) );
  INVXL U35 ( .A(phase), .Y(n640) );
  CLKINVX1 U36 ( .A(N56), .Y(n570) );
  NOR2XL U37 ( .A(n55), .B(bitGroup[2]), .Y(n48) );
  NOR2BXL U38 ( .AN(bitGroup[2]), .B(n55), .Y(n47) );
  CLKINVX1 U39 ( .A(Mc[1]), .Y(n820) );
  CLKINVX1 U40 ( .A(Mc[16]), .Y(n680) );
  CLKINVX1 U41 ( .A(Mc[15]), .Y(n690) );
  CLKINVX1 U42 ( .A(Mc[14]), .Y(n700) );
  CLKINVX1 U43 ( .A(Mc[13]), .Y(n710) );
  CLKINVX1 U44 ( .A(Mc[12]), .Y(n720) );
  CLKINVX1 U45 ( .A(Mc[11]), .Y(n730) );
  CLKINVX1 U46 ( .A(Mc[10]), .Y(n740) );
  CLKINVX1 U47 ( .A(Mc[9]), .Y(n650) );
  CLKINVX1 U48 ( .A(Mc[8]), .Y(n750) );
  CLKINVX1 U49 ( .A(Mc[7]), .Y(n760) );
  CLKINVX1 U50 ( .A(Mc[6]), .Y(n770) );
  CLKINVX1 U51 ( .A(Mc[5]), .Y(n780) );
  CLKINVX1 U52 ( .A(Mc[4]), .Y(n790) );
  CLKINVX1 U53 ( .A(Mc[3]), .Y(n800) );
  CLKINVX1 U54 ( .A(Mc[2]), .Y(n810) );
  CLKINVX1 U55 ( .A(Mc[17]), .Y(n670) );
  CLKINVX1 U56 ( .A(Mc[18]), .Y(n660) );
  CLKINVX1 U57 ( .A(Mc[0]), .Y(n830) );
  NAND2X1 U58 ( .A(N75), .B(n3), .Y(n9) );
  NAND2X1 U59 ( .A(N56), .B(n8), .Y(n13) );
  AOI22X1 U60 ( .A0(N76), .A1(n3), .B0(Mc[1]), .B1(n6), .Y(n12) );
  OAI211X1 U61 ( .A0(n620), .A1(n570), .B0(n13), .C0(n12), .Y(PP[1]) );
  NAND2X1 U62 ( .A(N57), .B(n8), .Y(n15) );
  AOI22X1 U63 ( .A0(N77), .A1(n3), .B0(Mc[2]), .B1(n6), .Y(n14) );
  OAI211X1 U64 ( .A0(n620), .A1(n820), .B0(n15), .C0(n14), .Y(PP[2]) );
  NAND2X1 U65 ( .A(N58), .B(n8), .Y(n17) );
  AOI22X1 U66 ( .A0(N78), .A1(n3), .B0(Mc[3]), .B1(n6), .Y(n16) );
  OAI211X1 U67 ( .A0(n620), .A1(n810), .B0(n17), .C0(n16), .Y(PP[3]) );
  NAND2X1 U68 ( .A(N59), .B(n8), .Y(n19) );
  AOI22X1 U69 ( .A0(N79), .A1(n3), .B0(Mc[4]), .B1(n6), .Y(n18) );
  OAI211X1 U70 ( .A0(n620), .A1(n800), .B0(n19), .C0(n18), .Y(PP[4]) );
  NAND2X1 U71 ( .A(N60), .B(n8), .Y(n21) );
  AOI22X1 U72 ( .A0(N80), .A1(n3), .B0(Mc[5]), .B1(n6), .Y(n20) );
  OAI211X1 U73 ( .A0(n620), .A1(n790), .B0(n21), .C0(n20), .Y(PP[5]) );
  NAND2X1 U74 ( .A(N61), .B(n8), .Y(n23) );
  AOI22X1 U75 ( .A0(N81), .A1(n3), .B0(Mc[6]), .B1(n6), .Y(n22) );
  OAI211X1 U76 ( .A0(n620), .A1(n780), .B0(n23), .C0(n22), .Y(PP[6]) );
  NAND2X1 U77 ( .A(N62), .B(n8), .Y(n25) );
  AOI22X1 U78 ( .A0(N82), .A1(n3), .B0(Mc[7]), .B1(n6), .Y(n24) );
  OAI211X1 U79 ( .A0(n620), .A1(n770), .B0(n25), .C0(n24), .Y(PP[7]) );
  NAND2X1 U80 ( .A(N63), .B(n8), .Y(n27) );
  AOI22X1 U81 ( .A0(N83), .A1(n3), .B0(Mc[8]), .B1(n6), .Y(n26) );
  OAI211X1 U82 ( .A0(n620), .A1(n760), .B0(n27), .C0(n26), .Y(PP[8]) );
  NAND2X1 U83 ( .A(N64), .B(n8), .Y(n29) );
  AOI22X1 U84 ( .A0(N84), .A1(n3), .B0(Mc[9]), .B1(n6), .Y(n28) );
  OAI211X1 U85 ( .A0(n620), .A1(n750), .B0(n29), .C0(n28), .Y(PP[9]) );
  NAND2X1 U86 ( .A(N65), .B(n8), .Y(n31) );
  AOI22X1 U87 ( .A0(N85), .A1(n3), .B0(Mc[10]), .B1(n6), .Y(n30) );
  OAI211X1 U88 ( .A0(n620), .A1(n650), .B0(n31), .C0(n30), .Y(PP[10]) );
  NAND2X1 U89 ( .A(N66), .B(n8), .Y(n33) );
  AOI22X1 U90 ( .A0(N86), .A1(n3), .B0(Mc[11]), .B1(n6), .Y(n32) );
  OAI211X1 U91 ( .A0(n620), .A1(n740), .B0(n33), .C0(n32), .Y(PP[11]) );
  NAND2X1 U92 ( .A(N67), .B(n8), .Y(n35) );
  AOI22X1 U93 ( .A0(N87), .A1(n3), .B0(Mc[12]), .B1(n6), .Y(n34) );
  OAI211X1 U94 ( .A0(n620), .A1(n730), .B0(n35), .C0(n34), .Y(PP[12]) );
  NAND2X1 U95 ( .A(N68), .B(n8), .Y(n37) );
  AOI22X1 U96 ( .A0(N88), .A1(n3), .B0(Mc[13]), .B1(n6), .Y(n36) );
  NAND2X1 U97 ( .A(N69), .B(n8), .Y(n39) );
  AOI22X1 U98 ( .A0(N89), .A1(n3), .B0(Mc[14]), .B1(n6), .Y(n38) );
  NAND2X1 U99 ( .A(N70), .B(n8), .Y(n41) );
  AOI22X1 U100 ( .A0(N90), .A1(n3), .B0(Mc[15]), .B1(n6), .Y(n40) );
  NAND2X1 U101 ( .A(N71), .B(n8), .Y(n43) );
  AOI22X1 U102 ( .A0(N91), .A1(n3), .B0(Mc[16]), .B1(n6), .Y(n42) );
  NAND2X1 U103 ( .A(N72), .B(n8), .Y(n45) );
  AOI22X1 U104 ( .A0(N92), .A1(n3), .B0(n6), .B1(Mc[17]), .Y(n44) );
  NAND2X1 U105 ( .A(N73), .B(n8), .Y(n50) );
  AOI22X1 U106 ( .A0(Mc[18]), .A1(n6), .B0(N93), .B1(n3), .Y(n49) );
  OAI22XL U107 ( .A0(Mc[18]), .A1(n590), .B0(N74), .B1(bitGroup[1]), .Y(n560)
         );
  OAI21XL U108 ( .A0(n580), .A1(n570), .B0(n9), .Y(PP[0]) );
endmodule


module MULT_1_DW01_inc_0 ( A, SUM );
  input [34:0] A;
  output [34:0] SUM;

  wire   [34:2] carry;

  ADDHXL U1_1_33 ( .A(A[33]), .B(carry[33]), .CO(carry[34]), .S(SUM[33]) );
  ADDHXL U1_1_32 ( .A(A[32]), .B(carry[32]), .CO(carry[33]), .S(SUM[32]) );
  ADDHXL U1_1_31 ( .A(A[31]), .B(carry[31]), .CO(carry[32]), .S(SUM[31]) );
  ADDHXL U1_1_30 ( .A(A[30]), .B(carry[30]), .CO(carry[31]), .S(SUM[30]) );
  ADDHXL U1_1_28 ( .A(A[28]), .B(carry[28]), .CO(carry[29]), .S(SUM[28]) );
  ADDHXL U1_1_27 ( .A(A[27]), .B(carry[27]), .CO(carry[28]), .S(SUM[27]) );
  ADDHXL U1_1_26 ( .A(A[26]), .B(carry[26]), .CO(carry[27]), .S(SUM[26]) );
  ADDHXL U1_1_25 ( .A(A[25]), .B(carry[25]), .CO(carry[26]), .S(SUM[25]) );
  ADDHXL U1_1_24 ( .A(A[24]), .B(carry[24]), .CO(carry[25]), .S(SUM[24]) );
  ADDHXL U1_1_23 ( .A(A[23]), .B(carry[23]), .CO(carry[24]), .S(SUM[23]) );
  ADDHXL U1_1_22 ( .A(A[22]), .B(carry[22]), .CO(carry[23]), .S(SUM[22]) );
  ADDHXL U1_1_19 ( .A(A[19]), .B(carry[19]), .CO(carry[20]), .S(SUM[19]) );
  ADDHXL U1_1_18 ( .A(A[18]), .B(carry[18]), .CO(carry[19]), .S(SUM[18]) );
  ADDHXL U1_1_17 ( .A(A[17]), .B(carry[17]), .CO(carry[18]), .S(SUM[17]) );
  ADDHXL U1_1_16 ( .A(A[16]), .B(carry[16]), .CO(carry[17]), .S(SUM[16]) );
  ADDHXL U1_1_15 ( .A(A[15]), .B(carry[15]), .CO(carry[16]), .S(SUM[15]) );
  ADDHXL U1_1_14 ( .A(A[14]), .B(carry[14]), .CO(carry[15]), .S(SUM[14]) );
  ADDHXL U1_1_13 ( .A(A[13]), .B(carry[13]), .CO(carry[14]), .S(SUM[13]) );
  ADDHXL U1_1_12 ( .A(A[12]), .B(carry[12]), .CO(carry[13]), .S(SUM[12]) );
  ADDHXL U1_1_11 ( .A(A[11]), .B(carry[11]), .CO(carry[12]), .S(SUM[11]) );
  ADDHXL U1_1_10 ( .A(A[10]), .B(carry[10]), .CO(carry[11]), .S(SUM[10]) );
  ADDHXL U1_1_9 ( .A(A[9]), .B(carry[9]), .CO(carry[10]), .S(SUM[9]) );
  ADDHXL U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  ADDHXL U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  ADDHXL U1_1_21 ( .A(A[21]), .B(carry[21]), .CO(carry[22]), .S(SUM[21]) );
  ADDHXL U1_1_20 ( .A(A[20]), .B(carry[20]), .CO(carry[21]), .S(SUM[20]) );
  ADDHXL U1_1_29 ( .A(A[29]), .B(carry[29]), .CO(carry[30]), .S(SUM[29]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  XOR2X1 U1 ( .A(carry[34]), .B(A[34]), .Y(SUM[34]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module MULT_1_DW01_inc_1 ( A, SUM );
  input [18:0] A;
  output [18:0] SUM;

  wire   [18:2] carry;

  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_11 ( .A(A[11]), .B(carry[11]), .CO(carry[12]), .S(SUM[11]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_9 ( .A(A[9]), .B(carry[9]), .CO(carry[10]), .S(SUM[9]) );
  ADDHXL U1_1_15 ( .A(A[15]), .B(carry[15]), .CO(carry[16]), .S(SUM[15]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX2 U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  ADDHXL U1_1_16 ( .A(A[16]), .B(carry[16]), .CO(carry[17]), .S(SUM[16]) );
  ADDHXL U1_1_14 ( .A(A[14]), .B(carry[14]), .CO(carry[15]), .S(SUM[14]) );
  ADDHXL U1_1_12 ( .A(A[12]), .B(carry[12]), .CO(carry[13]), .S(SUM[12]) );
  ADDHXL U1_1_10 ( .A(A[10]), .B(carry[10]), .CO(carry[11]), .S(SUM[10]) );
  ADDHXL U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  ADDHXL U1_1_13 ( .A(A[13]), .B(carry[13]), .CO(carry[14]), .S(SUM[13]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX2 U1_1_17 ( .A(A[17]), .B(carry[17]), .CO(carry[18]), .S(SUM[17]) );
  INVXL U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[18]), .B(A[18]), .Y(SUM[18]) );
endmodule


module MULT_1_DW01_inc_2 ( A, SUM );
  input [18:0] A;
  output [18:0] SUM;

  wire   [18:2] carry;

  ADDHXL U1_1_17 ( .A(A[17]), .B(carry[17]), .CO(carry[18]), .S(SUM[17]) );
  ADDHXL U1_1_16 ( .A(A[16]), .B(carry[16]), .CO(carry[17]), .S(SUM[16]) );
  ADDHXL U1_1_15 ( .A(A[15]), .B(carry[15]), .CO(carry[16]), .S(SUM[15]) );
  ADDHXL U1_1_14 ( .A(A[14]), .B(carry[14]), .CO(carry[15]), .S(SUM[14]) );
  ADDHXL U1_1_13 ( .A(A[13]), .B(carry[13]), .CO(carry[14]), .S(SUM[13]) );
  ADDHXL U1_1_12 ( .A(A[12]), .B(carry[12]), .CO(carry[13]), .S(SUM[12]) );
  ADDHXL U1_1_11 ( .A(A[11]), .B(carry[11]), .CO(carry[12]), .S(SUM[11]) );
  ADDHXL U1_1_10 ( .A(A[10]), .B(carry[10]), .CO(carry[11]), .S(SUM[10]) );
  ADDHXL U1_1_9 ( .A(A[9]), .B(carry[9]), .CO(carry[10]), .S(SUM[9]) );
  ADDHXL U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  ADDHXL U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  XOR2X1 U1 ( .A(carry[18]), .B(A[18]), .Y(SUM[18]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module MULT_1_DW01_add_8 ( B, SUM, A_30_, A_29_, A_28_, A_27_, A_26_, A_25_, 
        A_24_, A_23_, A_22_, A_21_, A_20_, A_19_, A_18_, A_17_, A_16_, A_15_, 
        A_14_, A_13_, A_12_, A_11_, A_10_ );
  input [36:0] B;
  output [36:0] SUM;
  input A_30_, A_29_, A_28_, A_27_, A_26_, A_25_, A_24_, A_23_, A_22_, A_21_,
         A_20_, A_19_, A_18_, A_17_, A_16_, A_15_, A_14_, A_13_, A_12_, A_11_,
         A_10_;
  wire   n1, n2, n3, n4, n15;
  wire   [32:12] carry;

  ADDFXL U1_20 ( .A(A_20_), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_26 ( .A(A_26_), .B(B[26]), .CI(carry[26]), .CO(carry[27]), .S(
        SUM[26]) );
  ADDFXL U1_18 ( .A(A_18_), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_15 ( .A(A_15_), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_13 ( .A(A_13_), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_24 ( .A(A_24_), .B(B[24]), .CI(carry[24]), .CO(carry[25]), .S(
        SUM[24]) );
  ADDFX1 U1_22 ( .A(A_22_), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_25 ( .A(A_25_), .B(B[25]), .CI(carry[25]), .CO(carry[26]), .S(
        SUM[25]) );
  ADDFXL U1_21 ( .A(A_21_), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_12 ( .A(A_12_), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A_11_), .B(B[11]), .CI(n1), .CO(carry[12]), .S(SUM[11]) );
  ADDFX2 U1_23 ( .A(A_23_), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFX2 U1_27 ( .A(A_27_), .B(B[27]), .CI(carry[27]), .CO(carry[28]), .S(
        SUM[27]) );
  ADDFXL U1_14 ( .A(A_14_), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_16 ( .A(A_16_), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_19 ( .A(A_19_), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_17 ( .A(A_17_), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFHX2 U1_29 ( .A(A_29_), .B(B[29]), .CI(carry[29]), .CO(carry[30]), .S(
        SUM[29]) );
  ADDFHX2 U1_30 ( .A(A_30_), .B(B[30]), .CI(carry[30]), .CO(carry[31]), .S(
        SUM[30]) );
  ADDFX2 U1_28 ( .A(A_28_), .B(B[28]), .CI(carry[28]), .CO(carry[29]), .S(
        SUM[28]) );
  CLKAND2X8 U1 ( .A(B[34]), .B(n2), .Y(n3) );
  CLKAND2X2 U2 ( .A(B[33]), .B(n4), .Y(n2) );
  AND2X6 U3 ( .A(B[10]), .B(A_10_), .Y(n1) );
  CLKBUFX3 U4 ( .A(B[2]), .Y(SUM[2]) );
  CLKBUFX3 U5 ( .A(B[6]), .Y(SUM[6]) );
  XOR2XL U6 ( .A(B[10]), .B(A_10_), .Y(SUM[10]) );
  OR2XL U7 ( .A(B[31]), .B(carry[31]), .Y(carry[32]) );
  AND2XL U8 ( .A(B[32]), .B(carry[32]), .Y(n4) );
  XOR2X1 U9 ( .A(B[35]), .B(n3), .Y(SUM[35]) );
  XNOR2X1 U10 ( .A(B[31]), .B(carry[31]), .Y(SUM[31]) );
  XOR2X1 U11 ( .A(B[32]), .B(carry[32]), .Y(SUM[32]) );
  XOR2X1 U12 ( .A(B[33]), .B(n4), .Y(SUM[33]) );
  XOR2X1 U13 ( .A(B[34]), .B(n2), .Y(SUM[34]) );
  XNOR2X1 U14 ( .A(B[36]), .B(n15), .Y(SUM[36]) );
  NAND2X1 U15 ( .A(B[35]), .B(n3), .Y(n15) );
  CLKBUFX3 U16 ( .A(B[9]), .Y(SUM[9]) );
  CLKBUFX3 U17 ( .A(B[8]), .Y(SUM[8]) );
  CLKBUFX3 U18 ( .A(B[7]), .Y(SUM[7]) );
  CLKBUFX3 U19 ( .A(B[5]), .Y(SUM[5]) );
  CLKBUFX3 U20 ( .A(B[4]), .Y(SUM[4]) );
  CLKBUFX3 U21 ( .A(B[3]), .Y(SUM[3]) );
  CLKBUFX3 U22 ( .A(B[1]), .Y(SUM[1]) );
  CLKBUFX3 U23 ( .A(B[0]), .Y(SUM[0]) );
endmodule


module MULT_1_DW01_add_7 ( A_22_, A_21_, A_20_, A_19_, A_18_, A_17_, A_16_, 
        A_15_, A_14_, A_13_, A_12_, A_11_, A_10_, A_9_, A_8_, A_7_, A_6_, A_5_, 
        A_4_, A_3_, A_2_, B_26_, B_25_, B_24_, B_23_, B_22_, B_21_, B_20_, 
        B_19_, B_18_, B_17_, B_16_, B_15_, B_14_, B_13_, B_12_, B_11_, B_10_, 
        B_9_, B_8_, B_7_, B_6_, SUM_28_, SUM_27_, SUM_26_, SUM_25_, SUM_24_, 
        SUM_23_, SUM_22_, SUM_21_, SUM_20_, SUM_19_, SUM_18_, SUM_17_, SUM_16_, 
        SUM_15_, SUM_14_, SUM_13_, SUM_12_, SUM_11_, SUM_10_, SUM_9_, SUM_8_, 
        SUM_7_, SUM_6_, SUM_5_, SUM_4_, SUM_3_, SUM_2_ );
  input A_22_, A_21_, A_20_, A_19_, A_18_, A_17_, A_16_, A_15_, A_14_, A_13_,
         A_12_, A_11_, A_10_, A_9_, A_8_, A_7_, A_6_, A_5_, A_4_, A_3_, A_2_,
         B_26_, B_25_, B_24_, B_23_, B_22_, B_21_, B_20_, B_19_, B_18_, B_17_,
         B_16_, B_15_, B_14_, B_13_, B_12_, B_11_, B_10_, B_9_, B_8_, B_7_,
         B_6_;
  output SUM_28_, SUM_27_, SUM_26_, SUM_25_, SUM_24_, SUM_23_, SUM_22_,
         SUM_21_, SUM_20_, SUM_19_, SUM_18_, SUM_17_, SUM_16_, SUM_15_,
         SUM_14_, SUM_13_, SUM_12_, SUM_11_, SUM_10_, SUM_9_, SUM_8_, SUM_7_,
         SUM_6_, SUM_5_, SUM_4_, SUM_3_, SUM_2_;
  wire   n1, n3, n4;
  wire   [24:8] carry;

  ADDFXL U1_20 ( .A(A_20_), .B(B_20_), .CI(carry[20]), .CO(carry[21]), .S(
        SUM_20_) );
  ADDFX1 U1_8 ( .A(A_8_), .B(B_8_), .CI(carry[8]), .CO(carry[9]), .S(SUM_8_)
         );
  ADDFX1 U1_9 ( .A(A_9_), .B(B_9_), .CI(carry[9]), .CO(carry[10]), .S(SUM_9_)
         );
  ADDFX1 U1_10 ( .A(A_10_), .B(B_10_), .CI(carry[10]), .CO(carry[11]), .S(
        SUM_10_) );
  ADDFHX2 U1_13 ( .A(A_13_), .B(B_13_), .CI(carry[13]), .CO(carry[14]), .S(
        SUM_13_) );
  ADDFHX2 U1_11 ( .A(A_11_), .B(B_11_), .CI(carry[11]), .CO(carry[12]), .S(
        SUM_11_) );
  ADDFHX4 U1_14 ( .A(A_14_), .B(B_14_), .CI(carry[14]), .CO(carry[15]), .S(
        SUM_14_) );
  ADDFHX4 U1_15 ( .A(A_15_), .B(B_15_), .CI(carry[15]), .CO(carry[16]), .S(
        SUM_15_) );
  ADDFX1 U1_7 ( .A(A_7_), .B(B_7_), .CI(n1), .CO(carry[8]), .S(SUM_7_) );
  ADDFXL U1_16 ( .A(A_16_), .B(B_16_), .CI(carry[16]), .CO(carry[17]), .S(
        SUM_16_) );
  ADDFXL U1_19 ( .A(A_19_), .B(B_19_), .CI(carry[19]), .CO(carry[20]), .S(
        SUM_19_) );
  ADDFXL U1_18 ( .A(A_18_), .B(B_18_), .CI(carry[18]), .CO(carry[19]), .S(
        SUM_18_) );
  ADDFXL U1_17 ( .A(A_17_), .B(B_17_), .CI(carry[17]), .CO(carry[18]), .S(
        SUM_17_) );
  ADDFHX2 U1_21 ( .A(A_21_), .B(B_21_), .CI(carry[21]), .CO(carry[22]), .S(
        SUM_21_) );
  ADDFHX2 U1_22 ( .A(A_22_), .B(B_22_), .CI(carry[22]), .CO(carry[23]), .S(
        SUM_22_) );
  ADDFX2 U1_12 ( .A(A_12_), .B(B_12_), .CI(carry[12]), .CO(carry[13]), .S(
        SUM_12_) );
  CLKBUFX3 U1 ( .A(A_3_), .Y(SUM_3_) );
  CLKBUFX3 U2 ( .A(A_2_), .Y(SUM_2_) );
  AND2X2 U3 ( .A(B_6_), .B(A_6_), .Y(n1) );
  XOR2XL U4 ( .A(B_6_), .B(A_6_), .Y(SUM_6_) );
  AND2XL U5 ( .A(B_24_), .B(carry[24]), .Y(n3) );
  AND2XL U6 ( .A(B_26_), .B(n4), .Y(SUM_28_) );
  OR2X1 U7 ( .A(B_23_), .B(carry[23]), .Y(carry[24]) );
  AND2X2 U8 ( .A(B_25_), .B(n3), .Y(n4) );
  XNOR2X1 U9 ( .A(B_23_), .B(carry[23]), .Y(SUM_23_) );
  XOR2X1 U10 ( .A(B_24_), .B(carry[24]), .Y(SUM_24_) );
  XOR2X1 U11 ( .A(B_25_), .B(n3), .Y(SUM_25_) );
  XOR2X1 U12 ( .A(B_26_), .B(n4), .Y(SUM_26_) );
  CLKBUFX3 U13 ( .A(A_5_), .Y(SUM_5_) );
  CLKBUFX3 U14 ( .A(A_4_), .Y(SUM_4_) );
  CLKINVX1 U15 ( .A(SUM_28_), .Y(SUM_27_) );
endmodule


module MULT_1_DW01_add_5 ( A_36_, A_35_, A_34_, A_33_, A_32_, A_31_, A_30_, 
        A_29_, A_28_, A_27_, A_26_, A_25_, A_24_, A_23_, A_22_, A_21_, A_20_, 
        A_19_, A_18_, A_17_, A_16_, A_15_, A_14_, B_28_, B_27_, B_26_, B_25_, 
        B_24_, B_23_, B_22_, B_21_, B_20_, B_19_, B_18_, B_17_, B_16_, B_15_, 
        B_14_, B_13_, B_12_, B_11_, B_10_, B_9_, B_8_, B_7_, B_6_, B_5_, B_4_, 
        B_3_, B_2_, SUM_36_, SUM_35_, SUM_34_, SUM_33_, SUM_32_, SUM_31_, 
        SUM_30_, SUM_29_, SUM_28_, SUM_27_, SUM_26_, SUM_25_, SUM_24_, SUM_23_, 
        SUM_22_, SUM_21_, SUM_20_, SUM_19_, SUM_18_, SUM_17_, SUM_16_, SUM_15_, 
        SUM_14_, SUM_13_, SUM_12_, SUM_11_, SUM_10_, SUM_9_, SUM_8_, SUM_7_, 
        SUM_6_, SUM_5_, SUM_4_, SUM_3_, SUM_2_ );
  input A_36_, A_35_, A_34_, A_33_, A_32_, A_31_, A_30_, A_29_, A_28_, A_27_,
         A_26_, A_25_, A_24_, A_23_, A_22_, A_21_, A_20_, A_19_, A_18_, A_17_,
         A_16_, A_15_, A_14_, B_28_, B_27_, B_26_, B_25_, B_24_, B_23_, B_22_,
         B_21_, B_20_, B_19_, B_18_, B_17_, B_16_, B_15_, B_14_, B_13_, B_12_,
         B_11_, B_10_, B_9_, B_8_, B_7_, B_6_, B_5_, B_4_, B_3_, B_2_;
  output SUM_36_, SUM_35_, SUM_34_, SUM_33_, SUM_32_, SUM_31_, SUM_30_,
         SUM_29_, SUM_28_, SUM_27_, SUM_26_, SUM_25_, SUM_24_, SUM_23_,
         SUM_22_, SUM_21_, SUM_20_, SUM_19_, SUM_18_, SUM_17_, SUM_16_,
         SUM_15_, SUM_14_, SUM_13_, SUM_12_, SUM_11_, SUM_10_, SUM_9_, SUM_8_,
         SUM_7_, SUM_6_, SUM_5_, SUM_4_, SUM_3_, SUM_2_;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n24;
  wire   [29:16] carry;

  ADDFXL U1_17 ( .A(A_17_), .B(B_17_), .CI(carry[17]), .CO(carry[18]), .S(
        SUM_17_) );
  ADDFXL U1_16 ( .A(A_16_), .B(B_16_), .CI(carry[16]), .CO(carry[17]), .S(
        SUM_16_) );
  ADDFXL U1_15 ( .A(A_15_), .B(B_15_), .CI(n1), .CO(carry[16]), .S(SUM_15_) );
  ADDFXL U1_24 ( .A(A_24_), .B(B_24_), .CI(carry[24]), .CO(carry[25]), .S(
        SUM_24_) );
  ADDFXL U1_18 ( .A(A_18_), .B(B_18_), .CI(carry[18]), .CO(carry[19]), .S(
        SUM_18_) );
  ADDFXL U1_22 ( .A(A_22_), .B(B_22_), .CI(carry[22]), .CO(carry[23]), .S(
        SUM_22_) );
  ADDFXL U1_20 ( .A(A_20_), .B(B_20_), .CI(carry[20]), .CO(carry[21]), .S(
        SUM_20_) );
  ADDFXL U1_19 ( .A(A_19_), .B(B_19_), .CI(carry[19]), .CO(carry[20]), .S(
        SUM_19_) );
  ADDFHX2 U1_27 ( .A(A_27_), .B(B_27_), .CI(carry[27]), .CO(carry[28]), .S(
        SUM_27_) );
  ADDFHX2 U1_28 ( .A(A_28_), .B(B_28_), .CI(carry[28]), .CO(carry[29]), .S(
        SUM_28_) );
  ADDFHX2 U1_25 ( .A(A_25_), .B(B_25_), .CI(carry[25]), .CO(carry[26]), .S(
        SUM_25_) );
  ADDFHX4 U1_26 ( .A(A_26_), .B(B_26_), .CI(carry[26]), .CO(carry[27]), .S(
        SUM_26_) );
  ADDFHX2 U1_23 ( .A(A_23_), .B(B_23_), .CI(carry[23]), .CO(carry[24]), .S(
        SUM_23_) );
  ADDFHX2 U1_21 ( .A(A_21_), .B(B_21_), .CI(carry[21]), .CO(carry[22]), .S(
        SUM_21_) );
  NAND2X2 U1 ( .A(n4), .B(n5), .Y(SUM_29_) );
  NAND2X1 U2 ( .A(A_29_), .B(n3), .Y(n4) );
  CLKBUFX3 U3 ( .A(B_2_), .Y(SUM_2_) );
  CLKBUFX3 U4 ( .A(B_6_), .Y(SUM_6_) );
  AND2X2 U5 ( .A(B_14_), .B(A_14_), .Y(n1) );
  NAND2X1 U6 ( .A(n2), .B(carry[29]), .Y(n5) );
  INVX1 U7 ( .A(A_29_), .Y(n2) );
  INVX1 U8 ( .A(carry[29]), .Y(n3) );
  XOR2XL U9 ( .A(A_33_), .B(n9), .Y(SUM_33_) );
  XOR2X1 U10 ( .A(A_35_), .B(n11), .Y(SUM_35_) );
  XOR2XL U11 ( .A(A_32_), .B(n8), .Y(SUM_32_) );
  AND2X1 U12 ( .A(A_30_), .B(n6), .Y(n7) );
  NAND2XL U13 ( .A(A_35_), .B(n11), .Y(n24) );
  AND2X2 U14 ( .A(A_32_), .B(n8), .Y(n9) );
  XOR2XL U15 ( .A(A_30_), .B(n6), .Y(SUM_30_) );
  XOR2XL U16 ( .A(A_31_), .B(n7), .Y(SUM_31_) );
  XOR2XL U17 ( .A(A_34_), .B(n10), .Y(SUM_34_) );
  AND2X1 U18 ( .A(A_31_), .B(n7), .Y(n8) );
  AND2X1 U19 ( .A(A_33_), .B(n9), .Y(n10) );
  BUFX2 U20 ( .A(B_10_), .Y(SUM_10_) );
  BUFX2 U21 ( .A(B_7_), .Y(SUM_7_) );
  AND2X2 U22 ( .A(A_29_), .B(carry[29]), .Y(n6) );
  AND2X2 U23 ( .A(A_34_), .B(n10), .Y(n11) );
  CLKBUFX3 U24 ( .A(B_11_), .Y(SUM_11_) );
  CLKBUFX3 U25 ( .A(B_12_), .Y(SUM_12_) );
  CLKBUFX3 U26 ( .A(B_13_), .Y(SUM_13_) );
  XNOR2X1 U27 ( .A(A_36_), .B(n24), .Y(SUM_36_) );
  XOR2X1 U28 ( .A(B_14_), .B(A_14_), .Y(SUM_14_) );
  CLKBUFX3 U29 ( .A(B_8_), .Y(SUM_8_) );
  CLKBUFX3 U30 ( .A(B_9_), .Y(SUM_9_) );
  CLKBUFX3 U31 ( .A(B_3_), .Y(SUM_3_) );
  CLKBUFX3 U32 ( .A(B_5_), .Y(SUM_5_) );
  CLKBUFX3 U33 ( .A(B_4_), .Y(SUM_4_) );
endmodule


module MULT_1_DW01_add_4 ( A, SUM, B_36_, B_35_, B_34_, B_33_, B_32_, B_31_, 
        B_30_, B_29_, B_28_, B_27_, B_26_, B_25_, B_24_, B_23_, B_22_, B_21_, 
        B_20_, B_19_, B_18_, B_17_, B_16_, B_15_, B_14_, B_13_, B_12_, B_11_, 
        B_10_, B_9_, B_8_, B_7_, B_6_, B_5_, B_4_, B_3_, B_2_ );
  input [36:0] A;
  output [36:0] SUM;
  input B_36_, B_35_, B_34_, B_33_, B_32_, B_31_, B_30_, B_29_, B_28_, B_27_,
         B_26_, B_25_, B_24_, B_23_, B_22_, B_21_, B_20_, B_19_, B_18_, B_17_,
         B_16_, B_15_, B_14_, B_13_, B_12_, B_11_, B_10_, B_9_, B_8_, B_7_,
         B_6_, B_5_, B_4_, B_3_, B_2_;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17;
  wire   [36:4] carry;

  ADDFXL U1_9 ( .A(A[9]), .B(B_9_), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B_8_), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_17 ( .A(A[17]), .B(B_17_), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  XOR3X1 U1_36 ( .A(A[36]), .B(B_36_), .C(carry[36]), .Y(SUM[36]) );
  ADDFX1 U1_15 ( .A(A[15]), .B(B_15_), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFHX4 U1_12 ( .A(A[12]), .B(B_12_), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFHX4 U1_4 ( .A(A[4]), .B(B_4_), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFHX2 U1_34 ( .A(A[34]), .B(B_34_), .CI(carry[34]), .CO(carry[35]), .S(
        SUM[34]) );
  ADDFX2 U1_35 ( .A(A[35]), .B(B_35_), .CI(carry[35]), .CO(carry[36]), .S(
        SUM[35]) );
  ADDFX1 U1_33 ( .A(A[33]), .B(B_33_), .CI(carry[33]), .CO(carry[34]), .S(
        SUM[33]) );
  ADDFHX2 U1_32 ( .A(A[32]), .B(B_32_), .CI(carry[32]), .CO(carry[33]), .S(
        SUM[32]) );
  ADDFHX2 U1_28 ( .A(A[28]), .B(B_28_), .CI(carry[28]), .CO(carry[29]), .S(
        SUM[28]) );
  ADDFHX2 U1_26 ( .A(A[26]), .B(B_26_), .CI(carry[26]), .CO(carry[27]), .S(
        SUM[26]) );
  ADDFHX4 U1_11 ( .A(A[11]), .B(B_11_), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFHX4 U1_3 ( .A(A[3]), .B(B_3_), .CI(n1), .CO(carry[4]), .S(SUM[3]) );
  ADDFHX2 U1_22 ( .A(A[22]), .B(B_22_), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFX2 U1_30 ( .A(A[30]), .B(B_30_), .CI(carry[30]), .CO(carry[31]), .S(
        SUM[30]) );
  ADDFHX1 U1_31 ( .A(A[31]), .B(B_31_), .CI(carry[31]), .CO(carry[32]), .S(
        SUM[31]) );
  ADDFX2 U1_5 ( .A(A[5]), .B(B_5_), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2 U1_13 ( .A(A[13]), .B(B_13_), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFHX1 U1_24 ( .A(A[24]), .B(B_24_), .CI(carry[24]), .CO(carry[25]), .S(
        SUM[24]) );
  ADDFX2 U1_10 ( .A(A[10]), .B(B_10_), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_7 ( .A(A[7]), .B(B_7_), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFHX2 U1_25 ( .A(A[25]), .B(B_25_), .CI(carry[25]), .CO(carry[26]), .S(
        SUM[25]) );
  ADDFHX2 U1_20 ( .A(A[20]), .B(B_20_), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFHX4 U1_21 ( .A(A[21]), .B(B_21_), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFHX2 U1_18 ( .A(A[18]), .B(B_18_), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFHX4 U1_19 ( .A(A[19]), .B(B_19_), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFX2 U1_16 ( .A(A[16]), .B(B_16_), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  NAND3X2 U1 ( .A(n6), .B(n7), .C(n8), .Y(carry[28]) );
  NAND2X1 U2 ( .A(A[29]), .B(B_29_), .Y(n17) );
  AND2X2 U3 ( .A(B_2_), .B(A[2]), .Y(n1) );
  XOR2XL U4 ( .A(carry[23]), .B(A[23]), .Y(n2) );
  XOR2XL U5 ( .A(B_23_), .B(n2), .Y(SUM[23]) );
  NAND2X2 U6 ( .A(carry[23]), .B(B_23_), .Y(n3) );
  NAND2X1 U7 ( .A(A[23]), .B(B_23_), .Y(n4) );
  NAND2X2 U8 ( .A(A[23]), .B(carry[23]), .Y(n5) );
  NAND3X1 U9 ( .A(n3), .B(n4), .C(n5), .Y(carry[24]) );
  NAND2X1 U10 ( .A(B_29_), .B(carry[29]), .Y(n15) );
  XOR3XL U11 ( .A(B_27_), .B(A[27]), .C(carry[27]), .Y(SUM[27]) );
  NAND2X2 U12 ( .A(carry[27]), .B(B_27_), .Y(n6) );
  NAND2X1 U13 ( .A(A[27]), .B(B_27_), .Y(n7) );
  NAND2X2 U14 ( .A(A[27]), .B(carry[27]), .Y(n8) );
  NAND3X1 U15 ( .A(n12), .B(n13), .C(n14), .Y(carry[15]) );
  NAND2X1 U16 ( .A(B_14_), .B(carry[14]), .Y(n12) );
  NAND2X1 U17 ( .A(A[14]), .B(carry[14]), .Y(n13) );
  NAND3X1 U18 ( .A(n9), .B(n10), .C(n11), .Y(carry[7]) );
  NAND2X1 U19 ( .A(B_6_), .B(carry[6]), .Y(n9) );
  NAND2X1 U20 ( .A(A[6]), .B(carry[6]), .Y(n10) );
  NAND2X1 U21 ( .A(A[6]), .B(B_6_), .Y(n11) );
  XOR3XL U22 ( .A(carry[29]), .B(A[29]), .C(B_29_), .Y(SUM[29]) );
  NAND2XL U23 ( .A(A[29]), .B(carry[29]), .Y(n16) );
  NAND3X1 U24 ( .A(n15), .B(n16), .C(n17), .Y(carry[30]) );
  XOR3XL U25 ( .A(carry[6]), .B(A[6]), .C(B_6_), .Y(SUM[6]) );
  XOR3XL U26 ( .A(carry[14]), .B(A[14]), .C(B_14_), .Y(SUM[14]) );
  NAND2X1 U27 ( .A(A[14]), .B(B_14_), .Y(n14) );
  XOR2X1 U28 ( .A(B_2_), .B(A[2]), .Y(SUM[2]) );
  CLKBUFX3 U29 ( .A(A[1]), .Y(SUM[1]) );
  CLKBUFX3 U30 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module MULT_1_DW01_add_3 ( A_22_, A_21_, A_20_, A_19_, A_18_, A_17_, A_16_, 
        A_15_, A_14_, A_13_, A_12_, A_11_, A_10_, A_9_, A_8_, A_7_, A_6_, A_5_, 
        A_4_, A_3_, A_2_, A_1_, A_0_, B_24_, B_23_, B_22_, B_21_, B_20_, B_19_, 
        B_18_, B_17_, B_16_, B_15_, B_14_, B_13_, B_12_, B_11_, B_10_, B_9_, 
        B_8_, B_7_, B_6_, B_5_, B_4_, SUM_26_, SUM_25_, SUM_24_, SUM_23_, 
        SUM_22_, SUM_21_, SUM_20_, SUM_19_, SUM_18_, SUM_17_, SUM_16_, SUM_15_, 
        SUM_14_, SUM_13_, SUM_12_, SUM_11_, SUM_10_, SUM_9_, SUM_8_, SUM_7_, 
        SUM_6_, SUM_5_, SUM_4_, SUM_3_, SUM_2_, SUM_1_, SUM_0_ );
  input A_22_, A_21_, A_20_, A_19_, A_18_, A_17_, A_16_, A_15_, A_14_, A_13_,
         A_12_, A_11_, A_10_, A_9_, A_8_, A_7_, A_6_, A_5_, A_4_, A_3_, A_2_,
         A_1_, A_0_, B_24_, B_23_, B_22_, B_21_, B_20_, B_19_, B_18_, B_17_,
         B_16_, B_15_, B_14_, B_13_, B_12_, B_11_, B_10_, B_9_, B_8_, B_7_,
         B_6_, B_5_, B_4_;
  output SUM_26_, SUM_25_, SUM_24_, SUM_23_, SUM_22_, SUM_21_, SUM_20_,
         SUM_19_, SUM_18_, SUM_17_, SUM_16_, SUM_15_, SUM_14_, SUM_13_,
         SUM_12_, SUM_11_, SUM_10_, SUM_9_, SUM_8_, SUM_7_, SUM_6_, SUM_5_,
         SUM_4_, SUM_3_, SUM_2_, SUM_1_, SUM_0_;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12;
  wire   [23:6] carry;

  ADDFXL U1_15 ( .A(A_15_), .B(B_15_), .CI(carry[15]), .CO(carry[16]), .S(
        SUM_15_) );
  ADDFHX2 U1_8 ( .A(A_8_), .B(B_8_), .CI(carry[8]), .CO(carry[9]), .S(SUM_8_)
         );
  ADDFHX4 U1_9 ( .A(A_9_), .B(B_9_), .CI(carry[9]), .CO(carry[10]), .S(SUM_9_)
         );
  ADDFHX2 U1_20 ( .A(A_20_), .B(B_20_), .CI(carry[20]), .CO(carry[21]), .S(
        SUM_20_) );
  ADDFHX4 U1_21 ( .A(A_21_), .B(B_21_), .CI(carry[21]), .CO(carry[22]), .S(
        SUM_21_) );
  ADDFHX2 U1_6 ( .A(A_6_), .B(B_6_), .CI(carry[6]), .CO(carry[7]), .S(SUM_6_)
         );
  ADDFHX1 U1_11 ( .A(A_11_), .B(B_11_), .CI(carry[11]), .CO(carry[12]), .S(
        SUM_11_) );
  ADDFXL U1_12 ( .A(A_12_), .B(B_12_), .CI(carry[12]), .CO(carry[13]), .S(
        SUM_12_) );
  ADDFX2 U1_14 ( .A(A_14_), .B(B_14_), .CI(carry[14]), .CO(carry[15]), .S(
        SUM_14_) );
  ADDFXL U1_13 ( .A(A_13_), .B(B_13_), .CI(carry[13]), .CO(carry[14]), .S(
        SUM_13_) );
  ADDFHX4 U1_10 ( .A(A_10_), .B(B_10_), .CI(carry[10]), .CO(carry[11]), .S(
        SUM_10_) );
  ADDFHX2 U1_19 ( .A(A_19_), .B(B_19_), .CI(carry[19]), .CO(carry[20]), .S(
        SUM_19_) );
  ADDFHX2 U1_18 ( .A(A_18_), .B(B_18_), .CI(carry[18]), .CO(carry[19]), .S(
        SUM_18_) );
  ADDFHX2 U1_16 ( .A(A_16_), .B(B_16_), .CI(carry[16]), .CO(carry[17]), .S(
        SUM_16_) );
  ADDFX2 U1_17 ( .A(A_17_), .B(B_17_), .CI(carry[17]), .CO(carry[18]), .S(
        SUM_17_) );
  AND2X2 U1 ( .A(B_23_), .B(carry[23]), .Y(n12) );
  NAND3X1 U2 ( .A(n3), .B(n4), .C(n5), .Y(carry[23]) );
  NAND2X1 U3 ( .A(A_22_), .B(B_22_), .Y(n5) );
  NAND2X1 U4 ( .A(B_22_), .B(carry[22]), .Y(n3) );
  NAND2X1 U5 ( .A(A_22_), .B(carry[22]), .Y(n4) );
  XOR2X1 U6 ( .A(carry[22]), .B(n2), .Y(SUM_22_) );
  NAND2X1 U7 ( .A(n1), .B(B_5_), .Y(n7) );
  NAND2X1 U8 ( .A(n1), .B(A_5_), .Y(n8) );
  CLKAND2X12 U9 ( .A(B_4_), .B(A_4_), .Y(n1) );
  XOR2XL U10 ( .A(B_22_), .B(A_22_), .Y(n2) );
  XOR2X4 U11 ( .A(B_23_), .B(carry[23]), .Y(SUM_23_) );
  NAND2XL U12 ( .A(A_7_), .B(carry[7]), .Y(n10) );
  NAND2X1 U13 ( .A(B_7_), .B(carry[7]), .Y(n9) );
  NAND2XL U14 ( .A(A_7_), .B(B_7_), .Y(n11) );
  NAND3X1 U15 ( .A(n9), .B(n10), .C(n11), .Y(carry[8]) );
  XOR3XL U16 ( .A(B_5_), .B(n1), .C(A_5_), .Y(SUM_5_) );
  NAND2XL U17 ( .A(A_5_), .B(B_5_), .Y(n6) );
  NAND3X1 U18 ( .A(n6), .B(n7), .C(n8), .Y(carry[6]) );
  XOR3XL U19 ( .A(carry[7]), .B(A_7_), .C(B_7_), .Y(SUM_7_) );
  AND2XL U20 ( .A(B_24_), .B(n12), .Y(SUM_26_) );
  CLKBUFX2 U21 ( .A(A_3_), .Y(SUM_3_) );
  XOR2XL U22 ( .A(B_4_), .B(A_4_), .Y(SUM_4_) );
  CLKBUFX2 U23 ( .A(A_2_), .Y(SUM_2_) );
  CLKBUFX2 U24 ( .A(A_0_), .Y(SUM_0_) );
  CLKBUFX2 U25 ( .A(A_1_), .Y(SUM_1_) );
  XOR2X1 U26 ( .A(B_24_), .B(n12), .Y(SUM_24_) );
  CLKINVX1 U27 ( .A(SUM_26_), .Y(SUM_25_) );
endmodule


module MULT_1_DW01_add_2 ( A_32_, A_31_, A_30_, A_29_, A_28_, A_27_, A_26_, 
        A_25_, A_24_, A_23_, A_22_, A_21_, A_20_, A_19_, A_18_, A_17_, A_16_, 
        A_15_, A_14_, A_13_, A_12_, B_35_, B_34_, B_33_, B_32_, B_31_, B_30_, 
        B_29_, B_28_, B_27_, B_26_, B_25_, B_24_, B_23_, B_22_, B_21_, B_20_, 
        B_19_, B_18_, B_17_, B_16_, SUM_36_, SUM_35_, SUM_34_, SUM_33_, 
        SUM_32_, SUM_31_, SUM_30_, SUM_29_, SUM_28_, SUM_27_, SUM_26_, SUM_25_, 
        SUM_24_, SUM_23_, SUM_22_, SUM_21_, SUM_20_, SUM_19_, SUM_18_, SUM_17_, 
        SUM_16_, SUM_15_, SUM_14_, SUM_13_, SUM_12_ );
  input A_32_, A_31_, A_30_, A_29_, A_28_, A_27_, A_26_, A_25_, A_24_, A_23_,
         A_22_, A_21_, A_20_, A_19_, A_18_, A_17_, A_16_, A_15_, A_14_, A_13_,
         A_12_, B_35_, B_34_, B_33_, B_32_, B_31_, B_30_, B_29_, B_28_, B_27_,
         B_26_, B_25_, B_24_, B_23_, B_22_, B_21_, B_20_, B_19_, B_18_, B_17_,
         B_16_;
  output SUM_36_, SUM_35_, SUM_34_, SUM_33_, SUM_32_, SUM_31_, SUM_30_,
         SUM_29_, SUM_28_, SUM_27_, SUM_26_, SUM_25_, SUM_24_, SUM_23_,
         SUM_22_, SUM_21_, SUM_20_, SUM_19_, SUM_18_, SUM_17_, SUM_16_,
         SUM_15_, SUM_14_, SUM_13_, SUM_12_;
  wire   n1, n2, n7;
  wire   [34:18] carry;

  ADDFXL U1_31 ( .A(A_31_), .B(B_31_), .CI(carry[31]), .CO(carry[32]), .S(
        SUM_31_) );
  ADDFXL U1_28 ( .A(A_28_), .B(B_28_), .CI(carry[28]), .CO(carry[29]), .S(
        SUM_28_) );
  ADDFXL U1_27 ( .A(A_27_), .B(B_27_), .CI(carry[27]), .CO(carry[28]), .S(
        SUM_27_) );
  ADDFXL U1_24 ( .A(A_24_), .B(B_24_), .CI(carry[24]), .CO(carry[25]), .S(
        SUM_24_) );
  ADDFXL U1_20 ( .A(A_20_), .B(B_20_), .CI(carry[20]), .CO(carry[21]), .S(
        SUM_20_) );
  ADDFXL U1_18 ( .A(A_18_), .B(B_18_), .CI(carry[18]), .CO(carry[19]), .S(
        SUM_18_) );
  ADDFXL U1_29 ( .A(A_29_), .B(B_29_), .CI(carry[29]), .CO(carry[30]), .S(
        SUM_29_) );
  ADDFXL U1_17 ( .A(A_17_), .B(B_17_), .CI(n1), .CO(carry[18]), .S(SUM_17_) );
  ADDFXL U1_32 ( .A(A_32_), .B(B_32_), .CI(carry[32]), .CO(carry[33]), .S(
        SUM_32_) );
  ADDFX2 U1_21 ( .A(A_21_), .B(B_21_), .CI(carry[21]), .CO(carry[22]), .S(
        SUM_21_) );
  ADDFXL U1_30 ( .A(A_30_), .B(B_30_), .CI(carry[30]), .CO(carry[31]), .S(
        SUM_30_) );
  ADDFXL U1_26 ( .A(A_26_), .B(B_26_), .CI(carry[26]), .CO(carry[27]), .S(
        SUM_26_) );
  ADDFXL U1_22 ( .A(A_22_), .B(B_22_), .CI(carry[22]), .CO(carry[23]), .S(
        SUM_22_) );
  ADDFXL U1_19 ( .A(A_19_), .B(B_19_), .CI(carry[19]), .CO(carry[20]), .S(
        SUM_19_) );
  ADDFXL U1_25 ( .A(A_25_), .B(B_25_), .CI(carry[25]), .CO(carry[26]), .S(
        SUM_25_) );
  ADDFXL U1_23 ( .A(A_23_), .B(B_23_), .CI(carry[23]), .CO(carry[24]), .S(
        SUM_23_) );
  AND2X2 U1 ( .A(B_16_), .B(A_16_), .Y(n1) );
  CLKBUFX2 U2 ( .A(A_12_), .Y(SUM_12_) );
  CLKBUFX3 U3 ( .A(A_13_), .Y(SUM_13_) );
  CLKBUFX3 U4 ( .A(A_14_), .Y(SUM_14_) );
  CLKBUFX3 U5 ( .A(A_15_), .Y(SUM_15_) );
  XOR2X1 U6 ( .A(B_16_), .B(A_16_), .Y(SUM_16_) );
  XNOR2X1 U7 ( .A(B_33_), .B(carry[33]), .Y(SUM_33_) );
  XOR2X1 U8 ( .A(B_34_), .B(carry[34]), .Y(SUM_34_) );
  XOR2X1 U9 ( .A(B_35_), .B(n2), .Y(SUM_35_) );
  XOR2X1 U10 ( .A(B_35_), .B(n7), .Y(SUM_36_) );
  NAND2X1 U11 ( .A(B_35_), .B(n2), .Y(n7) );
  OR2X1 U12 ( .A(B_33_), .B(carry[33]), .Y(carry[34]) );
  AND2X2 U13 ( .A(B_34_), .B(carry[34]), .Y(n2) );
endmodule


module MULT_1_DW01_add_1 ( A_26_, A_25_, A_24_, A_23_, A_22_, A_21_, A_20_, 
        A_19_, A_18_, A_17_, A_16_, A_15_, A_14_, A_13_, A_12_, A_11_, A_10_, 
        A_9_, A_8_, A_7_, A_6_, A_5_, A_4_, A_3_, A_2_, A_1_, A_0_, B_28_, 
        B_27_, B_26_, B_25_, B_24_, B_23_, B_22_, B_21_, B_20_, B_19_, B_18_, 
        B_17_, B_16_, B_15_, B_14_, B_13_, B_12_, B_11_, B_10_, B_9_, B_8_, 
        SUM_30_, SUM_29_, SUM_28_, SUM_27_, SUM_26_, SUM_25_, SUM_24_, SUM_23_, 
        SUM_22_, SUM_21_, SUM_20_, SUM_19_, SUM_18_, SUM_17_, SUM_16_, SUM_15_, 
        SUM_14_, SUM_13_, SUM_12_, SUM_11_, SUM_10_, SUM_9_, SUM_8_, SUM_7_, 
        SUM_6_, SUM_5_, SUM_4_, SUM_3_, SUM_2_, SUM_1_, SUM_0_ );
  input A_26_, A_25_, A_24_, A_23_, A_22_, A_21_, A_20_, A_19_, A_18_, A_17_,
         A_16_, A_15_, A_14_, A_13_, A_12_, A_11_, A_10_, A_9_, A_8_, A_7_,
         A_6_, A_5_, A_4_, A_3_, A_2_, A_1_, A_0_, B_28_, B_27_, B_26_, B_25_,
         B_24_, B_23_, B_22_, B_21_, B_20_, B_19_, B_18_, B_17_, B_16_, B_15_,
         B_14_, B_13_, B_12_, B_11_, B_10_, B_9_, B_8_;
  output SUM_30_, SUM_29_, SUM_28_, SUM_27_, SUM_26_, SUM_25_, SUM_24_,
         SUM_23_, SUM_22_, SUM_21_, SUM_20_, SUM_19_, SUM_18_, SUM_17_,
         SUM_16_, SUM_15_, SUM_14_, SUM_13_, SUM_12_, SUM_11_, SUM_10_, SUM_9_,
         SUM_8_, SUM_7_, SUM_6_, SUM_5_, SUM_4_, SUM_3_, SUM_2_, SUM_1_,
         SUM_0_;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n17
;
  wire   [27:10] carry;

  ADDFX2 U1_9 ( .A(A_9_), .B(B_9_), .CI(n1), .CO(carry[10]), .S(SUM_9_) );
  ADDFHX2 U1_23 ( .A(A_23_), .B(B_23_), .CI(carry[23]), .CO(carry[24]), .S(
        SUM_23_) );
  ADDFHX4 U1_19 ( .A(A_19_), .B(B_19_), .CI(carry[19]), .CO(carry[20]), .S(
        SUM_19_) );
  ADDFHX4 U1_24 ( .A(A_24_), .B(B_24_), .CI(carry[24]), .CO(carry[25]), .S(
        SUM_24_) );
  ADDFHX4 U1_25 ( .A(A_25_), .B(B_25_), .CI(carry[25]), .CO(carry[26]), .S(
        SUM_25_) );
  ADDFHX2 U1_18 ( .A(A_18_), .B(B_18_), .CI(carry[18]), .CO(carry[19]), .S(
        SUM_18_) );
  ADDFX2 U1_21 ( .A(A_21_), .B(B_21_), .CI(carry[21]), .CO(carry[22]), .S(
        SUM_21_) );
  ADDFXL U1_26 ( .A(A_26_), .B(B_26_), .CI(carry[26]), .CO(carry[27]), .S(
        SUM_26_) );
  ADDFXL U1_14 ( .A(A_14_), .B(B_14_), .CI(carry[14]), .CO(carry[15]), .S(
        SUM_14_) );
  ADDFHX2 U1_13 ( .A(A_13_), .B(B_13_), .CI(carry[13]), .CO(carry[14]), .S(
        SUM_13_) );
  ADDFHX4 U1_22 ( .A(A_22_), .B(B_22_), .CI(carry[22]), .CO(carry[23]), .S(
        SUM_22_) );
  ADDFHX2 U1_17 ( .A(A_17_), .B(B_17_), .CI(carry[17]), .CO(carry[18]), .S(
        SUM_17_) );
  ADDFHX2 U1_15 ( .A(A_15_), .B(B_15_), .CI(carry[15]), .CO(carry[16]), .S(
        SUM_15_) );
  ADDFX2 U1_16 ( .A(A_16_), .B(B_16_), .CI(carry[16]), .CO(carry[17]), .S(
        SUM_16_) );
  CLKAND2X8 U1 ( .A(B_8_), .B(A_8_), .Y(n1) );
  XOR2X2 U2 ( .A(carry[20]), .B(n3), .Y(SUM_20_) );
  XOR2X4 U3 ( .A(A_20_), .B(B_20_), .Y(n3) );
  NAND2X4 U4 ( .A(carry[11]), .B(A_11_), .Y(n7) );
  NAND2X6 U5 ( .A(B_11_), .B(carry[11]), .Y(n9) );
  NAND2X6 U6 ( .A(n2), .B(n15), .Y(carry[11]) );
  NAND2X1 U7 ( .A(B_20_), .B(carry[20]), .Y(n5) );
  NAND3X1 U8 ( .A(n4), .B(n5), .C(n6), .Y(carry[21]) );
  NAND2X1 U9 ( .A(B_20_), .B(A_20_), .Y(n6) );
  NAND2X1 U10 ( .A(A_20_), .B(carry[20]), .Y(n4) );
  AND2X2 U11 ( .A(n14), .B(n13), .Y(n2) );
  NAND2XL U12 ( .A(B_12_), .B(carry[12]), .Y(n12) );
  NAND2X1 U13 ( .A(A_10_), .B(carry[10]), .Y(n13) );
  NAND2X1 U14 ( .A(B_10_), .B(carry[10]), .Y(n14) );
  NAND2XL U15 ( .A(B_10_), .B(A_10_), .Y(n15) );
  NAND3X2 U16 ( .A(n7), .B(n8), .C(n9), .Y(carry[12]) );
  XOR3X1 U17 ( .A(A_12_), .B(B_12_), .C(carry[12]), .Y(SUM_12_) );
  XOR3XL U18 ( .A(A_11_), .B(B_11_), .C(carry[11]), .Y(SUM_11_) );
  NAND2X1 U19 ( .A(B_11_), .B(A_11_), .Y(n8) );
  NAND3X1 U20 ( .A(n10), .B(n11), .C(n12), .Y(carry[13]) );
  NAND2XL U21 ( .A(carry[12]), .B(A_12_), .Y(n10) );
  NAND2XL U22 ( .A(B_12_), .B(A_12_), .Y(n11) );
  XOR3XL U23 ( .A(carry[10]), .B(B_10_), .C(A_10_), .Y(SUM_10_) );
  AND2X2 U24 ( .A(B_28_), .B(n17), .Y(SUM_30_) );
  AND2X2 U25 ( .A(B_27_), .B(carry[27]), .Y(n17) );
  XOR2XL U26 ( .A(B_8_), .B(A_8_), .Y(SUM_8_) );
  CLKBUFX3 U27 ( .A(A_7_), .Y(SUM_7_) );
  CLKBUFX3 U28 ( .A(A_5_), .Y(SUM_5_) );
  CLKBUFX3 U29 ( .A(A_6_), .Y(SUM_6_) );
  CLKBUFX3 U30 ( .A(A_4_), .Y(SUM_4_) );
  XOR2X1 U31 ( .A(B_27_), .B(carry[27]), .Y(SUM_27_) );
  XOR2X1 U32 ( .A(B_28_), .B(n17), .Y(SUM_28_) );
  CLKBUFX3 U33 ( .A(A_0_), .Y(SUM_0_) );
  CLKBUFX3 U34 ( .A(A_3_), .Y(SUM_3_) );
  CLKBUFX3 U35 ( .A(A_2_), .Y(SUM_2_) );
  CLKBUFX3 U36 ( .A(A_1_), .Y(SUM_1_) );
  CLKINVX1 U37 ( .A(SUM_30_), .Y(SUM_29_) );
endmodule


module MULT_1_DW01_add_0 ( SUM, A_36_, A_35_, A_34_, A_33_, A_32_, A_31_, 
        A_30_, A_29_, A_28_, A_27_, A_26_, A_25_, A_24_, A_23_, A_22_, A_21_, 
        A_20_, A_19_, A_18_, A_17_, A_16_, A_15_, A_14_, A_13_, A_12_, B_30_, 
        B_29_, B_28_, B_27_, B_26_, B_25_, B_24_, B_23_, B_22_, B_21_, B_20_, 
        B_19_, B_18_, B_17_, B_16_, B_15_, B_14_, B_13_, B_12_, B_11_, B_10_, 
        B_9_, B_8_, B_7_, B_6_, B_5_, B_4_, B_3_, B_2_, B_1_, B_0_ );
  output [36:0] SUM;
  input A_36_, A_35_, A_34_, A_33_, A_32_, A_31_, A_30_, A_29_, A_28_, A_27_,
         A_26_, A_25_, A_24_, A_23_, A_22_, A_21_, A_20_, A_19_, A_18_, A_17_,
         A_16_, A_15_, A_14_, A_13_, A_12_, B_30_, B_29_, B_28_, B_27_, B_26_,
         B_25_, B_24_, B_23_, B_22_, B_21_, B_20_, B_19_, B_18_, B_17_, B_16_,
         B_15_, B_14_, B_13_, B_12_, B_11_, B_10_, B_9_, B_8_, B_7_, B_6_,
         B_5_, B_4_, B_3_, B_2_, B_1_, B_0_;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35;
  wire   [31:14] carry;

  ADDFHX4 U1_28 ( .A(A_28_), .B(B_28_), .CI(carry[28]), .CO(carry[29]), .S(
        SUM[28]) );
  ADDFHX4 U1_29 ( .A(A_29_), .B(B_29_), .CI(carry[29]), .CO(carry[30]), .S(
        SUM[29]) );
  CMPR32X2 U1_27 ( .A(A_27_), .B(B_27_), .C(carry[27]), .CO(carry[28]), .S(
        SUM[27]) );
  ADDFHX2 U1_16 ( .A(A_16_), .B(B_16_), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFHX2 U1_18 ( .A(A_18_), .B(B_18_), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFX2 U1_20 ( .A(A_20_), .B(B_20_), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFHX4 U1_24 ( .A(A_24_), .B(B_24_), .CI(carry[24]), .CO(carry[25]), .S(
        SUM[24]) );
  ADDFHX2 U1_17 ( .A(A_17_), .B(B_17_), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFX2 U1_13 ( .A(A_13_), .B(B_13_), .CI(n2), .CO(carry[14]), .S(SUM[13]) );
  ADDFHX2 U1_14 ( .A(A_14_), .B(B_14_), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  NAND2X6 U1 ( .A(n1), .B(n20), .Y(carry[26]) );
  NAND2X1 U2 ( .A(B_25_), .B(carry[25]), .Y(n20) );
  AND2X4 U3 ( .A(n22), .B(n21), .Y(n1) );
  NAND2X1 U4 ( .A(B_19_), .B(carry[19]), .Y(n8) );
  NAND2X1 U5 ( .A(B_15_), .B(carry[15]), .Y(n4) );
  NAND3X6 U6 ( .A(n11), .B(n12), .C(n13), .Y(carry[22]) );
  AND2X2 U7 ( .A(A_34_), .B(n31), .Y(n32) );
  AND2X2 U8 ( .A(A_33_), .B(n34), .Y(n31) );
  NAND2X1 U9 ( .A(n3), .B(n28), .Y(carry[31]) );
  AND2X2 U10 ( .A(A_31_), .B(carry[31]), .Y(n33) );
  NAND3X1 U11 ( .A(n8), .B(n9), .C(n10), .Y(carry[20]) );
  NAND2X1 U12 ( .A(A_19_), .B(B_19_), .Y(n10) );
  AND2X2 U13 ( .A(B_12_), .B(A_12_), .Y(n2) );
  AND2X2 U14 ( .A(n30), .B(n29), .Y(n3) );
  XOR3XL U15 ( .A(carry[15]), .B(A_15_), .C(B_15_), .Y(SUM[15]) );
  NAND2X2 U16 ( .A(A_15_), .B(carry[15]), .Y(n5) );
  NAND2X1 U17 ( .A(A_15_), .B(B_15_), .Y(n6) );
  NAND3X2 U18 ( .A(n4), .B(n5), .C(n6), .Y(carry[16]) );
  XOR2XL U19 ( .A(B_19_), .B(A_19_), .Y(n7) );
  XOR2XL U20 ( .A(carry[19]), .B(n7), .Y(SUM[19]) );
  NAND2X2 U21 ( .A(A_19_), .B(carry[19]), .Y(n9) );
  NAND2X1 U22 ( .A(A_25_), .B(B_25_), .Y(n22) );
  NAND3X4 U23 ( .A(n14), .B(n15), .C(n16), .Y(carry[23]) );
  NAND2X2 U24 ( .A(A_30_), .B(carry[30]), .Y(n29) );
  NAND2X1 U25 ( .A(B_30_), .B(carry[30]), .Y(n28) );
  ADDFXL U26 ( .A(A_29_), .B(B_29_), .CI(carry[29]), .CO(n23) );
  XOR3XL U27 ( .A(carry[21]), .B(A_21_), .C(B_21_), .Y(SUM[21]) );
  NAND2X4 U28 ( .A(B_21_), .B(carry[21]), .Y(n11) );
  NAND2X4 U29 ( .A(A_21_), .B(carry[21]), .Y(n12) );
  NAND2X4 U30 ( .A(A_21_), .B(B_21_), .Y(n13) );
  NAND2X1 U31 ( .A(A_23_), .B(carry[23]), .Y(n18) );
  NAND2X1 U32 ( .A(B_23_), .B(carry[23]), .Y(n17) );
  NAND2X1 U33 ( .A(B_22_), .B(carry[22]), .Y(n14) );
  NAND2X1 U34 ( .A(A_22_), .B(carry[22]), .Y(n15) );
  NAND2X1 U35 ( .A(A_22_), .B(B_22_), .Y(n16) );
  XOR3XL U36 ( .A(carry[22]), .B(A_22_), .C(B_22_), .Y(SUM[22]) );
  NAND2XL U37 ( .A(A_30_), .B(B_30_), .Y(n30) );
  NAND3X1 U38 ( .A(n17), .B(n18), .C(n19), .Y(carry[24]) );
  XOR3XL U39 ( .A(carry[23]), .B(A_23_), .C(B_23_), .Y(SUM[23]) );
  NAND2X1 U40 ( .A(A_23_), .B(B_23_), .Y(n19) );
  NAND2X1 U41 ( .A(A_26_), .B(carry[26]), .Y(n25) );
  NAND2X1 U42 ( .A(A_25_), .B(carry[25]), .Y(n21) );
  NAND2X1 U43 ( .A(B_26_), .B(carry[26]), .Y(n24) );
  XOR2XL U44 ( .A(A_31_), .B(carry[31]), .Y(SUM[31]) );
  XOR3XL U45 ( .A(carry[25]), .B(A_25_), .C(B_25_), .Y(SUM[25]) );
  XOR2X1 U46 ( .A(n23), .B(n27), .Y(SUM[30]) );
  NAND2X1 U47 ( .A(A_26_), .B(B_26_), .Y(n26) );
  NAND3X1 U48 ( .A(n24), .B(n25), .C(n26), .Y(carry[27]) );
  XOR3XL U49 ( .A(carry[26]), .B(A_26_), .C(B_26_), .Y(SUM[26]) );
  XOR2XL U50 ( .A(B_30_), .B(A_30_), .Y(n27) );
  XOR2XL U51 ( .A(A_35_), .B(n32), .Y(SUM[35]) );
  XOR2XL U52 ( .A(A_33_), .B(n34), .Y(SUM[33]) );
  XOR2XL U53 ( .A(A_32_), .B(n33), .Y(SUM[32]) );
  XOR2XL U54 ( .A(B_12_), .B(A_12_), .Y(SUM[12]) );
  CLKBUFX3 U55 ( .A(B_7_), .Y(SUM[7]) );
  CLKBUFX3 U56 ( .A(B_9_), .Y(SUM[9]) );
  CLKBUFX3 U57 ( .A(B_10_), .Y(SUM[10]) );
  CLKBUFX3 U58 ( .A(B_11_), .Y(SUM[11]) );
  XOR2X1 U59 ( .A(A_34_), .B(n31), .Y(SUM[34]) );
  XOR2X1 U60 ( .A(A_36_), .B(n35), .Y(SUM[36]) );
  CLKBUFX3 U61 ( .A(B_5_), .Y(SUM[5]) );
  CLKBUFX3 U62 ( .A(B_6_), .Y(SUM[6]) );
  AND2X2 U63 ( .A(A_32_), .B(n33), .Y(n34) );
  AND2X2 U64 ( .A(A_35_), .B(n32), .Y(n35) );
  CLKBUFX3 U65 ( .A(B_0_), .Y(SUM[0]) );
  CLKBUFX3 U66 ( .A(B_1_), .Y(SUM[1]) );
  CLKBUFX3 U67 ( .A(B_4_), .Y(SUM[4]) );
  CLKBUFX3 U68 ( .A(B_8_), .Y(SUM[8]) );
  CLKBUFX3 U69 ( .A(B_3_), .Y(SUM[3]) );
  CLKBUFX3 U70 ( .A(B_2_), .Y(SUM[2]) );
endmodule


module MULT_1 ( clk, reset, A, B, enMULT, Y, doneMULT );
  input [19:0] A;
  input [19:0] B;
  output [35:0] Y;
  input clk, reset, enMULT;
  output doneMULT;
  wire   N26, N27, N28, N29, N30, N31, N32, N33, N34, N35, N36, N37, N38, N39,
         N40, N41, N42, N43, N44, N64, N65, N66, N67, N68, N69, N70, N71, N72,
         N73, N74, N75, N76, N77, N78, N79, N80, N81, N82, count, signCorrect,
         N120, N121, N122, N123, N124, N125, N126, N127, N128, N129, N130,
         N131, N132, N133, N134, N135, N136, N137, N138, N139, N140, N141,
         N142, N143, N144, N145, N146, N147, N148, N149, N150, N151, N152,
         N153, N154, N190, N191, N192, N193, N194, N290, N291, N292, N293,
         N294, N295, N296, N297, N298, N299, N300, N301, N302, N303, N304,
         N305, N306, N307, N308, N309, N310, N311, N312, N313, N314, N315,
         N316, N317, N318, N319, N320, N321, N322, N323, N324, N325, N326,
         N475, N476, N477, N478, N479, N480, N481, N482, N483, N484, N485,
         N486, N487, N488, N489, N490, N491, N492, N493, N494, N495, N496,
         N497, N498, N499, N500, N501, N502, N503, N504, N505, N506, N507,
         N508, N509, N510, N511, N519, N520, N521, N522, N523, N524, N525,
         N526, N527, N528, N529, N530, N531, N532, N533, N534, N535, N536,
         N537, N538, N539, N540, N541, N542, N543, N544, N545, N546, N547,
         N548, N549, N550, N551, N552, N553, N554, N555, N556, n260, n340,
         n350, n49, n50, n53, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n107, n108, n109, n110, n111, N474, N473, N472,
         N471, N470, N469, N468, N467, N466, N465, N464, N463, N462, N461,
         N460, N459, N458, N457, N456, N455, N454, N453, N452, N437, N436,
         N435, N434, N433, N432, N431, N430, N429, N428, N427, N426, N425,
         N424, N423, N422, N421, N420, N419, N418, N417, N416, N415, N414,
         N413, N412, N411, N410, N409, N408, N407, N406, N405, N404, N403,
         N392, N391, N390, N389, N388, N387, N386, N385, N384, N383, N382,
         N381, N380, N379, N378, N377, N376, N375, N374, N373, N372, N371,
         N370, N369, N368, N367, N366, N363, N362, N361, N360, N359, N358,
         N357, N356, N355, N354, N353, N352, N351, N3500, N349, N348, N347,
         N346, N345, N344, N343, N342, N341, N3400, N339, N338, N337, N336,
         N335, N334, N333, N332, N331, N330, N329, N328, N327, n1, n2, n3, n4,
         n5, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n270, n280, n2910, n3010, n3110, n3210,
         n3310, n3610, n3710, n3810, n3910, n401, n4110, n4210, n4310, n4410,
         n45, n46, n47, n48, n51, n52, n54, n55, n56, n57, n58, n59, n60, n680,
         n690, n700, n710, n720, n730, n740, n750, n760, n770, n780, n790,
         n800, n810, n820, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n112, n113, n114, n115, n118, n119, n1200, n1210, n1220,
         n1230, n1240, n1250, n1260, n1270, n1280, n1290, n1300, n1310, n1320,
         n1330, n1340, n1350, n1360, n1370, n1380, n1390, n1400, n1410, n1420,
         n1430, n1440, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n1930, n1940, n195, n196, n197, n198,
         n199, n200, n201, n202, n203, n204, n205, n206, n207, n208, n209,
         n210, n211, n212, n213, n214, n215, n216, n217, n218, n219, n220,
         n221, n222, n223, n224, n225, n226, n227, n228, n229, n230, n231,
         n232, n233, n234, n235, n236, n237, n238, n239, n240, n241;
  wire   [18:0] Mc;
  wire   [18:0] Mp;
  wire   [19:0] PP0Next;
  wire   [19:0] PP1Next;
  wire   [19:0] PP2Next;
  wire   [19:0] PP3Next;
  wire   [19:0] PP4Next;
  wire   [36:35] Ans;
  wire   [34:0] AnsCorrect;
  wire   [19:0] PP0;
  wire   [19:0] PP1;
  wire   [19:0] PP2;
  wire   [19:4] PP3;
  wire   [19:0] PP4;
  wire   [35:19] add_2_root_add_0_root_add_172_5_carry;

  OAI2BB2X4 U124 ( .B0(n21), .B1(n238), .A0N(N44), .A1N(n22), .Y(Mc[18]) );
  OAI2BB2X4 U129 ( .B0(n20), .B1(n239), .A0N(N39), .A1N(n22), .Y(Mc[13]) );
  OAI2BB2X4 U130 ( .B0(n20), .B1(n240), .A0N(N38), .A1N(n22), .Y(Mc[12]) );
  PPG_9 ppg0 ( .Mc(Mc), .Mp({Mp[3:0], 1'b0}), .phase(n1), .PP(PP0Next) );
  PPG_8 ppg1 ( .Mc(Mc), .Mp(Mp[7:3]), .phase(n3), .PP(PP1Next) );
  PPG_7 ppg2 ( .Mc(Mc), .Mp(Mp[11:7]), .phase(n2), .PP(PP2Next) );
  PPG_6 ppg3 ( .Mc(Mc), .Mp(Mp[15:11]), .phase(n2), .PP(PP3Next) );
  PPG_5 ppg4 ( .Mc(Mc), .Mp({1'b0, Mp[18:15]}), .phase(n3), .PP(PP4Next) );
  MULT_1_DW01_inc_0 add_153 ( .A({n209, n210, n211, n212, n213, n260, n214, 
        n215, n216, n217, n218, n219, n220, n340, n350, n221, n222, n223, n224, 
        n225, n226, n227, n228, n229, n230, n231, n232, n233, n49, n50, n234, 
        n235, n53, n236, n237}), .SUM({N154, N153, N152, N151, N150, N149, 
        N148, N147, N146, N145, N144, N143, N142, N141, N140, N139, N138, N137, 
        N136, N135, N134, N133, N132, N131, N130, N129, N128, N127, N126, N125, 
        N124, N123, N122, N121, N120}) );
  MULT_1_DW01_inc_1 add_107 ( .A({n16, n15, n14, n204, n198, n197, n208, n195, 
        n1940, n202, n200, n203, n199, n207, n205, n206, n201, n196, n1930}), 
        .SUM({N82, N81, N80, N79, N78, N77, N76, N75, N74, N73, N72, N71, N70, 
        N69, N68, N67, N66, N65, N64}) );
  MULT_1_DW01_inc_2 add_106 ( .A({n238, n55, n56, n57, n58, n239, n240, n59, 
        n60, n4310, n4410, n45, n46, n47, n48, n51, n52, n54, n241}), .SUM({
        N44, N43, N42, N41, N40, N39, N38, N37, N36, N35, N34, N33, N32, N31, 
        N30, N29, N28, N27, N26}) );
  MULT_1_DW01_add_8 add_3_root_add_0_root_add_172_5 ( .B({Ans, AnsCorrect}), 
        .SUM({N363, N362, N361, N360, N359, N358, N357, N356, N355, N354, N353, 
        N352, N351, N3500, N349, N348, N347, N346, N345, N344, N343, N342, 
        N341, N3400, N339, N338, N337, N336, N335, N334, N333, N332, N331, 
        N330, N329, N328, N327}), .A_30_(N192), .A_29_(PP2[19]), .A_28_(
        PP2[18]), .A_27_(PP2[17]), .A_26_(PP2[16]), .A_25_(PP2[15]), .A_24_(
        PP2[14]), .A_23_(PP2[13]), .A_22_(PP2[12]), .A_21_(PP2[11]), .A_20_(
        PP2[10]), .A_19_(PP2[9]), .A_18_(PP2[8]), .A_17_(PP2[7]), .A_16_(
        PP2[6]), .A_15_(PP2[5]), .A_14_(PP2[4]), .A_13_(PP2[3]), .A_12_(PP2[2]), .A_11_(PP2[1]), .A_10_(PP2[0]) );
  MULT_1_DW01_add_7 add_4_root_add_0_root_add_172_5 ( .A_22_(N190), .A_21_(
        PP0[19]), .A_20_(PP0[18]), .A_19_(PP0[17]), .A_18_(PP0[16]), .A_17_(
        PP0[15]), .A_16_(PP0[14]), .A_15_(PP0[13]), .A_14_(PP0[12]), .A_13_(
        PP0[11]), .A_12_(PP0[10]), .A_11_(PP0[9]), .A_10_(PP0[8]), .A_9_(
        PP0[7]), .A_8_(PP0[6]), .A_7_(PP0[5]), .A_6_(PP0[4]), .A_5_(PP0[3]), 
        .A_4_(PP0[2]), .A_3_(PP0[1]), .A_2_(PP0[0]), .B_26_(N191), .B_25_(
        PP1[19]), .B_24_(PP1[18]), .B_23_(PP1[17]), .B_22_(PP1[16]), .B_21_(
        PP1[15]), .B_20_(PP1[14]), .B_19_(PP1[13]), .B_18_(PP1[12]), .B_17_(
        PP1[11]), .B_16_(PP1[10]), .B_15_(PP1[9]), .B_14_(PP1[8]), .B_13_(
        PP1[7]), .B_12_(PP1[6]), .B_11_(PP1[5]), .B_10_(PP1[4]), .B_9_(PP1[3]), 
        .B_8_(PP1[2]), .B_7_(PP1[1]), .B_6_(PP1[0]), .SUM_28_(N392), .SUM_27_(
        N391), .SUM_26_(N390), .SUM_25_(N389), .SUM_24_(N388), .SUM_23_(N387), 
        .SUM_22_(N386), .SUM_21_(N385), .SUM_20_(N384), .SUM_19_(N383), 
        .SUM_18_(N382), .SUM_17_(N381), .SUM_16_(N380), .SUM_15_(N379), 
        .SUM_14_(N378), .SUM_13_(N377), .SUM_12_(N376), .SUM_11_(N375), 
        .SUM_10_(N374), .SUM_9_(N373), .SUM_8_(N372), .SUM_7_(N371), .SUM_6_(
        N370), .SUM_5_(N369), .SUM_4_(N368), .SUM_3_(N367), .SUM_2_(N366) );
  MULT_1_DW01_add_5 add_1_root_add_0_root_add_172_5 ( .A_36_(N474), .A_35_(
        N473), .A_34_(N472), .A_33_(N471), .A_32_(N470), .A_31_(N469), .A_30_(
        N468), .A_29_(N467), .A_28_(N466), .A_27_(N465), .A_26_(N464), .A_25_(
        N463), .A_24_(N462), .A_23_(N461), .A_22_(N460), .A_21_(N459), .A_20_(
        N458), .A_19_(N457), .A_18_(N456), .A_17_(N455), .A_16_(N454), .A_15_(
        N453), .A_14_(N452), .B_28_(N392), .B_27_(N391), .B_26_(N390), .B_25_(
        N389), .B_24_(N388), .B_23_(N387), .B_22_(N386), .B_21_(N385), .B_20_(
        N384), .B_19_(N383), .B_18_(N382), .B_17_(N381), .B_16_(N380), .B_15_(
        N379), .B_14_(N378), .B_13_(N377), .B_12_(N376), .B_11_(N375), .B_10_(
        N374), .B_9_(N373), .B_8_(N372), .B_7_(N371), .B_6_(N370), .B_5_(N369), 
        .B_4_(N368), .B_3_(N367), .B_2_(N366), .SUM_36_(N437), .SUM_35_(N436), 
        .SUM_34_(N435), .SUM_33_(N434), .SUM_32_(N433), .SUM_31_(N432), 
        .SUM_30_(N431), .SUM_29_(N430), .SUM_28_(N429), .SUM_27_(N428), 
        .SUM_26_(N427), .SUM_25_(N426), .SUM_24_(N425), .SUM_23_(N424), 
        .SUM_22_(N423), .SUM_21_(N422), .SUM_20_(N421), .SUM_19_(N420), 
        .SUM_18_(N419), .SUM_17_(N418), .SUM_16_(N417), .SUM_15_(N416), 
        .SUM_14_(N415), .SUM_13_(N414), .SUM_12_(N413), .SUM_11_(N412), 
        .SUM_10_(N411), .SUM_9_(N410), .SUM_8_(N409), .SUM_7_(N408), .SUM_6_(
        N407), .SUM_5_(N406), .SUM_4_(N405), .SUM_3_(N404), .SUM_2_(N403) );
  MULT_1_DW01_add_4 add_0_root_add_0_root_add_172_5 ( .A({N363, N362, N361, 
        N360, N359, N358, N357, N356, N355, N354, N353, N352, N351, N3500, 
        N349, N348, N347, N346, N345, N344, N343, N342, N341, N3400, N339, 
        N338, N337, N336, N335, N334, N333, N332, N331, N330, N329, N328, N327}), .SUM({N511, N510, N509, N508, N507, N506, N505, N504, N503, N502, N501, 
        N500, N499, N498, N497, N496, N495, N494, N493, N492, N491, N490, N489, 
        N488, N487, N486, N485, N484, N483, N482, N481, N480, N479, N478, N477, 
        N476, N475}), .B_36_(N437), .B_35_(N436), .B_34_(N435), .B_33_(N434), 
        .B_32_(N433), .B_31_(N432), .B_30_(N431), .B_29_(N430), .B_28_(N429), 
        .B_27_(N428), .B_26_(N427), .B_25_(N426), .B_24_(N425), .B_23_(N424), 
        .B_22_(N423), .B_21_(N422), .B_20_(N421), .B_19_(N420), .B_18_(N419), 
        .B_17_(N418), .B_16_(N417), .B_15_(N416), .B_14_(N415), .B_13_(N414), 
        .B_12_(N413), .B_11_(N412), .B_10_(N411), .B_9_(N410), .B_8_(N409), 
        .B_7_(N408), .B_6_(N407), .B_5_(N406), .B_4_(N405), .B_3_(N404), 
        .B_2_(N403) );
  MULT_1_DW01_add_3 add_3_root_add_0_root_add_165_4 ( .A_22_(N190), .A_21_(
        PP0[19]), .A_20_(PP0[19]), .A_19_(PP0[19]), .A_18_(PP0[18]), .A_17_(
        PP0[17]), .A_16_(PP0[16]), .A_15_(PP0[15]), .A_14_(PP0[14]), .A_13_(
        PP0[13]), .A_12_(PP0[12]), .A_11_(PP0[11]), .A_10_(PP0[10]), .A_9_(
        PP0[9]), .A_8_(PP0[8]), .A_7_(PP0[7]), .A_6_(PP0[6]), .A_5_(PP0[5]), 
        .A_4_(PP0[4]), .A_3_(PP0[3]), .A_2_(PP0[2]), .A_1_(PP0[1]), .A_0_(
        PP0[0]), .B_24_(N191), .B_23_(PP1[19]), .B_22_(PP1[18]), .B_21_(
        PP1[17]), .B_20_(PP1[16]), .B_19_(PP1[15]), .B_18_(PP1[14]), .B_17_(
        PP1[13]), .B_16_(PP1[12]), .B_15_(PP1[11]), .B_14_(PP1[10]), .B_13_(
        PP1[9]), .B_12_(PP1[8]), .B_11_(PP1[7]), .B_10_(PP1[6]), .B_9_(PP1[5]), 
        .B_8_(PP1[4]), .B_7_(PP1[3]), .B_6_(PP1[2]), .B_5_(PP1[1]), .B_4_(
        PP1[0]), .SUM_26_(n1440), .SUM_25_(n1430), .SUM_24_(n1420), .SUM_23_(
        n1410), .SUM_22_(n1400), .SUM_21_(n1390), .SUM_20_(n1380), .SUM_19_(
        n1370), .SUM_18_(n1360), .SUM_17_(n1350), .SUM_16_(n1340), .SUM_15_(
        n1330), .SUM_14_(n1320), .SUM_13_(n1310), .SUM_12_(n1300), .SUM_11_(
        n1290), .SUM_10_(n1280), .SUM_9_(n1270), .SUM_8_(n1260), .SUM_7_(n1250), .SUM_6_(n1240), .SUM_5_(n1230), .SUM_4_(n1220), .SUM_3_(n1210), .SUM_2_(
        n1200), .SUM_1_(n119), .SUM_0_(n118) );
  MULT_1_DW01_add_2 add_1_root_add_0_root_add_165_4 ( .A_32_(N193), .A_31_(
        PP3[19]), .A_30_(PP3[18]), .A_29_(PP3[17]), .A_28_(PP3[16]), .A_27_(
        PP3[15]), .A_26_(PP3[14]), .A_25_(PP3[13]), .A_24_(PP3[12]), .A_23_(
        PP3[11]), .A_22_(PP3[10]), .A_21_(PP3[9]), .A_20_(PP3[8]), .A_19_(
        PP3[7]), .A_18_(PP3[6]), .A_17_(PP3[5]), .A_16_(PP3[4]), .A_15_(N455), 
        .A_14_(N454), .A_13_(N453), .A_12_(N452), .B_35_(PP4[19]), .B_34_(
        PP4[18]), .B_33_(PP4[17]), .B_32_(PP4[16]), .B_31_(PP4[15]), .B_30_(
        PP4[14]), .B_29_(PP4[13]), .B_28_(PP4[12]), .B_27_(PP4[11]), .B_26_(
        PP4[10]), .B_25_(PP4[9]), .B_24_(PP4[8]), .B_23_(PP4[7]), .B_22_(
        PP4[6]), .B_21_(PP4[5]), .B_20_(PP4[4]), .B_19_(PP4[3]), .B_18_(PP4[2]), .B_17_(PP4[1]), .B_16_(PP4[0]), .SUM_36_(n182), .SUM_35_(n181), .SUM_34_(
        n180), .SUM_33_(n179), .SUM_32_(n178), .SUM_31_(n177), .SUM_30_(n176), 
        .SUM_29_(n175), .SUM_28_(n174), .SUM_27_(n173), .SUM_26_(n172), 
        .SUM_25_(n171), .SUM_24_(n170), .SUM_23_(n169), .SUM_22_(n168), 
        .SUM_21_(n167), .SUM_20_(n166), .SUM_19_(n165), .SUM_18_(n164), 
        .SUM_17_(n163), .SUM_16_(n162), .SUM_15_(n161), .SUM_14_(n160), 
        .SUM_13_(n159), .SUM_12_(n158) );
  MULT_1_DW01_add_1 add_2_root_add_0_root_add_165_4 ( .A_26_(n1440), .A_25_(
        n1430), .A_24_(n1420), .A_23_(n1410), .A_22_(n1400), .A_21_(n1390), 
        .A_20_(n1380), .A_19_(n1370), .A_18_(n1360), .A_17_(n1350), .A_16_(
        n1340), .A_15_(n1330), .A_14_(n1320), .A_13_(n1310), .A_12_(n1300), 
        .A_11_(n1290), .A_10_(n1280), .A_9_(n1270), .A_8_(n1260), .A_7_(n1250), 
        .A_6_(n1240), .A_5_(n1230), .A_4_(n1220), .A_3_(n1210), .A_2_(n1200), 
        .A_1_(n119), .A_0_(n118), .B_28_(N192), .B_27_(PP2[19]), .B_26_(
        PP2[18]), .B_25_(PP2[17]), .B_24_(PP2[16]), .B_23_(PP2[15]), .B_22_(
        PP2[14]), .B_21_(PP2[13]), .B_20_(PP2[12]), .B_19_(PP2[11]), .B_18_(
        PP2[10]), .B_17_(PP2[9]), .B_16_(PP2[8]), .B_15_(PP2[7]), .B_14_(
        PP2[6]), .B_13_(PP2[5]), .B_12_(PP2[4]), .B_11_(PP2[3]), .B_10_(PP2[2]), .B_9_(PP2[1]), .B_8_(PP2[0]), .SUM_30_(n680), .SUM_29_(n690), .SUM_28_(n700), 
        .SUM_27_(n710), .SUM_26_(n720), .SUM_25_(n730), .SUM_24_(n740), 
        .SUM_23_(n750), .SUM_22_(n760), .SUM_21_(n770), .SUM_20_(n780), 
        .SUM_19_(n790), .SUM_18_(n800), .SUM_17_(n810), .SUM_16_(n820), 
        .SUM_15_(n83), .SUM_14_(n84), .SUM_13_(n85), .SUM_12_(n86), .SUM_11_(
        n87), .SUM_10_(n88), .SUM_9_(n89), .SUM_8_(n90), .SUM_7_(n91), 
        .SUM_6_(n92), .SUM_5_(n93), .SUM_4_(n94), .SUM_3_(n112), .SUM_2_(n113), 
        .SUM_1_(n114), .SUM_0_(n115) );
  MULT_1_DW01_add_0 add_0_root_add_0_root_add_165_4 ( .SUM({N326, N325, N324, 
        N323, N322, N321, N320, N319, N318, N317, N316, N315, N314, N313, N312, 
        N311, N310, N309, N308, N307, N306, N305, N304, N303, N302, N301, N300, 
        N299, N298, N297, N296, N295, N294, N293, N292, N291, N290}), .A_36_(
        n182), .A_35_(n181), .A_34_(n180), .A_33_(n179), .A_32_(n178), .A_31_(
        n177), .A_30_(n176), .A_29_(n175), .A_28_(n174), .A_27_(n173), .A_26_(
        n172), .A_25_(n171), .A_24_(n170), .A_23_(n169), .A_22_(n168), .A_21_(
        n167), .A_20_(n166), .A_19_(n165), .A_18_(n164), .A_17_(n163), .A_16_(
        n162), .A_15_(n161), .A_14_(n160), .A_13_(n159), .A_12_(n158), .B_30_(
        n680), .B_29_(n690), .B_28_(n700), .B_27_(n710), .B_26_(n720), .B_25_(
        n730), .B_24_(n740), .B_23_(n750), .B_22_(n760), .B_21_(n770), .B_20_(
        n780), .B_19_(n790), .B_18_(n800), .B_17_(n810), .B_16_(n820), .B_15_(
        n83), .B_14_(n84), .B_13_(n85), .B_12_(n86), .B_11_(n87), .B_10_(n88), 
        .B_9_(n89), .B_8_(n90), .B_7_(n91), .B_6_(n92), .B_5_(n93), .B_4_(n94), 
        .B_3_(n112), .B_2_(n113), .B_1_(n114), .B_0_(n115) );
  DFFTRX1 PP4_reg_19_ ( .D(PP4Next[19]), .RN(n280), .CK(clk), .Q(PP4[19]), 
        .QN(N194) );
  DFFTRX1 PP4_reg_18_ ( .D(PP4Next[18]), .RN(n280), .CK(clk), .Q(PP4[18]), 
        .QN(n4) );
  DFFTRX1 PP3_reg_15_ ( .D(PP3Next[15]), .RN(n2910), .CK(clk), .Q(PP3[15]) );
  DFFTRX1 PP3_reg_16_ ( .D(PP3Next[16]), .RN(n3010), .CK(clk), .Q(PP3[16]) );
  DFFTRX1 PP3_reg_17_ ( .D(PP3Next[17]), .RN(n3010), .CK(clk), .Q(PP3[17]) );
  DFFTRX1 PP3_reg_18_ ( .D(PP3Next[18]), .RN(n3010), .CK(clk), .Q(PP3[18]) );
  DFFTRX1 PP3_reg_19_ ( .D(PP3Next[19]), .RN(n3010), .CK(clk), .Q(PP3[19]), 
        .QN(N193) );
  DFFTRX1 PP2_reg_19_ ( .D(PP2Next[19]), .RN(n3310), .CK(clk), .Q(PP2[19]), 
        .QN(N192) );
  DFFTRX1 PP2_reg_18_ ( .D(PP2Next[18]), .RN(n3310), .CK(clk), .Q(PP2[18]) );
  DFFTRX1 PP4_reg_17_ ( .D(PP4Next[17]), .RN(n280), .CK(clk), .Q(PP4[17]) );
  DFFTRX1 PP4_reg_11_ ( .D(PP4Next[11]), .RN(n270), .CK(clk), .Q(PP4[11]) );
  DFFTRX1 PP4_reg_12_ ( .D(PP4Next[12]), .RN(n280), .CK(clk), .Q(PP4[12]) );
  DFFTRX1 PP4_reg_13_ ( .D(PP4Next[13]), .RN(n280), .CK(clk), .Q(PP4[13]) );
  DFFTRX1 PP4_reg_14_ ( .D(PP4Next[14]), .RN(n280), .CK(clk), .Q(PP4[14]) );
  DFFTRX1 PP4_reg_15_ ( .D(PP4Next[15]), .RN(n280), .CK(clk), .Q(PP4[15]) );
  DFFTRX1 PP4_reg_16_ ( .D(PP4Next[16]), .RN(n280), .CK(clk), .Q(PP4[16]) );
  DFFX1 Ans_reg_21_ ( .D(N540), .CK(clk), .Q(AnsCorrect[21]), .QN(n340) );
  DFFX1 Ans_reg_20_ ( .D(N539), .CK(clk), .Q(AnsCorrect[20]), .QN(n350) );
  DFFTRX1 PP3_reg_8_ ( .D(PP3Next[8]), .RN(n2910), .CK(clk), .Q(PP3[8]) );
  DFFTRX1 PP3_reg_9_ ( .D(PP3Next[9]), .RN(n2910), .CK(clk), .Q(PP3[9]) );
  DFFTRX1 PP3_reg_10_ ( .D(PP3Next[10]), .RN(n2910), .CK(clk), .Q(PP3[10]) );
  DFFTRX1 PP3_reg_11_ ( .D(PP3Next[11]), .RN(n2910), .CK(clk), .Q(PP3[11]) );
  DFFTRX1 PP3_reg_12_ ( .D(PP3Next[12]), .RN(n2910), .CK(clk), .Q(PP3[12]) );
  DFFTRX1 PP3_reg_13_ ( .D(PP3Next[13]), .RN(n2910), .CK(clk), .Q(PP3[13]) );
  DFFTRX1 PP3_reg_14_ ( .D(PP3Next[14]), .RN(n2910), .CK(clk), .Q(PP3[14]) );
  DFFTRX1 PP2_reg_17_ ( .D(PP2Next[17]), .RN(n3610), .CK(clk), .Q(PP2[17]) );
  DFFTRX1 PP2_reg_16_ ( .D(PP2Next[16]), .RN(n3610), .CK(clk), .Q(PP2[16]) );
  DFFTRX1 PP2_reg_15_ ( .D(PP2Next[15]), .RN(n3610), .CK(clk), .Q(PP2[15]) );
  DFFTRX1 PP2_reg_14_ ( .D(PP2Next[14]), .RN(n3610), .CK(clk), .Q(PP2[14]) );
  DFFTRX1 PP2_reg_13_ ( .D(PP2Next[13]), .RN(n3610), .CK(clk), .Q(PP2[13]) );
  DFFTRX1 PP2_reg_11_ ( .D(PP2Next[11]), .RN(n3310), .CK(clk), .Q(PP2[11]) );
  DFFTRX1 PP2_reg_10_ ( .D(PP2Next[10]), .RN(n3610), .CK(clk), .Q(PP2[10]) );
  DFFTRX1 PP1_reg_19_ ( .D(PP1Next[19]), .RN(n3210), .CK(clk), .Q(PP1[19]), 
        .QN(N191) );
  DFFTRX1 PP1_reg_17_ ( .D(PP1Next[17]), .RN(n3210), .CK(clk), .Q(PP1[17]) );
  DFFTRX1 PP4_reg_3_ ( .D(PP4Next[3]), .RN(n270), .CK(clk), .Q(PP4[3]) );
  DFFTRX1 PP4_reg_4_ ( .D(PP4Next[4]), .RN(n270), .CK(clk), .Q(PP4[4]) );
  DFFTRX1 PP4_reg_5_ ( .D(PP4Next[5]), .RN(n270), .CK(clk), .Q(PP4[5]) );
  DFFTRX1 PP4_reg_6_ ( .D(PP4Next[6]), .RN(n270), .CK(clk), .Q(PP4[6]) );
  DFFTRX1 PP4_reg_7_ ( .D(PP4Next[7]), .RN(n270), .CK(clk), .Q(PP4[7]) );
  DFFTRX1 PP4_reg_8_ ( .D(PP4Next[8]), .RN(n270), .CK(clk), .Q(PP4[8]) );
  DFFTRX1 PP4_reg_9_ ( .D(PP4Next[9]), .RN(n270), .CK(clk), .Q(PP4[9]) );
  DFFTRX1 PP4_reg_10_ ( .D(PP4Next[10]), .RN(n270), .CK(clk), .Q(PP4[10]) );
  DFFTRX1 PP1_reg_16_ ( .D(PP1Next[16]), .RN(n3210), .CK(clk), .Q(PP1[16]) );
  DFFTRX1 PP3_reg_5_ ( .D(PP3Next[5]), .RN(n2910), .CK(clk), .Q(PP3[5]) );
  DFFTRX1 PP3_reg_6_ ( .D(PP3Next[6]), .RN(n2910), .CK(clk), .Q(PP3[6]) );
  DFFTRX1 PP3_reg_7_ ( .D(PP3Next[7]), .RN(n2910), .CK(clk), .Q(PP3[7]) );
  DFFTRX1 PP0_reg_18_ ( .D(PP0Next[18]), .RN(n3010), .CK(clk), .Q(PP0[18]) );
  DFFTRX1 PP0_reg_17_ ( .D(PP0Next[17]), .RN(n3010), .CK(clk), .Q(PP0[17]) );
  DFFTRX1 PP0_reg_16_ ( .D(PP0Next[16]), .RN(n3010), .CK(clk), .Q(PP0[16]) );
  DFFTRX1 PP0_reg_15_ ( .D(PP0Next[15]), .RN(n3010), .CK(clk), .Q(PP0[15]) );
  DFFTRX1 PP3_reg_1_ ( .D(PP3Next[1]), .RN(n280), .CK(clk), .Q(N453) );
  DFFTRX1 PP3_reg_2_ ( .D(PP3Next[2]), .RN(n280), .CK(clk), .Q(N454) );
  DFFTRX1 PP3_reg_3_ ( .D(PP3Next[3]), .RN(n280), .CK(clk), .Q(N455) );
  DFFTRX1 PP2_reg_9_ ( .D(PP2Next[9]), .RN(n3610), .CK(clk), .Q(PP2[9]) );
  DFFTRX1 PP2_reg_8_ ( .D(PP2Next[8]), .RN(n3610), .CK(clk), .Q(PP2[8]) );
  DFFTRX1 PP2_reg_7_ ( .D(PP2Next[7]), .RN(n3610), .CK(clk), .Q(PP2[7]) );
  DFFTRX1 PP2_reg_6_ ( .D(PP2Next[6]), .RN(n3610), .CK(clk), .Q(PP2[6]) );
  DFFTRX1 PP2_reg_5_ ( .D(PP2Next[5]), .RN(n3710), .CK(clk), .Q(PP2[5]) );
  DFFTRX1 PP2_reg_4_ ( .D(PP2Next[4]), .RN(n3710), .CK(clk), .Q(PP2[4]) );
  DFFTRX1 PP4_reg_0_ ( .D(PP4Next[0]), .RN(n3110), .CK(clk), .Q(PP4[0]) );
  DFFTRX1 PP3_reg_4_ ( .D(PP3Next[4]), .RN(n2910), .CK(clk), .Q(PP3[4]) );
  DFFTRX1 PP3_reg_0_ ( .D(PP3Next[0]), .RN(n280), .CK(clk), .Q(N452) );
  DFFTRX1 PP4_reg_1_ ( .D(PP4Next[1]), .RN(n270), .CK(clk), .Q(PP4[1]) );
  DFFTRX1 PP4_reg_2_ ( .D(PP4Next[2]), .RN(n270), .CK(clk), .Q(PP4[2]) );
  DFFTRX1 PP1_reg_15_ ( .D(PP1Next[15]), .RN(n3210), .CK(clk), .Q(PP1[15]) );
  DFFTRX1 PP1_reg_14_ ( .D(PP1Next[14]), .RN(n3210), .CK(clk), .Q(PP1[14]) );
  DFFTRX1 PP1_reg_13_ ( .D(PP1Next[13]), .RN(n3210), .CK(clk), .Q(PP1[13]) );
  DFFTRX1 PP1_reg_12_ ( .D(PP1Next[12]), .RN(n3210), .CK(clk), .Q(PP1[12]) );
  DFFTRX1 PP1_reg_11_ ( .D(PP1Next[11]), .RN(n3210), .CK(clk), .Q(PP1[11]) );
  DFFTRX1 PP1_reg_10_ ( .D(PP1Next[10]), .RN(n3210), .CK(clk), .Q(PP1[10]) );
  DFFX1 Ans_reg_6_ ( .D(N525), .CK(clk), .Q(AnsCorrect[6]), .QN(n49) );
  DFFX1 Ans_reg_5_ ( .D(N524), .CK(clk), .Q(AnsCorrect[5]), .QN(n50) );
  DFFX1 Ans_reg_2_ ( .D(N521), .CK(clk), .Q(AnsCorrect[2]), .QN(n53) );
  DFFTRX1 PP0_reg_3_ ( .D(PP0Next[3]), .RN(n3110), .CK(clk), .Q(PP0[3]) );
  DFFTRX1 PP2_reg_1_ ( .D(PP2Next[1]), .RN(n3610), .CK(clk), .Q(PP2[1]) );
  DFFQX1 Ans_reg_1_ ( .D(N520), .CK(clk), .Q(AnsCorrect[1]) );
  DFFQX1 Ans_reg_0_ ( .D(N519), .CK(clk), .Q(AnsCorrect[0]) );
  DFFQX1 Ans_reg_32_ ( .D(N551), .CK(clk), .Q(AnsCorrect[32]) );
  DFFQX1 Ans_reg_31_ ( .D(N550), .CK(clk), .Q(AnsCorrect[31]) );
  DFFQX1 Ans_reg_34_ ( .D(N553), .CK(clk), .Q(AnsCorrect[34]) );
  DFFQX1 Ans_reg_33_ ( .D(N552), .CK(clk), .Q(AnsCorrect[33]) );
  DFFQX1 Ans_reg_27_ ( .D(N546), .CK(clk), .Q(AnsCorrect[27]) );
  DFFQX1 Ans_reg_16_ ( .D(N535), .CK(clk), .Q(AnsCorrect[16]) );
  DFFQX1 Ans_reg_14_ ( .D(N533), .CK(clk), .Q(AnsCorrect[14]) );
  DFFQX1 Ans_reg_30_ ( .D(N549), .CK(clk), .Q(AnsCorrect[30]) );
  DFFQX1 Ans_reg_26_ ( .D(N545), .CK(clk), .Q(AnsCorrect[26]) );
  DFFQX1 Ans_reg_22_ ( .D(N541), .CK(clk), .Q(AnsCorrect[22]) );
  DFFQX1 Ans_reg_19_ ( .D(N538), .CK(clk), .Q(AnsCorrect[19]) );
  DFFQX1 Ans_reg_24_ ( .D(N543), .CK(clk), .Q(AnsCorrect[24]) );
  DFFQX1 Ans_reg_25_ ( .D(N544), .CK(clk), .Q(AnsCorrect[25]) );
  DFFQX1 Ans_reg_23_ ( .D(N542), .CK(clk), .Q(AnsCorrect[23]) );
  DFFQX1 Ans_reg_18_ ( .D(N537), .CK(clk), .Q(AnsCorrect[18]) );
  DFFQX1 Ans_reg_17_ ( .D(N536), .CK(clk), .Q(AnsCorrect[17]) );
  EDFFTRX1 signCorrect_reg ( .RN(n3710), .D(n95), .E(n2), .CK(clk), .Q(
        signCorrect) );
  DFFQX1 Ans_reg_13_ ( .D(N532), .CK(clk), .Q(AnsCorrect[13]) );
  DFFQX1 Ans_reg_15_ ( .D(N534), .CK(clk), .Q(AnsCorrect[15]) );
  DFFQX1 Ans_reg_11_ ( .D(N530), .CK(clk), .Q(AnsCorrect[11]) );
  DFFQX1 Ans_reg_12_ ( .D(N531), .CK(clk), .Q(AnsCorrect[12]) );
  DFFQX1 Ans_reg_10_ ( .D(N529), .CK(clk), .Q(AnsCorrect[10]) );
  DFFTRX1 PP1_reg_2_ ( .D(PP1Next[2]), .RN(n3310), .CK(clk), .Q(PP1[2]) );
  DFFQXL Ans_reg_36_ ( .D(N555), .CK(clk), .Q(Ans[36]) );
  DFFQXL Ans_reg_35_ ( .D(N554), .CK(clk), .Q(Ans[35]) );
  DFFXL Ans_reg_29_ ( .D(N548), .CK(clk), .Q(AnsCorrect[29]), .QN(n260) );
  DFFTRX1 PP0_reg_14_ ( .D(PP0Next[14]), .RN(n3010), .CK(clk), .Q(PP0[14]) );
  DFFTRX1 PP0_reg_13_ ( .D(PP0Next[13]), .RN(n3010), .CK(clk), .Q(PP0[13]) );
  DFFQX1 Ans_reg_8_ ( .D(N527), .CK(clk), .Q(AnsCorrect[8]) );
  DFFQX1 Ans_reg_9_ ( .D(N528), .CK(clk), .Q(AnsCorrect[9]) );
  DFFTRX1 PP1_reg_9_ ( .D(PP1Next[9]), .RN(n3310), .CK(clk), .Q(PP1[9]) );
  DFFTRX1 PP2_reg_2_ ( .D(PP2Next[2]), .RN(n3710), .CK(clk), .Q(PP2[2]) );
  DFFTRX1 PP2_reg_3_ ( .D(PP2Next[3]), .RN(n3710), .CK(clk), .Q(PP2[3]) );
  DFFQX1 Ans_reg_3_ ( .D(N522), .CK(clk), .Q(AnsCorrect[3]) );
  DFFQX1 Ans_reg_4_ ( .D(N523), .CK(clk), .Q(AnsCorrect[4]) );
  DFFQX1 Ans_reg_28_ ( .D(N547), .CK(clk), .Q(AnsCorrect[28]) );
  DFFTRX1 PP1_reg_5_ ( .D(PP1Next[5]), .RN(n3310), .CK(clk), .Q(PP1[5]) );
  DFFTRX1 PP1_reg_4_ ( .D(PP1Next[4]), .RN(n3310), .CK(clk), .Q(PP1[4]) );
  DFFQX1 Ans_reg_7_ ( .D(N526), .CK(clk), .Q(AnsCorrect[7]) );
  DFFTRX1 PP1_reg_3_ ( .D(PP1Next[3]), .RN(n3310), .CK(clk), .Q(PP1[3]) );
  DFFTRX1 PP1_reg_7_ ( .D(PP1Next[7]), .RN(n3310), .CK(clk), .Q(PP1[7]) );
  DFFTRX1 PP1_reg_8_ ( .D(PP1Next[8]), .RN(n3310), .CK(clk), .Q(PP1[8]) );
  DFFTRX1 PP1_reg_6_ ( .D(PP1Next[6]), .RN(n3310), .CK(clk), .Q(PP1[6]) );
  DFFTRX1 PP0_reg_6_ ( .D(PP0Next[6]), .RN(n3110), .CK(clk), .Q(PP0[6]) );
  DFFTRX4 PP1_reg_0_ ( .D(PP1Next[0]), .RN(n3310), .CK(clk), .Q(PP1[0]) );
  DFFTRX4 PP0_reg_4_ ( .D(PP0Next[4]), .RN(n3110), .CK(clk), .Q(PP0[4]) );
  DFFTRX1 PP2_reg_12_ ( .D(PP2Next[12]), .RN(n3610), .CK(clk), .Q(PP2[12]) );
  DFFTRX2 PP1_reg_1_ ( .D(PP1Next[1]), .RN(n3210), .CK(clk), .Q(PP1[1]) );
  DFFTRX2 PP0_reg_5_ ( .D(PP0Next[5]), .RN(n3110), .CK(clk), .Q(PP0[5]) );
  DFFQX4 count_reg ( .D(N556), .CK(clk), .Q(count) );
  DFFTRX1 PP0_reg_12_ ( .D(PP0Next[12]), .RN(n3010), .CK(clk), .Q(PP0[12]) );
  DFFTRX1 PP0_reg_9_ ( .D(PP0Next[9]), .RN(n3110), .CK(clk), .Q(PP0[9]) );
  DFFTRX1 PP0_reg_10_ ( .D(PP0Next[10]), .RN(n3110), .CK(clk), .Q(PP0[10]) );
  DFFTRX1 PP0_reg_11_ ( .D(PP0Next[11]), .RN(n3110), .CK(clk), .Q(PP0[11]) );
  DFFTRX1 PP0_reg_8_ ( .D(PP0Next[8]), .RN(n3110), .CK(clk), .Q(PP0[8]) );
  DFFTRX1 PP0_reg_1_ ( .D(PP0Next[1]), .RN(n3110), .CK(clk), .Q(PP0[1]) );
  DFFTRX1 PP0_reg_0_ ( .D(PP0Next[0]), .RN(n3210), .CK(clk), .Q(PP0[0]) );
  DFFTRX1 PP0_reg_2_ ( .D(PP0Next[2]), .RN(n3110), .CK(clk), .Q(PP0[2]) );
  DFFTRX1 PP0_reg_7_ ( .D(PP0Next[7]), .RN(n3110), .CK(clk), .Q(PP0[7]) );
  DFFTRX1 PP1_reg_18_ ( .D(PP1Next[18]), .RN(n3210), .CK(clk), .Q(PP1[18]) );
  DFFTRX1 PP0_reg_19_ ( .D(PP0Next[19]), .RN(n3010), .CK(clk), .Q(PP0[19]), 
        .QN(N190) );
  DFFTRX2 PP2_reg_0_ ( .D(PP2Next[0]), .RN(n270), .CK(clk), .Q(PP2[0]) );
  OAI2BB2X4 U3 ( .B0(n17), .B1(n15), .A0N(N81), .A1N(n18), .Y(Mp[17]) );
  CLKBUFX20 U4 ( .A(count), .Y(n1) );
  CLKBUFX20 U5 ( .A(count), .Y(n2) );
  CLKBUFX20 U6 ( .A(count), .Y(n3) );
  OAI2BB2X2 U7 ( .B0(B[19]), .B1(n204), .A0N(N79), .A1N(n18), .Y(Mp[15]) );
  OAI2BB2X4 U8 ( .B0(n17), .B1(n16), .A0N(N82), .A1N(n18), .Y(Mp[18]) );
  INVX1 U9 ( .A(n98), .Y(doneMULT) );
  ADDFXL U10 ( .A(PP3[15]), .B(PP4[11]), .CI(
        add_2_root_add_0_root_add_172_5_carry[29]), .CO(
        add_2_root_add_0_root_add_172_5_carry[30]), .S(N467) );
  CLKBUFX3 U11 ( .A(A[19]), .Y(n20) );
  CLKINVX1 U12 ( .A(n1), .Y(n4110) );
  CLKBUFX3 U13 ( .A(A[19]), .Y(n21) );
  OAI2BB2X2 U14 ( .B0(n20), .B1(n58), .A0N(N40), .A1N(n22), .Y(Mc[14]) );
  OAI2BB2X2 U15 ( .B0(n20), .B1(n57), .A0N(N41), .A1N(n22), .Y(Mc[15]) );
  OAI2BB2X2 U16 ( .B0(n20), .B1(n56), .A0N(N42), .A1N(n22), .Y(Mc[16]) );
  OAI2BB2X2 U17 ( .B0(n21), .B1(n55), .A0N(N43), .A1N(n22), .Y(Mc[17]) );
  OAI2BB2X2 U18 ( .B0(n20), .B1(n4310), .A0N(N35), .A1N(n21), .Y(Mc[9]) );
  OAI2BB2X2 U19 ( .B0(n20), .B1(n60), .A0N(N36), .A1N(n22), .Y(Mc[10]) );
  OAI2BB2X2 U20 ( .B0(n20), .B1(n59), .A0N(N37), .A1N(n22), .Y(Mc[11]) );
  OAI2BB2X2 U21 ( .B0(n20), .B1(n46), .A0N(N32), .A1N(n21), .Y(Mc[6]) );
  OAI2BB2X2 U22 ( .B0(n20), .B1(n45), .A0N(N33), .A1N(n21), .Y(Mc[7]) );
  OAI2BB2X2 U23 ( .B0(n20), .B1(n4410), .A0N(N34), .A1N(n21), .Y(Mc[8]) );
  OAI2BB2X2 U24 ( .B0(n21), .B1(n47), .A0N(N31), .A1N(n21), .Y(Mc[5]) );
  OAI2BB2X2 U25 ( .B0(n21), .B1(n52), .A0N(N28), .A1N(n22), .Y(Mc[2]) );
  OAI2BB2X2 U26 ( .B0(n21), .B1(n51), .A0N(N29), .A1N(n22), .Y(Mc[3]) );
  OAI2BB2X2 U27 ( .B0(n21), .B1(n48), .A0N(N30), .A1N(n21), .Y(Mc[4]) );
  OAI2BB2X2 U28 ( .B0(n21), .B1(n54), .A0N(N27), .A1N(n22), .Y(Mc[1]) );
  NOR2X1 U29 ( .A(n1), .B(n401), .Y(n97) );
  OAI31XL U30 ( .A0(n100), .A1(n101), .A2(n102), .B0(signCorrect), .Y(n99) );
  INVXL U31 ( .A(B[1]), .Y(n196) );
  CLKINVX1 U32 ( .A(B[0]), .Y(n1930) );
  INVXL U33 ( .A(B[5]), .Y(n207) );
  NOR2XL U34 ( .A(n401), .B(n98), .Y(N556) );
  CLKINVX1 U35 ( .A(n99), .Y(n4210) );
  INVXL U36 ( .A(AnsCorrect[15]), .Y(n225) );
  INVXL U37 ( .A(AnsCorrect[3]), .Y(n235) );
  INVXL U38 ( .A(AnsCorrect[4]), .Y(n234) );
  INVXL U39 ( .A(AnsCorrect[7]), .Y(n233) );
  INVXL U40 ( .A(AnsCorrect[8]), .Y(n232) );
  INVXL U41 ( .A(AnsCorrect[9]), .Y(n231) );
  INVXL U42 ( .A(AnsCorrect[10]), .Y(n230) );
  INVXL U43 ( .A(AnsCorrect[11]), .Y(n229) );
  INVXL U44 ( .A(AnsCorrect[12]), .Y(n228) );
  INVXL U45 ( .A(AnsCorrect[13]), .Y(n227) );
  OAI2BB2X1 U46 ( .B0(n20), .B1(n241), .A0N(N26), .A1N(n21), .Y(Mc[0]) );
  NOR4XL U47 ( .A(AnsCorrect[12]), .B(AnsCorrect[11]), .C(AnsCorrect[10]), .D(
        AnsCorrect[0]), .Y(n107) );
  NOR4XL U48 ( .A(AnsCorrect[1]), .B(AnsCorrect[19]), .C(AnsCorrect[18]), .D(
        AnsCorrect[17]), .Y(n109) );
  NOR4XL U49 ( .A(AnsCorrect[16]), .B(AnsCorrect[15]), .C(AnsCorrect[14]), .D(
        AnsCorrect[13]), .Y(n108) );
  NOR4XL U50 ( .A(AnsCorrect[4]), .B(AnsCorrect[3]), .C(AnsCorrect[34]), .D(
        AnsCorrect[33]), .Y(n106) );
  NOR3XL U51 ( .A(AnsCorrect[7]), .B(AnsCorrect[9]), .C(AnsCorrect[8]), .Y(
        n105) );
  CLKBUFX3 U52 ( .A(signCorrect), .Y(n12) );
  CLKBUFX3 U53 ( .A(signCorrect), .Y(n13) );
  INVX3 U54 ( .A(n3910), .Y(n3610) );
  INVX3 U55 ( .A(n3810), .Y(n3310) );
  INVX3 U56 ( .A(n3810), .Y(n3210) );
  INVX3 U57 ( .A(n3910), .Y(n3010) );
  INVX3 U58 ( .A(n3910), .Y(n2910) );
  INVX3 U59 ( .A(n3910), .Y(n280) );
  INVX3 U60 ( .A(n3810), .Y(n3110) );
  CLKINVX1 U61 ( .A(n23), .Y(n3710) );
  CLKBUFX3 U62 ( .A(n23), .Y(n3810) );
  CLKBUFX3 U63 ( .A(n23), .Y(n3910) );
  INVX3 U64 ( .A(n401), .Y(n270) );
  OAI2BB2XL U65 ( .B0(n18), .B1(n203), .A0N(N71), .A1N(n17), .Y(Mp[7]) );
  CLKBUFX3 U66 ( .A(n25), .Y(n23) );
  CLKBUFX3 U67 ( .A(n24), .Y(n401) );
  CLKBUFX3 U68 ( .A(n25), .Y(n24) );
  CLKINVX1 U69 ( .A(B[7]), .Y(n203) );
  CLKBUFX3 U70 ( .A(reset), .Y(n25) );
  CLKBUFX3 U71 ( .A(B[19]), .Y(n17) );
  CLKINVX1 U72 ( .A(B[4]), .Y(n205) );
  CLKINVX1 U73 ( .A(B[15]), .Y(n204) );
  CLKINVX1 U74 ( .A(B[9]), .Y(n202) );
  CLKINVX1 U75 ( .A(B[3]), .Y(n206) );
  CLKINVX1 U76 ( .A(B[13]), .Y(n197) );
  CLKINVX1 U77 ( .A(B[11]), .Y(n195) );
  CLKINVX1 U78 ( .A(B[10]), .Y(n1940) );
  CLKINVX1 U79 ( .A(B[8]), .Y(n200) );
  CLKINVX1 U80 ( .A(B[6]), .Y(n199) );
  CLKINVX1 U81 ( .A(B[2]), .Y(n201) );
  CLKINVX1 U82 ( .A(B[14]), .Y(n198) );
  CLKINVX1 U83 ( .A(B[12]), .Y(n208) );
  OAI2BB2XL U84 ( .B0(B[19]), .B1(n197), .A0N(N77), .A1N(n18), .Y(Mp[13]) );
  OAI2BB2XL U85 ( .B0(B[19]), .B1(n202), .A0N(N73), .A1N(n17), .Y(Mp[9]) );
  OAI2BB2XL U86 ( .B0(B[19]), .B1(n195), .A0N(N75), .A1N(n18), .Y(Mp[11]) );
  CLKBUFX3 U87 ( .A(n96), .Y(n10) );
  CLKBUFX3 U88 ( .A(n96), .Y(n11) );
  OAI2BB2XL U89 ( .B0(n17), .B1(n196), .A0N(N65), .A1N(n18), .Y(Mp[1]) );
  OAI2BB2XL U90 ( .B0(n17), .B1(n207), .A0N(N69), .A1N(n17), .Y(Mp[5]) );
  OAI2BB2XL U91 ( .B0(n17), .B1(n206), .A0N(N67), .A1N(n18), .Y(Mp[3]) );
  CLKBUFX3 U92 ( .A(B[19]), .Y(n18) );
  CLKINVX1 U93 ( .A(B[16]), .Y(n14) );
  CLKINVX1 U94 ( .A(B[17]), .Y(n15) );
  CLKINVX1 U95 ( .A(B[18]), .Y(n16) );
  XOR2X1 U96 ( .A(n21), .B(n17), .Y(n95) );
  CLKBUFX3 U97 ( .A(n97), .Y(n8) );
  CLKBUFX3 U98 ( .A(n97), .Y(n9) );
  AO22X1 U99 ( .A0(N307), .A1(n10), .B0(N492), .B1(n8), .Y(N536) );
  AO22X1 U100 ( .A0(N308), .A1(n10), .B0(N493), .B1(n8), .Y(N537) );
  AO22X1 U101 ( .A0(N309), .A1(n11), .B0(N494), .B1(n8), .Y(N538) );
  AO22X1 U102 ( .A0(N312), .A1(n96), .B0(N497), .B1(n8), .Y(N541) );
  AO22X1 U103 ( .A0(N313), .A1(n10), .B0(N498), .B1(n8), .Y(N542) );
  AO22X1 U104 ( .A0(N314), .A1(n11), .B0(N499), .B1(n9), .Y(N543) );
  AO22X1 U105 ( .A0(N315), .A1(n11), .B0(N500), .B1(n9), .Y(N544) );
  AO22X1 U106 ( .A0(N316), .A1(n11), .B0(N501), .B1(n9), .Y(N545) );
  AO22X1 U107 ( .A0(N320), .A1(n11), .B0(N505), .B1(n9), .Y(N549) );
  AO22X1 U108 ( .A0(N310), .A1(n10), .B0(N495), .B1(n8), .Y(N539) );
  AO22X1 U109 ( .A0(N311), .A1(n10), .B0(N496), .B1(n8), .Y(N540) );
  AO22X1 U110 ( .A0(N319), .A1(n11), .B0(N504), .B1(n9), .Y(N548) );
  CLKBUFX3 U111 ( .A(n4210), .Y(Y[35]) );
  CLKBUFX3 U112 ( .A(n4210), .Y(n7) );
  NAND2X1 U113 ( .A(enMULT), .B(n4110), .Y(n98) );
  NOR2X1 U114 ( .A(n4110), .B(n401), .Y(n96) );
  AO22X1 U115 ( .A0(N297), .A1(n10), .B0(N482), .B1(n9), .Y(N526) );
  AO22X1 U116 ( .A0(N299), .A1(n10), .B0(N484), .B1(n8), .Y(N528) );
  AO22X1 U117 ( .A0(N300), .A1(n10), .B0(N485), .B1(n97), .Y(N529) );
  AO22X1 U118 ( .A0(N301), .A1(n10), .B0(N486), .B1(n8), .Y(N530) );
  AO22X1 U119 ( .A0(N302), .A1(n96), .B0(N487), .B1(n8), .Y(N531) );
  AO22X1 U120 ( .A0(N303), .A1(n10), .B0(N488), .B1(n8), .Y(N532) );
  AO22X1 U121 ( .A0(N304), .A1(n10), .B0(N489), .B1(n8), .Y(N533) );
  AO22X1 U122 ( .A0(N305), .A1(n10), .B0(N490), .B1(n8), .Y(N534) );
  AO22X1 U123 ( .A0(N306), .A1(n10), .B0(N491), .B1(n8), .Y(N535) );
  AO22X1 U125 ( .A0(N317), .A1(n11), .B0(N502), .B1(n9), .Y(N546) );
  AO22X1 U126 ( .A0(N318), .A1(n11), .B0(N503), .B1(n9), .Y(N547) );
  AO22X1 U127 ( .A0(N321), .A1(n11), .B0(N506), .B1(n9), .Y(N550) );
  AO22X1 U128 ( .A0(N322), .A1(n11), .B0(N507), .B1(n9), .Y(N551) );
  AO22X1 U131 ( .A0(N323), .A1(n11), .B0(N508), .B1(n9), .Y(N552) );
  AO22X1 U132 ( .A0(N324), .A1(n11), .B0(N509), .B1(n9), .Y(N553) );
  AO22X1 U133 ( .A0(N325), .A1(n11), .B0(N510), .B1(n9), .Y(N554) );
  AO22X1 U134 ( .A0(N326), .A1(n10), .B0(N511), .B1(n9), .Y(N555) );
  AO22X1 U135 ( .A0(N292), .A1(n10), .B0(N477), .B1(n8), .Y(N521) );
  AO22X1 U136 ( .A0(N295), .A1(n10), .B0(N480), .B1(n9), .Y(N524) );
  AO22X1 U137 ( .A0(N296), .A1(n10), .B0(N481), .B1(n8), .Y(N525) );
  CLKBUFX3 U138 ( .A(n19), .Y(n22) );
  CLKBUFX3 U139 ( .A(A[19]), .Y(n19) );
  OAI2BB2XL U140 ( .B0(B[19]), .B1(n14), .A0N(N80), .A1N(n18), .Y(Mp[16]) );
  OAI2BB2XL U141 ( .B0(n17), .B1(n200), .A0N(N72), .A1N(n17), .Y(Mp[8]) );
  OAI2BB2XL U142 ( .B0(B[19]), .B1(n1940), .A0N(N74), .A1N(n18), .Y(Mp[10]) );
  OAI2BB2XL U143 ( .B0(B[19]), .B1(n208), .A0N(N76), .A1N(n18), .Y(Mp[12]) );
  OAI2BB2XL U144 ( .B0(B[19]), .B1(n198), .A0N(N78), .A1N(n18), .Y(Mp[14]) );
  OAI2BB2XL U145 ( .B0(n17), .B1(n205), .A0N(N68), .A1N(n17), .Y(Mp[4]) );
  OAI2BB2XL U146 ( .B0(B[19]), .B1(n199), .A0N(N70), .A1N(n17), .Y(Mp[6]) );
  AO22X1 U147 ( .A0(N290), .A1(n10), .B0(N475), .B1(n9), .Y(N519) );
  AO22X1 U148 ( .A0(N291), .A1(n10), .B0(N476), .B1(n8), .Y(N520) );
  AO22X1 U149 ( .A0(N293), .A1(n10), .B0(N478), .B1(n9), .Y(N522) );
  AO22X1 U150 ( .A0(N294), .A1(n10), .B0(N479), .B1(n97), .Y(N523) );
  AO22X1 U151 ( .A0(N298), .A1(n10), .B0(N483), .B1(n97), .Y(N527) );
  OAI2BB2XL U152 ( .B0(n17), .B1(n201), .A0N(N66), .A1N(n18), .Y(Mp[2]) );
  OAI2BB2XL U153 ( .B0(B[19]), .B1(n1930), .A0N(N64), .A1N(n17), .Y(Mp[0]) );
  XOR2X1 U154 ( .A(n4), .B(n5), .Y(N474) );
  NOR2X1 U155 ( .A(PP4[17]), .B(add_2_root_add_0_root_add_172_5_carry[35]), 
        .Y(n5) );
  CLKINVX1 U156 ( .A(A[16]), .Y(n56) );
  CLKINVX1 U157 ( .A(A[15]), .Y(n57) );
  CLKINVX1 U158 ( .A(A[14]), .Y(n58) );
  CLKINVX1 U159 ( .A(A[11]), .Y(n59) );
  CLKINVX1 U160 ( .A(A[10]), .Y(n60) );
  CLKINVX1 U161 ( .A(A[9]), .Y(n4310) );
  CLKINVX1 U162 ( .A(A[8]), .Y(n4410) );
  CLKINVX1 U163 ( .A(A[7]), .Y(n45) );
  CLKINVX1 U164 ( .A(A[6]), .Y(n46) );
  CLKINVX1 U165 ( .A(A[5]), .Y(n47) );
  CLKINVX1 U166 ( .A(A[4]), .Y(n48) );
  CLKINVX1 U167 ( .A(A[3]), .Y(n51) );
  CLKINVX1 U168 ( .A(A[2]), .Y(n52) );
  CLKINVX1 U169 ( .A(A[1]), .Y(n54) );
  CLKINVX1 U170 ( .A(A[17]), .Y(n55) );
  CLKINVX1 U171 ( .A(A[18]), .Y(n238) );
  OAI2BB2XL U172 ( .B0(n260), .B1(n13), .A0N(N149), .A1N(n7), .Y(Y[29]) );
  CLKINVX1 U173 ( .A(A[12]), .Y(n240) );
  CLKINVX1 U174 ( .A(A[13]), .Y(n239) );
  OAI2BB2XL U175 ( .B0(n209), .B1(n12), .A0N(N154), .A1N(Y[35]), .Y(Y[34]) );
  CLKINVX1 U176 ( .A(AnsCorrect[34]), .Y(n209) );
  OAI2BB2XL U177 ( .B0(n210), .B1(n12), .A0N(N153), .A1N(Y[35]), .Y(Y[33]) );
  OAI2BB2XL U178 ( .B0(n211), .B1(n12), .A0N(N152), .A1N(Y[35]), .Y(Y[32]) );
  OAI2BB2XL U179 ( .B0(n212), .B1(n12), .A0N(N151), .A1N(Y[35]), .Y(Y[31]) );
  OAI2BB2XL U180 ( .B0(n213), .B1(n12), .A0N(N150), .A1N(Y[35]), .Y(Y[30]) );
  OAI2BB2XL U181 ( .B0(n214), .B1(n13), .A0N(N148), .A1N(n7), .Y(Y[28]) );
  OAI2BB2XL U182 ( .B0(n215), .B1(n13), .A0N(N147), .A1N(n7), .Y(Y[27]) );
  OAI2BB2XL U183 ( .B0(n216), .B1(n13), .A0N(N146), .A1N(n7), .Y(Y[26]) );
  CLKINVX1 U184 ( .A(A[0]), .Y(n241) );
  CLKINVX1 U185 ( .A(AnsCorrect[0]), .Y(n237) );
  CLKINVX1 U186 ( .A(AnsCorrect[1]), .Y(n236) );
  CLKINVX1 U187 ( .A(AnsCorrect[14]), .Y(n226) );
  CLKINVX1 U188 ( .A(AnsCorrect[16]), .Y(n224) );
  CLKINVX1 U189 ( .A(AnsCorrect[17]), .Y(n223) );
  CLKINVX1 U190 ( .A(AnsCorrect[18]), .Y(n222) );
  CLKINVX1 U191 ( .A(AnsCorrect[19]), .Y(n221) );
  CLKINVX1 U192 ( .A(AnsCorrect[22]), .Y(n220) );
  CLKINVX1 U193 ( .A(AnsCorrect[23]), .Y(n219) );
  CLKINVX1 U194 ( .A(AnsCorrect[24]), .Y(n218) );
  CLKINVX1 U195 ( .A(AnsCorrect[25]), .Y(n217) );
  CLKINVX1 U196 ( .A(AnsCorrect[26]), .Y(n216) );
  CLKINVX1 U197 ( .A(AnsCorrect[27]), .Y(n215) );
  CLKINVX1 U198 ( .A(AnsCorrect[28]), .Y(n214) );
  CLKINVX1 U199 ( .A(AnsCorrect[30]), .Y(n213) );
  CLKINVX1 U200 ( .A(AnsCorrect[31]), .Y(n212) );
  CLKINVX1 U201 ( .A(AnsCorrect[32]), .Y(n211) );
  ADDFXL U202 ( .A(N193), .B(PP4[16]), .CI(
        add_2_root_add_0_root_add_172_5_carry[34]), .CO(
        add_2_root_add_0_root_add_172_5_carry[35]), .S(N472) );
  ADDFXL U203 ( .A(PP3[5]), .B(PP4[1]), .CI(
        add_2_root_add_0_root_add_172_5_carry[19]), .CO(
        add_2_root_add_0_root_add_172_5_carry[20]), .S(N457) );
  ADDFXL U204 ( .A(PP3[6]), .B(PP4[2]), .CI(
        add_2_root_add_0_root_add_172_5_carry[20]), .CO(
        add_2_root_add_0_root_add_172_5_carry[21]), .S(N458) );
  ADDFXL U205 ( .A(PP3[7]), .B(PP4[3]), .CI(
        add_2_root_add_0_root_add_172_5_carry[21]), .CO(
        add_2_root_add_0_root_add_172_5_carry[22]), .S(N459) );
  ADDFXL U206 ( .A(PP3[8]), .B(PP4[4]), .CI(
        add_2_root_add_0_root_add_172_5_carry[22]), .CO(
        add_2_root_add_0_root_add_172_5_carry[23]), .S(N460) );
  ADDFXL U207 ( .A(PP3[9]), .B(PP4[5]), .CI(
        add_2_root_add_0_root_add_172_5_carry[23]), .CO(
        add_2_root_add_0_root_add_172_5_carry[24]), .S(N461) );
  ADDFXL U208 ( .A(PP3[10]), .B(PP4[6]), .CI(
        add_2_root_add_0_root_add_172_5_carry[24]), .CO(
        add_2_root_add_0_root_add_172_5_carry[25]), .S(N462) );
  ADDFXL U209 ( .A(PP3[11]), .B(PP4[7]), .CI(
        add_2_root_add_0_root_add_172_5_carry[25]), .CO(
        add_2_root_add_0_root_add_172_5_carry[26]), .S(N463) );
  ADDFXL U210 ( .A(PP3[12]), .B(PP4[8]), .CI(
        add_2_root_add_0_root_add_172_5_carry[26]), .CO(
        add_2_root_add_0_root_add_172_5_carry[27]), .S(N464) );
  ADDFXL U211 ( .A(PP3[13]), .B(PP4[9]), .CI(
        add_2_root_add_0_root_add_172_5_carry[27]), .CO(
        add_2_root_add_0_root_add_172_5_carry[28]), .S(N465) );
  ADDFXL U212 ( .A(PP3[14]), .B(PP4[10]), .CI(
        add_2_root_add_0_root_add_172_5_carry[28]), .CO(
        add_2_root_add_0_root_add_172_5_carry[29]), .S(N466) );
  ADDFXL U213 ( .A(PP3[16]), .B(PP4[12]), .CI(
        add_2_root_add_0_root_add_172_5_carry[30]), .CO(
        add_2_root_add_0_root_add_172_5_carry[31]), .S(N468) );
  ADDFXL U214 ( .A(PP3[17]), .B(PP4[13]), .CI(
        add_2_root_add_0_root_add_172_5_carry[31]), .CO(
        add_2_root_add_0_root_add_172_5_carry[32]), .S(N469) );
  ADDFXL U215 ( .A(PP3[18]), .B(PP4[14]), .CI(
        add_2_root_add_0_root_add_172_5_carry[32]), .CO(
        add_2_root_add_0_root_add_172_5_carry[33]), .S(N470) );
  ADDFXL U216 ( .A(PP3[19]), .B(PP4[15]), .CI(
        add_2_root_add_0_root_add_172_5_carry[33]), .CO(
        add_2_root_add_0_root_add_172_5_carry[34]), .S(N471) );
  CLKINVX1 U217 ( .A(AnsCorrect[33]), .Y(n210) );
  OAI2BB2XL U218 ( .B0(n350), .B1(n13), .A0N(N140), .A1N(n7), .Y(Y[20]) );
  OAI2BB2XL U219 ( .B0(n340), .B1(n13), .A0N(N141), .A1N(n7), .Y(Y[21]) );
  OAI2BB2XL U220 ( .B0(n217), .B1(n13), .A0N(N145), .A1N(n7), .Y(Y[25]) );
  OAI2BB2XL U221 ( .B0(n218), .B1(n13), .A0N(N144), .A1N(n7), .Y(Y[24]) );
  OAI2BB2XL U222 ( .B0(n219), .B1(n13), .A0N(N143), .A1N(n7), .Y(Y[23]) );
  OAI2BB2XL U223 ( .B0(n220), .B1(n13), .A0N(N142), .A1N(n7), .Y(Y[22]) );
  OAI2BB2XL U224 ( .B0(n221), .B1(n12), .A0N(N139), .A1N(Y[35]), .Y(Y[19]) );
  OAI2BB2XL U225 ( .B0(n222), .B1(n13), .A0N(N138), .A1N(n4210), .Y(Y[18]) );
  OAI2BB2XL U226 ( .B0(n223), .B1(n12), .A0N(N137), .A1N(n7), .Y(Y[17]) );
  OAI2BB2XL U227 ( .B0(n224), .B1(n13), .A0N(N136), .A1N(n4210), .Y(Y[16]) );
  NAND4X1 U228 ( .A(n50), .B(n49), .C(n105), .D(n106), .Y(n101) );
  NAND4X1 U229 ( .A(n260), .B(n53), .C(n103), .D(n104), .Y(n102) );
  NAND4X1 U230 ( .A(n107), .B(n108), .C(n109), .D(n110), .Y(n100) );
  NOR4X1 U231 ( .A(n111), .B(AnsCorrect[22]), .C(AnsCorrect[24]), .D(
        AnsCorrect[23]), .Y(n110) );
  NAND2X1 U232 ( .A(n350), .B(n340), .Y(n111) );
  NOR4X1 U233 ( .A(AnsCorrect[28]), .B(AnsCorrect[27]), .C(AnsCorrect[26]), 
        .D(AnsCorrect[25]), .Y(n104) );
  NOR3X1 U234 ( .A(AnsCorrect[30]), .B(AnsCorrect[32]), .C(AnsCorrect[31]), 
        .Y(n103) );
  OAI2BB2XL U235 ( .B0(n49), .B1(n12), .A0N(N126), .A1N(Y[35]), .Y(Y[6]) );
  OAI2BB2XL U236 ( .B0(n53), .B1(n13), .A0N(N122), .A1N(n7), .Y(Y[2]) );
  OAI2BB2XL U237 ( .B0(n50), .B1(n12), .A0N(N125), .A1N(Y[35]), .Y(Y[5]) );
  OAI2BB2XL U238 ( .B0(n231), .B1(n12), .A0N(N129), .A1N(Y[35]), .Y(Y[9]) );
  OAI2BB2XL U239 ( .B0(n232), .B1(n12), .A0N(N128), .A1N(Y[35]), .Y(Y[8]) );
  OAI2BB2XL U240 ( .B0(n233), .B1(n12), .A0N(N127), .A1N(Y[35]), .Y(Y[7]) );
  OAI2BB2XL U241 ( .B0(n234), .B1(n12), .A0N(N124), .A1N(Y[35]), .Y(Y[4]) );
  OAI2BB2XL U242 ( .B0(n235), .B1(n12), .A0N(N123), .A1N(Y[35]), .Y(Y[3]) );
  OAI2BB2XL U243 ( .B0(n236), .B1(n13), .A0N(N121), .A1N(n7), .Y(Y[1]) );
  OAI2BB2XL U244 ( .B0(n225), .B1(n12), .A0N(N135), .A1N(Y[35]), .Y(Y[15]) );
  OAI2BB2XL U245 ( .B0(n226), .B1(n13), .A0N(N134), .A1N(n4210), .Y(Y[14]) );
  OAI2BB2XL U246 ( .B0(n227), .B1(n12), .A0N(N133), .A1N(n7), .Y(Y[13]) );
  OAI2BB2XL U247 ( .B0(n228), .B1(n13), .A0N(N132), .A1N(Y[35]), .Y(Y[12]) );
  OAI2BB2XL U248 ( .B0(n229), .B1(n12), .A0N(N131), .A1N(n4210), .Y(Y[11]) );
  OAI2BB2XL U249 ( .B0(n230), .B1(n13), .A0N(N130), .A1N(n7), .Y(Y[10]) );
  OAI2BB2XL U250 ( .B0(n237), .B1(n12), .A0N(N120), .A1N(n4210), .Y(Y[0]) );
  XNOR2X1 U251 ( .A(add_2_root_add_0_root_add_172_5_carry[35]), .B(PP4[17]), 
        .Y(N473) );
  AND2X1 U252 ( .A(PP3[4]), .B(PP4[0]), .Y(
        add_2_root_add_0_root_add_172_5_carry[19]) );
  XOR2X1 U253 ( .A(PP4[0]), .B(PP3[4]), .Y(N456) );
endmodule


module PPG_4_DW01_inc_0 ( A_19_, A_18_, A_17_, A_16_, A_15_, A_14_, A_13_, 
        A_12_, A_11_, A_10_, A_9_, A_8_, A_7_, A_6_, A_5_, A_4_, A_3_, A_2_, 
        A_1_, SUM_19_, SUM_18_, SUM_17_, SUM_16_, SUM_15_, SUM_14_, SUM_13_, 
        SUM_12_, SUM_11_, SUM_10_, SUM_9_, SUM_8_, SUM_7_, SUM_6_, SUM_5_, 
        SUM_4_, SUM_3_, SUM_2_, SUM_1_ );
  input A_19_, A_18_, A_17_, A_16_, A_15_, A_14_, A_13_, A_12_, A_11_, A_10_,
         A_9_, A_8_, A_7_, A_6_, A_5_, A_4_, A_3_, A_2_, A_1_;
  output SUM_19_, SUM_18_, SUM_17_, SUM_16_, SUM_15_, SUM_14_, SUM_13_,
         SUM_12_, SUM_11_, SUM_10_, SUM_9_, SUM_8_, SUM_7_, SUM_6_, SUM_5_,
         SUM_4_, SUM_3_, SUM_2_, SUM_1_;
  wire   carry_19_, carry_18_, carry_17_, carry_16_, carry_15_, carry_14_,
         carry_13_, carry_12_, carry_11_, carry_10_, carry_9_, carry_8_,
         carry_7_, carry_6_, carry_5_, carry_4_, carry_3_;

  ADDHXL U1_1_18 ( .A(A_18_), .B(carry_18_), .CO(carry_19_), .S(SUM_18_) );
  ADDHXL U1_1_17 ( .A(A_17_), .B(carry_17_), .CO(carry_18_), .S(SUM_17_) );
  ADDHXL U1_1_16 ( .A(A_16_), .B(carry_16_), .CO(carry_17_), .S(SUM_16_) );
  ADDHXL U1_1_15 ( .A(A_15_), .B(carry_15_), .CO(carry_16_), .S(SUM_15_) );
  ADDHXL U1_1_14 ( .A(A_14_), .B(carry_14_), .CO(carry_15_), .S(SUM_14_) );
  ADDHXL U1_1_13 ( .A(A_13_), .B(carry_13_), .CO(carry_14_), .S(SUM_13_) );
  ADDHXL U1_1_12 ( .A(A_12_), .B(carry_12_), .CO(carry_13_), .S(SUM_12_) );
  ADDHXL U1_1_11 ( .A(A_11_), .B(carry_11_), .CO(carry_12_), .S(SUM_11_) );
  ADDHXL U1_1_10 ( .A(A_10_), .B(carry_10_), .CO(carry_11_), .S(SUM_10_) );
  ADDHXL U1_1_9 ( .A(A_9_), .B(carry_9_), .CO(carry_10_), .S(SUM_9_) );
  ADDHXL U1_1_8 ( .A(A_8_), .B(carry_8_), .CO(carry_9_), .S(SUM_8_) );
  ADDHXL U1_1_7 ( .A(A_7_), .B(carry_7_), .CO(carry_8_), .S(SUM_7_) );
  ADDHXL U1_1_6 ( .A(A_6_), .B(carry_6_), .CO(carry_7_), .S(SUM_6_) );
  ADDHXL U1_1_5 ( .A(A_5_), .B(carry_5_), .CO(carry_6_), .S(SUM_5_) );
  ADDHXL U1_1_4 ( .A(A_4_), .B(carry_4_), .CO(carry_5_), .S(SUM_4_) );
  ADDHXL U1_1_3 ( .A(A_3_), .B(carry_3_), .CO(carry_4_), .S(SUM_3_) );
  ADDHXL U1_1_2 ( .A(A_2_), .B(A_1_), .CO(carry_3_), .S(SUM_2_) );
  CLKINVX1 U1 ( .A(A_1_), .Y(SUM_1_) );
  XOR2X1 U2 ( .A(carry_19_), .B(A_19_), .Y(SUM_19_) );
endmodule


module PPG_4_DW01_inc_1 ( SUM, A_18_, A_17_, A_16_, A_15_, A_14_, A_13_, A_12_, 
        A_11_, A_10_, A_9_, A_8_, A_7_, A_6_, A_5_, A_4_, A_3_, A_2_, A_1_, 
        A_0_ );
  output [19:0] SUM;
  input A_18_, A_17_, A_16_, A_15_, A_14_, A_13_, A_12_, A_11_, A_10_, A_9_,
         A_8_, A_7_, A_6_, A_5_, A_4_, A_3_, A_2_, A_1_, A_0_;

  wire   [19:2] carry;

  ADDHXL U1_1_18 ( .A(A_18_), .B(carry[18]), .CO(carry[19]), .S(SUM[18]) );
  ADDHXL U1_1_17 ( .A(A_17_), .B(carry[17]), .CO(carry[18]), .S(SUM[17]) );
  ADDHXL U1_1_16 ( .A(A_16_), .B(carry[16]), .CO(carry[17]), .S(SUM[16]) );
  ADDHXL U1_1_15 ( .A(A_15_), .B(carry[15]), .CO(carry[16]), .S(SUM[15]) );
  ADDHXL U1_1_14 ( .A(A_14_), .B(carry[14]), .CO(carry[15]), .S(SUM[14]) );
  ADDHXL U1_1_13 ( .A(A_13_), .B(carry[13]), .CO(carry[14]), .S(SUM[13]) );
  ADDHXL U1_1_12 ( .A(A_12_), .B(carry[12]), .CO(carry[13]), .S(SUM[12]) );
  ADDHXL U1_1_11 ( .A(A_11_), .B(carry[11]), .CO(carry[12]), .S(SUM[11]) );
  ADDHXL U1_1_10 ( .A(A_10_), .B(carry[10]), .CO(carry[11]), .S(SUM[10]) );
  ADDHXL U1_1_9 ( .A(A_9_), .B(carry[9]), .CO(carry[10]), .S(SUM[9]) );
  ADDHXL U1_1_8 ( .A(A_8_), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  ADDHXL U1_1_7 ( .A(A_7_), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  ADDHXL U1_1_6 ( .A(A_6_), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_5 ( .A(A_5_), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A_4_), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_3 ( .A(A_3_), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_2 ( .A(A_2_), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_1 ( .A(A_1_), .B(A_0_), .CO(carry[2]), .S(SUM[1]) );
  CLKINVX1 U1 ( .A(carry[19]), .Y(SUM[19]) );
  CLKINVX1 U2 ( .A(A_0_), .Y(SUM[0]) );
endmodule


module PPG_4 ( Mc, Mp, phase, PP );
  input [18:0] Mc;
  input [4:0] Mp;
  output [19:0] PP;
  input phase;
  wire   N56, N57, N58, N59, N60, N61, N62, N63, N64, N65, N66, N67, N68, N69,
         N70, N71, N72, N73, N74, N75, N76, N77, N78, N79, N80, N81, N82, N83,
         N84, N85, N86, N87, N88, N89, N90, N91, N92, N93, N94, n2, n3, n4, n5,
         n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n560, n570, n580, n590, n600, n610,
         n620, n630, n640, n650, n660, n670, n680, n690, n700, n710, n720,
         n730, n740, n750, n760;
  wire   [2:0] bitGroup;

  PPG_4_DW01_inc_0 add_43 ( .A_19_(n590), .A_18_(n600), .A_17_(n610), .A_16_(
        n620), .A_15_(n630), .A_14_(n640), .A_13_(n650), .A_12_(n660), .A_11_(
        n670), .A_10_(n580), .A_9_(n680), .A_8_(n690), .A_7_(n700), .A_6_(n710), .A_5_(n720), .A_4_(n730), .A_3_(n740), .A_2_(n750), .A_1_(n760), .SUM_19_(
        N74), .SUM_18_(N73), .SUM_17_(N72), .SUM_16_(N71), .SUM_15_(N70), 
        .SUM_14_(N69), .SUM_13_(N68), .SUM_12_(N67), .SUM_11_(N66), .SUM_10_(
        N65), .SUM_9_(N64), .SUM_8_(N63), .SUM_7_(N62), .SUM_6_(N61), .SUM_5_(
        N60), .SUM_4_(N59), .SUM_3_(N58), .SUM_2_(N57), .SUM_1_(N56) );
  PPG_4_DW01_inc_1 r297 ( .SUM({N94, N93, N92, N91, N90, N89, N88, N87, N86, 
        N85, N84, N83, N82, N81, N80, N79, N78, N77, N76, N75}), .A_18_(n590), 
        .A_17_(n600), .A_16_(n610), .A_15_(n620), .A_14_(n630), .A_13_(n640), 
        .A_12_(n650), .A_11_(n660), .A_10_(n670), .A_9_(n580), .A_8_(n680), 
        .A_7_(n690), .A_6_(n700), .A_5_(n710), .A_4_(n720), .A_3_(n730), 
        .A_2_(n740), .A_1_(n750), .A_0_(n760) );
  OAI21X1 U4 ( .A0(bitGroup[1]), .A1(bitGroup[0]), .B0(n45), .Y(n48) );
  AOI211XL U5 ( .A0(n49), .A1(n48), .B0(n47), .C0(n46), .Y(PP[19]) );
  NOR2XL U6 ( .A(N94), .B(n48), .Y(n46) );
  AND2XL U7 ( .A(n3), .B(n48), .Y(n4) );
  CLKBUFX3 U8 ( .A(n41), .Y(n53) );
  INVXL U9 ( .A(phase), .Y(n570) );
  CLKINVX1 U10 ( .A(N56), .Y(n50) );
  CLKINVX1 U11 ( .A(n53), .Y(n52) );
  NOR2XL U12 ( .A(n48), .B(bitGroup[2]), .Y(n41) );
  CLKBUFX3 U13 ( .A(n40), .Y(n54) );
  NOR2BXL U14 ( .AN(bitGroup[2]), .B(n48), .Y(n40) );
  CLKBUFX3 U15 ( .A(n44), .Y(n55) );
  NAND2X1 U16 ( .A(n4), .B(bitGroup[1]), .Y(n44) );
  CLKBUFX3 U17 ( .A(n39), .Y(n560) );
  NOR2BX1 U18 ( .AN(n4), .B(bitGroup[1]), .Y(n39) );
  CLKINVX1 U19 ( .A(Mc[1]), .Y(n750) );
  CLKINVX1 U20 ( .A(Mc[2]), .Y(n740) );
  CLKINVX1 U21 ( .A(Mc[3]), .Y(n730) );
  CLKINVX1 U22 ( .A(Mc[4]), .Y(n720) );
  CLKINVX1 U23 ( .A(Mc[5]), .Y(n710) );
  CLKINVX1 U24 ( .A(Mc[6]), .Y(n700) );
  CLKINVX1 U25 ( .A(Mc[7]), .Y(n690) );
  CLKINVX1 U26 ( .A(Mc[8]), .Y(n680) );
  CLKINVX1 U27 ( .A(Mc[9]), .Y(n580) );
  CLKINVX1 U28 ( .A(Mc[10]), .Y(n670) );
  CLKINVX1 U29 ( .A(Mc[11]), .Y(n660) );
  CLKINVX1 U30 ( .A(Mc[12]), .Y(n650) );
  CLKINVX1 U31 ( .A(Mc[13]), .Y(n640) );
  CLKINVX1 U32 ( .A(Mc[14]), .Y(n630) );
  CLKINVX1 U33 ( .A(Mc[15]), .Y(n620) );
  CLKINVX1 U34 ( .A(Mc[16]), .Y(n610) );
  CLKINVX1 U35 ( .A(Mc[17]), .Y(n600) );
  CLKINVX1 U36 ( .A(Mc[18]), .Y(n590) );
  CLKINVX1 U37 ( .A(Mc[0]), .Y(n760) );
  CLKINVX1 U38 ( .A(bitGroup[1]), .Y(n51) );
  AO22X2 U39 ( .A0(Mp[3]), .A1(phase), .B0(Mp[1]), .B1(n570), .Y(bitGroup[1])
         );
  AO22X1 U40 ( .A0(Mp[2]), .A1(phase), .B0(Mp[0]), .B1(n570), .Y(bitGroup[0])
         );
  AO22X1 U41 ( .A0(n570), .A1(Mp[2]), .B0(phase), .B1(Mp[4]), .Y(bitGroup[2])
         );
  NAND2X1 U42 ( .A(bitGroup[1]), .B(bitGroup[0]), .Y(n45) );
  NAND2X1 U43 ( .A(N75), .B(n54), .Y(n2) );
  XOR2X1 U44 ( .A(bitGroup[1]), .B(bitGroup[2]), .Y(n3) );
  NAND2X1 U45 ( .A(N56), .B(n560), .Y(n6) );
  AOI22X1 U46 ( .A0(N76), .A1(n54), .B0(Mc[1]), .B1(n53), .Y(n5) );
  OAI211X1 U47 ( .A0(n55), .A1(n50), .B0(n6), .C0(n5), .Y(PP[1]) );
  NAND2X1 U48 ( .A(N57), .B(n560), .Y(n8) );
  AOI22X1 U49 ( .A0(N77), .A1(n54), .B0(Mc[2]), .B1(n53), .Y(n7) );
  OAI211X1 U50 ( .A0(n55), .A1(n750), .B0(n8), .C0(n7), .Y(PP[2]) );
  NAND2X1 U51 ( .A(N58), .B(n560), .Y(n10) );
  AOI22X1 U52 ( .A0(N78), .A1(n54), .B0(Mc[3]), .B1(n53), .Y(n9) );
  OAI211X1 U53 ( .A0(n55), .A1(n740), .B0(n10), .C0(n9), .Y(PP[3]) );
  NAND2X1 U54 ( .A(N59), .B(n560), .Y(n12) );
  AOI22X1 U55 ( .A0(N79), .A1(n54), .B0(Mc[4]), .B1(n53), .Y(n11) );
  OAI211X1 U56 ( .A0(n55), .A1(n730), .B0(n12), .C0(n11), .Y(PP[4]) );
  NAND2X1 U57 ( .A(N60), .B(n560), .Y(n14) );
  AOI22X1 U58 ( .A0(N80), .A1(n54), .B0(Mc[5]), .B1(n53), .Y(n13) );
  OAI211X1 U59 ( .A0(n55), .A1(n720), .B0(n14), .C0(n13), .Y(PP[5]) );
  NAND2X1 U60 ( .A(N61), .B(n560), .Y(n16) );
  AOI22X1 U61 ( .A0(N81), .A1(n54), .B0(Mc[6]), .B1(n53), .Y(n15) );
  OAI211X1 U62 ( .A0(n55), .A1(n710), .B0(n16), .C0(n15), .Y(PP[6]) );
  NAND2X1 U63 ( .A(N62), .B(n560), .Y(n18) );
  AOI22X1 U64 ( .A0(N82), .A1(n54), .B0(Mc[7]), .B1(n53), .Y(n17) );
  OAI211X1 U65 ( .A0(n55), .A1(n700), .B0(n18), .C0(n17), .Y(PP[7]) );
  NAND2X1 U66 ( .A(N63), .B(n560), .Y(n20) );
  AOI22X1 U67 ( .A0(N83), .A1(n54), .B0(Mc[8]), .B1(n53), .Y(n19) );
  OAI211X1 U68 ( .A0(n55), .A1(n690), .B0(n20), .C0(n19), .Y(PP[8]) );
  NAND2X1 U69 ( .A(N64), .B(n560), .Y(n22) );
  AOI22X1 U70 ( .A0(N84), .A1(n54), .B0(Mc[9]), .B1(n53), .Y(n21) );
  OAI211X1 U71 ( .A0(n55), .A1(n680), .B0(n22), .C0(n21), .Y(PP[9]) );
  NAND2X1 U72 ( .A(N65), .B(n560), .Y(n24) );
  AOI22X1 U73 ( .A0(N85), .A1(n54), .B0(Mc[10]), .B1(n53), .Y(n23) );
  OAI211X1 U74 ( .A0(n55), .A1(n580), .B0(n24), .C0(n23), .Y(PP[10]) );
  NAND2X1 U75 ( .A(N66), .B(n560), .Y(n26) );
  AOI22X1 U76 ( .A0(N86), .A1(n54), .B0(Mc[11]), .B1(n53), .Y(n25) );
  OAI211X1 U77 ( .A0(n55), .A1(n670), .B0(n26), .C0(n25), .Y(PP[11]) );
  NAND2X1 U78 ( .A(N67), .B(n560), .Y(n28) );
  AOI22X1 U79 ( .A0(N87), .A1(n54), .B0(Mc[12]), .B1(n53), .Y(n27) );
  OAI211X1 U80 ( .A0(n55), .A1(n660), .B0(n28), .C0(n27), .Y(PP[12]) );
  NAND2X1 U81 ( .A(N68), .B(n560), .Y(n30) );
  AOI22X1 U82 ( .A0(N88), .A1(n54), .B0(Mc[13]), .B1(n53), .Y(n29) );
  OAI211X1 U83 ( .A0(n55), .A1(n650), .B0(n30), .C0(n29), .Y(PP[13]) );
  NAND2X1 U84 ( .A(N69), .B(n560), .Y(n32) );
  AOI22X1 U85 ( .A0(N89), .A1(n54), .B0(Mc[14]), .B1(n53), .Y(n31) );
  OAI211X1 U86 ( .A0(n55), .A1(n640), .B0(n32), .C0(n31), .Y(PP[14]) );
  NAND2X1 U87 ( .A(N70), .B(n560), .Y(n34) );
  AOI22X1 U88 ( .A0(N90), .A1(n54), .B0(Mc[15]), .B1(n53), .Y(n33) );
  OAI211X1 U89 ( .A0(n55), .A1(n630), .B0(n34), .C0(n33), .Y(PP[15]) );
  NAND2X1 U90 ( .A(N71), .B(n560), .Y(n36) );
  AOI22X1 U91 ( .A0(N91), .A1(n54), .B0(Mc[16]), .B1(n53), .Y(n35) );
  OAI211X1 U92 ( .A0(n55), .A1(n620), .B0(n36), .C0(n35), .Y(PP[16]) );
  NAND2X1 U93 ( .A(N72), .B(n560), .Y(n38) );
  AOI22X1 U94 ( .A0(N92), .A1(n54), .B0(n53), .B1(Mc[17]), .Y(n37) );
  OAI211X1 U95 ( .A0(n55), .A1(n610), .B0(n38), .C0(n37), .Y(PP[17]) );
  NAND2X1 U96 ( .A(N73), .B(n560), .Y(n43) );
  AOI22X1 U97 ( .A0(Mc[18]), .A1(n53), .B0(N93), .B1(n54), .Y(n42) );
  OAI211X1 U98 ( .A0(n55), .A1(n600), .B0(n43), .C0(n42), .Y(PP[18]) );
  OAI22XL U99 ( .A0(Mc[18]), .A1(n51), .B0(N74), .B1(bitGroup[1]), .Y(n49) );
  XOR2X1 U100 ( .A(n45), .B(bitGroup[2]), .Y(n47) );
  OAI21XL U101 ( .A0(n52), .A1(n50), .B0(n2), .Y(PP[0]) );
endmodule


module PPG_3_DW01_inc_0 ( A_19_, A_18_, A_17_, A_16_, A_15_, A_14_, A_13_, 
        A_12_, A_11_, A_10_, A_9_, A_8_, A_7_, A_6_, A_5_, A_4_, A_3_, A_2_, 
        A_1_, SUM_19_, SUM_18_, SUM_17_, SUM_16_, SUM_15_, SUM_14_, SUM_13_, 
        SUM_12_, SUM_11_, SUM_10_, SUM_9_, SUM_8_, SUM_7_, SUM_6_, SUM_5_, 
        SUM_4_, SUM_3_, SUM_2_, SUM_1_ );
  input A_19_, A_18_, A_17_, A_16_, A_15_, A_14_, A_13_, A_12_, A_11_, A_10_,
         A_9_, A_8_, A_7_, A_6_, A_5_, A_4_, A_3_, A_2_, A_1_;
  output SUM_19_, SUM_18_, SUM_17_, SUM_16_, SUM_15_, SUM_14_, SUM_13_,
         SUM_12_, SUM_11_, SUM_10_, SUM_9_, SUM_8_, SUM_7_, SUM_6_, SUM_5_,
         SUM_4_, SUM_3_, SUM_2_, SUM_1_;
  wire   carry_19_, carry_18_, carry_17_, carry_16_, carry_15_, carry_14_,
         carry_13_, carry_12_, carry_11_, carry_10_, carry_9_, carry_8_,
         carry_7_, carry_6_, carry_5_, carry_4_, carry_3_;

  ADDHXL U1_1_18 ( .A(A_18_), .B(carry_18_), .CO(carry_19_), .S(SUM_18_) );
  ADDHXL U1_1_17 ( .A(A_17_), .B(carry_17_), .CO(carry_18_), .S(SUM_17_) );
  ADDHXL U1_1_16 ( .A(A_16_), .B(carry_16_), .CO(carry_17_), .S(SUM_16_) );
  ADDHXL U1_1_15 ( .A(A_15_), .B(carry_15_), .CO(carry_16_), .S(SUM_15_) );
  ADDHXL U1_1_14 ( .A(A_14_), .B(carry_14_), .CO(carry_15_), .S(SUM_14_) );
  ADDHXL U1_1_13 ( .A(A_13_), .B(carry_13_), .CO(carry_14_), .S(SUM_13_) );
  ADDHXL U1_1_12 ( .A(A_12_), .B(carry_12_), .CO(carry_13_), .S(SUM_12_) );
  ADDHXL U1_1_11 ( .A(A_11_), .B(carry_11_), .CO(carry_12_), .S(SUM_11_) );
  ADDHXL U1_1_10 ( .A(A_10_), .B(carry_10_), .CO(carry_11_), .S(SUM_10_) );
  ADDHXL U1_1_9 ( .A(A_9_), .B(carry_9_), .CO(carry_10_), .S(SUM_9_) );
  ADDHXL U1_1_8 ( .A(A_8_), .B(carry_8_), .CO(carry_9_), .S(SUM_8_) );
  ADDHXL U1_1_7 ( .A(A_7_), .B(carry_7_), .CO(carry_8_), .S(SUM_7_) );
  ADDHXL U1_1_6 ( .A(A_6_), .B(carry_6_), .CO(carry_7_), .S(SUM_6_) );
  ADDHXL U1_1_5 ( .A(A_5_), .B(carry_5_), .CO(carry_6_), .S(SUM_5_) );
  ADDHXL U1_1_4 ( .A(A_4_), .B(carry_4_), .CO(carry_5_), .S(SUM_4_) );
  ADDHXL U1_1_3 ( .A(A_3_), .B(carry_3_), .CO(carry_4_), .S(SUM_3_) );
  ADDHXL U1_1_2 ( .A(A_2_), .B(A_1_), .CO(carry_3_), .S(SUM_2_) );
  CLKINVX1 U1 ( .A(A_1_), .Y(SUM_1_) );
  XOR2X1 U2 ( .A(carry_19_), .B(A_19_), .Y(SUM_19_) );
endmodule


module PPG_3_DW01_inc_1 ( SUM, A_18_, A_17_, A_16_, A_15_, A_14_, A_13_, A_12_, 
        A_11_, A_10_, A_9_, A_8_, A_7_, A_6_, A_5_, A_4_, A_3_, A_2_, A_1_, 
        A_0_ );
  output [19:0] SUM;
  input A_18_, A_17_, A_16_, A_15_, A_14_, A_13_, A_12_, A_11_, A_10_, A_9_,
         A_8_, A_7_, A_6_, A_5_, A_4_, A_3_, A_2_, A_1_, A_0_;

  wire   [19:2] carry;

  ADDHXL U1_1_18 ( .A(A_18_), .B(carry[18]), .CO(carry[19]), .S(SUM[18]) );
  ADDHXL U1_1_17 ( .A(A_17_), .B(carry[17]), .CO(carry[18]), .S(SUM[17]) );
  ADDHXL U1_1_16 ( .A(A_16_), .B(carry[16]), .CO(carry[17]), .S(SUM[16]) );
  ADDHXL U1_1_15 ( .A(A_15_), .B(carry[15]), .CO(carry[16]), .S(SUM[15]) );
  ADDHXL U1_1_14 ( .A(A_14_), .B(carry[14]), .CO(carry[15]), .S(SUM[14]) );
  ADDHXL U1_1_13 ( .A(A_13_), .B(carry[13]), .CO(carry[14]), .S(SUM[13]) );
  ADDHXL U1_1_12 ( .A(A_12_), .B(carry[12]), .CO(carry[13]), .S(SUM[12]) );
  ADDHXL U1_1_11 ( .A(A_11_), .B(carry[11]), .CO(carry[12]), .S(SUM[11]) );
  ADDHXL U1_1_10 ( .A(A_10_), .B(carry[10]), .CO(carry[11]), .S(SUM[10]) );
  ADDHXL U1_1_9 ( .A(A_9_), .B(carry[9]), .CO(carry[10]), .S(SUM[9]) );
  ADDHXL U1_1_8 ( .A(A_8_), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  ADDHXL U1_1_7 ( .A(A_7_), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  ADDHXL U1_1_6 ( .A(A_6_), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_5 ( .A(A_5_), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A_4_), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_3 ( .A(A_3_), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_2 ( .A(A_2_), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_1 ( .A(A_1_), .B(A_0_), .CO(carry[2]), .S(SUM[1]) );
  CLKINVX1 U1 ( .A(carry[19]), .Y(SUM[19]) );
  CLKINVX1 U2 ( .A(A_0_), .Y(SUM[0]) );
endmodule


module PPG_3 ( Mc, Mp, phase, PP );
  input [18:0] Mc;
  input [4:0] Mp;
  output [19:0] PP;
  input phase;
  wire   N56, N57, N58, N59, N60, N61, N62, N63, N64, N65, N66, N67, N68, N69,
         N70, N71, N72, N73, N74, N75, N76, N77, N78, N79, N80, N81, N82, N83,
         N84, N85, N86, N87, N88, N89, N90, N91, N92, N93, N94, n2, n3, n4, n5,
         n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n560, n570, n580, n590, n600, n610,
         n620, n630, n640, n650, n660, n670, n680, n690, n700, n710, n720,
         n730, n740, n750, n760;
  wire   [2:0] bitGroup;

  PPG_3_DW01_inc_0 add_43 ( .A_19_(n590), .A_18_(n600), .A_17_(n610), .A_16_(
        n620), .A_15_(n630), .A_14_(n640), .A_13_(n650), .A_12_(n660), .A_11_(
        n670), .A_10_(n580), .A_9_(n680), .A_8_(n690), .A_7_(n700), .A_6_(n710), .A_5_(n720), .A_4_(n730), .A_3_(n740), .A_2_(n750), .A_1_(n760), .SUM_19_(
        N74), .SUM_18_(N73), .SUM_17_(N72), .SUM_16_(N71), .SUM_15_(N70), 
        .SUM_14_(N69), .SUM_13_(N68), .SUM_12_(N67), .SUM_11_(N66), .SUM_10_(
        N65), .SUM_9_(N64), .SUM_8_(N63), .SUM_7_(N62), .SUM_6_(N61), .SUM_5_(
        N60), .SUM_4_(N59), .SUM_3_(N58), .SUM_2_(N57), .SUM_1_(N56) );
  PPG_3_DW01_inc_1 r297 ( .SUM({N94, N93, N92, N91, N90, N89, N88, N87, N86, 
        N85, N84, N83, N82, N81, N80, N79, N78, N77, N76, N75}), .A_18_(n590), 
        .A_17_(n600), .A_16_(n610), .A_15_(n620), .A_14_(n630), .A_13_(n640), 
        .A_12_(n650), .A_11_(n660), .A_10_(n670), .A_9_(n580), .A_8_(n680), 
        .A_7_(n690), .A_6_(n700), .A_5_(n710), .A_4_(n720), .A_3_(n730), 
        .A_2_(n740), .A_1_(n750), .A_0_(n760) );
  CLKBUFX3 U4 ( .A(n40), .Y(n54) );
  AO22X1 U5 ( .A0(Mp[3]), .A1(phase), .B0(Mp[1]), .B1(n570), .Y(bitGroup[1])
         );
  OAI21X1 U6 ( .A0(bitGroup[1]), .A1(bitGroup[0]), .B0(n45), .Y(n48) );
  NOR2BXL U7 ( .AN(n4), .B(bitGroup[1]), .Y(n39) );
  CLKBUFX3 U8 ( .A(n41), .Y(n53) );
  AOI211XL U9 ( .A0(n49), .A1(n48), .B0(n47), .C0(n46), .Y(PP[19]) );
  XOR2XL U10 ( .A(n45), .B(bitGroup[2]), .Y(n47) );
  NOR2XL U11 ( .A(N94), .B(n48), .Y(n46) );
  OAI211XL U12 ( .A0(n55), .A1(n50), .B0(n6), .C0(n5), .Y(PP[1]) );
  AOI22XL U13 ( .A0(N76), .A1(n54), .B0(Mc[1]), .B1(n53), .Y(n5) );
  NAND2XL U14 ( .A(bitGroup[1]), .B(bitGroup[0]), .Y(n45) );
  AND2XL U15 ( .A(n3), .B(n48), .Y(n4) );
  XOR2XL U16 ( .A(bitGroup[1]), .B(bitGroup[2]), .Y(n3) );
  NAND2XL U17 ( .A(n4), .B(bitGroup[1]), .Y(n44) );
  INVXL U18 ( .A(bitGroup[1]), .Y(n51) );
  INVXL U19 ( .A(phase), .Y(n570) );
  CLKINVX1 U20 ( .A(N56), .Y(n50) );
  CLKINVX1 U21 ( .A(n53), .Y(n52) );
  NOR2XL U22 ( .A(n48), .B(bitGroup[2]), .Y(n41) );
  NOR2BXL U23 ( .AN(bitGroup[2]), .B(n48), .Y(n40) );
  CLKBUFX3 U24 ( .A(n44), .Y(n55) );
  CLKBUFX3 U25 ( .A(n39), .Y(n560) );
  CLKINVX1 U26 ( .A(Mc[1]), .Y(n750) );
  CLKINVX1 U27 ( .A(Mc[2]), .Y(n740) );
  CLKINVX1 U28 ( .A(Mc[3]), .Y(n730) );
  CLKINVX1 U29 ( .A(Mc[4]), .Y(n720) );
  CLKINVX1 U30 ( .A(Mc[5]), .Y(n710) );
  CLKINVX1 U31 ( .A(Mc[6]), .Y(n700) );
  CLKINVX1 U32 ( .A(Mc[7]), .Y(n690) );
  CLKINVX1 U33 ( .A(Mc[8]), .Y(n680) );
  CLKINVX1 U34 ( .A(Mc[9]), .Y(n580) );
  CLKINVX1 U35 ( .A(Mc[10]), .Y(n670) );
  CLKINVX1 U36 ( .A(Mc[11]), .Y(n660) );
  CLKINVX1 U37 ( .A(Mc[12]), .Y(n650) );
  CLKINVX1 U38 ( .A(Mc[13]), .Y(n640) );
  CLKINVX1 U39 ( .A(Mc[14]), .Y(n630) );
  CLKINVX1 U40 ( .A(Mc[15]), .Y(n620) );
  CLKINVX1 U41 ( .A(Mc[16]), .Y(n610) );
  CLKINVX1 U42 ( .A(Mc[17]), .Y(n600) );
  CLKINVX1 U43 ( .A(Mc[18]), .Y(n590) );
  CLKINVX1 U44 ( .A(Mc[0]), .Y(n760) );
  AO22X1 U45 ( .A0(Mp[2]), .A1(phase), .B0(Mp[0]), .B1(n570), .Y(bitGroup[0])
         );
  AO22X1 U46 ( .A0(n570), .A1(Mp[2]), .B0(phase), .B1(Mp[4]), .Y(bitGroup[2])
         );
  NAND2X1 U47 ( .A(N75), .B(n54), .Y(n2) );
  NAND2X1 U48 ( .A(N56), .B(n560), .Y(n6) );
  NAND2X1 U49 ( .A(N57), .B(n560), .Y(n8) );
  AOI22X1 U50 ( .A0(N77), .A1(n54), .B0(Mc[2]), .B1(n53), .Y(n7) );
  OAI211X1 U51 ( .A0(n55), .A1(n750), .B0(n8), .C0(n7), .Y(PP[2]) );
  NAND2X1 U52 ( .A(N58), .B(n560), .Y(n10) );
  AOI22X1 U53 ( .A0(N78), .A1(n54), .B0(Mc[3]), .B1(n53), .Y(n9) );
  OAI211X1 U54 ( .A0(n55), .A1(n740), .B0(n10), .C0(n9), .Y(PP[3]) );
  NAND2X1 U55 ( .A(N59), .B(n560), .Y(n12) );
  AOI22X1 U56 ( .A0(N79), .A1(n54), .B0(Mc[4]), .B1(n53), .Y(n11) );
  OAI211X1 U57 ( .A0(n55), .A1(n730), .B0(n12), .C0(n11), .Y(PP[4]) );
  NAND2X1 U58 ( .A(N60), .B(n560), .Y(n14) );
  AOI22X1 U59 ( .A0(N80), .A1(n54), .B0(Mc[5]), .B1(n53), .Y(n13) );
  OAI211X1 U60 ( .A0(n55), .A1(n720), .B0(n14), .C0(n13), .Y(PP[5]) );
  NAND2X1 U61 ( .A(N61), .B(n560), .Y(n16) );
  AOI22X1 U62 ( .A0(N81), .A1(n54), .B0(Mc[6]), .B1(n53), .Y(n15) );
  OAI211X1 U63 ( .A0(n55), .A1(n710), .B0(n16), .C0(n15), .Y(PP[6]) );
  NAND2X1 U64 ( .A(N62), .B(n560), .Y(n18) );
  AOI22X1 U65 ( .A0(N82), .A1(n54), .B0(Mc[7]), .B1(n53), .Y(n17) );
  OAI211X1 U66 ( .A0(n55), .A1(n700), .B0(n18), .C0(n17), .Y(PP[7]) );
  NAND2X1 U67 ( .A(N63), .B(n560), .Y(n20) );
  AOI22X1 U68 ( .A0(N83), .A1(n54), .B0(Mc[8]), .B1(n53), .Y(n19) );
  OAI211X1 U69 ( .A0(n55), .A1(n690), .B0(n20), .C0(n19), .Y(PP[8]) );
  NAND2X1 U70 ( .A(N64), .B(n560), .Y(n22) );
  AOI22X1 U71 ( .A0(N84), .A1(n54), .B0(Mc[9]), .B1(n53), .Y(n21) );
  OAI211X1 U72 ( .A0(n55), .A1(n680), .B0(n22), .C0(n21), .Y(PP[9]) );
  NAND2X1 U73 ( .A(N65), .B(n560), .Y(n24) );
  AOI22X1 U74 ( .A0(N85), .A1(n54), .B0(Mc[10]), .B1(n53), .Y(n23) );
  OAI211X1 U75 ( .A0(n55), .A1(n580), .B0(n24), .C0(n23), .Y(PP[10]) );
  NAND2X1 U76 ( .A(N66), .B(n560), .Y(n26) );
  AOI22X1 U77 ( .A0(N86), .A1(n54), .B0(Mc[11]), .B1(n53), .Y(n25) );
  OAI211X1 U78 ( .A0(n55), .A1(n670), .B0(n26), .C0(n25), .Y(PP[11]) );
  NAND2X1 U79 ( .A(N67), .B(n560), .Y(n28) );
  AOI22X1 U80 ( .A0(N87), .A1(n54), .B0(Mc[12]), .B1(n53), .Y(n27) );
  OAI211X1 U81 ( .A0(n55), .A1(n660), .B0(n28), .C0(n27), .Y(PP[12]) );
  NAND2X1 U82 ( .A(N68), .B(n560), .Y(n30) );
  AOI22X1 U83 ( .A0(N88), .A1(n54), .B0(Mc[13]), .B1(n53), .Y(n29) );
  OAI211X1 U84 ( .A0(n55), .A1(n650), .B0(n30), .C0(n29), .Y(PP[13]) );
  NAND2X1 U85 ( .A(N69), .B(n560), .Y(n32) );
  AOI22X1 U86 ( .A0(N89), .A1(n54), .B0(Mc[14]), .B1(n53), .Y(n31) );
  OAI211X1 U87 ( .A0(n55), .A1(n640), .B0(n32), .C0(n31), .Y(PP[14]) );
  NAND2X1 U88 ( .A(N70), .B(n560), .Y(n34) );
  AOI22X1 U89 ( .A0(N90), .A1(n54), .B0(Mc[15]), .B1(n53), .Y(n33) );
  OAI211X1 U90 ( .A0(n55), .A1(n630), .B0(n34), .C0(n33), .Y(PP[15]) );
  NAND2X1 U91 ( .A(N71), .B(n560), .Y(n36) );
  AOI22X1 U92 ( .A0(N91), .A1(n54), .B0(Mc[16]), .B1(n53), .Y(n35) );
  OAI211X1 U93 ( .A0(n55), .A1(n620), .B0(n36), .C0(n35), .Y(PP[16]) );
  NAND2X1 U94 ( .A(N72), .B(n560), .Y(n38) );
  AOI22X1 U95 ( .A0(N92), .A1(n54), .B0(n53), .B1(Mc[17]), .Y(n37) );
  OAI211X1 U96 ( .A0(n55), .A1(n610), .B0(n38), .C0(n37), .Y(PP[17]) );
  NAND2X1 U97 ( .A(N73), .B(n560), .Y(n43) );
  AOI22X1 U98 ( .A0(Mc[18]), .A1(n53), .B0(N93), .B1(n54), .Y(n42) );
  OAI211X1 U99 ( .A0(n55), .A1(n600), .B0(n43), .C0(n42), .Y(PP[18]) );
  OAI22XL U100 ( .A0(Mc[18]), .A1(n51), .B0(N74), .B1(bitGroup[1]), .Y(n49) );
  OAI21XL U101 ( .A0(n52), .A1(n50), .B0(n2), .Y(PP[0]) );
endmodule


module PPG_2_DW01_inc_0 ( A_19_, A_18_, A_17_, A_16_, A_15_, A_14_, A_13_, 
        A_12_, A_11_, A_10_, A_9_, A_8_, A_7_, A_6_, A_5_, A_4_, A_3_, A_2_, 
        A_1_, SUM_19_, SUM_18_, SUM_17_, SUM_16_, SUM_15_, SUM_14_, SUM_13_, 
        SUM_12_, SUM_11_, SUM_10_, SUM_9_, SUM_8_, SUM_7_, SUM_6_, SUM_5_, 
        SUM_4_, SUM_3_, SUM_2_, SUM_1_ );
  input A_19_, A_18_, A_17_, A_16_, A_15_, A_14_, A_13_, A_12_, A_11_, A_10_,
         A_9_, A_8_, A_7_, A_6_, A_5_, A_4_, A_3_, A_2_, A_1_;
  output SUM_19_, SUM_18_, SUM_17_, SUM_16_, SUM_15_, SUM_14_, SUM_13_,
         SUM_12_, SUM_11_, SUM_10_, SUM_9_, SUM_8_, SUM_7_, SUM_6_, SUM_5_,
         SUM_4_, SUM_3_, SUM_2_, SUM_1_;
  wire   carry_19_, carry_18_, carry_17_, carry_16_, carry_15_, carry_14_,
         carry_13_, carry_12_, carry_11_, carry_10_, carry_9_, carry_8_,
         carry_7_, carry_6_, carry_5_, carry_4_, carry_3_;

  ADDHXL U1_1_18 ( .A(A_18_), .B(carry_18_), .CO(carry_19_), .S(SUM_18_) );
  ADDHXL U1_1_17 ( .A(A_17_), .B(carry_17_), .CO(carry_18_), .S(SUM_17_) );
  ADDHXL U1_1_16 ( .A(A_16_), .B(carry_16_), .CO(carry_17_), .S(SUM_16_) );
  ADDHXL U1_1_15 ( .A(A_15_), .B(carry_15_), .CO(carry_16_), .S(SUM_15_) );
  ADDHXL U1_1_14 ( .A(A_14_), .B(carry_14_), .CO(carry_15_), .S(SUM_14_) );
  ADDHXL U1_1_13 ( .A(A_13_), .B(carry_13_), .CO(carry_14_), .S(SUM_13_) );
  ADDHXL U1_1_12 ( .A(A_12_), .B(carry_12_), .CO(carry_13_), .S(SUM_12_) );
  ADDHXL U1_1_11 ( .A(A_11_), .B(carry_11_), .CO(carry_12_), .S(SUM_11_) );
  ADDHXL U1_1_10 ( .A(A_10_), .B(carry_10_), .CO(carry_11_), .S(SUM_10_) );
  ADDHXL U1_1_9 ( .A(A_9_), .B(carry_9_), .CO(carry_10_), .S(SUM_9_) );
  ADDHXL U1_1_8 ( .A(A_8_), .B(carry_8_), .CO(carry_9_), .S(SUM_8_) );
  ADDHXL U1_1_7 ( .A(A_7_), .B(carry_7_), .CO(carry_8_), .S(SUM_7_) );
  ADDHXL U1_1_6 ( .A(A_6_), .B(carry_6_), .CO(carry_7_), .S(SUM_6_) );
  ADDHXL U1_1_5 ( .A(A_5_), .B(carry_5_), .CO(carry_6_), .S(SUM_5_) );
  ADDHXL U1_1_4 ( .A(A_4_), .B(carry_4_), .CO(carry_5_), .S(SUM_4_) );
  ADDHXL U1_1_3 ( .A(A_3_), .B(carry_3_), .CO(carry_4_), .S(SUM_3_) );
  ADDHXL U1_1_2 ( .A(A_2_), .B(A_1_), .CO(carry_3_), .S(SUM_2_) );
  CLKINVX1 U1 ( .A(A_1_), .Y(SUM_1_) );
  XOR2X1 U2 ( .A(carry_19_), .B(A_19_), .Y(SUM_19_) );
endmodule


module PPG_2_DW01_inc_1 ( SUM, A_18_, A_17_, A_16_, A_15_, A_14_, A_13_, A_12_, 
        A_11_, A_10_, A_9_, A_8_, A_7_, A_6_, A_5_, A_4_, A_3_, A_2_, A_1_, 
        A_0_ );
  output [19:0] SUM;
  input A_18_, A_17_, A_16_, A_15_, A_14_, A_13_, A_12_, A_11_, A_10_, A_9_,
         A_8_, A_7_, A_6_, A_5_, A_4_, A_3_, A_2_, A_1_, A_0_;

  wire   [19:2] carry;

  ADDHXL U1_1_18 ( .A(A_18_), .B(carry[18]), .CO(carry[19]), .S(SUM[18]) );
  ADDHXL U1_1_17 ( .A(A_17_), .B(carry[17]), .CO(carry[18]), .S(SUM[17]) );
  ADDHXL U1_1_16 ( .A(A_16_), .B(carry[16]), .CO(carry[17]), .S(SUM[16]) );
  ADDHXL U1_1_15 ( .A(A_15_), .B(carry[15]), .CO(carry[16]), .S(SUM[15]) );
  ADDHXL U1_1_14 ( .A(A_14_), .B(carry[14]), .CO(carry[15]), .S(SUM[14]) );
  ADDHXL U1_1_13 ( .A(A_13_), .B(carry[13]), .CO(carry[14]), .S(SUM[13]) );
  ADDHXL U1_1_12 ( .A(A_12_), .B(carry[12]), .CO(carry[13]), .S(SUM[12]) );
  ADDHXL U1_1_11 ( .A(A_11_), .B(carry[11]), .CO(carry[12]), .S(SUM[11]) );
  ADDHXL U1_1_10 ( .A(A_10_), .B(carry[10]), .CO(carry[11]), .S(SUM[10]) );
  ADDHXL U1_1_9 ( .A(A_9_), .B(carry[9]), .CO(carry[10]), .S(SUM[9]) );
  ADDHXL U1_1_8 ( .A(A_8_), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  ADDHXL U1_1_7 ( .A(A_7_), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  ADDHXL U1_1_6 ( .A(A_6_), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_5 ( .A(A_5_), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A_4_), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_3 ( .A(A_3_), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_2 ( .A(A_2_), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_1 ( .A(A_1_), .B(A_0_), .CO(carry[2]), .S(SUM[1]) );
  CLKINVX1 U1 ( .A(carry[19]), .Y(SUM[19]) );
  CLKINVX1 U2 ( .A(A_0_), .Y(SUM[0]) );
endmodule


module PPG_2 ( Mc, Mp, phase, PP );
  input [18:0] Mc;
  input [4:0] Mp;
  output [19:0] PP;
  input phase;
  wire   N56, N57, N58, N59, N60, N61, N62, N63, N64, N65, N66, N67, N68, N69,
         N70, N71, N72, N73, N74, N75, N76, N77, N78, N79, N80, N81, N82, N83,
         N84, N85, N86, N87, N88, N89, N90, N91, N92, N93, N94, n2, n3, n4, n5,
         n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n560, n570, n580, n590, n600, n610,
         n620, n630, n640, n650, n660, n670, n680, n690, n700, n710, n720,
         n730, n740, n750, n760;
  wire   [2:0] bitGroup;

  PPG_2_DW01_inc_0 add_43 ( .A_19_(n590), .A_18_(n600), .A_17_(n610), .A_16_(
        n620), .A_15_(n630), .A_14_(n640), .A_13_(n650), .A_12_(n660), .A_11_(
        n670), .A_10_(n580), .A_9_(n680), .A_8_(n690), .A_7_(n700), .A_6_(n710), .A_5_(n720), .A_4_(n730), .A_3_(n740), .A_2_(n750), .A_1_(n760), .SUM_19_(
        N74), .SUM_18_(N73), .SUM_17_(N72), .SUM_16_(N71), .SUM_15_(N70), 
        .SUM_14_(N69), .SUM_13_(N68), .SUM_12_(N67), .SUM_11_(N66), .SUM_10_(
        N65), .SUM_9_(N64), .SUM_8_(N63), .SUM_7_(N62), .SUM_6_(N61), .SUM_5_(
        N60), .SUM_4_(N59), .SUM_3_(N58), .SUM_2_(N57), .SUM_1_(N56) );
  PPG_2_DW01_inc_1 r297 ( .SUM({N94, N93, N92, N91, N90, N89, N88, N87, N86, 
        N85, N84, N83, N82, N81, N80, N79, N78, N77, N76, N75}), .A_18_(n590), 
        .A_17_(n600), .A_16_(n610), .A_15_(n620), .A_14_(n630), .A_13_(n640), 
        .A_12_(n650), .A_11_(n660), .A_10_(n670), .A_9_(n580), .A_8_(n680), 
        .A_7_(n690), .A_6_(n700), .A_5_(n710), .A_4_(n720), .A_3_(n730), 
        .A_2_(n740), .A_1_(n750), .A_0_(n760) );
  CLKBUFX3 U4 ( .A(n41), .Y(n53) );
  AO22X1 U5 ( .A0(Mp[3]), .A1(phase), .B0(Mp[1]), .B1(n570), .Y(bitGroup[1])
         );
  CLKBUFX3 U6 ( .A(n40), .Y(n54) );
  INVXL U7 ( .A(n53), .Y(n52) );
  OAI21X1 U8 ( .A0(bitGroup[1]), .A1(bitGroup[0]), .B0(n45), .Y(n48) );
  NAND2XL U9 ( .A(n4), .B(bitGroup[1]), .Y(n44) );
  NOR2BXL U10 ( .AN(n4), .B(bitGroup[1]), .Y(n39) );
  AOI211XL U11 ( .A0(n49), .A1(n48), .B0(n47), .C0(n46), .Y(PP[19]) );
  XOR2XL U12 ( .A(n45), .B(bitGroup[2]), .Y(n47) );
  NOR2XL U13 ( .A(N94), .B(n48), .Y(n46) );
  NAND2XL U14 ( .A(bitGroup[1]), .B(bitGroup[0]), .Y(n45) );
  AND2XL U15 ( .A(n3), .B(n48), .Y(n4) );
  XOR2XL U16 ( .A(bitGroup[1]), .B(bitGroup[2]), .Y(n3) );
  INVXL U17 ( .A(bitGroup[1]), .Y(n51) );
  INVXL U18 ( .A(phase), .Y(n570) );
  CLKINVX1 U19 ( .A(N56), .Y(n50) );
  NOR2XL U20 ( .A(n48), .B(bitGroup[2]), .Y(n41) );
  NOR2BXL U21 ( .AN(bitGroup[2]), .B(n48), .Y(n40) );
  CLKBUFX3 U22 ( .A(n44), .Y(n55) );
  CLKBUFX3 U23 ( .A(n39), .Y(n560) );
  CLKINVX1 U24 ( .A(Mc[1]), .Y(n750) );
  CLKINVX1 U25 ( .A(Mc[2]), .Y(n740) );
  CLKINVX1 U26 ( .A(Mc[3]), .Y(n730) );
  CLKINVX1 U27 ( .A(Mc[4]), .Y(n720) );
  CLKINVX1 U28 ( .A(Mc[5]), .Y(n710) );
  CLKINVX1 U29 ( .A(Mc[6]), .Y(n700) );
  CLKINVX1 U30 ( .A(Mc[7]), .Y(n690) );
  CLKINVX1 U31 ( .A(Mc[8]), .Y(n680) );
  CLKINVX1 U32 ( .A(Mc[9]), .Y(n580) );
  CLKINVX1 U33 ( .A(Mc[10]), .Y(n670) );
  CLKINVX1 U34 ( .A(Mc[11]), .Y(n660) );
  CLKINVX1 U35 ( .A(Mc[12]), .Y(n650) );
  CLKINVX1 U36 ( .A(Mc[13]), .Y(n640) );
  CLKINVX1 U37 ( .A(Mc[14]), .Y(n630) );
  CLKINVX1 U38 ( .A(Mc[15]), .Y(n620) );
  CLKINVX1 U39 ( .A(Mc[16]), .Y(n610) );
  CLKINVX1 U40 ( .A(Mc[17]), .Y(n600) );
  CLKINVX1 U41 ( .A(Mc[18]), .Y(n590) );
  CLKINVX1 U42 ( .A(Mc[0]), .Y(n760) );
  AO22X1 U43 ( .A0(Mp[2]), .A1(phase), .B0(Mp[0]), .B1(n570), .Y(bitGroup[0])
         );
  AO22X1 U44 ( .A0(n570), .A1(Mp[2]), .B0(phase), .B1(Mp[4]), .Y(bitGroup[2])
         );
  NAND2X1 U45 ( .A(N75), .B(n54), .Y(n2) );
  NAND2X1 U46 ( .A(N56), .B(n560), .Y(n6) );
  AOI22X1 U47 ( .A0(N76), .A1(n54), .B0(Mc[1]), .B1(n53), .Y(n5) );
  OAI211X1 U48 ( .A0(n55), .A1(n50), .B0(n6), .C0(n5), .Y(PP[1]) );
  NAND2X1 U49 ( .A(N57), .B(n560), .Y(n8) );
  AOI22X1 U50 ( .A0(N77), .A1(n54), .B0(Mc[2]), .B1(n53), .Y(n7) );
  OAI211X1 U51 ( .A0(n55), .A1(n750), .B0(n8), .C0(n7), .Y(PP[2]) );
  NAND2X1 U52 ( .A(N58), .B(n560), .Y(n10) );
  AOI22X1 U53 ( .A0(N78), .A1(n54), .B0(Mc[3]), .B1(n53), .Y(n9) );
  OAI211X1 U54 ( .A0(n55), .A1(n740), .B0(n10), .C0(n9), .Y(PP[3]) );
  NAND2X1 U55 ( .A(N59), .B(n560), .Y(n12) );
  AOI22X1 U56 ( .A0(N79), .A1(n54), .B0(Mc[4]), .B1(n53), .Y(n11) );
  OAI211X1 U57 ( .A0(n55), .A1(n730), .B0(n12), .C0(n11), .Y(PP[4]) );
  NAND2X1 U58 ( .A(N60), .B(n560), .Y(n14) );
  AOI22X1 U59 ( .A0(N80), .A1(n54), .B0(Mc[5]), .B1(n53), .Y(n13) );
  OAI211X1 U60 ( .A0(n55), .A1(n720), .B0(n14), .C0(n13), .Y(PP[5]) );
  NAND2X1 U61 ( .A(N61), .B(n560), .Y(n16) );
  AOI22X1 U62 ( .A0(N81), .A1(n54), .B0(Mc[6]), .B1(n53), .Y(n15) );
  OAI211X1 U63 ( .A0(n55), .A1(n710), .B0(n16), .C0(n15), .Y(PP[6]) );
  NAND2X1 U64 ( .A(N62), .B(n560), .Y(n18) );
  AOI22X1 U65 ( .A0(N82), .A1(n54), .B0(Mc[7]), .B1(n53), .Y(n17) );
  OAI211X1 U66 ( .A0(n55), .A1(n700), .B0(n18), .C0(n17), .Y(PP[7]) );
  NAND2X1 U67 ( .A(N63), .B(n560), .Y(n20) );
  AOI22X1 U68 ( .A0(N83), .A1(n54), .B0(Mc[8]), .B1(n53), .Y(n19) );
  OAI211X1 U69 ( .A0(n55), .A1(n690), .B0(n20), .C0(n19), .Y(PP[8]) );
  NAND2X1 U70 ( .A(N64), .B(n560), .Y(n22) );
  AOI22X1 U71 ( .A0(N84), .A1(n54), .B0(Mc[9]), .B1(n53), .Y(n21) );
  OAI211X1 U72 ( .A0(n55), .A1(n680), .B0(n22), .C0(n21), .Y(PP[9]) );
  NAND2X1 U73 ( .A(N65), .B(n560), .Y(n24) );
  AOI22X1 U74 ( .A0(N85), .A1(n54), .B0(Mc[10]), .B1(n53), .Y(n23) );
  OAI211X1 U75 ( .A0(n55), .A1(n580), .B0(n24), .C0(n23), .Y(PP[10]) );
  NAND2X1 U76 ( .A(N66), .B(n560), .Y(n26) );
  AOI22X1 U77 ( .A0(N86), .A1(n54), .B0(Mc[11]), .B1(n53), .Y(n25) );
  OAI211X1 U78 ( .A0(n55), .A1(n670), .B0(n26), .C0(n25), .Y(PP[11]) );
  NAND2X1 U79 ( .A(N67), .B(n560), .Y(n28) );
  AOI22X1 U80 ( .A0(N87), .A1(n54), .B0(Mc[12]), .B1(n53), .Y(n27) );
  OAI211X1 U81 ( .A0(n55), .A1(n660), .B0(n28), .C0(n27), .Y(PP[12]) );
  NAND2X1 U82 ( .A(N68), .B(n560), .Y(n30) );
  AOI22X1 U83 ( .A0(N88), .A1(n54), .B0(Mc[13]), .B1(n53), .Y(n29) );
  OAI211X1 U84 ( .A0(n55), .A1(n650), .B0(n30), .C0(n29), .Y(PP[13]) );
  NAND2X1 U85 ( .A(N69), .B(n560), .Y(n32) );
  AOI22X1 U86 ( .A0(N89), .A1(n54), .B0(Mc[14]), .B1(n53), .Y(n31) );
  OAI211X1 U87 ( .A0(n55), .A1(n640), .B0(n32), .C0(n31), .Y(PP[14]) );
  NAND2X1 U88 ( .A(N70), .B(n560), .Y(n34) );
  AOI22X1 U89 ( .A0(N90), .A1(n54), .B0(Mc[15]), .B1(n53), .Y(n33) );
  OAI211X1 U90 ( .A0(n55), .A1(n630), .B0(n34), .C0(n33), .Y(PP[15]) );
  NAND2X1 U91 ( .A(N71), .B(n560), .Y(n36) );
  AOI22X1 U92 ( .A0(N91), .A1(n54), .B0(Mc[16]), .B1(n53), .Y(n35) );
  OAI211X1 U93 ( .A0(n55), .A1(n620), .B0(n36), .C0(n35), .Y(PP[16]) );
  NAND2X1 U94 ( .A(N72), .B(n560), .Y(n38) );
  AOI22X1 U95 ( .A0(N92), .A1(n54), .B0(n53), .B1(Mc[17]), .Y(n37) );
  OAI211X1 U96 ( .A0(n55), .A1(n610), .B0(n38), .C0(n37), .Y(PP[17]) );
  NAND2X1 U97 ( .A(N73), .B(n560), .Y(n43) );
  AOI22X1 U98 ( .A0(Mc[18]), .A1(n53), .B0(N93), .B1(n54), .Y(n42) );
  OAI211X1 U99 ( .A0(n55), .A1(n600), .B0(n43), .C0(n42), .Y(PP[18]) );
  OAI22XL U100 ( .A0(Mc[18]), .A1(n51), .B0(N74), .B1(bitGroup[1]), .Y(n49) );
  OAI21XL U101 ( .A0(n52), .A1(n50), .B0(n2), .Y(PP[0]) );
endmodule


module PPG_1_DW01_inc_0 ( A_19_, A_18_, A_17_, A_16_, A_15_, A_14_, A_13_, 
        A_12_, A_11_, A_10_, A_9_, A_8_, A_7_, A_6_, A_5_, A_4_, A_3_, A_2_, 
        A_1_, SUM_19_, SUM_18_, SUM_17_, SUM_16_, SUM_15_, SUM_14_, SUM_13_, 
        SUM_12_, SUM_11_, SUM_10_, SUM_9_, SUM_8_, SUM_7_, SUM_6_, SUM_5_, 
        SUM_4_, SUM_3_, SUM_2_, SUM_1_ );
  input A_19_, A_18_, A_17_, A_16_, A_15_, A_14_, A_13_, A_12_, A_11_, A_10_,
         A_9_, A_8_, A_7_, A_6_, A_5_, A_4_, A_3_, A_2_, A_1_;
  output SUM_19_, SUM_18_, SUM_17_, SUM_16_, SUM_15_, SUM_14_, SUM_13_,
         SUM_12_, SUM_11_, SUM_10_, SUM_9_, SUM_8_, SUM_7_, SUM_6_, SUM_5_,
         SUM_4_, SUM_3_, SUM_2_, SUM_1_;
  wire   carry_19_, carry_18_, carry_17_, carry_16_, carry_15_, carry_14_,
         carry_13_, carry_12_, carry_11_, carry_10_, carry_9_, carry_8_,
         carry_7_, carry_6_, carry_5_, carry_4_, carry_3_;

  ADDHXL U1_1_18 ( .A(A_18_), .B(carry_18_), .CO(carry_19_), .S(SUM_18_) );
  ADDHXL U1_1_2 ( .A(A_2_), .B(A_1_), .CO(carry_3_), .S(SUM_2_) );
  ADDHXL U1_1_3 ( .A(A_3_), .B(carry_3_), .CO(carry_4_), .S(SUM_3_) );
  ADDHXL U1_1_4 ( .A(A_4_), .B(carry_4_), .CO(carry_5_), .S(SUM_4_) );
  ADDHXL U1_1_5 ( .A(A_5_), .B(carry_5_), .CO(carry_6_), .S(SUM_5_) );
  ADDHXL U1_1_6 ( .A(A_6_), .B(carry_6_), .CO(carry_7_), .S(SUM_6_) );
  ADDHXL U1_1_7 ( .A(A_7_), .B(carry_7_), .CO(carry_8_), .S(SUM_7_) );
  ADDHXL U1_1_8 ( .A(A_8_), .B(carry_8_), .CO(carry_9_), .S(SUM_8_) );
  ADDHXL U1_1_9 ( .A(A_9_), .B(carry_9_), .CO(carry_10_), .S(SUM_9_) );
  ADDHXL U1_1_10 ( .A(A_10_), .B(carry_10_), .CO(carry_11_), .S(SUM_10_) );
  ADDHXL U1_1_11 ( .A(A_11_), .B(carry_11_), .CO(carry_12_), .S(SUM_11_) );
  ADDHXL U1_1_12 ( .A(A_12_), .B(carry_12_), .CO(carry_13_), .S(SUM_12_) );
  ADDHXL U1_1_13 ( .A(A_13_), .B(carry_13_), .CO(carry_14_), .S(SUM_13_) );
  ADDHXL U1_1_14 ( .A(A_14_), .B(carry_14_), .CO(carry_15_), .S(SUM_14_) );
  ADDHXL U1_1_15 ( .A(A_15_), .B(carry_15_), .CO(carry_16_), .S(SUM_15_) );
  ADDHXL U1_1_16 ( .A(A_16_), .B(carry_16_), .CO(carry_17_), .S(SUM_16_) );
  ADDHXL U1_1_17 ( .A(A_17_), .B(carry_17_), .CO(carry_18_), .S(SUM_17_) );
  CLKINVX1 U1 ( .A(A_1_), .Y(SUM_1_) );
  XOR2X1 U2 ( .A(carry_19_), .B(A_19_), .Y(SUM_19_) );
endmodule


module PPG_1_DW01_inc_1 ( SUM, A_18_, A_17_, A_16_, A_15_, A_14_, A_13_, A_12_, 
        A_11_, A_10_, A_9_, A_8_, A_7_, A_6_, A_5_, A_4_, A_3_, A_2_, A_1_, 
        A_0_ );
  output [19:0] SUM;
  input A_18_, A_17_, A_16_, A_15_, A_14_, A_13_, A_12_, A_11_, A_10_, A_9_,
         A_8_, A_7_, A_6_, A_5_, A_4_, A_3_, A_2_, A_1_, A_0_;

  wire   [19:2] carry;

  ADDHXL U1_1_18 ( .A(A_18_), .B(carry[18]), .CO(carry[19]), .S(SUM[18]) );
  ADDHXL U1_1_17 ( .A(A_17_), .B(carry[17]), .CO(carry[18]), .S(SUM[17]) );
  ADDHXL U1_1_2 ( .A(A_2_), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_3 ( .A(A_3_), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_4 ( .A(A_4_), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_5 ( .A(A_5_), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_6 ( .A(A_6_), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_7 ( .A(A_7_), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  ADDHXL U1_1_8 ( .A(A_8_), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  ADDHXL U1_1_9 ( .A(A_9_), .B(carry[9]), .CO(carry[10]), .S(SUM[9]) );
  ADDHXL U1_1_10 ( .A(A_10_), .B(carry[10]), .CO(carry[11]), .S(SUM[10]) );
  ADDHXL U1_1_11 ( .A(A_11_), .B(carry[11]), .CO(carry[12]), .S(SUM[11]) );
  ADDHXL U1_1_12 ( .A(A_12_), .B(carry[12]), .CO(carry[13]), .S(SUM[12]) );
  ADDHXL U1_1_13 ( .A(A_13_), .B(carry[13]), .CO(carry[14]), .S(SUM[13]) );
  ADDHXL U1_1_14 ( .A(A_14_), .B(carry[14]), .CO(carry[15]), .S(SUM[14]) );
  ADDHXL U1_1_15 ( .A(A_15_), .B(carry[15]), .CO(carry[16]), .S(SUM[15]) );
  ADDHXL U1_1_16 ( .A(A_16_), .B(carry[16]), .CO(carry[17]), .S(SUM[16]) );
  ADDHXL U1_1_1 ( .A(A_1_), .B(A_0_), .CO(carry[2]), .S(SUM[1]) );
  CLKINVX1 U1 ( .A(carry[19]), .Y(SUM[19]) );
  CLKINVX1 U2 ( .A(A_0_), .Y(SUM[0]) );
endmodule


module PPG_1 ( Mc, Mp, phase, PP );
  input [18:0] Mc;
  input [4:0] Mp;
  output [19:0] PP;
  input phase;
  wire   N56, N57, N58, N59, N60, N61, N62, N63, N64, N65, N66, N67, N68, N69,
         N70, N71, N72, N73, N74, N75, N76, N77, N78, N79, N80, N81, N82, N83,
         N84, N85, N86, N87, N88, N89, N90, N91, N92, N93, N94, n2, n3, n4, n5,
         n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n560, n570, n580, n590, n600, n610,
         n620, n630, n640, n650, n660, n670, n680, n690, n700, n710, n720,
         n730, n740, n750, n760;
  wire   [2:0] bitGroup;

  PPG_1_DW01_inc_0 add_43 ( .A_19_(n590), .A_18_(n600), .A_17_(n610), .A_16_(
        n620), .A_15_(n630), .A_14_(n640), .A_13_(n650), .A_12_(n660), .A_11_(
        n670), .A_10_(n580), .A_9_(n680), .A_8_(n690), .A_7_(n700), .A_6_(n710), .A_5_(n720), .A_4_(n730), .A_3_(n740), .A_2_(n750), .A_1_(n760), .SUM_19_(
        N74), .SUM_18_(N73), .SUM_17_(N72), .SUM_16_(N71), .SUM_15_(N70), 
        .SUM_14_(N69), .SUM_13_(N68), .SUM_12_(N67), .SUM_11_(N66), .SUM_10_(
        N65), .SUM_9_(N64), .SUM_8_(N63), .SUM_7_(N62), .SUM_6_(N61), .SUM_5_(
        N60), .SUM_4_(N59), .SUM_3_(N58), .SUM_2_(N57), .SUM_1_(N56) );
  PPG_1_DW01_inc_1 r297 ( .SUM({N94, N93, N92, N91, N90, N89, N88, N87, N86, 
        N85, N84, N83, N82, N81, N80, N79, N78, N77, N76, N75}), .A_18_(n590), 
        .A_17_(n600), .A_16_(n610), .A_15_(n620), .A_14_(n630), .A_13_(n640), 
        .A_12_(n650), .A_11_(n660), .A_10_(n670), .A_9_(n580), .A_8_(n680), 
        .A_7_(n690), .A_6_(n700), .A_5_(n710), .A_4_(n720), .A_3_(n730), 
        .A_2_(n740), .A_1_(n750), .A_0_(n760) );
  OAI21X2 U4 ( .A0(bitGroup[1]), .A1(bitGroup[0]), .B0(n45), .Y(n48) );
  AND2X2 U5 ( .A(n3), .B(n48), .Y(n4) );
  CLKBUFX3 U6 ( .A(n41), .Y(n53) );
  CLKBUFX3 U7 ( .A(n40), .Y(n54) );
  INVX1 U8 ( .A(n53), .Y(n52) );
  XOR2X1 U9 ( .A(bitGroup[1]), .B(bitGroup[2]), .Y(n3) );
  NAND2X2 U10 ( .A(bitGroup[1]), .B(bitGroup[0]), .Y(n45) );
  AOI211XL U11 ( .A0(n49), .A1(n48), .B0(n47), .C0(n46), .Y(PP[19]) );
  XOR2XL U12 ( .A(n45), .B(bitGroup[2]), .Y(n47) );
  NOR2XL U13 ( .A(N94), .B(n48), .Y(n46) );
  INVXL U14 ( .A(bitGroup[1]), .Y(n51) );
  INVXL U15 ( .A(phase), .Y(n570) );
  CLKINVX1 U16 ( .A(N56), .Y(n50) );
  NOR2XL U17 ( .A(n48), .B(bitGroup[2]), .Y(n41) );
  NOR2BXL U18 ( .AN(bitGroup[2]), .B(n48), .Y(n40) );
  CLKBUFX3 U19 ( .A(n44), .Y(n55) );
  NAND2X1 U20 ( .A(n4), .B(bitGroup[1]), .Y(n44) );
  CLKBUFX3 U21 ( .A(n39), .Y(n560) );
  NOR2BX1 U22 ( .AN(n4), .B(bitGroup[1]), .Y(n39) );
  CLKINVX1 U23 ( .A(Mc[1]), .Y(n750) );
  CLKINVX1 U24 ( .A(Mc[16]), .Y(n610) );
  CLKINVX1 U25 ( .A(Mc[15]), .Y(n620) );
  CLKINVX1 U26 ( .A(Mc[14]), .Y(n630) );
  CLKINVX1 U27 ( .A(Mc[13]), .Y(n640) );
  CLKINVX1 U28 ( .A(Mc[12]), .Y(n650) );
  CLKINVX1 U29 ( .A(Mc[11]), .Y(n660) );
  CLKINVX1 U30 ( .A(Mc[10]), .Y(n670) );
  CLKINVX1 U31 ( .A(Mc[9]), .Y(n580) );
  CLKINVX1 U32 ( .A(Mc[8]), .Y(n680) );
  CLKINVX1 U33 ( .A(Mc[7]), .Y(n690) );
  CLKINVX1 U34 ( .A(Mc[6]), .Y(n700) );
  CLKINVX1 U35 ( .A(Mc[5]), .Y(n710) );
  CLKINVX1 U36 ( .A(Mc[4]), .Y(n720) );
  CLKINVX1 U37 ( .A(Mc[3]), .Y(n730) );
  CLKINVX1 U38 ( .A(Mc[2]), .Y(n740) );
  CLKINVX1 U39 ( .A(Mc[17]), .Y(n600) );
  CLKINVX1 U40 ( .A(Mc[18]), .Y(n590) );
  CLKINVX1 U41 ( .A(Mc[0]), .Y(n760) );
  AO22X2 U42 ( .A0(Mp[3]), .A1(phase), .B0(Mp[1]), .B1(n570), .Y(bitGroup[1])
         );
  AO22X1 U43 ( .A0(Mp[2]), .A1(phase), .B0(Mp[0]), .B1(n570), .Y(bitGroup[0])
         );
  AO22X1 U44 ( .A0(n570), .A1(Mp[2]), .B0(phase), .B1(Mp[4]), .Y(bitGroup[2])
         );
  NAND2X1 U45 ( .A(N75), .B(n54), .Y(n2) );
  NAND2X1 U46 ( .A(N56), .B(n560), .Y(n6) );
  AOI22X1 U47 ( .A0(N76), .A1(n54), .B0(Mc[1]), .B1(n53), .Y(n5) );
  OAI211X1 U48 ( .A0(n55), .A1(n50), .B0(n6), .C0(n5), .Y(PP[1]) );
  NAND2X1 U49 ( .A(N57), .B(n560), .Y(n8) );
  AOI22X1 U50 ( .A0(N77), .A1(n54), .B0(Mc[2]), .B1(n53), .Y(n7) );
  OAI211X1 U51 ( .A0(n55), .A1(n750), .B0(n8), .C0(n7), .Y(PP[2]) );
  NAND2X1 U52 ( .A(N58), .B(n560), .Y(n10) );
  AOI22X1 U53 ( .A0(N78), .A1(n54), .B0(Mc[3]), .B1(n53), .Y(n9) );
  OAI211X1 U54 ( .A0(n55), .A1(n740), .B0(n10), .C0(n9), .Y(PP[3]) );
  NAND2X1 U55 ( .A(N59), .B(n560), .Y(n12) );
  AOI22X1 U56 ( .A0(N79), .A1(n54), .B0(Mc[4]), .B1(n53), .Y(n11) );
  OAI211X1 U57 ( .A0(n55), .A1(n730), .B0(n12), .C0(n11), .Y(PP[4]) );
  NAND2X1 U58 ( .A(N60), .B(n560), .Y(n14) );
  AOI22X1 U59 ( .A0(N80), .A1(n54), .B0(Mc[5]), .B1(n53), .Y(n13) );
  OAI211X1 U60 ( .A0(n55), .A1(n720), .B0(n14), .C0(n13), .Y(PP[5]) );
  NAND2X1 U61 ( .A(N61), .B(n560), .Y(n16) );
  AOI22X1 U62 ( .A0(N81), .A1(n54), .B0(Mc[6]), .B1(n53), .Y(n15) );
  OAI211X1 U63 ( .A0(n55), .A1(n710), .B0(n16), .C0(n15), .Y(PP[6]) );
  NAND2X1 U64 ( .A(N62), .B(n560), .Y(n18) );
  AOI22X1 U65 ( .A0(N82), .A1(n54), .B0(Mc[7]), .B1(n53), .Y(n17) );
  OAI211X1 U66 ( .A0(n55), .A1(n700), .B0(n18), .C0(n17), .Y(PP[7]) );
  NAND2X1 U67 ( .A(N63), .B(n560), .Y(n20) );
  AOI22X1 U68 ( .A0(N83), .A1(n54), .B0(Mc[8]), .B1(n53), .Y(n19) );
  OAI211X1 U69 ( .A0(n55), .A1(n690), .B0(n20), .C0(n19), .Y(PP[8]) );
  NAND2X1 U70 ( .A(N64), .B(n560), .Y(n22) );
  AOI22X1 U71 ( .A0(N84), .A1(n54), .B0(Mc[9]), .B1(n53), .Y(n21) );
  OAI211X1 U72 ( .A0(n55), .A1(n680), .B0(n22), .C0(n21), .Y(PP[9]) );
  NAND2X1 U73 ( .A(N65), .B(n560), .Y(n24) );
  AOI22X1 U74 ( .A0(N85), .A1(n54), .B0(Mc[10]), .B1(n53), .Y(n23) );
  OAI211X1 U75 ( .A0(n55), .A1(n580), .B0(n24), .C0(n23), .Y(PP[10]) );
  NAND2X1 U76 ( .A(N66), .B(n560), .Y(n26) );
  AOI22X1 U77 ( .A0(N86), .A1(n54), .B0(Mc[11]), .B1(n53), .Y(n25) );
  OAI211X1 U78 ( .A0(n55), .A1(n670), .B0(n26), .C0(n25), .Y(PP[11]) );
  NAND2X1 U79 ( .A(N67), .B(n560), .Y(n28) );
  AOI22X1 U80 ( .A0(N87), .A1(n54), .B0(Mc[12]), .B1(n53), .Y(n27) );
  OAI211X1 U81 ( .A0(n55), .A1(n660), .B0(n28), .C0(n27), .Y(PP[12]) );
  NAND2X1 U82 ( .A(N68), .B(n560), .Y(n30) );
  AOI22X1 U83 ( .A0(N88), .A1(n54), .B0(Mc[13]), .B1(n53), .Y(n29) );
  OAI211X1 U84 ( .A0(n55), .A1(n650), .B0(n30), .C0(n29), .Y(PP[13]) );
  NAND2X1 U85 ( .A(N69), .B(n560), .Y(n32) );
  AOI22X1 U86 ( .A0(N89), .A1(n54), .B0(Mc[14]), .B1(n53), .Y(n31) );
  OAI211X1 U87 ( .A0(n55), .A1(n640), .B0(n32), .C0(n31), .Y(PP[14]) );
  NAND2X1 U88 ( .A(N70), .B(n560), .Y(n34) );
  AOI22X1 U89 ( .A0(N90), .A1(n54), .B0(Mc[15]), .B1(n53), .Y(n33) );
  OAI211X1 U90 ( .A0(n55), .A1(n630), .B0(n34), .C0(n33), .Y(PP[15]) );
  NAND2X1 U91 ( .A(N71), .B(n560), .Y(n36) );
  AOI22X1 U92 ( .A0(N91), .A1(n54), .B0(Mc[16]), .B1(n53), .Y(n35) );
  OAI211X1 U93 ( .A0(n55), .A1(n620), .B0(n36), .C0(n35), .Y(PP[16]) );
  NAND2X1 U94 ( .A(N72), .B(n560), .Y(n38) );
  AOI22X1 U95 ( .A0(N92), .A1(n54), .B0(n53), .B1(Mc[17]), .Y(n37) );
  OAI211X1 U96 ( .A0(n55), .A1(n610), .B0(n38), .C0(n37), .Y(PP[17]) );
  NAND2X1 U97 ( .A(N73), .B(n560), .Y(n43) );
  AOI22X1 U98 ( .A0(Mc[18]), .A1(n53), .B0(N93), .B1(n54), .Y(n42) );
  OAI211X1 U99 ( .A0(n55), .A1(n600), .B0(n43), .C0(n42), .Y(PP[18]) );
  OAI22XL U100 ( .A0(Mc[18]), .A1(n51), .B0(N74), .B1(bitGroup[1]), .Y(n49) );
  OAI21XL U101 ( .A0(n52), .A1(n50), .B0(n2), .Y(PP[0]) );
endmodule


module PPG_0_DW01_inc_0 ( A_19_, A_18_, A_17_, A_16_, A_15_, A_14_, A_13_, 
        A_12_, A_11_, A_10_, A_9_, A_8_, A_7_, A_6_, A_5_, A_4_, A_3_, A_2_, 
        A_1_, SUM_19_, SUM_18_, SUM_17_, SUM_16_, SUM_15_, SUM_14_, SUM_13_, 
        SUM_12_, SUM_11_, SUM_10_, SUM_9_, SUM_8_, SUM_7_, SUM_6_, SUM_5_, 
        SUM_4_, SUM_3_, SUM_2_, SUM_1_ );
  input A_19_, A_18_, A_17_, A_16_, A_15_, A_14_, A_13_, A_12_, A_11_, A_10_,
         A_9_, A_8_, A_7_, A_6_, A_5_, A_4_, A_3_, A_2_, A_1_;
  output SUM_19_, SUM_18_, SUM_17_, SUM_16_, SUM_15_, SUM_14_, SUM_13_,
         SUM_12_, SUM_11_, SUM_10_, SUM_9_, SUM_8_, SUM_7_, SUM_6_, SUM_5_,
         SUM_4_, SUM_3_, SUM_2_, SUM_1_;
  wire   carry_19_, carry_18_, carry_17_, carry_16_, carry_15_, carry_14_,
         carry_13_, carry_12_, carry_11_, carry_10_, carry_9_, carry_8_,
         carry_7_, carry_6_, carry_5_, carry_4_, carry_3_;

  ADDHXL U1_1_18 ( .A(A_18_), .B(carry_18_), .CO(carry_19_), .S(SUM_18_) );
  ADDHXL U1_1_2 ( .A(A_2_), .B(A_1_), .CO(carry_3_), .S(SUM_2_) );
  ADDHXL U1_1_3 ( .A(A_3_), .B(carry_3_), .CO(carry_4_), .S(SUM_3_) );
  ADDHXL U1_1_4 ( .A(A_4_), .B(carry_4_), .CO(carry_5_), .S(SUM_4_) );
  ADDHXL U1_1_5 ( .A(A_5_), .B(carry_5_), .CO(carry_6_), .S(SUM_5_) );
  ADDHXL U1_1_6 ( .A(A_6_), .B(carry_6_), .CO(carry_7_), .S(SUM_6_) );
  ADDHXL U1_1_7 ( .A(A_7_), .B(carry_7_), .CO(carry_8_), .S(SUM_7_) );
  ADDHXL U1_1_8 ( .A(A_8_), .B(carry_8_), .CO(carry_9_), .S(SUM_8_) );
  ADDHXL U1_1_9 ( .A(A_9_), .B(carry_9_), .CO(carry_10_), .S(SUM_9_) );
  ADDHXL U1_1_10 ( .A(A_10_), .B(carry_10_), .CO(carry_11_), .S(SUM_10_) );
  ADDHXL U1_1_11 ( .A(A_11_), .B(carry_11_), .CO(carry_12_), .S(SUM_11_) );
  ADDHXL U1_1_12 ( .A(A_12_), .B(carry_12_), .CO(carry_13_), .S(SUM_12_) );
  ADDHXL U1_1_13 ( .A(A_13_), .B(carry_13_), .CO(carry_14_), .S(SUM_13_) );
  ADDHXL U1_1_14 ( .A(A_14_), .B(carry_14_), .CO(carry_15_), .S(SUM_14_) );
  ADDHXL U1_1_15 ( .A(A_15_), .B(carry_15_), .CO(carry_16_), .S(SUM_15_) );
  ADDHXL U1_1_16 ( .A(A_16_), .B(carry_16_), .CO(carry_17_), .S(SUM_16_) );
  ADDHXL U1_1_17 ( .A(A_17_), .B(carry_17_), .CO(carry_18_), .S(SUM_17_) );
  CLKINVX1 U1 ( .A(A_1_), .Y(SUM_1_) );
  XOR2X1 U2 ( .A(carry_19_), .B(A_19_), .Y(SUM_19_) );
endmodule


module PPG_0_DW01_inc_1 ( SUM, A_18_, A_17_, A_16_, A_15_, A_14_, A_13_, A_12_, 
        A_11_, A_10_, A_9_, A_8_, A_7_, A_6_, A_5_, A_4_, A_3_, A_2_, A_1_, 
        A_0_ );
  output [19:0] SUM;
  input A_18_, A_17_, A_16_, A_15_, A_14_, A_13_, A_12_, A_11_, A_10_, A_9_,
         A_8_, A_7_, A_6_, A_5_, A_4_, A_3_, A_2_, A_1_, A_0_;

  wire   [19:2] carry;

  ADDHXL U1_1_18 ( .A(A_18_), .B(carry[18]), .CO(carry[19]), .S(SUM[18]) );
  ADDHXL U1_1_17 ( .A(A_17_), .B(carry[17]), .CO(carry[18]), .S(SUM[17]) );
  ADDHXL U1_1_2 ( .A(A_2_), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_3 ( .A(A_3_), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_4 ( .A(A_4_), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_5 ( .A(A_5_), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_6 ( .A(A_6_), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_7 ( .A(A_7_), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  ADDHXL U1_1_8 ( .A(A_8_), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  ADDHXL U1_1_9 ( .A(A_9_), .B(carry[9]), .CO(carry[10]), .S(SUM[9]) );
  ADDHXL U1_1_10 ( .A(A_10_), .B(carry[10]), .CO(carry[11]), .S(SUM[10]) );
  ADDHXL U1_1_11 ( .A(A_11_), .B(carry[11]), .CO(carry[12]), .S(SUM[11]) );
  ADDHXL U1_1_12 ( .A(A_12_), .B(carry[12]), .CO(carry[13]), .S(SUM[12]) );
  ADDHXL U1_1_13 ( .A(A_13_), .B(carry[13]), .CO(carry[14]), .S(SUM[13]) );
  ADDHXL U1_1_14 ( .A(A_14_), .B(carry[14]), .CO(carry[15]), .S(SUM[14]) );
  ADDHXL U1_1_15 ( .A(A_15_), .B(carry[15]), .CO(carry[16]), .S(SUM[15]) );
  ADDHXL U1_1_16 ( .A(A_16_), .B(carry[16]), .CO(carry[17]), .S(SUM[16]) );
  ADDHXL U1_1_1 ( .A(A_1_), .B(A_0_), .CO(carry[2]), .S(SUM[1]) );
  CLKINVX1 U1 ( .A(carry[19]), .Y(SUM[19]) );
  CLKINVX1 U2 ( .A(A_0_), .Y(SUM[0]) );
endmodule


module PPG_0 ( Mc, Mp, phase, PP );
  input [18:0] Mc;
  input [4:0] Mp;
  output [19:0] PP;
  input phase;
  wire   N56, N57, N58, N59, N60, N61, N62, N63, N64, N65, N66, N67, N68, N69,
         N70, N71, N72, N73, N74, N75, N76, N77, N78, N79, N80, N81, N82, N83,
         N84, N85, N86, N87, N88, N89, N90, N91, N92, N93, N94, n2, n3, n4, n5,
         n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n560, n570, n580, n590, n600, n610,
         n620, n630, n640, n650, n660, n670, n680, n690, n700, n710, n720,
         n730, n740, n750, n760, n770, n780, n790;
  wire   [2:0] bitGroup;

  PPG_0_DW01_inc_0 add_43 ( .A_19_(n620), .A_18_(n630), .A_17_(n640), .A_16_(
        n650), .A_15_(n660), .A_14_(n670), .A_13_(n680), .A_12_(n690), .A_11_(
        n700), .A_10_(n610), .A_9_(n710), .A_8_(n720), .A_7_(n730), .A_6_(n740), .A_5_(n750), .A_4_(n760), .A_3_(n770), .A_2_(n780), .A_1_(n790), .SUM_19_(
        N74), .SUM_18_(N73), .SUM_17_(N72), .SUM_16_(N71), .SUM_15_(N70), 
        .SUM_14_(N69), .SUM_13_(N68), .SUM_12_(N67), .SUM_11_(N66), .SUM_10_(
        N65), .SUM_9_(N64), .SUM_8_(N63), .SUM_7_(N62), .SUM_6_(N61), .SUM_5_(
        N60), .SUM_4_(N59), .SUM_3_(N58), .SUM_2_(N57), .SUM_1_(N56) );
  PPG_0_DW01_inc_1 r297 ( .SUM({N94, N93, N92, N91, N90, N89, N88, N87, N86, 
        N85, N84, N83, N82, N81, N80, N79, N78, N77, N76, N75}), .A_18_(n620), 
        .A_17_(n630), .A_16_(n640), .A_15_(n650), .A_14_(n660), .A_13_(n670), 
        .A_12_(n680), .A_11_(n690), .A_10_(n700), .A_9_(n610), .A_8_(n710), 
        .A_7_(n720), .A_6_(n730), .A_5_(n740), .A_4_(n750), .A_3_(n760), 
        .A_2_(n770), .A_1_(n780), .A_0_(n790) );
  XOR2X1 U4 ( .A(bitGroup[1]), .B(bitGroup[2]), .Y(n6) );
  NOR2X1 U5 ( .A(n51), .B(bitGroup[2]), .Y(n44) );
  AO22X1 U6 ( .A0(Mp[2]), .A1(phase), .B0(Mp[0]), .B1(n600), .Y(bitGroup[0])
         );
  BUFX12 U7 ( .A(n42), .Y(n590) );
  NOR2BX1 U8 ( .AN(n7), .B(bitGroup[1]), .Y(n42) );
  BUFX8 U9 ( .A(n44), .Y(n560) );
  INVX8 U10 ( .A(n570), .Y(n2) );
  CLKINVX16 U11 ( .A(n2), .Y(n3) );
  BUFX4 U12 ( .A(n43), .Y(n570) );
  BUFX12 U13 ( .A(n47), .Y(n580) );
  NAND2XL U14 ( .A(n7), .B(bitGroup[1]), .Y(n47) );
  AND2X2 U15 ( .A(n6), .B(n51), .Y(n7) );
  OR2X6 U16 ( .A(bitGroup[1]), .B(bitGroup[0]), .Y(n4) );
  NAND2X8 U17 ( .A(n4), .B(n48), .Y(n51) );
  AO22X4 U18 ( .A0(Mp[3]), .A1(phase), .B0(Mp[1]), .B1(n600), .Y(bitGroup[1])
         );
  INVX1 U19 ( .A(n560), .Y(n55) );
  NAND2X2 U20 ( .A(bitGroup[1]), .B(bitGroup[0]), .Y(n48) );
  AOI211XL U21 ( .A0(n52), .A1(n51), .B0(n50), .C0(n49), .Y(PP[19]) );
  XOR2XL U22 ( .A(n48), .B(bitGroup[2]), .Y(n50) );
  NOR2XL U23 ( .A(N94), .B(n51), .Y(n49) );
  INVXL U24 ( .A(bitGroup[1]), .Y(n54) );
  INVXL U25 ( .A(phase), .Y(n600) );
  CLKINVX1 U26 ( .A(N56), .Y(n53) );
  NOR2BXL U27 ( .AN(bitGroup[2]), .B(n51), .Y(n43) );
  CLKINVX1 U28 ( .A(Mc[1]), .Y(n780) );
  CLKINVX1 U29 ( .A(Mc[16]), .Y(n640) );
  CLKINVX1 U30 ( .A(Mc[15]), .Y(n650) );
  CLKINVX1 U31 ( .A(Mc[14]), .Y(n660) );
  CLKINVX1 U32 ( .A(Mc[13]), .Y(n670) );
  CLKINVX1 U33 ( .A(Mc[12]), .Y(n680) );
  CLKINVX1 U34 ( .A(Mc[11]), .Y(n690) );
  CLKINVX1 U35 ( .A(Mc[10]), .Y(n700) );
  CLKINVX1 U36 ( .A(Mc[9]), .Y(n610) );
  CLKINVX1 U37 ( .A(Mc[8]), .Y(n710) );
  CLKINVX1 U38 ( .A(Mc[7]), .Y(n720) );
  CLKINVX1 U39 ( .A(Mc[6]), .Y(n730) );
  CLKINVX1 U40 ( .A(Mc[5]), .Y(n740) );
  CLKINVX1 U41 ( .A(Mc[4]), .Y(n750) );
  CLKINVX1 U42 ( .A(Mc[3]), .Y(n760) );
  CLKINVX1 U43 ( .A(Mc[2]), .Y(n770) );
  CLKINVX1 U44 ( .A(Mc[17]), .Y(n630) );
  CLKINVX1 U45 ( .A(Mc[18]), .Y(n620) );
  CLKINVX1 U46 ( .A(Mc[0]), .Y(n790) );
  AO22X1 U47 ( .A0(n600), .A1(Mp[2]), .B0(phase), .B1(Mp[4]), .Y(bitGroup[2])
         );
  NAND2X1 U48 ( .A(N75), .B(n3), .Y(n5) );
  NAND2X1 U49 ( .A(N56), .B(n590), .Y(n9) );
  AOI22X1 U50 ( .A0(N76), .A1(n3), .B0(Mc[1]), .B1(n560), .Y(n8) );
  OAI211X1 U51 ( .A0(n580), .A1(n53), .B0(n9), .C0(n8), .Y(PP[1]) );
  NAND2X1 U52 ( .A(N57), .B(n590), .Y(n11) );
  AOI22X1 U53 ( .A0(N77), .A1(n3), .B0(Mc[2]), .B1(n560), .Y(n10) );
  OAI211X1 U54 ( .A0(n580), .A1(n780), .B0(n11), .C0(n10), .Y(PP[2]) );
  NAND2X1 U55 ( .A(N58), .B(n590), .Y(n13) );
  AOI22X1 U56 ( .A0(N78), .A1(n3), .B0(Mc[3]), .B1(n560), .Y(n12) );
  OAI211X1 U57 ( .A0(n580), .A1(n770), .B0(n13), .C0(n12), .Y(PP[3]) );
  NAND2X1 U58 ( .A(N59), .B(n590), .Y(n15) );
  AOI22X1 U59 ( .A0(N79), .A1(n3), .B0(Mc[4]), .B1(n560), .Y(n14) );
  OAI211X1 U60 ( .A0(n580), .A1(n760), .B0(n15), .C0(n14), .Y(PP[4]) );
  NAND2X1 U61 ( .A(N60), .B(n590), .Y(n17) );
  AOI22X1 U62 ( .A0(N80), .A1(n3), .B0(Mc[5]), .B1(n560), .Y(n16) );
  OAI211X1 U63 ( .A0(n580), .A1(n750), .B0(n17), .C0(n16), .Y(PP[5]) );
  NAND2X1 U64 ( .A(N61), .B(n590), .Y(n19) );
  AOI22X1 U65 ( .A0(N81), .A1(n3), .B0(Mc[6]), .B1(n560), .Y(n18) );
  OAI211X1 U66 ( .A0(n580), .A1(n740), .B0(n19), .C0(n18), .Y(PP[6]) );
  NAND2X1 U67 ( .A(N62), .B(n590), .Y(n21) );
  AOI22X1 U68 ( .A0(N82), .A1(n3), .B0(Mc[7]), .B1(n560), .Y(n20) );
  OAI211X1 U69 ( .A0(n580), .A1(n730), .B0(n21), .C0(n20), .Y(PP[7]) );
  NAND2X1 U70 ( .A(N63), .B(n590), .Y(n23) );
  AOI22X1 U71 ( .A0(N83), .A1(n3), .B0(Mc[8]), .B1(n560), .Y(n22) );
  OAI211X1 U72 ( .A0(n580), .A1(n720), .B0(n23), .C0(n22), .Y(PP[8]) );
  NAND2X1 U73 ( .A(N64), .B(n590), .Y(n25) );
  AOI22X1 U74 ( .A0(N84), .A1(n3), .B0(Mc[9]), .B1(n560), .Y(n24) );
  OAI211X1 U75 ( .A0(n580), .A1(n710), .B0(n25), .C0(n24), .Y(PP[9]) );
  NAND2X1 U76 ( .A(N65), .B(n590), .Y(n27) );
  AOI22X1 U77 ( .A0(N85), .A1(n3), .B0(Mc[10]), .B1(n560), .Y(n26) );
  OAI211X1 U78 ( .A0(n580), .A1(n610), .B0(n27), .C0(n26), .Y(PP[10]) );
  NAND2X1 U79 ( .A(N66), .B(n590), .Y(n29) );
  AOI22X1 U80 ( .A0(N86), .A1(n3), .B0(Mc[11]), .B1(n560), .Y(n28) );
  OAI211X1 U81 ( .A0(n580), .A1(n700), .B0(n29), .C0(n28), .Y(PP[11]) );
  NAND2X1 U82 ( .A(N67), .B(n590), .Y(n31) );
  AOI22X1 U83 ( .A0(N87), .A1(n3), .B0(Mc[12]), .B1(n560), .Y(n30) );
  OAI211X1 U84 ( .A0(n580), .A1(n690), .B0(n31), .C0(n30), .Y(PP[12]) );
  NAND2X1 U85 ( .A(N68), .B(n590), .Y(n33) );
  AOI22X1 U86 ( .A0(N88), .A1(n3), .B0(Mc[13]), .B1(n560), .Y(n32) );
  OAI211X1 U87 ( .A0(n580), .A1(n680), .B0(n33), .C0(n32), .Y(PP[13]) );
  NAND2X1 U88 ( .A(N69), .B(n590), .Y(n35) );
  AOI22X1 U89 ( .A0(N89), .A1(n3), .B0(Mc[14]), .B1(n560), .Y(n34) );
  OAI211X1 U90 ( .A0(n580), .A1(n670), .B0(n35), .C0(n34), .Y(PP[14]) );
  NAND2X1 U91 ( .A(N70), .B(n590), .Y(n37) );
  AOI22X1 U92 ( .A0(N90), .A1(n3), .B0(Mc[15]), .B1(n560), .Y(n36) );
  OAI211X1 U93 ( .A0(n580), .A1(n660), .B0(n37), .C0(n36), .Y(PP[15]) );
  NAND2X1 U94 ( .A(N71), .B(n590), .Y(n39) );
  AOI22X1 U95 ( .A0(N91), .A1(n3), .B0(Mc[16]), .B1(n560), .Y(n38) );
  OAI211X1 U96 ( .A0(n580), .A1(n650), .B0(n39), .C0(n38), .Y(PP[16]) );
  NAND2X1 U97 ( .A(N72), .B(n590), .Y(n41) );
  AOI22X1 U98 ( .A0(N92), .A1(n3), .B0(n560), .B1(Mc[17]), .Y(n40) );
  OAI211X1 U99 ( .A0(n580), .A1(n640), .B0(n41), .C0(n40), .Y(PP[17]) );
  NAND2X1 U100 ( .A(N73), .B(n590), .Y(n46) );
  AOI22X1 U101 ( .A0(Mc[18]), .A1(n560), .B0(N93), .B1(n3), .Y(n45) );
  OAI211X1 U102 ( .A0(n580), .A1(n630), .B0(n46), .C0(n45), .Y(PP[18]) );
  OAI22XL U103 ( .A0(Mc[18]), .A1(n54), .B0(N74), .B1(bitGroup[1]), .Y(n52) );
  OAI21XL U104 ( .A0(n55), .A1(n53), .B0(n5), .Y(PP[0]) );
endmodule


module MULT_0_DW01_inc_0 ( A, SUM );
  input [34:0] A;
  output [34:0] SUM;

  wire   [34:2] carry;

  ADDHXL U1_1_33 ( .A(A[33]), .B(carry[33]), .CO(carry[34]), .S(SUM[33]) );
  ADDHXL U1_1_32 ( .A(A[32]), .B(carry[32]), .CO(carry[33]), .S(SUM[32]) );
  ADDHXL U1_1_31 ( .A(A[31]), .B(carry[31]), .CO(carry[32]), .S(SUM[31]) );
  ADDHXL U1_1_30 ( .A(A[30]), .B(carry[30]), .CO(carry[31]), .S(SUM[30]) );
  ADDHXL U1_1_28 ( .A(A[28]), .B(carry[28]), .CO(carry[29]), .S(SUM[28]) );
  ADDHXL U1_1_27 ( .A(A[27]), .B(carry[27]), .CO(carry[28]), .S(SUM[27]) );
  ADDHXL U1_1_26 ( .A(A[26]), .B(carry[26]), .CO(carry[27]), .S(SUM[26]) );
  ADDHXL U1_1_25 ( .A(A[25]), .B(carry[25]), .CO(carry[26]), .S(SUM[25]) );
  ADDHXL U1_1_24 ( .A(A[24]), .B(carry[24]), .CO(carry[25]), .S(SUM[24]) );
  ADDHXL U1_1_23 ( .A(A[23]), .B(carry[23]), .CO(carry[24]), .S(SUM[23]) );
  ADDHXL U1_1_22 ( .A(A[22]), .B(carry[22]), .CO(carry[23]), .S(SUM[22]) );
  ADDHXL U1_1_19 ( .A(A[19]), .B(carry[19]), .CO(carry[20]), .S(SUM[19]) );
  ADDHXL U1_1_18 ( .A(A[18]), .B(carry[18]), .CO(carry[19]), .S(SUM[18]) );
  ADDHXL U1_1_17 ( .A(A[17]), .B(carry[17]), .CO(carry[18]), .S(SUM[17]) );
  ADDHXL U1_1_16 ( .A(A[16]), .B(carry[16]), .CO(carry[17]), .S(SUM[16]) );
  ADDHXL U1_1_15 ( .A(A[15]), .B(carry[15]), .CO(carry[16]), .S(SUM[15]) );
  ADDHXL U1_1_14 ( .A(A[14]), .B(carry[14]), .CO(carry[15]), .S(SUM[14]) );
  ADDHXL U1_1_13 ( .A(A[13]), .B(carry[13]), .CO(carry[14]), .S(SUM[13]) );
  ADDHXL U1_1_12 ( .A(A[12]), .B(carry[12]), .CO(carry[13]), .S(SUM[12]) );
  ADDHXL U1_1_11 ( .A(A[11]), .B(carry[11]), .CO(carry[12]), .S(SUM[11]) );
  ADDHXL U1_1_10 ( .A(A[10]), .B(carry[10]), .CO(carry[11]), .S(SUM[10]) );
  ADDHXL U1_1_9 ( .A(A[9]), .B(carry[9]), .CO(carry[10]), .S(SUM[9]) );
  ADDHXL U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  ADDHXL U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  ADDHXL U1_1_21 ( .A(A[21]), .B(carry[21]), .CO(carry[22]), .S(SUM[21]) );
  ADDHXL U1_1_20 ( .A(A[20]), .B(carry[20]), .CO(carry[21]), .S(SUM[20]) );
  ADDHXL U1_1_29 ( .A(A[29]), .B(carry[29]), .CO(carry[30]), .S(SUM[29]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  XOR2X1 U1 ( .A(carry[34]), .B(A[34]), .Y(SUM[34]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module MULT_0_DW01_inc_1 ( A, SUM );
  input [18:0] A;
  output [18:0] SUM;

  wire   [18:2] carry;

  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  ADDHXL U1_1_13 ( .A(A[13]), .B(carry[13]), .CO(carry[14]), .S(SUM[13]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_11 ( .A(A[11]), .B(carry[11]), .CO(carry[12]), .S(SUM[11]) );
  ADDHXL U1_1_15 ( .A(A[15]), .B(carry[15]), .CO(carry[16]), .S(SUM[15]) );
  ADDHX1 U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  ADDHX1 U1_1_9 ( .A(A[9]), .B(carry[9]), .CO(carry[10]), .S(SUM[9]) );
  ADDHX1 U1_1_17 ( .A(A[17]), .B(carry[17]), .CO(carry[18]), .S(SUM[17]) );
  ADDHXL U1_1_16 ( .A(A[16]), .B(carry[16]), .CO(carry[17]), .S(SUM[16]) );
  ADDHXL U1_1_14 ( .A(A[14]), .B(carry[14]), .CO(carry[15]), .S(SUM[14]) );
  ADDHXL U1_1_12 ( .A(A[12]), .B(carry[12]), .CO(carry[13]), .S(SUM[12]) );
  ADDHXL U1_1_10 ( .A(A[10]), .B(carry[10]), .CO(carry[11]), .S(SUM[10]) );
  XOR2X1 U1 ( .A(carry[18]), .B(A[18]), .Y(SUM[18]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module MULT_0_DW01_inc_2 ( A, SUM );
  input [18:0] A;
  output [18:0] SUM;

  wire   [18:2] carry;

  ADDHXL U1_1_17 ( .A(A[17]), .B(carry[17]), .CO(carry[18]), .S(SUM[17]) );
  ADDHXL U1_1_16 ( .A(A[16]), .B(carry[16]), .CO(carry[17]), .S(SUM[16]) );
  ADDHXL U1_1_15 ( .A(A[15]), .B(carry[15]), .CO(carry[16]), .S(SUM[15]) );
  ADDHXL U1_1_14 ( .A(A[14]), .B(carry[14]), .CO(carry[15]), .S(SUM[14]) );
  ADDHXL U1_1_13 ( .A(A[13]), .B(carry[13]), .CO(carry[14]), .S(SUM[13]) );
  ADDHXL U1_1_12 ( .A(A[12]), .B(carry[12]), .CO(carry[13]), .S(SUM[12]) );
  ADDHXL U1_1_11 ( .A(A[11]), .B(carry[11]), .CO(carry[12]), .S(SUM[11]) );
  ADDHXL U1_1_10 ( .A(A[10]), .B(carry[10]), .CO(carry[11]), .S(SUM[10]) );
  ADDHXL U1_1_9 ( .A(A[9]), .B(carry[9]), .CO(carry[10]), .S(SUM[9]) );
  ADDHXL U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  ADDHXL U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  XOR2X1 U1 ( .A(carry[18]), .B(A[18]), .Y(SUM[18]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module MULT_0_DW01_add_4 ( B, SUM, A_30_, A_29_, A_28_, A_27_, A_26_, A_25_, 
        A_24_, A_23_, A_22_, A_21_, A_20_, A_19_, A_18_, A_17_, A_16_, A_15_, 
        A_14_, A_13_, A_12_, A_11_, A_10_ );
  input [36:0] B;
  output [36:0] SUM;
  input A_30_, A_29_, A_28_, A_27_, A_26_, A_25_, A_24_, A_23_, A_22_, A_21_,
         A_20_, A_19_, A_18_, A_17_, A_16_, A_15_, A_14_, A_13_, A_12_, A_11_,
         A_10_;
  wire   n1, n2, n3, n4, n15;
  wire   [32:12] carry;

  ADDFXL U1_20 ( .A(A_20_), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_28 ( .A(A_28_), .B(B[28]), .CI(carry[28]), .CO(carry[29]), .S(
        SUM[28]) );
  ADDFXL U1_26 ( .A(A_26_), .B(B[26]), .CI(carry[26]), .CO(carry[27]), .S(
        SUM[26]) );
  ADDFXL U1_18 ( .A(A_18_), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_15 ( .A(A_15_), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_13 ( .A(A_13_), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_30 ( .A(A_30_), .B(B[30]), .CI(carry[30]), .CO(carry[31]), .S(
        SUM[30]) );
  ADDFX1 U1_29 ( .A(A_29_), .B(B[29]), .CI(carry[29]), .CO(carry[30]), .S(
        SUM[29]) );
  ADDFXL U1_24 ( .A(A_24_), .B(B[24]), .CI(carry[24]), .CO(carry[25]), .S(
        SUM[24]) );
  ADDFXL U1_25 ( .A(A_25_), .B(B[25]), .CI(carry[25]), .CO(carry[26]), .S(
        SUM[25]) );
  ADDFXL U1_21 ( .A(A_21_), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFHX2 U1_12 ( .A(A_12_), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFX2 U1_23 ( .A(A_23_), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFX2 U1_27 ( .A(A_27_), .B(B[27]), .CI(carry[27]), .CO(carry[28]), .S(
        SUM[27]) );
  ADDFXL U1_14 ( .A(A_14_), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFX2 U1_22 ( .A(A_22_), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_16 ( .A(A_16_), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_19 ( .A(A_19_), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_17 ( .A(A_17_), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFHX4 U1_11 ( .A(A_11_), .B(B[11]), .CI(n1), .CO(carry[12]), .S(SUM[11])
         );
  CLKBUFX3 U1 ( .A(B[2]), .Y(SUM[2]) );
  CLKBUFX3 U2 ( .A(B[6]), .Y(SUM[6]) );
  AND2X2 U3 ( .A(B[10]), .B(A_10_), .Y(n1) );
  BUFX2 U4 ( .A(B[7]), .Y(SUM[7]) );
  XOR2XL U5 ( .A(B[10]), .B(A_10_), .Y(SUM[10]) );
  BUFX4 U6 ( .A(B[3]), .Y(SUM[3]) );
  OR2XL U7 ( .A(B[31]), .B(carry[31]), .Y(carry[32]) );
  AND2XL U8 ( .A(B[32]), .B(carry[32]), .Y(n4) );
  AND2XL U9 ( .A(B[34]), .B(n2), .Y(n3) );
  CLKBUFX2 U10 ( .A(B[0]), .Y(SUM[0]) );
  CLKBUFX2 U11 ( .A(B[1]), .Y(SUM[1]) );
  AND2X2 U12 ( .A(B[33]), .B(n4), .Y(n2) );
  XOR2X1 U13 ( .A(B[35]), .B(n3), .Y(SUM[35]) );
  XNOR2X1 U14 ( .A(B[31]), .B(carry[31]), .Y(SUM[31]) );
  XOR2X1 U15 ( .A(B[32]), .B(carry[32]), .Y(SUM[32]) );
  XOR2X1 U16 ( .A(B[33]), .B(n4), .Y(SUM[33]) );
  XOR2X1 U17 ( .A(B[34]), .B(n2), .Y(SUM[34]) );
  CLKBUFX3 U18 ( .A(B[8]), .Y(SUM[8]) );
  CLKBUFX3 U19 ( .A(B[9]), .Y(SUM[9]) );
  CLKBUFX3 U20 ( .A(B[4]), .Y(SUM[4]) );
  CLKBUFX3 U21 ( .A(B[5]), .Y(SUM[5]) );
  XNOR2X1 U22 ( .A(B[36]), .B(n15), .Y(SUM[36]) );
  NAND2X1 U23 ( .A(B[35]), .B(n3), .Y(n15) );
endmodule


module MULT_0_DW01_add_3 ( A_22_, A_21_, A_20_, A_19_, A_18_, A_17_, A_16_, 
        A_15_, A_14_, A_13_, A_12_, A_11_, A_10_, A_9_, A_8_, A_7_, A_6_, A_5_, 
        A_4_, A_3_, A_2_, B_26_, B_25_, B_24_, B_23_, B_22_, B_21_, B_20_, 
        B_19_, B_18_, B_17_, B_16_, B_15_, B_14_, B_13_, B_12_, B_11_, B_10_, 
        B_9_, B_8_, B_7_, B_6_, SUM_28_, SUM_27_, SUM_26_, SUM_25_, SUM_24_, 
        SUM_23_, SUM_22_, SUM_21_, SUM_20_, SUM_19_, SUM_18_, SUM_17_, SUM_16_, 
        SUM_15_, SUM_14_, SUM_13_, SUM_12_, SUM_11_, SUM_10_, SUM_9_, SUM_8_, 
        SUM_7_, SUM_6_, SUM_5_, SUM_4_, SUM_3_, SUM_2_ );
  input A_22_, A_21_, A_20_, A_19_, A_18_, A_17_, A_16_, A_15_, A_14_, A_13_,
         A_12_, A_11_, A_10_, A_9_, A_8_, A_7_, A_6_, A_5_, A_4_, A_3_, A_2_,
         B_26_, B_25_, B_24_, B_23_, B_22_, B_21_, B_20_, B_19_, B_18_, B_17_,
         B_16_, B_15_, B_14_, B_13_, B_12_, B_11_, B_10_, B_9_, B_8_, B_7_,
         B_6_;
  output SUM_28_, SUM_27_, SUM_26_, SUM_25_, SUM_24_, SUM_23_, SUM_22_,
         SUM_21_, SUM_20_, SUM_19_, SUM_18_, SUM_17_, SUM_16_, SUM_15_,
         SUM_14_, SUM_13_, SUM_12_, SUM_11_, SUM_10_, SUM_9_, SUM_8_, SUM_7_,
         SUM_6_, SUM_5_, SUM_4_, SUM_3_, SUM_2_;
  wire   n1, n2, n3, n4, n5, n7, n8;
  wire   [24:8] carry;

  ADDFXL U1_21 ( .A(A_21_), .B(B_21_), .CI(carry[21]), .CO(carry[22]), .S(
        SUM_21_) );
  ADDFXL U1_17 ( .A(A_17_), .B(B_17_), .CI(carry[17]), .CO(carry[18]), .S(
        SUM_17_) );
  ADDFXL U1_22 ( .A(A_22_), .B(B_22_), .CI(carry[22]), .CO(carry[23]), .S(
        SUM_22_) );
  ADDFHX2 U1_18 ( .A(A_18_), .B(B_18_), .CI(carry[18]), .CO(carry[19]), .S(
        SUM_18_) );
  ADDFXL U1_14 ( .A(A_14_), .B(B_14_), .CI(carry[14]), .CO(carry[15]), .S(
        SUM_14_) );
  ADDFXL U1_13 ( .A(A_13_), .B(B_13_), .CI(carry[13]), .CO(carry[14]), .S(
        SUM_13_) );
  ADDFXL U1_20 ( .A(A_20_), .B(B_20_), .CI(carry[20]), .CO(carry[21]), .S(
        SUM_20_) );
  ADDFXL U1_16 ( .A(A_16_), .B(B_16_), .CI(carry[16]), .CO(carry[17]), .S(
        SUM_16_) );
  ADDFXL U1_15 ( .A(A_15_), .B(B_15_), .CI(carry[15]), .CO(carry[16]), .S(
        SUM_15_) );
  ADDFHX2 U1_12 ( .A(A_12_), .B(B_12_), .CI(carry[12]), .CO(carry[13]), .S(
        SUM_12_) );
  ADDFHX2 U1_7 ( .A(A_7_), .B(B_7_), .CI(n1), .CO(carry[8]), .S(SUM_7_) );
  ADDFHX4 U1_10 ( .A(A_10_), .B(B_10_), .CI(carry[10]), .CO(carry[11]), .S(
        SUM_10_) );
  ADDFHX4 U1_11 ( .A(A_11_), .B(B_11_), .CI(carry[11]), .CO(carry[12]), .S(
        SUM_11_) );
  ADDFHX2 U1_8 ( .A(A_8_), .B(B_8_), .CI(carry[8]), .CO(carry[9]), .S(SUM_8_)
         );
  ADDFHX4 U1_9 ( .A(A_9_), .B(B_9_), .CI(carry[9]), .CO(carry[10]), .S(SUM_9_)
         );
  AND2X2 U1 ( .A(B_26_), .B(n8), .Y(SUM_28_) );
  AND2XL U2 ( .A(B_6_), .B(A_6_), .Y(n1) );
  NAND2X1 U3 ( .A(A_19_), .B(carry[19]), .Y(n4) );
  NAND3X1 U4 ( .A(n3), .B(n4), .C(n5), .Y(carry[20]) );
  NAND2X1 U5 ( .A(A_19_), .B(B_19_), .Y(n5) );
  NAND2X1 U6 ( .A(B_19_), .B(carry[19]), .Y(n3) );
  CLKBUFX3 U7 ( .A(A_3_), .Y(SUM_3_) );
  XOR2X1 U8 ( .A(carry[19]), .B(n2), .Y(SUM_19_) );
  CLKBUFX3 U9 ( .A(A_2_), .Y(SUM_2_) );
  XOR2XL U10 ( .A(B_19_), .B(A_19_), .Y(n2) );
  XOR2XL U11 ( .A(B_6_), .B(A_6_), .Y(SUM_6_) );
  AND2XL U12 ( .A(B_24_), .B(carry[24]), .Y(n7) );
  OR2X1 U13 ( .A(B_23_), .B(carry[23]), .Y(carry[24]) );
  AND2X2 U14 ( .A(B_25_), .B(n7), .Y(n8) );
  XNOR2X1 U15 ( .A(B_23_), .B(carry[23]), .Y(SUM_23_) );
  XOR2X1 U16 ( .A(B_24_), .B(carry[24]), .Y(SUM_24_) );
  XOR2X1 U17 ( .A(B_25_), .B(n7), .Y(SUM_25_) );
  XOR2X1 U18 ( .A(B_26_), .B(n8), .Y(SUM_26_) );
  CLKBUFX3 U19 ( .A(A_4_), .Y(SUM_4_) );
  CLKBUFX3 U20 ( .A(A_5_), .Y(SUM_5_) );
  CLKINVX1 U21 ( .A(SUM_28_), .Y(SUM_27_) );
endmodule


module MULT_0_DW01_add_1 ( A_36_, A_35_, A_34_, A_33_, A_32_, A_31_, A_30_, 
        A_29_, A_28_, A_27_, A_26_, A_25_, A_24_, A_23_, A_22_, A_21_, A_20_, 
        A_19_, A_18_, A_17_, A_16_, A_15_, A_14_, B_28_, B_27_, B_26_, B_25_, 
        B_24_, B_23_, B_22_, B_21_, B_20_, B_19_, B_18_, B_17_, B_16_, B_15_, 
        B_14_, B_13_, B_12_, B_11_, B_10_, B_9_, B_8_, B_7_, B_6_, B_5_, B_4_, 
        B_3_, B_2_, SUM_36_, SUM_35_, SUM_34_, SUM_33_, SUM_32_, SUM_31_, 
        SUM_30_, SUM_29_, SUM_28_, SUM_27_, SUM_26_, SUM_25_, SUM_24_, SUM_23_, 
        SUM_22_, SUM_21_, SUM_20_, SUM_19_, SUM_18_, SUM_17_, SUM_16_, SUM_15_, 
        SUM_14_, SUM_13_, SUM_12_, SUM_11_, SUM_10_, SUM_9_, SUM_8_, SUM_7_, 
        SUM_6_, SUM_5_, SUM_4_, SUM_3_, SUM_2_ );
  input A_36_, A_35_, A_34_, A_33_, A_32_, A_31_, A_30_, A_29_, A_28_, A_27_,
         A_26_, A_25_, A_24_, A_23_, A_22_, A_21_, A_20_, A_19_, A_18_, A_17_,
         A_16_, A_15_, A_14_, B_28_, B_27_, B_26_, B_25_, B_24_, B_23_, B_22_,
         B_21_, B_20_, B_19_, B_18_, B_17_, B_16_, B_15_, B_14_, B_13_, B_12_,
         B_11_, B_10_, B_9_, B_8_, B_7_, B_6_, B_5_, B_4_, B_3_, B_2_;
  output SUM_36_, SUM_35_, SUM_34_, SUM_33_, SUM_32_, SUM_31_, SUM_30_,
         SUM_29_, SUM_28_, SUM_27_, SUM_26_, SUM_25_, SUM_24_, SUM_23_,
         SUM_22_, SUM_21_, SUM_20_, SUM_19_, SUM_18_, SUM_17_, SUM_16_,
         SUM_15_, SUM_14_, SUM_13_, SUM_12_, SUM_11_, SUM_10_, SUM_9_, SUM_8_,
         SUM_7_, SUM_6_, SUM_5_, SUM_4_, SUM_3_, SUM_2_;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n24;
  wire   [29:16] carry;

  ADDFXL U1_17 ( .A(A_17_), .B(B_17_), .CI(carry[17]), .CO(carry[18]), .S(
        SUM_17_) );
  ADDFXL U1_16 ( .A(A_16_), .B(B_16_), .CI(carry[16]), .CO(carry[17]), .S(
        SUM_16_) );
  ADDFXL U1_15 ( .A(A_15_), .B(B_15_), .CI(n1), .CO(carry[16]), .S(SUM_15_) );
  ADDFXL U1_18 ( .A(A_18_), .B(B_18_), .CI(carry[18]), .CO(carry[19]), .S(
        SUM_18_) );
  ADDFXL U1_21 ( .A(A_21_), .B(B_21_), .CI(carry[21]), .CO(carry[22]), .S(
        SUM_21_) );
  ADDFXL U1_19 ( .A(A_19_), .B(B_19_), .CI(carry[19]), .CO(carry[20]), .S(
        SUM_19_) );
  ADDFHX2 U1_25 ( .A(A_25_), .B(B_25_), .CI(carry[25]), .CO(carry[26]), .S(
        SUM_25_) );
  ADDFHX4 U1_26 ( .A(A_26_), .B(B_26_), .CI(carry[26]), .CO(carry[27]), .S(
        SUM_26_) );
  ADDFHX2 U1_23 ( .A(A_23_), .B(B_23_), .CI(carry[23]), .CO(carry[24]), .S(
        SUM_23_) );
  ADDFHX4 U1_24 ( .A(A_24_), .B(B_24_), .CI(carry[24]), .CO(carry[25]), .S(
        SUM_24_) );
  ADDFX2 U1_27 ( .A(A_27_), .B(B_27_), .CI(carry[27]), .CO(carry[28]), .S(
        SUM_27_) );
  ADDFX2 U1_22 ( .A(A_22_), .B(B_22_), .CI(carry[22]), .CO(carry[23]), .S(
        SUM_22_) );
  ADDFX2 U1_28 ( .A(A_28_), .B(B_28_), .CI(carry[28]), .CO(carry[29]), .S(
        SUM_28_) );
  ADDFX2 U1_20 ( .A(A_20_), .B(B_20_), .CI(carry[20]), .CO(carry[21]), .S(
        SUM_20_) );
  XOR2X1 U1 ( .A(A_34_), .B(n10), .Y(SUM_34_) );
  NAND2X1 U2 ( .A(n4), .B(n5), .Y(SUM_29_) );
  NAND2X1 U3 ( .A(A_29_), .B(n3), .Y(n4) );
  CLKINVX1 U4 ( .A(carry[29]), .Y(n3) );
  CLKBUFX3 U5 ( .A(B_2_), .Y(SUM_2_) );
  CLKBUFX3 U6 ( .A(B_6_), .Y(SUM_6_) );
  AND2X2 U7 ( .A(B_14_), .B(A_14_), .Y(n1) );
  NAND2X1 U8 ( .A(n2), .B(carry[29]), .Y(n5) );
  INVXL U9 ( .A(A_29_), .Y(n2) );
  XOR2X1 U10 ( .A(A_32_), .B(n8), .Y(SUM_32_) );
  XOR2X1 U11 ( .A(A_35_), .B(n11), .Y(SUM_35_) );
  XOR2XL U12 ( .A(A_33_), .B(n9), .Y(SUM_33_) );
  AND2X1 U13 ( .A(A_30_), .B(n6), .Y(n7) );
  NAND2X1 U14 ( .A(A_35_), .B(n11), .Y(n24) );
  AND2X2 U15 ( .A(A_32_), .B(n8), .Y(n9) );
  XOR2XL U16 ( .A(A_30_), .B(n6), .Y(SUM_30_) );
  BUFX2 U17 ( .A(B_7_), .Y(SUM_7_) );
  XOR2XL U18 ( .A(A_31_), .B(n7), .Y(SUM_31_) );
  AND2X1 U19 ( .A(A_31_), .B(n7), .Y(n8) );
  AND2X1 U20 ( .A(A_33_), .B(n9), .Y(n10) );
  BUFX2 U21 ( .A(B_10_), .Y(SUM_10_) );
  AND2X2 U22 ( .A(A_29_), .B(carry[29]), .Y(n6) );
  AND2X2 U23 ( .A(A_34_), .B(n10), .Y(n11) );
  CLKBUFX3 U24 ( .A(B_11_), .Y(SUM_11_) );
  CLKBUFX3 U25 ( .A(B_12_), .Y(SUM_12_) );
  CLKBUFX3 U26 ( .A(B_13_), .Y(SUM_13_) );
  XNOR2X1 U27 ( .A(A_36_), .B(n24), .Y(SUM_36_) );
  XOR2X1 U28 ( .A(B_14_), .B(A_14_), .Y(SUM_14_) );
  CLKBUFX3 U29 ( .A(B_8_), .Y(SUM_8_) );
  CLKBUFX3 U30 ( .A(B_9_), .Y(SUM_9_) );
  CLKBUFX3 U31 ( .A(B_3_), .Y(SUM_3_) );
  CLKBUFX3 U32 ( .A(B_4_), .Y(SUM_4_) );
  CLKBUFX3 U33 ( .A(B_5_), .Y(SUM_5_) );
endmodule


module MULT_0_DW01_add_0 ( A, SUM, B_36_, B_35_, B_34_, B_33_, B_32_, B_31_, 
        B_30_, B_29_, B_28_, B_27_, B_26_, B_25_, B_24_, B_23_, B_22_, B_21_, 
        B_20_, B_19_, B_18_, B_17_, B_16_, B_15_, B_14_, B_13_, B_12_, B_11_, 
        B_10_, B_9_, B_8_, B_7_, B_6_, B_5_, B_4_, B_3_, B_2_ );
  input [36:0] A;
  output [36:0] SUM;
  input B_36_, B_35_, B_34_, B_33_, B_32_, B_31_, B_30_, B_29_, B_28_, B_27_,
         B_26_, B_25_, B_24_, B_23_, B_22_, B_21_, B_20_, B_19_, B_18_, B_17_,
         B_16_, B_15_, B_14_, B_13_, B_12_, B_11_, B_10_, B_9_, B_8_, B_7_,
         B_6_, B_5_, B_4_, B_3_, B_2_;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20;
  wire   [36:4] carry;

  ADDFXL U1_8 ( .A(A[8]), .B(B_8_), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_19 ( .A(A[19]), .B(B_19_), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B_17_), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFX1 U1_15 ( .A(A[15]), .B(B_15_), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFHX2 U1_31 ( .A(A[31]), .B(B_31_), .CI(carry[31]), .CO(carry[32]), .S(
        SUM[31]) );
  ADDFHX2 U1_34 ( .A(A[34]), .B(B_34_), .CI(carry[34]), .CO(carry[35]), .S(
        SUM[34]) );
  ADDFX1 U1_30 ( .A(A[30]), .B(B_30_), .CI(carry[30]), .CO(carry[31]), .S(
        SUM[30]) );
  ADDFHX4 U1_12 ( .A(A[12]), .B(B_12_), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFHX4 U1_3 ( .A(A[3]), .B(B_3_), .CI(n2), .CO(carry[4]), .S(SUM[3]) );
  ADDFHX4 U1_4 ( .A(A[4]), .B(B_4_), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFHX4 U1_28 ( .A(A[28]), .B(B_28_), .CI(carry[28]), .CO(carry[29]), .S(
        SUM[28]) );
  ADDFHX2 U1_33 ( .A(A[33]), .B(n1), .CI(carry[33]), .CO(carry[34]), .S(
        SUM[33]) );
  ADDFHX4 U1_35 ( .A(A[35]), .B(B_35_), .CI(carry[35]), .CO(carry[36]), .S(
        SUM[35]) );
  XOR3X1 U1_36 ( .A(A[36]), .B(B_36_), .C(carry[36]), .Y(SUM[36]) );
  ADDFX2 U1_26 ( .A(A[26]), .B(B_26_), .CI(carry[26]), .CO(carry[27]), .S(
        SUM[26]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B_16_), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B_18_), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_7 ( .A(A[7]), .B(B_7_), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFHX2 U1_25 ( .A(A[25]), .B(B_25_), .CI(carry[25]), .CO(carry[26]), .S(
        SUM[25]) );
  ADDFHX2 U1_11 ( .A(A[11]), .B(B_11_), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFHX4 U1_13 ( .A(A[13]), .B(B_13_), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFHX4 U1_32 ( .A(A[32]), .B(B_32_), .CI(carry[32]), .CO(carry[33]), .S(
        SUM[32]) );
  ADDFHX4 U1_5 ( .A(A[5]), .B(B_5_), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFHX4 U1_24 ( .A(A[24]), .B(B_24_), .CI(carry[24]), .CO(carry[25]), .S(
        SUM[24]) );
  ADDFHX2 U1_9 ( .A(A[9]), .B(B_9_), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFHX4 U1_10 ( .A(A[10]), .B(B_10_), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFHX2 U1_20 ( .A(A[20]), .B(B_20_), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFHX2 U1_21 ( .A(A[21]), .B(B_21_), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  BUFX4 U1 ( .A(B_33_), .Y(n1) );
  NAND3X2 U2 ( .A(n6), .B(n7), .C(n8), .Y(carry[24]) );
  NAND2X4 U3 ( .A(B_6_), .B(carry[6]), .Y(n12) );
  NAND2X4 U4 ( .A(A[6]), .B(carry[6]), .Y(n13) );
  NAND3X2 U5 ( .A(n9), .B(n10), .C(n11), .Y(carry[28]) );
  NAND2X1 U6 ( .A(B_27_), .B(carry[27]), .Y(n9) );
  NAND3X4 U7 ( .A(n3), .B(n4), .C(n5), .Y(carry[23]) );
  NAND2X1 U8 ( .A(A[29]), .B(B_29_), .Y(n20) );
  NAND2X1 U9 ( .A(A[27]), .B(carry[27]), .Y(n10) );
  NAND2X1 U10 ( .A(carry[23]), .B(B_23_), .Y(n6) );
  AND2X2 U11 ( .A(B_2_), .B(A[2]), .Y(n2) );
  XOR3XL U12 ( .A(carry[22]), .B(A[22]), .C(B_22_), .Y(SUM[22]) );
  NAND2X2 U13 ( .A(B_22_), .B(carry[22]), .Y(n3) );
  NAND2X2 U14 ( .A(A[22]), .B(carry[22]), .Y(n4) );
  NAND2X4 U15 ( .A(A[22]), .B(B_22_), .Y(n5) );
  XOR3XL U16 ( .A(B_23_), .B(A[23]), .C(carry[23]), .Y(SUM[23]) );
  NAND2X4 U17 ( .A(A[23]), .B(carry[23]), .Y(n8) );
  NAND2XL U18 ( .A(A[23]), .B(B_23_), .Y(n7) );
  NAND2X1 U19 ( .A(B_29_), .B(carry[29]), .Y(n18) );
  XOR3XL U20 ( .A(carry[27]), .B(A[27]), .C(B_27_), .Y(SUM[27]) );
  NAND2X4 U21 ( .A(A[27]), .B(B_27_), .Y(n11) );
  NAND3X1 U22 ( .A(n15), .B(n16), .C(n17), .Y(carry[15]) );
  NAND2X1 U23 ( .A(B_14_), .B(carry[14]), .Y(n15) );
  NAND2X1 U24 ( .A(A[14]), .B(carry[14]), .Y(n16) );
  NAND3X1 U25 ( .A(n12), .B(n13), .C(n14), .Y(carry[7]) );
  NAND2X1 U26 ( .A(A[6]), .B(B_6_), .Y(n14) );
  XOR3XL U27 ( .A(carry[29]), .B(A[29]), .C(B_29_), .Y(SUM[29]) );
  NAND2XL U28 ( .A(A[29]), .B(carry[29]), .Y(n19) );
  NAND3X1 U29 ( .A(n18), .B(n19), .C(n20), .Y(carry[30]) );
  XOR3XL U30 ( .A(carry[6]), .B(A[6]), .C(B_6_), .Y(SUM[6]) );
  XOR3XL U31 ( .A(carry[14]), .B(A[14]), .C(B_14_), .Y(SUM[14]) );
  NAND2X1 U32 ( .A(A[14]), .B(B_14_), .Y(n17) );
  XOR2X1 U33 ( .A(B_2_), .B(A[2]), .Y(SUM[2]) );
  CLKBUFX3 U34 ( .A(A[0]), .Y(SUM[0]) );
  CLKBUFX3 U35 ( .A(A[1]), .Y(SUM[1]) );
endmodule


module MULT_0_DW01_add_8 ( A_22_, A_21_, A_20_, A_19_, A_18_, A_17_, A_16_, 
        A_15_, A_14_, A_13_, A_12_, A_11_, A_10_, A_9_, A_8_, A_7_, A_6_, A_5_, 
        A_4_, A_3_, A_2_, A_1_, A_0_, B_24_, B_23_, B_22_, B_21_, B_20_, B_19_, 
        B_18_, B_17_, B_16_, B_15_, B_14_, B_13_, B_12_, B_11_, B_10_, B_9_, 
        B_8_, B_7_, B_6_, B_5_, B_4_, SUM_26_, SUM_25_, SUM_24_, SUM_23_, 
        SUM_22_, SUM_21_, SUM_20_, SUM_19_, SUM_18_, SUM_17_, SUM_16_, SUM_15_, 
        SUM_14_, SUM_13_, SUM_12_, SUM_11_, SUM_10_, SUM_9_, SUM_8_, SUM_7_, 
        SUM_6_, SUM_5_, SUM_4_, SUM_3_, SUM_2_, SUM_1_, SUM_0_ );
  input A_22_, A_21_, A_20_, A_19_, A_18_, A_17_, A_16_, A_15_, A_14_, A_13_,
         A_12_, A_11_, A_10_, A_9_, A_8_, A_7_, A_6_, A_5_, A_4_, A_3_, A_2_,
         A_1_, A_0_, B_24_, B_23_, B_22_, B_21_, B_20_, B_19_, B_18_, B_17_,
         B_16_, B_15_, B_14_, B_13_, B_12_, B_11_, B_10_, B_9_, B_8_, B_7_,
         B_6_, B_5_, B_4_;
  output SUM_26_, SUM_25_, SUM_24_, SUM_23_, SUM_22_, SUM_21_, SUM_20_,
         SUM_19_, SUM_18_, SUM_17_, SUM_16_, SUM_15_, SUM_14_, SUM_13_,
         SUM_12_, SUM_11_, SUM_10_, SUM_9_, SUM_8_, SUM_7_, SUM_6_, SUM_5_,
         SUM_4_, SUM_3_, SUM_2_, SUM_1_, SUM_0_;
  wire   n1, n2, n3, n4, n5, n6, n7, n8;
  wire   [23:6] carry;

  ADDFXL U1_18 ( .A(A_18_), .B(B_18_), .CI(carry[18]), .CO(carry[19]), .S(
        SUM_18_) );
  ADDFXL U1_21 ( .A(A_21_), .B(B_21_), .CI(carry[21]), .CO(carry[22]), .S(
        SUM_21_) );
  ADDFHX2 U1_17 ( .A(A_17_), .B(B_17_), .CI(carry[17]), .CO(carry[18]), .S(
        SUM_17_) );
  ADDFHX2 U1_6 ( .A(A_6_), .B(B_6_), .CI(carry[6]), .CO(carry[7]), .S(SUM_6_)
         );
  ADDFX2 U1_22 ( .A(A_22_), .B(B_22_), .CI(carry[22]), .CO(carry[23]), .S(
        SUM_22_) );
  ADDFXL U1_12 ( .A(A_12_), .B(B_12_), .CI(carry[12]), .CO(carry[13]), .S(
        SUM_12_) );
  ADDFXL U1_20 ( .A(A_20_), .B(B_20_), .CI(carry[20]), .CO(carry[21]), .S(
        SUM_20_) );
  ADDFXL U1_19 ( .A(A_19_), .B(B_19_), .CI(carry[19]), .CO(carry[20]), .S(
        SUM_19_) );
  ADDFHX2 U1_15 ( .A(A_15_), .B(B_15_), .CI(carry[15]), .CO(carry[16]), .S(
        SUM_15_) );
  ADDFHX4 U1_16 ( .A(A_16_), .B(B_16_), .CI(carry[16]), .CO(carry[17]), .S(
        SUM_16_) );
  ADDFHX2 U1_13 ( .A(A_13_), .B(B_13_), .CI(carry[13]), .CO(carry[14]), .S(
        SUM_13_) );
  ADDFHX4 U1_14 ( .A(A_14_), .B(B_14_), .CI(carry[14]), .CO(carry[15]), .S(
        SUM_14_) );
  ADDFHX4 U1_8 ( .A(A_8_), .B(B_8_), .CI(carry[8]), .CO(carry[9]), .S(SUM_8_)
         );
  ADDFHX4 U1_9 ( .A(A_9_), .B(B_9_), .CI(carry[9]), .CO(carry[10]), .S(SUM_9_)
         );
  ADDFHX4 U1_10 ( .A(A_10_), .B(B_10_), .CI(carry[10]), .CO(carry[11]), .S(
        SUM_10_) );
  ADDFHX4 U1_11 ( .A(A_11_), .B(B_11_), .CI(carry[11]), .CO(carry[12]), .S(
        SUM_11_) );
  NAND2X4 U1 ( .A(A_5_), .B(B_5_), .Y(n2) );
  NAND2X6 U2 ( .A(n1), .B(A_5_), .Y(n4) );
  NAND2X6 U3 ( .A(n1), .B(B_5_), .Y(n3) );
  CLKAND2X12 U4 ( .A(B_4_), .B(A_4_), .Y(n1) );
  XOR2X1 U5 ( .A(B_23_), .B(carry[23]), .Y(SUM_23_) );
  NAND2XL U6 ( .A(B_7_), .B(carry[7]), .Y(n5) );
  NAND2X1 U7 ( .A(A_7_), .B(carry[7]), .Y(n6) );
  NAND2XL U8 ( .A(A_7_), .B(B_7_), .Y(n7) );
  NAND3X1 U9 ( .A(n5), .B(n6), .C(n7), .Y(carry[8]) );
  XOR3XL U10 ( .A(B_5_), .B(n1), .C(A_5_), .Y(SUM_5_) );
  NAND3X1 U11 ( .A(n2), .B(n3), .C(n4), .Y(carry[6]) );
  XOR3XL U12 ( .A(carry[7]), .B(A_7_), .C(B_7_), .Y(SUM_7_) );
  AND2XL U13 ( .A(B_24_), .B(n8), .Y(SUM_26_) );
  CLKBUFX2 U14 ( .A(A_3_), .Y(SUM_3_) );
  XOR2XL U15 ( .A(B_4_), .B(A_4_), .Y(SUM_4_) );
  CLKBUFX2 U16 ( .A(A_2_), .Y(SUM_2_) );
  CLKBUFX2 U17 ( .A(A_0_), .Y(SUM_0_) );
  CLKBUFX2 U18 ( .A(A_1_), .Y(SUM_1_) );
  AND2X2 U19 ( .A(B_23_), .B(carry[23]), .Y(n8) );
  XOR2X1 U20 ( .A(B_24_), .B(n8), .Y(SUM_24_) );
  CLKINVX1 U21 ( .A(SUM_26_), .Y(SUM_25_) );
endmodule


module MULT_0_DW01_add_7 ( A_32_, A_31_, A_30_, A_29_, A_28_, A_27_, A_26_, 
        A_25_, A_24_, A_23_, A_22_, A_21_, A_20_, A_19_, A_18_, A_17_, A_16_, 
        A_15_, A_14_, A_13_, A_12_, B_35_, B_34_, B_33_, B_32_, B_31_, B_30_, 
        B_29_, B_28_, B_27_, B_26_, B_25_, B_24_, B_23_, B_22_, B_21_, B_20_, 
        B_19_, B_18_, B_17_, B_16_, SUM_36_, SUM_35_, SUM_34_, SUM_33_, 
        SUM_32_, SUM_31_, SUM_30_, SUM_29_, SUM_28_, SUM_27_, SUM_26_, SUM_25_, 
        SUM_24_, SUM_23_, SUM_22_, SUM_21_, SUM_20_, SUM_19_, SUM_18_, SUM_17_, 
        SUM_16_, SUM_15_, SUM_14_, SUM_13_, SUM_12_ );
  input A_32_, A_31_, A_30_, A_29_, A_28_, A_27_, A_26_, A_25_, A_24_, A_23_,
         A_22_, A_21_, A_20_, A_19_, A_18_, A_17_, A_16_, A_15_, A_14_, A_13_,
         A_12_, B_35_, B_34_, B_33_, B_32_, B_31_, B_30_, B_29_, B_28_, B_27_,
         B_26_, B_25_, B_24_, B_23_, B_22_, B_21_, B_20_, B_19_, B_18_, B_17_,
         B_16_;
  output SUM_36_, SUM_35_, SUM_34_, SUM_33_, SUM_32_, SUM_31_, SUM_30_,
         SUM_29_, SUM_28_, SUM_27_, SUM_26_, SUM_25_, SUM_24_, SUM_23_,
         SUM_22_, SUM_21_, SUM_20_, SUM_19_, SUM_18_, SUM_17_, SUM_16_,
         SUM_15_, SUM_14_, SUM_13_, SUM_12_;
  wire   n1, n2, n7;
  wire   [34:18] carry;

  ADDFXL U1_31 ( .A(A_31_), .B(B_31_), .CI(carry[31]), .CO(carry[32]), .S(
        SUM_31_) );
  ADDFXL U1_28 ( .A(A_28_), .B(B_28_), .CI(carry[28]), .CO(carry[29]), .S(
        SUM_28_) );
  ADDFXL U1_27 ( .A(A_27_), .B(B_27_), .CI(carry[27]), .CO(carry[28]), .S(
        SUM_27_) );
  ADDFXL U1_23 ( .A(A_23_), .B(B_23_), .CI(carry[23]), .CO(carry[24]), .S(
        SUM_23_) );
  ADDFXL U1_21 ( .A(A_21_), .B(B_21_), .CI(carry[21]), .CO(carry[22]), .S(
        SUM_21_) );
  ADDFXL U1_20 ( .A(A_20_), .B(B_20_), .CI(carry[20]), .CO(carry[21]), .S(
        SUM_20_) );
  ADDFXL U1_19 ( .A(A_19_), .B(B_19_), .CI(carry[19]), .CO(carry[20]), .S(
        SUM_19_) );
  ADDFXL U1_18 ( .A(A_18_), .B(B_18_), .CI(carry[18]), .CO(carry[19]), .S(
        SUM_18_) );
  ADDFXL U1_29 ( .A(A_29_), .B(B_29_), .CI(carry[29]), .CO(carry[30]), .S(
        SUM_29_) );
  ADDFXL U1_32 ( .A(A_32_), .B(B_32_), .CI(carry[32]), .CO(carry[33]), .S(
        SUM_32_) );
  ADDFX2 U1_25 ( .A(A_25_), .B(B_25_), .CI(carry[25]), .CO(carry[26]), .S(
        SUM_25_) );
  ADDFX2 U1_24 ( .A(A_24_), .B(B_24_), .CI(carry[24]), .CO(carry[25]), .S(
        SUM_24_) );
  ADDFX2 U1_22 ( .A(A_22_), .B(B_22_), .CI(carry[22]), .CO(carry[23]), .S(
        SUM_22_) );
  ADDFX2 U1_17 ( .A(A_17_), .B(B_17_), .CI(n1), .CO(carry[18]), .S(SUM_17_) );
  ADDFXL U1_30 ( .A(A_30_), .B(B_30_), .CI(carry[30]), .CO(carry[31]), .S(
        SUM_30_) );
  ADDFXL U1_26 ( .A(A_26_), .B(B_26_), .CI(carry[26]), .CO(carry[27]), .S(
        SUM_26_) );
  AND2X2 U1 ( .A(B_16_), .B(A_16_), .Y(n1) );
  CLKBUFX2 U2 ( .A(A_12_), .Y(SUM_12_) );
  CLKBUFX3 U3 ( .A(A_13_), .Y(SUM_13_) );
  CLKBUFX3 U4 ( .A(A_14_), .Y(SUM_14_) );
  CLKBUFX3 U5 ( .A(A_15_), .Y(SUM_15_) );
  XOR2X1 U6 ( .A(B_16_), .B(A_16_), .Y(SUM_16_) );
  XNOR2X1 U7 ( .A(B_33_), .B(carry[33]), .Y(SUM_33_) );
  XOR2X1 U8 ( .A(B_34_), .B(carry[34]), .Y(SUM_34_) );
  XOR2X1 U9 ( .A(B_35_), .B(n2), .Y(SUM_35_) );
  XOR2X1 U10 ( .A(B_35_), .B(n7), .Y(SUM_36_) );
  NAND2X1 U11 ( .A(B_35_), .B(n2), .Y(n7) );
  OR2X1 U12 ( .A(B_33_), .B(carry[33]), .Y(carry[34]) );
  AND2X2 U13 ( .A(B_34_), .B(carry[34]), .Y(n2) );
endmodule


module MULT_0_DW01_add_6 ( A_26_, A_25_, A_24_, A_23_, A_22_, A_21_, A_20_, 
        A_19_, A_18_, A_17_, A_16_, A_15_, A_14_, A_13_, A_12_, A_11_, A_10_, 
        A_9_, A_8_, A_7_, A_6_, A_5_, A_4_, A_3_, A_2_, A_1_, A_0_, B_28_, 
        B_27_, B_26_, B_25_, B_24_, B_23_, B_22_, B_21_, B_20_, B_19_, B_18_, 
        B_17_, B_16_, B_15_, B_14_, B_13_, B_12_, B_11_, B_10_, B_9_, B_8_, 
        SUM_30_, SUM_29_, SUM_28_, SUM_27_, SUM_26_, SUM_25_, SUM_24_, SUM_23_, 
        SUM_22_, SUM_21_, SUM_20_, SUM_19_, SUM_18_, SUM_17_, SUM_16_, SUM_15_, 
        SUM_14_, SUM_13_, SUM_12_, SUM_11_, SUM_10_, SUM_9_, SUM_8_, SUM_7_, 
        SUM_6_, SUM_5_, SUM_4_, SUM_3_, SUM_2_, SUM_1_, SUM_0_ );
  input A_26_, A_25_, A_24_, A_23_, A_22_, A_21_, A_20_, A_19_, A_18_, A_17_,
         A_16_, A_15_, A_14_, A_13_, A_12_, A_11_, A_10_, A_9_, A_8_, A_7_,
         A_6_, A_5_, A_4_, A_3_, A_2_, A_1_, A_0_, B_28_, B_27_, B_26_, B_25_,
         B_24_, B_23_, B_22_, B_21_, B_20_, B_19_, B_18_, B_17_, B_16_, B_15_,
         B_14_, B_13_, B_12_, B_11_, B_10_, B_9_, B_8_;
  output SUM_30_, SUM_29_, SUM_28_, SUM_27_, SUM_26_, SUM_25_, SUM_24_,
         SUM_23_, SUM_22_, SUM_21_, SUM_20_, SUM_19_, SUM_18_, SUM_17_,
         SUM_16_, SUM_15_, SUM_14_, SUM_13_, SUM_12_, SUM_11_, SUM_10_, SUM_9_,
         SUM_8_, SUM_7_, SUM_6_, SUM_5_, SUM_4_, SUM_3_, SUM_2_, SUM_1_,
         SUM_0_;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n21;
  wire   [27:10] carry;

  ADDFHX2 U1_15 ( .A(A_15_), .B(B_15_), .CI(carry[15]), .CO(carry[16]), .S(
        SUM_15_) );
  ADDFX2 U1_24 ( .A(A_24_), .B(B_24_), .CI(carry[24]), .CO(carry[25]), .S(
        SUM_24_) );
  ADDFHX4 U1_25 ( .A(A_25_), .B(B_25_), .CI(carry[25]), .CO(carry[26]), .S(
        SUM_25_) );
  ADDFHX4 U1_16 ( .A(A_16_), .B(B_16_), .CI(carry[16]), .CO(carry[17]), .S(
        SUM_16_) );
  ADDFX2 U1_22 ( .A(A_22_), .B(B_22_), .CI(carry[22]), .CO(carry[23]), .S(
        SUM_22_) );
  ADDFXL U1_21 ( .A(A_21_), .B(B_21_), .CI(carry[21]), .CO(carry[22]), .S(
        SUM_21_) );
  ADDFXL U1_19 ( .A(A_19_), .B(B_19_), .CI(carry[19]), .CO(carry[20]), .S(
        SUM_19_) );
  ADDFXL U1_18 ( .A(A_18_), .B(B_18_), .CI(carry[18]), .CO(carry[19]), .S(
        SUM_18_) );
  ADDFHX4 U1_10 ( .A(A_10_), .B(B_10_), .CI(carry[10]), .CO(carry[11]), .S(
        SUM_10_) );
  ADDFHX2 U1_26 ( .A(A_26_), .B(B_26_), .CI(carry[26]), .CO(carry[27]), .S(
        SUM_26_) );
  ADDFHX4 U1_13 ( .A(A_13_), .B(B_13_), .CI(carry[13]), .CO(carry[14]), .S(
        SUM_13_) );
  ADDFHX2 U1_12 ( .A(A_12_), .B(B_12_), .CI(carry[12]), .CO(carry[13]), .S(
        SUM_12_) );
  ADDFX2 U1_20 ( .A(A_20_), .B(B_20_), .CI(carry[20]), .CO(carry[21]), .S(
        SUM_20_) );
  AND2X4 U1 ( .A(B_8_), .B(A_8_), .Y(n1) );
  NAND2X4 U2 ( .A(B_9_), .B(A_9_), .Y(n11) );
  NAND2X2 U3 ( .A(B_9_), .B(n1), .Y(n12) );
  NAND3X1 U4 ( .A(n3), .B(n4), .C(n5), .Y(carry[18]) );
  NAND3X1 U5 ( .A(n10), .B(n11), .C(n12), .Y(carry[10]) );
  XOR2X1 U6 ( .A(A_17_), .B(B_17_), .Y(n2) );
  XOR3X1 U7 ( .A(A_23_), .B(B_23_), .C(carry[23]), .Y(SUM_23_) );
  XOR2X1 U8 ( .A(carry[17]), .B(n2), .Y(SUM_17_) );
  NAND2X1 U9 ( .A(A_17_), .B(carry[17]), .Y(n3) );
  NAND2X1 U10 ( .A(B_17_), .B(carry[17]), .Y(n4) );
  NAND2X1 U11 ( .A(B_17_), .B(A_17_), .Y(n5) );
  NAND2XL U12 ( .A(carry[23]), .B(A_23_), .Y(n6) );
  NAND2XL U13 ( .A(B_23_), .B(A_23_), .Y(n7) );
  NAND2XL U14 ( .A(B_23_), .B(carry[23]), .Y(n8) );
  NAND3X1 U15 ( .A(n6), .B(n7), .C(n8), .Y(carry[24]) );
  XOR2XL U16 ( .A(n1), .B(B_9_), .Y(n9) );
  XOR2XL U17 ( .A(A_9_), .B(n9), .Y(SUM_9_) );
  NAND2X1 U18 ( .A(n1), .B(A_9_), .Y(n10) );
  NAND2X1 U19 ( .A(A_11_), .B(carry[11]), .Y(n13) );
  NAND2X1 U20 ( .A(B_11_), .B(carry[11]), .Y(n14) );
  NAND2X1 U21 ( .A(B_11_), .B(A_11_), .Y(n15) );
  NAND3X1 U22 ( .A(n13), .B(n14), .C(n15), .Y(carry[12]) );
  XOR3XL U23 ( .A(carry[11]), .B(B_11_), .C(A_11_), .Y(SUM_11_) );
  NAND2X1 U24 ( .A(A_14_), .B(carry[14]), .Y(n17) );
  NAND2XL U25 ( .A(B_14_), .B(A_14_), .Y(n19) );
  XOR2X1 U26 ( .A(carry[14]), .B(n16), .Y(SUM_14_) );
  NAND2X1 U27 ( .A(B_14_), .B(carry[14]), .Y(n18) );
  NAND3X1 U28 ( .A(n17), .B(n18), .C(n19), .Y(carry[15]) );
  XOR2XL U29 ( .A(A_14_), .B(B_14_), .Y(n16) );
  AND2X2 U30 ( .A(B_28_), .B(n21), .Y(SUM_30_) );
  AND2X2 U31 ( .A(B_27_), .B(carry[27]), .Y(n21) );
  XOR2XL U32 ( .A(B_8_), .B(A_8_), .Y(SUM_8_) );
  CLKBUFX3 U33 ( .A(A_7_), .Y(SUM_7_) );
  CLKBUFX3 U34 ( .A(A_2_), .Y(SUM_2_) );
  CLKBUFX3 U35 ( .A(A_5_), .Y(SUM_5_) );
  CLKBUFX3 U36 ( .A(A_6_), .Y(SUM_6_) );
  CLKBUFX3 U37 ( .A(A_3_), .Y(SUM_3_) );
  CLKBUFX3 U38 ( .A(A_4_), .Y(SUM_4_) );
  XOR2X1 U39 ( .A(B_27_), .B(carry[27]), .Y(SUM_27_) );
  XOR2X1 U40 ( .A(B_28_), .B(n21), .Y(SUM_28_) );
  CLKBUFX3 U41 ( .A(A_0_), .Y(SUM_0_) );
  CLKBUFX3 U42 ( .A(A_1_), .Y(SUM_1_) );
  CLKINVX1 U43 ( .A(SUM_30_), .Y(SUM_29_) );
endmodule


module MULT_0_DW01_add_5 ( SUM, A_36_, A_35_, A_34_, A_33_, A_32_, A_31_, 
        A_30_, A_29_, A_28_, A_27_, A_26_, A_25_, A_24_, A_23_, A_22_, A_21_, 
        A_20_, A_19_, A_18_, A_17_, A_16_, A_15_, A_14_, A_13_, A_12_, B_30_, 
        B_29_, B_28_, B_27_, B_26_, B_25_, B_24_, B_23_, B_22_, B_21_, B_20_, 
        B_19_, B_18_, B_17_, B_16_, B_15_, B_14_, B_13_, B_12_, B_11_, B_10_, 
        B_9_, B_8_, B_7_, B_6_, B_5_, B_4_, B_3_, B_2_, B_1_, B_0_ );
  output [36:0] SUM;
  input A_36_, A_35_, A_34_, A_33_, A_32_, A_31_, A_30_, A_29_, A_28_, A_27_,
         A_26_, A_25_, A_24_, A_23_, A_22_, A_21_, A_20_, A_19_, A_18_, A_17_,
         A_16_, A_15_, A_14_, A_13_, A_12_, B_30_, B_29_, B_28_, B_27_, B_26_,
         B_25_, B_24_, B_23_, B_22_, B_21_, B_20_, B_19_, B_18_, B_17_, B_16_,
         B_15_, B_14_, B_13_, B_12_, B_11_, B_10_, B_9_, B_8_, B_7_, B_6_,
         B_5_, B_4_, B_3_, B_2_, B_1_, B_0_;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31;
  wire   [31:14] carry;

  ADDFHX4 U1_28 ( .A(A_28_), .B(B_28_), .CI(carry[28]), .CO(carry[29]), .S(
        SUM[28]) );
  CMPR32X2 U1_27 ( .A(A_27_), .B(B_27_), .C(carry[27]), .CO(carry[28]), .S(
        SUM[27]) );
  ADDFHX4 U1_29 ( .A(A_29_), .B(B_29_), .CI(carry[29]), .CO(carry[30]), .S(
        SUM[29]) );
  ADDFHX2 U1_15 ( .A(A_15_), .B(B_15_), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFHX2 U1_18 ( .A(A_18_), .B(B_18_), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFX2 U1_21 ( .A(A_21_), .B(B_21_), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A_20_), .B(B_20_), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFX2 U1_16 ( .A(A_16_), .B(B_16_), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFX2 U1_23 ( .A(A_23_), .B(B_23_), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFX2 U1_13 ( .A(A_13_), .B(B_13_), .CI(n3), .CO(carry[14]), .S(SUM[13]) );
  ADDFX2 U1_19 ( .A(A_19_), .B(B_19_), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  NAND2X4 U1 ( .A(n2), .B(n16), .Y(carry[26]) );
  AND2X4 U2 ( .A(n18), .B(n17), .Y(n2) );
  NAND2X4 U3 ( .A(A_25_), .B(carry[25]), .Y(n17) );
  AND2X4 U4 ( .A(A_34_), .B(n27), .Y(n28) );
  NAND3X6 U5 ( .A(n13), .B(n14), .C(n15), .Y(carry[25]) );
  NAND2X1 U6 ( .A(A_22_), .B(carry[22]), .Y(n8) );
  NAND2X1 U7 ( .A(B_22_), .B(carry[22]), .Y(n7) );
  NAND3X1 U8 ( .A(n7), .B(n8), .C(n9), .Y(carry[23]) );
  NAND2X1 U9 ( .A(A_22_), .B(B_22_), .Y(n9) );
  NAND2X1 U10 ( .A(A_25_), .B(B_25_), .Y(n18) );
  AND2X2 U11 ( .A(A_33_), .B(n30), .Y(n27) );
  NAND2X1 U12 ( .A(n1), .B(n24), .Y(carry[31]) );
  AND2X2 U13 ( .A(A_31_), .B(carry[31]), .Y(n29) );
  ADDFXL U14 ( .A(A_29_), .B(B_29_), .CI(carry[29]), .CO(n19) );
  AND2X2 U15 ( .A(n26), .B(n25), .Y(n1) );
  AND2X2 U16 ( .A(B_12_), .B(A_12_), .Y(n3) );
  NAND2X2 U17 ( .A(A_24_), .B(B_24_), .Y(n15) );
  XOR3XL U18 ( .A(carry[17]), .B(A_17_), .C(B_17_), .Y(SUM[17]) );
  NAND2X2 U19 ( .A(B_17_), .B(carry[17]), .Y(n4) );
  NAND2X2 U20 ( .A(A_17_), .B(carry[17]), .Y(n5) );
  NAND2X2 U21 ( .A(A_17_), .B(B_17_), .Y(n6) );
  NAND3X2 U22 ( .A(n4), .B(n5), .C(n6), .Y(carry[18]) );
  XOR3XL U23 ( .A(carry[22]), .B(A_22_), .C(B_22_), .Y(SUM[22]) );
  NAND2X1 U24 ( .A(B_30_), .B(carry[30]), .Y(n24) );
  XOR3XL U25 ( .A(carry[14]), .B(A_14_), .C(B_14_), .Y(SUM[14]) );
  NAND2X1 U26 ( .A(B_14_), .B(carry[14]), .Y(n10) );
  NAND2X1 U27 ( .A(A_14_), .B(carry[14]), .Y(n11) );
  NAND2X1 U28 ( .A(A_14_), .B(B_14_), .Y(n12) );
  NAND3X2 U29 ( .A(n10), .B(n11), .C(n12), .Y(carry[15]) );
  NAND2X1 U30 ( .A(B_25_), .B(carry[25]), .Y(n16) );
  NAND2X1 U31 ( .A(A_30_), .B(carry[30]), .Y(n25) );
  NAND2XL U32 ( .A(A_30_), .B(B_30_), .Y(n26) );
  XOR3XL U33 ( .A(carry[24]), .B(A_24_), .C(B_24_), .Y(SUM[24]) );
  NAND2X4 U34 ( .A(B_24_), .B(carry[24]), .Y(n13) );
  NAND2X4 U35 ( .A(A_24_), .B(carry[24]), .Y(n14) );
  NAND2X1 U36 ( .A(B_26_), .B(carry[26]), .Y(n20) );
  NAND2X1 U37 ( .A(A_26_), .B(carry[26]), .Y(n21) );
  XOR2XL U38 ( .A(A_31_), .B(carry[31]), .Y(SUM[31]) );
  XOR3XL U39 ( .A(carry[25]), .B(A_25_), .C(B_25_), .Y(SUM[25]) );
  XOR2X1 U40 ( .A(n19), .B(n23), .Y(SUM[30]) );
  NAND2X1 U41 ( .A(A_26_), .B(B_26_), .Y(n22) );
  NAND3X1 U42 ( .A(n20), .B(n21), .C(n22), .Y(carry[27]) );
  XOR3XL U43 ( .A(B_26_), .B(A_26_), .C(carry[26]), .Y(SUM[26]) );
  XOR2XL U44 ( .A(B_30_), .B(A_30_), .Y(n23) );
  XOR2XL U45 ( .A(A_35_), .B(n28), .Y(SUM[35]) );
  XOR2XL U46 ( .A(A_33_), .B(n30), .Y(SUM[33]) );
  XOR2XL U47 ( .A(A_32_), .B(n29), .Y(SUM[32]) );
  XOR2XL U48 ( .A(B_12_), .B(A_12_), .Y(SUM[12]) );
  CLKBUFX3 U49 ( .A(B_7_), .Y(SUM[7]) );
  CLKBUFX3 U50 ( .A(B_9_), .Y(SUM[9]) );
  CLKBUFX3 U51 ( .A(B_10_), .Y(SUM[10]) );
  CLKBUFX3 U52 ( .A(B_11_), .Y(SUM[11]) );
  XOR2X1 U53 ( .A(A_34_), .B(n27), .Y(SUM[34]) );
  XOR2X1 U54 ( .A(A_36_), .B(n31), .Y(SUM[36]) );
  CLKBUFX3 U55 ( .A(B_2_), .Y(SUM[2]) );
  CLKBUFX3 U56 ( .A(B_5_), .Y(SUM[5]) );
  CLKBUFX3 U57 ( .A(B_6_), .Y(SUM[6]) );
  AND2X2 U58 ( .A(A_32_), .B(n29), .Y(n30) );
  AND2X2 U59 ( .A(A_35_), .B(n28), .Y(n31) );
  CLKBUFX3 U60 ( .A(B_0_), .Y(SUM[0]) );
  CLKBUFX3 U61 ( .A(B_1_), .Y(SUM[1]) );
  CLKBUFX3 U62 ( .A(B_3_), .Y(SUM[3]) );
  CLKBUFX3 U63 ( .A(B_4_), .Y(SUM[4]) );
  CLKBUFX3 U64 ( .A(B_8_), .Y(SUM[8]) );
endmodule


module MULT_0 ( clk, reset, A, B, enMULT, Y, doneMULT );
  input [19:0] A;
  input [19:0] B;
  output [35:0] Y;
  input clk, reset, enMULT;
  output doneMULT;
  wire   N26, N27, N28, N29, N30, N31, N32, N33, N34, N35, N36, N37, N38, N39,
         N40, N41, N42, N43, N44, N64, N65, N66, N67, N68, N69, N70, N71, N72,
         N73, N74, N75, N76, N77, N78, N79, N80, N81, N82, count, signCorrect,
         N120, N121, N122, N123, N124, N125, N126, N127, N128, N129, N130,
         N131, N132, N133, N134, N135, N136, N137, N138, N139, N140, N141,
         N142, N143, N144, N145, N146, N147, N148, N149, N150, N151, N152,
         N153, N154, N190, N191, N192, N193, N194, N290, N291, N292, N293,
         N294, N295, N296, N297, N298, N299, N300, N301, N302, N303, N304,
         N305, N306, N307, N308, N309, N310, N311, N312, N313, N314, N315,
         N316, N317, N318, N319, N320, N321, N322, N323, N324, N325, N326,
         N475, N476, N477, N478, N479, N480, N481, N482, N483, N484, N485,
         N486, N487, N488, N489, N490, N491, N492, N493, N494, N495, N496,
         N497, N498, N499, N500, N501, N502, N503, N504, N505, N506, N507,
         N508, N509, N510, N511, N519, N520, N521, N522, N523, N524, N525,
         N526, N527, N528, N529, N530, N531, N532, N533, N534, N535, N536,
         N537, N538, N539, N540, N541, N542, N543, N544, N545, N546, N547,
         N548, N549, N550, N551, N552, N553, N554, N555, N556, N474, N473,
         N472, N471, N470, N469, N468, N467, N466, N465, N464, N463, N462,
         N461, N460, N459, N458, N457, N456, N455, N454, N453, N452, N437,
         N436, N435, N434, N433, N432, N431, N430, N429, N428, N427, N426,
         N425, N424, N423, N422, N421, N420, N419, N418, N417, N416, N415,
         N414, N413, N412, N411, N410, N409, N408, N407, N406, N405, N404,
         N403, N392, N391, N390, N389, N388, N387, N386, N385, N384, N383,
         N382, N381, N380, N379, N378, N377, N376, N375, N374, N373, N372,
         N371, N370, N369, N368, N367, N366, N363, N362, N361, N360, N359,
         N358, N357, N356, N355, N354, N353, N352, N351, N350, N349, N348,
         N347, N346, N345, N344, N343, N342, N341, N340, N339, N338, N337,
         N336, N335, N334, N333, N332, N331, N330, N329, N328, N327, n1, n2,
         n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18,
         n19, n20, n21, n22, n23, n24, n25, n270, n280, n2910, n3010, n3110,
         n3210, n3310, n3610, n3710, n3810, n3910, n401, n4110, n4210, n4310,
         n4410, n45, n46, n47, n48, n51, n52, n54, n55, n56, n57, n58, n59,
         n60, n680, n690, n700, n710, n720, n730, n740, n750, n760, n770, n780,
         n790, n800, n810, n820, n83, n84, n85, n86, n87, n88, n89, n90, n91,
         n92, n93, n94, n112, n113, n114, n115, n118, n119, n1200, n1210,
         n1220, n1230, n1240, n1250, n1260, n1270, n1280, n1290, n1300, n1310,
         n1320, n1330, n1340, n1350, n1360, n1370, n1380, n1390, n1400, n1410,
         n1420, n1430, n1440, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176,
         n177, n178, n179, n180, n181, n182, n1930, n1940, n195, n196, n197,
         n198, n199, n200, n201, n202, n203, n204, n205, n206, n207, n208,
         n209, n210, n211, n212, n213, n214, n215, n216, n217, n218, n219,
         n220, n221, n222, n223, n224, n225, n226, n227, n228, n229, n230,
         n231, n232, n233, n234, n235, n236, n237, n238, n239, n240, n241,
         n242, n243, n244, n245, n246, n247, n248, n249, n250, n251, n252,
         n253, n254, n255, n256, n257, n258, n259, n260;
  wire   [18:0] Mc;
  wire   [18:0] Mp;
  wire   [19:0] PP0Next;
  wire   [19:0] PP1Next;
  wire   [19:0] PP2Next;
  wire   [19:0] PP3Next;
  wire   [19:0] PP4Next;
  wire   [36:35] Ans;
  wire   [34:0] AnsCorrect;
  wire   [19:0] PP0;
  wire   [19:0] PP1;
  wire   [19:0] PP2;
  wire   [19:4] PP3;
  wire   [19:0] PP4;
  wire   [35:19] add_2_root_add_0_root_add_172_5_carry;

  OAI2BB2X4 U124 ( .B0(n18), .B1(n51), .A0N(N44), .A1N(n17), .Y(Mc[18]) );
  PPG_4 ppg0 ( .Mc(Mc), .Mp({Mp[3:0], 1'b0}), .phase(count), .PP(PP0Next) );
  PPG_3 ppg1 ( .Mc(Mc), .Mp(Mp[7:3]), .phase(count), .PP(PP1Next) );
  PPG_2 ppg2 ( .Mc(Mc), .Mp(Mp[11:7]), .phase(count), .PP(PP2Next) );
  PPG_1 ppg3 ( .Mc(Mc), .Mp(Mp[15:11]), .phase(count), .PP(PP3Next) );
  PPG_0 ppg4 ( .Mc(Mc), .Mp({1'b0, Mp[18:15]}), .phase(count), .PP(PP4Next) );
  MULT_0_DW01_inc_0 add_153 ( .A({n208, n209, n210, n211, n212, n260, n213, 
        n214, n215, n216, n217, n218, n219, n259, n258, n220, n221, n222, n223, 
        n224, n225, n226, n227, n228, n229, n230, n231, n232, n257, n256, n233, 
        n234, n255, n235, n236}), .SUM({N154, N153, N152, N151, N150, N149, 
        N148, N147, N146, N145, N144, N143, N142, N141, N140, N139, N138, N137, 
        N136, N135, N134, N133, N132, N131, N130, N129, N128, N127, N126, N125, 
        N124, N123, N122, N121, N120}) );
  MULT_0_DW01_inc_1 add_107 ( .A({n14, n13, n12, n11, n1940, n201, n204, n1930, 
        n205, n202, n195, n197, n203, n206, n198, n207, n196, n200, n199}), 
        .SUM({N82, N81, N80, N79, N78, N77, N76, N75, N74, N73, N72, N71, N70, 
        N69, N68, N67, N66, N65, N64}) );
  MULT_0_DW01_inc_2 add_106 ( .A({n51, n52, n54, n55, n56, n57, n58, n59, n60, 
        n401, n4110, n4210, n4310, n4410, n45, n46, n47, n48, n237}), .SUM({
        N44, N43, N42, N41, N40, N39, N38, N37, N36, N35, N34, N33, N32, N31, 
        N30, N29, N28, N27, N26}) );
  MULT_0_DW01_add_4 add_3_root_add_0_root_add_172_5 ( .B({Ans, AnsCorrect}), 
        .SUM({N363, N362, N361, N360, N359, N358, N357, N356, N355, N354, N353, 
        N352, N351, N350, N349, N348, N347, N346, N345, N344, N343, N342, N341, 
        N340, N339, N338, N337, N336, N335, N334, N333, N332, N331, N330, N329, 
        N328, N327}), .A_30_(N192), .A_29_(PP2[19]), .A_28_(PP2[18]), .A_27_(
        PP2[17]), .A_26_(PP2[16]), .A_25_(PP2[15]), .A_24_(PP2[14]), .A_23_(
        PP2[13]), .A_22_(PP2[12]), .A_21_(PP2[11]), .A_20_(PP2[10]), .A_19_(
        PP2[9]), .A_18_(PP2[8]), .A_17_(PP2[7]), .A_16_(PP2[6]), .A_15_(PP2[5]), .A_14_(PP2[4]), .A_13_(PP2[3]), .A_12_(PP2[2]), .A_11_(PP2[1]), .A_10_(
        PP2[0]) );
  MULT_0_DW01_add_3 add_4_root_add_0_root_add_172_5 ( .A_22_(N190), .A_21_(
        PP0[19]), .A_20_(PP0[18]), .A_19_(PP0[17]), .A_18_(PP0[16]), .A_17_(
        PP0[15]), .A_16_(PP0[14]), .A_15_(PP0[13]), .A_14_(PP0[12]), .A_13_(
        PP0[11]), .A_12_(PP0[10]), .A_11_(PP0[9]), .A_10_(PP0[8]), .A_9_(
        PP0[7]), .A_8_(PP0[6]), .A_7_(PP0[5]), .A_6_(PP0[4]), .A_5_(PP0[3]), 
        .A_4_(PP0[2]), .A_3_(PP0[1]), .A_2_(PP0[0]), .B_26_(N191), .B_25_(
        PP1[19]), .B_24_(PP1[18]), .B_23_(PP1[17]), .B_22_(PP1[16]), .B_21_(
        PP1[15]), .B_20_(PP1[14]), .B_19_(PP1[13]), .B_18_(PP1[12]), .B_17_(
        PP1[11]), .B_16_(PP1[10]), .B_15_(PP1[9]), .B_14_(PP1[8]), .B_13_(
        PP1[7]), .B_12_(PP1[6]), .B_11_(PP1[5]), .B_10_(PP1[4]), .B_9_(PP1[3]), 
        .B_8_(PP1[2]), .B_7_(PP1[1]), .B_6_(PP1[0]), .SUM_28_(N392), .SUM_27_(
        N391), .SUM_26_(N390), .SUM_25_(N389), .SUM_24_(N388), .SUM_23_(N387), 
        .SUM_22_(N386), .SUM_21_(N385), .SUM_20_(N384), .SUM_19_(N383), 
        .SUM_18_(N382), .SUM_17_(N381), .SUM_16_(N380), .SUM_15_(N379), 
        .SUM_14_(N378), .SUM_13_(N377), .SUM_12_(N376), .SUM_11_(N375), 
        .SUM_10_(N374), .SUM_9_(N373), .SUM_8_(N372), .SUM_7_(N371), .SUM_6_(
        N370), .SUM_5_(N369), .SUM_4_(N368), .SUM_3_(N367), .SUM_2_(N366) );
  MULT_0_DW01_add_1 add_1_root_add_0_root_add_172_5 ( .A_36_(N474), .A_35_(
        N473), .A_34_(N472), .A_33_(N471), .A_32_(N470), .A_31_(N469), .A_30_(
        N468), .A_29_(N467), .A_28_(N466), .A_27_(N465), .A_26_(N464), .A_25_(
        N463), .A_24_(N462), .A_23_(N461), .A_22_(N460), .A_21_(N459), .A_20_(
        N458), .A_19_(N457), .A_18_(N456), .A_17_(N455), .A_16_(N454), .A_15_(
        N453), .A_14_(N452), .B_28_(N392), .B_27_(N391), .B_26_(N390), .B_25_(
        N389), .B_24_(N388), .B_23_(N387), .B_22_(N386), .B_21_(N385), .B_20_(
        N384), .B_19_(N383), .B_18_(N382), .B_17_(N381), .B_16_(N380), .B_15_(
        N379), .B_14_(N378), .B_13_(N377), .B_12_(N376), .B_11_(N375), .B_10_(
        N374), .B_9_(N373), .B_8_(N372), .B_7_(N371), .B_6_(N370), .B_5_(N369), 
        .B_4_(N368), .B_3_(N367), .B_2_(N366), .SUM_36_(N437), .SUM_35_(N436), 
        .SUM_34_(N435), .SUM_33_(N434), .SUM_32_(N433), .SUM_31_(N432), 
        .SUM_30_(N431), .SUM_29_(N430), .SUM_28_(N429), .SUM_27_(N428), 
        .SUM_26_(N427), .SUM_25_(N426), .SUM_24_(N425), .SUM_23_(N424), 
        .SUM_22_(N423), .SUM_21_(N422), .SUM_20_(N421), .SUM_19_(N420), 
        .SUM_18_(N419), .SUM_17_(N418), .SUM_16_(N417), .SUM_15_(N416), 
        .SUM_14_(N415), .SUM_13_(N414), .SUM_12_(N413), .SUM_11_(N412), 
        .SUM_10_(N411), .SUM_9_(N410), .SUM_8_(N409), .SUM_7_(N408), .SUM_6_(
        N407), .SUM_5_(N406), .SUM_4_(N405), .SUM_3_(N404), .SUM_2_(N403) );
  MULT_0_DW01_add_0 add_0_root_add_0_root_add_172_5 ( .A({N363, N362, N361, 
        N360, N359, N358, N357, N356, N355, N354, N353, N352, N351, N350, N349, 
        N348, N347, N346, N345, N344, N343, N342, N341, N340, N339, N338, N337, 
        N336, N335, N334, N333, N332, N331, N330, N329, N328, N327}), .SUM({
        N511, N510, N509, N508, N507, N506, N505, N504, N503, N502, N501, N500, 
        N499, N498, N497, N496, N495, N494, N493, N492, N491, N490, N489, N488, 
        N487, N486, N485, N484, N483, N482, N481, N480, N479, N478, N477, N476, 
        N475}), .B_36_(N437), .B_35_(N436), .B_34_(N435), .B_33_(N434), 
        .B_32_(N433), .B_31_(N432), .B_30_(N431), .B_29_(N430), .B_28_(N429), 
        .B_27_(N428), .B_26_(N427), .B_25_(N426), .B_24_(N425), .B_23_(N424), 
        .B_22_(N423), .B_21_(N422), .B_20_(N421), .B_19_(N420), .B_18_(N419), 
        .B_17_(N418), .B_16_(N417), .B_15_(N416), .B_14_(N415), .B_13_(N414), 
        .B_12_(N413), .B_11_(N412), .B_10_(N411), .B_9_(N410), .B_8_(N409), 
        .B_7_(N408), .B_6_(N407), .B_5_(N406), .B_4_(N405), .B_3_(N404), 
        .B_2_(N403) );
  MULT_0_DW01_add_8 add_3_root_add_0_root_add_165_4 ( .A_22_(N190), .A_21_(
        PP0[19]), .A_20_(PP0[19]), .A_19_(PP0[19]), .A_18_(PP0[18]), .A_17_(
        PP0[17]), .A_16_(PP0[16]), .A_15_(PP0[15]), .A_14_(PP0[14]), .A_13_(
        PP0[13]), .A_12_(PP0[12]), .A_11_(PP0[11]), .A_10_(PP0[10]), .A_9_(
        PP0[9]), .A_8_(PP0[8]), .A_7_(PP0[7]), .A_6_(PP0[6]), .A_5_(PP0[5]), 
        .A_4_(PP0[4]), .A_3_(PP0[3]), .A_2_(PP0[2]), .A_1_(PP0[1]), .A_0_(
        PP0[0]), .B_24_(N191), .B_23_(PP1[19]), .B_22_(PP1[18]), .B_21_(
        PP1[17]), .B_20_(PP1[16]), .B_19_(PP1[15]), .B_18_(PP1[14]), .B_17_(
        PP1[13]), .B_16_(PP1[12]), .B_15_(PP1[11]), .B_14_(PP1[10]), .B_13_(
        PP1[9]), .B_12_(PP1[8]), .B_11_(PP1[7]), .B_10_(PP1[6]), .B_9_(PP1[5]), 
        .B_8_(PP1[4]), .B_7_(PP1[3]), .B_6_(PP1[2]), .B_5_(PP1[1]), .B_4_(
        PP1[0]), .SUM_26_(n1440), .SUM_25_(n1430), .SUM_24_(n1420), .SUM_23_(
        n1410), .SUM_22_(n1400), .SUM_21_(n1390), .SUM_20_(n1380), .SUM_19_(
        n1370), .SUM_18_(n1360), .SUM_17_(n1350), .SUM_16_(n1340), .SUM_15_(
        n1330), .SUM_14_(n1320), .SUM_13_(n1310), .SUM_12_(n1300), .SUM_11_(
        n1290), .SUM_10_(n1280), .SUM_9_(n1270), .SUM_8_(n1260), .SUM_7_(n1250), .SUM_6_(n1240), .SUM_5_(n1230), .SUM_4_(n1220), .SUM_3_(n1210), .SUM_2_(
        n1200), .SUM_1_(n119), .SUM_0_(n118) );
  MULT_0_DW01_add_7 add_1_root_add_0_root_add_165_4 ( .A_32_(N193), .A_31_(
        PP3[19]), .A_30_(PP3[18]), .A_29_(PP3[17]), .A_28_(PP3[16]), .A_27_(
        PP3[15]), .A_26_(PP3[14]), .A_25_(PP3[13]), .A_24_(PP3[12]), .A_23_(
        PP3[11]), .A_22_(PP3[10]), .A_21_(PP3[9]), .A_20_(PP3[8]), .A_19_(
        PP3[7]), .A_18_(PP3[6]), .A_17_(PP3[5]), .A_16_(PP3[4]), .A_15_(N455), 
        .A_14_(N454), .A_13_(N453), .A_12_(N452), .B_35_(PP4[19]), .B_34_(
        PP4[18]), .B_33_(PP4[17]), .B_32_(PP4[16]), .B_31_(PP4[15]), .B_30_(
        PP4[14]), .B_29_(PP4[13]), .B_28_(PP4[12]), .B_27_(PP4[11]), .B_26_(
        PP4[10]), .B_25_(PP4[9]), .B_24_(PP4[8]), .B_23_(PP4[7]), .B_22_(
        PP4[6]), .B_21_(PP4[5]), .B_20_(PP4[4]), .B_19_(PP4[3]), .B_18_(PP4[2]), .B_17_(PP4[1]), .B_16_(PP4[0]), .SUM_36_(n182), .SUM_35_(n181), .SUM_34_(
        n180), .SUM_33_(n179), .SUM_32_(n178), .SUM_31_(n177), .SUM_30_(n176), 
        .SUM_29_(n175), .SUM_28_(n174), .SUM_27_(n173), .SUM_26_(n172), 
        .SUM_25_(n171), .SUM_24_(n170), .SUM_23_(n169), .SUM_22_(n168), 
        .SUM_21_(n167), .SUM_20_(n166), .SUM_19_(n165), .SUM_18_(n164), 
        .SUM_17_(n163), .SUM_16_(n162), .SUM_15_(n161), .SUM_14_(n160), 
        .SUM_13_(n159), .SUM_12_(n158) );
  MULT_0_DW01_add_6 add_2_root_add_0_root_add_165_4 ( .A_26_(n1440), .A_25_(
        n1430), .A_24_(n1420), .A_23_(n1410), .A_22_(n1400), .A_21_(n1390), 
        .A_20_(n1380), .A_19_(n1370), .A_18_(n1360), .A_17_(n1350), .A_16_(
        n1340), .A_15_(n1330), .A_14_(n1320), .A_13_(n1310), .A_12_(n1300), 
        .A_11_(n1290), .A_10_(n1280), .A_9_(n1270), .A_8_(n1260), .A_7_(n1250), 
        .A_6_(n1240), .A_5_(n1230), .A_4_(n1220), .A_3_(n1210), .A_2_(n1200), 
        .A_1_(n119), .A_0_(n118), .B_28_(N192), .B_27_(PP2[19]), .B_26_(
        PP2[18]), .B_25_(PP2[17]), .B_24_(PP2[16]), .B_23_(PP2[15]), .B_22_(
        PP2[14]), .B_21_(PP2[13]), .B_20_(PP2[12]), .B_19_(PP2[11]), .B_18_(
        PP2[10]), .B_17_(PP2[9]), .B_16_(PP2[8]), .B_15_(PP2[7]), .B_14_(
        PP2[6]), .B_13_(PP2[5]), .B_12_(PP2[4]), .B_11_(PP2[3]), .B_10_(PP2[2]), .B_9_(PP2[1]), .B_8_(PP2[0]), .SUM_30_(n680), .SUM_29_(n690), .SUM_28_(n700), 
        .SUM_27_(n710), .SUM_26_(n720), .SUM_25_(n730), .SUM_24_(n740), 
        .SUM_23_(n750), .SUM_22_(n760), .SUM_21_(n770), .SUM_20_(n780), 
        .SUM_19_(n790), .SUM_18_(n800), .SUM_17_(n810), .SUM_16_(n820), 
        .SUM_15_(n83), .SUM_14_(n84), .SUM_13_(n85), .SUM_12_(n86), .SUM_11_(
        n87), .SUM_10_(n88), .SUM_9_(n89), .SUM_8_(n90), .SUM_7_(n91), 
        .SUM_6_(n92), .SUM_5_(n93), .SUM_4_(n94), .SUM_3_(n112), .SUM_2_(n113), 
        .SUM_1_(n114), .SUM_0_(n115) );
  MULT_0_DW01_add_5 add_0_root_add_0_root_add_165_4 ( .SUM({N326, N325, N324, 
        N323, N322, N321, N320, N319, N318, N317, N316, N315, N314, N313, N312, 
        N311, N310, N309, N308, N307, N306, N305, N304, N303, N302, N301, N300, 
        N299, N298, N297, N296, N295, N294, N293, N292, N291, N290}), .A_36_(
        n182), .A_35_(n181), .A_34_(n180), .A_33_(n179), .A_32_(n178), .A_31_(
        n177), .A_30_(n176), .A_29_(n175), .A_28_(n174), .A_27_(n173), .A_26_(
        n172), .A_25_(n171), .A_24_(n170), .A_23_(n169), .A_22_(n168), .A_21_(
        n167), .A_20_(n166), .A_19_(n165), .A_18_(n164), .A_17_(n163), .A_16_(
        n162), .A_15_(n161), .A_14_(n160), .A_13_(n159), .A_12_(n158), .B_30_(
        n680), .B_29_(n690), .B_28_(n700), .B_27_(n710), .B_26_(n720), .B_25_(
        n730), .B_24_(n740), .B_23_(n750), .B_22_(n760), .B_21_(n770), .B_20_(
        n780), .B_19_(n790), .B_18_(n800), .B_17_(n810), .B_16_(n820), .B_15_(
        n83), .B_14_(n84), .B_13_(n85), .B_12_(n86), .B_11_(n87), .B_10_(n88), 
        .B_9_(n89), .B_8_(n90), .B_7_(n91), .B_6_(n92), .B_5_(n93), .B_4_(n94), 
        .B_3_(n112), .B_2_(n113), .B_1_(n114), .B_0_(n115) );
  DFFTRX1 PP4_reg_19_ ( .D(PP4Next[19]), .RN(n23), .CK(clk), .Q(PP4[19]), .QN(
        N194) );
  DFFTRX1 PP4_reg_18_ ( .D(PP4Next[18]), .RN(n23), .CK(clk), .Q(PP4[18]), .QN(
        n1) );
  DFFTRX1 PP3_reg_15_ ( .D(PP3Next[15]), .RN(n24), .CK(clk), .Q(PP3[15]) );
  DFFTRX1 PP3_reg_16_ ( .D(PP3Next[16]), .RN(n25), .CK(clk), .Q(PP3[16]) );
  DFFTRX1 PP3_reg_17_ ( .D(PP3Next[17]), .RN(n25), .CK(clk), .Q(PP3[17]) );
  DFFTRX1 PP3_reg_18_ ( .D(PP3Next[18]), .RN(n25), .CK(clk), .Q(PP3[18]) );
  DFFTRX1 PP3_reg_19_ ( .D(PP3Next[19]), .RN(n25), .CK(clk), .Q(PP3[19]), .QN(
        N193) );
  DFFTRX1 PP2_reg_19_ ( .D(PP2Next[19]), .RN(n2910), .CK(clk), .Q(PP2[19]), 
        .QN(N192) );
  DFFTRX1 PP2_reg_18_ ( .D(PP2Next[18]), .RN(n2910), .CK(clk), .Q(PP2[18]) );
  DFFTRX1 PP4_reg_17_ ( .D(PP4Next[17]), .RN(n23), .CK(clk), .Q(PP4[17]) );
  DFFTRX1 PP4_reg_11_ ( .D(PP4Next[11]), .RN(n22), .CK(clk), .Q(PP4[11]) );
  DFFTRX1 PP4_reg_12_ ( .D(PP4Next[12]), .RN(n23), .CK(clk), .Q(PP4[12]) );
  DFFTRX1 PP4_reg_13_ ( .D(PP4Next[13]), .RN(n23), .CK(clk), .Q(PP4[13]) );
  DFFTRX1 PP4_reg_14_ ( .D(PP4Next[14]), .RN(n23), .CK(clk), .Q(PP4[14]) );
  DFFTRX1 PP4_reg_15_ ( .D(PP4Next[15]), .RN(n23), .CK(clk), .Q(PP4[15]) );
  DFFTRX1 PP4_reg_16_ ( .D(PP4Next[16]), .RN(n23), .CK(clk), .Q(PP4[16]) );
  DFFX1 Ans_reg_21_ ( .D(N540), .CK(clk), .Q(AnsCorrect[21]), .QN(n259) );
  DFFX1 Ans_reg_20_ ( .D(N539), .CK(clk), .Q(AnsCorrect[20]), .QN(n258) );
  DFFTRX1 PP3_reg_8_ ( .D(PP3Next[8]), .RN(n24), .CK(clk), .Q(PP3[8]) );
  DFFTRX1 PP3_reg_9_ ( .D(PP3Next[9]), .RN(n24), .CK(clk), .Q(PP3[9]) );
  DFFTRX1 PP3_reg_10_ ( .D(PP3Next[10]), .RN(n24), .CK(clk), .Q(PP3[10]) );
  DFFTRX1 PP3_reg_11_ ( .D(PP3Next[11]), .RN(n24), .CK(clk), .Q(PP3[11]) );
  DFFTRX1 PP3_reg_12_ ( .D(PP3Next[12]), .RN(n24), .CK(clk), .Q(PP3[12]) );
  DFFTRX1 PP3_reg_13_ ( .D(PP3Next[13]), .RN(n24), .CK(clk), .Q(PP3[13]) );
  DFFTRX1 PP3_reg_14_ ( .D(PP3Next[14]), .RN(n24), .CK(clk), .Q(PP3[14]) );
  DFFTRX1 PP2_reg_17_ ( .D(PP2Next[17]), .RN(n3010), .CK(clk), .Q(PP2[17]) );
  DFFTRX1 PP2_reg_16_ ( .D(PP2Next[16]), .RN(n3010), .CK(clk), .Q(PP2[16]) );
  DFFTRX1 PP2_reg_14_ ( .D(PP2Next[14]), .RN(n3010), .CK(clk), .Q(PP2[14]) );
  DFFTRX1 PP2_reg_13_ ( .D(PP2Next[13]), .RN(n3010), .CK(clk), .Q(PP2[13]) );
  DFFTRX1 PP2_reg_12_ ( .D(PP2Next[12]), .RN(n3010), .CK(clk), .Q(PP2[12]) );
  DFFTRX1 PP2_reg_11_ ( .D(PP2Next[11]), .RN(n2910), .CK(clk), .Q(PP2[11]) );
  DFFTRX1 PP2_reg_10_ ( .D(PP2Next[10]), .RN(n3010), .CK(clk), .Q(PP2[10]) );
  DFFTRX1 PP1_reg_19_ ( .D(PP1Next[19]), .RN(n280), .CK(clk), .Q(PP1[19]), 
        .QN(N191) );
  DFFTRX1 PP1_reg_18_ ( .D(PP1Next[18]), .RN(n280), .CK(clk), .Q(PP1[18]) );
  DFFTRX1 PP1_reg_17_ ( .D(PP1Next[17]), .RN(n280), .CK(clk), .Q(PP1[17]) );
  DFFTRX1 PP4_reg_3_ ( .D(PP4Next[3]), .RN(n22), .CK(clk), .Q(PP4[3]) );
  DFFTRX1 PP4_reg_4_ ( .D(PP4Next[4]), .RN(n22), .CK(clk), .Q(PP4[4]) );
  DFFTRX1 PP4_reg_5_ ( .D(PP4Next[5]), .RN(n22), .CK(clk), .Q(PP4[5]) );
  DFFTRX1 PP4_reg_6_ ( .D(PP4Next[6]), .RN(n22), .CK(clk), .Q(PP4[6]) );
  DFFTRX1 PP4_reg_7_ ( .D(PP4Next[7]), .RN(n22), .CK(clk), .Q(PP4[7]) );
  DFFTRX1 PP4_reg_8_ ( .D(PP4Next[8]), .RN(n22), .CK(clk), .Q(PP4[8]) );
  DFFTRX1 PP4_reg_9_ ( .D(PP4Next[9]), .RN(n22), .CK(clk), .Q(PP4[9]) );
  DFFTRX1 PP4_reg_10_ ( .D(PP4Next[10]), .RN(n22), .CK(clk), .Q(PP4[10]) );
  DFFTRX1 PP1_reg_16_ ( .D(PP1Next[16]), .RN(n280), .CK(clk), .Q(PP1[16]) );
  DFFTRX1 PP3_reg_5_ ( .D(PP3Next[5]), .RN(n24), .CK(clk), .Q(PP3[5]) );
  DFFTRX1 PP3_reg_6_ ( .D(PP3Next[6]), .RN(n24), .CK(clk), .Q(PP3[6]) );
  DFFTRX1 PP3_reg_7_ ( .D(PP3Next[7]), .RN(n24), .CK(clk), .Q(PP3[7]) );
  DFFTRX1 PP0_reg_18_ ( .D(PP0Next[18]), .RN(n25), .CK(clk), .Q(PP0[18]) );
  DFFTRX1 PP0_reg_16_ ( .D(PP0Next[16]), .RN(n25), .CK(clk), .Q(PP0[16]) );
  DFFTRX1 PP0_reg_15_ ( .D(PP0Next[15]), .RN(n25), .CK(clk), .Q(PP0[15]) );
  DFFTRX1 PP3_reg_1_ ( .D(PP3Next[1]), .RN(n23), .CK(clk), .Q(N453) );
  DFFTRX1 PP3_reg_2_ ( .D(PP3Next[2]), .RN(n23), .CK(clk), .Q(N454) );
  DFFTRX1 PP3_reg_3_ ( .D(PP3Next[3]), .RN(n23), .CK(clk), .Q(N455) );
  DFFTRX1 PP2_reg_8_ ( .D(PP2Next[8]), .RN(n3010), .CK(clk), .Q(PP2[8]) );
  DFFTRX1 PP2_reg_7_ ( .D(PP2Next[7]), .RN(n3010), .CK(clk), .Q(PP2[7]) );
  DFFTRX1 PP2_reg_5_ ( .D(PP2Next[5]), .RN(n3110), .CK(clk), .Q(PP2[5]) );
  DFFTRX1 PP2_reg_4_ ( .D(PP2Next[4]), .RN(n3110), .CK(clk), .Q(PP2[4]) );
  DFFTRX1 PP2_reg_2_ ( .D(PP2Next[2]), .RN(n3110), .CK(clk), .Q(PP2[2]) );
  DFFTRX1 PP4_reg_0_ ( .D(PP4Next[0]), .RN(n270), .CK(clk), .Q(PP4[0]) );
  DFFTRX1 PP3_reg_4_ ( .D(PP3Next[4]), .RN(n24), .CK(clk), .Q(PP3[4]) );
  DFFTRX1 PP3_reg_0_ ( .D(PP3Next[0]), .RN(n23), .CK(clk), .Q(N452) );
  DFFTRX1 PP4_reg_1_ ( .D(PP4Next[1]), .RN(n22), .CK(clk), .Q(PP4[1]) );
  DFFTRX1 PP4_reg_2_ ( .D(PP4Next[2]), .RN(n22), .CK(clk), .Q(PP4[2]) );
  DFFTRX1 PP1_reg_15_ ( .D(PP1Next[15]), .RN(n280), .CK(clk), .Q(PP1[15]) );
  DFFTRX1 PP1_reg_14_ ( .D(PP1Next[14]), .RN(n280), .CK(clk), .Q(PP1[14]) );
  DFFTRX1 PP1_reg_12_ ( .D(PP1Next[12]), .RN(n280), .CK(clk), .Q(PP1[12]) );
  DFFTRX1 PP1_reg_11_ ( .D(PP1Next[11]), .RN(n280), .CK(clk), .Q(PP1[11]) );
  DFFX1 Ans_reg_6_ ( .D(N525), .CK(clk), .Q(AnsCorrect[6]), .QN(n257) );
  DFFX1 Ans_reg_5_ ( .D(N524), .CK(clk), .Q(AnsCorrect[5]), .QN(n256) );
  DFFX1 Ans_reg_2_ ( .D(N521), .CK(clk), .Q(AnsCorrect[2]), .QN(n255) );
  DFFTRX1 PP0_reg_3_ ( .D(PP0Next[3]), .RN(n270), .CK(clk), .Q(PP0[3]) );
  DFFQX1 Ans_reg_1_ ( .D(N520), .CK(clk), .Q(AnsCorrect[1]) );
  DFFQX1 Ans_reg_0_ ( .D(N519), .CK(clk), .Q(AnsCorrect[0]) );
  DFFQX1 Ans_reg_32_ ( .D(N551), .CK(clk), .Q(AnsCorrect[32]) );
  DFFQX1 Ans_reg_31_ ( .D(N550), .CK(clk), .Q(AnsCorrect[31]) );
  DFFQX1 Ans_reg_34_ ( .D(N553), .CK(clk), .Q(AnsCorrect[34]) );
  DFFQX1 Ans_reg_33_ ( .D(N552), .CK(clk), .Q(AnsCorrect[33]) );
  DFFQX1 Ans_reg_27_ ( .D(N546), .CK(clk), .Q(AnsCorrect[27]) );
  DFFTRX1 PP0_reg_19_ ( .D(PP0Next[19]), .RN(n25), .CK(clk), .Q(PP0[19]), .QN(
        N190) );
  DFFQX1 Ans_reg_16_ ( .D(N535), .CK(clk), .Q(AnsCorrect[16]) );
  DFFQX1 Ans_reg_14_ ( .D(N533), .CK(clk), .Q(AnsCorrect[14]) );
  DFFQX1 Ans_reg_30_ ( .D(N549), .CK(clk), .Q(AnsCorrect[30]) );
  DFFQX1 Ans_reg_26_ ( .D(N545), .CK(clk), .Q(AnsCorrect[26]) );
  DFFQX1 Ans_reg_22_ ( .D(N541), .CK(clk), .Q(AnsCorrect[22]) );
  DFFQX1 Ans_reg_19_ ( .D(N538), .CK(clk), .Q(AnsCorrect[19]) );
  DFFQX1 Ans_reg_24_ ( .D(N543), .CK(clk), .Q(AnsCorrect[24]) );
  DFFQX1 Ans_reg_25_ ( .D(N544), .CK(clk), .Q(AnsCorrect[25]) );
  DFFQX1 Ans_reg_23_ ( .D(N542), .CK(clk), .Q(AnsCorrect[23]) );
  DFFQX1 Ans_reg_18_ ( .D(N537), .CK(clk), .Q(AnsCorrect[18]) );
  DFFQX1 Ans_reg_17_ ( .D(N536), .CK(clk), .Q(AnsCorrect[17]) );
  EDFFTRX1 signCorrect_reg ( .RN(n3110), .D(n254), .E(count), .CK(clk), .Q(
        signCorrect) );
  DFFQX1 Ans_reg_8_ ( .D(N527), .CK(clk), .Q(AnsCorrect[8]) );
  DFFTRX1 PP1_reg_10_ ( .D(PP1Next[10]), .RN(n280), .CK(clk), .Q(PP1[10]) );
  DFFQX1 Ans_reg_13_ ( .D(N532), .CK(clk), .Q(AnsCorrect[13]) );
  DFFQX1 Ans_reg_15_ ( .D(N534), .CK(clk), .Q(AnsCorrect[15]) );
  DFFQX1 Ans_reg_9_ ( .D(N528), .CK(clk), .Q(AnsCorrect[9]) );
  DFFQX1 Ans_reg_11_ ( .D(N530), .CK(clk), .Q(AnsCorrect[11]) );
  DFFQX1 Ans_reg_12_ ( .D(N531), .CK(clk), .Q(AnsCorrect[12]) );
  DFFQX1 Ans_reg_10_ ( .D(N529), .CK(clk), .Q(AnsCorrect[10]) );
  DFFTRX1 PP1_reg_2_ ( .D(PP1Next[2]), .RN(n2910), .CK(clk), .Q(PP1[2]) );
  DFFQX1 Ans_reg_7_ ( .D(N526), .CK(clk), .Q(AnsCorrect[7]) );
  DFFQXL Ans_reg_36_ ( .D(N555), .CK(clk), .Q(Ans[36]) );
  DFFQXL Ans_reg_35_ ( .D(N554), .CK(clk), .Q(Ans[35]) );
  DFFXL Ans_reg_29_ ( .D(N548), .CK(clk), .Q(AnsCorrect[29]), .QN(n260) );
  DFFTRX1 PP0_reg_14_ ( .D(PP0Next[14]), .RN(n25), .CK(clk), .Q(PP0[14]) );
  DFFTRX1 PP0_reg_13_ ( .D(PP0Next[13]), .RN(n25), .CK(clk), .Q(PP0[13]) );
  DFFTRX1 PP2_reg_6_ ( .D(PP2Next[6]), .RN(n3010), .CK(clk), .Q(PP2[6]) );
  DFFTRX1 PP1_reg_7_ ( .D(PP1Next[7]), .RN(n2910), .CK(clk), .Q(PP1[7]) );
  DFFTRX1 PP1_reg_9_ ( .D(PP1Next[9]), .RN(n2910), .CK(clk), .Q(PP1[9]) );
  DFFTRX1 PP1_reg_8_ ( .D(PP1Next[8]), .RN(n2910), .CK(clk), .Q(PP1[8]) );
  DFFTRX1 PP2_reg_3_ ( .D(PP2Next[3]), .RN(n3110), .CK(clk), .Q(PP2[3]) );
  DFFTRX1 PP1_reg_6_ ( .D(PP1Next[6]), .RN(n2910), .CK(clk), .Q(PP1[6]) );
  DFFTRX1 PP1_reg_5_ ( .D(PP1Next[5]), .RN(n2910), .CK(clk), .Q(PP1[5]) );
  DFFQX1 Ans_reg_4_ ( .D(N523), .CK(clk), .Q(AnsCorrect[4]) );
  DFFQX1 Ans_reg_3_ ( .D(N522), .CK(clk), .Q(AnsCorrect[3]) );
  DFFTRX1 PP2_reg_15_ ( .D(PP2Next[15]), .RN(n3010), .CK(clk), .Q(PP2[15]) );
  DFFQX1 Ans_reg_28_ ( .D(N547), .CK(clk), .Q(AnsCorrect[28]) );
  DFFTRX1 PP1_reg_4_ ( .D(PP1Next[4]), .RN(n2910), .CK(clk), .Q(PP1[4]) );
  DFFTRX1 PP0_reg_6_ ( .D(PP0Next[6]), .RN(n270), .CK(clk), .Q(PP0[6]) );
  DFFTRX1 PP1_reg_3_ ( .D(PP1Next[3]), .RN(n2910), .CK(clk), .Q(PP1[3]) );
  DFFTRX1 PP0_reg_0_ ( .D(PP0Next[0]), .RN(n280), .CK(clk), .Q(PP0[0]) );
  DFFQX4 count_reg ( .D(N556), .CK(clk), .Q(count) );
  DFFTRX1 PP0_reg_12_ ( .D(PP0Next[12]), .RN(n25), .CK(clk), .Q(PP0[12]) );
  DFFTRX1 PP0_reg_9_ ( .D(PP0Next[9]), .RN(n270), .CK(clk), .Q(PP0[9]) );
  DFFTRX1 PP0_reg_10_ ( .D(PP0Next[10]), .RN(n270), .CK(clk), .Q(PP0[10]) );
  DFFTRX1 PP0_reg_11_ ( .D(PP0Next[11]), .RN(n270), .CK(clk), .Q(PP0[11]) );
  DFFTRX1 PP0_reg_8_ ( .D(PP0Next[8]), .RN(n270), .CK(clk), .Q(PP0[8]) );
  DFFTRX1 PP0_reg_1_ ( .D(PP0Next[1]), .RN(n270), .CK(clk), .Q(PP0[1]) );
  DFFTRX1 PP0_reg_2_ ( .D(PP0Next[2]), .RN(n270), .CK(clk), .Q(PP0[2]) );
  DFFTRX1 PP0_reg_7_ ( .D(PP0Next[7]), .RN(n270), .CK(clk), .Q(PP0[7]) );
  DFFTRX1 PP2_reg_9_ ( .D(PP2Next[9]), .RN(n3010), .CK(clk), .Q(PP2[9]) );
  DFFTRX1 PP1_reg_13_ ( .D(PP1Next[13]), .RN(n280), .CK(clk), .Q(PP1[13]) );
  DFFTRX1 PP0_reg_17_ ( .D(PP0Next[17]), .RN(n25), .CK(clk), .Q(PP0[17]) );
  DFFTRX2 PP0_reg_4_ ( .D(PP0Next[4]), .RN(n270), .CK(clk), .Q(PP0[4]) );
  DFFTRX2 PP1_reg_0_ ( .D(PP1Next[0]), .RN(n2910), .CK(clk), .Q(PP1[0]) );
  DFFTRX2 PP1_reg_1_ ( .D(PP1Next[1]), .RN(n280), .CK(clk), .Q(PP1[1]) );
  DFFTRX2 PP0_reg_5_ ( .D(PP0Next[5]), .RN(n270), .CK(clk), .Q(PP0[5]) );
  DFFTRX2 PP2_reg_1_ ( .D(PP2Next[1]), .RN(n3010), .CK(clk), .Q(PP2[1]) );
  DFFTRX2 PP2_reg_0_ ( .D(PP2Next[0]), .RN(n22), .CK(clk), .Q(PP2[0]) );
  OAI2BB2X2 U3 ( .B0(n15), .B1(n11), .A0N(N79), .A1N(n15), .Y(Mp[15]) );
  ADDFXL U4 ( .A(PP3[15]), .B(PP4[11]), .CI(
        add_2_root_add_0_root_add_172_5_carry[29]), .CO(
        add_2_root_add_0_root_add_172_5_carry[30]), .S(N467) );
  INVX1 U5 ( .A(count), .Y(n3810) );
  OAI2BB2X1 U6 ( .B0(n16), .B1(n13), .A0N(N81), .A1N(n16), .Y(Mp[17]) );
  OAI2BB2X2 U7 ( .B0(n17), .B1(n56), .A0N(N40), .A1N(n17), .Y(Mc[14]) );
  OAI2BB2X2 U8 ( .B0(n17), .B1(n55), .A0N(N41), .A1N(n18), .Y(Mc[15]) );
  OAI2BB2X2 U9 ( .B0(n17), .B1(n54), .A0N(N42), .A1N(n17), .Y(Mc[16]) );
  OAI2BB2X2 U10 ( .B0(n18), .B1(n52), .A0N(N43), .A1N(n18), .Y(Mc[17]) );
  OAI2BB2X2 U11 ( .B0(n17), .B1(n60), .A0N(N36), .A1N(n17), .Y(Mc[10]) );
  OAI2BB2X2 U12 ( .B0(n17), .B1(n59), .A0N(N37), .A1N(n18), .Y(Mc[11]) );
  OAI2BB2X2 U13 ( .B0(n17), .B1(n58), .A0N(N38), .A1N(n17), .Y(Mc[12]) );
  OAI2BB2X2 U14 ( .B0(n17), .B1(n57), .A0N(N39), .A1N(n18), .Y(Mc[13]) );
  OAI2BB2X2 U15 ( .B0(n17), .B1(n4310), .A0N(N32), .A1N(n18), .Y(Mc[6]) );
  OAI2BB2X2 U16 ( .B0(n17), .B1(n4210), .A0N(N33), .A1N(n18), .Y(Mc[7]) );
  OAI2BB2X2 U17 ( .B0(n17), .B1(n4110), .A0N(N34), .A1N(n18), .Y(Mc[8]) );
  OAI2BB2X2 U18 ( .B0(n17), .B1(n401), .A0N(N35), .A1N(n18), .Y(Mc[9]) );
  OAI2BB2X2 U19 ( .B0(n18), .B1(n4410), .A0N(N31), .A1N(n18), .Y(Mc[5]) );
  OAI2BB2X2 U20 ( .B0(n18), .B1(n47), .A0N(N28), .A1N(n17), .Y(Mc[2]) );
  OAI2BB2X2 U21 ( .B0(n18), .B1(n45), .A0N(N30), .A1N(n18), .Y(Mc[4]) );
  OAI2BB2X2 U22 ( .B0(n18), .B1(n46), .A0N(N29), .A1N(n18), .Y(Mc[3]) );
  OAI2BB2X2 U23 ( .B0(n18), .B1(n48), .A0N(N27), .A1N(n17), .Y(Mc[1]) );
  NOR2X1 U24 ( .A(count), .B(n3710), .Y(n252) );
  CLKINVX1 U25 ( .A(B[0]), .Y(n199) );
  OAI31XL U26 ( .A0(n249), .A1(n248), .A2(n247), .B0(signCorrect), .Y(n250) );
  OAI2BB2XL U27 ( .B0(n15), .B1(n1930), .A0N(N75), .A1N(n15), .Y(Mp[11]) );
  INVXL U28 ( .A(B[12]), .Y(n204) );
  INVXL U29 ( .A(B[10]), .Y(n205) );
  NOR2XL U30 ( .A(n3710), .B(n251), .Y(N556) );
  CLKINVX1 U31 ( .A(n250), .Y(n3910) );
  INVXL U32 ( .A(AnsCorrect[15]), .Y(n224) );
  INVXL U33 ( .A(AnsCorrect[3]), .Y(n234) );
  INVXL U34 ( .A(AnsCorrect[4]), .Y(n233) );
  INVXL U35 ( .A(AnsCorrect[7]), .Y(n232) );
  INVXL U36 ( .A(AnsCorrect[8]), .Y(n231) );
  INVXL U37 ( .A(AnsCorrect[9]), .Y(n230) );
  INVXL U38 ( .A(AnsCorrect[10]), .Y(n229) );
  INVXL U39 ( .A(AnsCorrect[11]), .Y(n228) );
  INVXL U40 ( .A(AnsCorrect[12]), .Y(n227) );
  INVXL U41 ( .A(AnsCorrect[13]), .Y(n226) );
  OAI2BB2X1 U42 ( .B0(n17), .B1(n237), .A0N(N26), .A1N(n18), .Y(Mc[0]) );
  NOR4XL U43 ( .A(AnsCorrect[12]), .B(AnsCorrect[11]), .C(AnsCorrect[10]), .D(
        AnsCorrect[0]), .Y(n242) );
  NOR4XL U44 ( .A(AnsCorrect[1]), .B(AnsCorrect[19]), .C(AnsCorrect[18]), .D(
        AnsCorrect[17]), .Y(n240) );
  NOR4XL U45 ( .A(AnsCorrect[16]), .B(AnsCorrect[15]), .C(AnsCorrect[14]), .D(
        AnsCorrect[13]), .Y(n241) );
  NOR4XL U46 ( .A(AnsCorrect[4]), .B(AnsCorrect[3]), .C(AnsCorrect[34]), .D(
        AnsCorrect[33]), .Y(n243) );
  NOR3XL U47 ( .A(AnsCorrect[7]), .B(AnsCorrect[9]), .C(AnsCorrect[8]), .Y(
        n244) );
  CLKBUFX3 U48 ( .A(signCorrect), .Y(n9) );
  CLKBUFX3 U49 ( .A(signCorrect), .Y(n10) );
  INVX3 U50 ( .A(n3610), .Y(n3010) );
  INVX3 U51 ( .A(n3210), .Y(n2910) );
  INVX3 U52 ( .A(n3210), .Y(n280) );
  INVX3 U53 ( .A(n3310), .Y(n25) );
  INVX3 U54 ( .A(n3610), .Y(n24) );
  INVX3 U55 ( .A(n3610), .Y(n23) );
  INVX3 U56 ( .A(n3310), .Y(n270) );
  CLKINVX1 U57 ( .A(n19), .Y(n3110) );
  CLKBUFX3 U58 ( .A(n19), .Y(n3210) );
  CLKBUFX3 U59 ( .A(n19), .Y(n3610) );
  CLKBUFX3 U60 ( .A(n19), .Y(n3310) );
  INVX3 U61 ( .A(n3710), .Y(n22) );
  CLKBUFX3 U62 ( .A(n21), .Y(n19) );
  CLKBUFX3 U63 ( .A(n20), .Y(n3710) );
  CLKBUFX3 U64 ( .A(n21), .Y(n20) );
  CLKBUFX3 U65 ( .A(B[19]), .Y(n16) );
  CLKBUFX3 U66 ( .A(B[19]), .Y(n15) );
  CLKINVX1 U67 ( .A(B[11]), .Y(n1930) );
  CLKINVX1 U68 ( .A(B[4]), .Y(n198) );
  CLKBUFX3 U69 ( .A(reset), .Y(n21) );
  CLKINVX1 U70 ( .A(B[15]), .Y(n11) );
  CLKINVX1 U71 ( .A(B[16]), .Y(n12) );
  CLKINVX1 U72 ( .A(B[17]), .Y(n13) );
  CLKINVX1 U73 ( .A(B[18]), .Y(n14) );
  CLKINVX1 U74 ( .A(B[2]), .Y(n196) );
  CLKINVX1 U75 ( .A(B[1]), .Y(n200) );
  CLKINVX1 U76 ( .A(B[9]), .Y(n202) );
  CLKINVX1 U77 ( .A(B[7]), .Y(n197) );
  CLKINVX1 U78 ( .A(B[5]), .Y(n206) );
  CLKINVX1 U79 ( .A(B[3]), .Y(n207) );
  CLKINVX1 U80 ( .A(B[13]), .Y(n201) );
  CLKINVX1 U81 ( .A(B[8]), .Y(n195) );
  CLKINVX1 U82 ( .A(B[6]), .Y(n203) );
  CLKINVX1 U83 ( .A(B[14]), .Y(n1940) );
  OAI2BB2XL U84 ( .B0(n15), .B1(n202), .A0N(N73), .A1N(n16), .Y(Mp[9]) );
  OAI2BB2XL U85 ( .B0(n15), .B1(n201), .A0N(N77), .A1N(n16), .Y(Mp[13]) );
  CLKBUFX3 U86 ( .A(n253), .Y(n7) );
  CLKBUFX3 U87 ( .A(n253), .Y(n8) );
  OAI2BB2XL U88 ( .B0(n16), .B1(n206), .A0N(N69), .A1N(n16), .Y(Mp[5]) );
  OAI2BB2XL U89 ( .B0(n16), .B1(n200), .A0N(N65), .A1N(n15), .Y(Mp[1]) );
  OAI2BB2XL U90 ( .B0(n15), .B1(n197), .A0N(N71), .A1N(n16), .Y(Mp[7]) );
  OAI2BB2XL U91 ( .B0(n16), .B1(n207), .A0N(N67), .A1N(n15), .Y(Mp[3]) );
  XOR2X1 U92 ( .A(n18), .B(n16), .Y(n254) );
  CLKBUFX3 U93 ( .A(n252), .Y(n5) );
  CLKBUFX3 U94 ( .A(n252), .Y(n6) );
  AO22X1 U95 ( .A0(N307), .A1(n7), .B0(N492), .B1(n5), .Y(N536) );
  AO22X1 U96 ( .A0(N308), .A1(n7), .B0(N493), .B1(n5), .Y(N537) );
  AO22X1 U97 ( .A0(N309), .A1(n8), .B0(N494), .B1(n5), .Y(N538) );
  AO22X1 U98 ( .A0(N312), .A1(n253), .B0(N497), .B1(n5), .Y(N541) );
  AO22X1 U99 ( .A0(N313), .A1(n7), .B0(N498), .B1(n5), .Y(N542) );
  AO22X1 U100 ( .A0(N314), .A1(n8), .B0(N499), .B1(n6), .Y(N543) );
  AO22X1 U101 ( .A0(N315), .A1(n8), .B0(N500), .B1(n6), .Y(N544) );
  AO22X1 U102 ( .A0(N316), .A1(n8), .B0(N501), .B1(n6), .Y(N545) );
  AO22X1 U103 ( .A0(N320), .A1(n8), .B0(N505), .B1(n6), .Y(N549) );
  AO22X1 U104 ( .A0(N310), .A1(n7), .B0(N495), .B1(n5), .Y(N539) );
  AO22X1 U105 ( .A0(N311), .A1(n7), .B0(N496), .B1(n5), .Y(N540) );
  AO22X1 U106 ( .A0(N319), .A1(n8), .B0(N504), .B1(n6), .Y(N548) );
  BUFX4 U107 ( .A(A[19]), .Y(n18) );
  BUFX4 U108 ( .A(A[19]), .Y(n17) );
  CLKBUFX3 U109 ( .A(n3910), .Y(Y[35]) );
  CLKBUFX3 U110 ( .A(n3910), .Y(n4) );
  NAND2X1 U111 ( .A(enMULT), .B(n3810), .Y(n251) );
  NOR2X1 U112 ( .A(n3810), .B(n3710), .Y(n253) );
  AO22X1 U113 ( .A0(N297), .A1(n7), .B0(N482), .B1(n6), .Y(N526) );
  AO22X1 U114 ( .A0(N299), .A1(n7), .B0(N484), .B1(n5), .Y(N528) );
  AO22X1 U115 ( .A0(N300), .A1(n7), .B0(N485), .B1(n252), .Y(N529) );
  AO22X1 U116 ( .A0(N301), .A1(n7), .B0(N486), .B1(n5), .Y(N530) );
  AO22X1 U117 ( .A0(N302), .A1(n253), .B0(N487), .B1(n5), .Y(N531) );
  AO22X1 U118 ( .A0(N303), .A1(n7), .B0(N488), .B1(n5), .Y(N532) );
  AO22X1 U119 ( .A0(N304), .A1(n7), .B0(N489), .B1(n5), .Y(N533) );
  AO22X1 U120 ( .A0(N305), .A1(n7), .B0(N490), .B1(n5), .Y(N534) );
  AO22X1 U121 ( .A0(N306), .A1(n7), .B0(N491), .B1(n5), .Y(N535) );
  AO22X1 U122 ( .A0(N317), .A1(n8), .B0(N502), .B1(n6), .Y(N546) );
  AO22X1 U123 ( .A0(N318), .A1(n8), .B0(N503), .B1(n6), .Y(N547) );
  AO22X1 U125 ( .A0(N321), .A1(n8), .B0(N506), .B1(n6), .Y(N550) );
  AO22X1 U126 ( .A0(N322), .A1(n8), .B0(N507), .B1(n6), .Y(N551) );
  AO22X1 U127 ( .A0(N323), .A1(n8), .B0(N508), .B1(n6), .Y(N552) );
  AO22X1 U128 ( .A0(N324), .A1(n8), .B0(N509), .B1(n6), .Y(N553) );
  AO22X1 U129 ( .A0(N325), .A1(n8), .B0(N510), .B1(n6), .Y(N554) );
  AO22X1 U130 ( .A0(N326), .A1(n7), .B0(N511), .B1(n6), .Y(N555) );
  AO22X1 U131 ( .A0(N292), .A1(n7), .B0(N477), .B1(n5), .Y(N521) );
  AO22X1 U132 ( .A0(N295), .A1(n7), .B0(N480), .B1(n6), .Y(N524) );
  AO22X1 U133 ( .A0(N296), .A1(n7), .B0(N481), .B1(n5), .Y(N525) );
  OAI2BB2XL U134 ( .B0(n15), .B1(n12), .A0N(N80), .A1N(n16), .Y(Mp[16]) );
  OAI2BB2XL U135 ( .B0(n16), .B1(n14), .A0N(N82), .A1N(n15), .Y(Mp[18]) );
  OAI2BB2XL U136 ( .B0(n15), .B1(n204), .A0N(N76), .A1N(n15), .Y(Mp[12]) );
  OAI2BB2XL U137 ( .B0(n15), .B1(n1940), .A0N(N78), .A1N(n15), .Y(Mp[14]) );
  OAI2BB2XL U138 ( .B0(n15), .B1(n195), .A0N(N72), .A1N(n16), .Y(Mp[8]) );
  OAI2BB2XL U139 ( .B0(n15), .B1(n205), .A0N(N74), .A1N(n15), .Y(Mp[10]) );
  AO22X1 U140 ( .A0(N290), .A1(n7), .B0(N475), .B1(n6), .Y(N519) );
  AO22X1 U141 ( .A0(N291), .A1(n7), .B0(N476), .B1(n5), .Y(N520) );
  AO22X1 U142 ( .A0(N293), .A1(n7), .B0(N478), .B1(n6), .Y(N522) );
  AO22X1 U143 ( .A0(N294), .A1(n7), .B0(N479), .B1(n252), .Y(N523) );
  AO22X1 U144 ( .A0(N298), .A1(n7), .B0(N483), .B1(n252), .Y(N527) );
  XOR2X1 U145 ( .A(n1), .B(n2), .Y(N474) );
  NOR2X1 U146 ( .A(PP4[17]), .B(add_2_root_add_0_root_add_172_5_carry[35]), 
        .Y(n2) );
  OAI2BB2XL U147 ( .B0(n15), .B1(n199), .A0N(N64), .A1N(n16), .Y(Mp[0]) );
  OAI2BB2XL U148 ( .B0(n16), .B1(n196), .A0N(N66), .A1N(n15), .Y(Mp[2]) );
  OAI2BB2XL U149 ( .B0(n16), .B1(n198), .A0N(N68), .A1N(n16), .Y(Mp[4]) );
  OAI2BB2XL U150 ( .B0(n15), .B1(n203), .A0N(N70), .A1N(n16), .Y(Mp[6]) );
  CLKINVX1 U151 ( .A(A[16]), .Y(n54) );
  CLKINVX1 U152 ( .A(A[15]), .Y(n55) );
  CLKINVX1 U153 ( .A(A[14]), .Y(n56) );
  CLKINVX1 U154 ( .A(A[13]), .Y(n57) );
  CLKINVX1 U155 ( .A(A[12]), .Y(n58) );
  CLKINVX1 U156 ( .A(A[11]), .Y(n59) );
  CLKINVX1 U157 ( .A(A[10]), .Y(n60) );
  CLKINVX1 U158 ( .A(A[9]), .Y(n401) );
  CLKINVX1 U159 ( .A(A[8]), .Y(n4110) );
  CLKINVX1 U160 ( .A(A[7]), .Y(n4210) );
  CLKINVX1 U161 ( .A(A[6]), .Y(n4310) );
  CLKINVX1 U162 ( .A(A[5]), .Y(n4410) );
  CLKINVX1 U163 ( .A(A[4]), .Y(n45) );
  CLKINVX1 U164 ( .A(A[3]), .Y(n46) );
  CLKINVX1 U165 ( .A(A[2]), .Y(n47) );
  CLKINVX1 U166 ( .A(A[1]), .Y(n48) );
  CLKINVX1 U167 ( .A(A[17]), .Y(n52) );
  CLKINVX1 U168 ( .A(A[18]), .Y(n51) );
  OAI2BB2XL U169 ( .B0(n260), .B1(n10), .A0N(N149), .A1N(n4), .Y(Y[29]) );
  OAI2BB2XL U170 ( .B0(n208), .B1(n9), .A0N(N154), .A1N(Y[35]), .Y(Y[34]) );
  CLKINVX1 U171 ( .A(AnsCorrect[34]), .Y(n208) );
  OAI2BB2XL U172 ( .B0(n209), .B1(n9), .A0N(N153), .A1N(Y[35]), .Y(Y[33]) );
  OAI2BB2XL U173 ( .B0(n210), .B1(n9), .A0N(N152), .A1N(Y[35]), .Y(Y[32]) );
  OAI2BB2XL U174 ( .B0(n211), .B1(n9), .A0N(N151), .A1N(Y[35]), .Y(Y[31]) );
  OAI2BB2XL U175 ( .B0(n212), .B1(n9), .A0N(N150), .A1N(Y[35]), .Y(Y[30]) );
  OAI2BB2XL U176 ( .B0(n213), .B1(n10), .A0N(N148), .A1N(n4), .Y(Y[28]) );
  OAI2BB2XL U177 ( .B0(n214), .B1(n10), .A0N(N147), .A1N(n4), .Y(Y[27]) );
  OAI2BB2XL U178 ( .B0(n215), .B1(n10), .A0N(N146), .A1N(n4), .Y(Y[26]) );
  OAI2BB2XL U179 ( .B0(n216), .B1(n10), .A0N(N145), .A1N(n4), .Y(Y[25]) );
  CLKINVX1 U180 ( .A(AnsCorrect[0]), .Y(n236) );
  CLKINVX1 U181 ( .A(A[0]), .Y(n237) );
  CLKINVX1 U182 ( .A(AnsCorrect[1]), .Y(n235) );
  CLKINVX1 U183 ( .A(AnsCorrect[14]), .Y(n225) );
  CLKINVX1 U184 ( .A(AnsCorrect[16]), .Y(n223) );
  CLKINVX1 U185 ( .A(AnsCorrect[17]), .Y(n222) );
  CLKINVX1 U186 ( .A(AnsCorrect[18]), .Y(n221) );
  CLKINVX1 U187 ( .A(AnsCorrect[19]), .Y(n220) );
  CLKINVX1 U188 ( .A(AnsCorrect[22]), .Y(n219) );
  CLKINVX1 U189 ( .A(AnsCorrect[23]), .Y(n218) );
  CLKINVX1 U190 ( .A(AnsCorrect[24]), .Y(n217) );
  CLKINVX1 U191 ( .A(AnsCorrect[25]), .Y(n216) );
  CLKINVX1 U192 ( .A(AnsCorrect[26]), .Y(n215) );
  CLKINVX1 U193 ( .A(AnsCorrect[27]), .Y(n214) );
  CLKINVX1 U194 ( .A(AnsCorrect[28]), .Y(n213) );
  CLKINVX1 U195 ( .A(AnsCorrect[30]), .Y(n212) );
  CLKINVX1 U196 ( .A(AnsCorrect[31]), .Y(n211) );
  CLKINVX1 U197 ( .A(AnsCorrect[32]), .Y(n210) );
  ADDFXL U198 ( .A(N193), .B(PP4[16]), .CI(
        add_2_root_add_0_root_add_172_5_carry[34]), .CO(
        add_2_root_add_0_root_add_172_5_carry[35]), .S(N472) );
  ADDFXL U199 ( .A(PP3[5]), .B(PP4[1]), .CI(
        add_2_root_add_0_root_add_172_5_carry[19]), .CO(
        add_2_root_add_0_root_add_172_5_carry[20]), .S(N457) );
  ADDFXL U200 ( .A(PP3[6]), .B(PP4[2]), .CI(
        add_2_root_add_0_root_add_172_5_carry[20]), .CO(
        add_2_root_add_0_root_add_172_5_carry[21]), .S(N458) );
  ADDFXL U201 ( .A(PP3[7]), .B(PP4[3]), .CI(
        add_2_root_add_0_root_add_172_5_carry[21]), .CO(
        add_2_root_add_0_root_add_172_5_carry[22]), .S(N459) );
  ADDFXL U202 ( .A(PP3[8]), .B(PP4[4]), .CI(
        add_2_root_add_0_root_add_172_5_carry[22]), .CO(
        add_2_root_add_0_root_add_172_5_carry[23]), .S(N460) );
  ADDFXL U203 ( .A(PP3[9]), .B(PP4[5]), .CI(
        add_2_root_add_0_root_add_172_5_carry[23]), .CO(
        add_2_root_add_0_root_add_172_5_carry[24]), .S(N461) );
  ADDFXL U204 ( .A(PP3[10]), .B(PP4[6]), .CI(
        add_2_root_add_0_root_add_172_5_carry[24]), .CO(
        add_2_root_add_0_root_add_172_5_carry[25]), .S(N462) );
  ADDFXL U205 ( .A(PP3[11]), .B(PP4[7]), .CI(
        add_2_root_add_0_root_add_172_5_carry[25]), .CO(
        add_2_root_add_0_root_add_172_5_carry[26]), .S(N463) );
  ADDFXL U206 ( .A(PP3[12]), .B(PP4[8]), .CI(
        add_2_root_add_0_root_add_172_5_carry[26]), .CO(
        add_2_root_add_0_root_add_172_5_carry[27]), .S(N464) );
  ADDFXL U207 ( .A(PP3[13]), .B(PP4[9]), .CI(
        add_2_root_add_0_root_add_172_5_carry[27]), .CO(
        add_2_root_add_0_root_add_172_5_carry[28]), .S(N465) );
  ADDFXL U208 ( .A(PP3[14]), .B(PP4[10]), .CI(
        add_2_root_add_0_root_add_172_5_carry[28]), .CO(
        add_2_root_add_0_root_add_172_5_carry[29]), .S(N466) );
  ADDFXL U209 ( .A(PP3[16]), .B(PP4[12]), .CI(
        add_2_root_add_0_root_add_172_5_carry[30]), .CO(
        add_2_root_add_0_root_add_172_5_carry[31]), .S(N468) );
  ADDFXL U210 ( .A(PP3[17]), .B(PP4[13]), .CI(
        add_2_root_add_0_root_add_172_5_carry[31]), .CO(
        add_2_root_add_0_root_add_172_5_carry[32]), .S(N469) );
  ADDFXL U211 ( .A(PP3[18]), .B(PP4[14]), .CI(
        add_2_root_add_0_root_add_172_5_carry[32]), .CO(
        add_2_root_add_0_root_add_172_5_carry[33]), .S(N470) );
  ADDFXL U212 ( .A(PP3[19]), .B(PP4[15]), .CI(
        add_2_root_add_0_root_add_172_5_carry[33]), .CO(
        add_2_root_add_0_root_add_172_5_carry[34]), .S(N471) );
  CLKINVX1 U213 ( .A(AnsCorrect[33]), .Y(n209) );
  OAI2BB2XL U214 ( .B0(n258), .B1(n10), .A0N(N140), .A1N(n4), .Y(Y[20]) );
  OAI2BB2XL U215 ( .B0(n259), .B1(n10), .A0N(N141), .A1N(n4), .Y(Y[21]) );
  OAI2BB2XL U216 ( .B0(n217), .B1(n10), .A0N(N144), .A1N(n4), .Y(Y[24]) );
  OAI2BB2XL U217 ( .B0(n218), .B1(n10), .A0N(N143), .A1N(n4), .Y(Y[23]) );
  OAI2BB2XL U218 ( .B0(n219), .B1(n10), .A0N(N142), .A1N(n4), .Y(Y[22]) );
  OAI2BB2XL U219 ( .B0(n220), .B1(n9), .A0N(N139), .A1N(Y[35]), .Y(Y[19]) );
  OAI2BB2XL U220 ( .B0(n221), .B1(n10), .A0N(N138), .A1N(n3910), .Y(Y[18]) );
  OAI2BB2XL U221 ( .B0(n222), .B1(n9), .A0N(N137), .A1N(n4), .Y(Y[17]) );
  OAI2BB2XL U222 ( .B0(n223), .B1(n10), .A0N(N136), .A1N(n3910), .Y(Y[16]) );
  OAI2BB2XL U223 ( .B0(n224), .B1(n9), .A0N(N135), .A1N(Y[35]), .Y(Y[15]) );
  NAND4X1 U224 ( .A(n256), .B(n257), .C(n244), .D(n243), .Y(n248) );
  NAND4X1 U225 ( .A(n260), .B(n255), .C(n246), .D(n245), .Y(n247) );
  NAND4X1 U226 ( .A(n242), .B(n241), .C(n240), .D(n239), .Y(n249) );
  NOR4X1 U227 ( .A(n238), .B(AnsCorrect[22]), .C(AnsCorrect[24]), .D(
        AnsCorrect[23]), .Y(n239) );
  NAND2X1 U228 ( .A(n258), .B(n259), .Y(n238) );
  NOR4X1 U229 ( .A(AnsCorrect[28]), .B(AnsCorrect[27]), .C(AnsCorrect[26]), 
        .D(AnsCorrect[25]), .Y(n245) );
  NOR3X1 U230 ( .A(AnsCorrect[30]), .B(AnsCorrect[32]), .C(AnsCorrect[31]), 
        .Y(n246) );
  OAI2BB2XL U231 ( .B0(n257), .B1(n9), .A0N(N126), .A1N(Y[35]), .Y(Y[6]) );
  OAI2BB2XL U232 ( .B0(n255), .B1(n10), .A0N(N122), .A1N(n4), .Y(Y[2]) );
  OAI2BB2XL U233 ( .B0(n256), .B1(n9), .A0N(N125), .A1N(Y[35]), .Y(Y[5]) );
  OAI2BB2XL U234 ( .B0(n230), .B1(n9), .A0N(N129), .A1N(Y[35]), .Y(Y[9]) );
  OAI2BB2XL U235 ( .B0(n231), .B1(n9), .A0N(N128), .A1N(Y[35]), .Y(Y[8]) );
  OAI2BB2XL U236 ( .B0(n232), .B1(n9), .A0N(N127), .A1N(Y[35]), .Y(Y[7]) );
  OAI2BB2XL U237 ( .B0(n233), .B1(n9), .A0N(N124), .A1N(Y[35]), .Y(Y[4]) );
  OAI2BB2XL U238 ( .B0(n234), .B1(n9), .A0N(N123), .A1N(Y[35]), .Y(Y[3]) );
  OAI2BB2XL U239 ( .B0(n235), .B1(n10), .A0N(N121), .A1N(n4), .Y(Y[1]) );
  OAI2BB2XL U240 ( .B0(n225), .B1(n10), .A0N(N134), .A1N(n3910), .Y(Y[14]) );
  OAI2BB2XL U241 ( .B0(n226), .B1(n9), .A0N(N133), .A1N(n4), .Y(Y[13]) );
  OAI2BB2XL U242 ( .B0(n227), .B1(n10), .A0N(N132), .A1N(n3910), .Y(Y[12]) );
  OAI2BB2XL U243 ( .B0(n228), .B1(n9), .A0N(N131), .A1N(n3910), .Y(Y[11]) );
  OAI2BB2XL U244 ( .B0(n229), .B1(n10), .A0N(N130), .A1N(Y[35]), .Y(Y[10]) );
  OAI2BB2XL U245 ( .B0(n236), .B1(n9), .A0N(N120), .A1N(n4), .Y(Y[0]) );
  CLKINVX1 U246 ( .A(n251), .Y(doneMULT) );
  XNOR2X1 U247 ( .A(add_2_root_add_0_root_add_172_5_carry[35]), .B(PP4[17]), 
        .Y(N473) );
  AND2X1 U248 ( .A(PP3[4]), .B(PP4[0]), .Y(
        add_2_root_add_0_root_add_172_5_carry[19]) );
  XOR2X1 U249 ( .A(PP4[0]), .B(PP3[4]), .Y(N456) );
endmodule


module RELU_1_DW01_inc_0 ( A, SUM_20_, SUM_19_, SUM_18_, SUM_17_, SUM_16_, 
        SUM_15_, SUM_14_, SUM_13_, SUM_12_, SUM_11_, SUM_10_, SUM_9_, SUM_8_, 
        SUM_7_, SUM_6_, SUM_5_, SUM_4_, SUM_3_, SUM_2_, SUM_1_ );
  input [20:0] A;
  output SUM_20_, SUM_19_, SUM_18_, SUM_17_, SUM_16_, SUM_15_, SUM_14_,
         SUM_13_, SUM_12_, SUM_11_, SUM_10_, SUM_9_, SUM_8_, SUM_7_, SUM_6_,
         SUM_5_, SUM_4_, SUM_3_, SUM_2_, SUM_1_;

  wire   [20:2] carry;

  ADDHXL U1_1_19 ( .A(A[19]), .B(carry[19]), .CO(carry[20]), .S(SUM_19_) );
  ADDHXL U1_1_18 ( .A(A[18]), .B(carry[18]), .CO(carry[19]), .S(SUM_18_) );
  ADDHXL U1_1_17 ( .A(A[17]), .B(carry[17]), .CO(carry[18]), .S(SUM_17_) );
  ADDHXL U1_1_16 ( .A(A[16]), .B(carry[16]), .CO(carry[17]), .S(SUM_16_) );
  ADDHXL U1_1_15 ( .A(A[15]), .B(carry[15]), .CO(carry[16]), .S(SUM_15_) );
  ADDHXL U1_1_14 ( .A(A[14]), .B(carry[14]), .CO(carry[15]), .S(SUM_14_) );
  ADDHXL U1_1_13 ( .A(A[13]), .B(carry[13]), .CO(carry[14]), .S(SUM_13_) );
  ADDHXL U1_1_12 ( .A(A[12]), .B(carry[12]), .CO(carry[13]), .S(SUM_12_) );
  ADDHXL U1_1_11 ( .A(A[11]), .B(carry[11]), .CO(carry[12]), .S(SUM_11_) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM_4_) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM_3_) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM_2_) );
  ADDHXL U1_1_10 ( .A(A[10]), .B(carry[10]), .CO(carry[11]), .S(SUM_10_) );
  ADDHXL U1_1_9 ( .A(A[9]), .B(carry[9]), .CO(carry[10]), .S(SUM_9_) );
  ADDHXL U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM_8_) );
  ADDHXL U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM_7_) );
  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM_6_) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM_5_) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM_1_) );
  XOR2X1 U1 ( .A(carry[20]), .B(A[20]), .Y(SUM_20_) );
endmodule


module RELU_1_DW01_add_0 ( A, B, SUM );
  input [19:0] A;
  input [19:0] B;
  output [19:0] SUM;
  wire   n1;
  wire   [19:2] carry;

  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  XOR3X1 U1_19 ( .A(A[19]), .B(B[19]), .C(carry[19]), .Y(SUM[19]) );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module RELU_1 ( Bi, Y, A_35_, A_34_, A_33_, A_32_, A_31_, A_30_, A_29_, A_28_, 
        A_27_, A_26_, A_25_, A_24_, A_23_, A_22_, A_21_, A_20_, A_19_, A_18_, 
        A_17_, A_16_, A_15_ );
  input [19:0] Bi;
  output [19:0] Y;
  input A_35_, A_34_, A_33_, A_32_, A_31_, A_30_, A_29_, A_28_, A_27_, A_26_,
         A_25_, A_24_, A_23_, A_22_, A_21_, A_20_, A_19_, A_18_, A_17_, A_16_,
         A_15_;
  wire   A_update_9_, A_update_8_, A_update_7_, A_update_6_, A_update_5_,
         A_update_4_, A_update_3_, A_update_2_, A_update_1_, A_update_19_,
         A_update_18_, A_update_17_, A_update_16_, A_update_15_, A_update_14_,
         A_update_13_, A_update_12_, A_update_11_, A_update_10_, A_update_0_,
         n3;
  wire   [19:0] biasResult;

  RELU_1_DW01_inc_0 add_222_round ( .A({A_35_, A_34_, A_33_, A_32_, A_31_, 
        A_30_, A_29_, A_28_, A_27_, A_26_, A_25_, A_24_, A_23_, A_22_, A_21_, 
        A_20_, A_19_, A_18_, A_17_, A_16_, A_15_}), .SUM_20_(A_update_19_), 
        .SUM_19_(A_update_18_), .SUM_18_(A_update_17_), .SUM_17_(A_update_16_), 
        .SUM_16_(A_update_15_), .SUM_15_(A_update_14_), .SUM_14_(A_update_13_), 
        .SUM_13_(A_update_12_), .SUM_12_(A_update_11_), .SUM_11_(A_update_10_), 
        .SUM_10_(A_update_9_), .SUM_9_(A_update_8_), .SUM_8_(A_update_7_), 
        .SUM_7_(A_update_6_), .SUM_6_(A_update_5_), .SUM_5_(A_update_4_), 
        .SUM_4_(A_update_3_), .SUM_3_(A_update_2_), .SUM_2_(A_update_1_), 
        .SUM_1_(A_update_0_) );
  RELU_1_DW01_add_0 add_223 ( .A({A_update_19_, A_update_18_, A_update_17_, 
        A_update_16_, A_update_15_, A_update_14_, A_update_13_, A_update_12_, 
        A_update_11_, A_update_10_, A_update_9_, A_update_8_, A_update_7_, 
        A_update_6_, A_update_5_, A_update_4_, A_update_3_, A_update_2_, 
        A_update_1_, A_update_0_}), .B(Bi), .SUM(biasResult) );
  INVX1 U2 ( .A(1'b1), .Y(Y[19]) );
  CLKBUFX3 U4 ( .A(biasResult[19]), .Y(n3) );
  NOR2BX1 U5 ( .AN(biasResult[18]), .B(n3), .Y(Y[18]) );
  NOR2BX1 U6 ( .AN(biasResult[17]), .B(n3), .Y(Y[17]) );
  NOR2BX1 U7 ( .AN(biasResult[16]), .B(n3), .Y(Y[16]) );
  NOR2BX1 U8 ( .AN(biasResult[15]), .B(n3), .Y(Y[15]) );
  NOR2BX1 U9 ( .AN(biasResult[14]), .B(n3), .Y(Y[14]) );
  NOR2BX1 U10 ( .AN(biasResult[13]), .B(n3), .Y(Y[13]) );
  NOR2BX1 U11 ( .AN(biasResult[12]), .B(n3), .Y(Y[12]) );
  NOR2BX1 U12 ( .AN(biasResult[11]), .B(n3), .Y(Y[11]) );
  NOR2BX1 U13 ( .AN(biasResult[10]), .B(n3), .Y(Y[10]) );
  NOR2BX1 U14 ( .AN(biasResult[9]), .B(n3), .Y(Y[9]) );
  NOR2BX1 U15 ( .AN(biasResult[8]), .B(n3), .Y(Y[8]) );
  NOR2BX1 U16 ( .AN(biasResult[7]), .B(n3), .Y(Y[7]) );
  NOR2BX1 U17 ( .AN(biasResult[6]), .B(n3), .Y(Y[6]) );
  NOR2BX1 U18 ( .AN(biasResult[5]), .B(n3), .Y(Y[5]) );
  NOR2BX1 U19 ( .AN(biasResult[4]), .B(n3), .Y(Y[4]) );
  NOR2BX1 U20 ( .AN(biasResult[3]), .B(n3), .Y(Y[3]) );
  NOR2BX1 U22 ( .AN(biasResult[2]), .B(n3), .Y(Y[2]) );
  NOR2BX1 U23 ( .AN(biasResult[1]), .B(n3), .Y(Y[1]) );
  NOR2BX1 U24 ( .AN(biasResult[0]), .B(n3), .Y(Y[0]) );
endmodule


module RELU_0_DW01_inc_0 ( A, SUM_20_, SUM_19_, SUM_18_, SUM_17_, SUM_16_, 
        SUM_15_, SUM_14_, SUM_13_, SUM_12_, SUM_11_, SUM_10_, SUM_9_, SUM_8_, 
        SUM_7_, SUM_6_, SUM_5_, SUM_4_, SUM_3_, SUM_2_, SUM_1_ );
  input [20:0] A;
  output SUM_20_, SUM_19_, SUM_18_, SUM_17_, SUM_16_, SUM_15_, SUM_14_,
         SUM_13_, SUM_12_, SUM_11_, SUM_10_, SUM_9_, SUM_8_, SUM_7_, SUM_6_,
         SUM_5_, SUM_4_, SUM_3_, SUM_2_, SUM_1_;

  wire   [20:2] carry;

  ADDHXL U1_1_19 ( .A(A[19]), .B(carry[19]), .CO(carry[20]), .S(SUM_19_) );
  ADDHXL U1_1_18 ( .A(A[18]), .B(carry[18]), .CO(carry[19]), .S(SUM_18_) );
  ADDHXL U1_1_17 ( .A(A[17]), .B(carry[17]), .CO(carry[18]), .S(SUM_17_) );
  ADDHXL U1_1_16 ( .A(A[16]), .B(carry[16]), .CO(carry[17]), .S(SUM_16_) );
  ADDHXL U1_1_15 ( .A(A[15]), .B(carry[15]), .CO(carry[16]), .S(SUM_15_) );
  ADDHXL U1_1_14 ( .A(A[14]), .B(carry[14]), .CO(carry[15]), .S(SUM_14_) );
  ADDHXL U1_1_13 ( .A(A[13]), .B(carry[13]), .CO(carry[14]), .S(SUM_13_) );
  ADDHXL U1_1_12 ( .A(A[12]), .B(carry[12]), .CO(carry[13]), .S(SUM_12_) );
  ADDHXL U1_1_11 ( .A(A[11]), .B(carry[11]), .CO(carry[12]), .S(SUM_11_) );
  ADDHXL U1_1_10 ( .A(A[10]), .B(carry[10]), .CO(carry[11]), .S(SUM_10_) );
  ADDHXL U1_1_9 ( .A(A[9]), .B(carry[9]), .CO(carry[10]), .S(SUM_9_) );
  ADDHXL U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM_8_) );
  ADDHXL U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM_7_) );
  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM_6_) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM_5_) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM_4_) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM_3_) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM_2_) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM_1_) );
  XOR2X1 U1 ( .A(carry[20]), .B(A[20]), .Y(SUM_20_) );
endmodule


module RELU_0_DW01_add_0 ( A, B, SUM );
  input [19:0] A;
  input [19:0] B;
  output [19:0] SUM;
  wire   n1;
  wire   [19:2] carry;

  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  XOR3X1 U1_19 ( .A(A[19]), .B(B[19]), .C(carry[19]), .Y(SUM[19]) );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module RELU_0 ( Bi, Y, A_35_, A_34_, A_33_, A_32_, A_31_, A_30_, A_29_, A_28_, 
        A_27_, A_26_, A_25_, A_24_, A_23_, A_22_, A_21_, A_20_, A_19_, A_18_, 
        A_17_, A_16_, A_15_ );
  input [19:0] Bi;
  output [19:0] Y;
  input A_35_, A_34_, A_33_, A_32_, A_31_, A_30_, A_29_, A_28_, A_27_, A_26_,
         A_25_, A_24_, A_23_, A_22_, A_21_, A_20_, A_19_, A_18_, A_17_, A_16_,
         A_15_;
  wire   A_update_9_, A_update_8_, A_update_7_, A_update_6_, A_update_5_,
         A_update_4_, A_update_3_, A_update_2_, A_update_1_, A_update_19_,
         A_update_18_, A_update_17_, A_update_16_, A_update_15_, A_update_14_,
         A_update_13_, A_update_12_, A_update_11_, A_update_10_, A_update_0_,
         n3;
  wire   [19:0] biasResult;

  RELU_0_DW01_inc_0 add_222_round ( .A({A_35_, A_34_, A_33_, A_32_, A_31_, 
        A_30_, A_29_, A_28_, A_27_, A_26_, A_25_, A_24_, A_23_, A_22_, A_21_, 
        A_20_, A_19_, A_18_, A_17_, A_16_, A_15_}), .SUM_20_(A_update_19_), 
        .SUM_19_(A_update_18_), .SUM_18_(A_update_17_), .SUM_17_(A_update_16_), 
        .SUM_16_(A_update_15_), .SUM_15_(A_update_14_), .SUM_14_(A_update_13_), 
        .SUM_13_(A_update_12_), .SUM_12_(A_update_11_), .SUM_11_(A_update_10_), 
        .SUM_10_(A_update_9_), .SUM_9_(A_update_8_), .SUM_8_(A_update_7_), 
        .SUM_7_(A_update_6_), .SUM_6_(A_update_5_), .SUM_5_(A_update_4_), 
        .SUM_4_(A_update_3_), .SUM_3_(A_update_2_), .SUM_2_(A_update_1_), 
        .SUM_1_(A_update_0_) );
  RELU_0_DW01_add_0 add_223 ( .A({A_update_19_, A_update_18_, A_update_17_, 
        A_update_16_, A_update_15_, A_update_14_, A_update_13_, A_update_12_, 
        A_update_11_, A_update_10_, A_update_9_, A_update_8_, A_update_7_, 
        A_update_6_, A_update_5_, A_update_4_, A_update_3_, A_update_2_, 
        A_update_1_, A_update_0_}), .B(Bi), .SUM(biasResult) );
  INVX1 U2 ( .A(1'b1), .Y(Y[19]) );
  CLKBUFX3 U4 ( .A(biasResult[19]), .Y(n3) );
  NOR2BX1 U5 ( .AN(biasResult[18]), .B(n3), .Y(Y[18]) );
  NOR2BX1 U6 ( .AN(biasResult[17]), .B(n3), .Y(Y[17]) );
  NOR2BX1 U7 ( .AN(biasResult[16]), .B(n3), .Y(Y[16]) );
  NOR2BX1 U8 ( .AN(biasResult[15]), .B(n3), .Y(Y[15]) );
  NOR2BX1 U9 ( .AN(biasResult[14]), .B(n3), .Y(Y[14]) );
  NOR2BX1 U10 ( .AN(biasResult[13]), .B(n3), .Y(Y[13]) );
  NOR2BX1 U11 ( .AN(biasResult[12]), .B(n3), .Y(Y[12]) );
  NOR2BX1 U12 ( .AN(biasResult[11]), .B(n3), .Y(Y[11]) );
  NOR2BX1 U13 ( .AN(biasResult[10]), .B(n3), .Y(Y[10]) );
  NOR2BX1 U14 ( .AN(biasResult[9]), .B(n3), .Y(Y[9]) );
  NOR2BX1 U15 ( .AN(biasResult[8]), .B(n3), .Y(Y[8]) );
  NOR2BX1 U16 ( .AN(biasResult[7]), .B(n3), .Y(Y[7]) );
  NOR2BX1 U17 ( .AN(biasResult[6]), .B(n3), .Y(Y[6]) );
  NOR2BX1 U18 ( .AN(biasResult[5]), .B(n3), .Y(Y[5]) );
  NOR2BX1 U19 ( .AN(biasResult[4]), .B(n3), .Y(Y[4]) );
  NOR2BX1 U20 ( .AN(biasResult[3]), .B(n3), .Y(Y[3]) );
  NOR2BX1 U22 ( .AN(biasResult[2]), .B(n3), .Y(Y[2]) );
  NOR2BX1 U23 ( .AN(biasResult[1]), .B(n3), .Y(Y[1]) );
  NOR2BX1 U24 ( .AN(biasResult[0]), .B(n3), .Y(Y[0]) );
endmodule


module CONV_SUB_DW01_add_2 ( A, B, SUM );
  input [35:0] A;
  input [35:0] B;
  output [35:0] SUM;
  wire   n1, n2, n3, n4, n5, n6, n7, n8;
  wire   [35:2] carry;

  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  XOR3X1 U1_35 ( .A(A[35]), .B(B[35]), .C(carry[35]), .Y(SUM[35]) );
  ADDFHX1 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFHX1 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFHX1 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFHX1 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFX1 U1_30 ( .A(A[30]), .B(B[30]), .CI(carry[30]), .CO(carry[31]), .S(
        SUM[30]) );
  ADDFHX1 U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFHX1 U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFHX1 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFX1 U1_31 ( .A(A[31]), .B(B[31]), .CI(carry[31]), .CO(carry[32]), .S(
        SUM[31]) );
  ADDFHX1 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFHX1 U1_29 ( .A(A[29]), .B(B[29]), .CI(carry[29]), .CO(carry[30]), .S(
        SUM[29]) );
  ADDFXL U1_27 ( .A(A[27]), .B(B[27]), .CI(carry[27]), .CO(carry[28]), .S(
        SUM[27]) );
  ADDFXL U1_25 ( .A(A[25]), .B(B[25]), .CI(carry[25]), .CO(carry[26]), .S(
        SUM[25]) );
  ADDFHX1 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFHX1 U1_28 ( .A(A[28]), .B(B[28]), .CI(carry[28]), .CO(carry[29]), .S(
        SUM[28]) );
  ADDFHX1 U1_26 ( .A(A[26]), .B(B[26]), .CI(carry[26]), .CO(carry[27]), .S(
        SUM[26]) );
  ADDFHX1 U1_24 ( .A(A[24]), .B(B[24]), .CI(carry[24]), .CO(carry[25]), .S(
        SUM[24]) );
  ADDFHX2 U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFHX4 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFHX2 U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFHX2 U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFHX2 U1_32 ( .A(A[32]), .B(B[32]), .CI(carry[32]), .CO(carry[33]), .S(
        SUM[32]) );
  ADDFHX4 U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFHX2 U1_33 ( .A(A[33]), .B(B[33]), .CI(carry[33]), .CO(carry[34]), .S(
        SUM[33]) );
  ADDFHX2 U1_34 ( .A(A[34]), .B(B[34]), .CI(carry[34]), .CO(carry[35]), .S(
        SUM[34]) );
  BUFX8 U1 ( .A(A[1]), .Y(n1) );
  NAND2X4 U2 ( .A(B[16]), .B(carry[16]), .Y(n6) );
  NAND2X4 U3 ( .A(A[16]), .B(carry[16]), .Y(n7) );
  AND2X4 U4 ( .A(B[0]), .B(A[0]), .Y(n2) );
  XOR3XL U5 ( .A(n2), .B(n1), .C(B[1]), .Y(SUM[1]) );
  NAND2X4 U6 ( .A(B[1]), .B(n2), .Y(n3) );
  NAND2X4 U7 ( .A(n1), .B(n2), .Y(n4) );
  NAND2X4 U8 ( .A(n1), .B(B[1]), .Y(n5) );
  NAND3X4 U9 ( .A(n3), .B(n4), .C(n5), .Y(carry[2]) );
  XOR2XL U10 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
  NAND2X1 U11 ( .A(A[16]), .B(B[16]), .Y(n8) );
  NAND3X1 U12 ( .A(n6), .B(n7), .C(n8), .Y(carry[17]) );
  XOR3XL U13 ( .A(carry[16]), .B(A[16]), .C(B[16]), .Y(SUM[16]) );
endmodule


module CONV_SUB_DW01_add_3 ( A, B, SUM );
  input [35:0] A;
  input [35:0] B;
  output [35:0] SUM;
  wire   n1, n2, n3, n4, n5, n6, n7;
  wire   [35:1] carry;

  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  XOR3X1 U1_35 ( .A(A[35]), .B(B[35]), .C(carry[35]), .Y(SUM[35]) );
  ADDFHX1 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFHX1 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFHX1 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFX1 U1_30 ( .A(A[30]), .B(B[30]), .CI(carry[30]), .CO(carry[31]), .S(
        SUM[30]) );
  ADDFHX1 U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFHX1 U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFHX1 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFX1 U1_31 ( .A(A[31]), .B(B[31]), .CI(carry[31]), .CO(carry[32]), .S(
        SUM[31]) );
  ADDFHX1 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFHX1 U1_29 ( .A(A[29]), .B(B[29]), .CI(carry[29]), .CO(carry[30]), .S(
        SUM[29]) );
  ADDFXL U1_27 ( .A(A[27]), .B(B[27]), .CI(carry[27]), .CO(carry[28]), .S(
        SUM[27]) );
  ADDFXL U1_25 ( .A(A[25]), .B(B[25]), .CI(carry[25]), .CO(carry[26]), .S(
        SUM[25]) );
  ADDFHX1 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFHX1 U1_28 ( .A(A[28]), .B(B[28]), .CI(carry[28]), .CO(carry[29]), .S(
        SUM[28]) );
  ADDFHX1 U1_26 ( .A(A[26]), .B(B[26]), .CI(carry[26]), .CO(carry[27]), .S(
        SUM[26]) );
  ADDFHX1 U1_24 ( .A(A[24]), .B(B[24]), .CI(carry[24]), .CO(carry[25]), .S(
        SUM[24]) );
  ADDFHX4 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFHX2 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFHX2 U1_32 ( .A(A[32]), .B(B[32]), .CI(carry[32]), .CO(carry[33]), .S(
        SUM[32]) );
  ADDFHX2 U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFHX4 U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFHX4 U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFHX4 U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFHX4 U1_33 ( .A(A[33]), .B(B[33]), .CI(carry[33]), .CO(carry[34]), .S(
        SUM[33]) );
  ADDFHX4 U1_34 ( .A(A[34]), .B(B[34]), .CI(carry[34]), .CO(carry[35]), .S(
        SUM[34]) );
  NAND2X2 U1 ( .A(A[1]), .B(B[1]), .Y(n3) );
  XOR3XL U2 ( .A(carry[1]), .B(A[1]), .C(B[1]), .Y(SUM[1]) );
  NAND2X4 U3 ( .A(B[1]), .B(carry[1]), .Y(n1) );
  NAND2X4 U4 ( .A(A[1]), .B(carry[1]), .Y(n2) );
  NAND3X4 U5 ( .A(n1), .B(n2), .C(n3), .Y(carry[2]) );
  INVX4 U6 ( .A(n7), .Y(carry[1]) );
  NAND2X4 U7 ( .A(B[0]), .B(A[0]), .Y(n7) );
  XOR2XL U8 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
  NAND2X1 U9 ( .A(B[16]), .B(carry[16]), .Y(n4) );
  NAND2X1 U10 ( .A(A[16]), .B(carry[16]), .Y(n5) );
  NAND2X1 U11 ( .A(A[16]), .B(B[16]), .Y(n6) );
  NAND3X1 U12 ( .A(n4), .B(n5), .C(n6), .Y(carry[17]) );
  XOR3XL U13 ( .A(carry[16]), .B(A[16]), .C(B[16]), .Y(SUM[16]) );
endmodule


module CONV_SUB ( clk, reset, data, addrRd, addrWr, resultK0, resultK1, done, 
        term );
  input [19:0] data;
  output [11:0] addrRd;
  output [11:0] addrWr;
  output [19:0] resultK0;
  output [19:0] resultK1;
  input clk, reset;
  output done, term;
  wire   n291, n292, n293, n294, n295, n296, n297, n298, n299, n300, enMULT,
         sumResult0_35_, sumResult0_34_, sumResult0_33_, sumResult0_32_,
         sumResult0_31_, sumResult0_30_, sumResult0_29_, sumResult0_28_,
         sumResult0_27_, sumResult0_26_, sumResult0_25_, sumResult0_24_,
         sumResult0_23_, sumResult0_22_, sumResult0_21_, sumResult0_20_,
         sumResult0_19_, sumResult0_18_, sumResult0_17_, sumResult0_16_,
         sumResult0_15_, sumResult0_14_, sumResult0_13_, sumResult0_12_,
         sumResult0_11_, sumResult0_10_, sumResult0_9_, sumResult0_8_,
         sumResult0_7_, sumResult0_6_, sumResult0_5_, sumResult0_4_,
         sumResult0_3_, sumResult0_2_, sumResult0_1_, sumResult0_0_,
         sumResult1_35_, sumResult1_34_, sumResult1_33_, sumResult1_32_,
         sumResult1_31_, sumResult1_30_, sumResult1_29_, sumResult1_28_,
         sumResult1_27_, sumResult1_26_, sumResult1_25_, sumResult1_24_,
         sumResult1_23_, sumResult1_22_, sumResult1_21_, sumResult1_20_,
         sumResult1_19_, sumResult1_18_, sumResult1_17_, sumResult1_16_,
         sumResult1_15_, sumResult1_14_, sumResult1_13_, sumResult1_12_,
         sumResult1_11_, sumResult1_10_, sumResult1_9_, sumResult1_8_,
         sumResult1_7_, sumResult1_6_, sumResult1_5_, sumResult1_4_,
         sumResult1_3_, sumResult1_2_, sumResult1_1_, sumResult1_0_, doneMULT,
         N47, N48, N49, N50, N51, N53, N54, N55, N56, N57, N58, N59, N60, N61,
         N62, N63, N82, N83, N84, N85, N86, N87, N206, N207, N208, N209, N267,
         N268, N269, N270, N271, N272, N405, N412, N754, n23, n24, n25, n30,
         n31, n42, n43, n46, n470, n480, n490, n500, n510, n52, n530, n540,
         n550, n560, n570, n580, n590, n600, n610, n620, n630, n64, n65, n66,
         n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80,
         n81, n820, n830, n840, n850, n860, n870, n88, n89, n90, n91, n92, n93,
         n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n121, n122, n123, n124, n125, n126, n127, n128,
         n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139,
         n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n150,
         n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161,
         n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n172,
         n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n183,
         n184, n185, n186, n187, n188, n189, n190, n191, n192, n193, n194,
         n195, n196, n197, n198, n199, n200, n201, n202, n203, n204, n205,
         n2060, n2070, n2080, n2090, n210, n211, n1, n2, n5, n6, n7, n9, n21,
         n22, n26, n27, n28, n29, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n44, n45, n120, n212, n213, n214, n215, n216, n217, n218, n219,
         n220, n221, n222, n223, n224, n225, n226, n227, n228, n229, n230,
         n231, n232, n233, n234, n235, n236, n237, n238, n239, n240, n241,
         n242, n243, n244, n245, n246, n247, n248, n249, n250, n251, n252,
         n253, n254, n255, n256, n257, n258, n259, n260, n261, n262, n263,
         n264, n265, n266, n2670, n2680, n2690, n2700, n2710, n2720, n273,
         n274, n275, n276, n277, n278, n279, n280, n281, n282, n283, n284,
         n285, n286, n287, n288, n289, n290, SYNOPSYS_UNCONNECTED_1,
         SYNOPSYS_UNCONNECTED_2;
  wire   [4:0] countMULT;
  wire   [35:0] addend0;
  wire   [35:0] addResult0;
  wire   [35:0] addend1;
  wire   [35:0] addResult1;
  wire   [11:0] upperLeft_org;
  wire   [11:0] upperLeft;
  wire   [1:0] Q;
  wire   [1:0] R;
  wire   [19:0] cData;
  wire   [19:0] k0;
  wire   [35:0] multResult0;
  wire   [14:0] k1;
  wire   [35:0] multResult1;
  wire   [19:0] reluResult0;
  wire   [19:0] reluResult1;
  wire   [3:0] offset;
  wire   [19:0] iData;
  wire   [19:0] cDataNext;
  wire   [4:2] add_541_carry;
  wire   [5:1] add_325_2_carry;
  wire   [5:1] add_325_carry;
  wire   [5:2] add_324_2_carry;
  wire   [5:2] add_324_carry;
  wire   [5:2] r365_carry;
  wire   [5:2] r364_carry;

  MULT_1 mult0 ( .clk(clk), .reset(n242), .A(cData), .B({n229, n229, n229, 
        n229, k0[15:10], k1[13], k0[8:0]}), .enMULT(enMULT), .Y(multResult0), 
        .doneMULT(n289) );
  MULT_0 mult1 ( .clk(clk), .reset(n242), .A(cData), .B({n228, n228, n228, 
        n228, n228, k1[14:13], k1[6], k1[11:0]}), .enMULT(enMULT), .Y(
        multResult1), .doneMULT(n290) );
  RELU_1 relu0 ( .Bi({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b0, 
        1'b0, 1'b1, 1'b1, 1'b0, 1'b0, 1'b0, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .Y({SYNOPSYS_UNCONNECTED_1, reluResult0[18:0]}), .A_35_(sumResult0_35_), .A_34_(sumResult0_34_), .A_33_(sumResult0_33_), .A_32_(sumResult0_32_), 
        .A_31_(sumResult0_31_), .A_30_(sumResult0_30_), .A_29_(sumResult0_29_), 
        .A_28_(sumResult0_28_), .A_27_(sumResult0_27_), .A_26_(sumResult0_26_), 
        .A_25_(sumResult0_25_), .A_24_(sumResult0_24_), .A_23_(sumResult0_23_), 
        .A_22_(sumResult0_22_), .A_21_(sumResult0_21_), .A_20_(sumResult0_20_), 
        .A_19_(sumResult0_19_), .A_18_(sumResult0_18_), .A_17_(sumResult0_17_), 
        .A_16_(sumResult0_16_), .A_15_(sumResult0_15_) );
  RELU_0 relu1 ( .Bi({1'b1, 1'b1, 1'b1, 1'b1, 1'b0, 1'b1, 1'b1, 1'b1, 1'b0, 
        1'b0, 1'b1, 1'b0, 1'b1, 1'b0, 1'b0, 1'b1, 1'b0, 1'b1, 1'b0, 1'b1}), 
        .Y({SYNOPSYS_UNCONNECTED_2, reluResult1[18:0]}), .A_35_(sumResult1_35_), .A_34_(sumResult1_34_), .A_33_(sumResult1_33_), .A_32_(sumResult1_32_), 
        .A_31_(sumResult1_31_), .A_30_(sumResult1_30_), .A_29_(sumResult1_29_), 
        .A_28_(sumResult1_28_), .A_27_(sumResult1_27_), .A_26_(sumResult1_26_), 
        .A_25_(sumResult1_25_), .A_24_(sumResult1_24_), .A_23_(sumResult1_23_), 
        .A_22_(sumResult1_22_), .A_21_(sumResult1_21_), .A_20_(sumResult1_20_), 
        .A_19_(sumResult1_19_), .A_18_(sumResult1_18_), .A_17_(sumResult1_17_), 
        .A_16_(sumResult1_16_), .A_15_(sumResult1_15_) );
  CONV_SUB_DW01_add_2 add_323 ( .A(addend1), .B({sumResult1_35_, 
        sumResult1_34_, sumResult1_33_, sumResult1_32_, sumResult1_31_, 
        sumResult1_30_, sumResult1_29_, sumResult1_28_, sumResult1_27_, 
        sumResult1_26_, sumResult1_25_, sumResult1_24_, sumResult1_23_, 
        sumResult1_22_, sumResult1_21_, sumResult1_20_, sumResult1_19_, 
        sumResult1_18_, sumResult1_17_, sumResult1_16_, sumResult1_15_, 
        sumResult1_14_, sumResult1_13_, sumResult1_12_, sumResult1_11_, 
        sumResult1_10_, sumResult1_9_, sumResult1_8_, sumResult1_7_, 
        sumResult1_6_, sumResult1_5_, sumResult1_4_, sumResult1_3_, 
        sumResult1_2_, sumResult1_1_, sumResult1_0_}), .SUM(addResult1) );
  CONV_SUB_DW01_add_3 add_322 ( .A(addend0), .B({sumResult0_35_, 
        sumResult0_34_, sumResult0_33_, sumResult0_32_, sumResult0_31_, 
        sumResult0_30_, sumResult0_29_, sumResult0_28_, sumResult0_27_, 
        sumResult0_26_, sumResult0_25_, sumResult0_24_, sumResult0_23_, 
        sumResult0_22_, sumResult0_21_, sumResult0_20_, sumResult0_19_, 
        sumResult0_18_, sumResult0_17_, sumResult0_16_, sumResult0_15_, 
        sumResult0_14_, sumResult0_13_, sumResult0_12_, sumResult0_11_, 
        sumResult0_10_, sumResult0_9_, sumResult0_8_, sumResult0_7_, 
        sumResult0_6_, sumResult0_5_, sumResult0_4_, sumResult0_3_, 
        sumResult0_2_, sumResult0_1_, sumResult0_0_}), .SUM(addResult0) );
  EDFFX1 iData_reg_19_ ( .D(data[19]), .E(n233), .CK(clk), .Q(iData[19]) );
  EDFFX1 iData_reg_18_ ( .D(data[18]), .E(n233), .CK(clk), .Q(iData[18]) );
  EDFFX1 iData_reg_17_ ( .D(data[17]), .E(n233), .CK(clk), .Q(iData[17]) );
  EDFFX1 iData_reg_16_ ( .D(data[16]), .E(n233), .CK(clk), .Q(iData[16]) );
  EDFFX1 iData_reg_15_ ( .D(data[15]), .E(n233), .CK(clk), .Q(iData[15]) );
  EDFFX1 iData_reg_14_ ( .D(data[14]), .E(n233), .CK(clk), .Q(iData[14]) );
  EDFFX1 iData_reg_13_ ( .D(data[13]), .E(n233), .CK(clk), .Q(iData[13]) );
  EDFFX1 iData_reg_12_ ( .D(data[12]), .E(n234), .CK(clk), .Q(iData[12]) );
  EDFFX1 iData_reg_11_ ( .D(data[11]), .E(n233), .CK(clk), .Q(iData[11]) );
  EDFFX1 iData_reg_10_ ( .D(data[10]), .E(n233), .CK(clk), .Q(iData[10]) );
  EDFFX1 iData_reg_9_ ( .D(data[9]), .E(n233), .CK(clk), .Q(iData[9]) );
  EDFFX1 iData_reg_8_ ( .D(data[8]), .E(n233), .CK(clk), .Q(iData[8]) );
  EDFFX1 iData_reg_7_ ( .D(data[7]), .E(n233), .CK(clk), .Q(iData[7]) );
  EDFFX1 iData_reg_6_ ( .D(data[6]), .E(n233), .CK(clk), .Q(iData[6]) );
  EDFFX1 iData_reg_5_ ( .D(data[5]), .E(n234), .CK(clk), .Q(iData[5]) );
  EDFFX1 iData_reg_4_ ( .D(data[4]), .E(n233), .CK(clk), .Q(iData[4]) );
  EDFFX1 iData_reg_3_ ( .D(data[3]), .E(n233), .CK(clk), .Q(iData[3]) );
  EDFFX1 iData_reg_2_ ( .D(data[2]), .E(n233), .CK(clk), .Q(iData[2]) );
  EDFFX1 iData_reg_1_ ( .D(data[1]), .E(n233), .CK(clk), .Q(iData[1]) );
  EDFFX1 iData_reg_0_ ( .D(data[0]), .E(n234), .CK(clk), .Q(iData[0]) );
  EDFFX1 addend1_reg_31_ ( .D(multResult1[31]), .E(n237), .CK(clk), .Q(
        addend1[31]) );
  EDFFX1 addend1_reg_32_ ( .D(multResult1[32]), .E(n237), .CK(clk), .Q(
        addend1[32]) );
  EDFFX1 addend1_reg_33_ ( .D(multResult1[33]), .E(n237), .CK(clk), .Q(
        addend1[33]) );
  EDFFX1 addend1_reg_35_ ( .D(multResult1[35]), .E(n237), .CK(clk), .Q(
        addend1[35]) );
  EDFFX1 addend0_reg_31_ ( .D(multResult0[31]), .E(n238), .CK(clk), .Q(
        addend0[31]) );
  EDFFX1 addend0_reg_32_ ( .D(multResult0[32]), .E(n239), .CK(clk), .Q(
        addend0[32]) );
  EDFFX1 addend0_reg_33_ ( .D(multResult0[33]), .E(n239), .CK(clk), .Q(
        addend0[33]) );
  EDFFX1 addend0_reg_35_ ( .D(multResult0[35]), .E(n239), .CK(clk), .Q(
        addend0[35]) );
  EDFFTRX1 convResult0_reg_0_ ( .RN(n240), .D(reluResult0[0]), .E(n218), .CK(
        clk), .Q(resultK0[0]) );
  EDFFTRX1 convResult0_reg_1_ ( .RN(n240), .D(reluResult0[1]), .E(n217), .CK(
        clk), .Q(resultK0[1]) );
  EDFFTRX1 convResult0_reg_2_ ( .RN(n240), .D(reluResult0[2]), .E(n218), .CK(
        clk), .Q(resultK0[2]) );
  EDFFTRX1 convResult0_reg_3_ ( .RN(n240), .D(reluResult0[3]), .E(n217), .CK(
        clk), .Q(resultK0[3]) );
  EDFFTRX1 convResult0_reg_4_ ( .RN(n240), .D(reluResult0[4]), .E(n277), .CK(
        clk), .Q(resultK0[4]) );
  EDFFTRX1 convResult0_reg_5_ ( .RN(n240), .D(reluResult0[5]), .E(n277), .CK(
        clk), .Q(resultK0[5]) );
  EDFFTRX1 convResult0_reg_6_ ( .RN(n240), .D(reluResult0[6]), .E(n277), .CK(
        clk), .Q(resultK0[6]) );
  EDFFTRX1 convResult0_reg_7_ ( .RN(n240), .D(reluResult0[7]), .E(n217), .CK(
        clk), .Q(resultK0[7]) );
  EDFFTRX1 convResult0_reg_8_ ( .RN(n240), .D(reluResult0[8]), .E(n217), .CK(
        clk), .Q(resultK0[8]) );
  EDFFTRX1 convResult0_reg_9_ ( .RN(n240), .D(reluResult0[9]), .E(n217), .CK(
        clk), .Q(resultK0[9]) );
  EDFFTRX1 convResult0_reg_10_ ( .RN(n240), .D(reluResult0[10]), .E(n217), 
        .CK(clk), .Q(resultK0[10]) );
  EDFFTRX1 convResult0_reg_11_ ( .RN(n240), .D(reluResult0[11]), .E(n217), 
        .CK(clk), .Q(resultK0[11]) );
  EDFFTRX1 convResult0_reg_12_ ( .RN(n240), .D(reluResult0[12]), .E(n217), 
        .CK(clk), .Q(resultK0[12]) );
  EDFFTRX1 convResult0_reg_13_ ( .RN(n240), .D(reluResult0[13]), .E(n217), 
        .CK(clk), .Q(resultK0[13]) );
  EDFFTRX1 convResult0_reg_14_ ( .RN(n241), .D(reluResult0[14]), .E(n217), 
        .CK(clk), .Q(resultK0[14]) );
  EDFFTRX1 convResult0_reg_15_ ( .RN(n241), .D(reluResult0[15]), .E(n217), 
        .CK(clk), .Q(resultK0[15]) );
  EDFFTRX1 convResult0_reg_16_ ( .RN(n241), .D(reluResult0[16]), .E(n217), 
        .CK(clk), .Q(resultK0[16]) );
  EDFFTRX1 convResult0_reg_17_ ( .RN(n241), .D(reluResult0[17]), .E(n217), 
        .CK(clk), .Q(resultK0[17]) );
  EDFFTRX1 convResult0_reg_18_ ( .RN(n241), .D(reluResult0[18]), .E(n217), 
        .CK(clk), .Q(resultK0[18]) );
  EDFFTRX1 convResult0_reg_19_ ( .RN(n241), .D(1'b0), .E(n217), .CK(clk), .Q(
        resultK0[19]) );
  EDFFTRX1 convResult1_reg_0_ ( .RN(n239), .D(reluResult1[0]), .E(n217), .CK(
        clk), .Q(resultK1[0]) );
  EDFFTRX1 convResult1_reg_1_ ( .RN(n239), .D(reluResult1[1]), .E(n218), .CK(
        clk), .Q(resultK1[1]) );
  EDFFTRX1 convResult1_reg_2_ ( .RN(n239), .D(reluResult1[2]), .E(n218), .CK(
        clk), .Q(resultK1[2]) );
  EDFFTRX1 convResult1_reg_3_ ( .RN(n239), .D(reluResult1[3]), .E(n218), .CK(
        clk), .Q(resultK1[3]) );
  EDFFTRX1 convResult1_reg_4_ ( .RN(n239), .D(reluResult1[4]), .E(n218), .CK(
        clk), .Q(resultK1[4]) );
  EDFFTRX1 convResult1_reg_5_ ( .RN(n239), .D(reluResult1[5]), .E(n218), .CK(
        clk), .Q(resultK1[5]) );
  EDFFTRX1 convResult1_reg_6_ ( .RN(n240), .D(reluResult1[6]), .E(n218), .CK(
        clk), .Q(resultK1[6]) );
  EDFFTRX1 convResult1_reg_7_ ( .RN(n239), .D(reluResult1[7]), .E(n218), .CK(
        clk), .Q(resultK1[7]) );
  EDFFTRX1 convResult1_reg_8_ ( .RN(n239), .D(reluResult1[8]), .E(n218), .CK(
        clk), .Q(resultK1[8]) );
  EDFFTRX1 convResult1_reg_9_ ( .RN(n240), .D(reluResult1[9]), .E(n218), .CK(
        clk), .Q(resultK1[9]) );
  EDFFTRX1 convResult1_reg_10_ ( .RN(n239), .D(reluResult1[10]), .E(n218), 
        .CK(clk), .Q(resultK1[10]) );
  EDFFTRX1 convResult1_reg_11_ ( .RN(n239), .D(reluResult1[11]), .E(n218), 
        .CK(clk), .Q(resultK1[11]) );
  EDFFTRX1 convResult1_reg_12_ ( .RN(n240), .D(reluResult1[12]), .E(n218), 
        .CK(clk), .Q(resultK1[12]) );
  EDFFTRX1 convResult1_reg_13_ ( .RN(n239), .D(reluResult1[13]), .E(n218), 
        .CK(clk), .Q(resultK1[13]) );
  EDFFTRX1 convResult1_reg_14_ ( .RN(n239), .D(reluResult1[14]), .E(n277), 
        .CK(clk), .Q(resultK1[14]) );
  EDFFTRX1 convResult1_reg_15_ ( .RN(n240), .D(reluResult1[15]), .E(n218), 
        .CK(clk), .Q(resultK1[15]) );
  EDFFTRX1 convResult1_reg_16_ ( .RN(n239), .D(reluResult1[16]), .E(n217), 
        .CK(clk), .Q(resultK1[16]) );
  EDFFTRX1 convResult1_reg_17_ ( .RN(n239), .D(reluResult1[17]), .E(n218), 
        .CK(clk), .Q(resultK1[17]) );
  EDFFTRX1 convResult1_reg_18_ ( .RN(n240), .D(reluResult1[18]), .E(n217), 
        .CK(clk), .Q(resultK1[18]) );
  EDFFTRX1 convResult1_reg_19_ ( .RN(n240), .D(1'b0), .E(n218), .CK(clk), .Q(
        resultK1[19]) );
  EDFFX1 addend1_reg_23_ ( .D(multResult1[23]), .E(n236), .CK(clk), .Q(
        addend1[23]) );
  EDFFX1 addend1_reg_24_ ( .D(multResult1[24]), .E(n236), .CK(clk), .Q(
        addend1[24]) );
  EDFFX1 addend1_reg_25_ ( .D(multResult1[25]), .E(n236), .CK(clk), .Q(
        addend1[25]) );
  EDFFX1 addend1_reg_26_ ( .D(multResult1[26]), .E(n236), .CK(clk), .Q(
        addend1[26]) );
  EDFFX1 addend1_reg_27_ ( .D(multResult1[27]), .E(n236), .CK(clk), .Q(
        addend1[27]) );
  EDFFX1 addend1_reg_28_ ( .D(multResult1[28]), .E(n236), .CK(clk), .Q(
        addend1[28]) );
  EDFFX1 addend1_reg_29_ ( .D(multResult1[29]), .E(n236), .CK(clk), .Q(
        addend1[29]) );
  EDFFX1 addend1_reg_30_ ( .D(multResult1[30]), .E(n236), .CK(clk), .Q(
        addend1[30]) );
  EDFFX1 addend0_reg_23_ ( .D(multResult0[23]), .E(n238), .CK(clk), .Q(
        addend0[23]) );
  EDFFX1 addend0_reg_24_ ( .D(multResult0[24]), .E(n238), .CK(clk), .Q(
        addend0[24]) );
  EDFFX1 addend0_reg_25_ ( .D(multResult0[25]), .E(n238), .CK(clk), .Q(
        addend0[25]) );
  EDFFX1 addend0_reg_26_ ( .D(multResult0[26]), .E(n238), .CK(clk), .Q(
        addend0[26]) );
  EDFFX1 addend0_reg_27_ ( .D(multResult0[27]), .E(n238), .CK(clk), .Q(
        addend0[27]) );
  EDFFX1 addend0_reg_28_ ( .D(multResult0[28]), .E(n238), .CK(clk), .Q(
        addend0[28]) );
  EDFFX1 addend0_reg_29_ ( .D(multResult0[29]), .E(n239), .CK(clk), .Q(
        addend0[29]) );
  EDFFX1 addend0_reg_30_ ( .D(multResult0[30]), .E(n239), .CK(clk), .Q(
        addend0[30]) );
  EDFFX1 cData_reg_18_ ( .D(cDataNext[18]), .E(n234), .CK(clk), .Q(cData[18])
         );
  EDFFX1 cData_reg_17_ ( .D(cDataNext[17]), .E(n234), .CK(clk), .Q(cData[17])
         );
  EDFFX1 cData_reg_16_ ( .D(cDataNext[16]), .E(n234), .CK(clk), .Q(cData[16])
         );
  EDFFX1 cData_reg_15_ ( .D(cDataNext[15]), .E(n234), .CK(clk), .Q(cData[15])
         );
  EDFFX1 addend1_reg_15_ ( .D(multResult1[15]), .E(n236), .CK(clk), .Q(
        addend1[15]) );
  EDFFX1 addend1_reg_17_ ( .D(multResult1[17]), .E(n236), .CK(clk), .Q(
        addend1[17]) );
  EDFFX1 addend1_reg_18_ ( .D(multResult1[18]), .E(n236), .CK(clk), .Q(
        addend1[18]) );
  EDFFX1 addend1_reg_19_ ( .D(multResult1[19]), .E(n236), .CK(clk), .Q(
        addend1[19]) );
  EDFFX1 addend1_reg_20_ ( .D(multResult1[20]), .E(n236), .CK(clk), .Q(
        addend1[20]) );
  EDFFX1 addend1_reg_21_ ( .D(multResult1[21]), .E(n236), .CK(clk), .Q(
        addend1[21]) );
  EDFFX1 addend1_reg_22_ ( .D(multResult1[22]), .E(n236), .CK(clk), .Q(
        addend1[22]) );
  EDFFX1 addend0_reg_15_ ( .D(multResult0[15]), .E(n238), .CK(clk), .Q(
        addend0[15]) );
  EDFFX1 addend0_reg_17_ ( .D(multResult0[17]), .E(n238), .CK(clk), .Q(
        addend0[17]) );
  EDFFX1 addend0_reg_18_ ( .D(multResult0[18]), .E(n238), .CK(clk), .Q(
        addend0[18]) );
  EDFFX1 addend0_reg_19_ ( .D(multResult0[19]), .E(n237), .CK(clk), .Q(
        addend0[19]) );
  EDFFX1 addend0_reg_20_ ( .D(multResult0[20]), .E(n237), .CK(clk), .Q(
        addend0[20]) );
  EDFFX1 addend0_reg_21_ ( .D(multResult0[21]), .E(n237), .CK(clk), .Q(
        addend0[21]) );
  EDFFX1 addend0_reg_22_ ( .D(multResult0[22]), .E(n238), .CK(clk), .Q(
        addend0[22]) );
  EDFFX1 cData_reg_9_ ( .D(cDataNext[9]), .E(n234), .CK(clk), .Q(cData[9]) );
  EDFFX1 cData_reg_8_ ( .D(cDataNext[8]), .E(n234), .CK(clk), .Q(cData[8]) );
  EDFFX1 cData_reg_7_ ( .D(cDataNext[7]), .E(n234), .CK(clk), .Q(cData[7]) );
  EDFFX1 cData_reg_6_ ( .D(cDataNext[6]), .E(n234), .CK(clk), .Q(cData[6]) );
  EDFFX1 cData_reg_5_ ( .D(cDataNext[5]), .E(n234), .CK(clk), .Q(cData[5]) );
  EDFFX1 cData_reg_14_ ( .D(cDataNext[14]), .E(n234), .CK(clk), .Q(cData[14])
         );
  EDFFX1 cData_reg_13_ ( .D(cDataNext[13]), .E(n235), .CK(clk), .Q(cData[13])
         );
  EDFFX1 cData_reg_12_ ( .D(cDataNext[12]), .E(n234), .CK(clk), .Q(cData[12])
         );
  EDFFX1 cData_reg_11_ ( .D(cDataNext[11]), .E(n235), .CK(clk), .Q(cData[11])
         );
  EDFFX1 cData_reg_10_ ( .D(cDataNext[10]), .E(n235), .CK(clk), .Q(cData[10])
         );
  DFFQX2 upperLeft_reg_10_ ( .D(n201), .CK(clk), .Q(upperLeft[10]) );
  EDFFX1 addend1_reg_7_ ( .D(multResult1[7]), .E(n235), .CK(clk), .Q(
        addend1[7]) );
  EDFFX1 addend1_reg_8_ ( .D(multResult1[8]), .E(n235), .CK(clk), .Q(
        addend1[8]) );
  EDFFX1 addend1_reg_9_ ( .D(multResult1[9]), .E(n235), .CK(clk), .Q(
        addend1[9]) );
  EDFFX1 addend1_reg_10_ ( .D(multResult1[10]), .E(n235), .CK(clk), .Q(
        addend1[10]) );
  EDFFX1 addend1_reg_11_ ( .D(multResult1[11]), .E(n235), .CK(clk), .Q(
        addend1[11]) );
  EDFFX1 addend1_reg_12_ ( .D(multResult1[12]), .E(n235), .CK(clk), .Q(
        addend1[12]) );
  EDFFX1 addend1_reg_13_ ( .D(multResult1[13]), .E(n235), .CK(clk), .Q(
        addend1[13]) );
  EDFFX1 addend1_reg_14_ ( .D(multResult1[14]), .E(n236), .CK(clk), .Q(
        addend1[14]) );
  EDFFX1 addend0_reg_7_ ( .D(multResult0[7]), .E(n237), .CK(clk), .Q(
        addend0[7]) );
  EDFFX1 addend0_reg_8_ ( .D(multResult0[8]), .E(n238), .CK(clk), .Q(
        addend0[8]) );
  EDFFX1 addend0_reg_9_ ( .D(multResult0[9]), .E(n238), .CK(clk), .Q(
        addend0[9]) );
  EDFFX1 addend0_reg_10_ ( .D(multResult0[10]), .E(n237), .CK(clk), .Q(
        addend0[10]) );
  EDFFX1 addend0_reg_11_ ( .D(multResult0[11]), .E(n238), .CK(clk), .Q(
        addend0[11]) );
  EDFFX1 addend0_reg_12_ ( .D(multResult0[12]), .E(n238), .CK(clk), .Q(
        addend0[12]) );
  EDFFX1 addend0_reg_13_ ( .D(multResult0[13]), .E(n237), .CK(clk), .Q(
        addend0[13]) );
  EDFFX1 addend0_reg_14_ ( .D(multResult0[14]), .E(n238), .CK(clk), .Q(
        addend0[14]) );
  EDFFX1 cData_reg_19_ ( .D(cDataNext[19]), .E(n234), .CK(clk), .Q(cData[19])
         );
  DFFQX1 sumResult1_reg_7_ ( .D(n192), .CK(clk), .Q(sumResult1_7_) );
  DFFQX1 sumResult1_reg_8_ ( .D(n191), .CK(clk), .Q(sumResult1_8_) );
  DFFQX1 sumResult1_reg_9_ ( .D(n190), .CK(clk), .Q(sumResult1_9_) );
  DFFQX1 sumResult1_reg_10_ ( .D(n189), .CK(clk), .Q(sumResult1_10_) );
  DFFQX1 sumResult1_reg_11_ ( .D(n188), .CK(clk), .Q(sumResult1_11_) );
  DFFQX1 sumResult1_reg_12_ ( .D(n187), .CK(clk), .Q(sumResult1_12_) );
  DFFQX1 sumResult1_reg_13_ ( .D(n186), .CK(clk), .Q(sumResult1_13_) );
  DFFQX1 sumResult1_reg_14_ ( .D(n185), .CK(clk), .Q(sumResult1_14_) );
  DFFQX1 sumResult0_reg_7_ ( .D(n156), .CK(clk), .Q(sumResult0_7_) );
  DFFQX1 sumResult0_reg_8_ ( .D(n155), .CK(clk), .Q(sumResult0_8_) );
  DFFQX1 sumResult0_reg_9_ ( .D(n154), .CK(clk), .Q(sumResult0_9_) );
  DFFQX1 sumResult0_reg_10_ ( .D(n153), .CK(clk), .Q(sumResult0_10_) );
  DFFQX1 sumResult0_reg_11_ ( .D(n152), .CK(clk), .Q(sumResult0_11_) );
  DFFQX1 sumResult0_reg_12_ ( .D(n151), .CK(clk), .Q(sumResult0_12_) );
  DFFQX1 sumResult0_reg_13_ ( .D(n150), .CK(clk), .Q(sumResult0_13_) );
  DFFQX1 sumResult0_reg_14_ ( .D(n149), .CK(clk), .Q(sumResult0_14_) );
  DFFQX1 sumResult1_reg_15_ ( .D(n184), .CK(clk), .Q(sumResult1_15_) );
  DFFQX1 sumResult0_reg_15_ ( .D(n148), .CK(clk), .Q(sumResult0_15_) );
  EDFFX1 cData_reg_4_ ( .D(cDataNext[4]), .E(n234), .CK(clk), .Q(cData[4]) );
  EDFFX1 cData_reg_3_ ( .D(cDataNext[3]), .E(n234), .CK(clk), .Q(cData[3]) );
  EDFFX1 cData_reg_2_ ( .D(cDataNext[2]), .E(n234), .CK(clk), .Q(cData[2]) );
  EDFFX1 cData_reg_1_ ( .D(cDataNext[1]), .E(n236), .CK(clk), .Q(cData[1]) );
  EDFFX1 cData_reg_0_ ( .D(cDataNext[0]), .E(n235), .CK(clk), .Q(cData[0]) );
  EDFFX1 addend1_reg_2_ ( .D(multResult1[2]), .E(n235), .CK(clk), .Q(
        addend1[2]) );
  EDFFX1 addend1_reg_3_ ( .D(multResult1[3]), .E(n235), .CK(clk), .Q(
        addend1[3]) );
  EDFFX1 addend1_reg_4_ ( .D(multResult1[4]), .E(n235), .CK(clk), .Q(
        addend1[4]) );
  EDFFX1 addend1_reg_5_ ( .D(multResult1[5]), .E(n235), .CK(clk), .Q(
        addend1[5]) );
  EDFFX1 addend1_reg_6_ ( .D(multResult1[6]), .E(n235), .CK(clk), .Q(
        addend1[6]) );
  EDFFX1 addend0_reg_2_ ( .D(multResult0[2]), .E(n237), .CK(clk), .Q(
        addend0[2]) );
  EDFFX1 addend0_reg_3_ ( .D(multResult0[3]), .E(n238), .CK(clk), .Q(
        addend0[3]) );
  EDFFX1 addend0_reg_4_ ( .D(multResult0[4]), .E(n237), .CK(clk), .Q(
        addend0[4]) );
  EDFFX1 addend0_reg_5_ ( .D(multResult0[5]), .E(n238), .CK(clk), .Q(
        addend0[5]) );
  EDFFX1 addend0_reg_6_ ( .D(multResult0[6]), .E(n237), .CK(clk), .Q(
        addend0[6]) );
  EDFFX1 addend0_reg_0_ ( .D(multResult0[0]), .E(n237), .CK(clk), .Q(
        addend0[0]) );
  DFFQX1 sumResult1_reg_4_ ( .D(n195), .CK(clk), .Q(sumResult1_4_) );
  DFFQX1 sumResult1_reg_5_ ( .D(n194), .CK(clk), .Q(sumResult1_5_) );
  DFFQX1 sumResult1_reg_6_ ( .D(n193), .CK(clk), .Q(sumResult1_6_) );
  DFFQX1 sumResult0_reg_4_ ( .D(n159), .CK(clk), .Q(sumResult0_4_) );
  DFFQX1 sumResult0_reg_5_ ( .D(n158), .CK(clk), .Q(sumResult0_5_) );
  DFFQX1 sumResult0_reg_6_ ( .D(n157), .CK(clk), .Q(sumResult0_6_) );
  DFFQX2 upperLeft_reg_4_ ( .D(n2070), .CK(clk), .Q(upperLeft[4]) );
  DFFQX2 upperLeft_reg_9_ ( .D(n202), .CK(clk), .Q(upperLeft[9]) );
  DFFQX1 upperLeft_reg_6_ ( .D(n205), .CK(clk), .Q(upperLeft[6]) );
  DFFTRX1 offset_reg_3_ ( .D(n232), .RN(n39), .CK(clk), .Q(offset[3]), .QN(n23) );
  DFFX1 upperLeft_reg_1_ ( .D(n210), .CK(clk), .Q(upperLeft[1]), .QN(n43) );
  DFFQX2 upperLeft_reg_7_ ( .D(n204), .CK(clk), .Q(upperLeft[7]) );
  DFFQX2 upperLeft_reg_8_ ( .D(n203), .CK(clk), .Q(upperLeft[8]) );
  DFFTRX2 countMULT_reg_4_ ( .D(N209), .RN(n212), .CK(clk), .Q(countMULT[4])
         );
  DFFQX1 sumResult1_reg_26_ ( .D(n173), .CK(clk), .Q(sumResult1_26_) );
  DFFQX1 sumResult1_reg_27_ ( .D(n172), .CK(clk), .Q(sumResult1_27_) );
  DFFQX1 sumResult1_reg_28_ ( .D(n171), .CK(clk), .Q(sumResult1_28_) );
  DFFQX1 sumResult1_reg_29_ ( .D(n170), .CK(clk), .Q(sumResult1_29_) );
  DFFQX1 sumResult0_reg_26_ ( .D(n137), .CK(clk), .Q(sumResult0_26_) );
  DFFQX1 sumResult0_reg_27_ ( .D(n136), .CK(clk), .Q(sumResult0_27_) );
  DFFQX1 sumResult0_reg_28_ ( .D(n135), .CK(clk), .Q(sumResult0_28_) );
  DFFQX1 sumResult0_reg_29_ ( .D(n134), .CK(clk), .Q(sumResult0_29_) );
  DFFQX1 sumResult1_reg_19_ ( .D(n180), .CK(clk), .Q(sumResult1_19_) );
  DFFQX1 sumResult1_reg_20_ ( .D(n179), .CK(clk), .Q(sumResult1_20_) );
  DFFQX1 sumResult1_reg_21_ ( .D(n178), .CK(clk), .Q(sumResult1_21_) );
  DFFQX1 sumResult1_reg_22_ ( .D(n177), .CK(clk), .Q(sumResult1_22_) );
  DFFQX1 sumResult1_reg_23_ ( .D(n176), .CK(clk), .Q(sumResult1_23_) );
  DFFQX1 sumResult1_reg_24_ ( .D(n175), .CK(clk), .Q(sumResult1_24_) );
  DFFQX1 sumResult1_reg_25_ ( .D(n174), .CK(clk), .Q(sumResult1_25_) );
  DFFQX1 sumResult0_reg_18_ ( .D(n145), .CK(clk), .Q(sumResult0_18_) );
  DFFQX1 sumResult0_reg_19_ ( .D(n144), .CK(clk), .Q(sumResult0_19_) );
  DFFQX1 sumResult0_reg_20_ ( .D(n143), .CK(clk), .Q(sumResult0_20_) );
  DFFQX1 sumResult0_reg_21_ ( .D(n142), .CK(clk), .Q(sumResult0_21_) );
  DFFQX1 sumResult0_reg_22_ ( .D(n141), .CK(clk), .Q(sumResult0_22_) );
  DFFQX1 sumResult0_reg_23_ ( .D(n140), .CK(clk), .Q(sumResult0_23_) );
  DFFQX1 sumResult0_reg_24_ ( .D(n139), .CK(clk), .Q(sumResult0_24_) );
  DFFQX1 sumResult0_reg_25_ ( .D(n138), .CK(clk), .Q(sumResult0_25_) );
  DFFQX1 upperLeft_reg_5_ ( .D(n2060), .CK(clk), .Q(upperLeft[5]) );
  DFFQX1 sumResult1_reg_17_ ( .D(n182), .CK(clk), .Q(sumResult1_17_) );
  DFFQX1 sumResult1_reg_18_ ( .D(n181), .CK(clk), .Q(sumResult1_18_) );
  DFFQX1 sumResult0_reg_17_ ( .D(n146), .CK(clk), .Q(sumResult0_17_) );
  DFFX1 upperLeft_reg_2_ ( .D(n2090), .CK(clk), .Q(upperLeft[2]), .QN(n42) );
  DFFQX2 upperLeft_reg_0_ ( .D(n211), .CK(clk), .Q(upperLeft[0]) );
  EDFFX1 addend1_reg_16_ ( .D(multResult1[16]), .E(n236), .CK(clk), .Q(
        addend1[16]) );
  EDFFX1 addend0_reg_16_ ( .D(multResult0[16]), .E(n237), .CK(clk), .Q(
        addend0[16]) );
  DFFQX1 sumResult1_reg_16_ ( .D(n183), .CK(clk), .Q(sumResult1_16_) );
  DFFQX1 sumResult0_reg_16_ ( .D(n147), .CK(clk), .Q(sumResult0_16_) );
  DFFQXL sumResult1_reg_30_ ( .D(n169), .CK(clk), .Q(sumResult1_30_) );
  DFFQXL sumResult0_reg_30_ ( .D(n133), .CK(clk), .Q(sumResult0_30_) );
  DFFQX1 sumResult0_reg_2_ ( .D(n161), .CK(clk), .Q(sumResult0_2_) );
  DFFQX1 sumResult1_reg_2_ ( .D(n197), .CK(clk), .Q(sumResult1_2_) );
  EDFFXL addend1_reg_34_ ( .D(multResult1[34]), .E(n237), .CK(clk), .Q(
        addend1[34]) );
  EDFFXL addend0_reg_34_ ( .D(multResult0[34]), .E(n237), .CK(clk), .Q(
        addend0[34]) );
  DFFQXL sumResult1_reg_31_ ( .D(n168), .CK(clk), .Q(sumResult1_31_) );
  DFFQXL sumResult0_reg_31_ ( .D(n132), .CK(clk), .Q(sumResult0_31_) );
  DFFQX1 sumResult1_reg_35_ ( .D(n164), .CK(clk), .Q(sumResult1_35_) );
  DFFQX1 sumResult0_reg_35_ ( .D(n128), .CK(clk), .Q(sumResult0_35_) );
  DFFQX1 sumResult1_reg_32_ ( .D(n167), .CK(clk), .Q(sumResult1_32_) );
  DFFQX1 sumResult0_reg_32_ ( .D(n131), .CK(clk), .Q(sumResult0_32_) );
  DFFQX1 sumResult1_reg_33_ ( .D(n166), .CK(clk), .Q(sumResult1_33_) );
  DFFQX1 sumResult1_reg_34_ ( .D(n165), .CK(clk), .Q(sumResult1_34_) );
  DFFQX1 sumResult0_reg_33_ ( .D(n130), .CK(clk), .Q(sumResult0_33_) );
  DFFQX1 sumResult0_reg_34_ ( .D(n129), .CK(clk), .Q(sumResult0_34_) );
  DFFQX1 sumResult1_reg_3_ ( .D(n196), .CK(clk), .Q(sumResult1_3_) );
  DFFQX1 sumResult0_reg_3_ ( .D(n160), .CK(clk), .Q(sumResult0_3_) );
  DFFTRX1 countMULT_reg_2_ ( .D(N207), .RN(n212), .CK(clk), .Q(countMULT[2]), 
        .QN(n30) );
  DFFQX2 sumResult1_reg_0_ ( .D(n199), .CK(clk), .Q(sumResult1_0_) );
  DFFQX2 sumResult0_reg_0_ ( .D(n163), .CK(clk), .Q(sumResult0_0_) );
  DFFTRX2 countMULT_reg_1_ ( .D(N206), .RN(n212), .CK(clk), .Q(countMULT[1])
         );
  EDFFX2 addend1_reg_0_ ( .D(multResult1[0]), .E(n235), .CK(clk), .Q(
        addend1[0]) );
  DFFQX1 upperLeft_reg_3_ ( .D(n2080), .CK(clk), .Q(upperLeft[3]) );
  DFFQX1 countMULT_reg_3_ ( .D(N412), .CK(clk), .Q(countMULT[3]) );
  DFFTRX2 offset_reg_2_ ( .D(n233), .RN(n870), .CK(clk), .Q(offset[2]), .QN(
        n24) );
  DFFQX1 upperLeft_reg_11_ ( .D(n200), .CK(clk), .Q(upperLeft[11]) );
  DFFTRX1 offset_reg_1_ ( .D(n232), .RN(n860), .CK(clk), .Q(offset[1]), .QN(
        n25) );
  DFFQX2 offset_reg_0_ ( .D(N405), .CK(clk), .Q(offset[0]) );
  DFFQX2 sumResult1_reg_1_ ( .D(n198), .CK(clk), .Q(sumResult1_1_) );
  EDFFX1 addend1_reg_1_ ( .D(multResult1[1]), .E(n235), .CK(clk), .Q(
        addend1[1]) );
  EDFFX1 addend0_reg_1_ ( .D(multResult0[1]), .E(n237), .CK(clk), .Q(
        addend0[1]) );
  DFFTRX2 countMULT_reg_0_ ( .D(n31), .RN(n212), .CK(clk), .Q(countMULT[0]), 
        .QN(n31) );
  DFFQX2 sumResult0_reg_1_ ( .D(n162), .CK(clk), .Q(sumResult0_1_) );
  NAND3X4 U3 ( .A(n275), .B(n118), .C(n276), .Y(n850) );
  NAND3XL U4 ( .A(n73), .B(n2710), .C(n79), .Y(k1[13]) );
  CLKINVX4 U5 ( .A(k1[1]), .Y(n2710) );
  NAND2X6 U6 ( .A(countMULT[1]), .B(countMULT[0]), .Y(n90) );
  NOR2X2 U7 ( .A(n25), .B(n126), .Y(n125) );
  INVX3 U8 ( .A(n39), .Y(n89) );
  NAND2X4 U9 ( .A(offset[2]), .B(n27), .Y(n28) );
  CLKINVX1 U12 ( .A(k0[1]), .Y(n2700) );
  AND2X2 U13 ( .A(n840), .B(n830), .Y(n74) );
  NAND3X2 U14 ( .A(n860), .B(n870), .C(n88), .Y(n79) );
  AND2X2 U15 ( .A(n79), .B(n81), .Y(n78) );
  NAND3X2 U16 ( .A(n275), .B(n870), .C(n88), .Y(n76) );
  AND2X2 U17 ( .A(n73), .B(n81), .Y(n38) );
  CLKBUFX3 U18 ( .A(n75), .Y(n213) );
  INVX3 U19 ( .A(n860), .Y(n275) );
  INVX3 U20 ( .A(n870), .Y(n276) );
  NAND4BX2 U21 ( .AN(countMULT[4]), .B(n90), .C(n30), .D(n36), .Y(enMULT) );
  CLKINVX1 U22 ( .A(offset[0]), .Y(n288) );
  CLKINVX1 U23 ( .A(add_325_2_carry[3]), .Y(n21) );
  CLKINVX1 U24 ( .A(add_325_2_carry[4]), .Y(n41) );
  CLKINVX1 U25 ( .A(add_325_carry[3]), .Y(n33) );
  CLKAND2X6 U26 ( .A(n122), .B(n123), .Y(n39) );
  AND2X2 U27 ( .A(n213), .B(n2710), .Y(n1) );
  NAND4XL U28 ( .A(n76), .B(n80), .C(n81), .D(n2720), .Y(k1[6]) );
  AND2X2 U29 ( .A(n80), .B(n213), .Y(n2) );
  CLKINVX1 U30 ( .A(countMULT[3]), .Y(n36) );
  NAND2BX1 U31 ( .AN(k0[15]), .B(n79), .Y(k0[4]) );
  NAND2BX1 U32 ( .AN(k1[9]), .B(n820), .Y(k0[15]) );
  NAND2X1 U33 ( .A(n2), .B(n74), .Y(k0[1]) );
  NAND2X1 U34 ( .A(n74), .B(n77), .Y(k0[3]) );
  XNOR2X1 U35 ( .A(R[0]), .B(upperLeft[0]), .Y(n5) );
  XNOR2X1 U36 ( .A(Q[0]), .B(n216), .Y(n6) );
  INVXL U37 ( .A(n300), .Y(n7) );
  INVX12 U38 ( .A(n7), .Y(addrRd[1]) );
  ADDFXL U39 ( .A(upperLeft[1]), .B(R[1]), .CI(add_325_2_carry[1]), .CO(
        add_325_2_carry[2]), .S(n300) );
  INVXL U40 ( .A(n295), .Y(n9) );
  INVX12 U41 ( .A(n9), .Y(addrRd[7]) );
  ADDFXL U42 ( .A(upperLeft[7]), .B(Q[1]), .CI(add_325_carry[1]), .CO(
        add_325_carry[2]), .S(n295) );
  INVX12 U43 ( .A(n6), .Y(addrRd[6]) );
  INVX12 U44 ( .A(n5), .Y(addrRd[0]) );
  NAND2X1 U45 ( .A(doneMULT), .B(n111), .Y(n123) );
  CLKAND2X8 U46 ( .A(n289), .B(n290), .Y(doneMULT) );
  INVX3 U47 ( .A(upperLeft[0]), .Y(N58) );
  XNOR2X1 U48 ( .A(upperLeft[5]), .B(add_325_2_carry[5]), .Y(n296) );
  INVX12 U49 ( .A(n296), .Y(addrRd[5]) );
  XNOR2X1 U50 ( .A(upperLeft[11]), .B(add_325_carry[5]), .Y(n291) );
  INVX12 U51 ( .A(n291), .Y(addrRd[11]) );
  XNOR2X1 U52 ( .A(upperLeft[10]), .B(add_325_carry[4]), .Y(n292) );
  INVX12 U53 ( .A(n292), .Y(addrRd[10]) );
  AND2X2 U54 ( .A(n44), .B(n45), .Y(n297) );
  INVX12 U55 ( .A(n297), .Y(addrRd[4]) );
  AND2X2 U56 ( .A(n34), .B(n35), .Y(n293) );
  INVX12 U57 ( .A(n293), .Y(addrRd[9]) );
  AND2X2 U58 ( .A(n22), .B(n26), .Y(n298) );
  INVX12 U59 ( .A(n298), .Y(addrRd[3]) );
  OAI21X1 U60 ( .A0(upperLeft[0]), .A1(N82), .B0(n260), .Y(upperLeft_org[6])
         );
  XNOR2X1 U61 ( .A(upperLeft[2]), .B(add_325_2_carry[2]), .Y(n299) );
  INVX12 U62 ( .A(n299), .Y(addrRd[2]) );
  XNOR2X1 U63 ( .A(upperLeft[8]), .B(add_325_carry[2]), .Y(n294) );
  INVX12 U64 ( .A(n294), .Y(addrRd[8]) );
  NAND2X1 U65 ( .A(upperLeft[3]), .B(n21), .Y(n22) );
  NAND2XL U66 ( .A(n250), .B(add_325_2_carry[3]), .Y(n26) );
  AND2XL U67 ( .A(upperLeft[2]), .B(add_325_2_carry[2]), .Y(add_325_2_carry[3]) );
  NAND2X2 U68 ( .A(n24), .B(n125), .Y(n29) );
  NAND2X8 U69 ( .A(n28), .B(n29), .Y(n870) );
  CLKINVX3 U70 ( .A(n125), .Y(n27) );
  OR3XL U71 ( .A(n275), .B(n39), .C(n276), .Y(n32) );
  NAND2XL U72 ( .A(n32), .B(n81), .Y(Q[1]) );
  NAND2X4 U73 ( .A(n39), .B(n274), .Y(n81) );
  NAND2X1 U74 ( .A(upperLeft[9]), .B(n33), .Y(n34) );
  NAND2XL U75 ( .A(n255), .B(add_325_carry[3]), .Y(n35) );
  AND2XL U76 ( .A(upperLeft[8]), .B(add_325_carry[2]), .Y(add_325_carry[3]) );
  NAND3X2 U77 ( .A(n860), .B(n870), .C(n117), .Y(n80) );
  CLKAND2X12 U78 ( .A(n118), .B(n89), .Y(n88) );
  OR2X2 U79 ( .A(n850), .B(n39), .Y(n77) );
  INVX1 U80 ( .A(n850), .Y(n274) );
  CLKINVX1 U81 ( .A(n36), .Y(n37) );
  NAND3X2 U82 ( .A(n275), .B(n870), .C(n117), .Y(n73) );
  NAND2X1 U83 ( .A(upperLeft[4]), .B(n41), .Y(n44) );
  NAND2XL U84 ( .A(n40), .B(add_325_2_carry[4]), .Y(n45) );
  CLKINVX1 U85 ( .A(upperLeft[4]), .Y(n40) );
  AND2XL U86 ( .A(upperLeft[3]), .B(add_325_2_carry[3]), .Y(add_325_2_carry[4]) );
  CLKINVX1 U87 ( .A(k1[10]), .Y(n273) );
  NAND2X1 U88 ( .A(n1), .B(n273), .Y(k0[0]) );
  NAND2X1 U89 ( .A(n820), .B(n38), .Y(R[1]) );
  NAND2X1 U90 ( .A(n820), .B(n80), .Y(k1[1]) );
  NAND3X2 U91 ( .A(n80), .B(n840), .C(n76), .Y(R[0]) );
  NAND3X2 U92 ( .A(n276), .B(n860), .C(n88), .Y(n820) );
  NAND2XL U93 ( .A(n74), .B(n2710), .Y(k0[7]) );
  INVX1 U94 ( .A(n120), .Y(n228) );
  NOR2X6 U95 ( .A(n118), .B(n39), .Y(n117) );
  AND2X2 U96 ( .A(Q[0]), .B(n216), .Y(add_325_carry[1]) );
  NAND2X8 U97 ( .A(offset[0]), .B(doneMULT), .Y(n126) );
  NAND2BXL U98 ( .AN(k0[0]), .B(n74), .Y(k1[11]) );
  CLKBUFX3 U99 ( .A(n230), .Y(n243) );
  CLKBUFX3 U100 ( .A(n231), .Y(n244) );
  NAND3XL U101 ( .A(n2720), .B(n38), .C(n80), .Y(k1[9]) );
  NAND3XL U102 ( .A(n213), .B(n2710), .C(n76), .Y(k1[7]) );
  NAND2BXL U103 ( .AN(k1[0]), .B(n820), .Y(k0[2]) );
  NAND2XL U104 ( .A(n39), .B(n850), .Y(n830) );
  NAND3XL U105 ( .A(n76), .B(n77), .C(n78), .Y(k1[3]) );
  NAND3XL U106 ( .A(n120), .B(n2710), .C(n73), .Y(k1[8]) );
  NAND2BXL U107 ( .AN(k1[3]), .B(n73), .Y(k1[5]) );
  NAND2BXL U108 ( .AN(k1[13]), .B(n213), .Y(k0[6]) );
  AND3X1 U109 ( .A(n213), .B(n81), .C(n74), .Y(n120) );
  NAND4XL U110 ( .A(n79), .B(n213), .C(n80), .D(n273), .Y(k0[10]) );
  NAND3XL U111 ( .A(n273), .B(n120), .C(n79), .Y(k0[11]) );
  NAND3XL U112 ( .A(n77), .B(n2700), .C(n79), .Y(k0[13]) );
  NAND3XL U113 ( .A(n77), .B(n120), .C(n76), .Y(k1[14]) );
  NAND2XL U114 ( .A(n213), .B(n73), .Y(k0[8]) );
  NAND2XL U115 ( .A(n78), .B(n213), .Y(k0[14]) );
  CLKBUFX3 U116 ( .A(k0[19]), .Y(n229) );
  NAND3XL U117 ( .A(n80), .B(n273), .C(n78), .Y(k0[19]) );
  NOR2XL U118 ( .A(n245), .B(n118), .Y(N405) );
  ADDHXL U119 ( .A(upperLeft_org[1]), .B(upperLeft_org[0]), .CO(
        add_324_2_carry[2]), .S(addrWr[1]) );
  INVXL U120 ( .A(n111), .Y(n287) );
  CLKINVX1 U121 ( .A(n490), .Y(n277) );
  AOI22XL U122 ( .A0(n52), .A1(n36), .B0(n37), .B1(n530), .Y(n500) );
  AO22XL U123 ( .A0(sumResult0_0_), .A1(n225), .B0(addResult0[0]), .B1(n222), 
        .Y(n163) );
  AO22XL U124 ( .A0(sumResult1_0_), .A1(n227), .B0(addResult1[0]), .B1(n222), 
        .Y(n199) );
  AND2XL U125 ( .A(upperLeft[9]), .B(add_325_carry[3]), .Y(add_325_carry[4])
         );
  NAND4XL U126 ( .A(countMULT[4]), .B(n37), .C(n510), .D(n31), .Y(n490) );
  NAND4XL U127 ( .A(countMULT[4]), .B(n37), .C(n510), .D(countMULT[0]), .Y(
        n121) );
  NOR2XL U128 ( .A(countMULT[2]), .B(countMULT[1]), .Y(n510) );
  ADDHXL U129 ( .A(upperLeft[7]), .B(n216), .CO(r365_carry[2]), .S(N83) );
  ADDHXL U130 ( .A(upperLeft[8]), .B(r365_carry[2]), .CO(r365_carry[3]), .S(
        N84) );
  ADDHXL U131 ( .A(upperLeft[9]), .B(r365_carry[3]), .CO(r365_carry[4]), .S(
        N85) );
  ADDHXL U132 ( .A(upperLeft[10]), .B(r365_carry[4]), .CO(r365_carry[5]), .S(
        N86) );
  AOI33XL U133 ( .A0(n288), .A1(n24), .A2(offset[1]), .B0(offset[0]), .B1(n25), 
        .B2(offset[2]), .Y(n110) );
  AND4XL U134 ( .A(countMULT[1]), .B(countMULT[4]), .C(n30), .D(n36), .Y(n64)
         );
  OAI31XL U135 ( .A0(n24), .A1(offset[3]), .A2(n25), .B0(n287), .Y(n97) );
  NOR3BXL U136 ( .AN(n113), .B(offset[2]), .C(offset[3]), .Y(n101) );
  NAND3X2 U137 ( .A(n31), .B(N58), .C(n64), .Y(n570) );
  NAND2XL U138 ( .A(n64), .B(countMULT[0]), .Y(n94) );
  NAND2XL U139 ( .A(offset[1]), .B(offset[0]), .Y(n113) );
  AO21XL U140 ( .A0(countMULT[1]), .A1(countMULT[2]), .B0(countMULT[4]), .Y(
        n52) );
  AND2XL U141 ( .A(n114), .B(n23), .Y(n102) );
  OAI211XL U142 ( .A0(offset[2]), .A1(n113), .B0(n115), .C0(n116), .Y(n114) );
  NAND3XL U143 ( .A(offset[1]), .B(n288), .C(offset[2]), .Y(n115) );
  XOR2XL U144 ( .A(add_541_carry[4]), .B(countMULT[4]), .Y(N209) );
  INVX3 U145 ( .A(n243), .Y(n233) );
  INVX3 U146 ( .A(n243), .Y(n232) );
  INVX3 U147 ( .A(n244), .Y(n238) );
  INVX3 U148 ( .A(n244), .Y(n237) );
  INVX3 U149 ( .A(n243), .Y(n235) );
  INVX3 U150 ( .A(n244), .Y(n236) );
  INVX3 U151 ( .A(n243), .Y(n234) );
  INVX3 U152 ( .A(n245), .Y(n240) );
  INVX3 U153 ( .A(n245), .Y(n239) );
  CLKINVX1 U154 ( .A(n244), .Y(n241) );
  NAND3BX1 U155 ( .AN(R[0]), .B(n830), .C(n78), .Y(k1[0]) );
  NAND2BX1 U156 ( .AN(k1[7]), .B(n74), .Y(k1[4]) );
  CLKINVX1 U157 ( .A(k0[3]), .Y(n2720) );
  CLKBUFX3 U158 ( .A(n231), .Y(n245) );
  CLKBUFX3 U159 ( .A(n219), .Y(n224) );
  CLKBUFX3 U160 ( .A(n219), .Y(n223) );
  CLKBUFX3 U161 ( .A(n219), .Y(n222) );
  CLKBUFX3 U162 ( .A(n219), .Y(n221) );
  CLKBUFX3 U163 ( .A(n219), .Y(n220) );
  CLKBUFX3 U164 ( .A(n230), .Y(n242) );
  NAND2X1 U165 ( .A(n73), .B(n81), .Y(k0[5]) );
  NAND3X1 U166 ( .A(n276), .B(n275), .C(n117), .Y(n840) );
  NAND2X1 U167 ( .A(n77), .B(n73), .Y(k1[10]) );
  NAND3X1 U168 ( .A(n76), .B(n2700), .C(n79), .Y(k1[2]) );
  CLKBUFX3 U169 ( .A(reset), .Y(n231) );
  CLKBUFX3 U170 ( .A(n480), .Y(n219) );
  CLKBUFX3 U171 ( .A(reset), .Y(n230) );
  NAND2X1 U172 ( .A(n820), .B(n76), .Y(k0[12]) );
  ADDHXL U173 ( .A(upperLeft_org[3]), .B(add_324_2_carry[3]), .CO(
        add_324_2_carry[4]), .S(addrWr[3]) );
  ADDHXL U174 ( .A(upperLeft_org[2]), .B(add_324_2_carry[2]), .CO(
        add_324_2_carry[3]), .S(addrWr[2]) );
  ADDHXL U175 ( .A(upperLeft_org[4]), .B(add_324_2_carry[4]), .CO(
        add_324_2_carry[5]), .S(addrWr[4]) );
  CLKBUFX3 U176 ( .A(n277), .Y(n217) );
  CLKBUFX3 U177 ( .A(n277), .Y(n218) );
  NAND2X2 U178 ( .A(n127), .B(n123), .Y(n118) );
  XNOR2X1 U179 ( .A(n288), .B(doneMULT), .Y(n127) );
  NAND3X1 U180 ( .A(n276), .B(n860), .C(n117), .Y(n75) );
  OAI31XL U181 ( .A0(n860), .A1(n39), .A2(n276), .B0(n213), .Y(Q[0]) );
  NOR3BXL U182 ( .AN(n490), .B(n245), .C(n470), .Y(n480) );
  OAI211X1 U183 ( .A0(n66), .A1(N58), .B0(n232), .C0(n72), .Y(n211) );
  NAND2X1 U184 ( .A(N267), .B(n66), .Y(n72) );
  CLKBUFX3 U185 ( .A(n470), .Y(n226) );
  CLKBUFX3 U186 ( .A(n470), .Y(n225) );
  AND2X2 U187 ( .A(n121), .B(n232), .Y(n212) );
  CLKBUFX3 U188 ( .A(n470), .Y(n227) );
  OA21XL U189 ( .A0(done), .A1(N208), .B0(n232), .Y(N412) );
  CLKINVX1 U190 ( .A(n258), .Y(n2690) );
  OAI211X1 U191 ( .A0(n105), .A1(n106), .B0(n107), .C0(n108), .Y(n92) );
  NAND4X1 U192 ( .A(upperLeft_org[2]), .B(upperLeft_org[1]), .C(
        upperLeft_org[0]), .D(n102), .Y(n105) );
  NAND3X1 U193 ( .A(upperLeft_org[4]), .B(upperLeft_org[3]), .C(
        upperLeft_org[5]), .Y(n106) );
  NAND4X1 U194 ( .A(upperLeft_org[4]), .B(upperLeft_org[3]), .C(
        upperLeft_org[5]), .D(n109), .Y(n108) );
  NOR2X1 U195 ( .A(N58), .B(n65), .Y(N754) );
  NAND4X1 U196 ( .A(upperLeft_org[8]), .B(upperLeft_org[7]), .C(
        upperLeft_org[9]), .D(n112), .Y(n107) );
  AND4XL U197 ( .A(n101), .B(upperLeft_org[10]), .C(upperLeft_org[11]), .D(
        upperLeft_org[6]), .Y(n112) );
  ADDHX1 U198 ( .A(upperLeft_org[7]), .B(upperLeft_org[6]), .CO(
        add_324_carry[2]), .S(addrWr[7]) );
  INVX3 U199 ( .A(n214), .Y(n215) );
  CLKINVX1 U200 ( .A(n91), .Y(n214) );
  OAI33X1 U201 ( .A0(n92), .A1(n93), .A2(n94), .B0(n95), .B1(n96), .B2(n278), 
        .Y(n91) );
  CLKINVX1 U202 ( .A(n94), .Y(n278) );
  ADDHX1 U203 ( .A(upperLeft_org[8]), .B(add_324_carry[2]), .CO(
        add_324_carry[3]), .S(addrWr[8]) );
  ADDHX1 U204 ( .A(upperLeft_org[9]), .B(add_324_carry[3]), .CO(
        add_324_carry[4]), .S(addrWr[9]) );
  ADDHX1 U205 ( .A(upperLeft_org[10]), .B(add_324_carry[4]), .CO(
        add_324_carry[5]), .S(addrWr[10]) );
  NOR4BBX1 U206 ( .AN(upperLeft_org[1]), .BN(upperLeft_org[2]), .C(
        upperLeft_org[0]), .D(n99), .Y(n109) );
  AND4X1 U207 ( .A(n280), .B(upperLeft_org[9]), .C(upperLeft_org[7]), .D(
        upperLeft_org[8]), .Y(n93) );
  CLKINVX1 U208 ( .A(n104), .Y(n280) );
  NAND4BXL U209 ( .AN(upperLeft_org[6]), .B(upperLeft_org[11]), .C(
        upperLeft_org[10]), .D(n97), .Y(n104) );
  CLKINVX1 U210 ( .A(n121), .Y(done) );
  NOR2BX2 U211 ( .AN(n630), .B(n570), .Y(n560) );
  CLKINVX1 U212 ( .A(n256), .Y(n257) );
  NOR3BXL U213 ( .AN(n97), .B(n98), .C(n216), .Y(n96) );
  CLKINVX1 U214 ( .A(n98), .Y(n286) );
  NOR2BX1 U215 ( .AN(n65), .B(n216), .Y(n630) );
  OR2X1 U216 ( .A(n630), .B(n570), .Y(n540) );
  AND4X1 U217 ( .A(n286), .B(done), .C(N754), .D(n216), .Y(term) );
  CLKXOR2X2 U218 ( .A(n126), .B(n25), .Y(n860) );
  NOR2X1 U219 ( .A(n23), .B(n116), .Y(n111) );
  XNOR2X1 U220 ( .A(offset[3]), .B(n124), .Y(n122) );
  NAND2X1 U221 ( .A(offset[2]), .B(n125), .Y(n124) );
  NAND3X1 U222 ( .A(n25), .B(n24), .C(n288), .Y(n116) );
  OA21X2 U223 ( .A0(n500), .A1(n31), .B0(n46), .Y(n470) );
  NOR2BX1 U224 ( .AN(n490), .B(n245), .Y(n46) );
  OAI21XL U225 ( .A0(countMULT[2]), .A1(countMULT[1]), .B0(countMULT[4]), .Y(
        n530) );
  CLKBUFX3 U226 ( .A(upperLeft[6]), .Y(n216) );
  AO22X1 U227 ( .A0(sumResult0_34_), .A1(n227), .B0(addResult0[34]), .B1(n224), 
        .Y(n129) );
  AO22X1 U228 ( .A0(sumResult0_33_), .A1(n227), .B0(addResult0[33]), .B1(n224), 
        .Y(n130) );
  AO22X1 U229 ( .A0(sumResult0_32_), .A1(n227), .B0(addResult0[32]), .B1(n224), 
        .Y(n131) );
  AO22X1 U230 ( .A0(sumResult0_31_), .A1(n227), .B0(addResult0[31]), .B1(n224), 
        .Y(n132) );
  AO22X1 U231 ( .A0(sumResult0_30_), .A1(n227), .B0(addResult0[30]), .B1(n224), 
        .Y(n133) );
  AO22X1 U232 ( .A0(sumResult0_29_), .A1(n227), .B0(addResult0[29]), .B1(n224), 
        .Y(n134) );
  AO22X1 U233 ( .A0(sumResult0_28_), .A1(n227), .B0(addResult0[28]), .B1(n224), 
        .Y(n135) );
  AO22X1 U234 ( .A0(sumResult0_27_), .A1(n227), .B0(addResult0[27]), .B1(n224), 
        .Y(n136) );
  AO22X1 U235 ( .A0(sumResult0_26_), .A1(n227), .B0(addResult0[26]), .B1(n224), 
        .Y(n137) );
  AO22X1 U236 ( .A0(sumResult0_25_), .A1(n227), .B0(addResult0[25]), .B1(n224), 
        .Y(n138) );
  AO22X1 U237 ( .A0(sumResult0_24_), .A1(n227), .B0(addResult0[24]), .B1(n224), 
        .Y(n139) );
  AO22X1 U238 ( .A0(sumResult0_23_), .A1(n227), .B0(addResult0[23]), .B1(n223), 
        .Y(n140) );
  AO22X1 U239 ( .A0(sumResult0_22_), .A1(n227), .B0(addResult0[22]), .B1(n223), 
        .Y(n141) );
  AO22X1 U240 ( .A0(sumResult0_21_), .A1(n226), .B0(addResult0[21]), .B1(n223), 
        .Y(n142) );
  AO22X1 U241 ( .A0(sumResult0_20_), .A1(n226), .B0(addResult0[20]), .B1(n223), 
        .Y(n143) );
  AO22X1 U242 ( .A0(sumResult0_19_), .A1(n226), .B0(addResult0[19]), .B1(n223), 
        .Y(n144) );
  AO22X1 U243 ( .A0(sumResult0_18_), .A1(n226), .B0(addResult0[18]), .B1(n223), 
        .Y(n145) );
  AO22X1 U244 ( .A0(sumResult0_17_), .A1(n226), .B0(addResult0[17]), .B1(n223), 
        .Y(n146) );
  AO22X1 U245 ( .A0(sumResult0_16_), .A1(n226), .B0(addResult0[16]), .B1(n223), 
        .Y(n147) );
  AO22X1 U246 ( .A0(sumResult1_34_), .A1(n225), .B0(addResult1[34]), .B1(n221), 
        .Y(n165) );
  AO22X1 U247 ( .A0(sumResult1_33_), .A1(n225), .B0(addResult1[33]), .B1(n221), 
        .Y(n166) );
  AO22X1 U248 ( .A0(sumResult1_32_), .A1(n225), .B0(addResult1[32]), .B1(n221), 
        .Y(n167) );
  AO22X1 U249 ( .A0(sumResult1_31_), .A1(n225), .B0(addResult1[31]), .B1(n221), 
        .Y(n168) );
  AO22X1 U250 ( .A0(sumResult1_30_), .A1(n225), .B0(addResult1[30]), .B1(n221), 
        .Y(n169) );
  AO22X1 U251 ( .A0(sumResult1_29_), .A1(n225), .B0(addResult1[29]), .B1(n221), 
        .Y(n170) );
  AO22X1 U252 ( .A0(sumResult1_28_), .A1(n225), .B0(addResult1[28]), .B1(n221), 
        .Y(n171) );
  AO22X1 U253 ( .A0(sumResult1_27_), .A1(n225), .B0(addResult1[27]), .B1(n221), 
        .Y(n172) );
  AO22X1 U254 ( .A0(sumResult1_26_), .A1(n225), .B0(addResult1[26]), .B1(n221), 
        .Y(n173) );
  AO22X1 U255 ( .A0(sumResult1_25_), .A1(n225), .B0(addResult1[25]), .B1(n221), 
        .Y(n174) );
  AO22X1 U256 ( .A0(sumResult1_24_), .A1(n225), .B0(addResult1[24]), .B1(n221), 
        .Y(n175) );
  AO22X1 U257 ( .A0(sumResult1_23_), .A1(n225), .B0(addResult1[23]), .B1(n220), 
        .Y(n176) );
  AO22X1 U258 ( .A0(sumResult1_22_), .A1(n225), .B0(addResult1[22]), .B1(n220), 
        .Y(n177) );
  AO22X1 U259 ( .A0(sumResult1_21_), .A1(n225), .B0(addResult1[21]), .B1(n220), 
        .Y(n178) );
  AO22X1 U260 ( .A0(sumResult1_20_), .A1(n225), .B0(addResult1[20]), .B1(n220), 
        .Y(n179) );
  AO22X1 U261 ( .A0(sumResult1_19_), .A1(n225), .B0(addResult1[19]), .B1(n220), 
        .Y(n180) );
  AO22X1 U262 ( .A0(sumResult1_18_), .A1(n225), .B0(addResult1[18]), .B1(n220), 
        .Y(n181) );
  AO22X1 U263 ( .A0(sumResult1_17_), .A1(n227), .B0(addResult1[17]), .B1(n220), 
        .Y(n182) );
  AO22X1 U264 ( .A0(sumResult1_16_), .A1(n227), .B0(addResult1[16]), .B1(n220), 
        .Y(n183) );
  AO22X1 U265 ( .A0(sumResult0_35_), .A1(n227), .B0(addResult0[35]), .B1(n224), 
        .Y(n128) );
  AO22X1 U266 ( .A0(sumResult0_15_), .A1(n226), .B0(addResult0[15]), .B1(n223), 
        .Y(n148) );
  AO22X1 U267 ( .A0(sumResult0_14_), .A1(n226), .B0(addResult0[14]), .B1(n223), 
        .Y(n149) );
  AO22X1 U268 ( .A0(sumResult0_13_), .A1(n226), .B0(addResult0[13]), .B1(n223), 
        .Y(n150) );
  AO22X1 U269 ( .A0(sumResult0_12_), .A1(n226), .B0(addResult0[12]), .B1(n223), 
        .Y(n151) );
  AO22X1 U270 ( .A0(sumResult0_11_), .A1(n226), .B0(addResult0[11]), .B1(n222), 
        .Y(n152) );
  AO22X1 U271 ( .A0(sumResult0_10_), .A1(n226), .B0(addResult0[10]), .B1(n222), 
        .Y(n153) );
  AO22X1 U272 ( .A0(sumResult0_9_), .A1(n226), .B0(addResult0[9]), .B1(n222), 
        .Y(n154) );
  AO22X1 U273 ( .A0(sumResult0_8_), .A1(n226), .B0(addResult0[8]), .B1(n222), 
        .Y(n155) );
  AO22X1 U274 ( .A0(sumResult0_7_), .A1(n226), .B0(addResult0[7]), .B1(n222), 
        .Y(n156) );
  AO22X1 U275 ( .A0(sumResult0_6_), .A1(n226), .B0(addResult0[6]), .B1(n222), 
        .Y(n157) );
  AO22X1 U276 ( .A0(sumResult0_5_), .A1(n226), .B0(addResult0[5]), .B1(n222), 
        .Y(n158) );
  AO22X1 U277 ( .A0(sumResult0_4_), .A1(n226), .B0(addResult0[4]), .B1(n222), 
        .Y(n159) );
  AO22X1 U278 ( .A0(sumResult0_3_), .A1(n226), .B0(addResult0[3]), .B1(n222), 
        .Y(n160) );
  AO22X1 U279 ( .A0(sumResult0_2_), .A1(n226), .B0(addResult0[2]), .B1(n222), 
        .Y(n161) );
  AO22X1 U280 ( .A0(sumResult0_1_), .A1(n225), .B0(addResult0[1]), .B1(n222), 
        .Y(n162) );
  AO22X1 U281 ( .A0(sumResult1_35_), .A1(n225), .B0(addResult1[35]), .B1(n221), 
        .Y(n164) );
  AO22X1 U282 ( .A0(sumResult1_15_), .A1(n227), .B0(addResult1[15]), .B1(n220), 
        .Y(n184) );
  AO22X1 U283 ( .A0(sumResult1_14_), .A1(n227), .B0(addResult1[14]), .B1(n220), 
        .Y(n185) );
  AO22X1 U284 ( .A0(sumResult1_13_), .A1(n227), .B0(addResult1[13]), .B1(n220), 
        .Y(n186) );
  AO22X1 U285 ( .A0(sumResult1_12_), .A1(n226), .B0(addResult1[12]), .B1(n220), 
        .Y(n187) );
  AO22X1 U286 ( .A0(sumResult1_11_), .A1(n227), .B0(addResult1[11]), .B1(n224), 
        .Y(n188) );
  AO22X1 U287 ( .A0(sumResult1_10_), .A1(n226), .B0(addResult1[10]), .B1(n220), 
        .Y(n189) );
  AO22X1 U288 ( .A0(sumResult1_9_), .A1(n225), .B0(addResult1[9]), .B1(n221), 
        .Y(n190) );
  AO22X1 U289 ( .A0(sumResult1_8_), .A1(n227), .B0(addResult1[8]), .B1(n223), 
        .Y(n191) );
  AO22X1 U290 ( .A0(sumResult1_7_), .A1(n225), .B0(addResult1[7]), .B1(n224), 
        .Y(n192) );
  AO22X1 U291 ( .A0(sumResult1_6_), .A1(n470), .B0(addResult1[6]), .B1(n220), 
        .Y(n193) );
  AO22X1 U292 ( .A0(sumResult1_5_), .A1(n470), .B0(addResult1[5]), .B1(n221), 
        .Y(n194) );
  AO22X1 U293 ( .A0(sumResult1_4_), .A1(n470), .B0(addResult1[4]), .B1(n223), 
        .Y(n195) );
  AO22X1 U294 ( .A0(sumResult1_3_), .A1(n470), .B0(addResult1[3]), .B1(n219), 
        .Y(n196) );
  AO22X1 U295 ( .A0(sumResult1_2_), .A1(n470), .B0(addResult1[2]), .B1(n219), 
        .Y(n197) );
  AO22X1 U296 ( .A0(sumResult1_1_), .A1(n470), .B0(addResult1[1]), .B1(n219), 
        .Y(n198) );
  OAI211X1 U297 ( .A0(n540), .A1(n216), .B0(n232), .C0(n620), .Y(n205) );
  AOI22X1 U298 ( .A0(N82), .A1(n560), .B0(n216), .B1(n570), .Y(n620) );
  OAI211X1 U299 ( .A0(n540), .A1(n282), .B0(n232), .C0(n580), .Y(n201) );
  CLKINVX1 U300 ( .A(N86), .Y(n282) );
  AOI22X1 U301 ( .A0(N56), .A1(n560), .B0(upperLeft[10]), .B1(n570), .Y(n580)
         );
  OAI211X1 U302 ( .A0(n540), .A1(n283), .B0(n232), .C0(n590), .Y(n202) );
  CLKINVX1 U303 ( .A(N85), .Y(n283) );
  AOI22X1 U304 ( .A0(N55), .A1(n560), .B0(upperLeft[9]), .B1(n570), .Y(n590)
         );
  OAI211X1 U305 ( .A0(n540), .A1(n284), .B0(n232), .C0(n600), .Y(n203) );
  CLKINVX1 U306 ( .A(N84), .Y(n284) );
  AOI22X1 U307 ( .A0(N54), .A1(n560), .B0(upperLeft[8]), .B1(n570), .Y(n600)
         );
  OAI211X1 U308 ( .A0(n540), .A1(n281), .B0(n232), .C0(n550), .Y(n200) );
  CLKINVX1 U309 ( .A(N87), .Y(n281) );
  AOI22X1 U310 ( .A0(N57), .A1(n560), .B0(upperLeft[11]), .B1(n570), .Y(n550)
         );
  OAI211X1 U311 ( .A0(n540), .A1(n285), .B0(n232), .C0(n610), .Y(n204) );
  CLKINVX1 U312 ( .A(N83), .Y(n285) );
  AOI22X1 U313 ( .A0(N53), .A1(n560), .B0(upperLeft[7]), .B1(n570), .Y(n610)
         );
  OAI211X1 U314 ( .A0(n66), .A1(n250), .B0(n232), .C0(n69), .Y(n2080) );
  NAND2X1 U315 ( .A(N270), .B(n66), .Y(n69) );
  OAI211X1 U316 ( .A0(n66), .A1(n40), .B0(n232), .C0(n68), .Y(n2070) );
  NAND2X1 U317 ( .A(N271), .B(n66), .Y(n68) );
  OAI211X1 U318 ( .A0(n66), .A1(n279), .B0(n232), .C0(n67), .Y(n2060) );
  CLKINVX1 U319 ( .A(upperLeft[5]), .Y(n279) );
  NAND2X1 U320 ( .A(N272), .B(n66), .Y(n67) );
  OAI211X1 U321 ( .A0(n66), .A1(n43), .B0(n232), .C0(n71), .Y(n210) );
  NAND2X1 U322 ( .A(N268), .B(n66), .Y(n71) );
  OAI211X1 U323 ( .A0(n66), .A1(n42), .B0(n232), .C0(n70), .Y(n2090) );
  NAND2X1 U324 ( .A(N269), .B(n66), .Y(n70) );
  OR2X1 U325 ( .A(upperLeft[7]), .B(n216), .Y(n251) );
  NAND4X1 U326 ( .A(upperLeft[5]), .B(upperLeft[4]), .C(n119), .D(upperLeft[3]), .Y(n65) );
  NOR2X1 U327 ( .A(n43), .B(n42), .Y(n119) );
  AND2X2 U328 ( .A(iData[0]), .B(n215), .Y(cDataNext[0]) );
  AND2X2 U329 ( .A(iData[10]), .B(n215), .Y(cDataNext[10]) );
  AND2X2 U330 ( .A(iData[11]), .B(n215), .Y(cDataNext[11]) );
  AND2X2 U331 ( .A(iData[12]), .B(n215), .Y(cDataNext[12]) );
  AND2X2 U332 ( .A(iData[13]), .B(n215), .Y(cDataNext[13]) );
  AND2X2 U333 ( .A(iData[14]), .B(n215), .Y(cDataNext[14]) );
  AND2X2 U334 ( .A(iData[15]), .B(n215), .Y(cDataNext[15]) );
  AND2X2 U335 ( .A(iData[16]), .B(n215), .Y(cDataNext[16]) );
  AND2X2 U336 ( .A(iData[17]), .B(n215), .Y(cDataNext[17]) );
  AND2X2 U337 ( .A(iData[18]), .B(n215), .Y(cDataNext[18]) );
  AND2X2 U338 ( .A(iData[19]), .B(n215), .Y(cDataNext[19]) );
  AND2X2 U339 ( .A(iData[1]), .B(n215), .Y(cDataNext[1]) );
  AND2X2 U340 ( .A(iData[2]), .B(n215), .Y(cDataNext[2]) );
  AND2X2 U341 ( .A(iData[3]), .B(n215), .Y(cDataNext[3]) );
  AND2X2 U342 ( .A(iData[4]), .B(n215), .Y(cDataNext[4]) );
  AND2X2 U343 ( .A(iData[5]), .B(n215), .Y(cDataNext[5]) );
  AND2X2 U344 ( .A(iData[6]), .B(n215), .Y(cDataNext[6]) );
  AND2X2 U345 ( .A(iData[7]), .B(n215), .Y(cDataNext[7]) );
  AND2X2 U346 ( .A(iData[8]), .B(n215), .Y(cDataNext[8]) );
  AND2X2 U347 ( .A(iData[9]), .B(n215), .Y(cDataNext[9]) );
  OR2X1 U348 ( .A(upperLeft[1]), .B(upperLeft[0]), .Y(n246) );
  CLKINVX1 U349 ( .A(upperLeft[9]), .Y(n255) );
  CLKINVX1 U350 ( .A(upperLeft[3]), .Y(n250) );
  ADDHXL U351 ( .A(upperLeft[3]), .B(r364_carry[3]), .CO(r364_carry[4]), .S(
        N61) );
  ADDHXL U352 ( .A(upperLeft[1]), .B(upperLeft[0]), .CO(r364_carry[2]), .S(N59) );
  ADDHXL U353 ( .A(upperLeft[2]), .B(r364_carry[2]), .CO(r364_carry[3]), .S(
        N60) );
  ADDHXL U354 ( .A(upperLeft[4]), .B(r364_carry[4]), .CO(r364_carry[5]), .S(
        N62) );
  OAI31XL U355 ( .A0(n65), .A1(upperLeft[0]), .A2(n99), .B0(n100), .Y(n95) );
  AOI32X1 U356 ( .A0(n216), .A1(n286), .A2(n101), .B0(n102), .B1(N754), .Y(
        n100) );
  NAND4X1 U357 ( .A(upperLeft[9]), .B(upperLeft[8]), .C(n103), .D(upperLeft[7]), .Y(n98) );
  AND2X2 U358 ( .A(upperLeft[10]), .B(upperLeft[11]), .Y(n103) );
  OA21XL U359 ( .A0(offset[3]), .A1(n110), .B0(n287), .Y(n99) );
  ADDHXL U360 ( .A(countMULT[1]), .B(countMULT[0]), .CO(add_541_carry[2]), .S(
        N206) );
  ADDHXL U361 ( .A(countMULT[2]), .B(add_541_carry[2]), .CO(add_541_carry[3]), 
        .S(N207) );
  AND2X2 U362 ( .A(n64), .B(n31), .Y(n66) );
  ADDHXL U363 ( .A(n37), .B(add_541_carry[3]), .CO(add_541_carry[4]), .S(N208)
         );
  AND2XL U364 ( .A(upperLeft[4]), .B(add_325_2_carry[4]), .Y(
        add_325_2_carry[5]) );
  AND2X1 U365 ( .A(R[0]), .B(upperLeft[0]), .Y(add_325_2_carry[1]) );
  AND2X1 U366 ( .A(upperLeft[10]), .B(add_325_carry[4]), .Y(add_325_carry[5])
         );
  OAI2BB1X1 U367 ( .A0N(upperLeft[0]), .A1N(upperLeft[1]), .B0(n246), .Y(N47)
         );
  NOR2X1 U368 ( .A(n246), .B(upperLeft[2]), .Y(n247) );
  AO21X1 U369 ( .A0(n246), .A1(upperLeft[2]), .B0(n247), .Y(N48) );
  NAND2X1 U370 ( .A(n247), .B(n250), .Y(n248) );
  OAI21XL U371 ( .A0(n247), .A1(n250), .B0(n248), .Y(N49) );
  XNOR2X1 U372 ( .A(upperLeft[4]), .B(n248), .Y(N50) );
  NOR2X1 U373 ( .A(upperLeft[4]), .B(n248), .Y(n249) );
  XOR2X1 U374 ( .A(upperLeft[5]), .B(n249), .Y(N51) );
  OAI2BB1X1 U375 ( .A0N(n216), .A1N(upperLeft[7]), .B0(n251), .Y(N53) );
  NOR2X1 U376 ( .A(n251), .B(upperLeft[8]), .Y(n252) );
  AO21X1 U377 ( .A0(n251), .A1(upperLeft[8]), .B0(n252), .Y(N54) );
  NAND2X1 U378 ( .A(n252), .B(n255), .Y(n253) );
  OAI21XL U379 ( .A0(n252), .A1(n255), .B0(n253), .Y(N55) );
  XNOR2X1 U380 ( .A(upperLeft[10]), .B(n253), .Y(N56) );
  NOR2X1 U381 ( .A(upperLeft[10]), .B(n253), .Y(n254) );
  XOR2X1 U382 ( .A(upperLeft[11]), .B(n254), .Y(N57) );
  XOR2X1 U383 ( .A(r364_carry[5]), .B(upperLeft[5]), .Y(N63) );
  CLKINVX1 U384 ( .A(n216), .Y(N82) );
  XOR2X1 U385 ( .A(r365_carry[5]), .B(upperLeft[11]), .Y(N87) );
  CLKINVX1 U386 ( .A(upperLeft_org[6]), .Y(addrWr[6]) );
  XOR2X1 U387 ( .A(add_324_carry[5]), .B(upperLeft_org[11]), .Y(addrWr[11]) );
  CLKINVX1 U388 ( .A(upperLeft_org[0]), .Y(addrWr[0]) );
  XOR2X1 U389 ( .A(add_324_2_carry[5]), .B(upperLeft_org[5]), .Y(addrWr[5]) );
  NAND2BX1 U390 ( .AN(upperLeft[0]), .B(n216), .Y(n256) );
  AO22X1 U391 ( .A0(N58), .A1(n256), .B0(N58), .B1(n257), .Y(N267) );
  AO22X1 U392 ( .A0(N59), .A1(n256), .B0(N47), .B1(n257), .Y(N268) );
  AO22X1 U393 ( .A0(N60), .A1(n256), .B0(N48), .B1(n257), .Y(N269) );
  AO22X1 U394 ( .A0(N61), .A1(n256), .B0(N49), .B1(n257), .Y(N270) );
  AO22X1 U395 ( .A0(N62), .A1(n256), .B0(N50), .B1(n257), .Y(N271) );
  AO22X1 U396 ( .A0(N63), .A1(n256), .B0(N51), .B1(n257), .Y(N272) );
  NAND2X1 U397 ( .A(upperLeft[0]), .B(N82), .Y(n258) );
  AO22X1 U398 ( .A0(N58), .A1(n258), .B0(N58), .B1(n2690), .Y(upperLeft_org[0]) );
  AO22X1 U399 ( .A0(N47), .A1(n258), .B0(N59), .B1(n2690), .Y(upperLeft_org[1]) );
  AO22X1 U400 ( .A0(N48), .A1(n258), .B0(N60), .B1(n2690), .Y(upperLeft_org[2]) );
  AO22X1 U401 ( .A0(N49), .A1(n258), .B0(N61), .B1(n2690), .Y(upperLeft_org[3]) );
  AO22X1 U402 ( .A0(N50), .A1(n258), .B0(N62), .B1(n2690), .Y(upperLeft_org[4]) );
  AO22X1 U403 ( .A0(N51), .A1(n258), .B0(N63), .B1(n2690), .Y(upperLeft_org[5]) );
  AO21X1 U404 ( .A0(N754), .A1(n216), .B0(n2690), .Y(n259) );
  NOR2X1 U405 ( .A(N82), .B(N754), .Y(n261) );
  AOI22X1 U406 ( .A0(N82), .A1(n259), .B0(N82), .B1(n261), .Y(n260) );
  AND2X1 U407 ( .A(n261), .B(upperLeft[0]), .Y(n2670) );
  NOR2X1 U408 ( .A(N58), .B(n261), .Y(n266) );
  AOI222XL U409 ( .A0(upperLeft[7]), .A1(N58), .B0(N83), .B1(n2670), .C0(N53), 
        .C1(n266), .Y(n262) );
  CLKINVX1 U410 ( .A(n262), .Y(upperLeft_org[7]) );
  AOI222XL U411 ( .A0(upperLeft[8]), .A1(N58), .B0(N84), .B1(n2670), .C0(N54), 
        .C1(n266), .Y(n263) );
  CLKINVX1 U412 ( .A(n263), .Y(upperLeft_org[8]) );
  AOI222XL U413 ( .A0(upperLeft[9]), .A1(N58), .B0(N85), .B1(n2670), .C0(N55), 
        .C1(n266), .Y(n264) );
  CLKINVX1 U414 ( .A(n264), .Y(upperLeft_org[9]) );
  AOI222XL U415 ( .A0(upperLeft[10]), .A1(N58), .B0(N86), .B1(n2670), .C0(N56), 
        .C1(n266), .Y(n265) );
  CLKINVX1 U416 ( .A(n265), .Y(upperLeft_org[10]) );
  AOI222XL U417 ( .A0(upperLeft[11]), .A1(N58), .B0(N87), .B1(n2670), .C0(N57), 
        .C1(n266), .Y(n2680) );
  CLKINVX1 U418 ( .A(n2680), .Y(upperLeft_org[11]) );
endmodule


module MXPL_SUB_1_DW_cmp_0 ( A, B, GE_LT_GT_LE );
  input [19:0] A;
  input [19:0] B;
  output GE_LT_GT_LE;
  wire   n119, n120, n121, n122, n123, n124, n125, n126, n127, n128, n129,
         n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n140,
         n141, n142, n143, n144, n145, n146, n147, n148, n149, n150, n151,
         n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, n162,
         n163, n164, n165, n166, n167, n168, n169, n170, n171, n172, n173,
         n174, n175, n176, n177, n178;

  CLKINVX1 U55 ( .A(n158), .Y(n123) );
  CLKINVX1 U56 ( .A(n172), .Y(n127) );
  CLKINVX1 U57 ( .A(B[11]), .Y(n132) );
  CLKINVX1 U58 ( .A(A[12]), .Y(n121) );
  CLKINVX1 U59 ( .A(A[8]), .Y(n124) );
  CLKINVX1 U60 ( .A(B[1]), .Y(n128) );
  CLKINVX1 U61 ( .A(B[6]), .Y(n130) );
  CLKINVX1 U62 ( .A(B[13]), .Y(n133) );
  CLKINVX1 U63 ( .A(B[9]), .Y(n131) );
  CLKINVX1 U64 ( .A(B[4]), .Y(n129) );
  CLKINVX1 U65 ( .A(A[5]), .Y(n125) );
  CLKINVX1 U66 ( .A(A[14]), .Y(n120) );
  CLKINVX1 U67 ( .A(A[17]), .Y(n119) );
  CLKINVX1 U68 ( .A(A[3]), .Y(n126) );
  CLKINVX1 U69 ( .A(A[10]), .Y(n122) );
  CLKINVX1 U70 ( .A(B[15]), .Y(n134) );
  CLKINVX1 U71 ( .A(B[18]), .Y(n135) );
  CLKINVX1 U72 ( .A(B[19]), .Y(n136) );
  OAI221XL U73 ( .A0(A[19]), .A1(n137), .B0(A[19]), .B1(n136), .C0(n138), .Y(
        GE_LT_GT_LE) );
  AOI2BB2X1 U74 ( .B0(n139), .B1(n140), .A0N(n137), .A1N(n136), .Y(n138) );
  OAI22XL U75 ( .A0(n136), .A1(n141), .B0(A[19]), .B1(n141), .Y(n140) );
  OAI21XL U76 ( .A0(A[18]), .A1(n135), .B0(n142), .Y(n141) );
  OAI22XL U77 ( .A0(n143), .A1(n119), .B0(B[17]), .B1(n143), .Y(n142) );
  NOR2BX1 U78 ( .AN(B[16]), .B(A[16]), .Y(n143) );
  OAI21XL U79 ( .A0(n144), .A1(n145), .B0(n146), .Y(n139) );
  OAI222XL U80 ( .A0(A[15]), .A1(n147), .B0(n134), .B1(n147), .C0(A[15]), .C1(
        n134), .Y(n146) );
  OAI222XL U81 ( .A0(B[14]), .A1(n120), .B0(B[14]), .B1(n148), .C0(n120), .C1(
        n148), .Y(n147) );
  OAI222XL U82 ( .A0(A[13]), .A1(n149), .B0(n133), .B1(n149), .C0(A[13]), .C1(
        n133), .Y(n148) );
  OAI222XL U83 ( .A0(B[12]), .A1(n121), .B0(B[12]), .B1(n150), .C0(n121), .C1(
        n150), .Y(n149) );
  NAND2X1 U84 ( .A(A[11]), .B(n132), .Y(n150) );
  OAI21XL U85 ( .A0(A[15]), .A1(n134), .B0(n151), .Y(n145) );
  OAI22XL U86 ( .A0(n152), .A1(n120), .B0(B[14]), .B1(n152), .Y(n151) );
  OAI21XL U87 ( .A0(A[13]), .A1(n133), .B0(n153), .Y(n152) );
  OAI22XL U88 ( .A0(n154), .A1(n121), .B0(B[12]), .B1(n154), .Y(n153) );
  NOR2X1 U89 ( .A(n132), .B(A[11]), .Y(n154) );
  AOI221XL U90 ( .A0(A[10]), .A1(n123), .B0(n155), .B1(n156), .C0(n157), .Y(
        n144) );
  OAI22XL U91 ( .A0(B[10]), .A1(n122), .B0(B[10]), .B1(n158), .Y(n157) );
  OAI22XL U92 ( .A0(n122), .A1(n159), .B0(B[10]), .B1(n159), .Y(n156) );
  OAI21XL U93 ( .A0(A[9]), .A1(n131), .B0(n160), .Y(n159) );
  OAI22XL U94 ( .A0(n161), .A1(n124), .B0(B[8]), .B1(n161), .Y(n160) );
  NOR2BX1 U95 ( .AN(B[7]), .B(A[7]), .Y(n161) );
  OAI21XL U96 ( .A0(n162), .A1(n163), .B0(n164), .Y(n155) );
  OAI222XL U97 ( .A0(A[6]), .A1(n165), .B0(n130), .B1(n165), .C0(A[6]), .C1(
        n130), .Y(n164) );
  OAI222XL U98 ( .A0(B[5]), .A1(n125), .B0(B[5]), .B1(n166), .C0(n125), .C1(
        n166), .Y(n165) );
  NAND2X1 U99 ( .A(A[4]), .B(n129), .Y(n166) );
  OAI21XL U100 ( .A0(A[6]), .A1(n130), .B0(n167), .Y(n163) );
  OAI22XL U101 ( .A0(n168), .A1(n125), .B0(B[5]), .B1(n168), .Y(n167) );
  NOR2X1 U102 ( .A(n129), .B(A[4]), .Y(n168) );
  AOI221XL U103 ( .A0(A[3]), .A1(n127), .B0(n169), .B1(n170), .C0(n171), .Y(
        n162) );
  OAI22XL U104 ( .A0(B[3]), .A1(n126), .B0(B[3]), .B1(n172), .Y(n171) );
  OAI22XL U105 ( .A0(n173), .A1(n126), .B0(B[3]), .B1(n173), .Y(n170) );
  NOR2BX1 U106 ( .AN(B[2]), .B(A[2]), .Y(n173) );
  AO22X1 U107 ( .A0(n174), .A1(A[0]), .B0(A[1]), .B1(n128), .Y(n169) );
  AOI2BB1X1 U108 ( .A0N(n128), .A1N(A[1]), .B0(B[0]), .Y(n174) );
  NAND2BX1 U109 ( .AN(B[2]), .B(A[2]), .Y(n172) );
  OAI222XL U110 ( .A0(A[9]), .A1(n175), .B0(n175), .B1(n131), .C0(A[9]), .C1(
        n131), .Y(n158) );
  OAI222XL U111 ( .A0(B[8]), .A1(n124), .B0(B[8]), .B1(n176), .C0(n176), .C1(
        n124), .Y(n175) );
  NAND2BX1 U112 ( .AN(B[7]), .B(A[7]), .Y(n176) );
  OAI222XL U113 ( .A0(A[18]), .A1(n177), .B0(n177), .B1(n135), .C0(A[18]), 
        .C1(n135), .Y(n137) );
  OAI222XL U114 ( .A0(B[17]), .A1(n119), .B0(B[17]), .B1(n178), .C0(n178), 
        .C1(n119), .Y(n177) );
  NAND2BX1 U115 ( .AN(B[16]), .B(A[16]), .Y(n178) );
endmodule


module MXPL_SUB_1 ( clk, reset, data, convDone, result, mxplDone );
  input [19:0] data;
  output [19:0] result;
  input clk, reset, convDone;
  output mxplDone;
  wire   N8, done_, N14, N15, N57, n6, n7, n800, n9, n10, n11, n12, n13, n140,
         n150, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n49, n50, n51,
         n52, n53, n54, n55, n56, n570, n58, n59, n60, n61, n62, n63, n64, n65,
         n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79,
         n801, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93,
         n94, n3, n4, n5, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n95;
  wire   [19:0] A;
  wire   [1:0] count;

  MXPL_SUB_1_DW_cmp_0 gt_45 ( .A(A), .B(result), .GE_LT_GT_LE(N8) );
  DFFQX1 count_reg_1_ ( .D(N15), .CK(clk), .Q(count[1]) );
  EDFFTRX1 A_reg_19_ ( .RN(n27), .D(data[19]), .E(n26), .CK(clk), .Q(A[19]), 
        .QN(n6) );
  EDFFTRX1 A_reg_18_ ( .RN(n27), .D(data[18]), .E(n26), .CK(clk), .Q(A[18]), 
        .QN(n7) );
  EDFFTRX1 A_reg_15_ ( .RN(n27), .D(data[15]), .E(n26), .CK(clk), .Q(A[15]), 
        .QN(n10) );
  DFFQX1 B_reg_15_ ( .D(n90), .CK(clk), .Q(result[15]) );
  DFFQX1 B_reg_18_ ( .D(n93), .CK(clk), .Q(result[18]) );
  DFFQX1 B_reg_19_ ( .D(n94), .CK(clk), .Q(result[19]) );
  DFFTRX1 done___reg ( .D(done_), .RN(n27), .CK(clk), .Q(mxplDone) );
  EDFFTRX1 A_reg_0_ ( .RN(n28), .D(data[0]), .E(n26), .CK(clk), .Q(A[0]), .QN(
        n25) );
  EDFFTRX1 A_reg_17_ ( .RN(n27), .D(data[17]), .E(n26), .CK(clk), .Q(A[17]), 
        .QN(n800) );
  EDFFTRX1 A_reg_14_ ( .RN(n27), .D(data[14]), .E(n26), .CK(clk), .Q(A[14]), 
        .QN(n11) );
  EDFFTRX1 A_reg_5_ ( .RN(n27), .D(data[5]), .E(n26), .CK(clk), .Q(A[5]), .QN(
        n20) );
  EDFFTRX1 A_reg_1_ ( .RN(n28), .D(data[1]), .E(n26), .CK(clk), .Q(A[1]), .QN(
        n24) );
  EDFFTRX1 A_reg_4_ ( .RN(n27), .D(data[4]), .E(n26), .CK(clk), .Q(A[4]), .QN(
        n21) );
  EDFFTRX1 A_reg_16_ ( .RN(n27), .D(data[16]), .E(n26), .CK(clk), .Q(A[16]), 
        .QN(n9) );
  EDFFTRX1 A_reg_2_ ( .RN(n28), .D(data[2]), .E(n26), .CK(clk), .Q(A[2]), .QN(
        n23) );
  EDFFTRX1 A_reg_10_ ( .RN(n27), .D(data[10]), .E(n26), .CK(clk), .Q(A[10]), 
        .QN(n150) );
  EDFFTRX1 A_reg_3_ ( .RN(n28), .D(data[3]), .E(n26), .CK(clk), .Q(A[3]), .QN(
        n22) );
  EDFFTRX1 A_reg_13_ ( .RN(n27), .D(data[13]), .E(n26), .CK(clk), .Q(A[13]), 
        .QN(n12) );
  EDFFTRX1 A_reg_9_ ( .RN(n27), .D(data[9]), .E(n26), .CK(clk), .Q(A[9]), .QN(
        n16) );
  EDFFTRX1 A_reg_6_ ( .RN(n27), .D(data[6]), .E(n26), .CK(clk), .Q(A[6]), .QN(
        n19) );
  DFFQX1 B_reg_0_ ( .D(n75), .CK(clk), .Q(result[0]) );
  DFFQX1 B_reg_1_ ( .D(n76), .CK(clk), .Q(result[1]) );
  DFFQX1 B_reg_4_ ( .D(n79), .CK(clk), .Q(result[4]) );
  DFFQX1 B_reg_6_ ( .D(n81), .CK(clk), .Q(result[6]) );
  DFFQX1 B_reg_9_ ( .D(n84), .CK(clk), .Q(result[9]) );
  DFFQX1 B_reg_13_ ( .D(n88), .CK(clk), .Q(result[13]) );
  DFFQX1 B_reg_2_ ( .D(n77), .CK(clk), .Q(result[2]) );
  DFFQX1 B_reg_16_ ( .D(n91), .CK(clk), .Q(result[16]) );
  DFFQX1 B_reg_3_ ( .D(n78), .CK(clk), .Q(result[3]) );
  DFFQX1 B_reg_10_ ( .D(n85), .CK(clk), .Q(result[10]) );
  DFFQX1 B_reg_5_ ( .D(n801), .CK(clk), .Q(result[5]) );
  DFFQX1 B_reg_14_ ( .D(n89), .CK(clk), .Q(result[14]) );
  DFFQX1 B_reg_17_ ( .D(n92), .CK(clk), .Q(result[17]) );
  EDFFTRX1 A_reg_12_ ( .RN(n27), .D(data[12]), .E(n26), .CK(clk), .Q(A[12]), 
        .QN(n13) );
  EDFFTRX1 A_reg_8_ ( .RN(n27), .D(data[8]), .E(n26), .CK(clk), .Q(A[8]), .QN(
        n17) );
  EDFFTRX1 A_reg_11_ ( .RN(n27), .D(data[11]), .E(n26), .CK(clk), .Q(A[11]), 
        .QN(n140) );
  EDFFTRX1 A_reg_7_ ( .RN(n27), .D(data[7]), .E(n26), .CK(clk), .Q(A[7]), .QN(
        n18) );
  DFFQX1 B_reg_11_ ( .D(n86), .CK(clk), .Q(result[11]) );
  DFFQX1 B_reg_7_ ( .D(n82), .CK(clk), .Q(result[7]) );
  DFFQX1 B_reg_8_ ( .D(n83), .CK(clk), .Q(result[8]) );
  DFFQX1 B_reg_12_ ( .D(n87), .CK(clk), .Q(result[12]) );
  DFFQX1 done__reg ( .D(N57), .CK(clk), .Q(done_) );
  DFFQX1 count_reg_0_ ( .D(N14), .CK(clk), .Q(count[0]) );
  NAND2X4 U3 ( .A(n29), .B(n70), .Y(n3) );
  NAND2X4 U4 ( .A(n70), .B(n71), .Y(n4) );
  BUFX4 U7 ( .A(n50), .Y(n5) );
  BUFX4 U8 ( .A(convDone), .Y(n26) );
  INVX3 U9 ( .A(reset), .Y(n27) );
  CLKINVX1 U10 ( .A(reset), .Y(n28) );
  NOR2X1 U11 ( .A(n5), .B(reset), .Y(n70) );
  NAND2X1 U12 ( .A(n73), .B(n27), .Y(N14) );
  NAND2X1 U13 ( .A(n72), .B(n27), .Y(N15) );
  CLKINVX1 U14 ( .A(n71), .Y(n29) );
  OAI221XL U15 ( .A0(n4), .A1(n6), .B0(n3), .B1(n95), .C0(n69), .Y(n94) );
  CLKINVX1 U16 ( .A(data[19]), .Y(n95) );
  NAND2X1 U17 ( .A(result[19]), .B(n5), .Y(n69) );
  OAI221XL U18 ( .A0(n4), .A1(n7), .B0(n3), .B1(n48), .C0(n68), .Y(n93) );
  CLKINVX1 U19 ( .A(data[18]), .Y(n48) );
  NAND2X1 U20 ( .A(result[18]), .B(n5), .Y(n68) );
  OAI221XL U21 ( .A0(n4), .A1(n800), .B0(n3), .B1(n47), .C0(n67), .Y(n92) );
  CLKINVX1 U22 ( .A(data[17]), .Y(n47) );
  NAND2X1 U23 ( .A(result[17]), .B(n5), .Y(n67) );
  OAI221XL U24 ( .A0(n4), .A1(n9), .B0(n3), .B1(n46), .C0(n66), .Y(n91) );
  CLKINVX1 U25 ( .A(data[16]), .Y(n46) );
  NAND2X1 U26 ( .A(result[16]), .B(n5), .Y(n66) );
  OAI221XL U27 ( .A0(n4), .A1(n10), .B0(n3), .B1(n45), .C0(n65), .Y(n90) );
  CLKINVX1 U28 ( .A(data[15]), .Y(n45) );
  NAND2X1 U29 ( .A(result[15]), .B(n5), .Y(n65) );
  OAI221XL U30 ( .A0(n4), .A1(n11), .B0(n3), .B1(n44), .C0(n64), .Y(n89) );
  CLKINVX1 U31 ( .A(data[14]), .Y(n44) );
  NAND2X1 U32 ( .A(result[14]), .B(n5), .Y(n64) );
  OAI221XL U33 ( .A0(n4), .A1(n12), .B0(n3), .B1(n43), .C0(n63), .Y(n88) );
  CLKINVX1 U34 ( .A(data[13]), .Y(n43) );
  NAND2X1 U35 ( .A(result[13]), .B(n5), .Y(n63) );
  OAI221XL U36 ( .A0(n4), .A1(n13), .B0(n3), .B1(n42), .C0(n62), .Y(n87) );
  CLKINVX1 U37 ( .A(data[12]), .Y(n42) );
  NAND2X1 U38 ( .A(result[12]), .B(n5), .Y(n62) );
  OAI221XL U39 ( .A0(n4), .A1(n140), .B0(n3), .B1(n41), .C0(n61), .Y(n86) );
  CLKINVX1 U40 ( .A(data[11]), .Y(n41) );
  NAND2X1 U41 ( .A(result[11]), .B(n5), .Y(n61) );
  OAI221XL U42 ( .A0(n4), .A1(n150), .B0(n3), .B1(n40), .C0(n60), .Y(n85) );
  CLKINVX1 U43 ( .A(data[10]), .Y(n40) );
  NAND2X1 U44 ( .A(result[10]), .B(n5), .Y(n60) );
  OAI221XL U45 ( .A0(n4), .A1(n16), .B0(n3), .B1(n39), .C0(n59), .Y(n84) );
  CLKINVX1 U46 ( .A(data[9]), .Y(n39) );
  NAND2X1 U47 ( .A(result[9]), .B(n5), .Y(n59) );
  OAI221XL U48 ( .A0(n4), .A1(n17), .B0(n3), .B1(n38), .C0(n58), .Y(n83) );
  CLKINVX1 U49 ( .A(data[8]), .Y(n38) );
  NAND2X1 U50 ( .A(result[8]), .B(n5), .Y(n58) );
  OAI221XL U51 ( .A0(n4), .A1(n18), .B0(n3), .B1(n37), .C0(n570), .Y(n82) );
  CLKINVX1 U52 ( .A(data[7]), .Y(n37) );
  NAND2X1 U53 ( .A(result[7]), .B(n5), .Y(n570) );
  OAI221XL U54 ( .A0(n4), .A1(n19), .B0(n3), .B1(n36), .C0(n56), .Y(n81) );
  CLKINVX1 U55 ( .A(data[6]), .Y(n36) );
  NAND2X1 U56 ( .A(result[6]), .B(n5), .Y(n56) );
  OAI221XL U57 ( .A0(n4), .A1(n20), .B0(n3), .B1(n35), .C0(n55), .Y(n801) );
  CLKINVX1 U58 ( .A(data[5]), .Y(n35) );
  NAND2X1 U59 ( .A(result[5]), .B(n5), .Y(n55) );
  OAI221XL U60 ( .A0(n4), .A1(n21), .B0(n3), .B1(n34), .C0(n54), .Y(n79) );
  CLKINVX1 U61 ( .A(data[4]), .Y(n34) );
  NAND2X1 U62 ( .A(result[4]), .B(n5), .Y(n54) );
  OAI221XL U63 ( .A0(n4), .A1(n22), .B0(n3), .B1(n33), .C0(n53), .Y(n78) );
  CLKINVX1 U64 ( .A(data[3]), .Y(n33) );
  NAND2X1 U65 ( .A(result[3]), .B(n5), .Y(n53) );
  OAI221XL U66 ( .A0(n4), .A1(n23), .B0(n3), .B1(n32), .C0(n52), .Y(n77) );
  CLKINVX1 U67 ( .A(data[2]), .Y(n32) );
  NAND2X1 U68 ( .A(result[2]), .B(n5), .Y(n52) );
  OAI221XL U69 ( .A0(n4), .A1(n24), .B0(n3), .B1(n31), .C0(n51), .Y(n76) );
  CLKINVX1 U70 ( .A(data[1]), .Y(n31) );
  NAND2X1 U71 ( .A(result[1]), .B(n5), .Y(n51) );
  OAI221XL U72 ( .A0(n4), .A1(n25), .B0(n3), .B1(n30), .C0(n49), .Y(n75) );
  CLKINVX1 U73 ( .A(data[0]), .Y(n30) );
  NAND2X1 U74 ( .A(result[0]), .B(n5), .Y(n49) );
  NOR4X1 U75 ( .A(reset), .B(count[0]), .C(n72), .D(n73), .Y(N57) );
  NOR3X1 U76 ( .A(N8), .B(reset), .C(n29), .Y(n50) );
  XNOR2X1 U77 ( .A(n26), .B(count[0]), .Y(n73) );
  XOR2X1 U78 ( .A(n74), .B(count[1]), .Y(n72) );
  NAND2X1 U79 ( .A(count[0]), .B(n26), .Y(n74) );
  NAND3X1 U80 ( .A(count[0]), .B(n26), .C(count[1]), .Y(n71) );
endmodule


module MXPL_SUB_0_DW_cmp_0 ( A, B, GE_LT_GT_LE );
  input [19:0] A;
  input [19:0] B;
  output GE_LT_GT_LE;
  wire   n119, n120, n121, n122, n123, n124, n125, n126, n127, n128, n129,
         n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n140,
         n141, n142, n143, n144, n145, n146, n147, n148, n149, n150, n151,
         n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, n162,
         n163, n164, n165, n166, n167, n168, n169, n170, n171, n172, n173,
         n174, n175, n176, n177, n178;

  CLKINVX1 U55 ( .A(n158), .Y(n123) );
  CLKINVX1 U56 ( .A(n172), .Y(n127) );
  CLKINVX1 U57 ( .A(B[11]), .Y(n132) );
  CLKINVX1 U58 ( .A(A[12]), .Y(n121) );
  CLKINVX1 U59 ( .A(A[8]), .Y(n124) );
  CLKINVX1 U60 ( .A(B[1]), .Y(n128) );
  CLKINVX1 U61 ( .A(B[6]), .Y(n130) );
  CLKINVX1 U62 ( .A(B[13]), .Y(n133) );
  CLKINVX1 U63 ( .A(B[9]), .Y(n131) );
  CLKINVX1 U64 ( .A(B[4]), .Y(n129) );
  CLKINVX1 U65 ( .A(A[5]), .Y(n125) );
  CLKINVX1 U66 ( .A(A[14]), .Y(n120) );
  CLKINVX1 U67 ( .A(A[17]), .Y(n119) );
  CLKINVX1 U68 ( .A(A[3]), .Y(n126) );
  CLKINVX1 U69 ( .A(A[10]), .Y(n122) );
  CLKINVX1 U70 ( .A(B[15]), .Y(n134) );
  CLKINVX1 U71 ( .A(B[18]), .Y(n135) );
  CLKINVX1 U72 ( .A(B[19]), .Y(n136) );
  OAI221XL U73 ( .A0(A[19]), .A1(n137), .B0(A[19]), .B1(n136), .C0(n138), .Y(
        GE_LT_GT_LE) );
  AOI2BB2X1 U74 ( .B0(n139), .B1(n140), .A0N(n137), .A1N(n136), .Y(n138) );
  OAI22XL U75 ( .A0(n136), .A1(n141), .B0(A[19]), .B1(n141), .Y(n140) );
  OAI21XL U76 ( .A0(A[18]), .A1(n135), .B0(n142), .Y(n141) );
  OAI22XL U77 ( .A0(n143), .A1(n119), .B0(B[17]), .B1(n143), .Y(n142) );
  NOR2BX1 U78 ( .AN(B[16]), .B(A[16]), .Y(n143) );
  OAI21XL U79 ( .A0(n144), .A1(n145), .B0(n146), .Y(n139) );
  OAI222XL U80 ( .A0(A[15]), .A1(n147), .B0(n134), .B1(n147), .C0(A[15]), .C1(
        n134), .Y(n146) );
  OAI222XL U81 ( .A0(B[14]), .A1(n120), .B0(B[14]), .B1(n148), .C0(n120), .C1(
        n148), .Y(n147) );
  OAI222XL U82 ( .A0(A[13]), .A1(n149), .B0(n133), .B1(n149), .C0(A[13]), .C1(
        n133), .Y(n148) );
  OAI222XL U83 ( .A0(B[12]), .A1(n121), .B0(B[12]), .B1(n150), .C0(n121), .C1(
        n150), .Y(n149) );
  NAND2X1 U84 ( .A(A[11]), .B(n132), .Y(n150) );
  OAI21XL U85 ( .A0(A[15]), .A1(n134), .B0(n151), .Y(n145) );
  OAI22XL U86 ( .A0(n152), .A1(n120), .B0(B[14]), .B1(n152), .Y(n151) );
  OAI21XL U87 ( .A0(A[13]), .A1(n133), .B0(n153), .Y(n152) );
  OAI22XL U88 ( .A0(n154), .A1(n121), .B0(B[12]), .B1(n154), .Y(n153) );
  NOR2X1 U89 ( .A(n132), .B(A[11]), .Y(n154) );
  AOI221XL U90 ( .A0(A[10]), .A1(n123), .B0(n155), .B1(n156), .C0(n157), .Y(
        n144) );
  OAI22XL U91 ( .A0(B[10]), .A1(n122), .B0(B[10]), .B1(n158), .Y(n157) );
  OAI22XL U92 ( .A0(n122), .A1(n159), .B0(B[10]), .B1(n159), .Y(n156) );
  OAI21XL U93 ( .A0(A[9]), .A1(n131), .B0(n160), .Y(n159) );
  OAI22XL U94 ( .A0(n161), .A1(n124), .B0(B[8]), .B1(n161), .Y(n160) );
  NOR2BX1 U95 ( .AN(B[7]), .B(A[7]), .Y(n161) );
  OAI21XL U96 ( .A0(n162), .A1(n163), .B0(n164), .Y(n155) );
  OAI222XL U97 ( .A0(A[6]), .A1(n165), .B0(n130), .B1(n165), .C0(A[6]), .C1(
        n130), .Y(n164) );
  OAI222XL U98 ( .A0(B[5]), .A1(n125), .B0(B[5]), .B1(n166), .C0(n125), .C1(
        n166), .Y(n165) );
  NAND2X1 U99 ( .A(A[4]), .B(n129), .Y(n166) );
  OAI21XL U100 ( .A0(A[6]), .A1(n130), .B0(n167), .Y(n163) );
  OAI22XL U101 ( .A0(n168), .A1(n125), .B0(B[5]), .B1(n168), .Y(n167) );
  NOR2X1 U102 ( .A(n129), .B(A[4]), .Y(n168) );
  AOI221XL U103 ( .A0(A[3]), .A1(n127), .B0(n169), .B1(n170), .C0(n171), .Y(
        n162) );
  OAI22XL U104 ( .A0(B[3]), .A1(n126), .B0(B[3]), .B1(n172), .Y(n171) );
  OAI22XL U105 ( .A0(n173), .A1(n126), .B0(B[3]), .B1(n173), .Y(n170) );
  NOR2BX1 U106 ( .AN(B[2]), .B(A[2]), .Y(n173) );
  AO22X1 U107 ( .A0(n174), .A1(A[0]), .B0(A[1]), .B1(n128), .Y(n169) );
  AOI2BB1X1 U108 ( .A0N(n128), .A1N(A[1]), .B0(B[0]), .Y(n174) );
  NAND2BX1 U109 ( .AN(B[2]), .B(A[2]), .Y(n172) );
  OAI222XL U110 ( .A0(A[9]), .A1(n175), .B0(n175), .B1(n131), .C0(A[9]), .C1(
        n131), .Y(n158) );
  OAI222XL U111 ( .A0(B[8]), .A1(n124), .B0(B[8]), .B1(n176), .C0(n176), .C1(
        n124), .Y(n175) );
  NAND2BX1 U112 ( .AN(B[7]), .B(A[7]), .Y(n176) );
  OAI222XL U113 ( .A0(A[18]), .A1(n177), .B0(n177), .B1(n135), .C0(A[18]), 
        .C1(n135), .Y(n137) );
  OAI222XL U114 ( .A0(B[17]), .A1(n119), .B0(B[17]), .B1(n178), .C0(n178), 
        .C1(n119), .Y(n177) );
  NAND2BX1 U115 ( .AN(B[16]), .B(A[16]), .Y(n178) );
endmodule


module MXPL_SUB_0 ( clk, reset, data, convDone, result, mxplDone );
  input [19:0] data;
  output [19:0] result;
  input clk, reset, convDone;
  output mxplDone;
  wire   N8, done_, N14, N15, N57, n3, n4, n5, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45,
         n46, n47, n48, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104,
         n105, n106, n107, n108, n109, n110, n111, n112, n113, n114, n115,
         n116, n117, n118, n119, n120, n121, n122, n123, n124, n125, n126,
         n127, n128, n129, n130, n131, n132, n133, n134, n135, n136, n137,
         n138, n139, n140, n141, n142, n143, n144, n145, n146, n147, n148,
         n149, n150, n151, n152, n153, n154, n155, n156, n157, n158, n159,
         n160, n161, n162;
  wire   [19:0] A;
  wire   [1:0] count;

  MXPL_SUB_0_DW_cmp_0 gt_45 ( .A(A), .B(result), .GE_LT_GT_LE(N8) );
  DFFQX1 count_reg_1_ ( .D(N15), .CK(clk), .Q(count[1]) );
  EDFFTRX1 A_reg_19_ ( .RN(n27), .D(data[19]), .E(n26), .CK(clk), .Q(A[19]), 
        .QN(n162) );
  EDFFTRX1 A_reg_18_ ( .RN(n27), .D(data[18]), .E(n26), .CK(clk), .Q(A[18]), 
        .QN(n161) );
  EDFFTRX1 A_reg_15_ ( .RN(n27), .D(data[15]), .E(n26), .CK(clk), .Q(A[15]), 
        .QN(n158) );
  DFFQX1 B_reg_15_ ( .D(n101), .CK(clk), .Q(result[15]) );
  DFFQX1 B_reg_18_ ( .D(n98), .CK(clk), .Q(result[18]) );
  DFFQX1 B_reg_19_ ( .D(n97), .CK(clk), .Q(result[19]) );
  EDFFTRX1 A_reg_0_ ( .RN(n28), .D(data[0]), .E(n26), .CK(clk), .Q(A[0]), .QN(
        n143) );
  EDFFTRX1 A_reg_17_ ( .RN(n27), .D(data[17]), .E(n26), .CK(clk), .Q(A[17]), 
        .QN(n160) );
  EDFFTRX1 A_reg_14_ ( .RN(n27), .D(data[14]), .E(n26), .CK(clk), .Q(A[14]), 
        .QN(n157) );
  EDFFTRX1 A_reg_5_ ( .RN(n27), .D(data[5]), .E(n26), .CK(clk), .Q(A[5]), .QN(
        n148) );
  EDFFTRX1 A_reg_1_ ( .RN(n28), .D(data[1]), .E(n26), .CK(clk), .Q(A[1]), .QN(
        n144) );
  EDFFTRX1 A_reg_4_ ( .RN(n27), .D(data[4]), .E(n26), .CK(clk), .Q(A[4]), .QN(
        n147) );
  EDFFTRX1 A_reg_16_ ( .RN(n27), .D(data[16]), .E(n26), .CK(clk), .Q(A[16]), 
        .QN(n159) );
  EDFFTRX1 A_reg_2_ ( .RN(n28), .D(data[2]), .E(n26), .CK(clk), .Q(A[2]), .QN(
        n145) );
  EDFFTRX1 A_reg_10_ ( .RN(n27), .D(data[10]), .E(n26), .CK(clk), .Q(A[10]), 
        .QN(n153) );
  EDFFTRX1 A_reg_3_ ( .RN(n28), .D(data[3]), .E(n26), .CK(clk), .Q(A[3]), .QN(
        n146) );
  EDFFTRX1 A_reg_13_ ( .RN(n27), .D(data[13]), .E(n26), .CK(clk), .Q(A[13]), 
        .QN(n156) );
  EDFFTRX1 A_reg_9_ ( .RN(n27), .D(data[9]), .E(n26), .CK(clk), .Q(A[9]), .QN(
        n152) );
  EDFFTRX1 A_reg_6_ ( .RN(n27), .D(data[6]), .E(n26), .CK(clk), .Q(A[6]), .QN(
        n149) );
  DFFQX1 B_reg_0_ ( .D(n116), .CK(clk), .Q(result[0]) );
  DFFQX1 B_reg_1_ ( .D(n115), .CK(clk), .Q(result[1]) );
  DFFQX1 B_reg_4_ ( .D(n112), .CK(clk), .Q(result[4]) );
  DFFQX1 B_reg_6_ ( .D(n110), .CK(clk), .Q(result[6]) );
  DFFQX1 B_reg_9_ ( .D(n107), .CK(clk), .Q(result[9]) );
  DFFQX1 B_reg_13_ ( .D(n103), .CK(clk), .Q(result[13]) );
  DFFQX1 B_reg_2_ ( .D(n114), .CK(clk), .Q(result[2]) );
  DFFQX1 B_reg_16_ ( .D(n100), .CK(clk), .Q(result[16]) );
  DFFQX1 B_reg_3_ ( .D(n113), .CK(clk), .Q(result[3]) );
  DFFQX1 B_reg_10_ ( .D(n106), .CK(clk), .Q(result[10]) );
  DFFQX1 B_reg_5_ ( .D(n111), .CK(clk), .Q(result[5]) );
  DFFQX1 B_reg_14_ ( .D(n102), .CK(clk), .Q(result[14]) );
  DFFQX1 B_reg_17_ ( .D(n99), .CK(clk), .Q(result[17]) );
  EDFFTRX1 A_reg_12_ ( .RN(n27), .D(data[12]), .E(n26), .CK(clk), .Q(A[12]), 
        .QN(n155) );
  EDFFTRX1 A_reg_8_ ( .RN(n27), .D(data[8]), .E(n26), .CK(clk), .Q(A[8]), .QN(
        n151) );
  EDFFTRX1 A_reg_11_ ( .RN(n27), .D(data[11]), .E(n26), .CK(clk), .Q(A[11]), 
        .QN(n154) );
  EDFFTRX1 A_reg_7_ ( .RN(n27), .D(data[7]), .E(n26), .CK(clk), .Q(A[7]), .QN(
        n150) );
  DFFQX1 B_reg_11_ ( .D(n105), .CK(clk), .Q(result[11]) );
  DFFQX1 B_reg_7_ ( .D(n109), .CK(clk), .Q(result[7]) );
  DFFQX1 B_reg_8_ ( .D(n108), .CK(clk), .Q(result[8]) );
  DFFQX1 B_reg_12_ ( .D(n104), .CK(clk), .Q(result[12]) );
  DFFQX1 done__reg ( .D(N57), .CK(clk), .Q(done_) );
  DFFQX1 count_reg_0_ ( .D(N14), .CK(clk), .Q(count[0]) );
  DFFTRX1 done___reg ( .D(done_), .RN(n27), .CK(clk), .Q(mxplDone) );
  NAND2X4 U3 ( .A(n30), .B(n121), .Y(n3) );
  NAND2X4 U4 ( .A(n121), .B(n120), .Y(n4) );
  BUFX4 U7 ( .A(n141), .Y(n5) );
  BUFX4 U8 ( .A(convDone), .Y(n26) );
  CLKBUFX3 U9 ( .A(reset), .Y(n29) );
  INVX3 U10 ( .A(reset), .Y(n27) );
  CLKINVX1 U11 ( .A(reset), .Y(n28) );
  NOR2X1 U12 ( .A(n5), .B(n29), .Y(n121) );
  NAND2X1 U13 ( .A(n118), .B(n27), .Y(N14) );
  NAND2X1 U14 ( .A(n119), .B(n27), .Y(N15) );
  CLKINVX1 U15 ( .A(n120), .Y(n30) );
  OAI221XL U16 ( .A0(n4), .A1(n162), .B0(n3), .B1(n96), .C0(n122), .Y(n97) );
  CLKINVX1 U17 ( .A(data[19]), .Y(n96) );
  NAND2X1 U18 ( .A(result[19]), .B(n5), .Y(n122) );
  OAI221XL U19 ( .A0(n4), .A1(n161), .B0(n3), .B1(n95), .C0(n123), .Y(n98) );
  CLKINVX1 U20 ( .A(data[18]), .Y(n95) );
  NAND2X1 U21 ( .A(result[18]), .B(n5), .Y(n123) );
  OAI221XL U22 ( .A0(n4), .A1(n160), .B0(n3), .B1(n48), .C0(n124), .Y(n99) );
  CLKINVX1 U23 ( .A(data[17]), .Y(n48) );
  NAND2X1 U24 ( .A(result[17]), .B(n5), .Y(n124) );
  OAI221XL U25 ( .A0(n4), .A1(n159), .B0(n3), .B1(n47), .C0(n125), .Y(n100) );
  CLKINVX1 U26 ( .A(data[16]), .Y(n47) );
  NAND2X1 U27 ( .A(result[16]), .B(n5), .Y(n125) );
  OAI221XL U28 ( .A0(n4), .A1(n158), .B0(n3), .B1(n46), .C0(n126), .Y(n101) );
  CLKINVX1 U29 ( .A(data[15]), .Y(n46) );
  NAND2X1 U30 ( .A(result[15]), .B(n5), .Y(n126) );
  OAI221XL U31 ( .A0(n4), .A1(n157), .B0(n3), .B1(n45), .C0(n127), .Y(n102) );
  CLKINVX1 U32 ( .A(data[14]), .Y(n45) );
  NAND2X1 U33 ( .A(result[14]), .B(n5), .Y(n127) );
  OAI221XL U34 ( .A0(n4), .A1(n156), .B0(n3), .B1(n44), .C0(n128), .Y(n103) );
  CLKINVX1 U35 ( .A(data[13]), .Y(n44) );
  NAND2X1 U36 ( .A(result[13]), .B(n5), .Y(n128) );
  OAI221XL U37 ( .A0(n4), .A1(n155), .B0(n3), .B1(n43), .C0(n129), .Y(n104) );
  CLKINVX1 U38 ( .A(data[12]), .Y(n43) );
  NAND2X1 U39 ( .A(result[12]), .B(n5), .Y(n129) );
  OAI221XL U40 ( .A0(n4), .A1(n154), .B0(n3), .B1(n42), .C0(n130), .Y(n105) );
  CLKINVX1 U41 ( .A(data[11]), .Y(n42) );
  NAND2X1 U42 ( .A(result[11]), .B(n5), .Y(n130) );
  OAI221XL U43 ( .A0(n4), .A1(n153), .B0(n3), .B1(n41), .C0(n131), .Y(n106) );
  CLKINVX1 U44 ( .A(data[10]), .Y(n41) );
  NAND2X1 U45 ( .A(result[10]), .B(n5), .Y(n131) );
  OAI221XL U46 ( .A0(n4), .A1(n152), .B0(n3), .B1(n40), .C0(n132), .Y(n107) );
  CLKINVX1 U47 ( .A(data[9]), .Y(n40) );
  NAND2X1 U48 ( .A(result[9]), .B(n5), .Y(n132) );
  OAI221XL U49 ( .A0(n4), .A1(n151), .B0(n3), .B1(n39), .C0(n133), .Y(n108) );
  CLKINVX1 U50 ( .A(data[8]), .Y(n39) );
  NAND2X1 U51 ( .A(result[8]), .B(n5), .Y(n133) );
  OAI221XL U52 ( .A0(n4), .A1(n150), .B0(n3), .B1(n38), .C0(n134), .Y(n109) );
  CLKINVX1 U53 ( .A(data[7]), .Y(n38) );
  NAND2X1 U54 ( .A(result[7]), .B(n5), .Y(n134) );
  OAI221XL U55 ( .A0(n4), .A1(n149), .B0(n3), .B1(n37), .C0(n135), .Y(n110) );
  CLKINVX1 U56 ( .A(data[6]), .Y(n37) );
  NAND2X1 U57 ( .A(result[6]), .B(n5), .Y(n135) );
  OAI221XL U58 ( .A0(n4), .A1(n148), .B0(n3), .B1(n36), .C0(n136), .Y(n111) );
  CLKINVX1 U59 ( .A(data[5]), .Y(n36) );
  NAND2X1 U60 ( .A(result[5]), .B(n5), .Y(n136) );
  OAI221XL U61 ( .A0(n4), .A1(n147), .B0(n3), .B1(n35), .C0(n137), .Y(n112) );
  CLKINVX1 U62 ( .A(data[4]), .Y(n35) );
  NAND2X1 U63 ( .A(result[4]), .B(n5), .Y(n137) );
  OAI221XL U64 ( .A0(n4), .A1(n146), .B0(n3), .B1(n34), .C0(n138), .Y(n113) );
  CLKINVX1 U65 ( .A(data[3]), .Y(n34) );
  NAND2X1 U66 ( .A(result[3]), .B(n5), .Y(n138) );
  OAI221XL U67 ( .A0(n4), .A1(n145), .B0(n3), .B1(n33), .C0(n139), .Y(n114) );
  CLKINVX1 U68 ( .A(data[2]), .Y(n33) );
  NAND2X1 U69 ( .A(result[2]), .B(n5), .Y(n139) );
  OAI221XL U70 ( .A0(n4), .A1(n144), .B0(n3), .B1(n32), .C0(n140), .Y(n115) );
  CLKINVX1 U71 ( .A(data[1]), .Y(n32) );
  NAND2X1 U72 ( .A(result[1]), .B(n5), .Y(n140) );
  OAI221XL U73 ( .A0(n4), .A1(n143), .B0(n3), .B1(n31), .C0(n142), .Y(n116) );
  CLKINVX1 U74 ( .A(data[0]), .Y(n31) );
  NAND2X1 U75 ( .A(result[0]), .B(n5), .Y(n142) );
  NOR4X1 U76 ( .A(n29), .B(count[0]), .C(n119), .D(n118), .Y(N57) );
  NOR3X1 U77 ( .A(N8), .B(n29), .C(n30), .Y(n141) );
  XNOR2X1 U78 ( .A(n26), .B(count[0]), .Y(n118) );
  XOR2X1 U79 ( .A(n117), .B(count[1]), .Y(n119) );
  NAND2X1 U80 ( .A(count[0]), .B(n26), .Y(n117) );
  NAND3X1 U81 ( .A(count[0]), .B(n26), .C(count[1]), .Y(n120) );
endmodule


module CONV ( clk, reset, ready, idata, cdata_rd, busy, iaddr, crd, caddr_rd, 
        cwr, cdata_wr, caddr_wr, csel );
  input [19:0] idata;
  input [19:0] cdata_rd;
  output [11:0] iaddr;
  output [11:0] caddr_rd;
  output [19:0] cdata_wr;
  output [11:0] caddr_wr;
  output [2:0] csel;
  input clk, reset, ready;
  output busy, crd, cwr;
  wire   n160, n161, n162, n163, n164, n165, n166, n167, n168, n169, n170,
         n171, n172, n173, n174, n175, n176, n177, n178, n179, n180, n181,
         n182, n183, n184, n185, n186, n187, n188, n189, n190, n191, n192,
         n193, n194, n195, convDone, convTerm, mxplDone0, state_0_,
         flatAddr_0_, N119, N120, N121, N122, N123, N124, N125, N126, N127,
         N128, N129, N130, N131, N132, N133, N134, N135, N136, N137, N138,
         N139, N140, N141, N142, N143, N144, N145, N146, N147, N148, N149,
         N150, N151, N152, N153, N154, N155, N156, N158, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67,
         n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81,
         n82, n83, n84, n85, n86, n87, n88, n89, n90, n93, n1310, n1320, n1330,
         n1340, n1350, n1360, n1370, n1380, n1390, n1400, n1410, n1420, n1430,
         n1440, n1450, n1460, n1470, n1480, n1490, n1500, n1510, n1520, n1530,
         n1540, n1550, n1560, n157, n1580, n159;
  wire   [11:0] convAddr;
  wire   [19:0] convResult0;
  wire   [19:0] convResult1;
  wire   [19:0] mxplResult0;
  wire   [19:0] mxplResult1;

  CONV_SUB conv0 ( .clk(clk), .reset(n1410), .data(idata), .addrRd(iaddr), 
        .addrWr(convAddr), .resultK0(convResult0), .resultK1(convResult1), 
        .done(convDone), .term(convTerm) );
  MXPL_SUB_1 mxpl0 ( .clk(clk), .reset(n1410), .data(convResult0), .convDone(
        n1400), .result(mxplResult0), .mxplDone(mxplDone0) );
  MXPL_SUB_0 mxpl1 ( .clk(clk), .reset(n1410), .data(convResult1), .convDone(
        n1400), .result(mxplResult1) );
  DFFQX1 state_reg_0_ ( .D(N155), .CK(clk), .Q(state_0_) );
  DFFQX1 mxplSel_reg ( .D(N154), .CK(clk), .Q(flatAddr_0_) );
  DFFQX1 cSel_reg_0_ ( .D(N119), .CK(clk), .Q(n195) );
  DFFQX1 state_reg_1_ ( .D(N156), .CK(clk), .Q(n160) );
  DFFQX1 cAddrWr_reg_0_ ( .D(N142), .CK(clk), .Q(n192) );
  DFFQX1 cAddrWr_reg_1_ ( .D(N143), .CK(clk), .Q(n191) );
  DFFQX1 cAddrWr_reg_2_ ( .D(N144), .CK(clk), .Q(n190) );
  DFFQX1 cAddrWr_reg_3_ ( .D(N145), .CK(clk), .Q(n189) );
  DFFQX1 cAddrWr_reg_4_ ( .D(N146), .CK(clk), .Q(n188) );
  DFFQX1 cAddrWr_reg_5_ ( .D(N147), .CK(clk), .Q(n187) );
  DFFQX1 cAddrWr_reg_7_ ( .D(N149), .CK(clk), .Q(n185) );
  DFFQX1 cAddrWr_reg_8_ ( .D(N150), .CK(clk), .Q(n184) );
  DFFQX1 cAddrWr_reg_9_ ( .D(N151), .CK(clk), .Q(n183) );
  DFFQX1 cAddrWr_reg_10_ ( .D(N152), .CK(clk), .Q(n182) );
  DFFQX1 cAddrWr_reg_11_ ( .D(N153), .CK(clk), .Q(n181) );
  DFFQX1 cDataWr_reg_0_ ( .D(N122), .CK(clk), .Q(n180) );
  DFFQX1 cDataWr_reg_1_ ( .D(N123), .CK(clk), .Q(n179) );
  DFFQX1 cDataWr_reg_2_ ( .D(N124), .CK(clk), .Q(n178) );
  DFFQX1 cDataWr_reg_3_ ( .D(N125), .CK(clk), .Q(n177) );
  DFFQX1 cDataWr_reg_4_ ( .D(N126), .CK(clk), .Q(n176) );
  DFFQX1 cDataWr_reg_5_ ( .D(N127), .CK(clk), .Q(n175) );
  DFFQX1 cDataWr_reg_6_ ( .D(N128), .CK(clk), .Q(n174) );
  DFFQX1 cDataWr_reg_7_ ( .D(N129), .CK(clk), .Q(n173) );
  DFFQX1 cDataWr_reg_8_ ( .D(N130), .CK(clk), .Q(n172) );
  DFFQX1 cDataWr_reg_9_ ( .D(N131), .CK(clk), .Q(n171) );
  DFFQX1 cDataWr_reg_10_ ( .D(N132), .CK(clk), .Q(n170) );
  DFFQX1 cDataWr_reg_11_ ( .D(N133), .CK(clk), .Q(n169) );
  DFFQX1 cDataWr_reg_12_ ( .D(N134), .CK(clk), .Q(n168) );
  DFFQX1 cDataWr_reg_13_ ( .D(N135), .CK(clk), .Q(n167) );
  DFFQX1 cDataWr_reg_14_ ( .D(N136), .CK(clk), .Q(n166) );
  DFFQX1 cDataWr_reg_15_ ( .D(N137), .CK(clk), .Q(n165) );
  DFFQX1 cDataWr_reg_16_ ( .D(N138), .CK(clk), .Q(n164) );
  DFFQX1 cDataWr_reg_17_ ( .D(N139), .CK(clk), .Q(n163) );
  DFFQX1 cDataWr_reg_18_ ( .D(N140), .CK(clk), .Q(n162) );
  DFFQX1 cDataWr_reg_19_ ( .D(N141), .CK(clk), .Q(n161) );
  DFFQX1 cSel_reg_1_ ( .D(N120), .CK(clk), .Q(n194) );
  DFFQX1 cAddrWr_reg_6_ ( .D(N148), .CK(clk), .Q(n186) );
  DFFQX1 cSel_reg_2_ ( .D(N121), .CK(clk), .Q(n193) );
  INVX12 U132 ( .A(1'b1), .Y(crd) );
  CLKINVX1 U134 ( .A(n193), .Y(n159) );
  CLKINVX1 U135 ( .A(reset), .Y(n1420) );
  AOI211X1 U136 ( .A0(n1560), .A1(n89), .B0(n1340), .C0(n1460), .Y(n83) );
  NOR3X6 U137 ( .A(n1430), .B(n1410), .C(n1450), .Y(n93) );
  NOR3X1 U138 ( .A(n1560), .B(n194), .C(n159), .Y(n22) );
  INVX12 U139 ( .A(n159), .Y(csel[2]) );
  BUFX12 U140 ( .A(n186), .Y(caddr_wr[6]) );
  INVX12 U141 ( .A(n157), .Y(csel[1]) );
  INVX3 U142 ( .A(n194), .Y(n157) );
  BUFX12 U143 ( .A(n161), .Y(cdata_wr[19]) );
  BUFX12 U144 ( .A(n162), .Y(cdata_wr[18]) );
  BUFX12 U145 ( .A(n163), .Y(cdata_wr[17]) );
  BUFX12 U146 ( .A(n164), .Y(cdata_wr[16]) );
  BUFX12 U147 ( .A(n165), .Y(cdata_wr[15]) );
  BUFX12 U148 ( .A(n166), .Y(cdata_wr[14]) );
  BUFX12 U149 ( .A(n167), .Y(cdata_wr[13]) );
  BUFX12 U150 ( .A(n168), .Y(cdata_wr[12]) );
  BUFX12 U151 ( .A(n169), .Y(cdata_wr[11]) );
  BUFX12 U152 ( .A(n170), .Y(cdata_wr[10]) );
  BUFX12 U153 ( .A(n171), .Y(cdata_wr[9]) );
  BUFX12 U154 ( .A(n172), .Y(cdata_wr[8]) );
  BUFX12 U155 ( .A(n173), .Y(cdata_wr[7]) );
  BUFX12 U156 ( .A(n174), .Y(cdata_wr[6]) );
  BUFX12 U157 ( .A(n175), .Y(cdata_wr[5]) );
  BUFX12 U158 ( .A(n176), .Y(cdata_wr[4]) );
  BUFX12 U159 ( .A(n177), .Y(cdata_wr[3]) );
  BUFX12 U160 ( .A(n178), .Y(cdata_wr[2]) );
  BUFX12 U161 ( .A(n179), .Y(cdata_wr[1]) );
  BUFX12 U162 ( .A(n180), .Y(cdata_wr[0]) );
  BUFX12 U163 ( .A(n181), .Y(caddr_wr[11]) );
  BUFX12 U164 ( .A(n182), .Y(caddr_wr[10]) );
  BUFX12 U165 ( .A(n183), .Y(caddr_wr[9]) );
  BUFX12 U166 ( .A(n184), .Y(caddr_wr[8]) );
  BUFX12 U167 ( .A(n185), .Y(caddr_wr[7]) );
  BUFX12 U168 ( .A(n187), .Y(caddr_wr[5]) );
  BUFX12 U169 ( .A(n188), .Y(caddr_wr[4]) );
  BUFX12 U170 ( .A(n189), .Y(caddr_wr[3]) );
  BUFX12 U171 ( .A(n190), .Y(caddr_wr[2]) );
  BUFX12 U172 ( .A(n191), .Y(caddr_wr[1]) );
  BUFX12 U173 ( .A(n192), .Y(caddr_wr[0]) );
  AND2X2 U174 ( .A(n1330), .B(n1560), .Y(N158) );
  INVX12 U175 ( .A(N158), .Y(cwr) );
  BUFX12 U176 ( .A(n160), .Y(busy) );
  INVX12 U177 ( .A(n1560), .Y(csel[0]) );
  OAI31X4 U178 ( .A0(n157), .A1(n193), .A2(n195), .B0(n1550), .Y(n28) );
  INVX3 U179 ( .A(n195), .Y(n1560) );
  NOR2BXL U180 ( .AN(busy), .B(state_0_), .Y(n90) );
  INVX4 U181 ( .A(n1420), .Y(n1410) );
  OAI21X1 U182 ( .A0(n1330), .A1(n1340), .B0(n1420), .Y(n33) );
  NAND2X1 U183 ( .A(n28), .B(n1420), .Y(n32) );
  NAND2X1 U184 ( .A(n79), .B(n1420), .Y(n1310) );
  CLKINVX1 U185 ( .A(n84), .Y(n1430) );
  NAND2X1 U186 ( .A(n82), .B(n1420), .Y(n1320) );
  OAI21XL U187 ( .A0(n1400), .A1(n1440), .B0(n88), .Y(n84) );
  OAI211XL U188 ( .A0(n1560), .A1(n157), .B0(n89), .C0(n86), .Y(n88) );
  CLKINVX1 U189 ( .A(convAddr[3]), .Y(n1520) );
  CLKINVX1 U190 ( .A(convAddr[4]), .Y(n1510) );
  CLKINVX1 U191 ( .A(convAddr[2]), .Y(n1530) );
  OAI22XL U192 ( .A0(n32), .A1(n1530), .B0(n33), .B1(n1540), .Y(N143) );
  CLKINVX1 U193 ( .A(convAddr[1]), .Y(n1540) );
  OAI22XL U194 ( .A0(n32), .A1(n1520), .B0(n33), .B1(n1530), .Y(N144) );
  OAI22XL U195 ( .A0(n32), .A1(n1510), .B0(n33), .B1(n1520), .Y(N145) );
  OAI22XL U196 ( .A0(n1490), .A1(n32), .B0(n33), .B1(n1510), .Y(N146) );
  OAI22XL U197 ( .A0(n1500), .A1(n32), .B0(n33), .B1(n1490), .Y(N147) );
  CLKINVX1 U198 ( .A(convAddr[7]), .Y(n1500) );
  NOR2X1 U199 ( .A(n1410), .B(n83), .Y(N119) );
  CLKINVX1 U200 ( .A(n1310), .Y(n1390) );
  INVX3 U201 ( .A(n1310), .Y(n1380) );
  NOR2X1 U202 ( .A(n1410), .B(n1430), .Y(N120) );
  CLKINVX1 U203 ( .A(n83), .Y(n1450) );
  CLKINVX1 U204 ( .A(convAddr[5]), .Y(n1490) );
  NAND3X1 U205 ( .A(n1430), .B(n1450), .C(n1470), .Y(n80) );
  BUFX4 U206 ( .A(n40), .Y(n1350) );
  NOR4X1 U207 ( .A(n84), .B(n83), .C(n1470), .D(n1410), .Y(n40) );
  OAI22XL U208 ( .A0(n1580), .A1(n80), .B0(n81), .B1(n1450), .Y(n79) );
  NOR2X1 U209 ( .A(n1410), .B(n27), .Y(N151) );
  AOI222XL U210 ( .A0(convAddr[9]), .A1(n1330), .B0(convAddr[10]), .B1(n1340), 
        .C0(convAddr[11]), .C1(n28), .Y(n27) );
  NOR2X1 U211 ( .A(n1410), .B(n31), .Y(N148) );
  AOI222XL U212 ( .A0(convAddr[6]), .A1(n1330), .B0(convAddr[7]), .B1(n1340), 
        .C0(convAddr[8]), .C1(n28), .Y(n31) );
  NOR2X1 U213 ( .A(n1410), .B(n30), .Y(N149) );
  AOI222XL U214 ( .A0(convAddr[7]), .A1(n1330), .B0(convAddr[8]), .B1(n1340), 
        .C0(convAddr[9]), .C1(n28), .Y(n30) );
  NOR2X1 U215 ( .A(n1410), .B(n29), .Y(N150) );
  AOI222XL U216 ( .A0(convAddr[8]), .A1(n1330), .B0(convAddr[9]), .B1(n1340), 
        .C0(convAddr[10]), .C1(n28), .Y(n29) );
  CLKINVX1 U217 ( .A(n1320), .Y(n1370) );
  INVX3 U218 ( .A(n1320), .Y(n1360) );
  NOR2X1 U219 ( .A(n1410), .B(n25), .Y(N152) );
  AOI22X1 U220 ( .A0(convAddr[11]), .A1(n1340), .B0(convAddr[10]), .B1(n1330), 
        .Y(n25) );
  NOR2X1 U221 ( .A(n1410), .B(n81), .Y(N121) );
  AND3X2 U222 ( .A(convAddr[11]), .B(n1420), .C(n1330), .Y(N153) );
  CLKINVX1 U223 ( .A(n86), .Y(n1460) );
  CLKINVX1 U224 ( .A(n81), .Y(n1470) );
  CLKINVX1 U225 ( .A(n22), .Y(n1550) );
  CLKBUFX3 U226 ( .A(convDone), .Y(n1400) );
  AOI211X1 U227 ( .A0(n1480), .A1(n21), .B0(n1410), .C0(ready), .Y(N155) );
  CLKINVX1 U228 ( .A(convTerm), .Y(n1480) );
  NAND2X1 U229 ( .A(state_0_), .B(n20), .Y(n21) );
  NOR3X1 U230 ( .A(n23), .B(n1410), .C(mxplDone0), .Y(N154) );
  AOI32XL U231 ( .A0(n1550), .A1(cwr), .A2(flatAddr_0_), .B0(n22), .B1(n1580), 
        .Y(n23) );
  NOR2X1 U232 ( .A(n1410), .B(n19), .Y(N156) );
  AOI211XL U233 ( .A0(n160), .A1(n20), .B0(ready), .C0(convTerm), .Y(n19) );
  OAI32X1 U234 ( .A0(n83), .A1(n1470), .A2(n1430), .B0(flatAddr_0_), .B1(n80), 
        .Y(n82) );
  NOR2X1 U235 ( .A(n1410), .B(n34), .Y(N142) );
  AOI222XL U236 ( .A0(convAddr[0]), .A1(n1330), .B0(flatAddr_0_), .B1(n1340), 
        .C0(convAddr[1]), .C1(n28), .Y(n34) );
  NAND2X1 U237 ( .A(n67), .B(n68), .Y(N127) );
  AOI22X1 U238 ( .A0(mxplResult0[5]), .A1(n1360), .B0(mxplResult1[5]), .B1(
        n1380), .Y(n68) );
  AOI22X1 U239 ( .A0(convResult1[5]), .A1(n93), .B0(convResult0[5]), .B1(n1350), .Y(n67) );
  NAND2X1 U240 ( .A(n61), .B(n62), .Y(N130) );
  AOI22X1 U241 ( .A0(mxplResult0[8]), .A1(n1360), .B0(mxplResult1[8]), .B1(
        n1380), .Y(n62) );
  AOI22X1 U242 ( .A0(convResult1[8]), .A1(n93), .B0(convResult0[8]), .B1(n1350), .Y(n61) );
  NAND2X1 U243 ( .A(n53), .B(n54), .Y(N134) );
  AOI22X1 U244 ( .A0(mxplResult0[12]), .A1(n1370), .B0(mxplResult1[12]), .B1(
        n1390), .Y(n54) );
  AOI22X1 U245 ( .A0(convResult1[12]), .A1(n93), .B0(convResult0[12]), .B1(
        n1350), .Y(n53) );
  NAND2X1 U246 ( .A(n49), .B(n50), .Y(N136) );
  AOI22X1 U247 ( .A0(mxplResult0[14]), .A1(n1360), .B0(mxplResult1[14]), .B1(
        n1380), .Y(n50) );
  AOI22X1 U248 ( .A0(convResult1[14]), .A1(n93), .B0(convResult0[14]), .B1(
        n1350), .Y(n49) );
  NAND2X1 U249 ( .A(n43), .B(n44), .Y(N139) );
  AOI22X1 U250 ( .A0(mxplResult0[17]), .A1(n1360), .B0(mxplResult1[17]), .B1(
        n1380), .Y(n44) );
  AOI22X1 U251 ( .A0(convResult1[17]), .A1(n93), .B0(convResult0[17]), .B1(
        n1350), .Y(n43) );
  NAND2X1 U252 ( .A(n71), .B(n72), .Y(N125) );
  AOI22X1 U253 ( .A0(mxplResult0[3]), .A1(n1370), .B0(mxplResult1[3]), .B1(
        n1390), .Y(n72) );
  AOI22X1 U254 ( .A0(convResult1[3]), .A1(n93), .B0(convResult0[3]), .B1(n1350), .Y(n71) );
  NAND2X1 U255 ( .A(n57), .B(n58), .Y(N132) );
  AOI22X1 U256 ( .A0(mxplResult0[10]), .A1(n1360), .B0(mxplResult1[10]), .B1(
        n1380), .Y(n58) );
  AOI22X1 U257 ( .A0(convResult1[10]), .A1(n93), .B0(convResult0[10]), .B1(
        n1350), .Y(n57) );
  NAND2X1 U258 ( .A(n73), .B(n74), .Y(N124) );
  AOI22X1 U259 ( .A0(mxplResult0[2]), .A1(n1370), .B0(mxplResult1[2]), .B1(
        n1390), .Y(n74) );
  AOI22X1 U260 ( .A0(convResult1[2]), .A1(n93), .B0(convResult0[2]), .B1(n1350), .Y(n73) );
  NAND2X1 U261 ( .A(n63), .B(n64), .Y(N129) );
  AOI22X1 U262 ( .A0(mxplResult0[7]), .A1(n1370), .B0(mxplResult1[7]), .B1(
        n1390), .Y(n64) );
  AOI22X1 U263 ( .A0(convResult1[7]), .A1(n93), .B0(convResult0[7]), .B1(n1350), .Y(n63) );
  NAND2X1 U264 ( .A(n45), .B(n46), .Y(N138) );
  AOI22X1 U265 ( .A0(mxplResult0[16]), .A1(n1370), .B0(mxplResult1[16]), .B1(
        n1390), .Y(n46) );
  AOI22X1 U266 ( .A0(convResult1[16]), .A1(n93), .B0(convResult0[16]), .B1(
        n1350), .Y(n45) );
  NAND2X1 U267 ( .A(n75), .B(n76), .Y(N123) );
  AOI22X1 U268 ( .A0(mxplResult0[1]), .A1(n1360), .B0(mxplResult1[1]), .B1(
        n1380), .Y(n76) );
  AOI22X1 U269 ( .A0(convResult1[1]), .A1(n93), .B0(convResult0[1]), .B1(n1350), .Y(n75) );
  NAND2X1 U270 ( .A(n69), .B(n70), .Y(N126) );
  AOI22X1 U271 ( .A0(mxplResult0[4]), .A1(n1360), .B0(mxplResult1[4]), .B1(
        n1380), .Y(n70) );
  AOI22X1 U272 ( .A0(convResult1[4]), .A1(n93), .B0(convResult0[4]), .B1(n1350), .Y(n69) );
  NAND2X1 U273 ( .A(n65), .B(n66), .Y(N128) );
  AOI22X1 U274 ( .A0(mxplResult0[6]), .A1(n1360), .B0(mxplResult1[6]), .B1(
        n1380), .Y(n66) );
  AOI22X1 U275 ( .A0(convResult1[6]), .A1(n93), .B0(convResult0[6]), .B1(n1350), .Y(n65) );
  NAND2X1 U276 ( .A(n59), .B(n60), .Y(N131) );
  AOI22X1 U277 ( .A0(mxplResult0[9]), .A1(n1360), .B0(mxplResult1[9]), .B1(
        n1380), .Y(n60) );
  AOI22X1 U278 ( .A0(convResult1[9]), .A1(n93), .B0(convResult0[9]), .B1(n1350), .Y(n59) );
  NAND2X1 U279 ( .A(n55), .B(n56), .Y(N133) );
  AOI22X1 U280 ( .A0(mxplResult0[11]), .A1(n1370), .B0(mxplResult1[11]), .B1(
        n1390), .Y(n56) );
  AOI22X1 U281 ( .A0(convResult1[11]), .A1(n93), .B0(convResult0[11]), .B1(
        n1350), .Y(n55) );
  NAND2X1 U282 ( .A(n51), .B(n52), .Y(N135) );
  AOI22X1 U283 ( .A0(mxplResult0[13]), .A1(n1360), .B0(mxplResult1[13]), .B1(
        n1380), .Y(n52) );
  AOI22X1 U284 ( .A0(convResult1[13]), .A1(n93), .B0(convResult0[13]), .B1(
        n1350), .Y(n51) );
  NAND2X1 U285 ( .A(n47), .B(n48), .Y(N137) );
  AOI22X1 U286 ( .A0(mxplResult0[15]), .A1(n1360), .B0(mxplResult1[15]), .B1(
        n1380), .Y(n48) );
  AOI22X1 U287 ( .A0(convResult1[15]), .A1(n93), .B0(convResult0[15]), .B1(
        n1350), .Y(n47) );
  NAND2X1 U288 ( .A(n41), .B(n42), .Y(N140) );
  AOI22X1 U289 ( .A0(mxplResult0[18]), .A1(n1360), .B0(mxplResult1[18]), .B1(
        n1380), .Y(n42) );
  AOI22X1 U290 ( .A0(convResult1[18]), .A1(n93), .B0(convResult0[18]), .B1(
        n1350), .Y(n41) );
  NAND2X1 U291 ( .A(n35), .B(n36), .Y(N141) );
  AOI22X1 U292 ( .A0(mxplResult0[19]), .A1(n1360), .B0(mxplResult1[19]), .B1(
        n1380), .Y(n36) );
  AOI22X1 U293 ( .A0(convResult1[19]), .A1(n93), .B0(convResult0[19]), .B1(
        n1350), .Y(n35) );
  NAND2X1 U294 ( .A(n77), .B(n78), .Y(N122) );
  AOI22X1 U295 ( .A0(mxplResult0[0]), .A1(n1360), .B0(mxplResult1[0]), .B1(
        n1380), .Y(n78) );
  AOI22X1 U296 ( .A0(convResult1[0]), .A1(n93), .B0(convResult0[0]), .B1(n1350), .Y(n77) );
  CLKBUFX3 U297 ( .A(n24), .Y(n1330) );
  NOR2XL U298 ( .A(n194), .B(n193), .Y(n24) );
  NAND4XL U299 ( .A(state_0_), .B(flatAddr_0_), .C(n22), .D(n160), .Y(n20) );
  OAI21X1 U300 ( .A0(n1340), .A1(n85), .B0(n86), .Y(n81) );
  AND2XL U301 ( .A(n87), .B(n193), .Y(n85) );
  OAI21XL U302 ( .A0(flatAddr_0_), .A1(n194), .B0(n195), .Y(n87) );
  CLKINVX1 U303 ( .A(mxplDone0), .Y(n1440) );
  OAI2BB2XL U304 ( .B0(n159), .B1(n157), .A0N(n1330), .A1N(n195), .Y(n89) );
  NOR2X1 U305 ( .A(n1400), .B(mxplDone0), .Y(n86) );
  CLKBUFX3 U306 ( .A(n26), .Y(n1340) );
  OAI33XL U307 ( .A0(n157), .A1(n193), .A2(n1560), .B0(n159), .B1(n194), .B2(
        n195), .Y(n26) );
  CLKINVX1 U308 ( .A(flatAddr_0_), .Y(n1580) );
endmodule

