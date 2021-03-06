
// Generated by Cadence Encounter(R) RTL Compiler RC11.22 - v11.20-s017_1

// Verification Directory fv/SARTimerVerilog 

module SARTimerVerilog_DATA8(Reset, ClockT, StateP, SAROut, SAROutI);
  input Reset, ClockT;
  input [1:0] StateP;
  input [7:0] SAROut;
  output [7:0] SAROutI;
  wire Reset, ClockT;
  wire [1:0] StateP;
  wire [7:0] SAROut;
  wire [7:0] SAROutI;
  wire N1, N2, N3, N4, N5, N6, N8, N9;
  wire N10, N11, N20, UNCONNECTED, UNCONNECTED0, UNCONNECTED1,
       UNCONNECTED2, UNCONNECTED3;
  wire UNCONNECTED4, UNCONNECTED5, UNCONNECTED6;
  DFFSBN \SAROutI_reg[0] (.SB (N11), .CK (ClockT), .D (N1), .Q
       (SAROutI[0]), .QB (UNCONNECTED));
  DFFSBN \SAROutI_reg[1] (.SB (N11), .CK (ClockT), .D (N10), .Q
       (SAROutI[1]), .QB (UNCONNECTED0));
  DFFSBN \SAROutI_reg[2] (.SB (N11), .CK (ClockT), .D (N6), .Q
       (SAROutI[2]), .QB (UNCONNECTED1));
  DFFSBN \SAROutI_reg[7] (.SB (N11), .CK (ClockT), .D (N5), .Q (N20),
       .QB (UNCONNECTED2));
  DFFSBN \SAROutI_reg[3] (.SB (N11), .CK (ClockT), .D (N4), .Q
       (SAROutI[3]), .QB (UNCONNECTED3));
  DFFSBN \SAROutI_reg[4] (.SB (N11), .CK (ClockT), .D (N3), .Q
       (SAROutI[4]), .QB (UNCONNECTED4));
  DFFSBP \SAROutI_reg[5] (.SB (N11), .CK (ClockT), .D (N2), .Q
       (SAROutI[5]), .QB (UNCONNECTED5));
  DFFSBT \SAROutI_reg[6] (.SB (N11), .CK (ClockT), .D (N8), .Q
       (SAROutI[6]), .QB (UNCONNECTED6));
  MOAI1S g252(.A1 (N9), .A2 (SAROut[1]), .B1 (SAROutI[1]), .B2 (N9), .O
       (N10));
  MOAI1S g253(.A1 (N9), .A2 (SAROut[6]), .B1 (SAROutI[6]), .B2 (N9), .O
       (N8));
  MOAI1S g247(.A1 (N9), .A2 (SAROut[2]), .B1 (SAROutI[2]), .B2 (N9), .O
       (N6));
  MOAI1S g254(.A1 (N9), .A2 (SAROut[7]), .B1 (N20), .B2 (N9), .O (N5));
  MOAI1S g248(.A1 (N9), .A2 (SAROut[3]), .B1 (SAROutI[3]), .B2 (N9), .O
       (N4));
  MOAI1S g249(.A1 (N9), .A2 (SAROut[4]), .B1 (SAROutI[4]), .B2 (N9), .O
       (N3));
  MOAI1S g250(.A1 (N9), .A2 (SAROut[5]), .B1 (SAROutI[5]), .B2 (N9), .O
       (N2));
  MOAI1S g251(.A1 (N9), .A2 (SAROut[0]), .B1 (SAROutI[0]), .B2 (N9), .O
       (N1));
  XOR2 g255(.I1 (StateP[1]), .I2 (StateP[0]), .O (N9));
  BUF6CK g258(.I (N20), .O (SAROutI[7]));
  INV1S g256(.I (Reset), .O (N11));
endmodule

