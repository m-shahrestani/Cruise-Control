////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: control_map.v
// /___/   /\     Timestamp: Wed Sep 09 23:31:22 2020
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -s 5 -pcf control.pcf -sdf_anno true -sdf_path netgen/map -insert_glbl true -w -dir netgen/map -ofmt verilog -sim control_map.ncd control_map.v 
// Device	: 3s400pq208-5 (PRODUCTION 1.39 2013-10-13)
// Input file	: control_map.ncd
// Output file	: D:\university\term4\amini\lab\codes\project_final\netgen\map\control_map.v
// # of Modules	: 1
// Design Name	: control
// Xilinx        : D:\ISE\14.7\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module control (
  eq, gt, lt, tormoz, clock, pashesh, vout, changewire, vfeli, hooshyari, change, speed
);
  output eq;
  output gt;
  output lt;
  output tormoz;
  input clock;
  output [2 : 0] pashesh;
  output [7 : 0] vout;
  output [1 : 0] changewire;
  input [7 : 0] vfeli;
  input [2 : 0] hooshyari;
  input [1 : 0] change;
  input [7 : 0] speed;
  wire clock_BUFGP;
  wire nxtstate_not0001;
  wire change_0_IBUF_340;
  wire change_1_IBUF_341;
  wire vfeli_0_IBUF_343;
  wire vfeli_1_IBUF_345;
  wire speed_0_IBUF_347;
  wire vfeli_2_IBUF_348;
  wire speed_1_IBUF_350;
  wire vfeli_3_IBUF_351;
  wire speed_2_IBUF_353;
  wire vfeli_4_IBUF_354;
  wire speed_3_IBUF_356;
  wire vfeli_5_IBUF_357;
  wire speed_4_IBUF_359;
  wire \clock_BUFGP/IBUFG_360 ;
  wire vfeli_6_IBUF_361;
  wire speed_5_IBUF_364;
  wire vfeli_7_IBUF_365;
  wire speed_6_IBUF_368;
  wire speed_7_IBUF_371;
  wire hooshyari_0_IBUF_372;
  wire hooshyari_1_IBUF_373;
  wire hooshyari_2_IBUF_374;
  wire \m1/lt_376 ;
  wire \m1/gt_377 ;
  wire \m1/eq_378 ;
  wire \m1/e1/c4/gt43_0 ;
  wire \m1/e1/c4/lt43_0 ;
  wire N13;
  wire \m1/e1/c7/gt54_0 ;
  wire \m1/e1/c7/gt21_387 ;
  wire \m1/e1/c8/eq26_0 ;
  wire \m1/e1/c7/gt47_389 ;
  wire \m1/e1/c8/eq53_0 ;
  wire \m1/e1/c8/eq99_0 ;
  wire N01;
  wire \m1/e1/c7/lt49_0 ;
  wire \m1/e1/c7/lt21_394 ;
  wire \m1/e1/c7/lt43_395 ;
  wire N17;
  wire \m1/e1/c8/eq132_400 ;
  wire \eq/O ;
  wire \tormoz/O ;
  wire \lt/O ;
  wire \gt/O ;
  wire \change<0>/INBUF ;
  wire \changewire<0>/O ;
  wire \changewire<1>/O ;
  wire \change<1>/INBUF ;
  wire \vfeli<0>/INBUF ;
  wire \speed<3>/INBUF ;
  wire \vfeli<4>/INBUF ;
  wire \speed<0>/INBUF ;
  wire \speed<2>/INBUF ;
  wire \vfeli<2>/INBUF ;
  wire \vout<1>/O ;
  wire \vfeli<1>/INBUF ;
  wire \vfeli<3>/INBUF ;
  wire \speed<1>/INBUF ;
  wire \vout<0>/O ;
  wire \vfeli<5>/INBUF ;
  wire \speed<5>/INBUF ;
  wire \vout<2>/O ;
  wire \pashesh<0>/O ;
  wire \vout<3>/O ;
  wire \clock/INBUF ;
  wire \vfeli<6>/INBUF ;
  wire \speed<4>/INBUF ;
  wire \vout<4>/O ;
  wire \hooshyari<1>/INBUF ;
  wire \speed<6>/INBUF ;
  wire \pashesh<1>/O ;
  wire \pashesh<2>/O ;
  wire \vfeli<7>/INBUF ;
  wire \speed<7>/INBUF ;
  wire \vout<6>/O ;
  wire \vout<7>/O ;
  wire \vout<5>/O ;
  wire \hooshyari<0>/INBUF ;
  wire \m1/gt/DXMUX_977 ;
  wire \m1/gt/FXMUX_976 ;
  wire \m1/g ;
  wire \m1/e1/c7/gt21_pack_1 ;
  wire \m1/gt/CLKINV_962 ;
  wire tormoz_mux0000;
  wire N01_pack_1;
  wire \nxtstate_not0001/F5MUX_842 ;
  wire \nxtstate_not0001/F ;
  wire \nxtstate_not0001/BXINV_831 ;
  wire nxtstate_not00011_829;
  wire \m1/e1/g<3>/F5MUX_867 ;
  wire \m1/e1/c4/gt70 ;
  wire \m1/e1/g<3>/BXINV_860 ;
  wire \m1/e1/c4/gt701_858 ;
  wire \changewire_1_OBUF/F5MUX_917 ;
  wire change_1_IBUF_rt_915;
  wire \changewire_1_OBUF/BXINV_907 ;
  wire \changewire<1>1_905 ;
  wire \m1/e1/c7/gt54_1026 ;
  wire \m1/e1/c7/gt47_pack_1 ;
  wire \m1/e1/c7/lt49_1129 ;
  wire \m1/e1/c7/lt43_pack_1 ;
  wire \m1/e1/c8/eq53_1038 ;
  wire changewire_0_OBUF_947;
  wire \nxtstate<1>/DYMUX_939 ;
  wire \nxtstate<1>/GYMUX_938 ;
  wire \nxtstate<1>/CLKINVNOT ;
  wire \clock_BUFGP/BUFG/S_INVNOT ;
  wire \m1/e1/c8/eq99_1050 ;
  wire \nxtstate<0>/DXMUX_1159 ;
  wire \nxtstate<0>/FXMUX_1158 ;
  wire N17_pack_1;
  wire \nxtstate<0>/CLKINVNOT ;
  wire \m1/e1/l<3>/F5MUX_892 ;
  wire \m1/e1/c4/lt70 ;
  wire \m1/e1/l<3>/BXINV_885 ;
  wire \m1/e1/c4/lt701_883 ;
  wire \m1/lt/DXMUX_1104 ;
  wire \m1/lt/FXMUX_1103 ;
  wire \m1/l ;
  wire \m1/e1/c7/lt21_pack_1 ;
  wire \m1/lt/CLKINV_1089 ;
  wire \m1/e1/c4/gt43_1002 ;
  wire \m1/e1/c8/eq26_995 ;
  wire \hooshyari<2>/INBUF ;
  wire \m1/e1/c4/lt43_1172 ;
  wire \m1/eq/DXMUX_1202 ;
  wire \m1/eq/FXMUX_1201 ;
  wire \m1/e ;
  wire \m1/e1/c8/eq132_pack_1 ;
  wire \m1/eq/CLKINV_1187 ;
  wire \nxtstate<2>/DXMUX_1249 ;
  wire \nxtstate<2>/FXMUX_1248 ;
  wire N13_pack_2;
  wire \nxtstate<2>/CLKINVNOT ;
  wire \prstate<2>/DYMUX_1258 ;
  wire \prstate<2>/CLKINV_1256 ;
  wire \prstate<1>/DXMUX_1218 ;
  wire \prstate<1>/DYMUX_1213 ;
  wire \prstate<1>/CLKINV_1211 ;
  wire \eq/OUTPUT/OTCLK1INV_410 ;
  wire \m1/eq_1_416 ;
  wire \eq/OUTPUT/OFF/O1INV_413 ;
  wire \lt/OUTPUT/OTCLK1INV_458 ;
  wire \tormoz/OUTPUT/OTCLK1INVNOT ;
  wire tormoz_OBUF_448;
  wire \tormoz/OUTPUT/OFF/O1INV_445 ;
  wire \m1/lt_1_464 ;
  wire \lt/OUTPUT/OFF/O1INV_461 ;
  wire \gt/OUTPUT/OFF/O1INV_429 ;
  wire \m1/gt_1_432 ;
  wire \gt/OUTPUT/OTCLK1INV_426 ;
  wire \speed<0>/IFF/ICLK1INV_517 ;
  wire \speed<0>/IFF/IFFDMUX_515 ;
  wire \speed<1>/IFF/ICLK1INV_540 ;
  wire \speed<1>/IFF/IFFDMUX_538 ;
  wire \speed<2>/IFF/ICLK1INV_571 ;
  wire \speed<2>/IFF/IFFDMUX_569 ;
  wire \speed<4>/IFF/ICLK1INV_633 ;
  wire \speed<4>/IFF/IFFDMUX_631 ;
  wire \speed<3>/IFF/ICLK1INV_602 ;
  wire \speed<3>/IFF/IFFDMUX_600 ;
  wire \pashesh<1>/OUTPUT/OTCLK1INVNOT ;
  wire \speed<6>/IFF/ICLK1INV_733 ;
  wire \speed<6>/IFF/IFFDMUX_731 ;
  wire \pashesh<0>/OUTPUT/OTCLK1INVNOT ;
  wire \pashesh<2>/OUTPUT/OTCLK1INVNOT ;
  wire nxtstate_1_1_720;
  wire \pashesh<1>/OUTPUT/OFF/O1INV_717 ;
  wire nxtstate_0_1_673;
  wire \pashesh<0>/OUTPUT/OFF/O1INV_670 ;
  wire nxtstate_2_1_761;
  wire \pashesh<2>/OUTPUT/OFF/O1INV_758 ;
  wire \speed<5>/IFF/ICLK1INV_686 ;
  wire \speed<5>/IFF/IFFDMUX_684 ;
  wire \speed<7>/IFF/ICLK1INV_774 ;
  wire \speed<7>/IFF/IFFDMUX_772 ;
  wire GND;
  wire VCC;
  wire \NlwInverterSignal_tormoz/CLK ;
  wire \NlwInverterSignal_nxtstate_1_1/CLK ;
  wire \NlwInverterSignal_nxtstate_0_1/CLK ;
  wire \NlwInverterSignal_nxtstate_2_1/CLK ;
  wire \NlwInverterSignal_nxtstate_1/CLK ;
  wire \NlwInverterSignal_nxtstate_0/CLK ;
  wire \NlwInverterSignal_nxtstate_2/CLK ;
  wire [7 : 0] \m1/vout ;
  wire [3 : 3] \m1/e1/g ;
  wire [3 : 3] \m1/e1/l ;
  wire [2 : 0] prstate;
  wire [2 : 0] nxtstate;
  wire [2 : 0] nxtstate_mux0000;
  initial $sdf_annotate("netgen/map/control_map.sdf");
  X_OPAD   \eq/PAD  (
    .PAD(eq)
  );
  X_OBUF   eq_OBUF (
    .I(\eq/O ),
    .O(eq)
  );
  X_OPAD   \tormoz/PAD  (
    .PAD(tormoz)
  );
  X_OBUF   tormoz_OBUF (
    .I(\tormoz/O ),
    .O(tormoz)
  );
  X_OPAD   \lt/PAD  (
    .PAD(lt)
  );
  X_OBUF   lt_OBUF (
    .I(\lt/O ),
    .O(lt)
  );
  X_OPAD   \gt/PAD  (
    .PAD(gt)
  );
  X_OBUF   gt_OBUF (
    .I(\gt/O ),
    .O(gt)
  );
  X_IPAD   \change<0>/PAD  (
    .PAD(change[0])
  );
  X_BUF   change_0_IBUF (
    .I(change[0]),
    .O(\change<0>/INBUF )
  );
  X_OPAD   \changewire<0>/PAD  (
    .PAD(changewire[0])
  );
  X_OBUF   changewire_0_OBUF (
    .I(\changewire<0>/O ),
    .O(changewire[0])
  );
  X_OPAD   \changewire<1>/PAD  (
    .PAD(changewire[1])
  );
  X_OBUF   changewire_1_OBUF (
    .I(\changewire<1>/O ),
    .O(changewire[1])
  );
  X_IPAD   \change<1>/PAD  (
    .PAD(change[1])
  );
  X_BUF   change_1_IBUF (
    .I(change[1]),
    .O(\change<1>/INBUF )
  );
  X_IPAD   \vfeli<0>/PAD  (
    .PAD(vfeli[0])
  );
  X_BUF   vfeli_0_IBUF (
    .I(vfeli[0]),
    .O(\vfeli<0>/INBUF )
  );
  X_IPAD   \speed<3>/PAD  (
    .PAD(speed[3])
  );
  X_BUF   speed_3_IBUF (
    .I(speed[3]),
    .O(\speed<3>/INBUF )
  );
  X_IPAD   \vfeli<4>/PAD  (
    .PAD(vfeli[4])
  );
  X_BUF   vfeli_4_IBUF (
    .I(vfeli[4]),
    .O(\vfeli<4>/INBUF )
  );
  X_IPAD   \speed<0>/PAD  (
    .PAD(speed[0])
  );
  X_BUF   speed_0_IBUF (
    .I(speed[0]),
    .O(\speed<0>/INBUF )
  );
  X_IPAD   \speed<2>/PAD  (
    .PAD(speed[2])
  );
  X_BUF   speed_2_IBUF (
    .I(speed[2]),
    .O(\speed<2>/INBUF )
  );
  X_IPAD   \vfeli<2>/PAD  (
    .PAD(vfeli[2])
  );
  X_BUF   vfeli_2_IBUF (
    .I(vfeli[2]),
    .O(\vfeli<2>/INBUF )
  );
  X_OPAD   \vout<1>/PAD  (
    .PAD(vout[1])
  );
  X_OBUF   vout_1_OBUF (
    .I(\vout<1>/O ),
    .O(vout[1])
  );
  X_IPAD   \vfeli<1>/PAD  (
    .PAD(vfeli[1])
  );
  X_BUF   vfeli_1_IBUF (
    .I(vfeli[1]),
    .O(\vfeli<1>/INBUF )
  );
  X_IPAD   \vfeli<3>/PAD  (
    .PAD(vfeli[3])
  );
  X_BUF   vfeli_3_IBUF (
    .I(vfeli[3]),
    .O(\vfeli<3>/INBUF )
  );
  X_IPAD   \speed<1>/PAD  (
    .PAD(speed[1])
  );
  X_BUF   speed_1_IBUF (
    .I(speed[1]),
    .O(\speed<1>/INBUF )
  );
  X_OPAD   \vout<0>/PAD  (
    .PAD(vout[0])
  );
  X_OBUF   vout_0_OBUF (
    .I(\vout<0>/O ),
    .O(vout[0])
  );
  X_IPAD   \vfeli<5>/PAD  (
    .PAD(vfeli[5])
  );
  X_BUF   vfeli_5_IBUF (
    .I(vfeli[5]),
    .O(\vfeli<5>/INBUF )
  );
  X_IPAD   \speed<5>/PAD  (
    .PAD(speed[5])
  );
  X_BUF   speed_5_IBUF (
    .I(speed[5]),
    .O(\speed<5>/INBUF )
  );
  X_OPAD   \vout<2>/PAD  (
    .PAD(vout[2])
  );
  X_OBUF   vout_2_OBUF (
    .I(\vout<2>/O ),
    .O(vout[2])
  );
  X_OPAD   \pashesh<0>/PAD  (
    .PAD(pashesh[0])
  );
  X_OBUF   pashesh_0_OBUF (
    .I(\pashesh<0>/O ),
    .O(pashesh[0])
  );
  X_OPAD   \vout<3>/PAD  (
    .PAD(vout[3])
  );
  X_OBUF   vout_3_OBUF (
    .I(\vout<3>/O ),
    .O(vout[3])
  );
  X_IPAD   \clock/PAD  (
    .PAD(clock)
  );
  X_BUF   \clock_BUFGP/IBUFG  (
    .I(clock),
    .O(\clock/INBUF )
  );
  X_IPAD   \vfeli<6>/PAD  (
    .PAD(vfeli[6])
  );
  X_BUF   vfeli_6_IBUF (
    .I(vfeli[6]),
    .O(\vfeli<6>/INBUF )
  );
  X_IPAD   \speed<4>/PAD  (
    .PAD(speed[4])
  );
  X_BUF   speed_4_IBUF (
    .I(speed[4]),
    .O(\speed<4>/INBUF )
  );
  X_OPAD   \vout<4>/PAD  (
    .PAD(vout[4])
  );
  X_OBUF   vout_4_OBUF (
    .I(\vout<4>/O ),
    .O(vout[4])
  );
  X_IPAD   \hooshyari<1>/PAD  (
    .PAD(hooshyari[1])
  );
  X_BUF   hooshyari_1_IBUF (
    .I(hooshyari[1]),
    .O(\hooshyari<1>/INBUF )
  );
  X_IPAD   \speed<6>/PAD  (
    .PAD(speed[6])
  );
  X_BUF   speed_6_IBUF (
    .I(speed[6]),
    .O(\speed<6>/INBUF )
  );
  X_OPAD   \pashesh<1>/PAD  (
    .PAD(pashesh[1])
  );
  X_OBUF   pashesh_1_OBUF (
    .I(\pashesh<1>/O ),
    .O(pashesh[1])
  );
  X_OPAD   \pashesh<2>/PAD  (
    .PAD(pashesh[2])
  );
  X_OBUF   pashesh_2_OBUF (
    .I(\pashesh<2>/O ),
    .O(pashesh[2])
  );
  X_IPAD   \vfeli<7>/PAD  (
    .PAD(vfeli[7])
  );
  X_BUF   vfeli_7_IBUF (
    .I(vfeli[7]),
    .O(\vfeli<7>/INBUF )
  );
  X_IPAD   \speed<7>/PAD  (
    .PAD(speed[7])
  );
  X_BUF   speed_7_IBUF (
    .I(speed[7]),
    .O(\speed<7>/INBUF )
  );
  X_OPAD   \vout<6>/PAD  (
    .PAD(vout[6])
  );
  X_OBUF   vout_6_OBUF (
    .I(\vout<6>/O ),
    .O(vout[6])
  );
  X_OPAD   \vout<7>/PAD  (
    .PAD(vout[7])
  );
  X_OBUF   vout_7_OBUF (
    .I(\vout<7>/O ),
    .O(vout[7])
  );
  X_OPAD   \vout<5>/PAD  (
    .PAD(vout[5])
  );
  X_OBUF   vout_5_OBUF (
    .I(\vout<5>/O ),
    .O(vout[5])
  );
  X_IPAD   \hooshyari<0>/PAD  (
    .PAD(hooshyari[0])
  );
  X_BUF   hooshyari_0_IBUF (
    .I(hooshyari[0]),
    .O(\hooshyari<0>/INBUF )
  );
  X_BUF   \m1/gt/DXMUX  (
    .I(\m1/gt/FXMUX_976 ),
    .O(\m1/gt/DXMUX_977 )
  );
  X_BUF   \m1/gt/FXMUX  (
    .I(\m1/g ),
    .O(\m1/gt/FXMUX_976 )
  );
  X_BUF   \m1/gt/YUSED  (
    .I(\m1/e1/c7/gt21_pack_1 ),
    .O(\m1/e1/c7/gt21_387 )
  );
  X_BUF   \m1/gt/CLKINV  (
    .I(clock_BUFGP),
    .O(\m1/gt/CLKINV_962 )
  );
  X_BUF   \tormoz_mux0000/YUSED  (
    .I(N01_pack_1),
    .O(N01)
  );
  X_BUF   \nxtstate_not0001/XUSED  (
    .I(\nxtstate_not0001/F5MUX_842 ),
    .O(nxtstate_not0001)
  );
  X_MUX2   \nxtstate_not0001/F5MUX  (
    .IA(nxtstate_not00011_829),
    .IB(\nxtstate_not0001/F ),
    .SEL(\nxtstate_not0001/BXINV_831 ),
    .O(\nxtstate_not0001/F5MUX_842 )
  );
  X_BUF   \nxtstate_not0001/BXINV  (
    .I(\m1/lt_376 ),
    .O(\nxtstate_not0001/BXINV_831 )
  );
  X_BUF   \m1/e1/g<3>/XUSED  (
    .I(\m1/e1/g<3>/F5MUX_867 ),
    .O(\m1/e1/g [3])
  );
  X_MUX2   \m1/e1/g<3>/F5MUX  (
    .IA(\m1/e1/c4/gt701_858 ),
    .IB(\m1/e1/c4/gt70 ),
    .SEL(\m1/e1/g<3>/BXINV_860 ),
    .O(\m1/e1/g<3>/F5MUX_867 )
  );
  X_BUF   \m1/e1/g<3>/BXINV  (
    .I(vfeli_3_IBUF_351),
    .O(\m1/e1/g<3>/BXINV_860 )
  );
  X_MUX2   \changewire_1_OBUF/F5MUX  (
    .IA(\changewire<1>1_905 ),
    .IB(change_1_IBUF_rt_915),
    .SEL(\changewire_1_OBUF/BXINV_907 ),
    .O(\changewire_1_OBUF/F5MUX_917 )
  );
  X_BUF   \changewire_1_OBUF/BXINV  (
    .I(hooshyari_2_IBUF_374),
    .O(\changewire_1_OBUF/BXINV_907 )
  );
  X_BUF   \m1/e1/c7/gt54/XUSED  (
    .I(\m1/e1/c7/gt54_1026 ),
    .O(\m1/e1/c7/gt54_0 )
  );
  X_BUF   \m1/e1/c7/gt54/YUSED  (
    .I(\m1/e1/c7/gt47_pack_1 ),
    .O(\m1/e1/c7/gt47_389 )
  );
  X_BUF   \m1/e1/c7/lt49/XUSED  (
    .I(\m1/e1/c7/lt49_1129 ),
    .O(\m1/e1/c7/lt49_0 )
  );
  X_BUF   \m1/e1/c7/lt49/YUSED  (
    .I(\m1/e1/c7/lt43_pack_1 ),
    .O(\m1/e1/c7/lt43_395 )
  );
  X_BUF   \m1/e1/c8/eq53/XUSED  (
    .I(\m1/e1/c8/eq53_1038 ),
    .O(\m1/e1/c8/eq53_0 )
  );
  X_BUF   \nxtstate<1>/DYMUX  (
    .I(\nxtstate<1>/GYMUX_938 ),
    .O(\nxtstate<1>/DYMUX_939 )
  );
  X_BUF   \nxtstate<1>/GYMUX  (
    .I(nxtstate_mux0000[1]),
    .O(\nxtstate<1>/GYMUX_938 )
  );
  X_INV   \nxtstate<1>/CLKINV  (
    .I(nxtstate_not0001),
    .O(\nxtstate<1>/CLKINVNOT )
  );
  X_BUFGMUX   \clock_BUFGP/BUFG  (
    .I0(\clock_BUFGP/IBUFG_360 ),
    .I1(GND),
    .S(\clock_BUFGP/BUFG/S_INVNOT ),
    .O(clock_BUFGP)
  );
  X_INV   \clock_BUFGP/BUFG/SINV  (
    .I(1'b1),
    .O(\clock_BUFGP/BUFG/S_INVNOT )
  );
  X_BUF   \m1/e1/c8/eq99/XUSED  (
    .I(\m1/e1/c8/eq99_1050 ),
    .O(\m1/e1/c8/eq99_0 )
  );
  X_BUF   \nxtstate<0>/DXMUX  (
    .I(\nxtstate<0>/FXMUX_1158 ),
    .O(\nxtstate<0>/DXMUX_1159 )
  );
  X_BUF   \nxtstate<0>/FXMUX  (
    .I(nxtstate_mux0000[0]),
    .O(\nxtstate<0>/FXMUX_1158 )
  );
  X_BUF   \nxtstate<0>/YUSED  (
    .I(N17_pack_1),
    .O(N17)
  );
  X_INV   \nxtstate<0>/CLKINV  (
    .I(nxtstate_not0001),
    .O(\nxtstate<0>/CLKINVNOT )
  );
  X_BUF   \m1/e1/l<3>/XUSED  (
    .I(\m1/e1/l<3>/F5MUX_892 ),
    .O(\m1/e1/l [3])
  );
  X_MUX2   \m1/e1/l<3>/F5MUX  (
    .IA(\m1/e1/c4/lt701_883 ),
    .IB(\m1/e1/c4/lt70 ),
    .SEL(\m1/e1/l<3>/BXINV_885 ),
    .O(\m1/e1/l<3>/F5MUX_892 )
  );
  X_BUF   \m1/e1/l<3>/BXINV  (
    .I(vfeli_3_IBUF_351),
    .O(\m1/e1/l<3>/BXINV_885 )
  );
  X_BUF   \m1/lt/DXMUX  (
    .I(\m1/lt/FXMUX_1103 ),
    .O(\m1/lt/DXMUX_1104 )
  );
  X_BUF   \m1/lt/FXMUX  (
    .I(\m1/l ),
    .O(\m1/lt/FXMUX_1103 )
  );
  X_BUF   \m1/lt/YUSED  (
    .I(\m1/e1/c7/lt21_pack_1 ),
    .O(\m1/e1/c7/lt21_394 )
  );
  X_BUF   \m1/lt/CLKINV  (
    .I(clock_BUFGP),
    .O(\m1/lt/CLKINV_1089 )
  );
  X_BUF   \m1/e1/c4/gt43/XUSED  (
    .I(\m1/e1/c4/gt43_1002 ),
    .O(\m1/e1/c4/gt43_0 )
  );
  X_BUF   \m1/e1/c4/gt43/YUSED  (
    .I(\m1/e1/c8/eq26_995 ),
    .O(\m1/e1/c8/eq26_0 )
  );
  X_IPAD   \hooshyari<2>/PAD  (
    .PAD(hooshyari[2])
  );
  X_BUF   hooshyari_2_IBUF (
    .I(hooshyari[2]),
    .O(\hooshyari<2>/INBUF )
  );
  X_BUF   \m1/e1/c4/lt43/XUSED  (
    .I(\m1/e1/c4/lt43_1172 ),
    .O(\m1/e1/c4/lt43_0 )
  );
  X_BUF   \m1/eq/DXMUX  (
    .I(\m1/eq/FXMUX_1201 ),
    .O(\m1/eq/DXMUX_1202 )
  );
  X_BUF   \m1/eq/FXMUX  (
    .I(\m1/e ),
    .O(\m1/eq/FXMUX_1201 )
  );
  X_BUF   \m1/eq/YUSED  (
    .I(\m1/e1/c8/eq132_pack_1 ),
    .O(\m1/e1/c8/eq132_400 )
  );
  X_BUF   \m1/eq/CLKINV  (
    .I(clock_BUFGP),
    .O(\m1/eq/CLKINV_1187 )
  );
  X_BUF   \nxtstate<2>/DXMUX  (
    .I(\nxtstate<2>/FXMUX_1248 ),
    .O(\nxtstate<2>/DXMUX_1249 )
  );
  X_BUF   \nxtstate<2>/FXMUX  (
    .I(nxtstate_mux0000[2]),
    .O(\nxtstate<2>/FXMUX_1248 )
  );
  X_BUF   \nxtstate<2>/YUSED  (
    .I(N13_pack_2),
    .O(N13)
  );
  X_INV   \nxtstate<2>/CLKINV  (
    .I(nxtstate_not0001),
    .O(\nxtstate<2>/CLKINVNOT )
  );
  X_BUF   \prstate<2>/DYMUX  (
    .I(nxtstate[2]),
    .O(\prstate<2>/DYMUX_1258 )
  );
  X_BUF   \prstate<2>/CLKINV  (
    .I(clock_BUFGP),
    .O(\prstate<2>/CLKINV_1256 )
  );
  X_BUF   \prstate<1>/DXMUX  (
    .I(nxtstate[1]),
    .O(\prstate<1>/DXMUX_1218 )
  );
  X_BUF   \prstate<1>/DYMUX  (
    .I(nxtstate[0]),
    .O(\prstate<1>/DYMUX_1213 )
  );
  X_BUF   \prstate<1>/CLKINV  (
    .I(clock_BUFGP),
    .O(\prstate<1>/CLKINV_1211 )
  );
  X_BUF   \change<0>/IFF/IMUX  (
    .I(\change<0>/INBUF ),
    .O(change_0_IBUF_340)
  );
  X_BUF   \change<1>/IFF/IMUX  (
    .I(\change<1>/INBUF ),
    .O(change_1_IBUF_341)
  );
  X_BUF   \eq/OUTPUT/OTCLK1INV  (
    .I(clock_BUFGP),
    .O(\eq/OUTPUT/OTCLK1INV_410 )
  );
  X_BUF   \eq/OUTPUT/OFF/OMUX  (
    .I(\m1/eq_1_416 ),
    .O(\eq/O )
  );
  X_BUF   \eq/OUTPUT/OFF/O1INV  (
    .I(\m1/eq/FXMUX_1201 ),
    .O(\eq/OUTPUT/OFF/O1INV_413 )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \m1/eq_1  (
    .I(\eq/OUTPUT/OFF/O1INV_413 ),
    .CE(VCC),
    .CLK(\eq/OUTPUT/OTCLK1INV_410 ),
    .SET(GND),
    .RST(GND),
    .O(\m1/eq_1_416 )
  );
  X_BUF   \lt/OUTPUT/OTCLK1INV  (
    .I(clock_BUFGP),
    .O(\lt/OUTPUT/OTCLK1INV_458 )
  );
  X_INV   \tormoz/OUTPUT/OTCLK1INV  (
    .I(nxtstate_not0001),
    .O(\tormoz/OUTPUT/OTCLK1INVNOT )
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  tormoz_228 (
    .I(\tormoz/OUTPUT/OFF/O1INV_445 ),
    .GE(VCC),
    .CLK(\NlwInverterSignal_tormoz/CLK ),
    .SET(GND),
    .RST(GND),
    .O(tormoz_OBUF_448)
  );
  X_BUF   \tormoz/OUTPUT/OFF/OMUX  (
    .I(tormoz_OBUF_448),
    .O(\tormoz/O )
  );
  X_BUF   \tormoz/OUTPUT/OFF/O1INV  (
    .I(tormoz_mux0000),
    .O(\tormoz/OUTPUT/OFF/O1INV_445 )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \m1/lt_1  (
    .I(\lt/OUTPUT/OFF/O1INV_461 ),
    .CE(VCC),
    .CLK(\lt/OUTPUT/OTCLK1INV_458 ),
    .SET(GND),
    .RST(GND),
    .O(\m1/lt_1_464 )
  );
  X_BUF   \lt/OUTPUT/OFF/OMUX  (
    .I(\m1/lt_1_464 ),
    .O(\lt/O )
  );
  X_BUF   \lt/OUTPUT/OFF/O1INV  (
    .I(\m1/lt/FXMUX_1103 ),
    .O(\lt/OUTPUT/OFF/O1INV_461 )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \m1/gt_1  (
    .I(\gt/OUTPUT/OFF/O1INV_429 ),
    .CE(VCC),
    .CLK(\gt/OUTPUT/OTCLK1INV_426 ),
    .SET(GND),
    .RST(GND),
    .O(\m1/gt_1_432 )
  );
  X_BUF   \gt/OUTPUT/OFF/O1INV  (
    .I(\m1/gt/FXMUX_976 ),
    .O(\gt/OUTPUT/OFF/O1INV_429 )
  );
  X_BUF   \gt/OUTPUT/OFF/OMUX  (
    .I(\m1/gt_1_432 ),
    .O(\gt/O )
  );
  X_BUF   \gt/OUTPUT/OTCLK1INV  (
    .I(clock_BUFGP),
    .O(\gt/OUTPUT/OTCLK1INV_426 )
  );
  X_BUF   \speed<0>/IFF/IFFDMUX  (
    .I(\speed<0>/INBUF ),
    .O(\speed<0>/IFF/IFFDMUX_515 )
  );
  X_BUF   \speed<0>/IFF/IMUX  (
    .I(\speed<0>/INBUF ),
    .O(speed_0_IBUF_347)
  );
  X_BUF   \speed<0>/IFF/ICLK1INV  (
    .I(clock_BUFGP),
    .O(\speed<0>/IFF/ICLK1INV_517 )
  );
  X_BUF   \speed<1>/IFF/IFFDMUX  (
    .I(\speed<1>/INBUF ),
    .O(\speed<1>/IFF/IFFDMUX_538 )
  );
  X_BUF   \speed<1>/IFF/IMUX  (
    .I(\speed<1>/INBUF ),
    .O(speed_1_IBUF_350)
  );
  X_BUF   \speed<1>/IFF/ICLK1INV  (
    .I(clock_BUFGP),
    .O(\speed<1>/IFF/ICLK1INV_540 )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \m1/vout_0  (
    .I(\speed<0>/IFF/IFFDMUX_515 ),
    .CE(VCC),
    .CLK(\speed<0>/IFF/ICLK1INV_517 ),
    .SET(GND),
    .RST(GND),
    .O(\m1/vout [0])
  );
  X_BUF   \vfeli<3>/IFF/IMUX  (
    .I(\vfeli<3>/INBUF ),
    .O(vfeli_3_IBUF_351)
  );
  X_BUF   \speed<2>/IFF/IFFDMUX  (
    .I(\speed<2>/INBUF ),
    .O(\speed<2>/IFF/IFFDMUX_569 )
  );
  X_BUF   \speed<2>/IFF/IMUX  (
    .I(\speed<2>/INBUF ),
    .O(speed_2_IBUF_353)
  );
  X_BUF   \speed<2>/IFF/ICLK1INV  (
    .I(clock_BUFGP),
    .O(\speed<2>/IFF/ICLK1INV_571 )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \m1/vout_2  (
    .I(\speed<2>/IFF/IFFDMUX_569 ),
    .CE(VCC),
    .CLK(\speed<2>/IFF/ICLK1INV_571 ),
    .SET(GND),
    .RST(GND),
    .O(\m1/vout [2])
  );
  X_BUF   \vfeli<0>/IFF/IMUX  (
    .I(\vfeli<0>/INBUF ),
    .O(vfeli_0_IBUF_343)
  );
  X_BUF   \vfeli<2>/IFF/IMUX  (
    .I(\vfeli<2>/INBUF ),
    .O(vfeli_2_IBUF_348)
  );
  X_BUF   \vfeli<1>/IFF/IMUX  (
    .I(\vfeli<1>/INBUF ),
    .O(vfeli_1_IBUF_345)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \m1/vout_1  (
    .I(\speed<1>/IFF/IFFDMUX_538 ),
    .CE(VCC),
    .CLK(\speed<1>/IFF/ICLK1INV_540 ),
    .SET(GND),
    .RST(GND),
    .O(\m1/vout [1])
  );
  X_BUF   \speed<4>/IFF/IFFDMUX  (
    .I(\speed<4>/INBUF ),
    .O(\speed<4>/IFF/IFFDMUX_631 )
  );
  X_BUF   \speed<4>/IFF/IMUX  (
    .I(\speed<4>/INBUF ),
    .O(speed_4_IBUF_359)
  );
  X_BUF   \speed<4>/IFF/ICLK1INV  (
    .I(clock_BUFGP),
    .O(\speed<4>/IFF/ICLK1INV_633 )
  );
  X_BUF   \clock/IFF/IMUX  (
    .I(\clock/INBUF ),
    .O(\clock_BUFGP/IBUFG_360 )
  );
  X_BUF   \vfeli<4>/IFF/IMUX  (
    .I(\vfeli<4>/INBUF ),
    .O(vfeli_4_IBUF_354)
  );
  X_BUF   \vfeli<5>/IFF/IMUX  (
    .I(\vfeli<5>/INBUF ),
    .O(vfeli_5_IBUF_357)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \m1/vout_4  (
    .I(\speed<4>/IFF/IFFDMUX_631 ),
    .CE(VCC),
    .CLK(\speed<4>/IFF/ICLK1INV_633 ),
    .SET(GND),
    .RST(GND),
    .O(\m1/vout [4])
  );
  X_BUF   \vfeli<6>/IFF/IMUX  (
    .I(\vfeli<6>/INBUF ),
    .O(vfeli_6_IBUF_361)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \m1/vout_3  (
    .I(\speed<3>/IFF/IFFDMUX_600 ),
    .CE(VCC),
    .CLK(\speed<3>/IFF/ICLK1INV_602 ),
    .SET(GND),
    .RST(GND),
    .O(\m1/vout [3])
  );
  X_BUF   \speed<3>/IFF/IFFDMUX  (
    .I(\speed<3>/INBUF ),
    .O(\speed<3>/IFF/IFFDMUX_600 )
  );
  X_BUF   \speed<3>/IFF/IMUX  (
    .I(\speed<3>/INBUF ),
    .O(speed_3_IBUF_356)
  );
  X_BUF   \speed<3>/IFF/ICLK1INV  (
    .I(clock_BUFGP),
    .O(\speed<3>/IFF/ICLK1INV_602 )
  );
  X_BUF   \vfeli<7>/IFF/IMUX  (
    .I(\vfeli<7>/INBUF ),
    .O(vfeli_7_IBUF_365)
  );
  X_INV   \pashesh<1>/OUTPUT/OTCLK1INV  (
    .I(nxtstate_not0001),
    .O(\pashesh<1>/OUTPUT/OTCLK1INVNOT )
  );
  X_BUF   \speed<6>/IFF/IFFDMUX  (
    .I(\speed<6>/INBUF ),
    .O(\speed<6>/IFF/IFFDMUX_731 )
  );
  X_BUF   \speed<6>/IFF/IMUX  (
    .I(\speed<6>/INBUF ),
    .O(speed_6_IBUF_368)
  );
  X_BUF   \speed<6>/IFF/ICLK1INV  (
    .I(clock_BUFGP),
    .O(\speed<6>/IFF/ICLK1INV_733 )
  );
  X_INV   \pashesh<0>/OUTPUT/OTCLK1INV  (
    .I(nxtstate_not0001),
    .O(\pashesh<0>/OUTPUT/OTCLK1INVNOT )
  );
  X_INV   \pashesh<2>/OUTPUT/OTCLK1INV  (
    .I(nxtstate_not0001),
    .O(\pashesh<2>/OUTPUT/OTCLK1INVNOT )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \m1/vout_6  (
    .I(\speed<6>/IFF/IFFDMUX_731 ),
    .CE(VCC),
    .CLK(\speed<6>/IFF/ICLK1INV_733 ),
    .SET(GND),
    .RST(GND),
    .O(\m1/vout [6])
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  nxtstate_1_1 (
    .I(\pashesh<1>/OUTPUT/OFF/O1INV_717 ),
    .GE(VCC),
    .CLK(\NlwInverterSignal_nxtstate_1_1/CLK ),
    .SET(GND),
    .RST(GND),
    .O(nxtstate_1_1_720)
  );
  X_BUF   \pashesh<1>/OUTPUT/OFF/OMUX  (
    .I(nxtstate_1_1_720),
    .O(\pashesh<1>/O )
  );
  X_BUF   \pashesh<1>/OUTPUT/OFF/O1INV  (
    .I(\nxtstate<1>/GYMUX_938 ),
    .O(\pashesh<1>/OUTPUT/OFF/O1INV_717 )
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  nxtstate_0_1 (
    .I(\pashesh<0>/OUTPUT/OFF/O1INV_670 ),
    .GE(VCC),
    .CLK(\NlwInverterSignal_nxtstate_0_1/CLK ),
    .SET(GND),
    .RST(GND),
    .O(nxtstate_0_1_673)
  );
  X_BUF   \pashesh<0>/OUTPUT/OFF/OMUX  (
    .I(nxtstate_0_1_673),
    .O(\pashesh<0>/O )
  );
  X_BUF   \pashesh<0>/OUTPUT/OFF/O1INV  (
    .I(\nxtstate<0>/FXMUX_1158 ),
    .O(\pashesh<0>/OUTPUT/OFF/O1INV_670 )
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  nxtstate_2_1 (
    .I(\pashesh<2>/OUTPUT/OFF/O1INV_758 ),
    .GE(VCC),
    .CLK(\NlwInverterSignal_nxtstate_2_1/CLK ),
    .SET(GND),
    .RST(GND),
    .O(nxtstate_2_1_761)
  );
  X_BUF   \pashesh<2>/OUTPUT/OFF/OMUX  (
    .I(nxtstate_2_1_761),
    .O(\pashesh<2>/O )
  );
  X_BUF   \pashesh<2>/OUTPUT/OFF/O1INV  (
    .I(\nxtstate<2>/FXMUX_1248 ),
    .O(\pashesh<2>/OUTPUT/OFF/O1INV_758 )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \m1/vout_5  (
    .I(\speed<5>/IFF/IFFDMUX_684 ),
    .CE(VCC),
    .CLK(\speed<5>/IFF/ICLK1INV_686 ),
    .SET(GND),
    .RST(GND),
    .O(\m1/vout [5])
  );
  X_BUF   \speed<5>/IFF/IFFDMUX  (
    .I(\speed<5>/INBUF ),
    .O(\speed<5>/IFF/IFFDMUX_684 )
  );
  X_BUF   \speed<5>/IFF/IMUX  (
    .I(\speed<5>/INBUF ),
    .O(speed_5_IBUF_364)
  );
  X_BUF   \speed<5>/IFF/ICLK1INV  (
    .I(clock_BUFGP),
    .O(\speed<5>/IFF/ICLK1INV_686 )
  );
  X_BUF   \speed<7>/IFF/IFFDMUX  (
    .I(\speed<7>/INBUF ),
    .O(\speed<7>/IFF/IFFDMUX_772 )
  );
  X_BUF   \speed<7>/IFF/IMUX  (
    .I(\speed<7>/INBUF ),
    .O(speed_7_IBUF_371)
  );
  X_BUF   \speed<7>/IFF/ICLK1INV  (
    .I(clock_BUFGP),
    .O(\speed<7>/IFF/ICLK1INV_774 )
  );
  X_BUF   \hooshyari<2>/IFF/IMUX  (
    .I(\hooshyari<2>/INBUF ),
    .O(hooshyari_2_IBUF_374)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \m1/vout_7  (
    .I(\speed<7>/IFF/IFFDMUX_772 ),
    .CE(VCC),
    .CLK(\speed<7>/IFF/ICLK1INV_774 ),
    .SET(GND),
    .RST(GND),
    .O(\m1/vout [7])
  );
  X_BUF   \hooshyari<1>/IFF/IMUX  (
    .I(\hooshyari<1>/INBUF ),
    .O(hooshyari_1_IBUF_373)
  );
  X_LUT4 #(
    .INIT ( 16'hFFFE ))
  nxtstate_not00011 (
    .ADR0(\m1/gt_377 ),
    .ADR1(\m1/eq_378 ),
    .ADR2(hooshyari_2_IBUF_374),
    .ADR3(hooshyari_1_IBUF_373),
    .O(nxtstate_not00011_829)
  );
  X_LUT4 #(
    .INIT ( 16'h0D04 ))
  \m1/e1/c4/gt702  (
    .ADR0(speed_2_IBUF_353),
    .ADR1(\m1/e1/c4/gt43_0 ),
    .ADR2(speed_3_IBUF_356),
    .ADR3(vfeli_2_IBUF_348),
    .O(\m1/e1/c4/gt701_858 )
  );
  X_BUF   \hooshyari<0>/IFF/IMUX  (
    .I(\hooshyari<0>/INBUF ),
    .O(hooshyari_0_IBUF_372)
  );
  X_LUT4 #(
    .INIT ( 16'hB2FF ))
  \m1/e1/c4/gt701  (
    .ADR0(\m1/e1/c4/gt43_0 ),
    .ADR1(speed_2_IBUF_353),
    .ADR2(vfeli_2_IBUF_348),
    .ADR3(speed_3_IBUF_356),
    .O(\m1/e1/c4/gt70 )
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  nxtstate_1 (
    .I(\nxtstate<1>/DYMUX_939 ),
    .GE(VCC),
    .CLK(\NlwInverterSignal_nxtstate_1/CLK ),
    .SET(GND),
    .RST(GND),
    .O(nxtstate[1])
  );
  X_LUT4 #(
    .INIT ( 16'hA8AA ))
  \changewire<0>1  (
    .ADR0(change_0_IBUF_340),
    .ADR1(hooshyari_0_IBUF_372),
    .ADR2(hooshyari_2_IBUF_374),
    .ADR3(hooshyari_1_IBUF_373),
    .O(changewire_0_OBUF_947)
  );
  X_LUT4 #(
    .INIT ( 16'hB020 ))
  \m1/e1/c7/gt54  (
    .ADR0(\m1/e1/g [3]),
    .ADR1(speed_4_IBUF_359),
    .ADR2(\m1/e1/c7/gt47_389 ),
    .ADR3(vfeli_4_IBUF_354),
    .O(\m1/e1/c7/gt54_1026 )
  );
  X_LUT4 #(
    .INIT ( 16'h08AE ))
  \m1/e1/c7/gt21  (
    .ADR0(vfeli_6_IBUF_361),
    .ADR1(vfeli_5_IBUF_357),
    .ADR2(speed_5_IBUF_364),
    .ADR3(speed_6_IBUF_368),
    .O(\m1/e1/c7/gt21_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'hF3B2 ))
  \m1/e1/c8/gt1  (
    .ADR0(\m1/e1/c7/gt54_0 ),
    .ADR1(speed_7_IBUF_371),
    .ADR2(vfeli_7_IBUF_365),
    .ADR3(\m1/e1/c7/gt21_387 ),
    .O(\m1/g )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \m1/gt  (
    .I(\m1/gt/DXMUX_977 ),
    .CE(VCC),
    .CLK(\m1/gt/CLKINV_962 ),
    .SET(GND),
    .RST(GND),
    .O(\m1/gt_377 )
  );
  X_LUT4 #(
    .INIT ( 16'hAF23 ))
  \m1/e1/c7/gt47  (
    .ADR0(vfeli_5_IBUF_357),
    .ADR1(speed_6_IBUF_368),
    .ADR2(speed_5_IBUF_364),
    .ADR3(vfeli_6_IBUF_361),
    .O(\m1/e1/c7/gt47_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'hC840 ))
  Mmux_nxtstate_mux00003 (
    .ADR0(hooshyari_2_IBUF_374),
    .ADR1(prstate[1]),
    .ADR2(N13),
    .ADR3(\m1/eq_378 ),
    .O(nxtstate_mux0000[1])
  );
  X_LUT4 #(
    .INIT ( 16'hFFB2 ))
  \m1/e1/c4/lt702  (
    .ADR0(\m1/e1/c4/lt43_0 ),
    .ADR1(vfeli_2_IBUF_348),
    .ADR2(speed_2_IBUF_353),
    .ADR3(speed_3_IBUF_356),
    .O(\m1/e1/c4/lt701_883 )
  );
  X_LUT4 #(
    .INIT ( 16'hAAAA ))
  change_1_IBUF_rt (
    .ADR0(change_1_IBUF_341),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(change_1_IBUF_rt_915)
  );
  X_LUT4 #(
    .INIT ( 16'hA222 ))
  \changewire<1>1  (
    .ADR0(change_1_IBUF_341),
    .ADR1(hooshyari_1_IBUF_373),
    .ADR2(change_0_IBUF_340),
    .ADR3(hooshyari_0_IBUF_372),
    .O(\changewire<1>1_905 )
  );
  X_LUT4 #(
    .INIT ( 16'h9009 ))
  \m1/e1/c8/eq26  (
    .ADR0(vfeli_1_IBUF_345),
    .ADR1(speed_1_IBUF_350),
    .ADR2(vfeli_0_IBUF_343),
    .ADR3(speed_0_IBUF_347),
    .O(\m1/e1/c8/eq26_995 )
  );
  X_LUT4 #(
    .INIT ( 16'hB020 ))
  \m1/e1/c4/lt701  (
    .ADR0(\m1/e1/c4/lt43_0 ),
    .ADR1(vfeli_2_IBUF_348),
    .ADR2(speed_3_IBUF_356),
    .ADR3(speed_2_IBUF_353),
    .O(\m1/e1/c4/lt70 )
  );
  X_LUT4 #(
    .INIT ( 16'h9009 ))
  \m1/e1/c8/eq53  (
    .ADR0(vfeli_3_IBUF_351),
    .ADR1(speed_3_IBUF_356),
    .ADR2(vfeli_2_IBUF_348),
    .ADR3(speed_2_IBUF_353),
    .O(\m1/e1/c8/eq53_1038 )
  );
  X_LUT4 #(
    .INIT ( 16'h08AE ))
  \m1/e1/c4/gt43  (
    .ADR0(vfeli_1_IBUF_345),
    .ADR1(vfeli_0_IBUF_343),
    .ADR2(speed_0_IBUF_347),
    .ADR3(speed_1_IBUF_350),
    .O(\m1/e1/c4/gt43_1002 )
  );
  X_LUT4 #(
    .INIT ( 16'h9009 ))
  \m1/e1/c8/eq99  (
    .ADR0(speed_4_IBUF_359),
    .ADR1(vfeli_4_IBUF_354),
    .ADR2(vfeli_5_IBUF_357),
    .ADR3(speed_5_IBUF_364),
    .O(\m1/e1/c8/eq99_1050 )
  );
  X_LUT4 #(
    .INIT ( 16'hB020 ))
  \m1/e1/c7/lt49  (
    .ADR0(\m1/e1/l [3]),
    .ADR1(vfeli_4_IBUF_354),
    .ADR2(\m1/e1/c7/lt43_395 ),
    .ADR3(speed_4_IBUF_359),
    .O(\m1/e1/c7/lt49_1129 )
  );
  X_LUT4 #(
    .INIT ( 16'hFEFE ))
  tormoz_mux000011 (
    .ADR0(\m1/lt_376 ),
    .ADR1(\m1/gt_377 ),
    .ADR2(\m1/eq_378 ),
    .ADR3(VCC),
    .O(N01_pack_1)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \m1/eq  (
    .I(\m1/eq/DXMUX_1202 ),
    .CE(VCC),
    .CLK(\m1/eq/CLKINV_1187 ),
    .SET(GND),
    .RST(GND),
    .O(\m1/eq_378 )
  );
  X_LUT4 #(
    .INIT ( 16'h08AE ))
  \m1/e1/c7/lt21  (
    .ADR0(speed_6_IBUF_368),
    .ADR1(speed_5_IBUF_364),
    .ADR2(vfeli_5_IBUF_357),
    .ADR3(vfeli_6_IBUF_361),
    .O(\m1/e1/c7/lt21_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'hFF13 ))
  Mmux_nxtstate_mux00002_SW0 (
    .ADR0(prstate[1]),
    .ADR1(N01),
    .ADR2(prstate[2]),
    .ADR3(hooshyari_1_IBUF_373),
    .O(N17_pack_1)
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ))
  \m1/e1/c8/eq150  (
    .ADR0(\m1/e1/c8/eq26_0 ),
    .ADR1(\m1/e1/c8/eq53_0 ),
    .ADR2(\m1/e1/c8/eq99_0 ),
    .ADR3(\m1/e1/c8/eq132_400 ),
    .O(\m1/e )
  );
  X_LUT4 #(
    .INIT ( 16'h9009 ))
  \m1/e1/c8/eq132  (
    .ADR0(vfeli_6_IBUF_361),
    .ADR1(speed_6_IBUF_368),
    .ADR2(speed_7_IBUF_371),
    .ADR3(vfeli_7_IBUF_365),
    .O(\m1/e1/c8/eq132_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'hF3B2 ))
  \m1/e1/c8/lt1  (
    .ADR0(\m1/e1/c7/lt49_0 ),
    .ADR1(vfeli_7_IBUF_365),
    .ADR2(speed_7_IBUF_371),
    .ADR3(\m1/e1/c7/lt21_394 ),
    .O(\m1/l )
  );
  X_LUT4 #(
    .INIT ( 16'hC840 ))
  Mmux_nxtstate_mux00002 (
    .ADR0(hooshyari_2_IBUF_374),
    .ADR1(prstate[0]),
    .ADR2(N17),
    .ADR3(\m1/eq_378 ),
    .O(nxtstate_mux0000[0])
  );
  X_LUT4 #(
    .INIT ( 16'h0010 ))
  tormoz_mux00001 (
    .ADR0(hooshyari_1_IBUF_373),
    .ADR1(hooshyari_0_IBUF_372),
    .ADR2(N01),
    .ADR3(hooshyari_2_IBUF_374),
    .O(tormoz_mux0000)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \m1/lt  (
    .I(\m1/lt/DXMUX_1104 ),
    .CE(VCC),
    .CLK(\m1/lt/CLKINV_1089 ),
    .SET(GND),
    .RST(GND),
    .O(\m1/lt_376 )
  );
  X_LUT4 #(
    .INIT ( 16'hAF23 ))
  \m1/e1/c7/lt43  (
    .ADR0(speed_5_IBUF_364),
    .ADR1(vfeli_6_IBUF_361),
    .ADR2(vfeli_5_IBUF_357),
    .ADR3(speed_6_IBUF_368),
    .O(\m1/e1/c7/lt43_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'h08AE ))
  \m1/e1/c4/lt43  (
    .ADR0(speed_1_IBUF_350),
    .ADR1(speed_0_IBUF_347),
    .ADR2(vfeli_0_IBUF_343),
    .ADR3(vfeli_1_IBUF_345),
    .O(\m1/e1/c4/lt43_1172 )
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  nxtstate_0 (
    .I(\nxtstate<0>/DXMUX_1159 ),
    .GE(VCC),
    .CLK(\NlwInverterSignal_nxtstate_0/CLK ),
    .SET(GND),
    .RST(GND),
    .O(nxtstate[0])
  );
  X_FF #(
    .INIT ( 1'b0 ))
  prstate_0 (
    .I(\prstate<1>/DYMUX_1213 ),
    .CE(VCC),
    .CLK(\prstate<1>/CLKINV_1211 ),
    .SET(GND),
    .RST(GND),
    .O(prstate[0])
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  nxtstate_2 (
    .I(\nxtstate<2>/DXMUX_1249 ),
    .GE(VCC),
    .CLK(\NlwInverterSignal_nxtstate_2/CLK ),
    .SET(GND),
    .RST(GND),
    .O(nxtstate[2])
  );
  X_FF #(
    .INIT ( 1'b0 ))
  prstate_2 (
    .I(\prstate<2>/DYMUX_1258 ),
    .CE(VCC),
    .CLK(\prstate<2>/CLKINV_1256 ),
    .SET(GND),
    .RST(GND),
    .O(prstate[2])
  );
  X_LUT4 #(
    .INIT ( 16'hAAAB ))
  Mmux_nxtstate_mux00004_SW0 (
    .ADR0(hooshyari_1_IBUF_373),
    .ADR1(\m1/lt_376 ),
    .ADR2(\m1/gt_377 ),
    .ADR3(\m1/eq_378 ),
    .O(N13_pack_2)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  prstate_1 (
    .I(\prstate<1>/DXMUX_1218 ),
    .CE(VCC),
    .CLK(\prstate<1>/CLKINV_1211 ),
    .SET(GND),
    .RST(GND),
    .O(prstate[1])
  );
  X_LUT4 #(
    .INIT ( 16'hC8EA ))
  Mmux_nxtstate_mux00004 (
    .ADR0(hooshyari_2_IBUF_374),
    .ADR1(prstate[2]),
    .ADR2(N13),
    .ADR3(\m1/eq_378 ),
    .O(nxtstate_mux0000[2])
  );
  X_BUF   \changewire<0>/OUTPUT/OFF/OMUX  (
    .I(changewire_0_OBUF_947),
    .O(\changewire<0>/O )
  );
  X_BUF   \changewire<1>/OUTPUT/OFF/OMUX  (
    .I(\changewire_1_OBUF/F5MUX_917 ),
    .O(\changewire<1>/O )
  );
  X_BUF   \vout<1>/OUTPUT/OFF/OMUX  (
    .I(\m1/vout [1]),
    .O(\vout<1>/O )
  );
  X_BUF   \vout<0>/OUTPUT/OFF/OMUX  (
    .I(\m1/vout [0]),
    .O(\vout<0>/O )
  );
  X_BUF   \vout<2>/OUTPUT/OFF/OMUX  (
    .I(\m1/vout [2]),
    .O(\vout<2>/O )
  );
  X_BUF   \vout<3>/OUTPUT/OFF/OMUX  (
    .I(\m1/vout [3]),
    .O(\vout<3>/O )
  );
  X_BUF   \vout<4>/OUTPUT/OFF/OMUX  (
    .I(\m1/vout [4]),
    .O(\vout<4>/O )
  );
  X_BUF   \vout<6>/OUTPUT/OFF/OMUX  (
    .I(\m1/vout [6]),
    .O(\vout<6>/O )
  );
  X_BUF   \vout<7>/OUTPUT/OFF/OMUX  (
    .I(\m1/vout [7]),
    .O(\vout<7>/O )
  );
  X_BUF   \vout<5>/OUTPUT/OFF/OMUX  (
    .I(\m1/vout [5]),
    .O(\vout<5>/O )
  );
  X_LUT4 #(
    .INIT ( 16'hFFFF ))
  \nxtstate_not0001/F/X_LUT4  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\nxtstate_not0001/F )
  );
  X_ZERO   NlwBlock_control_GND (
    .O(GND)
  );
  X_ONE   NlwBlock_control_VCC (
    .O(VCC)
  );
  X_INV   \NlwInverterBlock_tormoz/CLK  (
    .I(\tormoz/OUTPUT/OTCLK1INVNOT ),
    .O(\NlwInverterSignal_tormoz/CLK )
  );
  X_INV   \NlwInverterBlock_nxtstate_1_1/CLK  (
    .I(\pashesh<1>/OUTPUT/OTCLK1INVNOT ),
    .O(\NlwInverterSignal_nxtstate_1_1/CLK )
  );
  X_INV   \NlwInverterBlock_nxtstate_0_1/CLK  (
    .I(\pashesh<0>/OUTPUT/OTCLK1INVNOT ),
    .O(\NlwInverterSignal_nxtstate_0_1/CLK )
  );
  X_INV   \NlwInverterBlock_nxtstate_2_1/CLK  (
    .I(\pashesh<2>/OUTPUT/OTCLK1INVNOT ),
    .O(\NlwInverterSignal_nxtstate_2_1/CLK )
  );
  X_INV   \NlwInverterBlock_nxtstate_1/CLK  (
    .I(\nxtstate<1>/CLKINVNOT ),
    .O(\NlwInverterSignal_nxtstate_1/CLK )
  );
  X_INV   \NlwInverterBlock_nxtstate_0/CLK  (
    .I(\nxtstate<0>/CLKINVNOT ),
    .O(\NlwInverterSignal_nxtstate_0/CLK )
  );
  X_INV   \NlwInverterBlock_nxtstate_2/CLK  (
    .I(\nxtstate<2>/CLKINVNOT ),
    .O(\NlwInverterSignal_nxtstate_2/CLK )
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

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

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

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

endmodule

`endif

