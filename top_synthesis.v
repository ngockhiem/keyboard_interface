////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2005 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: H.38
//  \   \         Application: netgen
//  /   /         Filename: top_synthesis.v
// /___/   /\     Timestamp: Fri Apr 21 21:22:22 2006
// \   \  /  \ 
//  \___\/\___\
//             
// Command: -intstyle ise -w -ofmt verilog -sim top.ngc top_synthesis.v 
// Device: xc3s400-4-pq208
// Design Name: top
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Development System Reference Guide, Chapter 23
//     Synthesis and Verification Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module top (
  clk, rst, ps2ck, ps2dk, lcd_e, lcd_rs, lcd_rw, data, led
);
  input clk;
  input rst;
  inout ps2ck;
  inout ps2dk;
  output lcd_e;
  output lcd_rs;
  output lcd_rw;
  output [7 : 0] data;
  output [7 : 0] led;
  wire clk_BUFGP;
  wire \XLXI_3/lcd_e ;
  wire rst_IBUF;
  wire \XLXI_3/lcd_rs ;
  wire \XLXI_3/lcd_clkcnt__n0000<14>_cyo ;
  wire ps2ck_IOBUF;
  wire \XLXI_1/clk ;
  wire \XLXI_4/rx_released ;
  wire \XLXI_3/clkcnt_15_rt ;
  wire \XLXI_4/rx_shift_key_on ;
  wire \top_XLXI_4/timer_60usec_count__n0000<5>_cyo ;
  wire \XLXI_4/timer_5usec_done ;
  wire \XLXI_4/right_shift_key ;
  wire \XLXI_4/hold_released ;
  wire \XLXI_4/ps2_clk_s ;
  wire \top_XLXI_4/timer_60usec_count__n0000<2>_cyo ;
  wire \XLXI_4/left_shift_key ;
  wire N1;
  wire \XLXI_4/ps2_data_hi_z ;
  wire \top_XLXI_4/timer_60usec_count__n0000<3>_cyo ;
  wire N28;
  wire \XLXI_4/ps2_data_s ;
  wire \XLXI_4/timer_60usec_done ;
  wire \XLXI_4/rx_shifting_done ;
  wire N2276;
  wire \XLXI_4/_n0004 ;
  wire \XLXI_4/_n0005 ;
  wire \XLXI_4/_n0010 ;
  wire \XLXI_4/_n0006 ;
  wire \XLXI_3/count_6_rt ;
  wire \XLXI_4/timer_60usec_count_0_N0 ;
  wire \XLXI_4/_n0008 ;
  wire \XLXI_4/_n0009 ;
  wire \top_XLXI_4/timer_5usec_count__n0000<1>_cyo ;
  wire \XLXI_4/rx_output_event ;
  wire N2277;
  wire N6;
  wire \top_XLXI_4/timer_5usec_count__n0000<2>_cyo ;
  wire \top_XLXI_1/_old_count_7<1>_cyo ;
  wire \top_XLXI_4/timer_60usec_count__n0000<1>_cyo ;
  wire \top_XLXI_1/_old_count_7<0>_cyo ;
  wire \top_XLXI_4/timer_60usec_count__n0000<10>_cyo ;
  wire \top_XLXI_4/timer_60usec_count__n0000<9>_cyo ;
  wire \top_XLXI_4/timer_60usec_count__n0000<7>_cyo ;
  wire \top_XLXI_4/timer_60usec_count__n0000<8>_cyo ;
  wire \XLXI_4/timer_5usec_count_0_N1 ;
  wire \XLXI_4/timer_5usec_count_0_N0 ;
  wire \XLXI_4/timer_60usec_count_0_N1 ;
  wire \top_XLXI_4/timer_5usec_count__n0000<3>_cyo ;
  wire \top_XLXI_1/_old_count_7<2>_cyo ;
  wire \top_XLXI_4/timer_5usec_count__n0000<0>_cyo ;
  wire \top_XLXI_1/_old_count_7<3>_cyo ;
  wire \top_XLXI_4/timer_60usec_count__n0000<0>_cyo ;
  wire \top_XLXI_4/timer_5usec_count__n0000<6>_cyo ;
  wire \top_XLXI_1/_old_count_7<5>_cyo ;
  wire N7;
  wire \top_XLXI_4/timer_60usec_count__n0000<6>_cyo ;
  wire \XLXI_4/ps2_clk_N0 ;
  wire N2278;
  wire \top_XLXI_4/timer_5usec_count__n0000<4>_cyo ;
  wire \top_XLXI_1/_old_count_7<4>_cyo ;
  wire \XLXI_4/_n0141 ;
  wire \top_XLXI_4/timer_5usec_count__n0000<5>_cyo ;
  wire \XLXI_4/_n0140 ;
  wire N13;
  wire \top_XLXI_4/timer_60usec_count__n0000<4>_cyo ;
  wire N2284;
  wire N127;
  wire N2403;
  wire N126;
  wire N2415;
  wire N120;
  wire N96;
  wire N133;
  wire N130;
  wire N2421;
  wire \XLXI_3/N9 ;
  wire \XLXI_3/lcd_clkcnt__n0000<1>_cyo ;
  wire \XLXI_3/lcd_clkcnt__n0000<9>_cyo ;
  wire \XLXI_3/lcd_clkcnt__n0000<0>_cyo ;
  wire \XLXI_3/N5 ;
  wire \XLXI_3/clk_int ;
  wire \XLXI_3/clkdiv ;
  wire \XLXI_3/flag ;
  wire N2427;
  wire \XLXI_3/_n0002 ;
  wire \XLXI_3/N6 ;
  wire \XLXI_3/N51 ;
  wire \XLXI_3/state_FFd6 ;
  wire \XLXI_3/state_FFd8 ;
  wire \XLXI_3/state_FFd7 ;
  wire \XLXI_3/state_FFd4 ;
  wire \XLXI_3/state_FFd5 ;
  wire \XLXI_3/state_FFd3 ;
  wire \XLXI_3/state_FFd2 ;
  wire \XLXI_3/state_FFd1 ;
  wire \XLXI_3/_n0015 ;
  wire \XLXI_3/_n0021 ;
  wire \XLXI_3/_n0016 ;
  wire \XLXI_3/_n0022 ;
  wire \XLXI_3/_n0023 ;
  wire \XLXI_3/_n0024 ;
  wire \XLXI_3/_n0025 ;
  wire \XLXI_3/_n0026 ;
  wire \XLXI_3/tc_clkcnt ;
  wire \XLXI_3/_n0027 ;
  wire \XLXI_3/_n0033 ;
  wire \XLXI_3/_n0028 ;
  wire \XLXI_3/state_FFd4-In ;
  wire \XLXI_3/_n0029 ;
  wire \XLXI_3/state_FFd6-In ;
  wire \XLXI_3/_n0035 ;
  wire \XLXI_3/_n0041 ;
  wire \XLXI_3/_n0036 ;
  wire \XLXI_3/_n0042 ;
  wire \XLXI_3/clkcnt_12_rt ;
  wire \XLXI_3/_n0043 ;
  wire \XLXI_3/_n0038 ;
  wire \XLXI_3/state_FFd7-In ;
  wire \XLXI_3/lcd_clkcnt__n0000<10>_cyo ;
  wire \XLXI_3/N4 ;
  wire \XLXI_3/state_FFd7_N0 ;
  wire \XLXI_3/lcd_clkcnt__n0000<7>_cyo ;
  wire \XLXI_3/lcd_clkcnt__n0000<6>_cyo ;
  wire \XLXI_3/lcd_clkcnt__n0000<5>_cyo ;
  wire \XLXI_3/lcd__n0031<0>_cyo ;
  wire \XLXI_3/lcd_clkcnt__n0000<4>_cyo ;
  wire \XLXI_3/state_FFd5-In ;
  wire \XLXI_3/lcd_clkcnt__n0000<3>_cyo ;
  wire \XLXI_3/lcd_clkcnt__n0000<8>_cyo ;
  wire \XLXI_3/lcd_clkcnt__n0000<2>_cyo ;
  wire \XLXI_3/lcd_clkcnt__n0000<11>_cyo ;
  wire \XLXI_3/lcd_clkcnt__n0000<13>_cyo ;
  wire \XLXI_3/lcd__n0031<5>_cyo ;
  wire \XLXI_3/lcd__n0031<4>_cyo ;
  wire \XLXI_3/lcd__n0031<3>_cyo ;
  wire \XLXI_3/lcd__n0031<2>_cyo ;
  wire \XLXI_3/lcd__n0031<1>_cyo ;
  wire \XLXI_3/state_FFd2-In ;
  wire \XLXI_3/lcd_clkcnt__n0000<12>_cyo ;
  wire N144;
  wire N2357;
  wire N150;
  wire N156;
  wire N176;
  wire N2324;
  wire N2466;
  wire N186;
  wire N191;
  wire N193;
  wire CHOICE2246;
  wire N2289;
  wire N2423;
  wire CHOICE1855;
  wire CHOICE1913;
  wire CHOICE1954;
  wire CHOICE2152;
  wire N2359;
  wire N2370;
  wire N2302;
  wire CHOICE1863;
  wire N2362;
  wire N2304;
  wire N2450;
  wire CHOICE1937;
  wire CHOICE2222;
  wire N2319;
  wire CHOICE2046;
  wire CHOICE1816;
  wire CHOICE2191;
  wire CHOICE1994;
  wire N2330;
  wire CHOICE2139;
  wire N2410;
  wire N2301;
  wire N2322;
  wire N2374;
  wire CHOICE2160;
  wire CHOICE2087;
  wire CHOICE2113;
  wire CHOICE2146;
  wire CHOICE2064;
  wire CHOICE1976;
  wire N2405;
  wire CHOICE2021;
  wire N2314;
  wire CHOICE2042;
  wire N2346;
  wire CHOICE1835;
  wire CHOICE2130;
  wire CHOICE2096;
  wire N2342;
  wire CHOICE2583;
  wire N2420;
  wire N2366;
  wire CHOICE1824;
  wire \XLXI_4/q_6_1 ;
  wire CHOICE2242;
  wire CHOICE1879;
  wire CHOICE2225;
  wire CHOICE2083;
  wire CHOICE2157;
  wire N2416;
  wire N2387;
  wire CHOICE2049;
  wire CHOICE2084;
  wire CHOICE2251;
  wire \XLXI_4/timer_60usec_count_11_rt ;
  wire CHOICE2029;
  wire CHOICE2180;
  wire CHOICE1827;
  wire CHOICE1899;
  wire CHOICE2131;
  wire CHOICE1952;
  wire CHOICE1948;
  wire N2372;
  wire N2363;
  wire CHOICE2213;
  wire N2389;
  wire CHOICE1962;
  wire CHOICE1923;
  wire CHOICE2078;
  wire N2454;
  wire N2401;
  wire CHOICE2177;
  wire CHOICE1957;
  wire CHOICE1904;
  wire CHOICE1864;
  wire N2464;
  wire N2409;
  wire N2456;
  wire CHOICE2062;
  wire CHOICE2208;
  wire CHOICE2045;
  wire N2355;
  wire CHOICE1929;
  wire N2344;
  wire CHOICE2028;
  wire CHOICE1933;
  wire CHOICE2115;
  wire CHOICE1908;
  wire N2307;
  wire CHOICE1942;
  wire N2291;
  wire CHOICE1922;
  wire CHOICE2009;
  wire CHOICE1849;
  wire N2313;
  wire N2350;
  wire CHOICE2233;
  wire \XLXI_4/q_4_5 ;
  wire CHOICE2024;
  wire CHOICE2151;
  wire CHOICE2228;
  wire CHOICE1980;
  wire CHOICE2071;
  wire N2287;
  wire N1275;
  wire N1277;
  wire N1279;
  wire N1281;
  wire N1283;
  wire CHOICE2639;
  wire CHOICE2401;
  wire N2407;
  wire CHOICE2627;
  wire N2382;
  wire CHOICE2257;
  wire \XLXI_4/timer_5usec_count_7_rt ;
  wire CHOICE2316;
  wire CHOICE2342;
  wire CHOICE2311;
  wire CHOICE2259;
  wire \XLXI_4/q_4_6 ;
  wire CHOICE2598;
  wire \XLXI_4/m1_state_3_1 ;
  wire \XLXI_4/m1_state_2_2 ;
  wire CHOICE2364;
  wire N2384;
  wire CHOICE2264;
  wire N2328;
  wire CHOICE2594;
  wire N2462;
  wire N2395;
  wire N2425;
  wire CHOICE2454;
  wire N2452;
  wire CHOICE2295;
  wire CHOICE2370;
  wire CHOICE2307;
  wire N2334;
  wire CHOICE2359;
  wire CHOICE2329;
  wire N2308;
  wire CHOICE2524;
  wire N2305;
  wire CHOICE2430;
  wire N2448;
  wire CHOICE2617;
  wire N2385;
  wire N2458;
  wire CHOICE2344;
  wire N2320;
  wire CHOICE2637;
  wire CHOICE2605;
  wire CHOICE2348;
  wire CHOICE2296;
  wire CHOICE2429;
  wire CHOICE2492;
  wire N2337;
  wire CHOICE2608;
  wire N2447;
  wire \XLXI_4/q_1_1 ;
  wire CHOICE2440;
  wire CHOICE2503;
  wire CHOICE2470;
  wire N2379;
  wire CHOICE2465;
  wire CHOICE2387;
  wire N2354;
  wire CHOICE2321;
  wire CHOICE2519;
  wire CHOICE2332;
  wire CHOICE2514;
  wire CHOICE2602;
  wire CHOICE2394;
  wire N2399;
  wire CHOICE2335;
  wire N2396;
  wire N2335;
  wire N2293;
  wire CHOICE2435;
  wire CHOICE2580;
  wire N2360;
  wire N2391;
  wire N2381;
  wire CHOICE2499;
  wire N2393;
  wire CHOICE2654;
  wire CHOICE2649;
  wire CHOICE2533;
  wire N2283;
  wire N2398;
  wire CHOICE2308;
  wire CHOICE2286;
  wire CHOICE2488;
  wire CHOICE2466;
  wire CHOICE2650;
  wire CHOICE2486;
  wire N2365;
  wire N1527;
  wire CHOICE2288;
  wire CHOICE2551;
  wire CHOICE2353;
  wire CHOICE2607;
  wire N2460;
  wire CHOICE2572;
  wire N2326;
  wire CHOICE2325;
  wire N2348;
  wire N2274;
  wire N2275;
  wire \XLXI_4/timer_60usec_count_9_rt ;
  wire \XLXI_4/timer_60usec_count_3_rt ;
  wire \XLXI_4/timer_5usec_count_2_rt ;
  wire \XLXI_4/timer_5usec_count_3_rt ;
  wire \XLXI_4/timer_60usec_count_5_rt ;
  wire \XLXI_4/timer_60usec_count_7_rt ;
  wire \XLXI_4/timer_60usec_count_6_rt ;
  wire \XLXI_4/timer_60usec_count_4_rt ;
  wire \XLXI_4/timer_60usec_count_8_rt ;
  wire \XLXI_1/count_1_rt ;
  wire \XLXI_1/count_2_rt ;
  wire \XLXI_4/timer_5usec_count_4_rt ;
  wire \XLXI_4/timer_60usec_count_1_rt ;
  wire \XLXI_1/count_3_rt ;
  wire \XLXI_1/count_4_rt ;
  wire \XLXI_4/timer_5usec_count_5_rt ;
  wire \XLXI_1/count_5_rt ;
  wire \XLXI_4/timer_60usec_count_10_rt ;
  wire \XLXI_4/timer_5usec_count_6_rt ;
  wire \XLXI_4/timer_60usec_count_2_rt ;
  wire \XLXI_4/timer_5usec_count_1_rt ;
  wire \XLXI_3/clkcnt_13_rt ;
  wire \XLXI_3/count_1_rt ;
  wire \XLXI_3/count_2_rt ;
  wire \XLXI_3/count_3_rt ;
  wire \XLXI_3/count_4_rt ;
  wire \XLXI_3/count_5_rt ;
  wire \XLXI_3/clkcnt_14_rt ;
  wire \XLXI_3/clkcnt_1_rt ;
  wire \XLXI_3/clkcnt_2_rt ;
  wire \XLXI_3/clkcnt_3_rt ;
  wire \XLXI_3/clkcnt_4_rt ;
  wire \XLXI_3/clkcnt_5_rt ;
  wire \XLXI_3/clkcnt_6_rt ;
  wire \XLXI_3/clkcnt_7_rt ;
  wire \XLXI_3/clkcnt_8_rt ;
  wire \XLXI_3/clkcnt_9_rt ;
  wire \XLXI_3/clkcnt_10_rt ;
  wire \XLXI_3/clkcnt_11_rt ;
  wire \XLXI_4/q_7_1 ;
  wire \XLXI_4/m1_state_1_1 ;
  wire \XLXI_4/m1_state_2_1 ;
  wire \XLXI_4/q_5_1 ;
  wire \XLXI_4/m1_state_0_1 ;
  wire \XLXI_4/q_2_1 ;
  wire \XLXI_4/q_4_1 ;
  wire \XLXI_4/q_5_2 ;
  wire \XLXI_4/q_1_2 ;
  wire \XLXI_4/q_7_2 ;
  wire \XLXI_4/q_5_3 ;
  wire \XLXI_4/q_1_3 ;
  wire \XLXI_4/q_7_3 ;
  wire \XLXI_4/q_4_2 ;
  wire \XLXI_4/q_2_2 ;
  wire \XLXI_4/q_62 ;
  wire \XLXI_4/q_3_1 ;
  wire \XLXI_4/q_5_4 ;
  wire \XLXI_4/q_6_2 ;
  wire \XLXI_4/q_1_4 ;
  wire \XLXI_4/q_4_3 ;
  wire \XLXI_4/q_2_3 ;
  wire \XLXI_4/q_6_4 ;
  wire \XLXI_4/q_6_5 ;
  wire \XLXI_4/q_6_6 ;
  wire \XLXI_4/q_3_2 ;
  wire \XLXI_4/q_5_5 ;
  wire \XLXI_4/q_4_4 ;
  wire \XLXI_1/clk1 ;
  wire \XLXI_4/rx_released1 ;
  wire \XLXI_3/clk_int1 ;
  wire N2469;
  wire N2470;
  wire N2471;
  wire N2472;
  wire N2473;
  wire N2474;
  wire N2475;
  wire N2476;
  wire N2477;
  wire N2478;
  wire N2479;
  wire N2480;
  wire N2481;
  wire N2482;
  wire N2483;
  wire N2484;
  wire N2485;
  wire N2486;
  wire N2487;
  wire N2488;
  wire N2489;
  wire N2490;
  wire N2491;
  wire N2492;
  wire N2493;
  wire N2494;
  wire N2495;
  wire N2496;
  wire N2497;
  wire N2498;
  wire N2499;
  wire N2500;
  wire N2501;
  wire [6 : 0] \XLXI_4/rx_ascii ;
  wire [3 : 0] \XLXI_2/count ;
  wire [7 : 0] \XLXI_3/data ;
  wire [11 : 1] \XLXI_4/timer_60usec_count__n0000 ;
  wire [3 : 0] \XLXI_4/bit_count__n0000 ;
  wire [3 : 0] \XLXI_4/bit_count ;
  wire [7 : 1] \XLXI_4/timer_5usec_count__n0000 ;
  wire [3 : 0] \XLXI_4/m1_state ;
  wire [10 : 0] \XLXI_4/q ;
  wire [11 : 0] \XLXI_4/timer_60usec_count ;
  wire [6 : 0] \XLXI_1/_old_count_7 ;
  wire [7 : 0] \XLXI_4/timer_5usec_count ;
  wire [6 : 0] \XLXI_1/count ;
  wire [6 : 0] \XLXI_4/ascii ;
  wire [0 : 0] \XLXI_4/m1_next_state ;
  wire [15 : 0] \XLXI_3/clkcnt ;
  wire [6 : 0] \XLXI_3/_n0030 ;
  wire [6 : 0] \XLXI_3/data_in_buf ;
  wire [6 : 1] \XLXI_3/_n0031 ;
  wire [6 : 0] \XLXI_3/count ;
  wire [15 : 1] \XLXI_3/clkcnt__n0000 ;
  wire [3 : 0] \XLXI_2/count__n0000 ;
  GND XST_GND (
    .G(ps2ck_IOBUF)
  );
  defparam \XLXI_4/ps2_data_hi_z111_G .INIT = 16'hF2EF;
  LUT4 \XLXI_4/ps2_data_hi_z111_G  (
    .I0(\XLXI_4/q [0]),
    .I1(\XLXI_4/m1_state [1]),
    .I2(\XLXI_4/m1_state [2]),
    .I3(\XLXI_4/m1_state [3]),
    .O(N2284)
  );
  FDC \XLXI_1/count_5  (
    .D(\XLXI_1/_old_count_7 [5]),
    .CLR(CHOICE1937),
    .C(clk_BUFGP),
    .Q(\XLXI_1/count [5])
  );
  INV \XLXI_2/count_Aclr_INV1_INV_0  (
    .I(rst_IBUF),
    .O(CHOICE1937)
  );
  XORCY \XLXI_3/lcd_clkcnt__n0000<12>_xor  (
    .CI(\XLXI_3/lcd_clkcnt__n0000<11>_cyo ),
    .LI(\XLXI_3/clkcnt_12_rt ),
    .O(\XLXI_3/clkcnt__n0000 [12])
  );
  defparam \XLXI_3/clkcnt_15_rt_0 .INIT = 4'h2;
  LUT1 \XLXI_3/clkcnt_15_rt_0  (
    .I0(\XLXI_3/clkcnt [15]),
    .O(\XLXI_3/clkcnt_15_rt )
  );
  FDRE \XLXI_4/q_3  (
    .D(\XLXI_4/q [4]),
    .R(CHOICE1937),
    .CE(\XLXI_4/_n0004 ),
    .C(\XLXI_1/clk ),
    .Q(\XLXI_4/q [3])
  );
  XORCY \top_XLXI_4/timer_60usec_count__n0000<9>_xor  (
    .CI(\top_XLXI_4/timer_60usec_count__n0000<8>_cyo ),
    .LI(\XLXI_4/timer_60usec_count_9_rt ),
    .O(\XLXI_4/timer_60usec_count__n0000 [9])
  );
  defparam \XLXI_4/timer_60usec_count_Sclr_INV1 .INIT = 16'hFFBA;
  LUT4 \XLXI_4/timer_60usec_count_Sclr_INV1  (
    .I0(\XLXI_4/m1_state [3]),
    .I1(\XLXI_4/m1_state [0]),
    .I2(\XLXI_4/m1_state [1]),
    .I3(\XLXI_4/m1_state [2]),
    .O(\XLXI_4/timer_60usec_count_0_N0 )
  );
  FDRE \XLXI_4/q_4  (
    .D(\XLXI_4/q [5]),
    .R(CHOICE1937),
    .CE(\XLXI_4/_n0004 ),
    .C(\XLXI_1/clk ),
    .Q(\XLXI_4/q [4])
  );
  defparam \XLXI_4/bit_count_Madd__n0000_Mxor_Result<2>_Result1 .INIT = 8'h78;
  LUT3 \XLXI_4/bit_count_Madd__n0000_Mxor_Result<2>_Result1  (
    .I0(\XLXI_4/bit_count [0]),
    .I1(\XLXI_4/bit_count [1]),
    .I2(\XLXI_4/bit_count [2]),
    .O(\XLXI_4/bit_count__n0000 [2])
  );
  FDRE \XLXI_4/rx_ascii_2  (
    .D(\XLXI_4/ascii [2]),
    .R(CHOICE1937),
    .CE(\XLXI_4/rx_output_event ),
    .C(\XLXI_1/clk ),
    .Q(\XLXI_4/rx_ascii [2])
  );
  FDRE \XLXI_4/rx_ascii_4  (
    .D(\XLXI_4/ascii [4]),
    .R(CHOICE1937),
    .CE(\XLXI_4/rx_output_event ),
    .C(\XLXI_1/clk ),
    .Q(\XLXI_4/rx_ascii [4])
  );
  defparam \XLXI_4/_n00101 .INIT = 16'h4CEC;
  LUT4_L \XLXI_4/_n00101  (
    .I0(\XLXI_4/rx_shifting_done ),
    .I1(\XLXI_4/right_shift_key ),
    .I2(\XLXI_4/_n0141 ),
    .I3(\XLXI_4/hold_released ),
    .LO(\XLXI_4/_n0010 )
  );
  FDRE \XLXI_4/rx_ascii_1  (
    .D(\XLXI_4/ascii [1]),
    .R(CHOICE1937),
    .CE(\XLXI_4/rx_output_event ),
    .C(\XLXI_1/clk ),
    .Q(\XLXI_4/rx_ascii [1])
  );
  FDRE \XLXI_4/rx_ascii_3  (
    .D(\XLXI_4/ascii [3]),
    .R(CHOICE1937),
    .CE(\XLXI_4/rx_output_event ),
    .C(\XLXI_1/clk ),
    .Q(\XLXI_4/rx_ascii [3])
  );
  defparam \XLXI_4/_n00091 .INIT = 16'h4CEC;
  LUT4_L \XLXI_4/_n00091  (
    .I0(\XLXI_4/rx_shifting_done ),
    .I1(\XLXI_4/left_shift_key ),
    .I2(\XLXI_4/_n0140 ),
    .I3(\XLXI_4/hold_released ),
    .LO(\XLXI_4/_n0009 )
  );
  FDRE \XLXI_4/rx_ascii_0  (
    .D(\XLXI_4/ascii [0]),
    .R(CHOICE1937),
    .CE(\XLXI_4/rx_output_event ),
    .C(\XLXI_1/clk ),
    .Q(\XLXI_4/rx_ascii [0])
  );
  FDRE \XLXI_4/bit_count_2  (
    .D(\XLXI_4/bit_count__n0000 [2]),
    .R(\XLXI_4/_n0005 ),
    .CE(\XLXI_4/_n0004 ),
    .C(\XLXI_1/clk ),
    .Q(\XLXI_4/bit_count [2])
  );
  defparam \XLXI_4/ascii<1>341 .INIT = 16'hFFFE;
  LUT4_L \XLXI_4/ascii<1>341  (
    .I0(CHOICE2160),
    .I1(CHOICE2152),
    .I2(N13),
    .I3(CHOICE2131),
    .LO(\XLXI_4/ascii [1])
  );
  defparam \XLXI_3/count_6_rt_1 .INIT = 4'h2;
  LUT1 \XLXI_3/count_6_rt_1  (
    .I0(\XLXI_3/count [6]),
    .O(\XLXI_3/count_6_rt )
  );
  FDRS \XLXI_4/m1_state_2  (
    .D(N2501),
    .R(CHOICE1937),
    .S(CHOICE1827),
    .C(\XLXI_1/clk ),
    .Q(\XLXI_4/m1_state [2])
  );
  defparam \XLXI_4/ascii<1>162 .INIT = 16'h0E04;
  LUT4_L \XLXI_4/ascii<1>162  (
    .I0(\XLXI_4/q [5]),
    .I1(N2420),
    .I2(N28),
    .I3(N2421),
    .LO(CHOICE2130)
  );
  defparam \XLXI_4/timer_60usec_done42 .INIT = 8'h80;
  LUT3 \XLXI_4/timer_60usec_done42  (
    .I0(N2491),
    .I1(CHOICE2246),
    .I2(CHOICE2251),
    .O(\XLXI_4/timer_60usec_done )
  );
  IOBUF ps2ck_IOBUF_2 (
    .I(ps2ck_IOBUF),
    .T(\XLXI_4/ps2_clk_N0 ),
    .O(N2274),
    .IO(ps2ck)
  );
  IOBUF ps2dk_IOBUF (
    .I(ps2ck_IOBUF),
    .T(\XLXI_4/ps2_data_hi_z ),
    .O(N2275),
    .IO(ps2dk)
  );
  FDC \XLXI_1/count_3  (
    .D(\XLXI_1/_old_count_7 [3]),
    .CLR(CHOICE1937),
    .C(clk_BUFGP),
    .Q(\XLXI_1/count [3])
  );
  FDRE \XLXI_4/bit_count_1  (
    .D(\XLXI_4/bit_count__n0000 [1]),
    .R(\XLXI_4/_n0005 ),
    .CE(\XLXI_4/_n0004 ),
    .C(\XLXI_1/clk ),
    .Q(\XLXI_4/bit_count [1])
  );
  XORCY \top_XLXI_1/_old_count_7<6>_xor  (
    .CI(\top_XLXI_1/_old_count_7<5>_cyo ),
    .LI(\XLXI_1/count [6]),
    .O(\XLXI_1/_old_count_7 [6])
  );
  defparam \XLXI_4/timer_5usec_count_Sclr_INV1 .INIT = 8'hFD;
  LUT3 \XLXI_4/timer_5usec_count_Sclr_INV1  (
    .I0(\XLXI_4/m1_state [1]),
    .I1(\XLXI_4/m1_state [0]),
    .I2(\XLXI_4/m1_state [2]),
    .O(\XLXI_4/timer_5usec_count_0_N0 )
  );
  defparam \XLXI_4/ascii<5>297 .INIT = 16'hFF8D;
  LUT4_L \XLXI_4/ascii<5>297  (
    .I0(\XLXI_4/q [1]),
    .I1(CHOICE2233),
    .I2(N2374),
    .I3(CHOICE2213),
    .LO(\XLXI_4/ascii [5])
  );
  defparam \XLXI_4/ascii<4>449 .INIT = 16'h5540;
  LUT4_L \XLXI_4/ascii<4>449  (
    .I0(\XLXI_4/q [8]),
    .I1(\XLXI_4/q [3]),
    .I2(CHOICE2430),
    .I3(CHOICE2470),
    .LO(\XLXI_4/ascii [4])
  );
  defparam \XLXI_4/m1_next_state<0>38_SW0 .INIT = 16'hEAAA;
  LUT4 \XLXI_4/m1_next_state<0>38_SW0  (
    .I0(\XLXI_4/m1_state [3]),
    .I1(\XLXI_4/m1_state [0]),
    .I2(\XLXI_4/m1_state [1]),
    .I3(\XLXI_4/m1_state [2]),
    .O(N2359)
  );
  defparam Ker961.INIT = 4'h1;
  LUT2_L Ker961 (
    .I0(\XLXI_4/q_3_1 ),
    .I1(\XLXI_4/q_2_2 ),
    .LO(N96)
  );
  defparam \XLXI_4/m1_next_state<0>38 .INIT = 16'h5150;
  LUT4_L \XLXI_4/m1_next_state<0>38  (
    .I0(\XLXI_4/ps2_clk_s ),
    .I1(\XLXI_4/m1_state [3]),
    .I2(CHOICE2311),
    .I3(CHOICE2316),
    .LO(CHOICE2321)
  );
  FD \XLXI_4/ps2_data_s_3  (
    .D(N2275),
    .C(\XLXI_1/clk ),
    .Q(\XLXI_4/ps2_data_s )
  );
  FD \XLXI_4/ps2_clk_s_4  (
    .D(N2274),
    .C(\XLXI_1/clk ),
    .Q(\XLXI_4/ps2_clk_s )
  );
  FDRE \XLXI_4/rx_ascii_5  (
    .D(\XLXI_4/ascii [5]),
    .R(CHOICE1937),
    .CE(\XLXI_4/rx_output_event ),
    .C(\XLXI_1/clk ),
    .Q(\XLXI_4/rx_ascii [5])
  );
  FDRE \XLXI_4/q_9  (
    .D(\XLXI_4/q [10]),
    .R(CHOICE1937),
    .CE(\XLXI_4/_n0004 ),
    .C(\XLXI_1/clk ),
    .Q(\XLXI_4/q [9])
  );
  FDRE \XLXI_4/q_8  (
    .D(\XLXI_4/q [9]),
    .R(CHOICE1937),
    .CE(\XLXI_4/_n0004 ),
    .C(\XLXI_1/clk ),
    .Q(\XLXI_4/q [8])
  );
  FDRE \XLXI_4/q_7  (
    .D(\XLXI_4/q [8]),
    .R(CHOICE1937),
    .CE(\XLXI_4/_n0004 ),
    .C(\XLXI_1/clk ),
    .Q(\XLXI_4/q [7])
  );
  FDRE \XLXI_4/q_6  (
    .D(\XLXI_4/q [7]),
    .R(CHOICE1937),
    .CE(\XLXI_4/_n0004 ),
    .C(\XLXI_1/clk ),
    .Q(\XLXI_4/q [6])
  );
  FDRE \XLXI_4/q_5  (
    .D(\XLXI_4/q [6]),
    .R(CHOICE1937),
    .CE(\XLXI_4/_n0004 ),
    .C(\XLXI_1/clk ),
    .Q(\XLXI_4/q [5])
  );
  FDRE \XLXI_4/timer_60usec_count_6  (
    .D(\XLXI_4/timer_60usec_count__n0000 [6]),
    .R(\XLXI_4/timer_60usec_count_0_N0 ),
    .CE(\XLXI_4/timer_60usec_count_0_N1 ),
    .C(\XLXI_1/clk ),
    .Q(\XLXI_4/timer_60usec_count [6])
  );
  FDRE \XLXI_4/bit_count_0  (
    .D(\XLXI_4/bit_count__n0000 [0]),
    .R(\XLXI_4/_n0005 ),
    .CE(\XLXI_4/_n0004 ),
    .C(\XLXI_1/clk ),
    .Q(\XLXI_4/bit_count [0])
  );
  FDRE \XLXI_4/rx_ascii_6  (
    .D(\XLXI_4/ascii [6]),
    .R(CHOICE1937),
    .CE(\XLXI_4/rx_output_event ),
    .C(\XLXI_1/clk ),
    .Q(\XLXI_4/rx_ascii [6])
  );
  FDRE \XLXI_4/q_0  (
    .D(\XLXI_4/q [1]),
    .R(CHOICE1937),
    .CE(\XLXI_4/_n0004 ),
    .C(\XLXI_1/clk ),
    .Q(\XLXI_4/q [0])
  );
  defparam Ker1331.INIT = 4'h8;
  LUT2_D Ker1331 (
    .I0(\XLXI_4/q_7_2 ),
    .I1(\XLXI_4/q_6_2 ),
    .LO(N2479),
    .O(N133)
  );
  defparam \XLXI_4/m1_next_state<0>199 .INIT = 16'hFDF8;
  LUT4_D \XLXI_4/m1_next_state<0>199  (
    .I0(CHOICE2348),
    .I1(N2320),
    .I2(CHOICE2344),
    .I3(N2319),
    .LO(N2480),
    .O(\XLXI_4/m1_next_state [0])
  );
  FDRS \XLXI_4/m1_state_1  (
    .D(N2277),
    .R(CHOICE1937),
    .S(CHOICE1913),
    .C(\XLXI_1/clk ),
    .Q(\XLXI_4/m1_state [1])
  );
  defparam \XLXI_4/ps2_clk_EnableTr_INV1 .INIT = 16'hFDFF;
  LUT4 \XLXI_4/ps2_clk_EnableTr_INV1  (
    .I0(\XLXI_4/m1_state [0]),
    .I1(\XLXI_4/m1_state [3]),
    .I2(\XLXI_4/m1_state [2]),
    .I3(\XLXI_4/m1_state [1]),
    .O(\XLXI_4/ps2_clk_N0 )
  );
  defparam \XLXI_3/Ker5_SW1 .INIT = 4'hE;
  LUT2_L \XLXI_3/Ker5_SW1  (
    .I0(\XLXI_3/_n0033 ),
    .I1(\XLXI_3/count [4]),
    .LO(N2291)
  );
  MUXCY \top_XLXI_4/timer_60usec_count__n0000<9>cy  (
    .CI(\top_XLXI_4/timer_60usec_count__n0000<8>_cyo ),
    .DI(ps2ck_IOBUF),
    .S(\XLXI_4/timer_60usec_count_9_rt ),
    .O(\top_XLXI_4/timer_60usec_count__n0000<9>_cyo )
  );
  defparam \XLXI_3/Ker6_SW0_SW0 .INIT = 4'hD;
  LUT2 \XLXI_3/Ker6_SW0_SW0  (
    .I0(\XLXI_3/state_FFd3 ),
    .I1(\XLXI_3/_n0035 ),
    .O(N2357)
  );
  XORCY \top_XLXI_4/timer_60usec_count__n0000<3>_xor  (
    .CI(\top_XLXI_4/timer_60usec_count__n0000<2>_cyo ),
    .LI(\XLXI_4/timer_60usec_count_3_rt ),
    .O(\XLXI_4/timer_60usec_count__n0000 [3])
  );
  XORCY \top_XLXI_4/timer_60usec_count__n0000<7>_xor  (
    .CI(\top_XLXI_4/timer_60usec_count__n0000<6>_cyo ),
    .LI(\XLXI_4/timer_60usec_count_7_rt ),
    .O(\XLXI_4/timer_60usec_count__n0000 [7])
  );
  defparam \XLXI_4/bit_count_Madd__n0000_Mxor_Result<3>_Result1 .INIT = 16'h6CCC;
  LUT4 \XLXI_4/bit_count_Madd__n0000_Mxor_Result<3>_Result1  (
    .I0(\XLXI_4/bit_count [0]),
    .I1(\XLXI_4/bit_count [3]),
    .I2(\XLXI_4/bit_count [1]),
    .I3(\XLXI_4/bit_count [2]),
    .O(\XLXI_4/bit_count__n0000 [3])
  );
  MUXCY \top_XLXI_4/timer_60usec_count__n0000<3>cy  (
    .CI(\top_XLXI_4/timer_60usec_count__n0000<2>_cyo ),
    .DI(ps2ck_IOBUF),
    .S(\XLXI_4/timer_60usec_count_3_rt ),
    .O(\top_XLXI_4/timer_60usec_count__n0000<3>_cyo )
  );
  defparam Ker1201.INIT = 16'h0400;
  LUT4 Ker1201 (
    .I0(\XLXI_4/q_2_3 ),
    .I1(\XLXI_4/q_7_3 ),
    .I2(\XLXI_4/q_3_2 ),
    .I3(\XLXI_4/q_5_5 ),
    .O(N120)
  );
  defparam \XLXI_3/_n0038_SW0 .INIT = 16'hFFFE;
  LUT4_L \XLXI_3/_n0038_SW0  (
    .I0(\XLXI_3/state_FFd4 ),
    .I1(\XLXI_3/state_FFd7 ),
    .I2(\XLXI_3/state_FFd5 ),
    .I3(\XLXI_3/state_FFd1 ),
    .LO(N156)
  );
  defparam Ker281.INIT = 4'h7;
  LUT2_D Ker281 (
    .I0(\XLXI_4/q_3_1 ),
    .I1(\XLXI_4/q_2_2 ),
    .LO(N2481),
    .O(N28)
  );
  defparam \XLXI_4/bit_count_Madd__n0000_Mxor_Result<1>_Result1 .INIT = 4'h6;
  LUT2 \XLXI_4/bit_count_Madd__n0000_Mxor_Result<1>_Result1  (
    .I0(\XLXI_4/bit_count [0]),
    .I1(\XLXI_4/bit_count [1]),
    .O(\XLXI_4/bit_count__n0000 [1])
  );
  VCC XST_VCC (
    .P(N1)
  );
  defparam \XLXI_4/ascii<2>255_SW0 .INIT = 16'hF100;
  LUT4 \XLXI_4/ascii<2>255_SW0  (
    .I0(\XLXI_4/right_shift_key ),
    .I1(\XLXI_4/left_shift_key ),
    .I2(\XLXI_4/q [1]),
    .I3(CHOICE2071),
    .O(N2289)
  );
  defparam \XLXI_4/timer_5usec_done21 .INIT = 16'h8000;
  LUT4 \XLXI_4/timer_5usec_done21  (
    .I0(\XLXI_4/timer_5usec_count [4]),
    .I1(\XLXI_4/timer_5usec_count [5]),
    .I2(N2489),
    .I3(CHOICE1948),
    .O(\XLXI_4/timer_5usec_done )
  );
  defparam \XLXI_4/_n00041 .INIT = 8'h20;
  LUT3 \XLXI_4/_n00041  (
    .I0(\XLXI_4/m1_state [0]),
    .I1(\XLXI_4/m1_state [1]),
    .I2(\XLXI_4/m1_state [3]),
    .O(\XLXI_4/_n0004 )
  );
  FDRE \XLXI_4/timer_60usec_count_9  (
    .D(\XLXI_4/timer_60usec_count__n0000 [9]),
    .R(\XLXI_4/timer_60usec_count_0_N0 ),
    .CE(\XLXI_4/timer_60usec_count_0_N1 ),
    .C(\XLXI_1/clk ),
    .Q(\XLXI_4/timer_60usec_count [9])
  );
  defparam \XLXI_4/rx_shift_key_on1 .INIT = 4'hE;
  LUT2_D \XLXI_4/rx_shift_key_on1  (
    .I0(\XLXI_4/left_shift_key ),
    .I1(\XLXI_4/right_shift_key ),
    .LO(N2482),
    .O(\XLXI_4/rx_shift_key_on )
  );
  defparam \XLXI_4/m1_next_state<3>156 .INIT = 8'h80;
  LUT3 \XLXI_4/m1_next_state<3>156  (
    .I0(\XLXI_4/ps2_data_s ),
    .I1(\XLXI_4/m1_state [1]),
    .I2(CHOICE2307),
    .O(CHOICE2308)
  );
  FDC \XLXI_1/count_6  (
    .D(\XLXI_1/_old_count_7 [6]),
    .CLR(CHOICE1937),
    .C(clk_BUFGP),
    .Q(\XLXI_1/count [6])
  );
  FDE \XLXI_1/clk_5  (
    .D(\XLXI_1/_old_count_7 [6]),
    .CE(rst_IBUF),
    .C(clk_BUFGP),
    .Q(\XLXI_1/clk1 )
  );
  FDC \XLXI_1/count_4  (
    .D(\XLXI_1/_old_count_7 [4]),
    .CLR(CHOICE1937),
    .C(clk_BUFGP),
    .Q(\XLXI_1/count [4])
  );
  FDC \XLXI_1/count_0  (
    .D(\XLXI_1/_old_count_7 [0]),
    .CLR(CHOICE1937),
    .C(clk_BUFGP),
    .Q(\XLXI_1/count [0])
  );
  MUXCY \top_XLXI_4/timer_5usec_count__n0000<2>cy  (
    .CI(\top_XLXI_4/timer_5usec_count__n0000<1>_cyo ),
    .DI(ps2ck_IOBUF),
    .S(\XLXI_4/timer_5usec_count_2_rt ),
    .O(\top_XLXI_4/timer_5usec_count__n0000<2>_cyo )
  );
  XORCY \top_XLXI_4/timer_5usec_count__n0000<2>_xor  (
    .CI(\top_XLXI_4/timer_5usec_count__n0000<1>_cyo ),
    .LI(\XLXI_4/timer_5usec_count_2_rt ),
    .O(\XLXI_4/timer_5usec_count__n0000 [2])
  );
  MUXCY \top_XLXI_4/timer_60usec_count__n0000<0>cy  (
    .CI(ps2ck_IOBUF),
    .DI(N1),
    .S(N7),
    .O(\top_XLXI_4/timer_60usec_count__n0000<0>_cyo )
  );
  XORCY \top_XLXI_4/timer_60usec_count__n0000<4>_xor  (
    .CI(\top_XLXI_4/timer_60usec_count__n0000<3>_cyo ),
    .LI(\XLXI_4/timer_60usec_count_4_rt ),
    .O(\XLXI_4/timer_60usec_count__n0000 [4])
  );
  FDC \XLXI_1/count_1  (
    .D(\XLXI_1/_old_count_7 [1]),
    .CLR(CHOICE1937),
    .C(clk_BUFGP),
    .Q(\XLXI_1/count [1])
  );
  FDC \XLXI_1/count_2  (
    .D(\XLXI_1/_old_count_7 [2]),
    .CLR(CHOICE1937),
    .C(clk_BUFGP),
    .Q(\XLXI_1/count [2])
  );
  INV \top_XLXI_1/_old_count_7<0>lut_INV_0  (
    .I(\XLXI_1/count [0]),
    .O(\XLXI_1/_old_count_7 [0])
  );
  MUXCY \top_XLXI_1/_old_count_7<0>cy  (
    .CI(ps2ck_IOBUF),
    .DI(N1),
    .S(\XLXI_1/_old_count_7 [0]),
    .O(\top_XLXI_1/_old_count_7<0>_cyo )
  );
  MUXCY \top_XLXI_4/timer_5usec_count__n0000<3>cy  (
    .CI(\top_XLXI_4/timer_5usec_count__n0000<2>_cyo ),
    .DI(ps2ck_IOBUF),
    .S(\XLXI_4/timer_5usec_count_3_rt ),
    .O(\top_XLXI_4/timer_5usec_count__n0000<3>_cyo )
  );
  XORCY \top_XLXI_4/timer_5usec_count__n0000<3>_xor  (
    .CI(\top_XLXI_4/timer_5usec_count__n0000<2>_cyo ),
    .LI(\XLXI_4/timer_5usec_count_3_rt ),
    .O(\XLXI_4/timer_5usec_count__n0000 [3])
  );
  OBUF led_2_OBUF (
    .I(\XLXI_4/rx_ascii [2]),
    .O(led[2])
  );
  MUXCY \top_XLXI_4/timer_60usec_count__n0000<5>cy  (
    .CI(\top_XLXI_4/timer_60usec_count__n0000<4>_cyo ),
    .DI(ps2ck_IOBUF),
    .S(\XLXI_4/timer_60usec_count_5_rt ),
    .O(\top_XLXI_4/timer_60usec_count__n0000<5>_cyo )
  );
  FDRE \XLXI_4/timer_60usec_count_8  (
    .D(\XLXI_4/timer_60usec_count__n0000 [8]),
    .R(\XLXI_4/timer_60usec_count_0_N0 ),
    .CE(\XLXI_4/timer_60usec_count_0_N1 ),
    .C(\XLXI_1/clk ),
    .Q(\XLXI_4/timer_60usec_count [8])
  );
  INV \top_XLXI_4/timer_60usec_count__n0000<0>lut_INV_0  (
    .I(\XLXI_4/timer_60usec_count [0]),
    .O(N7)
  );
  XORCY \top_XLXI_4/timer_5usec_count__n0000<1>_xor  (
    .CI(\top_XLXI_4/timer_5usec_count__n0000<0>_cyo ),
    .LI(\XLXI_4/timer_5usec_count_1_rt ),
    .O(\XLXI_4/timer_5usec_count__n0000 [1])
  );
  FDRE \XLXI_4/timer_60usec_count_5  (
    .D(\XLXI_4/timer_60usec_count__n0000 [5]),
    .R(\XLXI_4/timer_60usec_count_0_N0 ),
    .CE(\XLXI_4/timer_60usec_count_0_N1 ),
    .C(\XLXI_1/clk ),
    .Q(\XLXI_4/timer_60usec_count [5])
  );
  MUXCY \top_XLXI_4/timer_60usec_count__n0000<7>cy  (
    .CI(\top_XLXI_4/timer_60usec_count__n0000<6>_cyo ),
    .DI(ps2ck_IOBUF),
    .S(\XLXI_4/timer_60usec_count_7_rt ),
    .O(\top_XLXI_4/timer_60usec_count__n0000<7>_cyo )
  );
  FDRE \XLXI_4/q_4_6_6  (
    .D(\XLXI_4/q [5]),
    .R(CHOICE1937),
    .CE(\XLXI_4/_n0004 ),
    .C(\XLXI_1/clk ),
    .Q(\XLXI_4/q_4_6 )
  );
  MUXCY \top_XLXI_4/timer_60usec_count__n0000<6>cy  (
    .CI(\top_XLXI_4/timer_60usec_count__n0000<5>_cyo ),
    .DI(ps2ck_IOBUF),
    .S(\XLXI_4/timer_60usec_count_6_rt ),
    .O(\top_XLXI_4/timer_60usec_count__n0000<6>_cyo )
  );
  MUXCY \top_XLXI_4/timer_60usec_count__n0000<4>cy  (
    .CI(\top_XLXI_4/timer_60usec_count__n0000<3>_cyo ),
    .DI(ps2ck_IOBUF),
    .S(\XLXI_4/timer_60usec_count_4_rt ),
    .O(\top_XLXI_4/timer_60usec_count__n0000<4>_cyo )
  );
  FDRE \XLXI_4/q_1  (
    .D(\XLXI_4/q [2]),
    .R(CHOICE1937),
    .CE(\XLXI_4/_n0004 ),
    .C(\XLXI_1/clk ),
    .Q(\XLXI_4/q [1])
  );
  FDRE \XLXI_4/timer_60usec_count_7  (
    .D(\XLXI_4/timer_60usec_count__n0000 [7]),
    .R(\XLXI_4/timer_60usec_count_0_N0 ),
    .CE(\XLXI_4/timer_60usec_count_0_N1 ),
    .C(\XLXI_1/clk ),
    .Q(\XLXI_4/timer_60usec_count [7])
  );
  FDRE \XLXI_4/q_2  (
    .D(\XLXI_4/q [3]),
    .R(CHOICE1937),
    .CE(\XLXI_4/_n0004 ),
    .C(\XLXI_1/clk ),
    .Q(\XLXI_4/q [2])
  );
  MUXCY \top_XLXI_4/timer_60usec_count__n0000<8>cy  (
    .CI(\top_XLXI_4/timer_60usec_count__n0000<7>_cyo ),
    .DI(ps2ck_IOBUF),
    .S(\XLXI_4/timer_60usec_count_8_rt ),
    .O(\top_XLXI_4/timer_60usec_count__n0000<8>_cyo )
  );
  FDRE \XLXI_4/q_10  (
    .D(\XLXI_4/ps2_data_s ),
    .R(CHOICE1937),
    .CE(\XLXI_4/_n0004 ),
    .C(\XLXI_1/clk ),
    .Q(\XLXI_4/q [10])
  );
  FDRE \XLXI_4/timer_5usec_count_7  (
    .D(\XLXI_4/timer_5usec_count__n0000 [7]),
    .R(\XLXI_4/timer_5usec_count_0_N0 ),
    .CE(\XLXI_4/timer_5usec_count_0_N1 ),
    .C(\XLXI_1/clk ),
    .Q(\XLXI_4/timer_5usec_count [7])
  );
  XORCY \top_XLXI_4/timer_5usec_count__n0000<7>_xor  (
    .CI(\top_XLXI_4/timer_5usec_count__n0000<6>_cyo ),
    .LI(\XLXI_4/timer_5usec_count_7_rt ),
    .O(\XLXI_4/timer_5usec_count__n0000 [7])
  );
  INV \XLXI_4/bit_count_Madd__n0000__n00091_INV_0  (
    .I(\XLXI_4/bit_count [0]),
    .O(\XLXI_4/bit_count__n0000 [0])
  );
  OBUF led_0_OBUF (
    .I(\XLXI_4/rx_ascii [0]),
    .O(led[0])
  );
  MUXCY \top_XLXI_1/_old_count_7<1>cy  (
    .CI(\top_XLXI_1/_old_count_7<0>_cyo ),
    .DI(ps2ck_IOBUF),
    .S(\XLXI_1/count_1_rt ),
    .O(\top_XLXI_1/_old_count_7<1>_cyo )
  );
  XORCY \top_XLXI_1/_old_count_7<1>_xor  (
    .CI(\top_XLXI_1/_old_count_7<0>_cyo ),
    .LI(\XLXI_1/count_1_rt ),
    .O(\XLXI_1/_old_count_7 [1])
  );
  MUXCY \top_XLXI_1/_old_count_7<2>cy  (
    .CI(\top_XLXI_1/_old_count_7<1>_cyo ),
    .DI(ps2ck_IOBUF),
    .S(\XLXI_1/count_2_rt ),
    .O(\top_XLXI_1/_old_count_7<2>_cyo )
  );
  MUXCY \top_XLXI_4/timer_5usec_count__n0000<4>cy  (
    .CI(\top_XLXI_4/timer_5usec_count__n0000<3>_cyo ),
    .DI(ps2ck_IOBUF),
    .S(\XLXI_4/timer_5usec_count_4_rt ),
    .O(\top_XLXI_4/timer_5usec_count__n0000<4>_cyo )
  );
  XORCY \top_XLXI_4/timer_5usec_count__n0000<4>_xor  (
    .CI(\top_XLXI_4/timer_5usec_count__n0000<3>_cyo ),
    .LI(\XLXI_4/timer_5usec_count_4_rt ),
    .O(\XLXI_4/timer_5usec_count__n0000 [4])
  );
  MUXCY \top_XLXI_4/timer_60usec_count__n0000<1>cy  (
    .CI(\top_XLXI_4/timer_60usec_count__n0000<0>_cyo ),
    .DI(ps2ck_IOBUF),
    .S(\XLXI_4/timer_60usec_count_1_rt ),
    .O(\top_XLXI_4/timer_60usec_count__n0000<1>_cyo )
  );
  XORCY \top_XLXI_4/timer_60usec_count__n0000<5>_xor  (
    .CI(\top_XLXI_4/timer_60usec_count__n0000<4>_cyo ),
    .LI(\XLXI_4/timer_60usec_count_5_rt ),
    .O(\XLXI_4/timer_60usec_count__n0000 [5])
  );
  XORCY \top_XLXI_1/_old_count_7<2>_xor  (
    .CI(\top_XLXI_1/_old_count_7<1>_cyo ),
    .LI(\XLXI_1/count_2_rt ),
    .O(\XLXI_1/_old_count_7 [2])
  );
  MUXCY \top_XLXI_1/_old_count_7<3>cy  (
    .CI(\top_XLXI_1/_old_count_7<2>_cyo ),
    .DI(ps2ck_IOBUF),
    .S(\XLXI_1/count_3_rt ),
    .O(\top_XLXI_1/_old_count_7<3>_cyo )
  );
  XORCY \top_XLXI_1/_old_count_7<3>_xor  (
    .CI(\top_XLXI_1/_old_count_7<2>_cyo ),
    .LI(\XLXI_1/count_3_rt ),
    .O(\XLXI_1/_old_count_7 [3])
  );
  MUXCY \top_XLXI_1/_old_count_7<4>cy  (
    .CI(\top_XLXI_1/_old_count_7<3>_cyo ),
    .DI(ps2ck_IOBUF),
    .S(\XLXI_1/count_4_rt ),
    .O(\top_XLXI_1/_old_count_7<4>_cyo )
  );
  MUXCY \top_XLXI_4/timer_5usec_count__n0000<5>cy  (
    .CI(\top_XLXI_4/timer_5usec_count__n0000<4>_cyo ),
    .DI(ps2ck_IOBUF),
    .S(\XLXI_4/timer_5usec_count_5_rt ),
    .O(\top_XLXI_4/timer_5usec_count__n0000<5>_cyo )
  );
  XORCY \top_XLXI_4/timer_5usec_count__n0000<5>_xor  (
    .CI(\top_XLXI_4/timer_5usec_count__n0000<4>_cyo ),
    .LI(\XLXI_4/timer_5usec_count_5_rt ),
    .O(\XLXI_4/timer_5usec_count__n0000 [5])
  );
  XORCY \top_XLXI_4/timer_60usec_count__n0000<1>_xor  (
    .CI(\top_XLXI_4/timer_60usec_count__n0000<0>_cyo ),
    .LI(\XLXI_4/timer_60usec_count_1_rt ),
    .O(\XLXI_4/timer_60usec_count__n0000 [1])
  );
  defparam \XLXI_4/m1_next_state<3>68 .INIT = 16'h1105;
  LUT4 \XLXI_4/m1_next_state<3>68  (
    .I0(\XLXI_4/m1_state [0]),
    .I1(N2335),
    .I2(N2334),
    .I3(\XLXI_4/timer_5usec_done ),
    .O(CHOICE2286)
  );
  defparam \XLXI_4/ascii<5>172_SW1_SW0 .INIT = 8'h02;
  LUT3 \XLXI_4/ascii<5>172_SW1_SW0  (
    .I0(\XLXI_4/q_4_2 ),
    .I1(\XLXI_4/q_3_1 ),
    .I2(\XLXI_4/q_2_2 ),
    .O(N2452)
  );
  FDRE \XLXI_4/timer_5usec_count_0  (
    .D(N6),
    .R(\XLXI_4/timer_5usec_count_0_N0 ),
    .CE(\XLXI_4/timer_5usec_count_0_N1 ),
    .C(\XLXI_1/clk ),
    .Q(\XLXI_4/timer_5usec_count [0])
  );
  FDRE \XLXI_4/timer_5usec_count_1  (
    .D(\XLXI_4/timer_5usec_count__n0000 [1]),
    .R(\XLXI_4/timer_5usec_count_0_N0 ),
    .CE(\XLXI_4/timer_5usec_count_0_N1 ),
    .C(\XLXI_1/clk ),
    .Q(\XLXI_4/timer_5usec_count [1])
  );
  FDRE \XLXI_4/timer_5usec_count_2  (
    .D(\XLXI_4/timer_5usec_count__n0000 [2]),
    .R(\XLXI_4/timer_5usec_count_0_N0 ),
    .CE(\XLXI_4/timer_5usec_count_0_N1 ),
    .C(\XLXI_1/clk ),
    .Q(\XLXI_4/timer_5usec_count [2])
  );
  FDRE \XLXI_4/timer_5usec_count_3  (
    .D(\XLXI_4/timer_5usec_count__n0000 [3]),
    .R(\XLXI_4/timer_5usec_count_0_N0 ),
    .CE(\XLXI_4/timer_5usec_count_0_N1 ),
    .C(\XLXI_1/clk ),
    .Q(\XLXI_4/timer_5usec_count [3])
  );
  FDRE \XLXI_4/timer_5usec_count_4  (
    .D(\XLXI_4/timer_5usec_count__n0000 [4]),
    .R(\XLXI_4/timer_5usec_count_0_N0 ),
    .CE(\XLXI_4/timer_5usec_count_0_N1 ),
    .C(\XLXI_1/clk ),
    .Q(\XLXI_4/timer_5usec_count [4])
  );
  FDRE \XLXI_4/timer_5usec_count_5  (
    .D(\XLXI_4/timer_5usec_count__n0000 [5]),
    .R(\XLXI_4/timer_5usec_count_0_N0 ),
    .CE(\XLXI_4/timer_5usec_count_0_N1 ),
    .C(\XLXI_1/clk ),
    .Q(\XLXI_4/timer_5usec_count [5])
  );
  FDRE \XLXI_4/timer_60usec_count_11  (
    .D(\XLXI_4/timer_60usec_count__n0000 [11]),
    .R(\XLXI_4/timer_60usec_count_0_N0 ),
    .CE(\XLXI_4/timer_60usec_count_0_N1 ),
    .C(\XLXI_1/clk ),
    .Q(\XLXI_4/timer_60usec_count [11])
  );
  XORCY \top_XLXI_4/timer_60usec_count__n0000<11>_xor  (
    .CI(\top_XLXI_4/timer_60usec_count__n0000<10>_cyo ),
    .LI(\XLXI_4/timer_60usec_count_11_rt ),
    .O(\XLXI_4/timer_60usec_count__n0000 [11])
  );
  XORCY \top_XLXI_4/timer_60usec_count__n0000<8>_xor  (
    .CI(\top_XLXI_4/timer_60usec_count__n0000<7>_cyo ),
    .LI(\XLXI_4/timer_60usec_count_8_rt ),
    .O(\XLXI_4/timer_60usec_count__n0000 [8])
  );
  defparam \XLXI_4/timer_5usec_count_ClkEn_INV1 .INIT = 16'h7FFF;
  LUT4 \XLXI_4/timer_5usec_count_ClkEn_INV1  (
    .I0(\XLXI_4/timer_5usec_count [4]),
    .I1(\XLXI_4/timer_5usec_count [5]),
    .I2(CHOICE1942),
    .I3(N2493),
    .O(\XLXI_4/timer_5usec_count_0_N1 )
  );
  FDRE \XLXI_4/timer_60usec_count_0  (
    .D(N7),
    .R(\XLXI_4/timer_60usec_count_0_N0 ),
    .CE(\XLXI_4/timer_60usec_count_0_N1 ),
    .C(\XLXI_1/clk ),
    .Q(\XLXI_4/timer_60usec_count [0])
  );
  FDRE \XLXI_4/timer_60usec_count_1  (
    .D(\XLXI_4/timer_60usec_count__n0000 [1]),
    .R(\XLXI_4/timer_60usec_count_0_N0 ),
    .CE(\XLXI_4/timer_60usec_count_0_N1 ),
    .C(\XLXI_1/clk ),
    .Q(\XLXI_4/timer_60usec_count [1])
  );
  FDRE \XLXI_4/timer_60usec_count_2  (
    .D(\XLXI_4/timer_60usec_count__n0000 [2]),
    .R(\XLXI_4/timer_60usec_count_0_N0 ),
    .CE(\XLXI_4/timer_60usec_count_0_N1 ),
    .C(\XLXI_1/clk ),
    .Q(\XLXI_4/timer_60usec_count [2])
  );
  FDRE \XLXI_4/timer_60usec_count_3  (
    .D(\XLXI_4/timer_60usec_count__n0000 [3]),
    .R(\XLXI_4/timer_60usec_count_0_N0 ),
    .CE(\XLXI_4/timer_60usec_count_0_N1 ),
    .C(\XLXI_1/clk ),
    .Q(\XLXI_4/timer_60usec_count [3])
  );
  FDRE \XLXI_4/timer_60usec_count_4  (
    .D(\XLXI_4/timer_60usec_count__n0000 [4]),
    .R(\XLXI_4/timer_60usec_count_0_N0 ),
    .CE(\XLXI_4/timer_60usec_count_0_N1 ),
    .C(\XLXI_1/clk ),
    .Q(\XLXI_4/timer_60usec_count [4])
  );
  XORCY \top_XLXI_1/_old_count_7<4>_xor  (
    .CI(\top_XLXI_1/_old_count_7<3>_cyo ),
    .LI(\XLXI_1/count_4_rt ),
    .O(\XLXI_1/_old_count_7 [4])
  );
  MUXCY \top_XLXI_1/_old_count_7<5>cy  (
    .CI(\top_XLXI_1/_old_count_7<4>_cyo ),
    .DI(ps2ck_IOBUF),
    .S(\XLXI_1/count_5_rt ),
    .O(\top_XLXI_1/_old_count_7<5>_cyo )
  );
  XORCY \top_XLXI_1/_old_count_7<5>_xor  (
    .CI(\top_XLXI_1/_old_count_7<4>_cyo ),
    .LI(\XLXI_1/count_5_rt ),
    .O(\XLXI_1/_old_count_7 [5])
  );
  MUXCY \top_XLXI_4/timer_60usec_count__n0000<10>cy  (
    .CI(\top_XLXI_4/timer_60usec_count__n0000<9>_cyo ),
    .DI(ps2ck_IOBUF),
    .S(\XLXI_4/timer_60usec_count_10_rt ),
    .O(\top_XLXI_4/timer_60usec_count__n0000<10>_cyo )
  );
  MUXCY \top_XLXI_4/timer_5usec_count__n0000<6>cy  (
    .CI(\top_XLXI_4/timer_5usec_count__n0000<5>_cyo ),
    .DI(ps2ck_IOBUF),
    .S(\XLXI_4/timer_5usec_count_6_rt ),
    .O(\top_XLXI_4/timer_5usec_count__n0000<6>_cyo )
  );
  XORCY \top_XLXI_4/timer_5usec_count__n0000<6>_xor  (
    .CI(\top_XLXI_4/timer_5usec_count__n0000<5>_cyo ),
    .LI(\XLXI_4/timer_5usec_count_6_rt ),
    .O(\XLXI_4/timer_5usec_count__n0000 [6])
  );
  MUXCY \top_XLXI_4/timer_60usec_count__n0000<2>cy  (
    .CI(\top_XLXI_4/timer_60usec_count__n0000<1>_cyo ),
    .DI(ps2ck_IOBUF),
    .S(\XLXI_4/timer_60usec_count_2_rt ),
    .O(\top_XLXI_4/timer_60usec_count__n0000<2>_cyo )
  );
  XORCY \top_XLXI_4/timer_60usec_count__n0000<6>_xor  (
    .CI(\top_XLXI_4/timer_60usec_count__n0000<5>_cyo ),
    .LI(\XLXI_4/timer_60usec_count_6_rt ),
    .O(\XLXI_4/timer_60usec_count__n0000 [6])
  );
  INV \top_XLXI_4/timer_5usec_count__n0000<0>lut_INV_0  (
    .I(\XLXI_4/timer_5usec_count [0]),
    .O(N6)
  );
  MUXCY \top_XLXI_4/timer_5usec_count__n0000<0>cy  (
    .CI(ps2ck_IOBUF),
    .DI(N1),
    .S(N6),
    .O(\top_XLXI_4/timer_5usec_count__n0000<0>_cyo )
  );
  OBUF led_1_OBUF (
    .I(\XLXI_4/rx_ascii [1]),
    .O(led[1])
  );
  MUXCY \top_XLXI_4/timer_5usec_count__n0000<1>cy  (
    .CI(\top_XLXI_4/timer_5usec_count__n0000<0>_cyo ),
    .DI(ps2ck_IOBUF),
    .S(\XLXI_4/timer_5usec_count_1_rt ),
    .O(\top_XLXI_4/timer_5usec_count__n0000<1>_cyo )
  );
  XORCY \top_XLXI_4/timer_60usec_count__n0000<10>_xor  (
    .CI(\top_XLXI_4/timer_60usec_count__n0000<9>_cyo ),
    .LI(\XLXI_4/timer_60usec_count_10_rt ),
    .O(\XLXI_4/timer_60usec_count__n0000 [10])
  );
  FDRE \XLXI_4/bit_count_3  (
    .D(\XLXI_4/bit_count__n0000 [3]),
    .R(\XLXI_4/_n0005 ),
    .CE(\XLXI_4/_n0004 ),
    .C(\XLXI_1/clk ),
    .Q(\XLXI_4/bit_count [3])
  );
  FDRE \XLXI_4/rx_released_7  (
    .D(\XLXI_4/hold_released ),
    .R(CHOICE1937),
    .CE(\XLXI_4/rx_output_event ),
    .C(\XLXI_1/clk ),
    .Q(\XLXI_4/rx_released1 )
  );
  defparam \XLXI_4/m1_next_state<1>1991 .INIT = 16'h0B01;
  LUT4 \XLXI_4/m1_next_state<1>1991  (
    .I0(\XLXI_4/m1_state [1]),
    .I1(N2450),
    .I2(\XLXI_4/m1_state [3]),
    .I3(CHOICE1879),
    .O(N2277)
  );
  FDR \XLXI_4/right_shift_key_8  (
    .D(\XLXI_4/_n0010 ),
    .R(CHOICE1937),
    .C(\XLXI_1/clk ),
    .Q(\XLXI_4/right_shift_key )
  );
  FDR \XLXI_4/left_shift_key_9  (
    .D(\XLXI_4/_n0009 ),
    .R(CHOICE1937),
    .C(\XLXI_1/clk ),
    .Q(\XLXI_4/left_shift_key )
  );
  FDRE \XLXI_4/hold_released_10  (
    .D(N1),
    .R(\XLXI_4/_n0006 ),
    .CE(\XLXI_4/_n0008 ),
    .C(\XLXI_1/clk ),
    .Q(\XLXI_4/hold_released )
  );
  FDS \XLXI_4/m1_state_0  (
    .D(N2480),
    .S(CHOICE1937),
    .C(\XLXI_1/clk ),
    .Q(\XLXI_4/m1_state [0])
  );
  FDRE \XLXI_4/timer_5usec_count_6  (
    .D(\XLXI_4/timer_5usec_count__n0000 [6]),
    .R(\XLXI_4/timer_5usec_count_0_N0 ),
    .CE(\XLXI_4/timer_5usec_count_0_N1 ),
    .C(\XLXI_1/clk ),
    .Q(\XLXI_4/timer_5usec_count [6])
  );
  defparam \XLXI_4/ascii<1>162_SW3 .INIT = 16'hCCC2;
  LUT4 \XLXI_4/ascii<1>162_SW3  (
    .I0(\XLXI_4/q_4_3 ),
    .I1(\XLXI_4/q_6_5 ),
    .I2(\XLXI_4/right_shift_key ),
    .I3(\XLXI_4/left_shift_key ),
    .O(N2421)
  );
  FDRE \XLXI_4/timer_60usec_count_10  (
    .D(\XLXI_4/timer_60usec_count__n0000 [10]),
    .R(\XLXI_4/timer_60usec_count_0_N0 ),
    .CE(\XLXI_4/timer_60usec_count_0_N1 ),
    .C(\XLXI_1/clk ),
    .Q(\XLXI_4/timer_60usec_count [10])
  );
  OBUF led_6_OBUF (
    .I(\XLXI_4/rx_ascii [6]),
    .O(led[6])
  );
  defparam \XLXI_4/ascii<2>159_SW0 .INIT = 16'h0F01;
  LUT4 \XLXI_4/ascii<2>159_SW0  (
    .I0(\XLXI_4/q [3]),
    .I1(\XLXI_4/q [6]),
    .I2(\XLXI_4/q [2]),
    .I3(CHOICE2049),
    .O(N2342)
  );
  XORCY \top_XLXI_4/timer_60usec_count__n0000<2>_xor  (
    .CI(\top_XLXI_4/timer_60usec_count__n0000<1>_cyo ),
    .LI(\XLXI_4/timer_60usec_count_2_rt ),
    .O(\XLXI_4/timer_60usec_count__n0000 [2])
  );
  defparam \XLXI_4/ascii<1>60 .INIT = 16'h2301;
  LUT4 \XLXI_4/ascii<1>60  (
    .I0(\XLXI_4/q_6_6 ),
    .I1(\XLXI_4/q_4_6 ),
    .I2(\XLXI_4/q_3_1 ),
    .I3(\XLXI_4/q_5_4 ),
    .O(CHOICE2113)
  );
  defparam Ker13.INIT = 16'hFF10;
  LUT4 Ker13 (
    .I0(\XLXI_4/q [7]),
    .I1(\XLXI_4/q [5]),
    .I2(N2484),
    .I3(N176),
    .O(N13)
  );
  defparam \XLXI_4/ascii<5>102_SW0 .INIT = 16'hEEE0;
  LUT4_L \XLXI_4/ascii<5>102_SW0  (
    .I0(\XLXI_4/q_6_6 ),
    .I1(\XLXI_4/q_7_3 ),
    .I2(\XLXI_4/left_shift_key ),
    .I3(\XLXI_4/right_shift_key ),
    .LO(N2403)
  );
  defparam Ker1261.INIT = 8'h20;
  LUT3_D Ker1261 (
    .I0(\XLXI_4/bit_count [1]),
    .I1(\XLXI_4/bit_count [2]),
    .I2(\XLXI_4/bit_count [3]),
    .LO(N2483),
    .O(N126)
  );
  defparam \XLXI_4/ascii<5>20_SW0_SW0 .INIT = 4'h1;
  LUT2 \XLXI_4/ascii<5>20_SW0_SW0  (
    .I0(\XLXI_4/q_6_2 ),
    .I1(\XLXI_4/q_5_4 ),
    .O(N2415)
  );
  defparam \XLXI_4/_n0008_11 .INIT = 16'h0400;
  LUT4 \XLXI_4/_n0008_11  (
    .I0(\XLXI_4/q [4]),
    .I1(\XLXI_4/rx_shifting_done ),
    .I2(N150),
    .I3(\XLXI_4/q [6]),
    .O(\XLXI_4/_n0008 )
  );
  FDRE \XLXI_4/q_4_5_12  (
    .D(\XLXI_4/q [5]),
    .R(CHOICE1937),
    .CE(\XLXI_4/_n0004 ),
    .C(\XLXI_1/clk ),
    .Q(\XLXI_4/q_4_5 )
  );
  defparam \XLXI_4/ascii<0>443 .INIT = 16'h5540;
  LUT4_L \XLXI_4/ascii<0>443  (
    .I0(\XLXI_4/q [8]),
    .I1(\XLXI_4/q [3]),
    .I2(CHOICE2608),
    .I3(CHOICE2654),
    .LO(\XLXI_4/ascii [0])
  );
  defparam Ker1301.INIT = 4'h1;
  LUT2_D Ker1301 (
    .I0(\XLXI_4/q [6]),
    .I1(\XLXI_4/q [4]),
    .LO(N2484),
    .O(N130)
  );
  defparam \XLXI_4/_n0140_13 .INIT = 16'h0400;
  LUT4_L \XLXI_4/_n0140_13  (
    .I0(\XLXI_4/q [7]),
    .I1(N130),
    .I2(N191),
    .I3(\XLXI_4/q [5]),
    .LO(\XLXI_4/_n0140 )
  );
  defparam \XLXI_4/timer_60usec_count_ClkEn_INV1 .INIT = 8'h7F;
  LUT3 \XLXI_4/timer_60usec_count_ClkEn_INV1  (
    .I0(CHOICE2242),
    .I1(N2490),
    .I2(CHOICE2251),
    .O(\XLXI_4/timer_60usec_count_0_N1 )
  );
  defparam \XLXI_3/state_FFd6-In1 .INIT = 8'hF8;
  LUT3 \XLXI_3/state_FFd6-In1  (
    .I0(\XLXI_3/state_FFd8 ),
    .I1(\XLXI_3/flag ),
    .I2(\XLXI_3/state_FFd2 ),
    .O(\XLXI_3/state_FFd6-In )
  );
  defparam \XLXI_3/_n00351 .INIT = 16'h0001;
  LUT4_D \XLXI_3/_n00351  (
    .I0(\XLXI_3/_n0033 ),
    .I1(\XLXI_3/count [6]),
    .I2(\XLXI_3/count [5]),
    .I3(\XLXI_3/count [4]),
    .LO(N2485),
    .O(\XLXI_3/_n0035 )
  );
  defparam \XLXI_3/state_FFd5-In1 .INIT = 4'hE;
  LUT2 \XLXI_3/state_FFd5-In1  (
    .I0(\XLXI_3/state_FFd4 ),
    .I1(\XLXI_3/state_FFd1 ),
    .O(\XLXI_3/state_FFd5-In )
  );
  defparam \XLXI_3/_n00151 .INIT = 4'h8;
  LUT2 \XLXI_3/_n00151  (
    .I0(\XLXI_3/state_FFd3 ),
    .I1(\XLXI_4/rx_released ),
    .O(\XLXI_3/_n0015 )
  );
  INV \XLXI_3/state_FFd7_N01_INV_0  (
    .I(\XLXI_4/rx_released ),
    .O(\XLXI_3/state_FFd7_N0 )
  );
  FDC \XLXI_3/state_FFd5_14  (
    .D(\XLXI_3/state_FFd5-In ),
    .CLR(\XLXI_3/state_FFd7_N0 ),
    .C(\XLXI_3/clk_int ),
    .Q(\XLXI_3/state_FFd5 )
  );
  defparam \XLXI_3/_n0030<6>1 .INIT = 16'hAFA8;
  LUT4_L \XLXI_3/_n0030<6>1  (
    .I0(\XLXI_3/_n0031 [6]),
    .I1(CHOICE2359),
    .I2(\XLXI_3/_n0035 ),
    .I3(\XLXI_3/_n0036 ),
    .LO(\XLXI_3/_n0030 [6])
  );
  defparam \XLXI_3/_n0038_15 .INIT = 16'hFFFE;
  LUT4 \XLXI_3/_n0038_15  (
    .I0(\XLXI_3/state_FFd2 ),
    .I1(\XLXI_3/state_FFd3 ),
    .I2(\XLXI_3/state_FFd6 ),
    .I3(N156),
    .O(\XLXI_3/_n0038 )
  );
  defparam \XLXI_3/_n00371 .INIT = 16'h0200;
  LUT4 \XLXI_3/_n00371  (
    .I0(\XLXI_3/count [6]),
    .I1(\XLXI_3/count [5]),
    .I2(N2291),
    .I3(N1527),
    .O(CHOICE2359)
  );
  defparam \XLXI_3/_n00361 .INIT = 16'h0002;
  LUT4 \XLXI_3/_n00361  (
    .I0(\XLXI_3/count [4]),
    .I1(\XLXI_3/count [5]),
    .I2(N2496),
    .I3(N2370),
    .O(\XLXI_3/_n0036 )
  );
  defparam \XLXI_4/ascii<6>3661_G .INIT = 16'h0F04;
  LUT4_L \XLXI_4/ascii<6>3661_G  (
    .I0(\XLXI_4/q [7]),
    .I1(CHOICE2503),
    .I2(\XLXI_4/q [8]),
    .I3(CHOICE2524),
    .LO(N2470)
  );
  FDE \XLXI_3/count_2  (
    .D(\XLXI_3/_n0030 [2]),
    .CE(\XLXI_3/_n0015 ),
    .C(\XLXI_3/clk_int ),
    .Q(\XLXI_3/count [2])
  );
  defparam \XLXI_3/_n0033_16 .INIT = 16'h0001;
  LUT4 \XLXI_3/_n0033_16  (
    .I0(\XLXI_3/data_in_buf [6]),
    .I1(\XLXI_3/data_in_buf [5]),
    .I2(\XLXI_3/data_in_buf [4]),
    .I3(N144),
    .O(\XLXI_3/_n0033 )
  );
  defparam \XLXI_3/_n003268 .INIT = 16'h0010;
  LUT4 \XLXI_3/_n003268  (
    .I0(\XLXI_3/clkcnt [8]),
    .I1(\XLXI_3/clkcnt [9]),
    .I2(CHOICE1864),
    .I3(N2454),
    .O(\XLXI_3/tc_clkcnt )
  );
  defparam \XLXI_3/Ker91 .INIT = 8'hFE;
  LUT3 \XLXI_3/Ker91  (
    .I0(\XLXI_3/state_FFd7 ),
    .I1(\XLXI_3/state_FFd5 ),
    .I2(\XLXI_3/state_FFd1 ),
    .O(\XLXI_3/N9 )
  );
  defparam \XLXI_3/_n0030<1>1 .INIT = 16'h88A8;
  LUT4_L \XLXI_3/_n0030<1>1  (
    .I0(\XLXI_3/_n0031 [1]),
    .I1(\XLXI_3/_n0035 ),
    .I2(CHOICE2359),
    .I3(\XLXI_3/_n0036 ),
    .LO(\XLXI_3/_n0030 [1])
  );
  defparam \XLXI_3/_n0030<2>1 .INIT = 16'h88A8;
  LUT4_L \XLXI_3/_n0030<2>1  (
    .I0(\XLXI_3/_n0031 [2]),
    .I1(\XLXI_3/_n0035 ),
    .I2(CHOICE2359),
    .I3(\XLXI_3/_n0036 ),
    .LO(\XLXI_3/_n0030 [2])
  );
  defparam \XLXI_3/_n0030<3>1 .INIT = 16'h88A8;
  LUT4_L \XLXI_3/_n0030<3>1  (
    .I0(\XLXI_3/_n0031 [3]),
    .I1(\XLXI_3/_n0035 ),
    .I2(CHOICE2359),
    .I3(\XLXI_3/_n0036 ),
    .LO(\XLXI_3/_n0030 [3])
  );
  defparam \XLXI_3/_n0030<4>1 .INIT = 16'h88A8;
  LUT4_L \XLXI_3/_n0030<4>1  (
    .I0(\XLXI_3/_n0031 [4]),
    .I1(\XLXI_3/_n0035 ),
    .I2(CHOICE2359),
    .I3(\XLXI_3/_n0036 ),
    .LO(\XLXI_3/_n0030 [4])
  );
  defparam \XLXI_3/_n0030<5>1 .INIT = 16'h88A8;
  LUT4_L \XLXI_3/_n0030<5>1  (
    .I0(\XLXI_3/_n0031 [5]),
    .I1(\XLXI_3/_n0035 ),
    .I2(CHOICE2359),
    .I3(\XLXI_3/_n0036 ),
    .LO(\XLXI_3/_n0030 [5])
  );
  XORCY \XLXI_3/lcd_clkcnt__n0000<13>_xor  (
    .CI(\XLXI_3/lcd_clkcnt__n0000<12>_cyo ),
    .LI(\XLXI_3/clkcnt_13_rt ),
    .O(\XLXI_3/clkcnt__n0000 [13])
  );
  defparam \XLXI_3/_n0029_17 .INIT = 16'hFFEC;
  LUT4_L \XLXI_3/_n0029_17  (
    .I0(\XLXI_3/data [0]),
    .I1(\XLXI_3/state_FFd4 ),
    .I2(N2487),
    .I3(N1275),
    .LO(\XLXI_3/_n0029 )
  );
  defparam \XLXI_3/_n0028_18 .INIT = 16'hFFEC;
  LUT4_L \XLXI_3/_n0028_18  (
    .I0(\XLXI_3/data [1]),
    .I1(\XLXI_3/state_FFd5 ),
    .I2(\XLXI_3/N6 ),
    .I3(N1277),
    .LO(\XLXI_3/_n0028 )
  );
  defparam \XLXI_3/_n0027_19 .INIT = 16'hFFEC;
  LUT4_L \XLXI_3/_n0027_19  (
    .I0(\XLXI_3/data [2]),
    .I1(\XLXI_3/N9 ),
    .I2(\XLXI_3/N6 ),
    .I3(N1279),
    .LO(\XLXI_3/_n0027 )
  );
  defparam \XLXI_4/ascii<0>47_SW0 .INIT = 16'hE0FD;
  LUT4 \XLXI_4/ascii<0>47_SW0  (
    .I0(\XLXI_4/q_4_5 ),
    .I1(\XLXI_4/q_6_5 ),
    .I2(\XLXI_4/q_7_2 ),
    .I3(\XLXI_4/q_5_4 ),
    .O(N2384)
  );
  defparam \XLXI_3/Ker111_SW9 .INIT = 8'hF8;
  LUT3 \XLXI_3/Ker111_SW9  (
    .I0(\XLXI_3/count [3]),
    .I1(\XLXI_3/state_FFd3 ),
    .I2(N2498),
    .O(N2314)
  );
  defparam \XLXI_3/_n0024_20 .INIT = 16'hFEFC;
  LUT4_L \XLXI_3/_n0024_20  (
    .I0(\XLXI_3/data [5]),
    .I1(\XLXI_3/state_FFd7 ),
    .I2(N1281),
    .I3(\XLXI_3/N6 ),
    .LO(\XLXI_3/_n0024 )
  );
  defparam \XLXI_3/_n002342 .INIT = 16'hFAF8;
  LUT4_L \XLXI_3/_n002342  (
    .I0(\XLXI_3/state_FFd3 ),
    .I1(CHOICE2359),
    .I2(CHOICE2370),
    .I3(CHOICE2364),
    .LO(\XLXI_3/_n0023 )
  );
  defparam \XLXI_3/_n0022_21 .INIT = 16'hCE8A;
  LUT4_L \XLXI_3/_n0022_21  (
    .I0(\XLXI_3/data [7]),
    .I1(\XLXI_3/state_FFd3 ),
    .I2(\XLXI_3/_n0038 ),
    .I3(N2324),
    .LO(\XLXI_3/_n0022 )
  );
  defparam \XLXI_3/_n00211 .INIT = 16'hFF2A;
  LUT4_L \XLXI_3/_n00211  (
    .I0(\XLXI_3/lcd_rs ),
    .I1(\XLXI_3/_n0038 ),
    .I2(N2330),
    .I3(\XLXI_3/state_FFd2 ),
    .LO(\XLXI_3/_n0021 )
  );
  defparam \XLXI_3/_n00161 .INIT = 16'hD555;
  LUT4 \XLXI_3/_n00161  (
    .I0(\XLXI_4/rx_released ),
    .I1(CHOICE1849),
    .I2(N2494),
    .I3(N2337),
    .O(\XLXI_3/_n0016 )
  );
  MUXCY \XLXI_3/lcd_clkcnt__n0000<13>cy  (
    .CI(\XLXI_3/lcd_clkcnt__n0000<12>_cyo ),
    .DI(ps2ck_IOBUF),
    .S(\XLXI_3/clkcnt_13_rt ),
    .O(\XLXI_3/lcd_clkcnt__n0000<13>_cyo )
  );
  defparam \XLXI_3/_n0002_22 .INIT = 16'h0010;
  LUT4_D \XLXI_3/_n0002_22  (
    .I0(\XLXI_3/count [5]),
    .I1(\XLXI_3/count [1]),
    .I2(\XLXI_3/count [4]),
    .I3(N1283),
    .LO(N2486),
    .O(\XLXI_3/_n0002 )
  );
  INV \XLXI_3/_n00411_INV_0  (
    .I(\XLXI_3/clkdiv ),
    .O(\XLXI_3/_n0041 )
  );
  FDR \XLXI_3/clkcnt_14  (
    .D(\XLXI_3/clkcnt__n0000 [14]),
    .R(\XLXI_3/_n0016 ),
    .C(\XLXI_2/count [3]),
    .Q(\XLXI_3/clkcnt [14])
  );
  FDR \XLXI_3/clkdiv_23  (
    .D(\XLXI_3/_n0041 ),
    .R(\XLXI_3/state_FFd7_N0 ),
    .C(\XLXI_3/tc_clkcnt ),
    .Q(\XLXI_3/clkdiv )
  );
  FDR \XLXI_3/clk_int_24  (
    .D(\XLXI_3/_n0042 ),
    .R(\XLXI_3/state_FFd7_N0 ),
    .C(\XLXI_3/clkdiv ),
    .Q(\XLXI_3/clk_int1 )
  );
  FDR_1 \XLXI_3/lcd_e_25  (
    .D(\XLXI_3/_n0043 ),
    .R(\XLXI_3/state_FFd7_N0 ),
    .C(\XLXI_3/clkdiv ),
    .Q(\XLXI_3/lcd_e )
  );
  FDCE \XLXI_3/flag_26  (
    .D(N1),
    .CE(\XLXI_3/state_FFd7-In ),
    .CLR(\XLXI_3/state_FFd7_N0 ),
    .C(\XLXI_3/clk_int ),
    .Q(\XLXI_3/flag )
  );
  LD_1 \XLXI_3/data_in_buf_5  (
    .D(\XLXI_4/rx_ascii [5]),
    .G(\XLXI_4/rx_released ),
    .Q(\XLXI_3/data_in_buf [5])
  );
  FDE \XLXI_3/lcd_rs_27  (
    .D(\XLXI_3/_n0021 ),
    .CE(\XLXI_4/rx_released ),
    .C(\XLXI_3/clk_int ),
    .Q(\XLXI_3/lcd_rs )
  );
  FDE \XLXI_3/data_7  (
    .D(\XLXI_3/_n0022 ),
    .CE(\XLXI_4/rx_released ),
    .C(\XLXI_3/clk_int ),
    .Q(\XLXI_3/data [7])
  );
  FDE \XLXI_3/data_6  (
    .D(\XLXI_3/_n0023 ),
    .CE(\XLXI_4/rx_released ),
    .C(\XLXI_3/clk_int ),
    .Q(\XLXI_3/data [6])
  );
  FDE \XLXI_3/data_5  (
    .D(\XLXI_3/_n0024 ),
    .CE(\XLXI_4/rx_released ),
    .C(\XLXI_3/clk_int ),
    .Q(\XLXI_3/data [5])
  );
  FDE \XLXI_3/data_4  (
    .D(\XLXI_3/_n0025 ),
    .CE(\XLXI_4/rx_released ),
    .C(\XLXI_3/clk_int ),
    .Q(\XLXI_3/data [4])
  );
  FDE \XLXI_3/data_3  (
    .D(\XLXI_3/_n0026 ),
    .CE(\XLXI_4/rx_released ),
    .C(\XLXI_3/clk_int ),
    .Q(\XLXI_3/data [3])
  );
  FDE \XLXI_3/data_2  (
    .D(\XLXI_3/_n0027 ),
    .CE(\XLXI_4/rx_released ),
    .C(\XLXI_3/clk_int ),
    .Q(\XLXI_3/data [2])
  );
  FDE \XLXI_3/data_1  (
    .D(\XLXI_3/_n0028 ),
    .CE(\XLXI_4/rx_released ),
    .C(\XLXI_3/clk_int ),
    .Q(\XLXI_3/data [1])
  );
  FDE \XLXI_3/data_0  (
    .D(\XLXI_3/_n0029 ),
    .CE(\XLXI_4/rx_released ),
    .C(\XLXI_3/clk_int ),
    .Q(\XLXI_3/data [0])
  );
  FDE \XLXI_3/count_6  (
    .D(\XLXI_3/_n0030 [6]),
    .CE(\XLXI_3/_n0015 ),
    .C(\XLXI_3/clk_int ),
    .Q(\XLXI_3/count [6])
  );
  XORCY \XLXI_3/lcd__n0031<6>_xor  (
    .CI(\XLXI_3/lcd__n0031<5>_cyo ),
    .LI(\XLXI_3/count_6_rt ),
    .O(\XLXI_3/_n0031 [6])
  );
  defparam \XLXI_3/Ker5 .INIT = 16'hFDFF;
  LUT4 \XLXI_3/Ker5  (
    .I0(\XLXI_3/count [6]),
    .I1(\XLXI_3/count [4]),
    .I2(\XLXI_3/count [5]),
    .I3(N2499),
    .O(\XLXI_3/N51 )
  );
  defparam \XLXI_3/Ker6 .INIT = 16'h04FF;
  LUT4_D \XLXI_3/Ker6  (
    .I0(N186),
    .I1(\XLXI_3/state_FFd3 ),
    .I2(CHOICE2359),
    .I3(\XLXI_3/_n0038 ),
    .LO(N2487),
    .O(\XLXI_3/N6 )
  );
  INV \XLXI_3/_n00421_INV_0  (
    .I(\XLXI_3/clk_int ),
    .O(\XLXI_3/_n0042 )
  );
  FDC \XLXI_3/state_FFd3_28  (
    .D(\XLXI_3/state_FFd5 ),
    .CLR(\XLXI_3/state_FFd7_N0 ),
    .C(\XLXI_3/clk_int ),
    .Q(\XLXI_3/state_FFd3 )
  );
  FDE \XLXI_3/count_5  (
    .D(\XLXI_3/_n0030 [5]),
    .CE(\XLXI_3/_n0015 ),
    .C(\XLXI_3/clk_int ),
    .Q(\XLXI_3/count [5])
  );
  FDE \XLXI_3/count_4  (
    .D(\XLXI_3/_n0030 [4]),
    .CE(\XLXI_3/_n0015 ),
    .C(\XLXI_3/clk_int ),
    .Q(\XLXI_3/count [4])
  );
  FDE \XLXI_3/count_3  (
    .D(\XLXI_3/_n0030 [3]),
    .CE(\XLXI_3/_n0015 ),
    .C(\XLXI_3/clk_int ),
    .Q(\XLXI_3/count [3])
  );
  FDE \XLXI_3/count_0  (
    .D(\XLXI_3/_n0030 [0]),
    .CE(\XLXI_3/_n0015 ),
    .C(\XLXI_3/clk_int ),
    .Q(\XLXI_3/count [0])
  );
  FDE \XLXI_3/count_1  (
    .D(\XLXI_3/_n0030 [1]),
    .CE(\XLXI_3/_n0015 ),
    .C(\XLXI_3/clk_int ),
    .Q(\XLXI_3/count [1])
  );
  FDC \XLXI_3/state_FFd2_29  (
    .D(\XLXI_3/state_FFd2-In ),
    .CLR(\XLXI_3/state_FFd7_N0 ),
    .C(\XLXI_3/clk_int ),
    .Q(\XLXI_3/state_FFd2 )
  );
  LD_1 \XLXI_3/data_in_buf_6  (
    .D(\XLXI_4/rx_ascii [6]),
    .G(\XLXI_4/rx_released ),
    .Q(\XLXI_3/data_in_buf [6])
  );
  LD_1 \XLXI_3/data_in_buf_0  (
    .D(\XLXI_4/rx_ascii [0]),
    .G(\XLXI_4/rx_released ),
    .Q(\XLXI_3/data_in_buf [0])
  );
  LD_1 \XLXI_3/data_in_buf_1  (
    .D(\XLXI_4/rx_ascii [1]),
    .G(\XLXI_4/rx_released ),
    .Q(\XLXI_3/data_in_buf [1])
  );
  LD_1 \XLXI_3/data_in_buf_2  (
    .D(\XLXI_4/rx_ascii [2]),
    .G(\XLXI_4/rx_released ),
    .Q(\XLXI_3/data_in_buf [2])
  );
  LD_1 \XLXI_3/data_in_buf_3  (
    .D(\XLXI_4/rx_ascii [3]),
    .G(\XLXI_4/rx_released ),
    .Q(\XLXI_3/data_in_buf [3])
  );
  LD_1 \XLXI_3/data_in_buf_4  (
    .D(\XLXI_4/rx_ascii [4]),
    .G(\XLXI_4/rx_released ),
    .Q(\XLXI_3/data_in_buf [4])
  );
  FDR \XLXI_3/clkcnt_15  (
    .D(\XLXI_3/clkcnt__n0000 [15]),
    .R(\XLXI_3/_n0016 ),
    .C(\XLXI_2/count [3]),
    .Q(\XLXI_3/clkcnt [15])
  );
  XORCY \XLXI_3/lcd_clkcnt__n0000<15>_xor  (
    .CI(\XLXI_3/lcd_clkcnt__n0000<14>_cyo ),
    .LI(\XLXI_3/clkcnt_15_rt ),
    .O(\XLXI_3/clkcnt__n0000 [15])
  );
  FDR \XLXI_3/clkcnt_0  (
    .D(\XLXI_3/N5 ),
    .R(\XLXI_3/_n0016 ),
    .C(\XLXI_2/count [3]),
    .Q(\XLXI_3/clkcnt [0])
  );
  FDR \XLXI_3/clkcnt_1  (
    .D(\XLXI_3/clkcnt__n0000 [1]),
    .R(\XLXI_3/_n0016 ),
    .C(\XLXI_2/count [3]),
    .Q(\XLXI_3/clkcnt [1])
  );
  FDR \XLXI_3/clkcnt_2  (
    .D(\XLXI_3/clkcnt__n0000 [2]),
    .R(\XLXI_3/_n0016 ),
    .C(\XLXI_2/count [3]),
    .Q(\XLXI_3/clkcnt [2])
  );
  FDR \XLXI_3/clkcnt_3  (
    .D(\XLXI_3/clkcnt__n0000 [3]),
    .R(\XLXI_3/_n0016 ),
    .C(\XLXI_2/count [3]),
    .Q(\XLXI_3/clkcnt [3])
  );
  FDR \XLXI_3/clkcnt_4  (
    .D(\XLXI_3/clkcnt__n0000 [4]),
    .R(\XLXI_3/_n0016 ),
    .C(\XLXI_2/count [3]),
    .Q(\XLXI_3/clkcnt [4])
  );
  FDR \XLXI_3/clkcnt_5  (
    .D(\XLXI_3/clkcnt__n0000 [5]),
    .R(\XLXI_3/_n0016 ),
    .C(\XLXI_2/count [3]),
    .Q(\XLXI_3/clkcnt [5])
  );
  FDR \XLXI_3/clkcnt_6  (
    .D(\XLXI_3/clkcnt__n0000 [6]),
    .R(\XLXI_3/_n0016 ),
    .C(\XLXI_2/count [3]),
    .Q(\XLXI_3/clkcnt [6])
  );
  FDR \XLXI_3/clkcnt_7  (
    .D(\XLXI_3/clkcnt__n0000 [7]),
    .R(\XLXI_3/_n0016 ),
    .C(\XLXI_2/count [3]),
    .Q(\XLXI_3/clkcnt [7])
  );
  FDR \XLXI_3/clkcnt_8  (
    .D(\XLXI_3/clkcnt__n0000 [8]),
    .R(\XLXI_3/_n0016 ),
    .C(\XLXI_2/count [3]),
    .Q(\XLXI_3/clkcnt [8])
  );
  FDR \XLXI_3/clkcnt_9  (
    .D(\XLXI_3/clkcnt__n0000 [9]),
    .R(\XLXI_3/_n0016 ),
    .C(\XLXI_2/count [3]),
    .Q(\XLXI_3/clkcnt [9])
  );
  FDR \XLXI_3/clkcnt_10  (
    .D(\XLXI_3/clkcnt__n0000 [10]),
    .R(\XLXI_3/_n0016 ),
    .C(\XLXI_2/count [3]),
    .Q(\XLXI_3/clkcnt [10])
  );
  FDR \XLXI_3/clkcnt_11  (
    .D(\XLXI_3/clkcnt__n0000 [11]),
    .R(\XLXI_3/_n0016 ),
    .C(\XLXI_2/count [3]),
    .Q(\XLXI_3/clkcnt [11])
  );
  FDR \XLXI_3/clkcnt_12  (
    .D(\XLXI_3/clkcnt__n0000 [12]),
    .R(\XLXI_3/_n0016 ),
    .C(\XLXI_2/count [3]),
    .Q(\XLXI_3/clkcnt [12])
  );
  FDR \XLXI_3/clkcnt_13  (
    .D(\XLXI_3/clkcnt__n0000 [13]),
    .R(\XLXI_3/_n0016 ),
    .C(\XLXI_2/count [3]),
    .Q(\XLXI_3/clkcnt [13])
  );
  FDC \XLXI_3/state_FFd6_30  (
    .D(\XLXI_3/state_FFd6-In ),
    .CLR(\XLXI_3/state_FFd7_N0 ),
    .C(\XLXI_3/clk_int ),
    .Q(\XLXI_3/state_FFd6 )
  );
  defparam \XLXI_3/state_FFd2-In_31 .INIT = 16'h020A;
  LUT4_L \XLXI_3/state_FFd2-In_31  (
    .I0(\XLXI_3/state_FFd3 ),
    .I1(\XLXI_3/N51 ),
    .I2(\XLXI_3/_n0033 ),
    .I3(N193),
    .LO(\XLXI_3/state_FFd2-In )
  );
  FDC \XLXI_3/state_FFd7_32  (
    .D(\XLXI_3/state_FFd7-In ),
    .CLR(\XLXI_3/state_FFd7_N0 ),
    .C(\XLXI_3/clk_int ),
    .Q(\XLXI_3/state_FFd7 )
  );
  defparam \XLXI_3/state_FFd4-In_33 .INIT = 16'hA888;
  LUT4_L \XLXI_3/state_FFd4-In_33  (
    .I0(\XLXI_3/state_FFd3 ),
    .I1(\XLXI_3/_n0033 ),
    .I2(\XLXI_3/N51 ),
    .I3(N193),
    .LO(\XLXI_3/state_FFd4-In )
  );
  INV \XLXI_3/_n00431_INV_0  (
    .I(\XLXI_3/lcd_e ),
    .O(\XLXI_3/_n0043 )
  );
  defparam \XLXI_3/state_FFd7-In1 .INIT = 4'h2;
  LUT2 \XLXI_3/state_FFd7-In1  (
    .I0(\XLXI_3/state_FFd8 ),
    .I1(\XLXI_3/flag ),
    .O(\XLXI_3/state_FFd7-In )
  );
  FDC \XLXI_3/state_FFd4_34  (
    .D(\XLXI_3/state_FFd4-In ),
    .CLR(\XLXI_3/state_FFd7_N0 ),
    .C(\XLXI_3/clk_int ),
    .Q(\XLXI_3/state_FFd4 )
  );
  FDP \XLXI_3/state_FFd8_35  (
    .D(\XLXI_3/state_FFd6 ),
    .PRE(\XLXI_3/state_FFd7_N0 ),
    .C(\XLXI_3/clk_int ),
    .Q(\XLXI_3/state_FFd8 )
  );
  FDC \XLXI_3/state_FFd1_36  (
    .D(\XLXI_3/state_FFd7 ),
    .CLR(\XLXI_3/state_FFd7_N0 ),
    .C(\XLXI_3/clk_int ),
    .Q(\XLXI_3/state_FFd1 )
  );
  INV \XLXI_3/lcd__n0031<0>lut_INV_0  (
    .I(\XLXI_3/count [0]),
    .O(\XLXI_3/N4 )
  );
  MUXCY \XLXI_3/lcd__n0031<0>cy  (
    .CI(ps2ck_IOBUF),
    .DI(N1),
    .S(\XLXI_3/N4 ),
    .O(\XLXI_3/lcd__n0031<0>_cyo )
  );
  OBUF led_3_OBUF (
    .I(\XLXI_4/rx_ascii [3]),
    .O(led[3])
  );
  MUXCY \XLXI_3/lcd__n0031<1>cy  (
    .CI(\XLXI_3/lcd__n0031<0>_cyo ),
    .DI(ps2ck_IOBUF),
    .S(\XLXI_3/count_1_rt ),
    .O(\XLXI_3/lcd__n0031<1>_cyo )
  );
  XORCY \XLXI_3/lcd__n0031<1>_xor  (
    .CI(\XLXI_3/lcd__n0031<0>_cyo ),
    .LI(\XLXI_3/count_1_rt ),
    .O(\XLXI_3/_n0031 [1])
  );
  MUXCY \XLXI_3/lcd__n0031<2>cy  (
    .CI(\XLXI_3/lcd__n0031<1>_cyo ),
    .DI(ps2ck_IOBUF),
    .S(\XLXI_3/count_2_rt ),
    .O(\XLXI_3/lcd__n0031<2>_cyo )
  );
  XORCY \XLXI_3/lcd__n0031<2>_xor  (
    .CI(\XLXI_3/lcd__n0031<1>_cyo ),
    .LI(\XLXI_3/count_2_rt ),
    .O(\XLXI_3/_n0031 [2])
  );
  MUXCY \XLXI_3/lcd__n0031<3>cy  (
    .CI(\XLXI_3/lcd__n0031<2>_cyo ),
    .DI(ps2ck_IOBUF),
    .S(\XLXI_3/count_3_rt ),
    .O(\XLXI_3/lcd__n0031<3>_cyo )
  );
  XORCY \XLXI_3/lcd__n0031<3>_xor  (
    .CI(\XLXI_3/lcd__n0031<2>_cyo ),
    .LI(\XLXI_3/count_3_rt ),
    .O(\XLXI_3/_n0031 [3])
  );
  MUXCY \XLXI_3/lcd__n0031<4>cy  (
    .CI(\XLXI_3/lcd__n0031<3>_cyo ),
    .DI(ps2ck_IOBUF),
    .S(\XLXI_3/count_4_rt ),
    .O(\XLXI_3/lcd__n0031<4>_cyo )
  );
  XORCY \XLXI_3/lcd__n0031<4>_xor  (
    .CI(\XLXI_3/lcd__n0031<3>_cyo ),
    .LI(\XLXI_3/count_4_rt ),
    .O(\XLXI_3/_n0031 [4])
  );
  MUXCY \XLXI_3/lcd__n0031<5>cy  (
    .CI(\XLXI_3/lcd__n0031<4>_cyo ),
    .DI(ps2ck_IOBUF),
    .S(\XLXI_3/count_5_rt ),
    .O(\XLXI_3/lcd__n0031<5>_cyo )
  );
  XORCY \XLXI_3/lcd__n0031<5>_xor  (
    .CI(\XLXI_3/lcd__n0031<4>_cyo ),
    .LI(\XLXI_3/count_5_rt ),
    .O(\XLXI_3/_n0031 [5])
  );
  XORCY \XLXI_3/lcd_clkcnt__n0000<14>_xor  (
    .CI(\XLXI_3/lcd_clkcnt__n0000<13>_cyo ),
    .LI(\XLXI_3/clkcnt_14_rt ),
    .O(\XLXI_3/clkcnt__n0000 [14])
  );
  MUXCY \XLXI_3/lcd_clkcnt__n0000<14>cy  (
    .CI(\XLXI_3/lcd_clkcnt__n0000<13>_cyo ),
    .DI(ps2ck_IOBUF),
    .S(\XLXI_3/clkcnt_14_rt ),
    .O(\XLXI_3/lcd_clkcnt__n0000<14>_cyo )
  );
  INV \XLXI_3/lcd_clkcnt__n0000<0>lut_INV_0  (
    .I(\XLXI_3/clkcnt [0]),
    .O(\XLXI_3/N5 )
  );
  MUXCY \XLXI_3/lcd_clkcnt__n0000<0>cy  (
    .CI(ps2ck_IOBUF),
    .DI(N1),
    .S(\XLXI_3/N5 ),
    .O(\XLXI_3/lcd_clkcnt__n0000<0>_cyo )
  );
  OBUF led_4_OBUF (
    .I(\XLXI_4/rx_ascii [4]),
    .O(led[4])
  );
  MUXCY \XLXI_3/lcd_clkcnt__n0000<1>cy  (
    .CI(\XLXI_3/lcd_clkcnt__n0000<0>_cyo ),
    .DI(ps2ck_IOBUF),
    .S(\XLXI_3/clkcnt_1_rt ),
    .O(\XLXI_3/lcd_clkcnt__n0000<1>_cyo )
  );
  XORCY \XLXI_3/lcd_clkcnt__n0000<1>_xor  (
    .CI(\XLXI_3/lcd_clkcnt__n0000<0>_cyo ),
    .LI(\XLXI_3/clkcnt_1_rt ),
    .O(\XLXI_3/clkcnt__n0000 [1])
  );
  MUXCY \XLXI_3/lcd_clkcnt__n0000<2>cy  (
    .CI(\XLXI_3/lcd_clkcnt__n0000<1>_cyo ),
    .DI(ps2ck_IOBUF),
    .S(\XLXI_3/clkcnt_2_rt ),
    .O(\XLXI_3/lcd_clkcnt__n0000<2>_cyo )
  );
  XORCY \XLXI_3/lcd_clkcnt__n0000<2>_xor  (
    .CI(\XLXI_3/lcd_clkcnt__n0000<1>_cyo ),
    .LI(\XLXI_3/clkcnt_2_rt ),
    .O(\XLXI_3/clkcnt__n0000 [2])
  );
  MUXCY \XLXI_3/lcd_clkcnt__n0000<3>cy  (
    .CI(\XLXI_3/lcd_clkcnt__n0000<2>_cyo ),
    .DI(ps2ck_IOBUF),
    .S(\XLXI_3/clkcnt_3_rt ),
    .O(\XLXI_3/lcd_clkcnt__n0000<3>_cyo )
  );
  XORCY \XLXI_3/lcd_clkcnt__n0000<3>_xor  (
    .CI(\XLXI_3/lcd_clkcnt__n0000<2>_cyo ),
    .LI(\XLXI_3/clkcnt_3_rt ),
    .O(\XLXI_3/clkcnt__n0000 [3])
  );
  MUXCY \XLXI_3/lcd_clkcnt__n0000<4>cy  (
    .CI(\XLXI_3/lcd_clkcnt__n0000<3>_cyo ),
    .DI(ps2ck_IOBUF),
    .S(\XLXI_3/clkcnt_4_rt ),
    .O(\XLXI_3/lcd_clkcnt__n0000<4>_cyo )
  );
  XORCY \XLXI_3/lcd_clkcnt__n0000<4>_xor  (
    .CI(\XLXI_3/lcd_clkcnt__n0000<3>_cyo ),
    .LI(\XLXI_3/clkcnt_4_rt ),
    .O(\XLXI_3/clkcnt__n0000 [4])
  );
  MUXCY \XLXI_3/lcd_clkcnt__n0000<5>cy  (
    .CI(\XLXI_3/lcd_clkcnt__n0000<4>_cyo ),
    .DI(ps2ck_IOBUF),
    .S(\XLXI_3/clkcnt_5_rt ),
    .O(\XLXI_3/lcd_clkcnt__n0000<5>_cyo )
  );
  XORCY \XLXI_3/lcd_clkcnt__n0000<5>_xor  (
    .CI(\XLXI_3/lcd_clkcnt__n0000<4>_cyo ),
    .LI(\XLXI_3/clkcnt_5_rt ),
    .O(\XLXI_3/clkcnt__n0000 [5])
  );
  MUXCY \XLXI_3/lcd_clkcnt__n0000<6>cy  (
    .CI(\XLXI_3/lcd_clkcnt__n0000<5>_cyo ),
    .DI(ps2ck_IOBUF),
    .S(\XLXI_3/clkcnt_6_rt ),
    .O(\XLXI_3/lcd_clkcnt__n0000<6>_cyo )
  );
  XORCY \XLXI_3/lcd_clkcnt__n0000<6>_xor  (
    .CI(\XLXI_3/lcd_clkcnt__n0000<5>_cyo ),
    .LI(\XLXI_3/clkcnt_6_rt ),
    .O(\XLXI_3/clkcnt__n0000 [6])
  );
  MUXCY \XLXI_3/lcd_clkcnt__n0000<7>cy  (
    .CI(\XLXI_3/lcd_clkcnt__n0000<6>_cyo ),
    .DI(ps2ck_IOBUF),
    .S(\XLXI_3/clkcnt_7_rt ),
    .O(\XLXI_3/lcd_clkcnt__n0000<7>_cyo )
  );
  XORCY \XLXI_3/lcd_clkcnt__n0000<7>_xor  (
    .CI(\XLXI_3/lcd_clkcnt__n0000<6>_cyo ),
    .LI(\XLXI_3/clkcnt_7_rt ),
    .O(\XLXI_3/clkcnt__n0000 [7])
  );
  MUXCY \XLXI_3/lcd_clkcnt__n0000<8>cy  (
    .CI(\XLXI_3/lcd_clkcnt__n0000<7>_cyo ),
    .DI(ps2ck_IOBUF),
    .S(\XLXI_3/clkcnt_8_rt ),
    .O(\XLXI_3/lcd_clkcnt__n0000<8>_cyo )
  );
  XORCY \XLXI_3/lcd_clkcnt__n0000<8>_xor  (
    .CI(\XLXI_3/lcd_clkcnt__n0000<7>_cyo ),
    .LI(\XLXI_3/clkcnt_8_rt ),
    .O(\XLXI_3/clkcnt__n0000 [8])
  );
  MUXCY \XLXI_3/lcd_clkcnt__n0000<9>cy  (
    .CI(\XLXI_3/lcd_clkcnt__n0000<8>_cyo ),
    .DI(ps2ck_IOBUF),
    .S(\XLXI_3/clkcnt_9_rt ),
    .O(\XLXI_3/lcd_clkcnt__n0000<9>_cyo )
  );
  XORCY \XLXI_3/lcd_clkcnt__n0000<9>_xor  (
    .CI(\XLXI_3/lcd_clkcnt__n0000<8>_cyo ),
    .LI(\XLXI_3/clkcnt_9_rt ),
    .O(\XLXI_3/clkcnt__n0000 [9])
  );
  MUXCY \XLXI_3/lcd_clkcnt__n0000<10>cy  (
    .CI(\XLXI_3/lcd_clkcnt__n0000<9>_cyo ),
    .DI(ps2ck_IOBUF),
    .S(\XLXI_3/clkcnt_10_rt ),
    .O(\XLXI_3/lcd_clkcnt__n0000<10>_cyo )
  );
  XORCY \XLXI_3/lcd_clkcnt__n0000<10>_xor  (
    .CI(\XLXI_3/lcd_clkcnt__n0000<9>_cyo ),
    .LI(\XLXI_3/clkcnt_10_rt ),
    .O(\XLXI_3/clkcnt__n0000 [10])
  );
  MUXCY \XLXI_3/lcd_clkcnt__n0000<11>cy  (
    .CI(\XLXI_3/lcd_clkcnt__n0000<10>_cyo ),
    .DI(ps2ck_IOBUF),
    .S(\XLXI_3/clkcnt_11_rt ),
    .O(\XLXI_3/lcd_clkcnt__n0000<11>_cyo )
  );
  XORCY \XLXI_3/lcd_clkcnt__n0000<11>_xor  (
    .CI(\XLXI_3/lcd_clkcnt__n0000<10>_cyo ),
    .LI(\XLXI_3/clkcnt_11_rt ),
    .O(\XLXI_3/clkcnt__n0000 [11])
  );
  MUXCY \XLXI_3/lcd_clkcnt__n0000<12>cy  (
    .CI(\XLXI_3/lcd_clkcnt__n0000<11>_cyo ),
    .DI(ps2ck_IOBUF),
    .S(\XLXI_3/clkcnt_12_rt ),
    .O(\XLXI_3/lcd_clkcnt__n0000<12>_cyo )
  );
  defparam \XLXI_2/count_Madd__n0000_Mxor_Result<1>_Result1 .INIT = 4'h6;
  LUT2 \XLXI_2/count_Madd__n0000_Mxor_Result<1>_Result1  (
    .I0(\XLXI_2/count [0]),
    .I1(\XLXI_2/count [1]),
    .O(\XLXI_2/count__n0000 [1])
  );
  FDC \XLXI_2/count_3  (
    .D(\XLXI_2/count__n0000 [3]),
    .CLR(CHOICE1937),
    .C(clk_BUFGP),
    .Q(\XLXI_2/count [3])
  );
  defparam \XLXI_2/count_Madd__n0000_Mxor_Result<2>_Result1 .INIT = 8'h78;
  LUT3 \XLXI_2/count_Madd__n0000_Mxor_Result<2>_Result1  (
    .I0(\XLXI_2/count [0]),
    .I1(\XLXI_2/count [1]),
    .I2(\XLXI_2/count [2]),
    .O(\XLXI_2/count__n0000 [2])
  );
  defparam \XLXI_2/count_Madd__n0000_Mxor_Result<3>_Result1 .INIT = 16'h6CCC;
  LUT4 \XLXI_2/count_Madd__n0000_Mxor_Result<3>_Result1  (
    .I0(\XLXI_2/count [0]),
    .I1(\XLXI_2/count [3]),
    .I2(\XLXI_2/count [1]),
    .I3(\XLXI_2/count [2]),
    .O(\XLXI_2/count__n0000 [3])
  );
  FDC \XLXI_2/count_0  (
    .D(\XLXI_2/count__n0000 [0]),
    .CLR(CHOICE1937),
    .C(clk_BUFGP),
    .Q(\XLXI_2/count [0])
  );
  FDC \XLXI_2/count_1  (
    .D(\XLXI_2/count__n0000 [1]),
    .CLR(CHOICE1937),
    .C(clk_BUFGP),
    .Q(\XLXI_2/count [1])
  );
  FDC \XLXI_2/count_2  (
    .D(\XLXI_2/count__n0000 [2]),
    .CLR(CHOICE1937),
    .C(clk_BUFGP),
    .Q(\XLXI_2/count [2])
  );
  INV \XLXI_2/count_Madd__n0000__n00091_INV_0  (
    .I(\XLXI_2/count [0]),
    .O(\XLXI_2/count__n0000 [0])
  );
  defparam \XLXI_3/_n0033_SW0 .INIT = 16'hFEFF;
  LUT4 \XLXI_3/_n0033_SW0  (
    .I0(\XLXI_3/data_in_buf [0]),
    .I1(\XLXI_3/data_in_buf [2]),
    .I2(\XLXI_3/data_in_buf [1]),
    .I3(\XLXI_3/data_in_buf [3]),
    .O(N144)
  );
  defparam \XLXI_4/ascii<5>234 .INIT = 8'h20;
  LUT3_L \XLXI_4/ascii<5>234  (
    .I0(\XLXI_4/q_4_5 ),
    .I1(\XLXI_4/q_2_2 ),
    .I2(\XLXI_4/q_5_4 ),
    .LO(CHOICE2228)
  );
  defparam \XLXI_4/_n0008_SW0 .INIT = 8'hDF;
  LUT3_L \XLXI_4/_n0008_SW0  (
    .I0(\XLXI_4/q [8]),
    .I1(\XLXI_4/q [1]),
    .I2(N120),
    .LO(N150)
  );
  defparam \XLXI_4/_n00061 .INIT = 8'hD5;
  LUT3 \XLXI_4/_n00061  (
    .I0(rst_IBUF),
    .I1(\XLXI_4/rx_shifting_done ),
    .I2(CHOICE1923),
    .O(\XLXI_4/_n0006 )
  );
  defparam \XLXI_4/ascii<2>241 .INIT = 16'hF4F0;
  LUT4 \XLXI_4/ascii<2>241  (
    .I0(\XLXI_4/q [7]),
    .I1(\XLXI_4/q [6]),
    .I2(CHOICE2083),
    .I3(CHOICE2078),
    .O(CHOICE2084)
  );
  defparam \XLXI_3/_n0022_SW2 .INIT = 16'hFFBA;
  LUT4_L \XLXI_3/_n0022_SW2  (
    .I0(\XLXI_3/_n0035 ),
    .I1(\XLXI_3/_n0033 ),
    .I2(\XLXI_3/_n0002 ),
    .I3(CHOICE2359),
    .LO(N2324)
  );
  defparam \XLXI_4/ascii<5>147 .INIT = 16'h999F;
  LUT4 \XLXI_4/ascii<5>147  (
    .I0(\XLXI_4/q_4_3 ),
    .I1(\XLXI_4/q_6_5 ),
    .I2(\XLXI_4/q_7_2 ),
    .I3(\XLXI_4/q_5_4 ),
    .O(CHOICE2208)
  );
  defparam \XLXI_4/ascii<2>239 .INIT = 16'h008F;
  LUT4_L \XLXI_4/ascii<2>239  (
    .I0(\XLXI_4/q_1_4 ),
    .I1(\XLXI_4/q_4_3 ),
    .I2(\XLXI_4/q_3_1 ),
    .I3(\XLXI_4/q_2_2 ),
    .LO(CHOICE2083)
  );
  defparam \XLXI_4/_n0140_SW0 .INIT = 16'hFEFF;
  LUT4 \XLXI_4/_n0140_SW0  (
    .I0(\XLXI_4/q [8]),
    .I1(\XLXI_4/q [1]),
    .I2(\XLXI_4/q [3]),
    .I3(\XLXI_4/q [2]),
    .O(N191)
  );
  defparam \XLXI_3/state_FFd2-In_SW0 .INIT = 16'h00FE;
  LUT4 \XLXI_3/state_FFd2-In_SW0  (
    .I0(\XLXI_3/count [6]),
    .I1(\XLXI_3/count [4]),
    .I2(\XLXI_3/count [5]),
    .I3(N2486),
    .O(N193)
  );
  OBUF led_7_OBUF (
    .I(ps2ck_IOBUF),
    .O(led[7])
  );
  defparam \XLXI_3/Ker111_SW0 .INIT = 16'hF888;
  LUT4_L \XLXI_3/Ker111_SW0  (
    .I0(\XLXI_3/data_in_buf [0]),
    .I1(\XLXI_3/state_FFd2 ),
    .I2(N2466),
    .I3(\XLXI_3/_n0035 ),
    .LO(N2301)
  );
  defparam \XLXI_4/timer_60usec_done30 .INIT = 16'h0400;
  LUT4 \XLXI_4/timer_60usec_done30  (
    .I0(\XLXI_4/timer_60usec_count [1]),
    .I1(\XLXI_4/timer_60usec_count [2]),
    .I2(\XLXI_4/timer_60usec_count [3]),
    .I3(\XLXI_4/timer_60usec_count [0]),
    .O(CHOICE2251)
  );
  defparam \XLXI_4/ascii<1>198_SW0 .INIT = 4'hB;
  LUT2 \XLXI_4/ascii<1>198_SW0  (
    .I0(\XLXI_4/q [4]),
    .I1(\XLXI_4/q [5]),
    .O(N2387)
  );
  defparam \XLXI_3/Ker111_SW0_SW0 .INIT = 4'h8;
  LUT2 \XLXI_3/Ker111_SW0_SW0  (
    .I0(\XLXI_3/count [0]),
    .I1(\XLXI_3/state_FFd3 ),
    .O(N2466)
  );
  defparam \XLXI_4/ascii<3>228 .INIT = 16'h041F;
  LUT4 \XLXI_4/ascii<3>228  (
    .I0(\XLXI_4/q [1]),
    .I1(\XLXI_4/q [4]),
    .I2(\XLXI_4/q [3]),
    .I3(\XLXI_4/q [2]),
    .O(CHOICE2009)
  );
  defparam \XLXI_4/m1_next_state<1>126 .INIT = 16'h1C10;
  LUT4_D \XLXI_4/m1_next_state<1>126  (
    .I0(\XLXI_4/m1_state_0_1 ),
    .I1(\XLXI_4/m1_state_1_1 ),
    .I2(\XLXI_4/m1_state_2_1 ),
    .I3(\XLXI_4/ps2_clk_s ),
    .LO(N2488),
    .O(CHOICE1899)
  );
  defparam \XLXI_4/ascii<5>102 .INIT = 8'h07;
  LUT3 \XLXI_4/ascii<5>102  (
    .I0(\XLXI_4/q [5]),
    .I1(\XLXI_4/q [4]),
    .I2(N2403),
    .O(CHOICE2191)
  );
  defparam \XLXI_4/ascii<2>30 .INIT = 16'hC080;
  LUT4 \XLXI_4/ascii<2>30  (
    .I0(\XLXI_4/left_shift_key ),
    .I1(\XLXI_4/q [2]),
    .I2(\XLXI_4/q [4]),
    .I3(\XLXI_4/right_shift_key ),
    .O(CHOICE2024)
  );
  defparam \XLXI_3/Ker111_SW1 .INIT = 16'hF888;
  LUT4 \XLXI_3/Ker111_SW1  (
    .I0(\XLXI_3/count [0]),
    .I1(\XLXI_3/state_FFd3 ),
    .I2(\XLXI_3/state_FFd2 ),
    .I3(\XLXI_3/data_in_buf [0]),
    .O(N2302)
  );
  defparam \XLXI_4/_n000533_SW1 .INIT = 8'hF7;
  LUT3 \XLXI_4/_n000533_SW1  (
    .I0(rst_IBUF),
    .I1(\XLXI_4/m1_state [3]),
    .I2(N2500),
    .O(N2355)
  );
  defparam \XLXI_4/ascii<2>104 .INIT = 16'h0357;
  LUT4 \XLXI_4/ascii<2>104  (
    .I0(\XLXI_4/q_1_3 ),
    .I1(\XLXI_4/q_6_6 ),
    .I2(\XLXI_4/q_3_1 ),
    .I3(\XLXI_4/q_2_2 ),
    .O(CHOICE2042)
  );
  defparam \XLXI_4/ascii<5>20_SW0_SW1 .INIT = 16'hC0D1;
  LUT4 \XLXI_4/ascii<5>20_SW0_SW1  (
    .I0(\XLXI_4/q_62 ),
    .I1(\XLXI_4/q_5_5 ),
    .I2(\XLXI_4/q_7_3 ),
    .I3(\XLXI_4/q_2_2 ),
    .O(N2416)
  );
  defparam \XLXI_4/ascii<2>110 .INIT = 16'h1500;
  LUT4_L \XLXI_4/ascii<2>110  (
    .I0(\XLXI_4/q [7]),
    .I1(\XLXI_4/q [5]),
    .I2(\XLXI_4/q [4]),
    .I3(CHOICE2042),
    .LO(CHOICE2045)
  );
  defparam \XLXI_4/timer_5usec_done3 .INIT = 4'h2;
  LUT2_D \XLXI_4/timer_5usec_done3  (
    .I0(\XLXI_4/timer_5usec_count [7]),
    .I1(\XLXI_4/timer_5usec_count [6]),
    .LO(N2489),
    .O(CHOICE1942)
  );
  defparam \XLXI_4/ascii<3>24 .INIT = 16'hEEEA;
  LUT4_L \XLXI_4/ascii<3>24  (
    .I0(\XLXI_4/q [7]),
    .I1(\XLXI_4/q [5]),
    .I2(CHOICE1954),
    .I3(CHOICE1952),
    .LO(CHOICE1957)
  );
  defparam \XLXI_4/rx_output_event14 .INIT = 16'hBFFF;
  LUT4_L \XLXI_4/rx_output_event14  (
    .I0(\XLXI_4/q_1_3 ),
    .I1(\XLXI_4/q_6_2 ),
    .I2(\XLXI_4/q_7_2 ),
    .I3(\XLXI_4/q [8]),
    .LO(CHOICE1922)
  );
  defparam \XLXI_4/ascii<3>278 .INIT = 16'hFBF1;
  LUT4_L \XLXI_4/ascii<3>278  (
    .I0(\XLXI_4/q [6]),
    .I1(N2287),
    .I2(CHOICE1980),
    .I3(CHOICE1957),
    .LO(\XLXI_4/ascii [3])
  );
  defparam \XLXI_4/timer_60usec_done19 .INIT = 16'h2000;
  LUT4_D \XLXI_4/timer_60usec_done19  (
    .I0(\XLXI_4/timer_60usec_count [9]),
    .I1(\XLXI_4/timer_60usec_count [10]),
    .I2(\XLXI_4/timer_60usec_count [11]),
    .I3(\XLXI_4/timer_60usec_count [8]),
    .LO(N2490),
    .O(CHOICE2246)
  );
  defparam \XLXI_4/ascii<2>59 .INIT = 16'hF2F3;
  LUT4 \XLXI_4/ascii<2>59  (
    .I0(CHOICE2024),
    .I1(\XLXI_4/q [5]),
    .I2(N2492),
    .I3(N2293),
    .O(CHOICE2028)
  );
  defparam \XLXI_4/ascii<5>51_SW0_SW0 .INIT = 4'hB;
  LUT2 \XLXI_4/ascii<5>51_SW0_SW0  (
    .I0(\XLXI_4/q [6]),
    .I1(CHOICE2180),
    .O(N2423)
  );
  defparam \XLXI_4/rx_output_event17 .INIT = 16'hFFFE;
  LUT4 \XLXI_4/rx_output_event17  (
    .I0(\XLXI_4/q [2]),
    .I1(\XLXI_4/q [3]),
    .I2(\XLXI_4/q [4]),
    .I3(CHOICE1922),
    .O(CHOICE1923)
  );
  defparam \XLXI_3/_n003219 .INIT = 16'h0400;
  LUT4 \XLXI_3/_n003219  (
    .I0(\XLXI_3/clkcnt [13]),
    .I1(\XLXI_3/clkcnt [15]),
    .I2(\XLXI_3/clkcnt [14]),
    .I3(\XLXI_3/clkcnt [12]),
    .O(CHOICE1849)
  );
  defparam \XLXI_4/ascii<1>74_SW0 .INIT = 8'h07;
  LUT3_L \XLXI_4/ascii<1>74_SW0  (
    .I0(\XLXI_4/q_6_5 ),
    .I1(\XLXI_4/q_3_1 ),
    .I2(\XLXI_4/q_2_2 ),
    .LO(N2409)
  );
  defparam \XLXI_4/m1_next_state<2>17 .INIT = 16'h028A;
  LUT4 \XLXI_4/m1_next_state<2>17  (
    .I0(\XLXI_4/m1_state [2]),
    .I1(\XLXI_4/m1_state [1]),
    .I2(\XLXI_4/m1_state [0]),
    .I3(\XLXI_4/ps2_data_s ),
    .O(CHOICE1816)
  );
  defparam \XLXI_4/rx_output_event23 .INIT = 4'h8;
  LUT2 \XLXI_4/rx_output_event23  (
    .I0(\XLXI_4/rx_shifting_done ),
    .I1(CHOICE1923),
    .O(\XLXI_4/rx_output_event )
  );
  defparam \XLXI_4/m1_next_state<1>41 .INIT = 16'h7FA7;
  LUT4 \XLXI_4/m1_next_state<1>41  (
    .I0(\XLXI_4/m1_state [2]),
    .I1(\XLXI_4/ps2_data_s ),
    .I2(\XLXI_4/ps2_clk_s ),
    .I3(\XLXI_4/m1_state [0]),
    .O(CHOICE1879)
  );
  defparam \XLXI_4/_n000544 .INIT = 16'hDF80;
  LUT4 \XLXI_4/_n000544  (
    .I0(CHOICE1929),
    .I1(N2355),
    .I2(\XLXI_4/timer_60usec_done ),
    .I3(N2354),
    .O(\XLXI_4/_n0005 )
  );
  defparam \XLXI_4/ascii<5>188 .INIT = 16'hFFD8;
  LUT4 \XLXI_4/ascii<5>188  (
    .I0(CHOICE2191),
    .I1(N2366),
    .I2(N2365),
    .I3(N2322),
    .O(CHOICE2213)
  );
  defparam \XLXI_3/Ker111_SW4 .INIT = 16'hF888;
  LUT4 \XLXI_3/Ker111_SW4  (
    .I0(\XLXI_3/data_in_buf [2]),
    .I1(\XLXI_3/state_FFd2 ),
    .I2(N2464),
    .I3(\XLXI_3/_n0035 ),
    .O(N2307)
  );
  defparam \XLXI_4/m1_next_state<1>143 .INIT = 8'h04;
  LUT3 \XLXI_4/m1_next_state<1>143  (
    .I0(\XLXI_4/bit_count [0]),
    .I1(\XLXI_4/m1_state_2_2 ),
    .I2(\XLXI_4/m1_state [1]),
    .O(CHOICE1904)
  );
  defparam \XLXI_4/timer_60usec_done11 .INIT = 16'h0010;
  LUT4_D \XLXI_4/timer_60usec_done11  (
    .I0(\XLXI_4/timer_60usec_count [6]),
    .I1(\XLXI_4/timer_60usec_count [4]),
    .I2(\XLXI_4/timer_60usec_count [7]),
    .I3(\XLXI_4/timer_60usec_count [5]),
    .LO(N2491),
    .O(CHOICE2242)
  );
  FDRE \XLXI_4/q_4_1_37  (
    .D(\XLXI_4/q [5]),
    .R(CHOICE1937),
    .CE(\XLXI_4/_n0004 ),
    .C(\XLXI_1/clk ),
    .Q(\XLXI_4/q_4_1 )
  );
  defparam \XLXI_4/ascii<1>175 .INIT = 16'hF5F4;
  LUT4 \XLXI_4/ascii<1>175  (
    .I0(\XLXI_4/q [1]),
    .I1(CHOICE2096),
    .I2(CHOICE2130),
    .I3(CHOICE2115),
    .O(CHOICE2131)
  );
  defparam \XLXI_4/ascii<2>223 .INIT = 8'h10;
  LUT3 \XLXI_4/ascii<2>223  (
    .I0(\XLXI_4/q_1_4 ),
    .I1(\XLXI_4/q_4_2 ),
    .I2(\XLXI_4/q_3_1 ),
    .O(CHOICE2078)
  );
  defparam \XLXI_4/ascii<5>248_SW0 .INIT = 16'hAA02;
  LUT4 \XLXI_4/ascii<5>248_SW0  (
    .I0(\XLXI_4/q [6]),
    .I1(\XLXI_4/left_shift_key ),
    .I2(\XLXI_4/right_shift_key ),
    .I3(CHOICE2228),
    .O(N2346)
  );
  defparam \XLXI_4/ascii<5>77_SW0 .INIT = 16'h004E;
  LUT4 \XLXI_4/ascii<5>77_SW0  (
    .I0(\XLXI_4/q [4]),
    .I1(N2423),
    .I2(N2401),
    .I3(CHOICE2177),
    .O(N2374)
  );
  defparam \XLXI_4/ascii<1>224 .INIT = 16'h7F3B;
  LUT4 \XLXI_4/ascii<1>224  (
    .I0(\XLXI_4/q_4_3 ),
    .I1(\XLXI_4/q_7_2 ),
    .I2(\XLXI_4/q_2_2 ),
    .I3(\XLXI_4/q_5_4 ),
    .O(CHOICE2146)
  );
  FDRE \XLXI_4/q_4_4_38  (
    .D(\XLXI_4/q [5]),
    .R(CHOICE1937),
    .CE(\XLXI_4/_n0004 ),
    .C(\XLXI_1/clk ),
    .Q(\XLXI_4/q_4_4 )
  );
  defparam \XLXI_4/ascii<4>237_SW0 .INIT = 16'hB0E3;
  LUT4 \XLXI_4/ascii<4>237_SW0  (
    .I0(\XLXI_4/q_4_3 ),
    .I1(\XLXI_4/q_6_2 ),
    .I2(\XLXI_4/q_7_2 ),
    .I3(\XLXI_4/q_5_4 ),
    .O(N2381)
  );
  defparam \XLXI_3/_n003236 .INIT = 4'h1;
  LUT2 \XLXI_3/_n003236  (
    .I0(\XLXI_3/clkcnt [4]),
    .I1(\XLXI_3/clkcnt [5]),
    .O(CHOICE1855)
  );
  defparam Ker1271.INIT = 16'hEAAA;
  LUT4 Ker1271 (
    .I0(\XLXI_4/q [8]),
    .I1(\XLXI_4/q [1]),
    .I2(\XLXI_4/q [2]),
    .I3(\XLXI_4/q [3]),
    .O(N127)
  );
  defparam \XLXI_4/ascii<3>182_SW0 .INIT = 16'h222F;
  LUT4 \XLXI_4/ascii<3>182_SW0  (
    .I0(\XLXI_4/q [4]),
    .I1(\XLXI_4/q [2]),
    .I2(\XLXI_4/right_shift_key ),
    .I3(\XLXI_4/left_shift_key ),
    .O(N2405)
  );
  defparam \XLXI_3/Ker111_SW4_SW0 .INIT = 4'h8;
  LUT2_L \XLXI_3/Ker111_SW4_SW0  (
    .I0(\XLXI_3/count [2]),
    .I1(\XLXI_3/state_FFd3 ),
    .LO(N2464)
  );
  defparam Ker13_SW0.INIT = 16'hFEAE;
  LUT4_D Ker13_SW0 (
    .I0(\XLXI_4/q [8]),
    .I1(\XLXI_4/q [1]),
    .I2(N28),
    .I3(N133),
    .LO(N2492),
    .O(N176)
  );
  defparam \XLXI_4/ascii<2>311 .INIT = 16'hFFFE;
  LUT4_L \XLXI_4/ascii<2>311  (
    .I0(N2342),
    .I1(CHOICE2046),
    .I2(CHOICE2028),
    .I3(CHOICE2087),
    .LO(\XLXI_4/ascii [2])
  );
  defparam \XLXI_4/ascii<2>70 .INIT = 4'h8;
  LUT2 \XLXI_4/ascii<2>70  (
    .I0(\XLXI_4/q [7]),
    .I1(\XLXI_4/q [2]),
    .O(CHOICE2029)
  );
  defparam \XLXI_4/m1_next_state<1>152 .INIT = 4'h2;
  LUT2 \XLXI_4/m1_next_state<1>152  (
    .I0(\XLXI_4/m1_state [1]),
    .I1(\XLXI_4/m1_state [2]),
    .O(CHOICE1908)
  );
  defparam \XLXI_4/ascii<1>310 .INIT = 16'hA888;
  LUT4_L \XLXI_4/ascii<1>310  (
    .I0(\XLXI_4/q [4]),
    .I1(N133),
    .I2(\XLXI_4/q [1]),
    .I3(CHOICE2157),
    .LO(CHOICE2160)
  );
  defparam \XLXI_4/ascii<0>86_SW0 .INIT = 16'hEEEF;
  LUT4 \XLXI_4/ascii<0>86_SW0  (
    .I0(\XLXI_4/q_4_2 ),
    .I1(\XLXI_4/q_6_2 ),
    .I2(\XLXI_4/left_shift_key ),
    .I3(\XLXI_4/right_shift_key ),
    .O(N2391)
  );
  defparam \XLXI_4/ascii<5>172_SW0 .INIT = 16'hAABA;
  LUT4_L \XLXI_4/ascii<5>172_SW0  (
    .I0(\XLXI_4/q [8]),
    .I1(\XLXI_4/q [7]),
    .I2(\XLXI_4/q [5]),
    .I3(\XLXI_4/rx_shift_key_on ),
    .LO(N2322)
  );
  defparam \XLXI_4/ascii<2>205 .INIT = 8'h01;
  LUT3_L \XLXI_4/ascii<2>205  (
    .I0(\XLXI_4/q_3_1 ),
    .I1(\XLXI_4/q_6_6 ),
    .I2(\XLXI_4/q_4_6 ),
    .LO(CHOICE2071)
  );
  defparam \XLXI_3/_n0030<0>1 .INIT = 16'h4F4E;
  LUT4_L \XLXI_3/_n0030<0>1  (
    .I0(\XLXI_3/_n0035 ),
    .I1(\XLXI_3/_n0036 ),
    .I2(\XLXI_3/count [0]),
    .I3(CHOICE2359),
    .LO(\XLXI_3/_n0030 [0])
  );
  defparam \XLXI_4/_n00058 .INIT = 16'h0400;
  LUT4 \XLXI_4/_n00058  (
    .I0(\XLXI_4/m1_state [1]),
    .I1(\XLXI_4/m1_state [0]),
    .I2(\XLXI_4/m1_state [2]),
    .I3(\XLXI_4/ps2_clk_s ),
    .O(CHOICE1929)
  );
  defparam \XLXI_4/m1_next_state<2>39 .INIT = 16'h283C;
  LUT4_L \XLXI_4/m1_next_state<2>39  (
    .I0(\XLXI_4/m1_state [2]),
    .I1(\XLXI_4/ps2_clk_s ),
    .I2(\XLXI_4/m1_state [0]),
    .I3(\XLXI_4/m1_state [1]),
    .LO(CHOICE1824)
  );
  defparam \XLXI_4/ascii<3>46 .INIT = 8'hD8;
  LUT3 \XLXI_4/ascii<3>46  (
    .I0(\XLXI_4/q [1]),
    .I1(\XLXI_4/q [5]),
    .I2(\XLXI_4/q [3]),
    .O(CHOICE1962)
  );
  defparam \XLXI_4/ascii<2>83_SW0 .INIT = 8'hFD;
  LUT3 \XLXI_4/ascii<2>83_SW0  (
    .I0(\XLXI_4/q [6]),
    .I1(\XLXI_4/q [3]),
    .I2(\XLXI_4/q [1]),
    .O(N2344)
  );
  defparam \XLXI_4/timer_5usec_done18 .INIT = 16'h0400;
  LUT4_D \XLXI_4/timer_5usec_done18  (
    .I0(\XLXI_4/timer_5usec_count [1]),
    .I1(\XLXI_4/timer_5usec_count [3]),
    .I2(\XLXI_4/timer_5usec_count [2]),
    .I3(\XLXI_4/timer_5usec_count [0]),
    .LO(N2493),
    .O(CHOICE1948)
  );
  FDRS \XLXI_4/m1_state_2_2_39  (
    .D(N2278),
    .R(CHOICE1937),
    .S(CHOICE1827),
    .C(\XLXI_1/clk ),
    .Q(\XLXI_4/m1_state_2_2 )
  );
  defparam \XLXI_3/_n0002_SW1 .INIT = 4'hE;
  LUT2 \XLXI_3/_n0002_SW1  (
    .I0(\XLXI_3/_n0033 ),
    .I1(\XLXI_3/count [1]),
    .O(N2370)
  );
  defparam \XLXI_4/ascii<5>230 .INIT = 16'hAA02;
  LUT4 \XLXI_4/ascii<5>230  (
    .I0(\XLXI_4/q [3]),
    .I1(\XLXI_4/q [5]),
    .I2(\XLXI_4/q [4]),
    .I3(\XLXI_4/q [2]),
    .O(CHOICE2225)
  );
  defparam \XLXI_4/ascii<2>19 .INIT = 16'hDAD8;
  LUT4_L \XLXI_4/ascii<2>19  (
    .I0(\XLXI_4/q_1_3 ),
    .I1(\XLXI_4/q_2_3 ),
    .I2(\XLXI_4/q_4_5 ),
    .I3(\XLXI_4/q_3_2 ),
    .LO(CHOICE2021)
  );
  defparam \XLXI_4/ascii<5>254 .INIT = 16'hFFEC;
  LUT4_L \XLXI_4/ascii<5>254  (
    .I0(\XLXI_4/q [7]),
    .I1(CHOICE2225),
    .I2(CHOICE2222),
    .I3(N2346),
    .LO(CHOICE2233)
  );
  defparam \XLXI_4/ascii<6>196_SW0 .INIT = 16'hF1FF;
  LUT4_L \XLXI_4/ascii<6>196_SW0  (
    .I0(\XLXI_4/left_shift_key ),
    .I1(\XLXI_4/right_shift_key ),
    .I2(\XLXI_4/q_6_4 ),
    .I3(CHOICE2519),
    .LO(N2328)
  );
  defparam \XLXI_4/m1_next_state<2>58 .INIT = 8'h32;
  LUT3 \XLXI_4/m1_next_state<2>58  (
    .I0(CHOICE1824),
    .I1(\XLXI_4/m1_state [3]),
    .I2(CHOICE1816),
    .O(CHOICE1827)
  );
  defparam \XLXI_4/m1_next_state<1>160_SW1 .INIT = 8'hD5;
  LUT3 \XLXI_4/m1_next_state<1>160_SW1  (
    .I0(\XLXI_4/m1_state [0]),
    .I1(\XLXI_4/m1_state [3]),
    .I2(CHOICE1899),
    .O(N2363)
  );
  defparam \XLXI_4/ascii<2>136 .INIT = 16'h0F01;
  LUT4_L \XLXI_4/ascii<2>136  (
    .I0(\XLXI_4/q [5]),
    .I1(\XLXI_4/q [4]),
    .I2(\XLXI_4/q [1]),
    .I3(\XLXI_4/q [6]),
    .LO(CHOICE2049)
  );
  defparam \XLXI_4/m1_next_state<1>1991_SW0 .INIT = 8'h7D;
  LUT3 \XLXI_4/m1_next_state<1>1991_SW0  (
    .I0(\XLXI_4/ps2_clk_s ),
    .I1(\XLXI_4/m1_state [2]),
    .I2(\XLXI_4/m1_state [0]),
    .O(N2450)
  );
  defparam \XLXI_3/Ker111_SW3 .INIT = 16'hF888;
  LUT4 \XLXI_3/Ker111_SW3  (
    .I0(\XLXI_3/count [1]),
    .I1(\XLXI_3/state_FFd3 ),
    .I2(\XLXI_3/state_FFd2 ),
    .I3(\XLXI_3/data_in_buf [1]),
    .O(N2305)
  );
  defparam \XLXI_4/ascii<2>117 .INIT = 16'hFAF2;
  LUT4 \XLXI_4/ascii<2>117  (
    .I0(\XLXI_4/q [4]),
    .I1(N2344),
    .I2(CHOICE2045),
    .I3(CHOICE2029),
    .O(CHOICE2046)
  );
  defparam \XLXI_3/_n003254 .INIT = 16'h0001;
  LUT4 \XLXI_3/_n003254  (
    .I0(\XLXI_3/clkcnt [0]),
    .I1(\XLXI_3/clkcnt [1]),
    .I2(\XLXI_3/clkcnt [2]),
    .I3(\XLXI_3/clkcnt [3]),
    .O(CHOICE1863)
  );
  defparam \XLXI_4/ascii<1>15 .INIT = 16'h020A;
  LUT4 \XLXI_4/ascii<1>15  (
    .I0(\XLXI_4/q [4]),
    .I1(\XLXI_4/q [3]),
    .I2(\XLXI_4/q [5]),
    .I3(N2389),
    .O(CHOICE2096)
  );
  defparam \XLXI_4/ascii<1>74 .INIT = 16'hFFE4;
  LUT4 \XLXI_4/ascii<1>74  (
    .I0(\XLXI_4/q [5]),
    .I1(N2409),
    .I2(N2410),
    .I3(CHOICE2113),
    .O(CHOICE2115)
  );
  defparam \XLXI_4/ascii<1>294 .INIT = 16'h22F2;
  LUT4 \XLXI_4/ascii<1>294  (
    .I0(\XLXI_4/q [5]),
    .I1(\XLXI_4/q [7]),
    .I2(\XLXI_4/q [6]),
    .I3(N96),
    .O(CHOICE2157)
  );
  defparam \XLXI_4/m1_next_state<3>68_SW0 .INIT = 16'h6545;
  LUT4 \XLXI_4/m1_next_state<3>68_SW0  (
    .I0(\XLXI_4/m1_state [3]),
    .I1(\XLXI_4/m1_state [1]),
    .I2(\XLXI_4/ps2_clk_s ),
    .I3(\XLXI_4/ps2_data_s ),
    .O(N2334)
  );
  defparam \XLXI_3/_n003258 .INIT = 16'h2000;
  LUT4_D \XLXI_3/_n003258  (
    .I0(\XLXI_3/clkcnt [6]),
    .I1(\XLXI_3/clkcnt [7]),
    .I2(CHOICE1855),
    .I3(CHOICE1863),
    .LO(N2494),
    .O(CHOICE1864)
  );
  defparam \XLXI_3/_n003268_SW0 .INIT = 16'h0400;
  LUT4 \XLXI_3/_n003268_SW0  (
    .I0(\XLXI_3/clkcnt [8]),
    .I1(\XLXI_3/clkcnt [10]),
    .I2(\XLXI_3/clkcnt [9]),
    .I3(\XLXI_3/clkcnt [11]),
    .O(N2337)
  );
  defparam \XLXI_4/ascii<4>294 .INIT = 16'h1000;
  LUT4_L \XLXI_4/ascii<4>294  (
    .I0(\XLXI_4/q [1]),
    .I1(\XLXI_4/q [6]),
    .I2(\XLXI_4/rx_shift_key_on ),
    .I3(CHOICE2435),
    .LO(CHOICE2440)
  );
  defparam \XLXI_4/ascii<1>162_SW2 .INIT = 4'h1;
  LUT2 \XLXI_4/ascii<1>162_SW2  (
    .I0(\XLXI_4/q_4_3 ),
    .I1(\XLXI_4/q_7_2 ),
    .O(N2420)
  );
  defparam \XLXI_4/_n000519 .INIT = 8'h20;
  LUT3 \XLXI_4/_n000519  (
    .I0(\XLXI_4/m1_state_2_2 ),
    .I1(\XLXI_4/m1_state [0]),
    .I2(\XLXI_4/m1_state [1]),
    .O(CHOICE1933)
  );
  defparam \XLXI_4/ascii<3>164 .INIT = 16'hAB77;
  LUT4_L \XLXI_4/ascii<3>164  (
    .I0(\XLXI_4/q [1]),
    .I1(\XLXI_4/q [7]),
    .I2(\XLXI_4/q [4]),
    .I3(\XLXI_4/q [2]),
    .LO(CHOICE1994)
  );
  defparam \XLXI_4/ascii<3>86 .INIT = 16'h3135;
  LUT4 \XLXI_4/ascii<3>86  (
    .I0(\XLXI_4/q [1]),
    .I1(\XLXI_4/q [2]),
    .I2(\XLXI_4/q [5]),
    .I3(\XLXI_4/q [4]),
    .O(CHOICE1976)
  );
  defparam \XLXI_4/ascii<3>5 .INIT = 16'hA888;
  LUT4 \XLXI_4/ascii<3>5  (
    .I0(\XLXI_4/q [2]),
    .I1(\XLXI_4/q [4]),
    .I2(\XLXI_4/rx_shift_key_on ),
    .I3(\XLXI_4/q [3]),
    .O(CHOICE1952)
  );
  defparam \XLXI_4/m1_next_state<3>1661 .INIT = 16'h5554;
  LUT4_D \XLXI_4/m1_next_state<3>1661  (
    .I0(\XLXI_4/m1_state [2]),
    .I1(CHOICE2288),
    .I2(CHOICE2296),
    .I3(CHOICE2286),
    .LO(N2495),
    .O(N2276)
  );
  defparam \XLXI_4/ascii<0>161 .INIT = 16'h2100;
  LUT4 \XLXI_4/ascii<0>161  (
    .I0(\XLXI_4/q_6_6 ),
    .I1(\XLXI_4/q_4_6 ),
    .I2(\XLXI_4/q_7_2 ),
    .I3(\XLXI_4/q_5_4 ),
    .O(CHOICE2602)
  );
  defparam \XLXI_4/ascii<1>206 .INIT = 8'h04;
  LUT3 \XLXI_4/ascii<1>206  (
    .I0(\XLXI_4/q_4_3 ),
    .I1(\XLXI_4/q_6_2 ),
    .I2(\XLXI_4/q_2_2 ),
    .O(CHOICE2139)
  );
  defparam \XLXI_4/ascii<5>20_SW0 .INIT = 16'hE4EE;
  LUT4_L \XLXI_4/ascii<5>20_SW0  (
    .I0(\XLXI_4/q [3]),
    .I1(N2415),
    .I2(N2416),
    .I3(\XLXI_4/rx_shift_key_on ),
    .LO(N2401)
  );
  defparam \XLXI_4/ascii<2>283 .INIT = 16'hAAA8;
  LUT4_L \XLXI_4/ascii<2>283  (
    .I0(\XLXI_4/q [5]),
    .I1(CHOICE2084),
    .I2(CHOICE2064),
    .I3(N2289),
    .LO(CHOICE2087)
  );
  defparam \XLXI_3/Ker111_SW8 .INIT = 16'hFF80;
  LUT4 \XLXI_3/Ker111_SW8  (
    .I0(\XLXI_3/count [3]),
    .I1(\XLXI_3/state_FFd3 ),
    .I2(\XLXI_3/_n0035 ),
    .I3(CHOICE2257),
    .O(N2313)
  );
  defparam \XLXI_4/m1_next_state<1>160_SW0 .INIT = 16'hFF40;
  LUT4_L \XLXI_4/m1_next_state<1>160_SW0  (
    .I0(\XLXI_4/m1_state [0]),
    .I1(N126),
    .I2(CHOICE1904),
    .I3(N2462),
    .LO(N2362)
  );
  defparam \XLXI_4/m1_next_state<2>92 .INIT = 16'h3A2A;
  LUT4_L \XLXI_4/m1_next_state<2>92  (
    .I0(\XLXI_4/m1_state [0]),
    .I1(\XLXI_4/ps2_clk_s ),
    .I2(\XLXI_4/m1_state [1]),
    .I3(\XLXI_4/timer_5usec_done ),
    .LO(CHOICE1835)
  );
  FDRE \XLXI_4/q_6_1_40  (
    .D(\XLXI_4/q [7]),
    .R(CHOICE1937),
    .CE(\XLXI_4/_n0004 ),
    .C(\XLXI_1/clk ),
    .Q(\XLXI_4/q_6_1 )
  );
  defparam \XLXI_4/ascii<4>82 .INIT = 16'h0006;
  LUT4_L \XLXI_4/ascii<4>82  (
    .I0(\XLXI_4/q_6_6 ),
    .I1(\XLXI_4/q_7_3 ),
    .I2(\XLXI_4/right_shift_key ),
    .I3(\XLXI_4/left_shift_key ),
    .LO(CHOICE2401)
  );
  defparam \XLXI_4/ascii<3>8 .INIT = 4'h2;
  LUT2 \XLXI_4/ascii<3>8  (
    .I0(\XLXI_4/q [1]),
    .I1(\XLXI_4/q [4]),
    .O(CHOICE1954)
  );
  defparam \XLXI_3/_n0002_SW2 .INIT = 8'hEF;
  LUT3 \XLXI_3/_n0002_SW2  (
    .I0(\XLXI_3/_n0033 ),
    .I1(\XLXI_3/count [1]),
    .I2(\XLXI_3/count [4]),
    .O(N2372)
  );
  defparam \XLXI_4/ascii<6>253_G .INIT = 8'hA8;
  LUT3_L \XLXI_4/ascii<6>253_G  (
    .I0(\XLXI_4/q [2]),
    .I1(\XLXI_4/q [6]),
    .I2(\XLXI_4/q [5]),
    .LO(N2472)
  );
  defparam \XLXI_4/_n000533_SW0 .INIT = 16'hF7F5;
  LUT4_L \XLXI_4/_n000533_SW0  (
    .I0(rst_IBUF),
    .I1(\XLXI_4/m1_state [3]),
    .I2(\XLXI_4/rx_shifting_done ),
    .I3(CHOICE1933),
    .LO(N2354)
  );
  defparam \XLXI_4/ascii<4>381 .INIT = 16'h048C;
  LUT4 \XLXI_4/ascii<4>381  (
    .I0(\XLXI_4/right_shift_key ),
    .I1(CHOICE2465),
    .I2(N2398),
    .I3(N2399),
    .O(CHOICE2466)
  );
  OBUF led_5_OBUF (
    .I(\XLXI_4/rx_ascii [5]),
    .O(led[5])
  );
  defparam \XLXI_4/ascii<1>15_SW0 .INIT = 8'hAB;
  LUT3_L \XLXI_4/ascii<1>15_SW0  (
    .I0(\XLXI_4/q_6_5 ),
    .I1(\XLXI_4/left_shift_key ),
    .I2(\XLXI_4/right_shift_key ),
    .LO(N2389)
  );
  defparam \XLXI_3/Ker6_SW0 .INIT = 16'hFF01;
  LUT4 \XLXI_3/Ker6_SW0  (
    .I0(\XLXI_3/count [5]),
    .I1(N1283),
    .I2(N2372),
    .I3(N2485),
    .O(N186)
  );
  defparam \XLXI_4/ascii<1>266 .INIT = 16'hFF08;
  LUT4 \XLXI_4/ascii<1>266  (
    .I0(\XLXI_4/q [7]),
    .I1(\XLXI_4/rx_shift_key_on ),
    .I2(N2387),
    .I3(CHOICE2151),
    .O(CHOICE2152)
  );
  FDRS \XLXI_4/m1_state_3  (
    .D(N2495),
    .R(CHOICE1937),
    .S(CHOICE2308),
    .C(\XLXI_1/clk ),
    .Q(\XLXI_4/m1_state [3])
  );
  defparam \XLXI_4/m1_next_state<1>182 .INIT = 16'hFD20;
  LUT4 \XLXI_4/m1_next_state<1>182  (
    .I0(CHOICE1908),
    .I1(\XLXI_4/timer_5usec_done ),
    .I2(N2363),
    .I3(N2362),
    .O(CHOICE1913)
  );
  defparam \XLXI_3/_n003268_SW1 .INIT = 8'h7F;
  LUT3 \XLXI_3/_n003268_SW1  (
    .I0(\XLXI_3/clkcnt [11]),
    .I1(\XLXI_3/clkcnt [10]),
    .I2(CHOICE1849),
    .O(N2454)
  );
  defparam \XLXI_4/ascii<5>219 .INIT = 16'hF11F;
  LUT4 \XLXI_4/ascii<5>219  (
    .I0(\XLXI_4/q [2]),
    .I1(\XLXI_4/q [4]),
    .I2(\XLXI_4/q [5]),
    .I3(N2482),
    .O(CHOICE2222)
  );
  FDRE \XLXI_4/q_5_5_41  (
    .D(\XLXI_4/q [6]),
    .R(CHOICE1937),
    .CE(\XLXI_4/_n0004 ),
    .C(\XLXI_1/clk ),
    .Q(\XLXI_4/q_5_5 )
  );
  defparam \XLXI_4/ascii<1>254 .INIT = 16'h5510;
  LUT4_L \XLXI_4/ascii<1>254  (
    .I0(\XLXI_4/q [3]),
    .I1(\XLXI_4/q [6]),
    .I2(CHOICE2146),
    .I3(CHOICE2139),
    .LO(CHOICE2151)
  );
  defparam \XLXI_3/_n0029_SW0 .INIT = 16'hCACC;
  LUT4 \XLXI_3/_n0029_SW0  (
    .I0(N2302),
    .I1(N2301),
    .I2(\XLXI_3/_n0036 ),
    .I3(CHOICE2359),
    .O(N1275)
  );
  defparam \XLXI_3/_n0028_SW0 .INIT = 16'hCACC;
  LUT4_L \XLXI_3/_n0028_SW0  (
    .I0(N2305),
    .I1(N2304),
    .I2(\XLXI_3/_n0036 ),
    .I3(CHOICE2359),
    .LO(N1277)
  );
  defparam \XLXI_3/_n0027_SW0 .INIT = 16'hCACC;
  LUT4_L \XLXI_3/_n0027_SW0  (
    .I0(N2308),
    .I1(N2307),
    .I2(\XLXI_3/_n0036 ),
    .I3(CHOICE2359),
    .LO(N1279)
  );
  defparam \XLXI_4/m1_next_state<1>160_SW0_SW0 .INIT = 4'h8;
  LUT2 \XLXI_4/m1_next_state<1>160_SW0_SW0  (
    .I0(\XLXI_4/m1_state_3_1 ),
    .I1(N2488),
    .O(N2462)
  );
  defparam \XLXI_3/_n0002_SW0 .INIT = 16'hFFFE;
  LUT4_D \XLXI_3/_n0002_SW0  (
    .I0(\XLXI_3/count [2]),
    .I1(\XLXI_3/count [3]),
    .I2(\XLXI_3/count [6]),
    .I3(\XLXI_3/count [0]),
    .LO(N2496),
    .O(N1283)
  );
  defparam \XLXI_4/m1_next_state<0>109 .INIT = 16'h2000;
  LUT4 \XLXI_4/m1_next_state<0>109  (
    .I0(CHOICE2329),
    .I1(\XLXI_4/m1_state [3]),
    .I2(\XLXI_4/timer_5usec_done ),
    .I3(CHOICE2332),
    .O(CHOICE2335)
  );
  defparam \XLXI_4/ascii<6>307_SW0 .INIT = 16'hFFDF;
  LUT4 \XLXI_4/ascii<6>307_SW0  (
    .I0(\XLXI_4/q_1_4 ),
    .I1(\XLXI_4/q_2_3 ),
    .I2(\XLXI_4/q_5_5 ),
    .I3(\XLXI_4/q_4_4 ),
    .O(N2447)
  );
  defparam \XLXI_4/m1_next_state<3>83 .INIT = 8'h80;
  LUT3 \XLXI_4/m1_next_state<3>83  (
    .I0(\XLXI_4/m1_state [1]),
    .I1(\XLXI_4/m1_state [3]),
    .I2(\XLXI_4/ps2_clk_s ),
    .O(CHOICE2288)
  );
  defparam \XLXI_4/ascii<0>173 .INIT = 4'h4;
  LUT2_D \XLXI_4/ascii<0>173  (
    .I0(\XLXI_4/q_1_3 ),
    .I1(\XLXI_4/q_2_2 ),
    .LO(N2497),
    .O(CHOICE2605)
  );
  defparam \XLXI_4/m1_next_state<0>15 .INIT = 16'hF2F3;
  LUT4 \XLXI_4/m1_next_state<0>15  (
    .I0(\XLXI_4/bit_count [0]),
    .I1(\XLXI_4/m1_state [1]),
    .I2(\XLXI_4/m1_state [0]),
    .I3(N2483),
    .O(CHOICE2316)
  );
  defparam \XLXI_4/ascii<5>172_SW1 .INIT = 16'hFEBA;
  LUT4 \XLXI_4/ascii<5>172_SW1  (
    .I0(N2452),
    .I1(N2481),
    .I2(CHOICE2208),
    .I3(N133),
    .O(N2365)
  );
  defparam \XLXI_3/_n00211_SW0 .INIT = 16'hFFF4;
  LUT4_L \XLXI_3/_n00211_SW0  (
    .I0(\XLXI_3/_n0033 ),
    .I1(\XLXI_3/_n0002 ),
    .I2(N2357),
    .I3(CHOICE2359),
    .LO(N2330)
  );
  defparam \XLXI_4/ascii<0>413 .INIT = 16'hFF32;
  LUT4 \XLXI_4/ascii<0>413  (
    .I0(CHOICE2650),
    .I1(\XLXI_4/q [3]),
    .I2(CHOICE2639),
    .I3(CHOICE2617),
    .O(CHOICE2654)
  );
  FDS \XLXI_4/m1_state_0_1_42  (
    .D(\XLXI_4/m1_next_state [0]),
    .S(CHOICE1937),
    .C(\XLXI_1/clk ),
    .Q(\XLXI_4/m1_state_0_1 )
  );
  defparam \XLXI_3/_n00265 .INIT = 16'hFEFC;
  LUT4_D \XLXI_3/_n00265  (
    .I0(\XLXI_3/data_in_buf [3]),
    .I1(\XLXI_3/state_FFd1 ),
    .I2(\XLXI_3/state_FFd7 ),
    .I3(\XLXI_3/state_FFd2 ),
    .LO(N2498),
    .O(CHOICE2257)
  );
  defparam \XLXI_3/_n002339 .INIT = 16'h88F8;
  LUT4 \XLXI_3/_n002339  (
    .I0(\XLXI_3/state_FFd2 ),
    .I1(\XLXI_3/data_in_buf [6]),
    .I2(\XLXI_3/data [6]),
    .I3(\XLXI_3/_n0038 ),
    .O(CHOICE2370)
  );
  defparam \XLXI_4/ascii<4>63 .INIT = 16'h4700;
  LUT4 \XLXI_4/ascii<4>63  (
    .I0(\XLXI_4/q_6_6 ),
    .I1(\XLXI_4/q_4_6 ),
    .I2(\XLXI_4/q_7_3 ),
    .I3(\XLXI_4/q_5_4 ),
    .O(CHOICE2394)
  );
  defparam \XLXI_4/ascii<4>237 .INIT = 16'h0A22;
  LUT4 \XLXI_4/ascii<4>237  (
    .I0(N2497),
    .I1(N2381),
    .I2(N2382),
    .I3(\XLXI_4/rx_shift_key_on ),
    .O(CHOICE2429)
  );
  defparam \XLXI_4/ascii<4>342_SW1 .INIT = 16'hDFFF;
  LUT4_L \XLXI_4/ascii<4>342_SW1  (
    .I0(\XLXI_4/q_2_3 ),
    .I1(\XLXI_4/q_6_6 ),
    .I2(\XLXI_4/q_4_2 ),
    .I3(\XLXI_4/q_5_4 ),
    .LO(N2396)
  );
  defparam \XLXI_3/_n00268 .INIT = 16'hCACC;
  LUT4_L \XLXI_3/_n00268  (
    .I0(N2314),
    .I1(N2313),
    .I2(\XLXI_3/_n0036 ),
    .I3(CHOICE2359),
    .LO(CHOICE2259)
  );
  FDRS \XLXI_4/m1_state_3_1_43  (
    .D(N2276),
    .R(CHOICE1937),
    .S(CHOICE2308),
    .C(\XLXI_1/clk ),
    .Q(\XLXI_4/m1_state_3_1 )
  );
  defparam \XLXI_4/m1_next_state<0>186_SW1 .INIT = 16'hFE02;
  LUT4 \XLXI_4/m1_next_state<0>186_SW1  (
    .I0(N2359),
    .I1(CHOICE2311),
    .I2(CHOICE2316),
    .I3(N2360),
    .O(N2320)
  );
  defparam \XLXI_4/ascii<0>86 .INIT = 16'h50DC;
  LUT4 \XLXI_4/ascii<0>86  (
    .I0(\XLXI_4/q [1]),
    .I1(\XLXI_4/q [7]),
    .I2(CHOICE2580),
    .I3(N2391),
    .O(CHOICE2583)
  );
  defparam \XLXI_3/_n002613 .INIT = 8'hEC;
  LUT3_L \XLXI_3/_n002613  (
    .I0(\XLXI_3/data [3]),
    .I1(CHOICE2259),
    .I2(\XLXI_3/N6 ),
    .LO(\XLXI_3/_n0026 )
  );
  defparam \XLXI_4/ascii<6>49 .INIT = 4'h4;
  LUT2 \XLXI_4/ascii<6>49  (
    .I0(\XLXI_4/q_2_2 ),
    .I1(CHOICE2486),
    .O(CHOICE2488)
  );
  defparam \XLXI_4/m1_next_state<0>38_SW1 .INIT = 16'hFAF2;
  LUT4_L \XLXI_4/m1_next_state<0>38_SW1  (
    .I0(\XLXI_4/m1_state [2]),
    .I1(\XLXI_4/ps2_clk_s ),
    .I2(\XLXI_4/m1_state [3]),
    .I3(CHOICE2325),
    .LO(N2360)
  );
  defparam \XLXI_4/ascii<5>172_SW2 .INIT = 16'hFD75;
  LUT4 \XLXI_4/ascii<5>172_SW2  (
    .I0(\XLXI_4/q [3]),
    .I1(\XLXI_4/q [2]),
    .I2(N2479),
    .I3(CHOICE2208),
    .O(N2366)
  );
  defparam \XLXI_4/ascii<5>45 .INIT = 16'hFD55;
  LUT4_L \XLXI_4/ascii<5>45  (
    .I0(\XLXI_4/q_7_3 ),
    .I1(\XLXI_4/right_shift_key ),
    .I2(\XLXI_4/left_shift_key ),
    .I3(\XLXI_4/q_5_4 ),
    .LO(CHOICE2180)
  );
  defparam \XLXI_3/Ker5_SW0 .INIT = 16'hFFFE;
  LUT4_D \XLXI_3/Ker5_SW0  (
    .I0(\XLXI_3/count [2]),
    .I1(\XLXI_3/count [3]),
    .I2(\XLXI_3/count [0]),
    .I3(\XLXI_3/count [1]),
    .LO(N2499),
    .O(N1527)
  );
  defparam \XLXI_4/ascii<4>381_SW0 .INIT = 16'hBBCF;
  LUT4_L \XLXI_4/ascii<4>381_SW0  (
    .I0(\XLXI_4/q_4_5 ),
    .I1(\XLXI_4/q_6_5 ),
    .I2(\XLXI_4/left_shift_key ),
    .I3(\XLXI_4/q_5_4 ),
    .LO(N2398)
  );
  defparam \XLXI_4/m1_next_state<3>95 .INIT = 4'h2;
  LUT2 \XLXI_4/m1_next_state<3>95  (
    .I0(\XLXI_4/m1_state [0]),
    .I1(\XLXI_4/m1_state [3]),
    .O(CHOICE2295)
  );
  defparam \XLXI_4/ascii<4>252_SW0 .INIT = 16'h5702;
  LUT4 \XLXI_4/ascii<4>252_SW0  (
    .I0(\XLXI_4/q [1]),
    .I1(CHOICE2401),
    .I2(CHOICE2394),
    .I3(N2379),
    .O(N2407)
  );
  defparam \XLXI_4/ascii<0>373 .INIT = 8'h90;
  LUT3 \XLXI_4/ascii<0>373  (
    .I0(\XLXI_4/q [5]),
    .I1(\XLXI_4/q [7]),
    .I2(CHOICE2649),
    .O(CHOICE2650)
  );
  defparam \XLXI_3/_n00255 .INIT = 16'hFFF8;
  LUT4 \XLXI_3/_n00255  (
    .I0(\XLXI_3/state_FFd2 ),
    .I1(\XLXI_3/data_in_buf [4]),
    .I2(\XLXI_3/state_FFd6 ),
    .I3(\XLXI_3/state_FFd7 ),
    .O(CHOICE2264)
  );
  defparam \XLXI_4/ascii<6>163 .INIT = 8'h02;
  LUT3 \XLXI_4/ascii<6>163  (
    .I0(\XLXI_4/q_7_3 ),
    .I1(\XLXI_4/q_2_3 ),
    .I2(\XLXI_4/q_6_4 ),
    .O(CHOICE2514)
  );
  defparam \XLXI_4/ascii<6>307_SW1 .INIT = 16'h77F3;
  LUT4_L \XLXI_4/ascii<6>307_SW1  (
    .I0(\XLXI_4/q_1_4 ),
    .I1(\XLXI_4/q_2_3 ),
    .I2(\XLXI_4/q_5_5 ),
    .I3(\XLXI_4/q_4_4 ),
    .LO(N2448)
  );
  defparam Ker13_SW1.INIT = 16'h32FE;
  LUT4 Ker13_SW1 (
    .I0(\XLXI_4/q [7]),
    .I1(\XLXI_4/q [6]),
    .I2(\XLXI_4/q [4]),
    .I3(CHOICE2021),
    .O(N2293)
  );
  defparam \XLXI_4/m1_next_state<3>100 .INIT = 16'hB010;
  LUT4_L \XLXI_4/m1_next_state<3>100  (
    .I0(\XLXI_4/m1_state [1]),
    .I1(\XLXI_4/ps2_clk_s ),
    .I2(CHOICE2295),
    .I3(\XLXI_4/timer_60usec_done ),
    .LO(CHOICE2296)
  );
  defparam \XLXI_3/_n00258_SW1 .INIT = 16'h8000;
  LUT4_L \XLXI_3/_n00258_SW1  (
    .I0(\XLXI_3/count [4]),
    .I1(\XLXI_3/state_FFd3 ),
    .I2(N2427),
    .I3(CHOICE2359),
    .LO(N2425)
  );
  defparam \XLXI_4/ascii<0>368 .INIT = 16'h0020;
  LUT4_L \XLXI_4/ascii<0>368  (
    .I0(\XLXI_4/q_1_3 ),
    .I1(\XLXI_4/q_4_2 ),
    .I2(\XLXI_4/q_6_2 ),
    .I3(\XLXI_4/q_2_2 ),
    .LO(CHOICE2649)
  );
  defparam \XLXI_4/m1_next_state<0>124 .INIT = 8'h02;
  LUT3 \XLXI_4/m1_next_state<0>124  (
    .I0(\XLXI_4/m1_state [0]),
    .I1(\XLXI_4/m1_state [3]),
    .I2(\XLXI_4/m1_state [2]),
    .O(CHOICE2342)
  );
  defparam \XLXI_4/_n0141_44 .INIT = 16'h0400;
  LUT4_L \XLXI_4/_n0141_44  (
    .I0(\XLXI_4/q [6]),
    .I1(\XLXI_4/q [4]),
    .I2(N2460),
    .I3(N120),
    .LO(\XLXI_4/_n0141 )
  );
  defparam \XLXI_3/_n002513 .INIT = 16'hFFEC;
  LUT4_L \XLXI_3/_n002513  (
    .I0(\XLXI_3/data [4]),
    .I1(CHOICE2264),
    .I2(\XLXI_3/N6 ),
    .I3(N2425),
    .LO(\XLXI_3/_n0025 )
  );
  defparam \XLXI_4/ascii<2>188 .INIT = 16'hCC08;
  LUT4 \XLXI_4/ascii<2>188  (
    .I0(\XLXI_4/q [1]),
    .I1(\XLXI_4/q [7]),
    .I2(\XLXI_4/rx_shift_key_on ),
    .I3(CHOICE2062),
    .O(CHOICE2064)
  );
  defparam \XLXI_4/ascii<4>381_SW1 .INIT = 8'hBC;
  LUT3 \XLXI_4/ascii<4>381_SW1  (
    .I0(\XLXI_4/q_4_5 ),
    .I1(\XLXI_4/q_6_5 ),
    .I2(\XLXI_4/q_5_4 ),
    .O(N2399)
  );
  defparam \XLXI_4/ascii<4>252 .INIT = 16'hF2F3;
  LUT4_L \XLXI_4/ascii<4>252  (
    .I0(CHOICE2387),
    .I1(\XLXI_4/q [2]),
    .I2(CHOICE2429),
    .I3(N2407),
    .LO(CHOICE2430)
  );
  defparam \XLXI_4/rx_shifting_done1 .INIT = 16'h2000;
  LUT4_D \XLXI_4/rx_shifting_done1  (
    .I0(\XLXI_4/bit_count [1]),
    .I1(\XLXI_4/bit_count [2]),
    .I2(\XLXI_4/bit_count [0]),
    .I3(\XLXI_4/bit_count [3]),
    .LO(N2500),
    .O(\XLXI_4/rx_shifting_done )
  );
  FDRE \XLXI_4/q_1_1_45  (
    .D(\XLXI_4/q [2]),
    .R(CHOICE1937),
    .CE(\XLXI_4/_n0004 ),
    .C(\XLXI_1/clk ),
    .Q(\XLXI_4/q_1_1 )
  );
  defparam \XLXI_4/ascii<4>237_SW1 .INIT = 8'hBD;
  LUT3 \XLXI_4/ascii<4>237_SW1  (
    .I0(\XLXI_4/q_4_5 ),
    .I1(\XLXI_4/q_6_2 ),
    .I2(\XLXI_4/q_5_4 ),
    .O(N2382)
  );
  defparam \XLXI_4/ascii<0>153 .INIT = 8'h02;
  LUT3 \XLXI_4/ascii<0>153  (
    .I0(\XLXI_4/q_6_2 ),
    .I1(\XLXI_4/q_7_2 ),
    .I2(\XLXI_4/q_5_4 ),
    .O(CHOICE2598)
  );
  defparam \XLXI_4/ascii<0>47_SW1 .INIT = 16'hE8FD;
  LUT4_L \XLXI_4/ascii<0>47_SW1  (
    .I0(\XLXI_4/q_4_3 ),
    .I1(\XLXI_4/q_6_5 ),
    .I2(\XLXI_4/q_7_2 ),
    .I3(\XLXI_4/q_5_4 ),
    .LO(N2385)
  );
  defparam \XLXI_4/m1_next_state<3>68_SW1 .INIT = 16'hAD8D;
  LUT4_L \XLXI_4/m1_next_state<3>68_SW1  (
    .I0(\XLXI_4/m1_state [3]),
    .I1(\XLXI_4/m1_state [1]),
    .I2(\XLXI_4/ps2_clk_s ),
    .I3(\XLXI_4/ps2_data_s ),
    .LO(N2335)
  );
  defparam \XLXI_4/ascii<4>342_SW0 .INIT = 16'hA7FF;
  LUT4 \XLXI_4/ascii<4>342_SW0  (
    .I0(\XLXI_4/q_5_5 ),
    .I1(\XLXI_4/q_4_5 ),
    .I2(\XLXI_4/q_6_6 ),
    .I3(\XLXI_4/q_2_2 ),
    .O(N2395)
  );
  defparam \XLXI_4/ascii<6>307 .INIT = 16'h02CE;
  LUT4 \XLXI_4/ascii<6>307  (
    .I0(\XLXI_4/q [7]),
    .I1(\XLXI_4/q [6]),
    .I2(N2448),
    .I3(N2447),
    .O(CHOICE2551)
  );
  defparam \XLXI_4/ascii<4>45 .INIT = 16'h0060;
  LUT4 \XLXI_4/ascii<4>45  (
    .I0(\XLXI_4/q [7]),
    .I1(\XLXI_4/q [6]),
    .I2(\XLXI_4/q [4]),
    .I3(\XLXI_4/q [5]),
    .O(CHOICE2387)
  );
  defparam \XLXI_4/ascii<4>19_SW0 .INIT = 16'hE7F7;
  LUT4 \XLXI_4/ascii<4>19_SW0  (
    .I0(\XLXI_4/q_6_6 ),
    .I1(\XLXI_4/q_4_6 ),
    .I2(\XLXI_4/q_7_2 ),
    .I3(\XLXI_4/q_5_4 ),
    .O(N2379)
  );
  defparam \XLXI_4/m1_next_state<0>134 .INIT = 16'hFF2A;
  LUT4_L \XLXI_4/m1_next_state<0>134  (
    .I0(CHOICE2342),
    .I1(\XLXI_4/m1_state [1]),
    .I2(\XLXI_4/timer_60usec_done ),
    .I3(CHOICE2335),
    .LO(CHOICE2344)
  );
  defparam \XLXI_4/ascii<4>285 .INIT = 16'h0800;
  LUT4 \XLXI_4/ascii<4>285  (
    .I0(\XLXI_4/q_7_3 ),
    .I1(\XLXI_4/q_2_2 ),
    .I2(\XLXI_4/q_5_4 ),
    .I3(\XLXI_4/q_4_6 ),
    .O(CHOICE2435)
  );
  defparam \XLXI_4/_n0141_SW0 .INIT = 4'hB;
  LUT2 \XLXI_4/_n0141_SW0  (
    .I0(\XLXI_4/q [8]),
    .I1(\XLXI_4/q [1]),
    .O(N2460)
  );
  defparam \XLXI_4/ascii<0>250 .INIT = 16'h0010;
  LUT4 \XLXI_4/ascii<0>250  (
    .I0(\XLXI_4/q [6]),
    .I1(\XLXI_4/q [5]),
    .I2(\XLXI_4/q [7]),
    .I3(N2393),
    .O(CHOICE2617)
  );
  defparam \XLXI_4/m1_next_state<0>54 .INIT = 8'hE2;
  LUT3 \XLXI_4/m1_next_state<0>54  (
    .I0(\XLXI_4/m1_state_3_1 ),
    .I1(\XLXI_4/m1_state [0]),
    .I2(\XLXI_4/m1_state [1]),
    .O(CHOICE2325)
  );
  defparam \XLXI_3/Ker111_SW2 .INIT = 16'hF888;
  LUT4 \XLXI_3/Ker111_SW2  (
    .I0(\XLXI_3/data_in_buf [1]),
    .I1(\XLXI_3/state_FFd2 ),
    .I2(N2458),
    .I3(\XLXI_3/_n0035 ),
    .O(N2304)
  );
  defparam \XLXI_4/m1_next_state<2>1071 .INIT = 8'h20;
  LUT3_D \XLXI_4/m1_next_state<2>1071  (
    .I0(\XLXI_4/m1_state [3]),
    .I1(\XLXI_4/m1_state [2]),
    .I2(CHOICE1835),
    .LO(N2501),
    .O(N2278)
  );
  defparam \XLXI_3/Ker111_SW2_SW0 .INIT = 4'h8;
  LUT2_L \XLXI_3/Ker111_SW2_SW0  (
    .I0(\XLXI_3/count [1]),
    .I1(\XLXI_3/state_FFd3 ),
    .LO(N2458)
  );
  defparam \XLXI_4/ascii<6>180 .INIT = 8'h10;
  LUT3 \XLXI_4/ascii<6>180  (
    .I0(\XLXI_4/q_1_2 ),
    .I1(\XLXI_4/q_5_3 ),
    .I2(\XLXI_4/q_2_1 ),
    .O(CHOICE2519)
  );
  defparam \XLXI_3/Ker111_SW5 .INIT = 16'hF888;
  LUT4 \XLXI_3/Ker111_SW5  (
    .I0(\XLXI_3/count [2]),
    .I1(\XLXI_3/state_FFd3 ),
    .I2(\XLXI_3/state_FFd2 ),
    .I3(\XLXI_3/data_in_buf [2]),
    .O(N2308)
  );
  defparam \XLXI_4/ascii<0>142 .INIT = 16'h0010;
  LUT4_L \XLXI_4/ascii<0>142  (
    .I0(\XLXI_4/right_shift_key ),
    .I1(\XLXI_4/q_6_5 ),
    .I2(\XLXI_4/q_7_3 ),
    .I3(N2326),
    .LO(CHOICE2594)
  );
  defparam \XLXI_4/ascii<6>88 .INIT = 8'h20;
  LUT3 \XLXI_4/ascii<6>88  (
    .I0(\XLXI_4/q_4_2 ),
    .I1(\XLXI_4/q_6_2 ),
    .I2(N2350),
    .O(CHOICE2499)
  );
  defparam \XLXI_4/ascii<0>74 .INIT = 16'h3614;
  LUT4_L \XLXI_4/ascii<0>74  (
    .I0(\XLXI_4/q_4_2 ),
    .I1(\XLXI_4/q_7_2 ),
    .I2(\XLXI_4/q_6_2 ),
    .I3(\XLXI_4/q_5_4 ),
    .LO(CHOICE2580)
  );
  defparam \XLXI_3/_n002314 .INIT = 16'h3032;
  LUT4_L \XLXI_3/_n002314  (
    .I0(\XLXI_3/data [6]),
    .I1(\XLXI_3/_n0035 ),
    .I2(\XLXI_3/_n0036 ),
    .I3(CHOICE2359),
    .LO(CHOICE2364)
  );
  defparam \XLXI_4/ascii<0>250_SW0 .INIT = 8'hBF;
  LUT3_L \XLXI_4/ascii<0>250_SW0  (
    .I0(\XLXI_4/q_1_4 ),
    .I1(\XLXI_4/q_2_3 ),
    .I2(\XLXI_4/q_4_6 ),
    .LO(N2393)
  );
  defparam \XLXI_4/ascii<0>337 .INIT = 16'hCC40;
  LUT4_L \XLXI_4/ascii<0>337  (
    .I0(\XLXI_4/q [1]),
    .I1(\XLXI_4/q [2]),
    .I2(CHOICE2627),
    .I3(CHOICE2637),
    .LO(CHOICE2639)
  );
  defparam \XLXI_4/ascii<4>421 .INIT = 16'hFF54;
  LUT4 \XLXI_4/ascii<4>421  (
    .I0(\XLXI_4/q [3]),
    .I1(CHOICE2454),
    .I2(CHOICE2466),
    .I3(CHOICE2440),
    .O(CHOICE2470)
  );
  defparam \XLXI_4/ascii<6>46 .INIT = 16'h7E8A;
  LUT4_L \XLXI_4/ascii<6>46  (
    .I0(\XLXI_4/q_6_1 ),
    .I1(\XLXI_4/q_4_1 ),
    .I2(\XLXI_4/q_1_1 ),
    .I3(\XLXI_4/q_5_2 ),
    .LO(CHOICE2486)
  );
  defparam \XLXI_4/ascii<3>265_SW0 .INIT = 16'h0F04;
  LUT4 \XLXI_4/ascii<3>265_SW0  (
    .I0(CHOICE1994),
    .I1(N2405),
    .I2(CHOICE2009),
    .I3(\XLXI_4/q [5]),
    .O(N2287)
  );
  OBUF data_2_OBUF (
    .I(\XLXI_3/data [2]),
    .O(data[2])
  );
  defparam \XLXI_4/m1_next_state<0>155 .INIT = 16'h88A8;
  LUT4 \XLXI_4/m1_next_state<0>155  (
    .I0(\XLXI_4/m1_state [1]),
    .I1(\XLXI_4/m1_state [0]),
    .I2(\XLXI_4/timer_5usec_done ),
    .I3(\XLXI_4/ps2_clk_s ),
    .O(CHOICE2348)
  );
  defparam \XLXI_4/m1_next_state<3>155 .INIT = 16'h0010;
  LUT4_L \XLXI_4/m1_next_state<3>155  (
    .I0(\XLXI_4/m1_state [3]),
    .I1(\XLXI_4/m1_state [0]),
    .I2(\XLXI_4/m1_state [2]),
    .I3(\XLXI_4/ps2_clk_s ),
    .LO(CHOICE2307)
  );
  defparam \XLXI_4/m1_next_state<0>90 .INIT = 4'h4;
  LUT2 \XLXI_4/m1_next_state<0>90  (
    .I0(\XLXI_4/m1_state_2_2 ),
    .I1(\XLXI_4/ps2_clk_s ),
    .O(CHOICE2329)
  );
  defparam \XLXI_3/_n00258_SW0_SW0 .INIT = 16'hFFFE;
  LUT4 \XLXI_3/_n00258_SW0_SW0  (
    .I0(\XLXI_3/count [1]),
    .I1(\XLXI_3/_n0033 ),
    .I2(N1283),
    .I3(\XLXI_3/count [5]),
    .O(N2427)
  );
  defparam \XLXI_4/ascii<4>378 .INIT = 8'h20;
  LUT3 \XLXI_4/ascii<4>378  (
    .I0(\XLXI_4/q_1_4 ),
    .I1(\XLXI_4/q_2_3 ),
    .I2(\XLXI_4/q_7_2 ),
    .O(CHOICE2465)
  );
  defparam \XLXI_4/ascii<0>314 .INIT = 4'h1;
  LUT2 \XLXI_4/ascii<0>314  (
    .I0(\XLXI_4/q_6_5 ),
    .I1(N2348),
    .O(CHOICE2637)
  );
  defparam \XLXI_4/ascii<6>88_SW0 .INIT = 16'hEEE2;
  LUT4_L \XLXI_4/ascii<6>88_SW0  (
    .I0(\XLXI_4/q_2_1 ),
    .I1(\XLXI_4/q_5_1 ),
    .I2(\XLXI_4/left_shift_key ),
    .I3(\XLXI_4/right_shift_key ),
    .LO(N2350)
  );
  defparam \XLXI_4/ascii<5>40 .INIT = 16'h1113;
  LUT4 \XLXI_4/ascii<5>40  (
    .I0(\XLXI_4/q [3]),
    .I1(\XLXI_4/q [2]),
    .I2(\XLXI_4/q [5]),
    .I3(\XLXI_4/rx_shift_key_on ),
    .O(CHOICE2177)
  );
  defparam \XLXI_4/ascii<0>142_SW0 .INIT = 8'hFE;
  LUT3 \XLXI_4/ascii<0>142_SW0  (
    .I0(\XLXI_4/q_1_1 ),
    .I1(\XLXI_4/q_5_1 ),
    .I2(\XLXI_4/left_shift_key ),
    .O(N2326)
  );
  OBUF data_0_OBUF (
    .I(\XLXI_3/data [0]),
    .O(data[0])
  );
  defparam \XLXI_4/ascii<6>121 .INIT = 16'hFF32;
  LUT4 \XLXI_4/ascii<6>121  (
    .I0(CHOICE2499),
    .I1(\XLXI_4/q [1]),
    .I2(CHOICE2492),
    .I3(CHOICE2488),
    .O(CHOICE2503)
  );
  OBUF data_3_OBUF (
    .I(\XLXI_3/data [3]),
    .O(data[3])
  );
  OBUF data_1_OBUF (
    .I(\XLXI_3/data [1]),
    .O(data[1])
  );
  defparam \XLXI_4/m1_next_state<0>94 .INIT = 4'h2;
  LUT2_L \XLXI_4/m1_next_state<0>94  (
    .I0(\XLXI_4/m1_state [1]),
    .I1(\XLXI_4/m1_state [0]),
    .LO(CHOICE2332)
  );
  defparam \XLXI_4/m1_next_state<0>186_SW0 .INIT = 16'hFAF8;
  LUT4 \XLXI_4/m1_next_state<0>186_SW0  (
    .I0(\XLXI_4/m1_state [2]),
    .I1(CHOICE2325),
    .I2(N2456),
    .I3(CHOICE2321),
    .O(N2319)
  );
  defparam \XLXI_4/m1_next_state<0>186_SW0_SW0 .INIT = 4'h8;
  LUT2 \XLXI_4/m1_next_state<0>186_SW0_SW0  (
    .I0(\XLXI_4/m1_state [3]),
    .I1(CHOICE2353),
    .O(N2456)
  );
  defparam \XLXI_4/ascii<0>47 .INIT = 16'h220A;
  LUT4 \XLXI_4/ascii<0>47  (
    .I0(\XLXI_4/q [1]),
    .I1(N2385),
    .I2(N2384),
    .I3(\XLXI_4/rx_shift_key_on ),
    .O(CHOICE2572)
  );
  defparam \XLXI_4/ascii<2>180 .INIT = 16'hFF08;
  LUT4_L \XLXI_4/ascii<2>180  (
    .I0(\XLXI_4/q_3_1 ),
    .I1(\XLXI_4/q_2_2 ),
    .I2(\XLXI_4/q_6_6 ),
    .I3(\XLXI_4/q_4_6 ),
    .LO(CHOICE2062)
  );
  defparam \XLXI_4/m1_next_state<0>2 .INIT = 4'h4;
  LUT2 \XLXI_4/m1_next_state<0>2  (
    .I0(\XLXI_4/ps2_data_s ),
    .I1(\XLXI_4/m1_state [1]),
    .O(CHOICE2311)
  );
  defparam \XLXI_4/timer_60usec_count_11_rt_46 .INIT = 4'h2;
  LUT1 \XLXI_4/timer_60usec_count_11_rt_46  (
    .I0(\XLXI_4/timer_60usec_count [11]),
    .O(\XLXI_4/timer_60usec_count_11_rt )
  );
  defparam \XLXI_4/ascii<4>342 .INIT = 16'h01AB;
  LUT4 \XLXI_4/ascii<4>342  (
    .I0(\XLXI_4/q [1]),
    .I1(\XLXI_4/q [7]),
    .I2(N2395),
    .I3(N2396),
    .O(CHOICE2454)
  );
  defparam \XLXI_4/ascii<0>314_SW0 .INIT = 16'h3DFD;
  LUT4_L \XLXI_4/ascii<0>314_SW0  (
    .I0(\XLXI_4/q_7_1 ),
    .I1(\XLXI_4/q_5_1 ),
    .I2(\XLXI_4/q_4_1 ),
    .I3(\XLXI_4/q_1_1 ),
    .LO(N2348)
  );
  defparam \XLXI_4/ascii<0>207 .INIT = 16'hFF32;
  LUT4_L \XLXI_4/ascii<0>207  (
    .I0(CHOICE2583),
    .I1(\XLXI_4/q [2]),
    .I2(CHOICE2572),
    .I3(CHOICE2607),
    .LO(CHOICE2608)
  );
  MUXF5 \XLXI_4/ps2_data_hi_z111  (
    .I0(N2283),
    .I1(N2284),
    .S(\XLXI_4/m1_state [0]),
    .O(\XLXI_4/ps2_data_hi_z )
  );
  defparam \XLXI_4/ascii<1>74_SW1 .INIT = 16'hA3B3;
  LUT4 \XLXI_4/ascii<1>74_SW1  (
    .I0(\XLXI_4/q_7_3 ),
    .I1(\XLXI_4/q_2_2 ),
    .I2(\XLXI_4/q_3_1 ),
    .I3(\XLXI_4/q_4_6 ),
    .O(N2410)
  );
  defparam \XLXI_4/ascii<6>196 .INIT = 16'h90DC;
  LUT4 \XLXI_4/ascii<6>196  (
    .I0(\XLXI_4/q [1]),
    .I1(\XLXI_4/q [4]),
    .I2(CHOICE2514),
    .I3(N2328),
    .O(CHOICE2524)
  );
  defparam \XLXI_4/ascii<6>72 .INIT = 16'h2000;
  LUT4_L \XLXI_4/ascii<6>72  (
    .I0(\XLXI_4/q_6_5 ),
    .I1(\XLXI_4/q_4_5 ),
    .I2(\XLXI_4/rx_shift_key_on ),
    .I3(\XLXI_4/q_5_5 ),
    .LO(CHOICE2492)
  );
  defparam \XLXI_4/ascii<0>188 .INIT = 16'hFAF8;
  LUT4 \XLXI_4/ascii<0>188  (
    .I0(CHOICE2605),
    .I1(CHOICE2598),
    .I2(CHOICE2594),
    .I3(CHOICE2602),
    .O(CHOICE2607)
  );
  defparam \XLXI_4/m1_next_state<0>164 .INIT = 16'h0008;
  LUT4_L \XLXI_4/m1_next_state<0>164  (
    .I0(\XLXI_4/ps2_data_s ),
    .I1(\XLXI_4/ps2_clk_s ),
    .I2(\XLXI_4/m1_state [0]),
    .I3(\XLXI_4/m1_state [1]),
    .LO(CHOICE2353)
  );
  defparam \XLXI_4/ps2_data_hi_z111_F .INIT = 16'hF2EF;
  LUT4 \XLXI_4/ps2_data_hi_z111_F  (
    .I0(\XLXI_4/q [0]),
    .I1(\XLXI_4/m1_state [3]),
    .I2(\XLXI_4/m1_state [2]),
    .I3(\XLXI_4/m1_state [1]),
    .O(N2283)
  );
  defparam \XLXI_3/_n0024_SW0_G .INIT = 4'h8;
  LUT2 \XLXI_3/_n0024_SW0_G  (
    .I0(\XLXI_3/state_FFd2 ),
    .I1(\XLXI_3/data_in_buf [5]),
    .O(N2474)
  );
  BUFGP clk_BUFGP_47 (
    .I(clk),
    .O(clk_BUFGP)
  );
  IBUF rst_IBUF_48 (
    .I(rst),
    .O(rst_IBUF)
  );
  OBUF lcd_e_OBUF (
    .I(\XLXI_3/lcd_e ),
    .O(lcd_e)
  );
  OBUF lcd_rs_OBUF (
    .I(\XLXI_3/lcd_rs ),
    .O(lcd_rs)
  );
  OBUF lcd_rw_OBUF (
    .I(ps2ck_IOBUF),
    .O(lcd_rw)
  );
  OBUF data_7_OBUF (
    .I(\XLXI_3/data [7]),
    .O(data[7])
  );
  OBUF data_6_OBUF (
    .I(\XLXI_3/data [6]),
    .O(data[6])
  );
  OBUF data_5_OBUF (
    .I(\XLXI_3/data [5]),
    .O(data[5])
  );
  OBUF data_4_OBUF (
    .I(\XLXI_3/data [4]),
    .O(data[4])
  );
  defparam \XLXI_4/timer_60usec_count_9_rt_49 .INIT = 4'h2;
  LUT1 \XLXI_4/timer_60usec_count_9_rt_49  (
    .I0(\XLXI_4/timer_60usec_count [9]),
    .O(\XLXI_4/timer_60usec_count_9_rt )
  );
  defparam \XLXI_4/timer_60usec_count_3_rt_50 .INIT = 4'h2;
  LUT1 \XLXI_4/timer_60usec_count_3_rt_50  (
    .I0(\XLXI_4/timer_60usec_count [3]),
    .O(\XLXI_4/timer_60usec_count_3_rt )
  );
  defparam \XLXI_4/timer_5usec_count_2_rt_51 .INIT = 4'h2;
  LUT1 \XLXI_4/timer_5usec_count_2_rt_51  (
    .I0(\XLXI_4/timer_5usec_count [2]),
    .O(\XLXI_4/timer_5usec_count_2_rt )
  );
  defparam \XLXI_4/timer_5usec_count_3_rt_52 .INIT = 4'h2;
  LUT1 \XLXI_4/timer_5usec_count_3_rt_52  (
    .I0(\XLXI_4/timer_5usec_count [3]),
    .O(\XLXI_4/timer_5usec_count_3_rt )
  );
  defparam \XLXI_4/timer_60usec_count_5_rt_53 .INIT = 4'h2;
  LUT1 \XLXI_4/timer_60usec_count_5_rt_53  (
    .I0(\XLXI_4/timer_60usec_count [5]),
    .O(\XLXI_4/timer_60usec_count_5_rt )
  );
  defparam \XLXI_4/timer_60usec_count_7_rt_54 .INIT = 4'h2;
  LUT1 \XLXI_4/timer_60usec_count_7_rt_54  (
    .I0(\XLXI_4/timer_60usec_count [7]),
    .O(\XLXI_4/timer_60usec_count_7_rt )
  );
  defparam \XLXI_4/timer_60usec_count_6_rt_55 .INIT = 4'h2;
  LUT1 \XLXI_4/timer_60usec_count_6_rt_55  (
    .I0(\XLXI_4/timer_60usec_count [6]),
    .O(\XLXI_4/timer_60usec_count_6_rt )
  );
  defparam \XLXI_4/timer_60usec_count_4_rt_56 .INIT = 4'h2;
  LUT1 \XLXI_4/timer_60usec_count_4_rt_56  (
    .I0(\XLXI_4/timer_60usec_count [4]),
    .O(\XLXI_4/timer_60usec_count_4_rt )
  );
  defparam \XLXI_4/timer_60usec_count_8_rt_57 .INIT = 4'h2;
  LUT1 \XLXI_4/timer_60usec_count_8_rt_57  (
    .I0(\XLXI_4/timer_60usec_count [8]),
    .O(\XLXI_4/timer_60usec_count_8_rt )
  );
  defparam \XLXI_1/count_1_rt_58 .INIT = 4'h2;
  LUT1 \XLXI_1/count_1_rt_58  (
    .I0(\XLXI_1/count [1]),
    .O(\XLXI_1/count_1_rt )
  );
  defparam \XLXI_1/count_2_rt_59 .INIT = 4'h2;
  LUT1 \XLXI_1/count_2_rt_59  (
    .I0(\XLXI_1/count [2]),
    .O(\XLXI_1/count_2_rt )
  );
  defparam \XLXI_4/timer_5usec_count_4_rt_60 .INIT = 4'h2;
  LUT1 \XLXI_4/timer_5usec_count_4_rt_60  (
    .I0(\XLXI_4/timer_5usec_count [4]),
    .O(\XLXI_4/timer_5usec_count_4_rt )
  );
  defparam \XLXI_4/timer_60usec_count_1_rt_61 .INIT = 4'h2;
  LUT1 \XLXI_4/timer_60usec_count_1_rt_61  (
    .I0(\XLXI_4/timer_60usec_count [1]),
    .O(\XLXI_4/timer_60usec_count_1_rt )
  );
  defparam \XLXI_1/count_3_rt_62 .INIT = 4'h2;
  LUT1 \XLXI_1/count_3_rt_62  (
    .I0(\XLXI_1/count [3]),
    .O(\XLXI_1/count_3_rt )
  );
  defparam \XLXI_1/count_4_rt_63 .INIT = 4'h2;
  LUT1 \XLXI_1/count_4_rt_63  (
    .I0(\XLXI_1/count [4]),
    .O(\XLXI_1/count_4_rt )
  );
  defparam \XLXI_4/timer_5usec_count_5_rt_64 .INIT = 4'h2;
  LUT1 \XLXI_4/timer_5usec_count_5_rt_64  (
    .I0(\XLXI_4/timer_5usec_count [5]),
    .O(\XLXI_4/timer_5usec_count_5_rt )
  );
  defparam \XLXI_1/count_5_rt_65 .INIT = 4'h2;
  LUT1 \XLXI_1/count_5_rt_65  (
    .I0(\XLXI_1/count [5]),
    .O(\XLXI_1/count_5_rt )
  );
  defparam \XLXI_4/timer_60usec_count_10_rt_66 .INIT = 4'h2;
  LUT1 \XLXI_4/timer_60usec_count_10_rt_66  (
    .I0(\XLXI_4/timer_60usec_count [10]),
    .O(\XLXI_4/timer_60usec_count_10_rt )
  );
  defparam \XLXI_4/timer_5usec_count_6_rt_67 .INIT = 4'h2;
  LUT1 \XLXI_4/timer_5usec_count_6_rt_67  (
    .I0(\XLXI_4/timer_5usec_count [6]),
    .O(\XLXI_4/timer_5usec_count_6_rt )
  );
  defparam \XLXI_4/timer_60usec_count_2_rt_68 .INIT = 4'h2;
  LUT1 \XLXI_4/timer_60usec_count_2_rt_68  (
    .I0(\XLXI_4/timer_60usec_count [2]),
    .O(\XLXI_4/timer_60usec_count_2_rt )
  );
  defparam \XLXI_4/timer_5usec_count_1_rt_69 .INIT = 4'h2;
  LUT1 \XLXI_4/timer_5usec_count_1_rt_69  (
    .I0(\XLXI_4/timer_5usec_count [1]),
    .O(\XLXI_4/timer_5usec_count_1_rt )
  );
  defparam \XLXI_3/clkcnt_13_rt_70 .INIT = 4'h2;
  LUT1 \XLXI_3/clkcnt_13_rt_70  (
    .I0(\XLXI_3/clkcnt [13]),
    .O(\XLXI_3/clkcnt_13_rt )
  );
  defparam \XLXI_3/count_1_rt_71 .INIT = 4'h2;
  LUT1_L \XLXI_3/count_1_rt_71  (
    .I0(\XLXI_3/count [1]),
    .LO(\XLXI_3/count_1_rt )
  );
  defparam \XLXI_3/count_2_rt_72 .INIT = 4'h2;
  LUT1_L \XLXI_3/count_2_rt_72  (
    .I0(\XLXI_3/count [2]),
    .LO(\XLXI_3/count_2_rt )
  );
  defparam \XLXI_3/count_3_rt_73 .INIT = 4'h2;
  LUT1_L \XLXI_3/count_3_rt_73  (
    .I0(\XLXI_3/count [3]),
    .LO(\XLXI_3/count_3_rt )
  );
  defparam \XLXI_3/count_4_rt_74 .INIT = 4'h2;
  LUT1_L \XLXI_3/count_4_rt_74  (
    .I0(\XLXI_3/count [4]),
    .LO(\XLXI_3/count_4_rt )
  );
  defparam \XLXI_3/count_5_rt_75 .INIT = 4'h2;
  LUT1_L \XLXI_3/count_5_rt_75  (
    .I0(\XLXI_3/count [5]),
    .LO(\XLXI_3/count_5_rt )
  );
  defparam \XLXI_3/clkcnt_14_rt_76 .INIT = 4'h2;
  LUT1 \XLXI_3/clkcnt_14_rt_76  (
    .I0(\XLXI_3/clkcnt [14]),
    .O(\XLXI_3/clkcnt_14_rt )
  );
  defparam \XLXI_3/clkcnt_1_rt_77 .INIT = 4'h2;
  LUT1 \XLXI_3/clkcnt_1_rt_77  (
    .I0(\XLXI_3/clkcnt [1]),
    .O(\XLXI_3/clkcnt_1_rt )
  );
  defparam \XLXI_3/clkcnt_2_rt_78 .INIT = 4'h2;
  LUT1 \XLXI_3/clkcnt_2_rt_78  (
    .I0(\XLXI_3/clkcnt [2]),
    .O(\XLXI_3/clkcnt_2_rt )
  );
  defparam \XLXI_3/clkcnt_3_rt_79 .INIT = 4'h2;
  LUT1 \XLXI_3/clkcnt_3_rt_79  (
    .I0(\XLXI_3/clkcnt [3]),
    .O(\XLXI_3/clkcnt_3_rt )
  );
  defparam \XLXI_3/clkcnt_4_rt_80 .INIT = 4'h2;
  LUT1 \XLXI_3/clkcnt_4_rt_80  (
    .I0(\XLXI_3/clkcnt [4]),
    .O(\XLXI_3/clkcnt_4_rt )
  );
  defparam \XLXI_3/clkcnt_5_rt_81 .INIT = 4'h2;
  LUT1 \XLXI_3/clkcnt_5_rt_81  (
    .I0(\XLXI_3/clkcnt [5]),
    .O(\XLXI_3/clkcnt_5_rt )
  );
  defparam \XLXI_3/clkcnt_6_rt_82 .INIT = 4'h2;
  LUT1 \XLXI_3/clkcnt_6_rt_82  (
    .I0(\XLXI_3/clkcnt [6]),
    .O(\XLXI_3/clkcnt_6_rt )
  );
  defparam \XLXI_3/clkcnt_7_rt_83 .INIT = 4'h2;
  LUT1 \XLXI_3/clkcnt_7_rt_83  (
    .I0(\XLXI_3/clkcnt [7]),
    .O(\XLXI_3/clkcnt_7_rt )
  );
  defparam \XLXI_3/clkcnt_8_rt_84 .INIT = 4'h2;
  LUT1 \XLXI_3/clkcnt_8_rt_84  (
    .I0(\XLXI_3/clkcnt [8]),
    .O(\XLXI_3/clkcnt_8_rt )
  );
  defparam \XLXI_3/clkcnt_9_rt_85 .INIT = 4'h2;
  LUT1 \XLXI_3/clkcnt_9_rt_85  (
    .I0(\XLXI_3/clkcnt [9]),
    .O(\XLXI_3/clkcnt_9_rt )
  );
  defparam \XLXI_3/clkcnt_10_rt_86 .INIT = 4'h2;
  LUT1 \XLXI_3/clkcnt_10_rt_86  (
    .I0(\XLXI_3/clkcnt [10]),
    .O(\XLXI_3/clkcnt_10_rt )
  );
  defparam \XLXI_3/clkcnt_11_rt_87 .INIT = 4'h2;
  LUT1 \XLXI_3/clkcnt_11_rt_87  (
    .I0(\XLXI_3/clkcnt [11]),
    .O(\XLXI_3/clkcnt_11_rt )
  );
  defparam \XLXI_3/clkcnt_12_rt_88 .INIT = 4'h2;
  LUT1 \XLXI_3/clkcnt_12_rt_88  (
    .I0(\XLXI_3/clkcnt [12]),
    .O(\XLXI_3/clkcnt_12_rt )
  );
  defparam \XLXI_4/timer_5usec_count_7_rt_89 .INIT = 4'h2;
  LUT1 \XLXI_4/timer_5usec_count_7_rt_89  (
    .I0(\XLXI_4/timer_5usec_count [7]),
    .O(\XLXI_4/timer_5usec_count_7_rt )
  );
  FDRE \XLXI_4/q_7_1_90  (
    .D(\XLXI_4/q [8]),
    .R(CHOICE1937),
    .CE(\XLXI_4/_n0004 ),
    .C(\XLXI_1/clk ),
    .Q(\XLXI_4/q_7_1 )
  );
  FDRS \XLXI_4/m1_state_1_1_91  (
    .D(N2277),
    .R(CHOICE1937),
    .S(CHOICE1913),
    .C(\XLXI_1/clk ),
    .Q(\XLXI_4/m1_state_1_1 )
  );
  FDRS \XLXI_4/m1_state_2_1_92  (
    .D(N2278),
    .R(CHOICE1937),
    .S(CHOICE1827),
    .C(\XLXI_1/clk ),
    .Q(\XLXI_4/m1_state_2_1 )
  );
  FDRE \XLXI_4/q_5_1_93  (
    .D(\XLXI_4/q [6]),
    .R(CHOICE1937),
    .CE(\XLXI_4/_n0004 ),
    .C(\XLXI_1/clk ),
    .Q(\XLXI_4/q_5_1 )
  );
  defparam \XLXI_4/ascii<0>277_G .INIT = 8'h20;
  LUT3_L \XLXI_4/ascii<0>277_G  (
    .I0(\XLXI_4/q_4_2 ),
    .I1(\XLXI_4/q_7_1 ),
    .I2(\XLXI_4/q_5_1 ),
    .LO(N2476)
  );
  FDRE \XLXI_4/q_2_1_94  (
    .D(\XLXI_4/q [3]),
    .R(CHOICE1937),
    .CE(\XLXI_4/_n0004 ),
    .C(\XLXI_1/clk ),
    .Q(\XLXI_4/q_2_1 )
  );
  defparam \XLXI_4/ascii<3>117_G .INIT = 16'hFFBA;
  LUT4_L \XLXI_4/ascii<3>117_G  (
    .I0(N127),
    .I1(\XLXI_4/q [3]),
    .I2(CHOICE1976),
    .I3(CHOICE1962),
    .LO(N2478)
  );
  FDRE \XLXI_4/q_5_2_95  (
    .D(\XLXI_4/q [6]),
    .R(CHOICE1937),
    .CE(\XLXI_4/_n0004 ),
    .C(\XLXI_1/clk ),
    .Q(\XLXI_4/q_5_2 )
  );
  FDRE \XLXI_4/q_1_2_96  (
    .D(\XLXI_4/q [2]),
    .R(CHOICE1937),
    .CE(\XLXI_4/_n0004 ),
    .C(\XLXI_1/clk ),
    .Q(\XLXI_4/q_1_2 )
  );
  FDRE \XLXI_4/q_7_2_97  (
    .D(\XLXI_4/q [8]),
    .R(CHOICE1937),
    .CE(\XLXI_4/_n0004 ),
    .C(\XLXI_1/clk ),
    .Q(\XLXI_4/q_7_2 )
  );
  FDRE \XLXI_4/q_5_3_98  (
    .D(\XLXI_4/q [6]),
    .R(CHOICE1937),
    .CE(\XLXI_4/_n0004 ),
    .C(\XLXI_1/clk ),
    .Q(\XLXI_4/q_5_3 )
  );
  FDRE \XLXI_4/q_1_3_99  (
    .D(\XLXI_4/q [2]),
    .R(CHOICE1937),
    .CE(\XLXI_4/_n0004 ),
    .C(\XLXI_1/clk ),
    .Q(\XLXI_4/q_1_3 )
  );
  FDRE \XLXI_4/q_7_3_100  (
    .D(\XLXI_4/q [8]),
    .R(CHOICE1937),
    .CE(\XLXI_4/_n0004 ),
    .C(\XLXI_1/clk ),
    .Q(\XLXI_4/q_7_3 )
  );
  FDRE \XLXI_4/q_4_2_101  (
    .D(\XLXI_4/q [5]),
    .R(CHOICE1937),
    .CE(\XLXI_4/_n0004 ),
    .C(\XLXI_1/clk ),
    .Q(\XLXI_4/q_4_2 )
  );
  FDRE \XLXI_4/q_2_2_102  (
    .D(\XLXI_4/q [3]),
    .R(CHOICE1937),
    .CE(\XLXI_4/_n0004 ),
    .C(\XLXI_1/clk ),
    .Q(\XLXI_4/q_2_2 )
  );
  FDRE \XLXI_4/q_6_2_103  (
    .D(\XLXI_4/q [7]),
    .R(CHOICE1937),
    .CE(\XLXI_4/_n0004 ),
    .C(\XLXI_1/clk ),
    .Q(\XLXI_4/q_62 )
  );
  FDRE \XLXI_4/q_3_1_104  (
    .D(\XLXI_4/q [4]),
    .R(CHOICE1937),
    .CE(\XLXI_4/_n0004 ),
    .C(\XLXI_1/clk ),
    .Q(\XLXI_4/q_3_1 )
  );
  FDRE \XLXI_4/q_5_4_105  (
    .D(\XLXI_4/q [6]),
    .R(CHOICE1937),
    .CE(\XLXI_4/_n0004 ),
    .C(\XLXI_1/clk ),
    .Q(\XLXI_4/q_5_4 )
  );
  FDRE \XLXI_4/q_6_3  (
    .D(\XLXI_4/q [7]),
    .R(CHOICE1937),
    .CE(\XLXI_4/_n0004 ),
    .C(\XLXI_1/clk ),
    .Q(\XLXI_4/q_6_2 )
  );
  FDRE \XLXI_4/q_1_4_106  (
    .D(\XLXI_4/q [2]),
    .R(CHOICE1937),
    .CE(\XLXI_4/_n0004 ),
    .C(\XLXI_1/clk ),
    .Q(\XLXI_4/q_1_4 )
  );
  FDRE \XLXI_4/q_4_3_107  (
    .D(\XLXI_4/q [5]),
    .R(CHOICE1937),
    .CE(\XLXI_4/_n0004 ),
    .C(\XLXI_1/clk ),
    .Q(\XLXI_4/q_4_3 )
  );
  FDRE \XLXI_4/q_2_3_108  (
    .D(\XLXI_4/q [3]),
    .R(CHOICE1937),
    .CE(\XLXI_4/_n0004 ),
    .C(\XLXI_1/clk ),
    .Q(\XLXI_4/q_2_3 )
  );
  FDRE \XLXI_4/q_6_4_109  (
    .D(\XLXI_4/q [7]),
    .R(CHOICE1937),
    .CE(\XLXI_4/_n0004 ),
    .C(\XLXI_1/clk ),
    .Q(\XLXI_4/q_6_4 )
  );
  FDRE \XLXI_4/q_6_5_110  (
    .D(\XLXI_4/q [7]),
    .R(CHOICE1937),
    .CE(\XLXI_4/_n0004 ),
    .C(\XLXI_1/clk ),
    .Q(\XLXI_4/q_6_5 )
  );
  FDRE \XLXI_4/q_6_6_111  (
    .D(\XLXI_4/q [7]),
    .R(CHOICE1937),
    .CE(\XLXI_4/_n0004 ),
    .C(\XLXI_1/clk ),
    .Q(\XLXI_4/q_6_6 )
  );
  FDRE \XLXI_4/q_3_2_112  (
    .D(\XLXI_4/q [4]),
    .R(CHOICE1937),
    .CE(\XLXI_4/_n0004 ),
    .C(\XLXI_1/clk ),
    .Q(\XLXI_4/q_3_2 )
  );
  BUFG \XLXI_1/clk_BUFG  (
    .I(\XLXI_1/clk1 ),
    .O(\XLXI_1/clk )
  );
  BUFG \XLXI_4/rx_released_BUFG  (
    .I(\XLXI_4/rx_released1 ),
    .O(\XLXI_4/rx_released )
  );
  BUFG \XLXI_3/clk_int_BUFG  (
    .I(\XLXI_3/clk_int1 ),
    .O(\XLXI_3/clk_int )
  );
  MUXF5 \XLXI_4/ascii<6>3661  (
    .I0(N2469),
    .I1(N2470),
    .S(\XLXI_4/q [3]),
    .O(\XLXI_4/ascii [6])
  );
  defparam \XLXI_4/ascii<6>3661_F .INIT = 16'h0F04;
  LUT4_L \XLXI_4/ascii<6>3661_F  (
    .I0(\XLXI_4/q [7]),
    .I1(CHOICE2533),
    .I2(\XLXI_4/q [8]),
    .I3(CHOICE2551),
    .LO(N2469)
  );
  MUXF5 \XLXI_4/ascii<6>253  (
    .I0(N2471),
    .I1(N2472),
    .S(\XLXI_4/q [4]),
    .O(CHOICE2533)
  );
  defparam \XLXI_4/ascii<6>253_F .INIT = 8'hA8;
  LUT3_L \XLXI_4/ascii<6>253_F  (
    .I0(\XLXI_4/q [6]),
    .I1(\XLXI_4/q [2]),
    .I2(\XLXI_4/q [1]),
    .LO(N2471)
  );
  MUXF5 \XLXI_3/_n0024_SW0  (
    .I0(N2473),
    .I1(N2474),
    .S(\XLXI_3/count [5]),
    .O(N1281)
  );
  defparam \XLXI_3/_n0024_SW0_F .INIT = 4'h8;
  LUT2 \XLXI_3/_n0024_SW0_F  (
    .I0(\XLXI_3/state_FFd2 ),
    .I1(\XLXI_3/data_in_buf [5]),
    .O(N2473)
  );
  MUXF5 \XLXI_4/ascii<0>277  (
    .I0(N2475),
    .I1(N2476),
    .S(\XLXI_4/q_6_6 ),
    .O(CHOICE2627)
  );
  defparam \XLXI_4/ascii<0>277_F .INIT = 16'hAA02;
  LUT4_L \XLXI_4/ascii<0>277_F  (
    .I0(\XLXI_4/q_7_1 ),
    .I1(\XLXI_4/right_shift_key ),
    .I2(\XLXI_4/left_shift_key ),
    .I3(\XLXI_4/q_4_2 ),
    .LO(N2475)
  );
  MUXF5 \XLXI_4/ascii<3>117  (
    .I0(N2477),
    .I1(N2478),
    .S(\XLXI_4/q [7]),
    .O(CHOICE1980)
  );
  defparam \XLXI_4/ascii<3>117_F .INIT = 16'hFF32;
  LUT4_L \XLXI_4/ascii<3>117_F  (
    .I0(CHOICE1976),
    .I1(\XLXI_4/q [3]),
    .I2(N130),
    .I3(N127),
    .LO(N2477)
  );
endmodule

