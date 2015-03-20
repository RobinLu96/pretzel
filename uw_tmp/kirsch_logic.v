//
// Verilog description for cell kirsch, 
// 03/19/15 18:06:44
//
// Precision RTL Synthesis, 2008a.47//


module kirsch ( i_clock, i_reset, i_valid, i_pixel, o_valid, o_edge, o_dir, 
                o_mode, o_row, debug_key, debug_switch, debug_led_red, 
                debug_led_grn, debug_num_0, debug_num_1, debug_num_2, 
                debug_num_3, debug_num_4, debug_num_5 ) ;

    input i_clock ;
    input i_reset ;
    input i_valid ;
    input [7:0]i_pixel ;
    output o_valid ;
    output o_edge ;
    output [2:0]o_dir ;
    output [1:0]o_mode ;
    output [7:0]o_row ;
    input [3:1]debug_key ;
    input [17:0]debug_switch ;
    output [17:0]debug_led_red ;
    output [5:0]debug_led_grn ;
    output [3:0]debug_num_0 ;
    output [3:0]debug_num_1 ;
    output [3:0]debug_num_2 ;
    output [3:0]debug_num_3 ;
    output [3:0]debug_num_4 ;
    output [3:0]debug_num_5 ;

    wire [1:0]o_mode_dup0;
    wire [7:0]o_row_dup0;
    wire [7:0]x;
    wire [1:0]t;
    wire [7:0]q1;
    wire [7:0]q2;
    wire [7:0]q3;
    wire [7:0]v;
    wire [7:0]a;
    wire [7:0]b;
    wire [7:0]c;
    wire [7:0]d;
    wire [7:0]e;
    wire [7:0]f;
    wire [7:0]g;
    wire [7:0]h;
    wire [7:0]i;
    wire [7:0]r1;
    wire [7:0]r2;
    wire [7:0]r3;
    wire [7:0]r4;
    wire [7:0]r5;
    wire [8:0]r7;
    wire [10:0]r8;
    wire [9:0]r9;
    wire [9:0]r11;
    wire [9:0]r12;
    wire [10:0]r13;
    wire r14_12_, r14_11_, r14_10_, r14_9_, r14_8_, r14_7_, r14_6_, r14_5_, 
         r14_4_, r14_3_;
    wire [12:0]r15;
    wire dir1_2_, dir2_2_, dir3_2_, dir4_2_, dir4_0_;
    wire [2:0]dir5;
    wire dir6_2_;
    wire [2:0]dir7;
    wire [8:0]add1;
    wire [9:0]add2;
    wire [10:0]add3;
    wire [12:1]add4;
    wire end_of_img, nx7380z1, nx24302z1, nx14428z1, nx36874z1, nx36874z5, 
         nx36874z6, nx36874z8, nx36874z9, nx36874z10, nx36874z3, i_clock_int, 
         i_reset_int, i_valid_int;
    wire [7:0]i_pixel_int;
    wire o_edge_dup0;
    wire [2:0]o_dir_dup0;
    wire wren_m1, wren_m2, wren_m3;
    wire [17:17]debug_num_5_dup0;
    wire [9:0]max2;
    wire sub1_8_;
    wire [7:0]addr_x;
    wire debug_num_5_dup0_1_, nx26373z1;
    wire [1:0]t_20n2s1;
    wire nx17322z9, nx17322z1, nx20492z2, nx10438z2, nx46679z2, dir5_23n5ss1_2_, 
         dir6_23n5ss1_2_, nx32637z3, nx25299z1, nx28105z1, nx36692z2, nx36266z1, 
         nx34077z1, nx35074z1, nx36071z1, nx37068z1, nx38065z1, nx39062z1, 
         nx40059z1, nx41056z1, nx25658z1, nx26655z1, nx27652z1, nx28649z1, 
         nx29646z1, nx30643z1, nx31640z1, nx32637z1, nx48297z1, nx47300z1, 
         nx46303z1, nx45306z1, nx44309z1, nx43312z1, nx42315z1, nx41318z1, 
         nx56716z1, nx55719z1, nx54722z1, nx53725z1, nx52728z1, nx51731z1, 
         nx50734z1, nx49737z1, nx27471z1, nx26474z1, nx25477z1, nx24480z1, 
         nx23483z1, nx22486z1, nx21489z1, nx20492z1, nx29646z3, nx30643z3, 
         nx31640z3, nx32637z4, nx33634z1, nx34631z1, nx35628z1, nx36625z1, 
         nx6176z10, nx38525z1, nx36692z1, nx46679z1, nx44685z1, nx10438z1, 
         nx2019z1, nx35695z1, nx44114z1, nx45111z1, nx46108z1, nx17322z2, 
         nx17322z3, nx17322z8, nx17322z10, nx17322z12, nx19087z1, nx19087z2, 
         nx19087z6, nx19087z10, nx19087z12, nx19087z14, nx19087z15, nx19087z18, 
         nx19087z20, nx19087z23, nx26373z2, nx6176z1, nx6176z2, nx28105z2, 
         nx28105z4, nx28105z6, nx28105z9, nx31609z1, nx17322z5, nx19087z7, 
         nx19087z21, nx19087z4, nx19087z5, nx19087z17, nx17322z13, nx36874z2, 
         nx36874z7, nx36874z4, nx28105z3, nx28105z8, nx28105z5, nx28105z7, 
         nx38525z2, nx25299z2, nx24222z1, nx19087z27, nx19087z26, nx6176z3, 
         nx17322z15, nx19087z24, nx19087z22, nx19087z19, nx19087z16, nx19087z13, 
         nx19087z11, nx19087z8, nx19087z9, nx19087z3, nx17322z16, nx17322z11, 
         nx6176z8, nx19087z25, nx17322z14, nx6176z4, nx6176z5, nx6176z6, 
         nx17322z7, nx17322z4, nx6176z9, nx17322z6, nx6176z7, nx49737z2, 
         nx50734z2, nx51731z2, nx52728z2, nx53725z2, nx54722z2, nx55719z2, 
         nx56716z2, nx41318z2, nx42315z2, nx43312z2, nx44309z2, nx45306z2, 
         nx46303z2, nx47300z2, nx48297z2, nx32637z2, nx31640z2, nx30643z2, 
         nx29646z2, nx28649z2, nx27652z2, nx26655z2, nx25658z2, nx41056z2, 
         nx40059z2, nx39062z2, nx38065z2, nx37068z2, nx36071z2, nx35074z2, 
         nx34077z2, nx44114z2, nx46108z2, nx45613z1, nx45613z2, nx44616z1, 
         nx43619z1, nx42622z1, nx41625z1, nx40628z1, nx39631z1, nx38634z1, 
         nx25376z1, nx16335z1, nx17332z1, nx18329z1, nx19326z1, nx20323z1, 
         nx21320z1, nx22317z1, nx23314z1, nx51998z1, nx47893z1, nx45111z2, 
         NOT_dir5_1_, nx46108z3, NOT_dir5_0_;
    wire [2576:0] xmplr_dummy ;




    add_11_0 add3_add11_0 (.a ({xmplr_dummy [0],xmplr_dummy [1],r7[8],r7[7],
             r7[6],r7[5],r7[4],r7[3],r7[2],r7[1],r7[0]}), .b ({r8[10],r8[9],
             r8[8],r8[7],r8[6],r8[5],r8[4],r8[3],r8[2],r8[1],r8[0]}), .d ({
             add3[10],add3[9],add3[8],add3[7],add3[6],add3[5],add3[4],add3[3],
             add3[2],add3[1],add3[0]})) ;
    sub_8_0 sub1_sub8_1 (.a ({r1[7],r1[6],r1[5],r1[4],r1[3],r1[2],r1[1],r1[0]})
            , .b ({r2[7],r2[6],r2[5],r2[4],r2[3],r2[2],r2[1],r2[0]}), .cout (
            nx7380z1)) ;
    sub_10_0 sub2_sub10_2 (.a ({r9[9],r9[8],r9[7],r9[6],r9[5],r9[4],r9[3],r9[2],
             r9[1],r9[0]}), .b ({r11[9],r11[8],r11[7],r11[6],r11[5],r11[4],
             r11[3],r11[2],r11[1],r11[0]}), .cout (nx24302z1)) ;
    sub_10_1 sub3_sub10_3 (.a ({r11[9],r11[8],r11[7],r11[6],r11[5],r11[4],r11[3]
             ,r11[2],r11[1],r11[0]}), .b ({r12[9],r12[8],r12[7],r12[6],r12[5],
             r12[4],r12[3],r12[2],r12[1],r12[0]}), .cout (nx14428z1)) ;
    modgen_counter_8_0 modgen_counter_x (.clock (i_clock_int), .q ({x[7],x[6],
                       x[5],x[4],x[3],x[2],x[1],x[0]}), .sclear (i_reset_int), .cnt_en (
                       i_valid_int)) ;
    modgen_counter_8_1 modgen_counter_o_row (.clock (i_clock_int), .q ({
                       o_row_dup0[7],o_row_dup0[6],o_row_dup0[5],o_row_dup0[4],
                       o_row_dup0[3],o_row_dup0[2],o_row_dup0[1],o_row_dup0[0]})
                       , .clk_en (nx17322z1), .sclear (nx17322z9), .cnt_en (
                       nx17322z15), .px50 (nx45613z1), .px23 (nx45613z2), .px46 (
                       nx44616z1), .px24 (nx43619z1), .px17 (nx42622z1), .px13 (
                       nx41625z1), .px9 (nx40628z1), .px5 (nx39631z1), .px1 (
                       nx38634z1)) ;
    add_8_0 add1_add8_4 (.a ({r3[7],r3[6],r3[5],r3[4],r3[3],r3[2],r3[1],r3[0]})
            , .b ({r4[7],r4[6],r4[5],r4[4],r4[3],r4[2],r4[1],r4[0]}), .d ({
            add1[7],add1[6],add1[5],add1[4],add1[3],add1[2],add1[1],add1[0]}), .cout (
            add1[8])) ;
    add_9_0 add2_add9_5 (.a ({xmplr_dummy [2],r5[7],r5[6],r5[5],r5[4],r5[3],
            r5[2],r5[1],r5[0]}), .b ({r7[8],r7[7],r7[6],r7[5],r7[4],r7[3],r7[2],
            r7[1],r7[0]}), .d ({add2[8],add2[7],add2[6],add2[5],add2[4],add2[3],
            add2[2],add2[1],add2[0]}), .cout (add2[9])) ;
    add_11_1 add4_add11_6 (.a ({xmplr_dummy [3],r13[10],r13[9],r13[8],r13[7],
             r13[6],r13[5],r13[4],r13[3],r13[2],r13[1]}), .b ({xmplr_dummy [4],
             xmplr_dummy [5],xmplr_dummy [6],xmplr_dummy [7],xmplr_dummy [8],
             xmplr_dummy [9],xmplr_dummy [10],xmplr_dummy [11],xmplr_dummy [12],
             xmplr_dummy [13],r13[0]}), .d ({add4[11],add4[10],add4[9],add4[8],
             add4[7],add4[6],add4[5],add4[4],add4[3],add4[2],add4[1]}), .cout (
             add4[12])) ;
    sub_12_0 ix36874z50555 (.a ({r14_12_,r14_11_,r14_10_,r14_9_,r14_8_,r14_7_,
             r14_6_,r14_5_,r14_4_,r14_3_,xmplr_dummy [14],xmplr_dummy [15]}), .b (
             {r15[12],r15[11],r15[10],r15[9],r15[8],r15[7],r15[6],r15[5],r15[4],
             r15[3],r15[2],r15[1]}), .d ({nx36874z1,nx36874z5,nx36874z6,
             nx36874z8,nx36874z9,nx36874z10,xmplr_dummy [16],xmplr_dummy [17],
             xmplr_dummy [18],xmplr_dummy [19],xmplr_dummy [20],xmplr_dummy [21]
             }), .cout (nx36874z3), .p_r15_0_ (r15[0])) ;
    ram_dq_8_0 m1_mem (.wr_data1 ({i_pixel_int[7],i_pixel_int[6],i_pixel_int[5],
               i_pixel_int[4],i_pixel_int[3],i_pixel_int[2],i_pixel_int[1],
               i_pixel_int[0]}), .rd_data1 ({q1[7],q1[6],q1[5],q1[4],q1[3],q1[2]
               ,q1[1],q1[0]}), .addr1 ({addr_x[7],addr_x[6],addr_x[5],addr_x[4],
               addr_x[3],addr_x[2],addr_x[1],addr_x[0]}), .wr_clk1 (i_clock_int)
               , .wr_ena1 (wren_m1)) ;
    ram_dq_8_1 m2_mem (.wr_data1 ({i_pixel_int[7],i_pixel_int[6],i_pixel_int[5],
               i_pixel_int[4],i_pixel_int[3],i_pixel_int[2],i_pixel_int[1],
               i_pixel_int[0]}), .rd_data1 ({q2[7],q2[6],q2[5],q2[4],q2[3],q2[2]
               ,q2[1],q2[0]}), .addr1 ({addr_x[7],addr_x[6],addr_x[5],addr_x[4],
               addr_x[3],addr_x[2],addr_x[1],addr_x[0]}), .wr_clk1 (i_clock_int)
               , .wr_ena1 (wren_m2)) ;
    ram_dq_8_2 m3_mem (.wr_data1 ({i_pixel_int[7],i_pixel_int[6],i_pixel_int[5],
               i_pixel_int[4],i_pixel_int[3],i_pixel_int[2],i_pixel_int[1],
               i_pixel_int[0]}), .rd_data1 ({q3[7],q3[6],q3[5],q3[4],q3[3],q3[2]
               ,q3[1],q3[0]}), .addr1 ({addr_x[7],addr_x[6],addr_x[5],addr_x[4],
               addr_x[3],addr_x[2],addr_x[1],addr_x[0]}), .wr_clk1 (i_clock_int)
               , .wr_ena1 (wren_m3)) ;
    assign debug_num_5_dup0[17] = 0 ;
    assign sub1_8_ = ~nx7380z1 ;
    assign debug_num_5_dup0_1_ = 1 ;
    assign nx25376z1 = 1 ;
    assign o_mode_dup0[0] = ~nx47893z1 ;
    assign NOT_dir5_1_ = ~dir5[1] ;
    assign NOT_dir5_0_ = ~dir5[0] ;
    cycloneii_lcell_ff reg_v_7_ (.regout (v[7]), .datain (v[6]), .sdata (1'b0), 
                       .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_v_6_ (.regout (v[6]), .datain (v[5]), .sdata (1'b0), 
                       .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_v_5_ (.regout (v[5]), .datain (v[4]), .sdata (1'b0), 
                       .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_v_4_ (.regout (v[4]), .datain (v[3]), .sdata (1'b0), 
                       .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_v_3_ (.regout (v[3]), .datain (v[2]), .sdata (1'b0), 
                       .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_v_2_ (.regout (v[2]), .datain (v[1]), .sdata (1'b0), 
                       .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_v_1_ (.regout (v[1]), .datain (v[0]), .sdata (1'b0), 
                       .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_v_0_ (.regout (v[0]), .datain (i_valid_int), .sdata (
                       1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       i_reset_int), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_t_1_ (.regout (t[1]), .datain (t_20n2s1[1]), .sdata (
                       1'b0), .clk (i_clock_int), .ena (nx38525z1), .aclr (1'b0)
                       , .sclr (i_reset_int), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_t_0_ (.regout (t[0]), .datain (t_20n2s1[0]), .sdata (
                       1'b0), .clk (i_clock_int), .ena (nx38525z1), .aclr (1'b0)
                       , .sclr (i_reset_int), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r9_9_ (.regout (r9[9]), .datain (max2[9]), .sdata (
                       add2[9]), .clk (i_clock_int), .ena (nx25299z1), .aclr (
                       1'b0), .sclr (1'b0), .sload (v[2])) ;
    cycloneii_lcell_ff reg_r9_8_ (.regout (r9[8]), .datain (max2[8]), .sdata (
                       add2[8]), .clk (i_clock_int), .ena (nx25299z1), .aclr (
                       1'b0), .sclr (1'b0), .sload (v[2])) ;
    cycloneii_lcell_ff reg_r9_7_ (.regout (r9[7]), .datain (max2[7]), .sdata (
                       add2[7]), .clk (i_clock_int), .ena (nx25299z1), .aclr (
                       1'b0), .sclr (1'b0), .sload (v[2])) ;
    cycloneii_lcell_ff reg_r9_6_ (.regout (r9[6]), .datain (max2[6]), .sdata (
                       add2[6]), .clk (i_clock_int), .ena (nx25299z1), .aclr (
                       1'b0), .sclr (1'b0), .sload (v[2])) ;
    cycloneii_lcell_ff reg_r9_5_ (.regout (r9[5]), .datain (max2[5]), .sdata (
                       add2[5]), .clk (i_clock_int), .ena (nx25299z1), .aclr (
                       1'b0), .sclr (1'b0), .sload (v[2])) ;
    cycloneii_lcell_ff reg_r9_4_ (.regout (r9[4]), .datain (max2[4]), .sdata (
                       add2[4]), .clk (i_clock_int), .ena (nx25299z1), .aclr (
                       1'b0), .sclr (1'b0), .sload (v[2])) ;
    cycloneii_lcell_ff reg_r9_3_ (.regout (r9[3]), .datain (max2[3]), .sdata (
                       add2[3]), .clk (i_clock_int), .ena (nx25299z1), .aclr (
                       1'b0), .sclr (1'b0), .sload (v[2])) ;
    cycloneii_lcell_ff reg_r9_2_ (.regout (r9[2]), .datain (max2[2]), .sdata (
                       add2[2]), .clk (i_clock_int), .ena (nx25299z1), .aclr (
                       1'b0), .sclr (1'b0), .sload (v[2])) ;
    cycloneii_lcell_ff reg_r9_1_ (.regout (r9[1]), .datain (max2[1]), .sdata (
                       add2[1]), .clk (i_clock_int), .ena (nx25299z1), .aclr (
                       1'b0), .sclr (1'b0), .sload (v[2])) ;
    cycloneii_lcell_ff reg_r9_0_ (.regout (r9[0]), .datain (max2[0]), .sdata (
                       add2[0]), .clk (i_clock_int), .ena (nx25299z1), .aclr (
                       1'b0), .sclr (1'b0), .sload (v[2])) ;
    cycloneii_lcell_ff reg_r8_9_ (.regout (r8[9]), .datain (add3[9]), .sdata (
                       1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       v[2]), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r8_8_ (.regout (r8[8]), .datain (add3[8]), .sdata (
                       r7[8]), .clk (i_clock_int), .ena (debug_num_5_dup0_1_), .aclr (
                       1'b0), .sclr (1'b0), .sload (v[2])) ;
    cycloneii_lcell_ff reg_r8_7_ (.regout (r8[7]), .datain (add3[7]), .sdata (
                       r7[7]), .clk (i_clock_int), .ena (debug_num_5_dup0_1_), .aclr (
                       1'b0), .sclr (1'b0), .sload (v[2])) ;
    cycloneii_lcell_ff reg_r8_6_ (.regout (r8[6]), .datain (add3[6]), .sdata (
                       r7[6]), .clk (i_clock_int), .ena (debug_num_5_dup0_1_), .aclr (
                       1'b0), .sclr (1'b0), .sload (v[2])) ;
    cycloneii_lcell_ff reg_r8_5_ (.regout (r8[5]), .datain (add3[5]), .sdata (
                       r7[5]), .clk (i_clock_int), .ena (debug_num_5_dup0_1_), .aclr (
                       1'b0), .sclr (1'b0), .sload (v[2])) ;
    cycloneii_lcell_ff reg_r8_4_ (.regout (r8[4]), .datain (add3[4]), .sdata (
                       r7[4]), .clk (i_clock_int), .ena (debug_num_5_dup0_1_), .aclr (
                       1'b0), .sclr (1'b0), .sload (v[2])) ;
    cycloneii_lcell_ff reg_r8_3_ (.regout (r8[3]), .datain (add3[3]), .sdata (
                       r7[3]), .clk (i_clock_int), .ena (debug_num_5_dup0_1_), .aclr (
                       1'b0), .sclr (1'b0), .sload (v[2])) ;
    cycloneii_lcell_ff reg_r8_2_ (.regout (r8[2]), .datain (add3[2]), .sdata (
                       r7[2]), .clk (i_clock_int), .ena (debug_num_5_dup0_1_), .aclr (
                       1'b0), .sclr (1'b0), .sload (v[2])) ;
    cycloneii_lcell_ff reg_r8_10_ (.regout (r8[10]), .datain (add3[10]), .sdata (
                       1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       v[2]), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r8_1_ (.regout (r8[1]), .datain (add3[1]), .sdata (
                       r7[1]), .clk (i_clock_int), .ena (debug_num_5_dup0_1_), .aclr (
                       1'b0), .sclr (1'b0), .sload (v[2])) ;
    cycloneii_lcell_ff reg_r8_0_ (.regout (r8[0]), .datain (add3[0]), .sdata (
                       r7[0]), .clk (i_clock_int), .ena (debug_num_5_dup0_1_), .aclr (
                       1'b0), .sclr (1'b0), .sload (v[2])) ;
    cycloneii_lcell_ff reg_r7_8_ (.regout (r7[8]), .datain (add1[8]), .sdata (
                       1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r7_7_ (.regout (r7[7]), .datain (add1[7]), .sdata (
                       1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r7_6_ (.regout (r7[6]), .datain (add1[6]), .sdata (
                       1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r7_5_ (.regout (r7[5]), .datain (add1[5]), .sdata (
                       1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r7_4_ (.regout (r7[4]), .datain (add1[4]), .sdata (
                       1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r7_3_ (.regout (r7[3]), .datain (add1[3]), .sdata (
                       1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r7_2_ (.regout (r7[2]), .datain (add1[2]), .sdata (
                       1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r7_1_ (.regout (r7[1]), .datain (add1[1]), .sdata (
                       1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r7_0_ (.regout (r7[0]), .datain (add1[0]), .sdata (
                       1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r5_7_ (.regout (r5[7]), .datain (r2[7]), .sdata (
                       r1[7]), .clk (i_clock_int), .ena (debug_num_5_dup0_1_), .aclr (
                       1'b0), .sclr (1'b0), .sload (nx7380z1)) ;
    cycloneii_lcell_ff reg_r5_6_ (.regout (r5[6]), .datain (r2[6]), .sdata (
                       r1[6]), .clk (i_clock_int), .ena (debug_num_5_dup0_1_), .aclr (
                       1'b0), .sclr (1'b0), .sload (nx7380z1)) ;
    cycloneii_lcell_ff reg_r5_5_ (.regout (r5[5]), .datain (r2[5]), .sdata (
                       r1[5]), .clk (i_clock_int), .ena (debug_num_5_dup0_1_), .aclr (
                       1'b0), .sclr (1'b0), .sload (nx7380z1)) ;
    cycloneii_lcell_ff reg_r5_4_ (.regout (r5[4]), .datain (r2[4]), .sdata (
                       r1[4]), .clk (i_clock_int), .ena (debug_num_5_dup0_1_), .aclr (
                       1'b0), .sclr (1'b0), .sload (nx7380z1)) ;
    cycloneii_lcell_ff reg_r5_3_ (.regout (r5[3]), .datain (r2[3]), .sdata (
                       r1[3]), .clk (i_clock_int), .ena (debug_num_5_dup0_1_), .aclr (
                       1'b0), .sclr (1'b0), .sload (nx7380z1)) ;
    cycloneii_lcell_ff reg_r5_2_ (.regout (r5[2]), .datain (r2[2]), .sdata (
                       r1[2]), .clk (i_clock_int), .ena (debug_num_5_dup0_1_), .aclr (
                       1'b0), .sclr (1'b0), .sload (nx7380z1)) ;
    cycloneii_lcell_ff reg_r5_1_ (.regout (r5[1]), .datain (r2[1]), .sdata (
                       r1[1]), .clk (i_clock_int), .ena (debug_num_5_dup0_1_), .aclr (
                       1'b0), .sclr (1'b0), .sload (nx7380z1)) ;
    cycloneii_lcell_ff reg_r5_0_ (.regout (r5[0]), .datain (r2[0]), .sdata (
                       r1[0]), .clk (i_clock_int), .ena (debug_num_5_dup0_1_), .aclr (
                       1'b0), .sclr (1'b0), .sload (nx7380z1)) ;
    cycloneii_lcell_ff reg_r4_7_ (.regout (r4[7]), .datain (nx49737z1), .sdata (
                       b[7]), .clk (i_clock_int), .ena (nx32637z3), .aclr (1'b0)
                       , .sclr (1'b0), .sload (v[0])) ;
    cycloneii_lcell_ff reg_r4_6_ (.regout (r4[6]), .datain (nx50734z1), .sdata (
                       b[6]), .clk (i_clock_int), .ena (nx32637z3), .aclr (1'b0)
                       , .sclr (1'b0), .sload (v[0])) ;
    cycloneii_lcell_ff reg_r4_5_ (.regout (r4[5]), .datain (nx51731z1), .sdata (
                       b[5]), .clk (i_clock_int), .ena (nx32637z3), .aclr (1'b0)
                       , .sclr (1'b0), .sload (v[0])) ;
    cycloneii_lcell_ff reg_r4_4_ (.regout (r4[4]), .datain (nx52728z1), .sdata (
                       b[4]), .clk (i_clock_int), .ena (nx32637z3), .aclr (1'b0)
                       , .sclr (1'b0), .sload (v[0])) ;
    cycloneii_lcell_ff reg_r4_3_ (.regout (r4[3]), .datain (nx53725z1), .sdata (
                       b[3]), .clk (i_clock_int), .ena (nx32637z3), .aclr (1'b0)
                       , .sclr (1'b0), .sload (v[0])) ;
    cycloneii_lcell_ff reg_r4_2_ (.regout (r4[2]), .datain (nx54722z1), .sdata (
                       b[2]), .clk (i_clock_int), .ena (nx32637z3), .aclr (1'b0)
                       , .sclr (1'b0), .sload (v[0])) ;
    cycloneii_lcell_ff reg_r4_1_ (.regout (r4[1]), .datain (nx55719z1), .sdata (
                       b[1]), .clk (i_clock_int), .ena (nx32637z3), .aclr (1'b0)
                       , .sclr (1'b0), .sload (v[0])) ;
    cycloneii_lcell_ff reg_r4_0_ (.regout (r4[0]), .datain (nx56716z1), .sdata (
                       b[0]), .clk (i_clock_int), .ena (nx32637z3), .aclr (1'b0)
                       , .sclr (1'b0), .sload (v[0])) ;
    cycloneii_lcell_ff reg_r3_7_ (.regout (r3[7]), .datain (nx41318z1), .sdata (
                       c[7]), .clk (i_clock_int), .ena (nx32637z3), .aclr (1'b0)
                       , .sclr (1'b0), .sload (v[0])) ;
    cycloneii_lcell_ff reg_r3_6_ (.regout (r3[6]), .datain (nx42315z1), .sdata (
                       c[6]), .clk (i_clock_int), .ena (nx32637z3), .aclr (1'b0)
                       , .sclr (1'b0), .sload (v[0])) ;
    cycloneii_lcell_ff reg_r3_5_ (.regout (r3[5]), .datain (nx43312z1), .sdata (
                       c[5]), .clk (i_clock_int), .ena (nx32637z3), .aclr (1'b0)
                       , .sclr (1'b0), .sload (v[0])) ;
    cycloneii_lcell_ff reg_r3_4_ (.regout (r3[4]), .datain (nx44309z1), .sdata (
                       c[4]), .clk (i_clock_int), .ena (nx32637z3), .aclr (1'b0)
                       , .sclr (1'b0), .sload (v[0])) ;
    cycloneii_lcell_ff reg_r3_3_ (.regout (r3[3]), .datain (nx45306z1), .sdata (
                       c[3]), .clk (i_clock_int), .ena (nx32637z3), .aclr (1'b0)
                       , .sclr (1'b0), .sload (v[0])) ;
    cycloneii_lcell_ff reg_r3_2_ (.regout (r3[2]), .datain (nx46303z1), .sdata (
                       c[2]), .clk (i_clock_int), .ena (nx32637z3), .aclr (1'b0)
                       , .sclr (1'b0), .sload (v[0])) ;
    cycloneii_lcell_ff reg_r3_1_ (.regout (r3[1]), .datain (nx47300z1), .sdata (
                       c[1]), .clk (i_clock_int), .ena (nx32637z3), .aclr (1'b0)
                       , .sclr (1'b0), .sload (v[0])) ;
    cycloneii_lcell_ff reg_r3_0_ (.regout (r3[0]), .datain (nx48297z1), .sdata (
                       c[0]), .clk (i_clock_int), .ena (nx32637z3), .aclr (1'b0)
                       , .sclr (1'b0), .sload (v[0])) ;
    cycloneii_lcell_ff reg_r2_7_ (.regout (r2[7]), .datain (nx32637z1), .sdata (
                       d[7]), .clk (i_clock_int), .ena (nx32637z3), .aclr (1'b0)
                       , .sclr (1'b0), .sload (v[0])) ;
    cycloneii_lcell_ff reg_r2_6_ (.regout (r2[6]), .datain (nx31640z1), .sdata (
                       d[6]), .clk (i_clock_int), .ena (nx32637z3), .aclr (1'b0)
                       , .sclr (1'b0), .sload (v[0])) ;
    cycloneii_lcell_ff reg_r2_5_ (.regout (r2[5]), .datain (nx30643z1), .sdata (
                       d[5]), .clk (i_clock_int), .ena (nx32637z3), .aclr (1'b0)
                       , .sclr (1'b0), .sload (v[0])) ;
    cycloneii_lcell_ff reg_r2_4_ (.regout (r2[4]), .datain (nx29646z1), .sdata (
                       d[4]), .clk (i_clock_int), .ena (nx32637z3), .aclr (1'b0)
                       , .sclr (1'b0), .sload (v[0])) ;
    cycloneii_lcell_ff reg_r2_3_ (.regout (r2[3]), .datain (nx28649z1), .sdata (
                       d[3]), .clk (i_clock_int), .ena (nx32637z3), .aclr (1'b0)
                       , .sclr (1'b0), .sload (v[0])) ;
    cycloneii_lcell_ff reg_r2_2_ (.regout (r2[2]), .datain (nx27652z1), .sdata (
                       d[2]), .clk (i_clock_int), .ena (nx32637z3), .aclr (1'b0)
                       , .sclr (1'b0), .sload (v[0])) ;
    cycloneii_lcell_ff reg_r2_1_ (.regout (r2[1]), .datain (nx26655z1), .sdata (
                       d[1]), .clk (i_clock_int), .ena (nx32637z3), .aclr (1'b0)
                       , .sclr (1'b0), .sload (v[0])) ;
    cycloneii_lcell_ff reg_r2_0_ (.regout (r2[0]), .datain (nx25658z1), .sdata (
                       d[0]), .clk (i_clock_int), .ena (nx32637z3), .aclr (1'b0)
                       , .sclr (1'b0), .sload (v[0])) ;
    cycloneii_lcell_ff reg_r15_9_ (.regout (r15[9]), .datain (add4[9]), .sdata (
                       1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r15_8_ (.regout (r15[8]), .datain (add4[8]), .sdata (
                       1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r15_7_ (.regout (r15[7]), .datain (add4[7]), .sdata (
                       1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r15_6_ (.regout (r15[6]), .datain (add4[6]), .sdata (
                       1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r15_5_ (.regout (r15[5]), .datain (add4[5]), .sdata (
                       1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r15_4_ (.regout (r15[4]), .datain (add4[4]), .sdata (
                       1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r15_3_ (.regout (r15[3]), .datain (add4[3]), .sdata (
                       1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r15_2_ (.regout (r15[2]), .datain (add4[2]), .sdata (
                       1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r15_12_ (.regout (r15[12]), .datain (add4[12]), .sdata (
                       1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r15_11_ (.regout (r15[11]), .datain (add4[11]), .sdata (
                       1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r15_10_ (.regout (r15[10]), .datain (add4[10]), .sdata (
                       1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r15_1_ (.regout (r15[1]), .datain (add4[1]), .sdata (
                       1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r15_0_ (.regout (r15[0]), .datain (r13[0]), .sdata (
                       1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r14_9_ (.regout (r14_9_), .datain (r12[6]), .sdata (
                       r11[6]), .clk (i_clock_int), .ena (debug_num_5_dup0_1_), 
                       .aclr (1'b0), .sclr (1'b0), .sload (nx14428z1)) ;
    cycloneii_lcell_ff reg_r14_8_ (.regout (r14_8_), .datain (r12[5]), .sdata (
                       r11[5]), .clk (i_clock_int), .ena (debug_num_5_dup0_1_), 
                       .aclr (1'b0), .sclr (1'b0), .sload (nx14428z1)) ;
    cycloneii_lcell_ff reg_r14_7_ (.regout (r14_7_), .datain (r12[4]), .sdata (
                       r11[4]), .clk (i_clock_int), .ena (debug_num_5_dup0_1_), 
                       .aclr (1'b0), .sclr (1'b0), .sload (nx14428z1)) ;
    cycloneii_lcell_ff reg_r14_6_ (.regout (r14_6_), .datain (r12[3]), .sdata (
                       r11[3]), .clk (i_clock_int), .ena (debug_num_5_dup0_1_), 
                       .aclr (1'b0), .sclr (1'b0), .sload (nx14428z1)) ;
    cycloneii_lcell_ff reg_r14_5_ (.regout (r14_5_), .datain (r12[2]), .sdata (
                       r11[2]), .clk (i_clock_int), .ena (debug_num_5_dup0_1_), 
                       .aclr (1'b0), .sclr (1'b0), .sload (nx14428z1)) ;
    cycloneii_lcell_ff reg_r14_4_ (.regout (r14_4_), .datain (r12[1]), .sdata (
                       r11[1]), .clk (i_clock_int), .ena (debug_num_5_dup0_1_), 
                       .aclr (1'b0), .sclr (1'b0), .sload (nx14428z1)) ;
    cycloneii_lcell_ff reg_r14_3_ (.regout (r14_3_), .datain (r12[0]), .sdata (
                       r11[0]), .clk (i_clock_int), .ena (debug_num_5_dup0_1_), 
                       .aclr (1'b0), .sclr (1'b0), .sload (nx14428z1)) ;
    cycloneii_lcell_ff reg_r14_12_ (.regout (r14_12_), .datain (r12[9]), .sdata (
                       r11[9]), .clk (i_clock_int), .ena (debug_num_5_dup0_1_), 
                       .aclr (1'b0), .sclr (1'b0), .sload (nx14428z1)) ;
    cycloneii_lcell_ff reg_r14_11_ (.regout (r14_11_), .datain (r12[8]), .sdata (
                       r11[8]), .clk (i_clock_int), .ena (debug_num_5_dup0_1_), 
                       .aclr (1'b0), .sclr (1'b0), .sload (nx14428z1)) ;
    cycloneii_lcell_ff reg_r14_10_ (.regout (r14_10_), .datain (r12[7]), .sdata (
                       r11[7]), .clk (i_clock_int), .ena (debug_num_5_dup0_1_), 
                       .aclr (1'b0), .sclr (1'b0), .sload (nx14428z1)) ;
    cycloneii_lcell_ff reg_r13_9_ (.regout (r13[9]), .datain (add3[9]), .sdata (
                       1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r13_8_ (.regout (r13[8]), .datain (add3[8]), .sdata (
                       1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r13_7_ (.regout (r13[7]), .datain (add3[7]), .sdata (
                       1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r13_6_ (.regout (r13[6]), .datain (add3[6]), .sdata (
                       1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r13_5_ (.regout (r13[5]), .datain (add3[5]), .sdata (
                       1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r13_4_ (.regout (r13[4]), .datain (add3[4]), .sdata (
                       1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r13_3_ (.regout (r13[3]), .datain (add3[3]), .sdata (
                       1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r13_2_ (.regout (r13[2]), .datain (add3[2]), .sdata (
                       1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r13_10_ (.regout (r13[10]), .datain (add3[10]), .sdata (
                       1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r13_1_ (.regout (r13[1]), .datain (add3[1]), .sdata (
                       1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r13_0_ (.regout (r13[0]), .datain (add3[0]), .sdata (
                       1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r12_9_ (.regout (r12[9]), .datain (r11[9]), .sdata (
                       r9[9]), .clk (i_clock_int), .ena (debug_num_5_dup0_1_), .aclr (
                       1'b0), .sclr (1'b0), .sload (nx24302z1)) ;
    cycloneii_lcell_ff reg_r12_8_ (.regout (r12[8]), .datain (r11[8]), .sdata (
                       r9[8]), .clk (i_clock_int), .ena (debug_num_5_dup0_1_), .aclr (
                       1'b0), .sclr (1'b0), .sload (nx24302z1)) ;
    cycloneii_lcell_ff reg_r12_7_ (.regout (r12[7]), .datain (r11[7]), .sdata (
                       r9[7]), .clk (i_clock_int), .ena (debug_num_5_dup0_1_), .aclr (
                       1'b0), .sclr (1'b0), .sload (nx24302z1)) ;
    cycloneii_lcell_ff reg_r12_6_ (.regout (r12[6]), .datain (r11[6]), .sdata (
                       r9[6]), .clk (i_clock_int), .ena (debug_num_5_dup0_1_), .aclr (
                       1'b0), .sclr (1'b0), .sload (nx24302z1)) ;
    cycloneii_lcell_ff reg_r12_5_ (.regout (r12[5]), .datain (r11[5]), .sdata (
                       r9[5]), .clk (i_clock_int), .ena (debug_num_5_dup0_1_), .aclr (
                       1'b0), .sclr (1'b0), .sload (nx24302z1)) ;
    cycloneii_lcell_ff reg_r12_4_ (.regout (r12[4]), .datain (r11[4]), .sdata (
                       r9[4]), .clk (i_clock_int), .ena (debug_num_5_dup0_1_), .aclr (
                       1'b0), .sclr (1'b0), .sload (nx24302z1)) ;
    cycloneii_lcell_ff reg_r12_3_ (.regout (r12[3]), .datain (r11[3]), .sdata (
                       r9[3]), .clk (i_clock_int), .ena (debug_num_5_dup0_1_), .aclr (
                       1'b0), .sclr (1'b0), .sload (nx24302z1)) ;
    cycloneii_lcell_ff reg_r12_2_ (.regout (r12[2]), .datain (r11[2]), .sdata (
                       r9[2]), .clk (i_clock_int), .ena (debug_num_5_dup0_1_), .aclr (
                       1'b0), .sclr (1'b0), .sload (nx24302z1)) ;
    cycloneii_lcell_ff reg_r12_1_ (.regout (r12[1]), .datain (r11[1]), .sdata (
                       r9[1]), .clk (i_clock_int), .ena (debug_num_5_dup0_1_), .aclr (
                       1'b0), .sclr (1'b0), .sload (nx24302z1)) ;
    cycloneii_lcell_ff reg_r12_0_ (.regout (r12[0]), .datain (r11[0]), .sdata (
                       r9[0]), .clk (i_clock_int), .ena (debug_num_5_dup0_1_), .aclr (
                       1'b0), .sclr (1'b0), .sload (nx24302z1)) ;
    cycloneii_lcell_ff reg_r11_9_ (.regout (r11[9]), .datain (add2[9]), .sdata (
                       1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r11_8_ (.regout (r11[8]), .datain (add2[8]), .sdata (
                       1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r11_7_ (.regout (r11[7]), .datain (add2[7]), .sdata (
                       1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r11_6_ (.regout (r11[6]), .datain (add2[6]), .sdata (
                       1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r11_5_ (.regout (r11[5]), .datain (add2[5]), .sdata (
                       1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r11_4_ (.regout (r11[4]), .datain (add2[4]), .sdata (
                       1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r11_3_ (.regout (r11[3]), .datain (add2[3]), .sdata (
                       1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r11_2_ (.regout (r11[2]), .datain (add2[2]), .sdata (
                       1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r11_1_ (.regout (r11[1]), .datain (add2[1]), .sdata (
                       1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r11_0_ (.regout (r11[0]), .datain (add2[0]), .sdata (
                       1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r1_7_ (.regout (r1[7]), .datain (nx41056z1), .sdata (
                       a[7]), .clk (i_clock_int), .ena (nx32637z3), .aclr (1'b0)
                       , .sclr (1'b0), .sload (v[0])) ;
    cycloneii_lcell_ff reg_r1_6_ (.regout (r1[6]), .datain (nx40059z1), .sdata (
                       a[6]), .clk (i_clock_int), .ena (nx32637z3), .aclr (1'b0)
                       , .sclr (1'b0), .sload (v[0])) ;
    cycloneii_lcell_ff reg_r1_5_ (.regout (r1[5]), .datain (nx39062z1), .sdata (
                       a[5]), .clk (i_clock_int), .ena (nx32637z3), .aclr (1'b0)
                       , .sclr (1'b0), .sload (v[0])) ;
    cycloneii_lcell_ff reg_r1_4_ (.regout (r1[4]), .datain (nx38065z1), .sdata (
                       a[4]), .clk (i_clock_int), .ena (nx32637z3), .aclr (1'b0)
                       , .sclr (1'b0), .sload (v[0])) ;
    cycloneii_lcell_ff reg_r1_3_ (.regout (r1[3]), .datain (nx37068z1), .sdata (
                       a[3]), .clk (i_clock_int), .ena (nx32637z3), .aclr (1'b0)
                       , .sclr (1'b0), .sload (v[0])) ;
    cycloneii_lcell_ff reg_r1_2_ (.regout (r1[2]), .datain (nx36071z1), .sdata (
                       a[2]), .clk (i_clock_int), .ena (nx32637z3), .aclr (1'b0)
                       , .sclr (1'b0), .sload (v[0])) ;
    cycloneii_lcell_ff reg_r1_1_ (.regout (r1[1]), .datain (nx35074z1), .sdata (
                       a[1]), .clk (i_clock_int), .ena (nx32637z3), .aclr (1'b0)
                       , .sclr (1'b0), .sload (v[0])) ;
    cycloneii_lcell_ff reg_r1_0_ (.regout (r1[0]), .datain (nx34077z1), .sdata (
                       a[0]), .clk (i_clock_int), .ena (nx32637z3), .aclr (1'b0)
                       , .sclr (1'b0), .sload (v[0])) ;
    cycloneii_lcell_ff reg_out_o_valid_obuf (.regout (nx51998z1), .datain (
                       nx28105z1), .sdata (1'b0), .clk (i_clock_int), .ena (1'b1
                       ), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_out_o_row_obuf_7_ (.regout (nx23314z1), .datain (
                       nx45613z1), .sdata (1'b0), .clk (i_clock_int), .ena (
                       nx45613z2), .aclr (1'b0), .sclr (nx17322z9), .sload (1'b0
                       )) ;
    cycloneii_lcell_ff reg_out_o_row_obuf_6_ (.regout (nx22317z1), .datain (
                       nx44616z1), .sdata (1'b0), .clk (i_clock_int), .ena (
                       nx45613z2), .aclr (1'b0), .sclr (nx17322z9), .sload (1'b0
                       )) ;
    cycloneii_lcell_ff reg_out_o_row_obuf_5_ (.regout (nx21320z1), .datain (
                       nx43619z1), .sdata (1'b0), .clk (i_clock_int), .ena (
                       nx45613z2), .aclr (1'b0), .sclr (nx17322z9), .sload (1'b0
                       )) ;
    cycloneii_lcell_ff reg_out_o_row_obuf_4_ (.regout (nx20323z1), .datain (
                       nx42622z1), .sdata (1'b0), .clk (i_clock_int), .ena (
                       nx45613z2), .aclr (1'b0), .sclr (nx17322z9), .sload (1'b0
                       )) ;
    cycloneii_lcell_ff reg_out_o_row_obuf_3_ (.regout (nx19326z1), .datain (
                       nx41625z1), .sdata (1'b0), .clk (i_clock_int), .ena (
                       nx45613z2), .aclr (1'b0), .sclr (nx17322z9), .sload (1'b0
                       )) ;
    cycloneii_lcell_ff reg_out_o_row_obuf_2_ (.regout (nx18329z1), .datain (
                       nx40628z1), .sdata (1'b0), .clk (i_clock_int), .ena (
                       nx45613z2), .aclr (1'b0), .sclr (nx17322z9), .sload (1'b0
                       )) ;
    cycloneii_lcell_ff reg_out_o_row_obuf_1_ (.regout (nx17332z1), .datain (
                       nx39631z1), .sdata (1'b0), .clk (i_clock_int), .ena (
                       nx45613z2), .aclr (1'b0), .sclr (nx17322z9), .sload (1'b0
                       )) ;
    cycloneii_lcell_ff reg_out_o_row_obuf_0_ (.regout (nx16335z1), .datain (
                       nx38634z1), .sdata (1'b0), .clk (i_clock_int), .ena (
                       nx45613z2), .aclr (1'b0), .sclr (nx17322z9), .sload (1'b0
                       )) ;
    cycloneii_lcell_ff reg_mode_1_ (.regout (o_mode_dup0[1]), .datain (nx25376z1
                       ), .sdata (1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (
                       1'b0), .sclr (i_reset_int), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_mode_0_ (.regout (nx47893z1), .datain (nx26373z1), .sdata (
                       1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       i_reset_int), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_in_i_pixel_ibuf_7_ (.regout (e[7]), .datain (
                       i_pixel_int[7]), .sdata (1'b0), .clk (i_clock_int), .ena (
                       i_valid_int), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_in_i_pixel_ibuf_6_ (.regout (e[6]), .datain (
                       i_pixel_int[6]), .sdata (1'b0), .clk (i_clock_int), .ena (
                       i_valid_int), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_in_i_pixel_ibuf_5_ (.regout (e[5]), .datain (
                       i_pixel_int[5]), .sdata (1'b0), .clk (i_clock_int), .ena (
                       i_valid_int), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_in_i_pixel_ibuf_4_ (.regout (e[4]), .datain (
                       i_pixel_int[4]), .sdata (1'b0), .clk (i_clock_int), .ena (
                       i_valid_int), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_in_i_pixel_ibuf_3_ (.regout (e[3]), .datain (
                       i_pixel_int[3]), .sdata (1'b0), .clk (i_clock_int), .ena (
                       i_valid_int), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_in_i_pixel_ibuf_2_ (.regout (e[2]), .datain (
                       i_pixel_int[2]), .sdata (1'b0), .clk (i_clock_int), .ena (
                       i_valid_int), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_in_i_pixel_ibuf_1_ (.regout (e[1]), .datain (
                       i_pixel_int[1]), .sdata (1'b0), .clk (i_clock_int), .ena (
                       i_valid_int), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_in_i_pixel_ibuf_0_ (.regout (e[0]), .datain (
                       i_pixel_int[0]), .sdata (1'b0), .clk (i_clock_int), .ena (
                       i_valid_int), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_i_7_ (.regout (i[7]), .datain (d[7]), .sdata (1'b0), 
                       .clk (i_clock_int), .ena (i_valid_int), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_i_6_ (.regout (i[6]), .datain (d[6]), .sdata (1'b0), 
                       .clk (i_clock_int), .ena (i_valid_int), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_i_5_ (.regout (i[5]), .datain (d[5]), .sdata (1'b0), 
                       .clk (i_clock_int), .ena (i_valid_int), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_i_4_ (.regout (i[4]), .datain (d[4]), .sdata (1'b0), 
                       .clk (i_clock_int), .ena (i_valid_int), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_i_3_ (.regout (i[3]), .datain (d[3]), .sdata (1'b0), 
                       .clk (i_clock_int), .ena (i_valid_int), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_i_2_ (.regout (i[2]), .datain (d[2]), .sdata (1'b0), 
                       .clk (i_clock_int), .ena (i_valid_int), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_i_1_ (.regout (i[1]), .datain (d[1]), .sdata (1'b0), 
                       .clk (i_clock_int), .ena (i_valid_int), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_i_0_ (.regout (i[0]), .datain (d[0]), .sdata (1'b0), 
                       .clk (i_clock_int), .ena (i_valid_int), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_h_7_ (.regout (h[7]), .datain (i[7]), .sdata (1'b0), 
                       .clk (i_clock_int), .ena (i_valid_int), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_h_6_ (.regout (h[6]), .datain (i[6]), .sdata (1'b0), 
                       .clk (i_clock_int), .ena (i_valid_int), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_h_5_ (.regout (h[5]), .datain (i[5]), .sdata (1'b0), 
                       .clk (i_clock_int), .ena (i_valid_int), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_h_4_ (.regout (h[4]), .datain (i[4]), .sdata (1'b0), 
                       .clk (i_clock_int), .ena (i_valid_int), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_h_3_ (.regout (h[3]), .datain (i[3]), .sdata (1'b0), 
                       .clk (i_clock_int), .ena (i_valid_int), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_h_2_ (.regout (h[2]), .datain (i[2]), .sdata (1'b0), 
                       .clk (i_clock_int), .ena (i_valid_int), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_h_1_ (.regout (h[1]), .datain (i[1]), .sdata (1'b0), 
                       .clk (i_clock_int), .ena (i_valid_int), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_h_0_ (.regout (h[0]), .datain (i[0]), .sdata (1'b0), 
                       .clk (i_clock_int), .ena (i_valid_int), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_g_7_ (.regout (g[7]), .datain (f[7]), .sdata (1'b0), 
                       .clk (i_clock_int), .ena (i_valid_int), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_g_6_ (.regout (g[6]), .datain (f[6]), .sdata (1'b0), 
                       .clk (i_clock_int), .ena (i_valid_int), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_g_5_ (.regout (g[5]), .datain (f[5]), .sdata (1'b0), 
                       .clk (i_clock_int), .ena (i_valid_int), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_g_4_ (.regout (g[4]), .datain (f[4]), .sdata (1'b0), 
                       .clk (i_clock_int), .ena (i_valid_int), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_g_3_ (.regout (g[3]), .datain (f[3]), .sdata (1'b0), 
                       .clk (i_clock_int), .ena (i_valid_int), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_g_2_ (.regout (g[2]), .datain (f[2]), .sdata (1'b0), 
                       .clk (i_clock_int), .ena (i_valid_int), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_g_1_ (.regout (g[1]), .datain (f[1]), .sdata (1'b0), 
                       .clk (i_clock_int), .ena (i_valid_int), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_g_0_ (.regout (g[0]), .datain (f[0]), .sdata (1'b0), 
                       .clk (i_clock_int), .ena (i_valid_int), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_f_7_ (.regout (f[7]), .datain (e[7]), .sdata (1'b0), 
                       .clk (i_clock_int), .ena (i_valid_int), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_f_6_ (.regout (f[6]), .datain (e[6]), .sdata (1'b0), 
                       .clk (i_clock_int), .ena (i_valid_int), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_f_5_ (.regout (f[5]), .datain (e[5]), .sdata (1'b0), 
                       .clk (i_clock_int), .ena (i_valid_int), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_f_4_ (.regout (f[4]), .datain (e[4]), .sdata (1'b0), 
                       .clk (i_clock_int), .ena (i_valid_int), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_f_3_ (.regout (f[3]), .datain (e[3]), .sdata (1'b0), 
                       .clk (i_clock_int), .ena (i_valid_int), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_f_2_ (.regout (f[2]), .datain (e[2]), .sdata (1'b0), 
                       .clk (i_clock_int), .ena (i_valid_int), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_f_1_ (.regout (f[1]), .datain (e[1]), .sdata (1'b0), 
                       .clk (i_clock_int), .ena (i_valid_int), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_f_0_ (.regout (f[0]), .datain (e[0]), .sdata (1'b0), 
                       .clk (i_clock_int), .ena (i_valid_int), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_end_of_img (.regout (end_of_img), .datain (nx6176z1)
                       , .sdata (1'b0), .clk (i_clock_int), .ena (nx6176z10), .aclr (
                       1'b0), .sclr (i_reset_int), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_dir7_2_ (.regout (dir7[2]), .datain (nx44114z1), .sdata (
                       1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_dir7_1_ (.regout (dir7[1]), .datain (nx45111z1), .sdata (
                       1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_dir7_0_ (.regout (dir7[0]), .datain (nx46108z1), .sdata (
                       1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_dir6_2_ (.regout (dir6_2_), .datain (nx35695z1), .sdata (
                       1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_dir6_1_ (.regout (nx45111z2), .datain (NOT_dir5_1_), 
                       .sdata (1'b0), .clk (i_clock_int), .ena (nx36692z1), .aclr (
                       1'b0), .sclr (nx36692z2), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_dir6_0_ (.regout (nx46108z3), .datain (NOT_dir5_0_), 
                       .sdata (1'b0), .clk (i_clock_int), .ena (nx36692z1), .aclr (
                       1'b0), .sclr (nx36692z2), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_dir5_2_ (.regout (dir5[2]), .datain (dir5_23n5ss1_2_)
                       , .sdata (1'b0), .clk (i_clock_int), .ena (v[4]), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_dir5_1_ (.regout (dir5[1]), .datain (nx24302z1), .sdata (
                       1'b0), .clk (i_clock_int), .ena (v[4]), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_dir5_0_ (.regout (dir5[0]), .datain (dir2_2_), .sdata (
                       1'b0), .clk (i_clock_int), .ena (v[4]), .aclr (1'b0), .sclr (
                       nx36266z1), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_dir4_2_ (.regout (dir4_2_), .datain (nx46679z1), .sdata (
                       1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_dir4_0_ (.regout (dir4_0_), .datain (nx44685z1), .sdata (
                       1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_dir3_2_ (.regout (dir3_2_), .datain (nx10438z1), .sdata (
                       1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_dir2_2_ (.regout (dir2_2_), .datain (nx2019z1), .sdata (
                       1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_dir1_2_ (.regout (dir1_2_), .datain (sub1_8_), .sdata (
                       1'b0), .clk (i_clock_int), .ena (v[1]), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_d_7_ (.regout (d[7]), .datain (nx36625z1), .sdata (
                       q2[7]), .clk (i_clock_int), .ena (nx20492z2), .aclr (1'b0
                       ), .sclr (1'b0), .sload (t[1])) ;
    cycloneii_lcell_ff reg_d_6_ (.regout (d[6]), .datain (nx35628z1), .sdata (
                       q2[6]), .clk (i_clock_int), .ena (nx20492z2), .aclr (1'b0
                       ), .sclr (1'b0), .sload (t[1])) ;
    cycloneii_lcell_ff reg_d_5_ (.regout (d[5]), .datain (nx34631z1), .sdata (
                       q2[5]), .clk (i_clock_int), .ena (nx20492z2), .aclr (1'b0
                       ), .sclr (1'b0), .sload (t[1])) ;
    cycloneii_lcell_ff reg_d_4_ (.regout (d[4]), .datain (nx33634z1), .sdata (
                       q2[4]), .clk (i_clock_int), .ena (nx20492z2), .aclr (1'b0
                       ), .sclr (1'b0), .sload (t[1])) ;
    cycloneii_lcell_ff reg_d_3_ (.regout (d[3]), .datain (nx32637z4), .sdata (
                       q2[3]), .clk (i_clock_int), .ena (nx20492z2), .aclr (1'b0
                       ), .sclr (1'b0), .sload (t[1])) ;
    cycloneii_lcell_ff reg_d_2_ (.regout (d[2]), .datain (nx31640z3), .sdata (
                       q2[2]), .clk (i_clock_int), .ena (nx20492z2), .aclr (1'b0
                       ), .sclr (1'b0), .sload (t[1])) ;
    cycloneii_lcell_ff reg_d_1_ (.regout (d[1]), .datain (nx30643z3), .sdata (
                       q2[1]), .clk (i_clock_int), .ena (nx20492z2), .aclr (1'b0
                       ), .sclr (1'b0), .sload (t[1])) ;
    cycloneii_lcell_ff reg_d_0_ (.regout (d[0]), .datain (nx29646z3), .sdata (
                       q2[0]), .clk (i_clock_int), .ena (nx20492z2), .aclr (1'b0
                       ), .sclr (1'b0), .sload (t[1])) ;
    cycloneii_lcell_ff reg_c_7_ (.regout (c[7]), .datain (nx20492z1), .sdata (
                       q1[7]), .clk (i_clock_int), .ena (nx20492z2), .aclr (1'b0
                       ), .sclr (1'b0), .sload (t[1])) ;
    cycloneii_lcell_ff reg_c_6_ (.regout (c[6]), .datain (nx21489z1), .sdata (
                       q1[6]), .clk (i_clock_int), .ena (nx20492z2), .aclr (1'b0
                       ), .sclr (1'b0), .sload (t[1])) ;
    cycloneii_lcell_ff reg_c_5_ (.regout (c[5]), .datain (nx22486z1), .sdata (
                       q1[5]), .clk (i_clock_int), .ena (nx20492z2), .aclr (1'b0
                       ), .sclr (1'b0), .sload (t[1])) ;
    cycloneii_lcell_ff reg_c_4_ (.regout (c[4]), .datain (nx23483z1), .sdata (
                       q1[4]), .clk (i_clock_int), .ena (nx20492z2), .aclr (1'b0
                       ), .sclr (1'b0), .sload (t[1])) ;
    cycloneii_lcell_ff reg_c_3_ (.regout (c[3]), .datain (nx24480z1), .sdata (
                       q1[3]), .clk (i_clock_int), .ena (nx20492z2), .aclr (1'b0
                       ), .sclr (1'b0), .sload (t[1])) ;
    cycloneii_lcell_ff reg_c_2_ (.regout (c[2]), .datain (nx25477z1), .sdata (
                       q1[2]), .clk (i_clock_int), .ena (nx20492z2), .aclr (1'b0
                       ), .sclr (1'b0), .sload (t[1])) ;
    cycloneii_lcell_ff reg_c_1_ (.regout (c[1]), .datain (nx26474z1), .sdata (
                       q1[1]), .clk (i_clock_int), .ena (nx20492z2), .aclr (1'b0
                       ), .sclr (1'b0), .sload (t[1])) ;
    cycloneii_lcell_ff reg_c_0_ (.regout (c[0]), .datain (nx27471z1), .sdata (
                       q1[0]), .clk (i_clock_int), .ena (nx20492z2), .aclr (1'b0
                       ), .sclr (1'b0), .sload (t[1])) ;
    cycloneii_lcell_ff reg_b_7_ (.regout (b[7]), .datain (c[7]), .sdata (1'b0), 
                       .clk (i_clock_int), .ena (i_valid_int), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_b_6_ (.regout (b[6]), .datain (c[6]), .sdata (1'b0), 
                       .clk (i_clock_int), .ena (i_valid_int), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_b_5_ (.regout (b[5]), .datain (c[5]), .sdata (1'b0), 
                       .clk (i_clock_int), .ena (i_valid_int), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_b_4_ (.regout (b[4]), .datain (c[4]), .sdata (1'b0), 
                       .clk (i_clock_int), .ena (i_valid_int), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_b_3_ (.regout (b[3]), .datain (c[3]), .sdata (1'b0), 
                       .clk (i_clock_int), .ena (i_valid_int), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_b_2_ (.regout (b[2]), .datain (c[2]), .sdata (1'b0), 
                       .clk (i_clock_int), .ena (i_valid_int), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_b_1_ (.regout (b[1]), .datain (c[1]), .sdata (1'b0), 
                       .clk (i_clock_int), .ena (i_valid_int), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_b_0_ (.regout (b[0]), .datain (c[0]), .sdata (1'b0), 
                       .clk (i_clock_int), .ena (i_valid_int), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_a_7_ (.regout (a[7]), .datain (b[7]), .sdata (1'b0), 
                       .clk (i_clock_int), .ena (i_valid_int), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_a_6_ (.regout (a[6]), .datain (b[6]), .sdata (1'b0), 
                       .clk (i_clock_int), .ena (i_valid_int), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_a_5_ (.regout (a[5]), .datain (b[5]), .sdata (1'b0), 
                       .clk (i_clock_int), .ena (i_valid_int), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_a_4_ (.regout (a[4]), .datain (b[4]), .sdata (1'b0), 
                       .clk (i_clock_int), .ena (i_valid_int), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_a_3_ (.regout (a[3]), .datain (b[3]), .sdata (1'b0), 
                       .clk (i_clock_int), .ena (i_valid_int), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_a_2_ (.regout (a[2]), .datain (b[2]), .sdata (1'b0), 
                       .clk (i_clock_int), .ena (i_valid_int), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_a_1_ (.regout (a[1]), .datain (b[1]), .sdata (1'b0), 
                       .clk (i_clock_int), .ena (i_valid_int), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_a_0_ (.regout (a[0]), .datain (b[0]), .sdata (1'b0), 
                       .clk (i_clock_int), .ena (i_valid_int), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_io o_mode_obuf_1_ (.padio (o_mode[1]), .datain (o_mode_dup0[1]), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam o_mode_obuf_1_.operation_mode = "output";
                 
                 defparam o_mode_obuf_1_.output_register_mode = "none";
                 
                 defparam o_mode_obuf_1_.tie_off_output_clock_enable = "false";
                 
                 defparam o_mode_obuf_1_.oe_register_mode = "none";
                 
                 defparam o_mode_obuf_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_mode_obuf_1_.input_register_mode = "none";
    cycloneii_io o_mode_obuf_0_ (.padio (o_mode[0]), .datain (o_mode_dup0[0]), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam o_mode_obuf_0_.operation_mode = "output";
                 
                 defparam o_mode_obuf_0_.output_register_mode = "none";
                 
                 defparam o_mode_obuf_0_.tie_off_output_clock_enable = "false";
                 
                 defparam o_mode_obuf_0_.oe_register_mode = "none";
                 
                 defparam o_mode_obuf_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_mode_obuf_0_.input_register_mode = "none";
    cycloneii_io o_edge_obuf (.padio (o_edge), .datain (o_edge_dup0), .oe (1'b1)
                 , .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam o_edge_obuf.operation_mode = "output";
                 
                 defparam o_edge_obuf.output_register_mode = "none";
                 
                 defparam o_edge_obuf.tie_off_output_clock_enable = "false";
                 
                 defparam o_edge_obuf.oe_register_mode = "none";
                 
                 defparam o_edge_obuf.tie_off_oe_clock_enable = "false";
                 
                 defparam o_edge_obuf.input_register_mode = "none";
    cycloneii_io o_dir_obuf_2_ (.padio (o_dir[2]), .datain (o_dir_dup0[2]), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam o_dir_obuf_2_.operation_mode = "output";
                 
                 defparam o_dir_obuf_2_.output_register_mode = "none";
                 
                 defparam o_dir_obuf_2_.tie_off_output_clock_enable = "false";
                 
                 defparam o_dir_obuf_2_.oe_register_mode = "none";
                 
                 defparam o_dir_obuf_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_dir_obuf_2_.input_register_mode = "none";
    cycloneii_io o_dir_obuf_1_ (.padio (o_dir[1]), .datain (o_dir_dup0[1]), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam o_dir_obuf_1_.operation_mode = "output";
                 
                 defparam o_dir_obuf_1_.output_register_mode = "none";
                 
                 defparam o_dir_obuf_1_.tie_off_output_clock_enable = "false";
                 
                 defparam o_dir_obuf_1_.oe_register_mode = "none";
                 
                 defparam o_dir_obuf_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_dir_obuf_1_.input_register_mode = "none";
    cycloneii_io o_dir_obuf_0_ (.padio (o_dir[0]), .datain (o_dir_dup0[0]), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam o_dir_obuf_0_.operation_mode = "output";
                 
                 defparam o_dir_obuf_0_.output_register_mode = "none";
                 
                 defparam o_dir_obuf_0_.tie_off_output_clock_enable = "false";
                 
                 defparam o_dir_obuf_0_.oe_register_mode = "none";
                 
                 defparam o_dir_obuf_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_dir_obuf_0_.input_register_mode = "none";
    cycloneii_io ix37378z43919 (.combout (i_pixel_int[7]), .padio (i_pixel[7]), 
                 .datain (1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), 
                 .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)
                 ) ;
                 defparam ix37378z43919.operation_mode = "input";
                 defparam ix37378z43919.output_register_mode = "none";
                 
                 defparam ix37378z43919.tie_off_output_clock_enable = "false";
                 defparam ix37378z43919.oe_register_mode = "none";
                 defparam ix37378z43919.tie_off_oe_clock_enable = "false";
                 defparam ix37378z43919.input_register_mode = "none";
    cycloneii_io ix19087z43919 (.combout (i_pixel_int[6]), .padio (i_pixel[6]), 
                 .datain (1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), 
                 .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)
                 ) ;
                 defparam ix19087z43919.operation_mode = "input";
                 defparam ix19087z43919.output_register_mode = "none";
                 
                 defparam ix19087z43919.tie_off_output_clock_enable = "false";
                 defparam ix19087z43919.oe_register_mode = "none";
                 defparam ix19087z43919.tie_off_oe_clock_enable = "false";
                 defparam ix19087z43919.input_register_mode = "none";
    cycloneii_io ix19087z43920 (.combout (i_pixel_int[5]), .padio (i_pixel[5]), 
                 .datain (1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), 
                 .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)
                 ) ;
                 defparam ix19087z43920.operation_mode = "input";
                 defparam ix19087z43920.output_register_mode = "none";
                 
                 defparam ix19087z43920.tie_off_output_clock_enable = "false";
                 defparam ix19087z43920.oe_register_mode = "none";
                 defparam ix19087z43920.tie_off_oe_clock_enable = "false";
                 defparam ix19087z43920.input_register_mode = "none";
    cycloneii_io ix19087z43921 (.combout (i_pixel_int[4]), .padio (i_pixel[4]), 
                 .datain (1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), 
                 .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)
                 ) ;
                 defparam ix19087z43921.operation_mode = "input";
                 defparam ix19087z43921.output_register_mode = "none";
                 
                 defparam ix19087z43921.tie_off_output_clock_enable = "false";
                 defparam ix19087z43921.oe_register_mode = "none";
                 defparam ix19087z43921.tie_off_oe_clock_enable = "false";
                 defparam ix19087z43921.input_register_mode = "none";
    cycloneii_io ix19087z43922 (.combout (i_pixel_int[3]), .padio (i_pixel[3]), 
                 .datain (1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), 
                 .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)
                 ) ;
                 defparam ix19087z43922.operation_mode = "input";
                 defparam ix19087z43922.output_register_mode = "none";
                 
                 defparam ix19087z43922.tie_off_output_clock_enable = "false";
                 defparam ix19087z43922.oe_register_mode = "none";
                 defparam ix19087z43922.tie_off_oe_clock_enable = "false";
                 defparam ix19087z43922.input_register_mode = "none";
    cycloneii_io ix19087z43923 (.combout (i_pixel_int[2]), .padio (i_pixel[2]), 
                 .datain (1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), 
                 .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)
                 ) ;
                 defparam ix19087z43923.operation_mode = "input";
                 defparam ix19087z43923.output_register_mode = "none";
                 
                 defparam ix19087z43923.tie_off_output_clock_enable = "false";
                 defparam ix19087z43923.oe_register_mode = "none";
                 defparam ix19087z43923.tie_off_oe_clock_enable = "false";
                 defparam ix19087z43923.input_register_mode = "none";
    cycloneii_io ix19087z43924 (.combout (i_pixel_int[1]), .padio (i_pixel[1]), 
                 .datain (1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), 
                 .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)
                 ) ;
                 defparam ix19087z43924.operation_mode = "input";
                 defparam ix19087z43924.output_register_mode = "none";
                 
                 defparam ix19087z43924.tie_off_output_clock_enable = "false";
                 defparam ix19087z43924.oe_register_mode = "none";
                 defparam ix19087z43924.tie_off_oe_clock_enable = "false";
                 defparam ix19087z43924.input_register_mode = "none";
    cycloneii_io ix19087z43925 (.combout (i_pixel_int[0]), .padio (i_pixel[0]), 
                 .datain (1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), 
                 .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)
                 ) ;
                 defparam ix19087z43925.operation_mode = "input";
                 defparam ix19087z43925.output_register_mode = "none";
                 
                 defparam ix19087z43925.tie_off_output_clock_enable = "false";
                 defparam ix19087z43925.oe_register_mode = "none";
                 defparam ix19087z43925.tie_off_oe_clock_enable = "false";
                 defparam ix19087z43925.input_register_mode = "none";
    cycloneii_io ix51998z43919 (.padio (o_valid), .datain (nx51998z1), .oe (1'b1
                 ), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix51998z43919.operation_mode = "output";
                 
                 defparam ix51998z43919.output_register_mode = "none";
                 
                 defparam ix51998z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix51998z43919.oe_register_mode = "none";
                 
                 defparam ix51998z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix51998z43919.input_register_mode = "none";
    cycloneii_io ix23314z43919 (.padio (o_row[7]), .datain (nx23314z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix23314z43919.operation_mode = "output";
                 
                 defparam ix23314z43919.output_register_mode = "none";
                 
                 defparam ix23314z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix23314z43919.oe_register_mode = "none";
                 
                 defparam ix23314z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix23314z43919.input_register_mode = "none";
    cycloneii_io ix22317z43919 (.padio (o_row[6]), .datain (nx22317z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix22317z43919.operation_mode = "output";
                 
                 defparam ix22317z43919.output_register_mode = "none";
                 
                 defparam ix22317z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix22317z43919.oe_register_mode = "none";
                 
                 defparam ix22317z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix22317z43919.input_register_mode = "none";
    cycloneii_io ix21320z43919 (.padio (o_row[5]), .datain (nx21320z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix21320z43919.operation_mode = "output";
                 
                 defparam ix21320z43919.output_register_mode = "none";
                 
                 defparam ix21320z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix21320z43919.oe_register_mode = "none";
                 
                 defparam ix21320z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix21320z43919.input_register_mode = "none";
    cycloneii_io ix20323z43919 (.padio (o_row[4]), .datain (nx20323z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix20323z43919.operation_mode = "output";
                 
                 defparam ix20323z43919.output_register_mode = "none";
                 
                 defparam ix20323z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix20323z43919.oe_register_mode = "none";
                 
                 defparam ix20323z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix20323z43919.input_register_mode = "none";
    cycloneii_io ix19326z43919 (.padio (o_row[3]), .datain (nx19326z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix19326z43919.operation_mode = "output";
                 
                 defparam ix19326z43919.output_register_mode = "none";
                 
                 defparam ix19326z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix19326z43919.oe_register_mode = "none";
                 
                 defparam ix19326z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix19326z43919.input_register_mode = "none";
    cycloneii_io ix18329z43919 (.padio (o_row[2]), .datain (nx18329z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix18329z43919.operation_mode = "output";
                 
                 defparam ix18329z43919.output_register_mode = "none";
                 
                 defparam ix18329z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix18329z43919.oe_register_mode = "none";
                 
                 defparam ix18329z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix18329z43919.input_register_mode = "none";
    cycloneii_io ix17332z43919 (.padio (o_row[1]), .datain (nx17332z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix17332z43919.operation_mode = "output";
                 
                 defparam ix17332z43919.output_register_mode = "none";
                 
                 defparam ix17332z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix17332z43919.oe_register_mode = "none";
                 
                 defparam ix17332z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix17332z43919.input_register_mode = "none";
    cycloneii_io ix16335z43919 (.padio (o_row[0]), .datain (nx16335z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix16335z43919.operation_mode = "output";
                 
                 defparam ix16335z43919.output_register_mode = "none";
                 
                 defparam ix16335z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix16335z43919.oe_register_mode = "none";
                 
                 defparam ix16335z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix16335z43919.input_register_mode = "none";
    cycloneii_io i_valid_ibuf (.combout (i_valid_int), .padio (i_valid), .datain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam i_valid_ibuf.operation_mode = "input";
                 
                 defparam i_valid_ibuf.output_register_mode = "none";
                 
                 defparam i_valid_ibuf.tie_off_output_clock_enable = "false";
                 
                 defparam i_valid_ibuf.oe_register_mode = "none";
                 
                 defparam i_valid_ibuf.tie_off_oe_clock_enable = "false";
                 
                 defparam i_valid_ibuf.input_register_mode = "none";
    cycloneii_io i_reset_ibuf (.combout (i_reset_int), .padio (i_reset), .datain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam i_reset_ibuf.operation_mode = "input";
                 
                 defparam i_reset_ibuf.output_register_mode = "none";
                 
                 defparam i_reset_ibuf.tie_off_output_clock_enable = "false";
                 
                 defparam i_reset_ibuf.oe_register_mode = "none";
                 
                 defparam i_reset_ibuf.tie_off_oe_clock_enable = "false";
                 
                 defparam i_reset_ibuf.input_register_mode = "none";
    cycloneii_io i_clock_ibuf (.combout (i_clock_int), .padio (i_clock), .datain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam i_clock_ibuf.operation_mode = "input";
                 
                 defparam i_clock_ibuf.output_register_mode = "none";
                 
                 defparam i_clock_ibuf.tie_off_output_clock_enable = "false";
                 
                 defparam i_clock_ibuf.oe_register_mode = "none";
                 
                 defparam i_clock_ibuf.tie_off_oe_clock_enable = "false";
                 
                 defparam i_clock_ibuf.input_register_mode = "none";
    cycloneii_io debug_num_5_obuf_3_ (.padio (debug_num_5[3]), .datain (
                 debug_num_5_dup0_1_), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_num_5_obuf_3_.operation_mode = "output";
                 
                 defparam debug_num_5_obuf_3_.output_register_mode = "none";
                 
                 defparam debug_num_5_obuf_3_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_5_obuf_3_.oe_register_mode = "none";
                 
                 defparam debug_num_5_obuf_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_5_obuf_3_.input_register_mode = "none";
    cycloneii_io debug_num_5_obuf_2_ (.padio (debug_num_5[2]), .datain (
                 debug_num_5_dup0_1_), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_num_5_obuf_2_.operation_mode = "output";
                 
                 defparam debug_num_5_obuf_2_.output_register_mode = "none";
                 
                 defparam debug_num_5_obuf_2_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_5_obuf_2_.oe_register_mode = "none";
                 
                 defparam debug_num_5_obuf_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_5_obuf_2_.input_register_mode = "none";
    cycloneii_io debug_num_5_obuf_1_ (.padio (debug_num_5[1]), .datain (
                 debug_num_5_dup0_1_), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_num_5_obuf_1_.operation_mode = "output";
                 
                 defparam debug_num_5_obuf_1_.output_register_mode = "none";
                 
                 defparam debug_num_5_obuf_1_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_5_obuf_1_.oe_register_mode = "none";
                 
                 defparam debug_num_5_obuf_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_5_obuf_1_.input_register_mode = "none";
    cycloneii_io debug_num_5_obuf_0_ (.padio (debug_num_5[0]), .datain (
                 debug_num_5_dup0[17]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_num_5_obuf_0_.operation_mode = "output";
                 
                 defparam debug_num_5_obuf_0_.output_register_mode = "none";
                 
                 defparam debug_num_5_obuf_0_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_5_obuf_0_.oe_register_mode = "none";
                 
                 defparam debug_num_5_obuf_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_5_obuf_0_.input_register_mode = "none";
    cycloneii_io debug_num_4_obuf_3_ (.padio (debug_num_4[3]), .datain (
                 debug_num_5_dup0_1_), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_num_4_obuf_3_.operation_mode = "output";
                 
                 defparam debug_num_4_obuf_3_.output_register_mode = "none";
                 
                 defparam debug_num_4_obuf_3_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_4_obuf_3_.oe_register_mode = "none";
                 
                 defparam debug_num_4_obuf_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_4_obuf_3_.input_register_mode = "none";
    cycloneii_io debug_num_4_obuf_2_ (.padio (debug_num_4[2]), .datain (
                 debug_num_5_dup0_1_), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_num_4_obuf_2_.operation_mode = "output";
                 
                 defparam debug_num_4_obuf_2_.output_register_mode = "none";
                 
                 defparam debug_num_4_obuf_2_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_4_obuf_2_.oe_register_mode = "none";
                 
                 defparam debug_num_4_obuf_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_4_obuf_2_.input_register_mode = "none";
    cycloneii_io debug_num_4_obuf_1_ (.padio (debug_num_4[1]), .datain (
                 debug_num_5_dup0[17]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_num_4_obuf_1_.operation_mode = "output";
                 
                 defparam debug_num_4_obuf_1_.output_register_mode = "none";
                 
                 defparam debug_num_4_obuf_1_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_4_obuf_1_.oe_register_mode = "none";
                 
                 defparam debug_num_4_obuf_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_4_obuf_1_.input_register_mode = "none";
    cycloneii_io debug_num_4_obuf_0_ (.padio (debug_num_4[0]), .datain (
                 debug_num_5_dup0[17]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_num_4_obuf_0_.operation_mode = "output";
                 
                 defparam debug_num_4_obuf_0_.output_register_mode = "none";
                 
                 defparam debug_num_4_obuf_0_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_4_obuf_0_.oe_register_mode = "none";
                 
                 defparam debug_num_4_obuf_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_4_obuf_0_.input_register_mode = "none";
    cycloneii_io debug_num_3_obuf_3_ (.padio (debug_num_3[3]), .datain (
                 debug_num_5_dup0_1_), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_num_3_obuf_3_.operation_mode = "output";
                 
                 defparam debug_num_3_obuf_3_.output_register_mode = "none";
                 
                 defparam debug_num_3_obuf_3_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_3_obuf_3_.oe_register_mode = "none";
                 
                 defparam debug_num_3_obuf_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_3_obuf_3_.input_register_mode = "none";
    cycloneii_io debug_num_3_obuf_2_ (.padio (debug_num_3[2]), .datain (
                 debug_num_5_dup0_1_), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_num_3_obuf_2_.operation_mode = "output";
                 
                 defparam debug_num_3_obuf_2_.output_register_mode = "none";
                 
                 defparam debug_num_3_obuf_2_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_3_obuf_2_.oe_register_mode = "none";
                 
                 defparam debug_num_3_obuf_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_3_obuf_2_.input_register_mode = "none";
    cycloneii_io debug_num_3_obuf_1_ (.padio (debug_num_3[1]), .datain (
                 debug_num_5_dup0_1_), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_num_3_obuf_1_.operation_mode = "output";
                 
                 defparam debug_num_3_obuf_1_.output_register_mode = "none";
                 
                 defparam debug_num_3_obuf_1_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_3_obuf_1_.oe_register_mode = "none";
                 
                 defparam debug_num_3_obuf_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_3_obuf_1_.input_register_mode = "none";
    cycloneii_io debug_num_3_obuf_0_ (.padio (debug_num_3[0]), .datain (
                 debug_num_5_dup0[17]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_num_3_obuf_0_.operation_mode = "output";
                 
                 defparam debug_num_3_obuf_0_.output_register_mode = "none";
                 
                 defparam debug_num_3_obuf_0_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_3_obuf_0_.oe_register_mode = "none";
                 
                 defparam debug_num_3_obuf_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_3_obuf_0_.input_register_mode = "none";
    cycloneii_io debug_num_2_obuf_3_ (.padio (debug_num_2[3]), .datain (
                 debug_num_5_dup0[17]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_num_2_obuf_3_.operation_mode = "output";
                 
                 defparam debug_num_2_obuf_3_.output_register_mode = "none";
                 
                 defparam debug_num_2_obuf_3_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_2_obuf_3_.oe_register_mode = "none";
                 
                 defparam debug_num_2_obuf_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_2_obuf_3_.input_register_mode = "none";
    cycloneii_io debug_num_2_obuf_2_ (.padio (debug_num_2[2]), .datain (
                 debug_num_5_dup0[17]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_num_2_obuf_2_.operation_mode = "output";
                 
                 defparam debug_num_2_obuf_2_.output_register_mode = "none";
                 
                 defparam debug_num_2_obuf_2_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_2_obuf_2_.oe_register_mode = "none";
                 
                 defparam debug_num_2_obuf_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_2_obuf_2_.input_register_mode = "none";
    cycloneii_io debug_num_2_obuf_1_ (.padio (debug_num_2[1]), .datain (
                 debug_num_5_dup0_1_), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_num_2_obuf_1_.operation_mode = "output";
                 
                 defparam debug_num_2_obuf_1_.output_register_mode = "none";
                 
                 defparam debug_num_2_obuf_1_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_2_obuf_1_.oe_register_mode = "none";
                 
                 defparam debug_num_2_obuf_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_2_obuf_1_.input_register_mode = "none";
    cycloneii_io debug_num_2_obuf_0_ (.padio (debug_num_2[0]), .datain (
                 debug_num_5_dup0_1_), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_num_2_obuf_0_.operation_mode = "output";
                 
                 defparam debug_num_2_obuf_0_.output_register_mode = "none";
                 
                 defparam debug_num_2_obuf_0_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_2_obuf_0_.oe_register_mode = "none";
                 
                 defparam debug_num_2_obuf_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_2_obuf_0_.input_register_mode = "none";
    cycloneii_io debug_num_1_obuf_3_ (.padio (debug_num_1[3]), .datain (
                 debug_num_5_dup0[17]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_num_1_obuf_3_.operation_mode = "output";
                 
                 defparam debug_num_1_obuf_3_.output_register_mode = "none";
                 
                 defparam debug_num_1_obuf_3_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_1_obuf_3_.oe_register_mode = "none";
                 
                 defparam debug_num_1_obuf_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_1_obuf_3_.input_register_mode = "none";
    cycloneii_io debug_num_1_obuf_2_ (.padio (debug_num_1[2]), .datain (
                 debug_num_5_dup0[17]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_num_1_obuf_2_.operation_mode = "output";
                 
                 defparam debug_num_1_obuf_2_.output_register_mode = "none";
                 
                 defparam debug_num_1_obuf_2_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_1_obuf_2_.oe_register_mode = "none";
                 
                 defparam debug_num_1_obuf_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_1_obuf_2_.input_register_mode = "none";
    cycloneii_io debug_num_1_obuf_1_ (.padio (debug_num_1[1]), .datain (
                 debug_num_5_dup0_1_), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_num_1_obuf_1_.operation_mode = "output";
                 
                 defparam debug_num_1_obuf_1_.output_register_mode = "none";
                 
                 defparam debug_num_1_obuf_1_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_1_obuf_1_.oe_register_mode = "none";
                 
                 defparam debug_num_1_obuf_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_1_obuf_1_.input_register_mode = "none";
    cycloneii_io debug_num_1_obuf_0_ (.padio (debug_num_1[0]), .datain (
                 debug_num_5_dup0[17]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_num_1_obuf_0_.operation_mode = "output";
                 
                 defparam debug_num_1_obuf_0_.output_register_mode = "none";
                 
                 defparam debug_num_1_obuf_0_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_1_obuf_0_.oe_register_mode = "none";
                 
                 defparam debug_num_1_obuf_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_1_obuf_0_.input_register_mode = "none";
    cycloneii_io debug_num_0_obuf_3_ (.padio (debug_num_0[3]), .datain (
                 debug_num_5_dup0[17]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_num_0_obuf_3_.operation_mode = "output";
                 
                 defparam debug_num_0_obuf_3_.output_register_mode = "none";
                 
                 defparam debug_num_0_obuf_3_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_0_obuf_3_.oe_register_mode = "none";
                 
                 defparam debug_num_0_obuf_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_0_obuf_3_.input_register_mode = "none";
    cycloneii_io debug_num_0_obuf_2_ (.padio (debug_num_0[2]), .datain (
                 debug_num_5_dup0_1_), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_num_0_obuf_2_.operation_mode = "output";
                 
                 defparam debug_num_0_obuf_2_.output_register_mode = "none";
                 
                 defparam debug_num_0_obuf_2_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_0_obuf_2_.oe_register_mode = "none";
                 
                 defparam debug_num_0_obuf_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_0_obuf_2_.input_register_mode = "none";
    cycloneii_io debug_num_0_obuf_1_ (.padio (debug_num_0[1]), .datain (
                 debug_num_5_dup0_1_), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_num_0_obuf_1_.operation_mode = "output";
                 
                 defparam debug_num_0_obuf_1_.output_register_mode = "none";
                 
                 defparam debug_num_0_obuf_1_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_0_obuf_1_.oe_register_mode = "none";
                 
                 defparam debug_num_0_obuf_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_0_obuf_1_.input_register_mode = "none";
    cycloneii_io debug_num_0_obuf_0_ (.padio (debug_num_0[0]), .datain (
                 debug_num_5_dup0_1_), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_num_0_obuf_0_.operation_mode = "output";
                 
                 defparam debug_num_0_obuf_0_.output_register_mode = "none";
                 
                 defparam debug_num_0_obuf_0_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_0_obuf_0_.oe_register_mode = "none";
                 
                 defparam debug_num_0_obuf_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_0_obuf_0_.input_register_mode = "none";
    cycloneii_io debug_led_red_obuf_9_ (.padio (debug_led_red[9]), .datain (
                 debug_num_5_dup0[17]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_red_obuf_9_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_9_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_9_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_9_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_9_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_9_.input_register_mode = "none";
    cycloneii_io debug_led_red_obuf_8_ (.padio (debug_led_red[8]), .datain (
                 debug_num_5_dup0[17]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_red_obuf_8_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_8_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_8_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_8_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_8_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_8_.input_register_mode = "none";
    cycloneii_io debug_led_red_obuf_7_ (.padio (debug_led_red[7]), .datain (
                 debug_num_5_dup0[17]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_red_obuf_7_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_7_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_7_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_7_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_7_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_7_.input_register_mode = "none";
    cycloneii_io debug_led_red_obuf_6_ (.padio (debug_led_red[6]), .datain (
                 debug_num_5_dup0[17]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_red_obuf_6_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_6_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_6_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_6_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_6_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_6_.input_register_mode = "none";
    cycloneii_io debug_led_red_obuf_5_ (.padio (debug_led_red[5]), .datain (
                 debug_num_5_dup0[17]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_red_obuf_5_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_5_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_5_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_5_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_5_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_5_.input_register_mode = "none";
    cycloneii_io debug_led_red_obuf_4_ (.padio (debug_led_red[4]), .datain (
                 debug_num_5_dup0[17]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_red_obuf_4_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_4_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_4_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_4_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_4_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_4_.input_register_mode = "none";
    cycloneii_io debug_led_red_obuf_3_ (.padio (debug_led_red[3]), .datain (
                 debug_num_5_dup0[17]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_red_obuf_3_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_3_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_3_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_3_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_3_.input_register_mode = "none";
    cycloneii_io debug_led_red_obuf_2_ (.padio (debug_led_red[2]), .datain (
                 debug_num_5_dup0[17]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_red_obuf_2_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_2_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_2_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_2_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_2_.input_register_mode = "none";
    cycloneii_io debug_led_red_obuf_17_ (.padio (debug_led_red[17]), .datain (
                 debug_num_5_dup0[17]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_red_obuf_17_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_17_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_17_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_17_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_17_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_17_.input_register_mode = "none";
    cycloneii_io debug_led_red_obuf_16_ (.padio (debug_led_red[16]), .datain (
                 debug_num_5_dup0[17]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_red_obuf_16_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_16_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_16_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_16_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_16_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_16_.input_register_mode = "none";
    cycloneii_io debug_led_red_obuf_15_ (.padio (debug_led_red[15]), .datain (
                 debug_num_5_dup0[17]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_red_obuf_15_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_15_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_15_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_15_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_15_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_15_.input_register_mode = "none";
    cycloneii_io debug_led_red_obuf_14_ (.padio (debug_led_red[14]), .datain (
                 debug_num_5_dup0[17]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_red_obuf_14_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_14_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_14_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_14_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_14_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_14_.input_register_mode = "none";
    cycloneii_io debug_led_red_obuf_13_ (.padio (debug_led_red[13]), .datain (
                 debug_num_5_dup0[17]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_red_obuf_13_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_13_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_13_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_13_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_13_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_13_.input_register_mode = "none";
    cycloneii_io debug_led_red_obuf_12_ (.padio (debug_led_red[12]), .datain (
                 debug_num_5_dup0[17]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_red_obuf_12_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_12_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_12_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_12_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_12_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_12_.input_register_mode = "none";
    cycloneii_io debug_led_red_obuf_11_ (.padio (debug_led_red[11]), .datain (
                 debug_num_5_dup0[17]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_red_obuf_11_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_11_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_11_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_11_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_11_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_11_.input_register_mode = "none";
    cycloneii_io debug_led_red_obuf_10_ (.padio (debug_led_red[10]), .datain (
                 debug_num_5_dup0[17]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_red_obuf_10_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_10_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_10_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_10_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_10_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_10_.input_register_mode = "none";
    cycloneii_io debug_led_red_obuf_1_ (.padio (debug_led_red[1]), .datain (
                 debug_num_5_dup0[17]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_red_obuf_1_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_1_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_1_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_1_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_1_.input_register_mode = "none";
    cycloneii_io debug_led_red_obuf_0_ (.padio (debug_led_red[0]), .datain (
                 debug_num_5_dup0[17]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_red_obuf_0_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_0_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_0_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_0_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_0_.input_register_mode = "none";
    cycloneii_io debug_led_grn_obuf_5_ (.padio (debug_led_grn[5]), .datain (
                 debug_num_5_dup0[17]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_grn_obuf_5_.operation_mode = "output";
                 
                 defparam debug_led_grn_obuf_5_.output_register_mode = "none";
                 
                 defparam debug_led_grn_obuf_5_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_grn_obuf_5_.oe_register_mode = "none";
                 
                 defparam debug_led_grn_obuf_5_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_grn_obuf_5_.input_register_mode = "none";
    cycloneii_io debug_led_grn_obuf_4_ (.padio (debug_led_grn[4]), .datain (
                 debug_num_5_dup0[17]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_grn_obuf_4_.operation_mode = "output";
                 
                 defparam debug_led_grn_obuf_4_.output_register_mode = "none";
                 
                 defparam debug_led_grn_obuf_4_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_grn_obuf_4_.oe_register_mode = "none";
                 
                 defparam debug_led_grn_obuf_4_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_grn_obuf_4_.input_register_mode = "none";
    cycloneii_io debug_led_grn_obuf_3_ (.padio (debug_led_grn[3]), .datain (
                 debug_num_5_dup0[17]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_grn_obuf_3_.operation_mode = "output";
                 
                 defparam debug_led_grn_obuf_3_.output_register_mode = "none";
                 
                 defparam debug_led_grn_obuf_3_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_grn_obuf_3_.oe_register_mode = "none";
                 
                 defparam debug_led_grn_obuf_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_grn_obuf_3_.input_register_mode = "none";
    cycloneii_io debug_led_grn_obuf_2_ (.padio (debug_led_grn[2]), .datain (
                 debug_num_5_dup0[17]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_grn_obuf_2_.operation_mode = "output";
                 
                 defparam debug_led_grn_obuf_2_.output_register_mode = "none";
                 
                 defparam debug_led_grn_obuf_2_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_grn_obuf_2_.oe_register_mode = "none";
                 
                 defparam debug_led_grn_obuf_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_grn_obuf_2_.input_register_mode = "none";
    cycloneii_io debug_led_grn_obuf_1_ (.padio (debug_led_grn[1]), .datain (
                 debug_num_5_dup0[17]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_grn_obuf_1_.operation_mode = "output";
                 
                 defparam debug_led_grn_obuf_1_.output_register_mode = "none";
                 
                 defparam debug_led_grn_obuf_1_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_grn_obuf_1_.oe_register_mode = "none";
                 
                 defparam debug_led_grn_obuf_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_grn_obuf_1_.input_register_mode = "none";
    cycloneii_io debug_led_grn_obuf_0_ (.padio (debug_led_grn[0]), .datain (
                 debug_num_5_dup0[17]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_grn_obuf_0_.operation_mode = "output";
                 
                 defparam debug_led_grn_obuf_0_.output_register_mode = "none";
                 
                 defparam debug_led_grn_obuf_0_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_grn_obuf_0_.oe_register_mode = "none";
                 
                 defparam debug_led_grn_obuf_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_grn_obuf_0_.input_register_mode = "none";
    cycloneii_lcell_comb ix46108z52924 (.combout (nx46108z2), .dataa (v[6]), .datab (
                         dir4_0_), .datac (nx46108z3), .datad (nx14428z1), .cin (
                         1'b0)) ;
                         defparam ix46108z52924.lut_mask = 16'hdd0f;
    cycloneii_lcell_comb ix44114z52924 (.combout (nx44114z2), .dataa (v[6]), .datab (
                         dir4_2_), .datac (dir6_2_), .datad (nx14428z1), .cin (
                         1'b0)) ;
                         defparam ix44114z52924.lut_mask = 16'hddf0;
    cycloneii_lcell_comb ix34077z52924 (.combout (nx34077z2), .dataa (v[2]), .datab (
                         v[1]), .datac (e[0]), .datad (g[0]), .cin (1'b0)) ;
                         
                         defparam ix34077z52924.lut_mask = 16'hfdec;
    cycloneii_lcell_comb ix35074z52924 (.combout (nx35074z2), .dataa (v[2]), .datab (
                         v[1]), .datac (e[1]), .datad (g[1]), .cin (1'b0)) ;
                         
                         defparam ix35074z52924.lut_mask = 16'hfdec;
    cycloneii_lcell_comb ix36071z52924 (.combout (nx36071z2), .dataa (v[2]), .datab (
                         v[1]), .datac (e[2]), .datad (g[2]), .cin (1'b0)) ;
                         
                         defparam ix36071z52924.lut_mask = 16'hfdec;
    cycloneii_lcell_comb ix37068z52924 (.combout (nx37068z2), .dataa (v[2]), .datab (
                         v[1]), .datac (e[3]), .datad (g[3]), .cin (1'b0)) ;
                         
                         defparam ix37068z52924.lut_mask = 16'hfdec;
    cycloneii_lcell_comb ix38065z52924 (.combout (nx38065z2), .dataa (v[2]), .datab (
                         v[1]), .datac (e[4]), .datad (g[4]), .cin (1'b0)) ;
                         
                         defparam ix38065z52924.lut_mask = 16'hfdec;
    cycloneii_lcell_comb ix39062z52924 (.combout (nx39062z2), .dataa (v[2]), .datab (
                         v[1]), .datac (e[5]), .datad (g[5]), .cin (1'b0)) ;
                         
                         defparam ix39062z52924.lut_mask = 16'hfdec;
    cycloneii_lcell_comb ix40059z52924 (.combout (nx40059z2), .dataa (v[2]), .datab (
                         v[1]), .datac (e[6]), .datad (g[6]), .cin (1'b0)) ;
                         
                         defparam ix40059z52924.lut_mask = 16'hfdec;
    cycloneii_lcell_comb ix41056z52924 (.combout (nx41056z2), .dataa (v[2]), .datab (
                         v[1]), .datac (e[7]), .datad (g[7]), .cin (1'b0)) ;
                         
                         defparam ix41056z52924.lut_mask = 16'hfdec;
    cycloneii_lcell_comb ix25658z52924 (.combout (nx25658z2), .dataa (v[2]), .datab (
                         v[1]), .datac (b[0]), .datad (h[0]), .cin (1'b0)) ;
                         
                         defparam ix25658z52924.lut_mask = 16'hfedc;
    cycloneii_lcell_comb ix26655z52924 (.combout (nx26655z2), .dataa (v[2]), .datab (
                         v[1]), .datac (b[1]), .datad (h[1]), .cin (1'b0)) ;
                         
                         defparam ix26655z52924.lut_mask = 16'hfedc;
    cycloneii_lcell_comb ix27652z52924 (.combout (nx27652z2), .dataa (v[2]), .datab (
                         v[1]), .datac (b[2]), .datad (h[2]), .cin (1'b0)) ;
                         
                         defparam ix27652z52924.lut_mask = 16'hfedc;
    cycloneii_lcell_comb ix28649z52924 (.combout (nx28649z2), .dataa (v[2]), .datab (
                         v[1]), .datac (b[3]), .datad (h[3]), .cin (1'b0)) ;
                         
                         defparam ix28649z52924.lut_mask = 16'hfedc;
    cycloneii_lcell_comb ix29646z52924 (.combout (nx29646z2), .dataa (v[2]), .datab (
                         v[1]), .datac (b[4]), .datad (h[4]), .cin (1'b0)) ;
                         
                         defparam ix29646z52924.lut_mask = 16'hfedc;
    cycloneii_lcell_comb ix30643z52924 (.combout (nx30643z2), .dataa (v[2]), .datab (
                         v[1]), .datac (b[5]), .datad (h[5]), .cin (1'b0)) ;
                         
                         defparam ix30643z52924.lut_mask = 16'hfedc;
    cycloneii_lcell_comb ix31640z52924 (.combout (nx31640z2), .dataa (v[2]), .datab (
                         v[1]), .datac (b[6]), .datad (h[6]), .cin (1'b0)) ;
                         
                         defparam ix31640z52924.lut_mask = 16'hfedc;
    cycloneii_lcell_comb ix32637z52924 (.combout (nx32637z2), .dataa (v[2]), .datab (
                         v[1]), .datac (b[7]), .datad (h[7]), .cin (1'b0)) ;
                         
                         defparam ix32637z52924.lut_mask = 16'hfedc;
    cycloneii_lcell_comb ix48297z52924 (.combout (nx48297z2), .dataa (v[2]), .datab (
                         v[1]), .datac (a[0]), .datad (f[0]), .cin (1'b0)) ;
                         
                         defparam ix48297z52924.lut_mask = 16'hfedc;
    cycloneii_lcell_comb ix47300z52924 (.combout (nx47300z2), .dataa (v[2]), .datab (
                         v[1]), .datac (a[1]), .datad (f[1]), .cin (1'b0)) ;
                         
                         defparam ix47300z52924.lut_mask = 16'hfedc;
    cycloneii_lcell_comb ix46303z52924 (.combout (nx46303z2), .dataa (v[2]), .datab (
                         v[1]), .datac (a[2]), .datad (f[2]), .cin (1'b0)) ;
                         
                         defparam ix46303z52924.lut_mask = 16'hfedc;
    cycloneii_lcell_comb ix45306z52924 (.combout (nx45306z2), .dataa (v[2]), .datab (
                         v[1]), .datac (a[3]), .datad (f[3]), .cin (1'b0)) ;
                         
                         defparam ix45306z52924.lut_mask = 16'hfedc;
    cycloneii_lcell_comb ix44309z52924 (.combout (nx44309z2), .dataa (v[2]), .datab (
                         v[1]), .datac (a[4]), .datad (f[4]), .cin (1'b0)) ;
                         
                         defparam ix44309z52924.lut_mask = 16'hfedc;
    cycloneii_lcell_comb ix43312z52924 (.combout (nx43312z2), .dataa (v[2]), .datab (
                         v[1]), .datac (a[5]), .datad (f[5]), .cin (1'b0)) ;
                         
                         defparam ix43312z52924.lut_mask = 16'hfedc;
    cycloneii_lcell_comb ix42315z52924 (.combout (nx42315z2), .dataa (v[2]), .datab (
                         v[1]), .datac (a[6]), .datad (f[6]), .cin (1'b0)) ;
                         
                         defparam ix42315z52924.lut_mask = 16'hfedc;
    cycloneii_lcell_comb ix41318z52924 (.combout (nx41318z2), .dataa (v[2]), .datab (
                         v[1]), .datac (a[7]), .datad (f[7]), .cin (1'b0)) ;
                         
                         defparam ix41318z52924.lut_mask = 16'hfedc;
    cycloneii_lcell_comb ix56716z52924 (.combout (nx56716z2), .dataa (v[2]), .datab (
                         v[1]), .datac (g[0]), .datad (h[0]), .cin (1'b0)) ;
                         
                         defparam ix56716z52924.lut_mask = 16'hfdec;
    cycloneii_lcell_comb ix55719z52924 (.combout (nx55719z2), .dataa (v[2]), .datab (
                         v[1]), .datac (g[1]), .datad (h[1]), .cin (1'b0)) ;
                         
                         defparam ix55719z52924.lut_mask = 16'hfdec;
    cycloneii_lcell_comb ix54722z52924 (.combout (nx54722z2), .dataa (v[2]), .datab (
                         v[1]), .datac (g[2]), .datad (h[2]), .cin (1'b0)) ;
                         
                         defparam ix54722z52924.lut_mask = 16'hfdec;
    cycloneii_lcell_comb ix53725z52924 (.combout (nx53725z2), .dataa (v[2]), .datab (
                         v[1]), .datac (g[3]), .datad (h[3]), .cin (1'b0)) ;
                         
                         defparam ix53725z52924.lut_mask = 16'hfdec;
    cycloneii_lcell_comb ix52728z52924 (.combout (nx52728z2), .dataa (v[2]), .datab (
                         v[1]), .datac (g[4]), .datad (h[4]), .cin (1'b0)) ;
                         
                         defparam ix52728z52924.lut_mask = 16'hfdec;
    cycloneii_lcell_comb ix51731z52924 (.combout (nx51731z2), .dataa (v[2]), .datab (
                         v[1]), .datac (g[5]), .datad (h[5]), .cin (1'b0)) ;
                         
                         defparam ix51731z52924.lut_mask = 16'hfdec;
    cycloneii_lcell_comb ix50734z52924 (.combout (nx50734z2), .dataa (v[2]), .datab (
                         v[1]), .datac (g[6]), .datad (h[6]), .cin (1'b0)) ;
                         
                         defparam ix50734z52924.lut_mask = 16'hfdec;
    cycloneii_lcell_comb ix49737z52924 (.combout (nx49737z2), .dataa (v[2]), .datab (
                         v[1]), .datac (g[7]), .datad (h[7]), .cin (1'b0)) ;
                         
                         defparam ix49737z52924.lut_mask = 16'hfdec;
    cycloneii_lcell_comb ix6176z52929 (.combout (nx6176z7), .dataa (
                         o_row_dup0[5]), .datab (o_row_dup0[4]), .datac (1'b1), 
                         .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix6176z52929.lut_mask = 16'h7777;
    cycloneii_lcell_comb ix17322z52928 (.combout (nx17322z6), .dataa (x[1]), .datab (
                         x[0]), .datac (1'b1), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix17322z52928.lut_mask = 16'h7777;
    cycloneii_lcell_comb ix6176z52931 (.combout (nx6176z9), .dataa (x[7]), .datab (
                         x[6]), .datac (1'b1), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix6176z52931.lut_mask = 16'h7777;
    cycloneii_lcell_comb ix17322z52926 (.combout (nx17322z4), .dataa (end_of_img
                         ), .datab (i_valid_int), .datac (nx17322z5), .datad (
                         nx17322z6), .cin (1'b0)) ;
                         
                         defparam ix17322z52926.lut_mask = 16'hccc8;
    cycloneii_lcell_comb ix17322z52929 (.combout (nx17322z7), .dataa (x[5]), .datab (
                         i_valid_int), .datac (nx17322z8), .datad (nx6176z9), .cin (
                         1'b0)) ;
                         defparam ix17322z52929.lut_mask = 16'hfcf4;
    cycloneii_lcell_comb ix6176z52928 (.combout (nx6176z6), .dataa (
                         o_row_dup0[7]), .datab (o_row_dup0[6]), .datac (1'b1), 
                         .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix6176z52928.lut_mask = 16'h8888;
    cycloneii_lcell_comb ix6176z52927 (.combout (nx6176z5), .dataa (
                         o_row_dup0[1]), .datab (o_row_dup0[0]), .datac (1'b1), 
                         .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix6176z52927.lut_mask = 16'h8888;
    cycloneii_lcell_comb ix6176z52926 (.combout (nx6176z4), .dataa (
                         o_row_dup0[3]), .datab (o_row_dup0[2]), .datac (1'b1), 
                         .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix6176z52926.lut_mask = 16'h8888;
    cycloneii_lcell_comb ix17322z52936 (.combout (nx17322z14), .dataa (
                         o_row_dup0[5]), .datab (o_row_dup0[4]), .datac (
                         end_of_img), .datad (nx6176z6), .cin (1'b0)) ;
                         
                         defparam ix17322z52936.lut_mask = 16'h8000;
    cycloneii_lcell_comb ix19087z52962 (.combout (nx19087z25), .dataa (x[2]), .datab (
                         x[1]), .datac (1'b1), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix19087z52962.lut_mask = 16'h7777;
    cycloneii_lcell_comb ix6176z52930 (.combout (nx6176z8), .dataa (x[5]), .datab (
                         x[4]), .datac (1'b1), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix6176z52930.lut_mask = 16'h7777;
    cycloneii_lcell_comb ix17322z52933 (.combout (nx17322z11), .dataa (
                         end_of_img), .datab (nx17322z12), .datac (nx17322z13), 
                         .datad (nx6176z9), .cin (1'b0)) ;
                         
                         defparam ix17322z52933.lut_mask = 16'heeec;
    cycloneii_lcell_comb ix17322z52938 (.combout (nx17322z16), .dataa (x[3]), .datab (
                         x[2]), .datac (1'b1), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix17322z52938.lut_mask = 16'h8888;
    cycloneii_lcell_comb ix19087z52933 (.combout (nx19087z3), .dataa (
                         o_row_dup0[7]), .datab (x[7]), .datac (i_valid_int), .datad (
                         nx17322z6), .cin (1'b0)) ;
                         
                         defparam ix19087z52933.lut_mask = 16'hcc4c;
    cycloneii_lcell_comb ix19087z52940 (.combout (nx19087z9), .dataa (
                         o_row_dup0[0]), .datab (x[7]), .datac (1'b1), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix19087z52940.lut_mask = 16'h7777;
    cycloneii_lcell_comb ix19087z52939 (.combout (nx19087z8), .dataa (x[6]), .datab (
                         x[5]), .datac (nx17322z5), .datad (nx19087z9), .cin (
                         1'b0)) ;
                         defparam ix19087z52939.lut_mask = 16'haaa2;
    cycloneii_lcell_comb ix19087z52943 (.combout (nx19087z11), .dataa (x[6]), .datab (
                         x[5]), .datac (nx17322z5), .datad (nx19087z9), .cin (
                         1'b0)) ;
                         defparam ix19087z52943.lut_mask = 16'hccc4;
    cycloneii_lcell_comb ix19087z52946 (.combout (nx19087z13), .dataa (x[6]), .datab (
                         x[4]), .datac (nx19087z14), .datad (nx19087z9), .cin (
                         1'b0)) ;
                         defparam ix19087z52946.lut_mask = 16'hfcf4;
    cycloneii_lcell_comb ix19087z52950 (.combout (nx19087z16), .dataa (x[3]), .datab (
                         x[2]), .datac (nx19087z17), .datad (nx6176z8), .cin (
                         1'b0)) ;
                         defparam ix19087z52950.lut_mask = 16'haaa2;
    cycloneii_lcell_comb ix19087z52954 (.combout (nx19087z19), .dataa (x[6]), .datab (
                         x[2]), .datac (nx17322z13), .datad (nx19087z9), .cin (
                         1'b0)) ;
                         defparam ix19087z52954.lut_mask = 16'hccc4;
    cycloneii_lcell_comb ix19087z52958 (.combout (nx19087z22), .dataa (x[6]), .datab (
                         x[1]), .datac (nx17322z13), .datad (nx19087z9), .cin (
                         1'b0)) ;
                         defparam ix19087z52958.lut_mask = 16'hccc4;
    cycloneii_lcell_comb ix19087z52961 (.combout (nx19087z24), .dataa (
                         o_row_dup0[7]), .datab (x[0]), .datac (i_valid_int), .datad (
                         nx19087z25), .cin (1'b0)) ;
                         
                         defparam ix19087z52961.lut_mask = 16'hcc4c;
    cycloneii_lcell_comb ix17322z52937 (.combout (nx17322z15), .dataa (
                         nx17322z16), .datab (nx6176z8), .datac (nx6176z9), .datad (
                         nx17322z6), .cin (1'b0)) ;
                         
                         defparam ix17322z52937.lut_mask = 16'h0002;
    cycloneii_lcell_comb ix6176z52925 (.combout (nx6176z3), .dataa (nx6176z4), .datab (
                         nx6176z5), .datac (nx6176z6), .datad (nx6176z7), .cin (
                         1'b0)) ;
                         defparam ix6176z52925.lut_mask = 16'h0080;
    cycloneii_lcell_comb ix19087z52964 (.combout (nx19087z26), .dataa (nx6176z4)
                         , .datab (nx6176z5), .datac (nx6176z6), .datad (
                         nx6176z7), .cin (1'b0)) ;
                         
                         defparam ix19087z52964.lut_mask = 16'hff7f;
    cycloneii_lcell_comb ix19087z52965 (.combout (nx19087z27), .dataa (
                         nx17322z16), .datab (nx6176z8), .datac (nx6176z9), .datad (
                         nx17322z6), .cin (1'b0)) ;
                         
                         defparam ix19087z52965.lut_mask = 16'hfffd;
    cycloneii_lcell_comb ix24222z52924 (.combout (nx24222z1), .dataa (t[1]), .datab (
                         t[0]), .datac (1'b1), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix24222z52924.lut_mask = 16'h2222;
    cycloneii_lcell_comb ix25299z52925 (.combout (nx25299z2), .dataa (v[4]), .datab (
                         v[3]), .datac (1'b1), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix25299z52925.lut_mask = 16'h2222;
    cycloneii_lcell_comb ix38525z52925 (.combout (nx38525z2), .dataa (x[7]), .datab (
                         x[6]), .datac (i_valid_int), .datad (nx6176z8), .cin (
                         1'b0)) ;
                         defparam ix38525z52925.lut_mask = 16'h0080;
    cycloneii_lcell_comb ix28105z52929 (.combout (nx28105z7), .dataa (
                         o_row_dup0[1]), .datab (v[6]), .datac (1'b1), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix28105z52929.lut_mask = 16'h8888;
    cycloneii_lcell_comb ix28105z52927 (.combout (nx28105z5), .dataa (x[3]), .datab (
                         x[2]), .datac (nx28105z6), .datad (nx28105z7), .cin (
                         1'b0)) ;
                         defparam ix28105z52927.lut_mask = 16'hfef0;
    cycloneii_lcell_comb ix28105z52930 (.combout (nx28105z8), .dataa (x[7]), .datab (
                         x[6]), .datac (nx28105z9), .datad (nx28105z7), .cin (
                         1'b0)) ;
                         defparam ix28105z52930.lut_mask = 16'hfef0;
    cycloneii_lcell_comb ix28105z52925 (.combout (nx28105z3), .dataa (
                         o_row_dup0[2]), .datab (v[6]), .datac (nx28105z4), .datad (
                         nx6176z5), .cin (1'b0)) ;
                         
                         defparam ix28105z52925.lut_mask = 16'hfcf8;
    cycloneii_lcell_comb ix36874z52926 (.combout (nx36874z4), .dataa (nx36874z5)
                         , .datab (nx36874z6), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix36874z52926.lut_mask = 16'heeee;
    cycloneii_lcell_comb ix36874z52927 (.combout (nx36874z7), .dataa (nx36874z8)
                         , .datab (nx36874z9), .datac (nx36874z10), .datad (1'b1
                         ), .cin (1'b0)) ;
                         
                         defparam ix36874z52927.lut_mask = 16'heaea;
    cycloneii_lcell_comb ix36874z52925 (.combout (nx36874z2), .dataa (v[7]), .datab (
                         nx36874z3), .datac (1'b1), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix36874z52925.lut_mask = 16'h8888;
    cycloneii_lcell_comb ix17322z52935 (.combout (nx17322z13), .dataa (x[5]), .datab (
                         x[4]), .datac (x[3]), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix17322z52935.lut_mask = 16'h7f7f;
    cycloneii_lcell_comb ix19087z52951 (.combout (nx19087z17), .dataa (
                         o_row_dup0[0]), .datab (x[7]), .datac (x[6]), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix19087z52951.lut_mask = 16'h7f7f;
    cycloneii_lcell_comb ix19087z52935 (.combout (nx19087z5), .dataa (
                         o_row_dup0[3]), .datab (o_row_dup0[2]), .datac (
                         o_row_dup0[1]), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix19087z52935.lut_mask = 16'h7f7f;
    cycloneii_lcell_comb ix19087z52934 (.combout (nx19087z4), .dataa (
                         o_row_dup0[6]), .datab (o_row_dup0[5]), .datac (
                         o_row_dup0[4]), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix19087z52934.lut_mask = 16'h7f7f;
    cycloneii_lcell_comb ix19087z52957 (.combout (nx19087z21), .dataa (x[2]), .datab (
                         x[0]), .datac (i_valid_int), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix19087z52957.lut_mask = 16'h7f7f;
    cycloneii_lcell_comb ix19087z52938 (.combout (nx19087z7), .dataa (x[1]), .datab (
                         x[0]), .datac (i_valid_int), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix19087z52938.lut_mask = 16'h7f7f;
    cycloneii_lcell_comb ix17322z52927 (.combout (nx17322z5), .dataa (x[4]), .datab (
                         x[3]), .datac (x[2]), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix17322z52927.lut_mask = 16'h7f7f;
    cycloneii_lcell_comb ix31609z52924 (.combout (nx31609z1), .dataa (nx36874z1)
                         , .datab (nx36874z5), .datac (nx36874z6), .datad (
                         nx36874z7), .cin (1'b0)) ;
                         
                         defparam ix31609z52924.lut_mask = 16'hfffe;
    cycloneii_lcell_comb ix28105z52931 (.combout (nx28105z9), .dataa (
                         o_row_dup0[1]), .datab (x[5]), .datac (x[4]), .datad (
                         v[6]), .cin (1'b0)) ;
                         
                         defparam ix28105z52931.lut_mask = 16'ha800;
    cycloneii_lcell_comb ix28105z52928 (.combout (nx28105z6), .dataa (
                         o_row_dup0[1]), .datab (x[1]), .datac (x[0]), .datad (
                         v[6]), .cin (1'b0)) ;
                         
                         defparam ix28105z52928.lut_mask = 16'h8000;
    cycloneii_lcell_comb ix28105z52926 (.combout (nx28105z4), .dataa (
                         o_row_dup0[5]), .datab (o_row_dup0[4]), .datac (
                         o_row_dup0[3]), .datad (v[6]), .cin (1'b0)) ;
                         
                         defparam ix28105z52926.lut_mask = 16'hfe00;
    cycloneii_lcell_comb ix28105z52924 (.combout (nx28105z2), .dataa (
                         o_row_dup0[7]), .datab (o_row_dup0[6]), .datac (v[6]), 
                         .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix28105z52924.lut_mask = 16'he0e0;
    cycloneii_lcell_comb ix6176z52924 (.combout (nx6176z2), .dataa (x[3]), .datab (
                         x[2]), .datac (x[1]), .datad (x[0]), .cin (1'b0)) ;
                         
                         defparam ix6176z52924.lut_mask = 16'h8000;
    cycloneii_lcell_comb ix6176z52923 (.combout (nx6176z1), .dataa (nx6176z2), .datab (
                         nx6176z3), .datac (nx6176z8), .datad (nx6176z9), .cin (
                         1'b0)) ;
                         defparam ix6176z52923.lut_mask = 16'h0008;
    cycloneii_lcell_comb ix26373z52924 (.combout (nx26373z2), .dataa (
                         o_mode_dup0[1]), .datab (v[0]), .datac (end_of_img), .datad (
                         i_reset_int), .cin (1'b0)) ;
                         
                         defparam ix26373z52924.lut_mask = 16'h0d08;
    cycloneii_lcell_comb ix19087z52960 (.combout (nx19087z23), .dataa (x[0]), .datab (
                         nx19087z17), .datac (nx17322z13), .datad (nx19087z24), 
                         .cin (1'b0)) ;
                         
                         defparam ix19087z52960.lut_mask = 16'hffa8;
    cycloneii_lcell_comb ix19087z52956 (.combout (nx19087z20), .dataa (
                         o_row_dup0[7]), .datab (x[1]), .datac (nx19087z21), .datad (
                         nx19087z22), .cin (1'b0)) ;
                         
                         defparam ix19087z52956.lut_mask = 16'hffc4;
    cycloneii_lcell_comb ix19087z52953 (.combout (nx19087z18), .dataa (
                         o_row_dup0[7]), .datab (x[2]), .datac (nx19087z7), .datad (
                         nx19087z19), .cin (1'b0)) ;
                         
                         defparam ix19087z52953.lut_mask = 16'hffc4;
    cycloneii_lcell_comb ix19087z52949 (.combout (nx19087z15), .dataa (
                         o_row_dup0[7]), .datab (x[3]), .datac (nx19087z7), .datad (
                         nx19087z16), .cin (1'b0)) ;
                         
                         defparam ix19087z52949.lut_mask = 16'hffc4;
    cycloneii_lcell_comb ix19087z52947 (.combout (nx19087z14), .dataa (x[5]), .datab (
                         x[4]), .datac (x[3]), .datad (x[2]), .cin (1'b0)) ;
                         
                         defparam ix19087z52947.lut_mask = 16'h4ccc;
    cycloneii_lcell_comb ix19087z52945 (.combout (nx19087z12), .dataa (
                         o_row_dup0[7]), .datab (x[4]), .datac (nx19087z7), .datad (
                         nx19087z13), .cin (1'b0)) ;
                         
                         defparam ix19087z52945.lut_mask = 16'hffc4;
    cycloneii_lcell_comb ix19087z52942 (.combout (nx19087z10), .dataa (
                         o_row_dup0[7]), .datab (x[5]), .datac (nx19087z7), .datad (
                         nx19087z11), .cin (1'b0)) ;
                         
                         defparam ix19087z52942.lut_mask = 16'hffc4;
    cycloneii_lcell_comb ix19087z52937 (.combout (nx19087z6), .dataa (
                         o_row_dup0[7]), .datab (x[6]), .datac (nx19087z7), .datad (
                         nx19087z8), .cin (1'b0)) ;
                         
                         defparam ix19087z52937.lut_mask = 16'hffc4;
    cycloneii_lcell_comb ix19087z52932 (.combout (nx19087z2), .dataa (
                         o_row_dup0[0]), .datab (x[7]), .datac (x[6]), .datad (
                         x[5]), .cin (1'b0)) ;
                         
                         defparam ix19087z52932.lut_mask = 16'h4ccc;
    cycloneii_lcell_comb ix19087z52931 (.combout (nx19087z1), .dataa (x[7]), .datab (
                         nx19087z2), .datac (nx17322z5), .datad (nx19087z3), .cin (
                         1'b0)) ;
                         defparam ix19087z52931.lut_mask = 16'hffec;
    cycloneii_lcell_comb ix17322z52934 (.combout (nx17322z12), .dataa (x[2]), .datab (
                         x[1]), .datac (x[0]), .datad (end_of_img), .cin (1'b0)
                         ) ;
                         defparam ix17322z52934.lut_mask = 16'h7f00;
    cycloneii_lcell_comb ix17322z52932 (.combout (nx17322z10), .dataa (
                         o_row_dup0[3]), .datab (o_row_dup0[2]), .datac (
                         o_row_dup0[1]), .datad (o_row_dup0[0]), .cin (1'b0)) ;
                         
                         defparam ix17322z52932.lut_mask = 16'h8000;
    cycloneii_lcell_comb ix17322z52930 (.combout (nx17322z8), .dataa (
                         o_row_dup0[2]), .datab (o_row_dup0[1]), .datac (
                         o_row_dup0[0]), .datad (i_valid_int), .cin (1'b0)) ;
                         
                         defparam ix17322z52930.lut_mask = 16'h7f00;
    cycloneii_lcell_comb ix17322z52925 (.combout (nx17322z3), .dataa (
                         o_row_dup0[5]), .datab (o_row_dup0[4]), .datac (
                         o_row_dup0[3]), .datad (i_valid_int), .cin (1'b0)) ;
                         
                         defparam ix17322z52925.lut_mask = 16'h7f00;
    cycloneii_lcell_comb ix17322z52924 (.combout (nx17322z2), .dataa (
                         o_row_dup0[7]), .datab (o_row_dup0[6]), .datac (
                         i_reset_int), .datad (i_valid_int), .cin (1'b0)) ;
                         
                         defparam ix17322z52924.lut_mask = 16'hf7f0;
    cycloneii_lcell_comb ix46108z52923 (.combout (nx46108z1), .dataa (v[6]), .datab (
                         dir7[0]), .datac (nx14428z1), .datad (nx46108z2), .cin (
                         1'b0)) ;
                         defparam ix46108z52923.lut_mask = 16'hef00;
    cycloneii_lcell_comb ix45111z52923 (.combout (nx45111z1), .dataa (v[6]), .datab (
                         nx45111z2), .datac (dir7[1]), .datad (nx14428z1), .cin (
                         1'b0)) ;
                         defparam ix45111z52923.lut_mask = 16'h5033;
    cycloneii_lcell_comb ix44114z52923 (.combout (nx44114z1), .dataa (v[6]), .datab (
                         dir7[2]), .datac (nx14428z1), .datad (nx44114z2), .cin (
                         1'b0)) ;
                         defparam ix44114z52923.lut_mask = 16'hef00;
    cycloneii_lcell_comb ix35695z52923 (.combout (nx35695z1), .dataa (v[5]), .datab (
                         v[4]), .datac (dir6_2_), .datad (dir6_23n5ss1_2_), .cin (
                         1'b0)) ;
                         defparam ix35695z52923.lut_mask = 16'hf2d0;
    cycloneii_lcell_comb ix2019z52923 (.combout (nx2019z1), .dataa (v[2]), .datab (
                         v[1]), .datac (dir2_2_), .datad (nx7380z1), .cin (1'b0)
                         ) ;
                         defparam ix2019z52923.lut_mask = 16'hd0f2;
    cycloneii_lcell_comb ix10438z52923 (.combout (nx10438z1), .dataa (dir3_2_), 
                         .datab (nx7380z1), .datac (nx10438z2), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix10438z52923.lut_mask = 16'h3a3a;
    cycloneii_lcell_comb ix44685z52923 (.combout (nx44685z1), .dataa (dir4_0_), 
                         .datab (nx7380z1), .datac (nx46679z2), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix44685z52923.lut_mask = 16'hcaca;
    cycloneii_lcell_comb ix46679z52923 (.combout (nx46679z1), .dataa (dir4_2_), 
                         .datab (nx7380z1), .datac (nx46679z2), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix46679z52923.lut_mask = 16'h3a3a;
    cycloneii_lcell_comb ix36692z52924 (.combout (nx36692z1), .dataa (v[5]), .datab (
                         v[4]), .datac (1'b1), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix36692z52924.lut_mask = 16'h2222;
    cycloneii_lcell_comb ix38525z52924 (.combout (nx38525z1), .dataa (
                         i_reset_int), .datab (nx38525z2), .datac (nx17322z16), 
                         .datad (nx17322z6), .cin (1'b0)) ;
                         
                         defparam ix38525z52924.lut_mask = 16'haaea;
    cycloneii_lcell_comb ix6176z52932 (.combout (nx6176z10), .dataa (end_of_img)
                         , .datab (i_reset_int), .datac (i_valid_int), .datad (
                         nx6176z1), .cin (1'b0)) ;
                         
                         defparam ix6176z52932.lut_mask = 16'hfcec;
    cycloneii_lcell_comb ix36625z52923 (.combout (nx36625z1), .dataa (t[0]), .datab (
                         q1[7]), .datac (q3[7]), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix36625z52923.lut_mask = 16'hd8d8;
    cycloneii_lcell_comb ix35628z52923 (.combout (nx35628z1), .dataa (t[0]), .datab (
                         q1[6]), .datac (q3[6]), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix35628z52923.lut_mask = 16'hd8d8;
    cycloneii_lcell_comb ix34631z52923 (.combout (nx34631z1), .dataa (t[0]), .datab (
                         q1[5]), .datac (q3[5]), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix34631z52923.lut_mask = 16'hd8d8;
    cycloneii_lcell_comb ix33634z52923 (.combout (nx33634z1), .dataa (t[0]), .datab (
                         q1[4]), .datac (q3[4]), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix33634z52923.lut_mask = 16'hd8d8;
    cycloneii_lcell_comb ix32637z52926 (.combout (nx32637z4), .dataa (t[0]), .datab (
                         q1[3]), .datac (q3[3]), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix32637z52926.lut_mask = 16'hd8d8;
    cycloneii_lcell_comb ix31640z52926 (.combout (nx31640z3), .dataa (t[0]), .datab (
                         q1[2]), .datac (q3[2]), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix31640z52926.lut_mask = 16'hd8d8;
    cycloneii_lcell_comb ix30643z52926 (.combout (nx30643z3), .dataa (t[0]), .datab (
                         q1[1]), .datac (q3[1]), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix30643z52926.lut_mask = 16'hd8d8;
    cycloneii_lcell_comb ix29646z52926 (.combout (nx29646z3), .dataa (t[0]), .datab (
                         q1[0]), .datac (q3[0]), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix29646z52926.lut_mask = 16'hd8d8;
    cycloneii_lcell_comb ix20492z52923 (.combout (nx20492z1), .dataa (t[0]), .datab (
                         q2[7]), .datac (q3[7]), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix20492z52923.lut_mask = 16'he4e4;
    cycloneii_lcell_comb ix21489z52923 (.combout (nx21489z1), .dataa (t[0]), .datab (
                         q2[6]), .datac (q3[6]), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix21489z52923.lut_mask = 16'he4e4;
    cycloneii_lcell_comb ix22486z52923 (.combout (nx22486z1), .dataa (t[0]), .datab (
                         q2[5]), .datac (q3[5]), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix22486z52923.lut_mask = 16'he4e4;
    cycloneii_lcell_comb ix23483z52923 (.combout (nx23483z1), .dataa (t[0]), .datab (
                         q2[4]), .datac (q3[4]), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix23483z52923.lut_mask = 16'he4e4;
    cycloneii_lcell_comb ix24480z52923 (.combout (nx24480z1), .dataa (t[0]), .datab (
                         q2[3]), .datac (q3[3]), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix24480z52923.lut_mask = 16'he4e4;
    cycloneii_lcell_comb ix25477z52923 (.combout (nx25477z1), .dataa (t[0]), .datab (
                         q2[2]), .datac (q3[2]), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix25477z52923.lut_mask = 16'he4e4;
    cycloneii_lcell_comb ix26474z52923 (.combout (nx26474z1), .dataa (t[0]), .datab (
                         q2[1]), .datac (q3[1]), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix26474z52923.lut_mask = 16'he4e4;
    cycloneii_lcell_comb ix27471z52923 (.combout (nx27471z1), .dataa (t[0]), .datab (
                         q2[0]), .datac (q3[0]), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix27471z52923.lut_mask = 16'he4e4;
    cycloneii_lcell_comb ix49737z52923 (.combout (nx49737z1), .dataa (v[1]), .datab (
                         d[7]), .datac (nx49737z2), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix49737z52923.lut_mask = 16'hd0d0;
    cycloneii_lcell_comb ix50734z52923 (.combout (nx50734z1), .dataa (v[1]), .datab (
                         d[6]), .datac (nx50734z2), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix50734z52923.lut_mask = 16'hd0d0;
    cycloneii_lcell_comb ix51731z52923 (.combout (nx51731z1), .dataa (v[1]), .datab (
                         d[5]), .datac (nx51731z2), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix51731z52923.lut_mask = 16'hd0d0;
    cycloneii_lcell_comb ix52728z52923 (.combout (nx52728z1), .dataa (v[1]), .datab (
                         d[4]), .datac (nx52728z2), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix52728z52923.lut_mask = 16'hd0d0;
    cycloneii_lcell_comb ix53725z52923 (.combout (nx53725z1), .dataa (v[1]), .datab (
                         d[3]), .datac (nx53725z2), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix53725z52923.lut_mask = 16'hd0d0;
    cycloneii_lcell_comb ix54722z52923 (.combout (nx54722z1), .dataa (v[1]), .datab (
                         d[2]), .datac (nx54722z2), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix54722z52923.lut_mask = 16'hd0d0;
    cycloneii_lcell_comb ix55719z52923 (.combout (nx55719z1), .dataa (v[1]), .datab (
                         d[1]), .datac (nx55719z2), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix55719z52923.lut_mask = 16'hd0d0;
    cycloneii_lcell_comb ix56716z52923 (.combout (nx56716z1), .dataa (v[1]), .datab (
                         d[0]), .datac (nx56716z2), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix56716z52923.lut_mask = 16'hd0d0;
    cycloneii_lcell_comb ix41318z52923 (.combout (nx41318z1), .dataa (v[1]), .datab (
                         e[7]), .datac (nx41318z2), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix41318z52923.lut_mask = 16'hd0d0;
    cycloneii_lcell_comb ix42315z52923 (.combout (nx42315z1), .dataa (v[1]), .datab (
                         e[6]), .datac (nx42315z2), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix42315z52923.lut_mask = 16'hd0d0;
    cycloneii_lcell_comb ix43312z52923 (.combout (nx43312z1), .dataa (v[1]), .datab (
                         e[5]), .datac (nx43312z2), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix43312z52923.lut_mask = 16'hd0d0;
    cycloneii_lcell_comb ix44309z52923 (.combout (nx44309z1), .dataa (v[1]), .datab (
                         e[4]), .datac (nx44309z2), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix44309z52923.lut_mask = 16'hd0d0;
    cycloneii_lcell_comb ix45306z52923 (.combout (nx45306z1), .dataa (v[1]), .datab (
                         e[3]), .datac (nx45306z2), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix45306z52923.lut_mask = 16'hd0d0;
    cycloneii_lcell_comb ix46303z52923 (.combout (nx46303z1), .dataa (v[1]), .datab (
                         e[2]), .datac (nx46303z2), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix46303z52923.lut_mask = 16'hd0d0;
    cycloneii_lcell_comb ix47300z52923 (.combout (nx47300z1), .dataa (v[1]), .datab (
                         e[1]), .datac (nx47300z2), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix47300z52923.lut_mask = 16'hd0d0;
    cycloneii_lcell_comb ix48297z52923 (.combout (nx48297z1), .dataa (v[1]), .datab (
                         e[0]), .datac (nx48297z2), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix48297z52923.lut_mask = 16'hd0d0;
    cycloneii_lcell_comb ix32637z52923 (.combout (nx32637z1), .dataa (v[1]), .datab (
                         f[7]), .datac (nx32637z2), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix32637z52923.lut_mask = 16'hd0d0;
    cycloneii_lcell_comb ix31640z52923 (.combout (nx31640z1), .dataa (v[1]), .datab (
                         f[6]), .datac (nx31640z2), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix31640z52923.lut_mask = 16'hd0d0;
    cycloneii_lcell_comb ix30643z52923 (.combout (nx30643z1), .dataa (v[1]), .datab (
                         f[5]), .datac (nx30643z2), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix30643z52923.lut_mask = 16'hd0d0;
    cycloneii_lcell_comb ix29646z52923 (.combout (nx29646z1), .dataa (v[1]), .datab (
                         f[4]), .datac (nx29646z2), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix29646z52923.lut_mask = 16'hd0d0;
    cycloneii_lcell_comb ix28649z52923 (.combout (nx28649z1), .dataa (v[1]), .datab (
                         f[3]), .datac (nx28649z2), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix28649z52923.lut_mask = 16'hd0d0;
    cycloneii_lcell_comb ix27652z52923 (.combout (nx27652z1), .dataa (v[1]), .datab (
                         f[2]), .datac (nx27652z2), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix27652z52923.lut_mask = 16'hd0d0;
    cycloneii_lcell_comb ix26655z52923 (.combout (nx26655z1), .dataa (v[1]), .datab (
                         f[1]), .datac (nx26655z2), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix26655z52923.lut_mask = 16'hd0d0;
    cycloneii_lcell_comb ix25658z52923 (.combout (nx25658z1), .dataa (v[1]), .datab (
                         f[0]), .datac (nx25658z2), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix25658z52923.lut_mask = 16'hd0d0;
    cycloneii_lcell_comb ix41056z52923 (.combout (nx41056z1), .dataa (v[1]), .datab (
                         c[7]), .datac (nx41056z2), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix41056z52923.lut_mask = 16'hd0d0;
    cycloneii_lcell_comb ix40059z52923 (.combout (nx40059z1), .dataa (v[1]), .datab (
                         c[6]), .datac (nx40059z2), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix40059z52923.lut_mask = 16'hd0d0;
    cycloneii_lcell_comb ix39062z52923 (.combout (nx39062z1), .dataa (v[1]), .datab (
                         c[5]), .datac (nx39062z2), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix39062z52923.lut_mask = 16'hd0d0;
    cycloneii_lcell_comb ix38065z52923 (.combout (nx38065z1), .dataa (v[1]), .datab (
                         c[4]), .datac (nx38065z2), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix38065z52923.lut_mask = 16'hd0d0;
    cycloneii_lcell_comb ix37068z52923 (.combout (nx37068z1), .dataa (v[1]), .datab (
                         c[3]), .datac (nx37068z2), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix37068z52923.lut_mask = 16'hd0d0;
    cycloneii_lcell_comb ix36071z52923 (.combout (nx36071z1), .dataa (v[1]), .datab (
                         c[2]), .datac (nx36071z2), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix36071z52923.lut_mask = 16'hd0d0;
    cycloneii_lcell_comb ix35074z52923 (.combout (nx35074z1), .dataa (v[1]), .datab (
                         c[1]), .datac (nx35074z2), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix35074z52923.lut_mask = 16'hd0d0;
    cycloneii_lcell_comb ix34077z52923 (.combout (nx34077z1), .dataa (v[1]), .datab (
                         c[0]), .datac (nx34077z2), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix34077z52923.lut_mask = 16'hd0d0;
    cycloneii_lcell_comb ix36266z52923 (.combout (nx36266z1), .dataa (v[4]), .datab (
                         nx24302z1), .datac (1'b1), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix36266z52923.lut_mask = 16'h8888;
    cycloneii_lcell_comb ix36692z52925 (.combout (nx36692z2), .dataa (v[5]), .datab (
                         v[4]), .datac (nx24302z1), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix36692z52925.lut_mask = 16'h0202;
    cycloneii_lcell_comb ix28105z52923 (.combout (nx28105z1), .dataa (nx28105z2)
                         , .datab (nx28105z3), .datac (nx28105z5), .datad (
                         nx28105z8), .cin (1'b0)) ;
                         
                         defparam ix28105z52923.lut_mask = 16'hfffe;
    cycloneii_lcell_comb ix25299z52924 (.combout (nx25299z1), .dataa (v[2]), .datab (
                         v[1]), .datac (v[0]), .datad (nx25299z2), .cin (1'b0)
                         ) ;
                         defparam ix25299z52924.lut_mask = 16'h0302;
    cycloneii_lcell_comb ix32637z52925 (.combout (nx32637z3), .dataa (v[3]), .datab (
                         v[2]), .datac (v[1]), .datad (v[0]), .cin (1'b0)) ;
                         
                         defparam ix32637z52925.lut_mask = 16'hfffe;
    cycloneii_lcell_comb ix35695z52924 (.combout (dir6_23n5ss1_2_), .dataa (
                         dir3_2_), .datab (dir5[2]), .datac (nx24302z1), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix35695z52924.lut_mask = 16'hcaca;
    cycloneii_lcell_comb ix38260z52923 (.combout (dir5_23n5ss1_2_), .dataa (
                         dir1_2_), .datab (dir2_2_), .datac (nx24302z1), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix38260z52923.lut_mask = 16'hacac;
    cycloneii_lcell_comb ix46679z52924 (.combout (nx46679z2), .dataa (v[4]), .datab (
                         v[3]), .datac (v[2]), .datad (v[1]), .cin (1'b0)) ;
                         
                         defparam ix46679z52924.lut_mask = 16'h0002;
    cycloneii_lcell_comb ix10438z52924 (.combout (nx10438z2), .dataa (v[3]), .datab (
                         v[2]), .datac (v[1]), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix10438z52924.lut_mask = 16'h0202;
    cycloneii_lcell_comb ix20492z52924 (.combout (nx20492z2), .dataa (t[1]), .datab (
                         t[0]), .datac (i_valid_int), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix20492z52924.lut_mask = 16'h7070;
    cycloneii_lcell_comb ix17322z52923 (.combout (nx17322z1), .dataa (nx17322z2)
                         , .datab (nx17322z3), .datac (nx17322z4), .datad (
                         nx17322z7), .cin (1'b0)) ;
                         
                         defparam ix17322z52923.lut_mask = 16'hfffe;
    cycloneii_lcell_comb ix17322z52931 (.combout (nx17322z9), .dataa (
                         i_reset_int), .datab (nx17322z10), .datac (nx17322z11)
                         , .datad (nx17322z14), .cin (1'b0)) ;
                         
                         defparam ix17322z52931.lut_mask = 16'hfefa;
    cycloneii_lcell_comb ix39522z52923 (.combout (t_20n2s1[0]), .dataa (t[1]), .datab (
                         t[0]), .datac (1'b1), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix39522z52923.lut_mask = 16'h1111;
    cycloneii_lcell_comb ix38525z52923 (.combout (t_20n2s1[1]), .dataa (t[1]), .datab (
                         t[0]), .datac (1'b1), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix38525z52923.lut_mask = 16'h4444;
    cycloneii_lcell_comb ix26373z52923 (.combout (nx26373z1), .dataa (
                         o_mode_dup0[1]), .datab (nx47893z1), .datac (end_of_img
                         ), .datad (nx26373z2), .cin (1'b0)) ;
                         
                         defparam ix26373z52923.lut_mask = 16'h00f9;
    cycloneii_lcell_comb ix19087z52959 (.combout (addr_x[0]), .dataa (x[0]), .datab (
                         nx19087z23), .datac (nx19087z4), .datad (nx19087z5), .cin (
                         1'b0)) ;
                         defparam ix19087z52959.lut_mask = 16'heeec;
    cycloneii_lcell_comb ix19087z52955 (.combout (addr_x[1]), .dataa (x[1]), .datab (
                         nx19087z20), .datac (nx19087z4), .datad (nx19087z5), .cin (
                         1'b0)) ;
                         defparam ix19087z52955.lut_mask = 16'heeec;
    cycloneii_lcell_comb ix19087z52952 (.combout (addr_x[2]), .dataa (x[2]), .datab (
                         nx19087z18), .datac (nx19087z4), .datad (nx19087z5), .cin (
                         1'b0)) ;
                         defparam ix19087z52952.lut_mask = 16'heeec;
    cycloneii_lcell_comb ix19087z52948 (.combout (addr_x[3]), .dataa (x[3]), .datab (
                         nx19087z15), .datac (nx19087z4), .datad (nx19087z5), .cin (
                         1'b0)) ;
                         defparam ix19087z52948.lut_mask = 16'heeec;
    cycloneii_lcell_comb ix19087z52944 (.combout (addr_x[4]), .dataa (x[4]), .datab (
                         nx19087z12), .datac (nx19087z4), .datad (nx19087z5), .cin (
                         1'b0)) ;
                         defparam ix19087z52944.lut_mask = 16'heeec;
    cycloneii_lcell_comb ix19087z52941 (.combout (addr_x[5]), .dataa (x[5]), .datab (
                         nx19087z10), .datac (nx19087z4), .datad (nx19087z5), .cin (
                         1'b0)) ;
                         defparam ix19087z52941.lut_mask = 16'heeec;
    cycloneii_lcell_comb ix19087z52936 (.combout (addr_x[6]), .dataa (x[6]), .datab (
                         nx19087z6), .datac (nx19087z4), .datad (nx19087z5), .cin (
                         1'b0)) ;
                         defparam ix19087z52936.lut_mask = 16'heeec;
    cycloneii_lcell_comb ix19087z52930 (.combout (addr_x[7]), .dataa (x[7]), .datab (
                         nx19087z1), .datac (nx19087z4), .datad (nx19087z5), .cin (
                         1'b0)) ;
                         defparam ix19087z52930.lut_mask = 16'heeec;
    cycloneii_lcell_comb ix33275z52923 (.combout (max2[0]), .dataa (r9[0]), .datab (
                         r11[0]), .datac (nx24302z1), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix33275z52923.lut_mask = 16'hacac;
    cycloneii_lcell_comb ix32278z52923 (.combout (max2[1]), .dataa (r9[1]), .datab (
                         r11[1]), .datac (nx24302z1), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix32278z52923.lut_mask = 16'hacac;
    cycloneii_lcell_comb ix31281z52923 (.combout (max2[2]), .dataa (r9[2]), .datab (
                         r11[2]), .datac (nx24302z1), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix31281z52923.lut_mask = 16'hacac;
    cycloneii_lcell_comb ix30284z52923 (.combout (max2[3]), .dataa (r9[3]), .datab (
                         r11[3]), .datac (nx24302z1), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix30284z52923.lut_mask = 16'hacac;
    cycloneii_lcell_comb ix29287z52923 (.combout (max2[4]), .dataa (r9[4]), .datab (
                         r11[4]), .datac (nx24302z1), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix29287z52923.lut_mask = 16'hacac;
    cycloneii_lcell_comb ix28290z52923 (.combout (max2[5]), .dataa (r9[5]), .datab (
                         r11[5]), .datac (nx24302z1), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix28290z52923.lut_mask = 16'hacac;
    cycloneii_lcell_comb ix27293z52923 (.combout (max2[6]), .dataa (r9[6]), .datab (
                         r11[6]), .datac (nx24302z1), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix27293z52923.lut_mask = 16'hacac;
    cycloneii_lcell_comb ix26296z52923 (.combout (max2[7]), .dataa (r9[7]), .datab (
                         r11[7]), .datac (nx24302z1), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix26296z52923.lut_mask = 16'hacac;
    cycloneii_lcell_comb ix25299z52923 (.combout (max2[8]), .dataa (r9[8]), .datab (
                         r11[8]), .datac (nx24302z1), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix25299z52923.lut_mask = 16'hacac;
    cycloneii_lcell_comb ix24302z52923 (.combout (max2[9]), .dataa (r9[9]), .datab (
                         r11[9]), .datac (nx24302z1), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix24302z52923.lut_mask = 16'hacac;
    cycloneii_lcell_comb ix24222z52923 (.combout (wren_m3), .dataa (i_valid_int)
                         , .datab (nx24222z1), .datac (nx19087z26), .datad (
                         nx19087z27), .cin (1'b0)) ;
                         
                         defparam ix24222z52923.lut_mask = 16'h8880;
    cycloneii_lcell_comb ix19087z52963 (.combout (wren_m2), .dataa (i_valid_int)
                         , .datab (t_20n2s1[1]), .datac (nx19087z26), .datad (
                         nx19087z27), .cin (1'b0)) ;
                         
                         defparam ix19087z52963.lut_mask = 16'h8880;
    cycloneii_lcell_comb ix13952z52923 (.combout (wren_m1), .dataa (i_valid_int)
                         , .datab (t_20n2s1[0]), .datac (nx6176z3), .datad (
                         nx17322z15), .cin (1'b0)) ;
                         
                         defparam ix13952z52923.lut_mask = 16'ha888;
    cycloneii_lcell_comb ix33603z52923 (.combout (o_dir_dup0[0]), .dataa (v[7])
                         , .datab (dir7[0]), .datac (nx36874z3), .datad (
                         nx31609z1), .cin (1'b0)) ;
                         
                         defparam ix33603z52923.lut_mask = 16'h8000;
    cycloneii_lcell_comb ix32606z52923 (.combout (o_dir_dup0[1]), .dataa (v[7])
                         , .datab (dir7[1]), .datac (nx36874z3), .datad (
                         nx31609z1), .cin (1'b0)) ;
                         
                         defparam ix32606z52923.lut_mask = 16'h8000;
    cycloneii_lcell_comb ix31609z52923 (.combout (o_dir_dup0[2]), .dataa (v[7])
                         , .datab (dir7[2]), .datac (nx36874z3), .datad (
                         nx31609z1), .cin (1'b0)) ;
                         
                         defparam ix31609z52923.lut_mask = 16'h8000;
    cycloneii_lcell_comb ix36874z52923 (.combout (o_edge_dup0), .dataa (
                         nx36874z1), .datab (nx36874z2), .datac (nx36874z4), .datad (
                         nx36874z7), .cin (1'b0)) ;
                         
                         defparam ix36874z52923.lut_mask = 16'hccc8;
endmodule


module ram_dq_8_2 ( wr_data1, rd_data1, addr1, wr_clk1, rd_clk1, wr_ena1, 
                    rd_ena1, ena1, rst1, regce1 ) ;

    input [7:0]wr_data1 ;
    output [7:0]rd_data1 ;
    input [7:0]addr1 ;
    input wr_clk1 ;
    input rd_clk1 ;
    input wr_ena1 ;
    input rd_ena1 ;
    input ena1 ;
    input rst1 ;
    input regce1 ;

    wire ena1_rename624;



    altsyncram ix64056z29483 (.data_a ({wr_data1[7],wr_data1[6],wr_data1[5],
               wr_data1[4],wr_data1[3],wr_data1[2],wr_data1[1],wr_data1[0]}), .address_a (
               {addr1[7],addr1[6],addr1[5],addr1[4],addr1[3],addr1[2],addr1[1],
               addr1[0]}), .wren_a (wr_ena1), .clock0 (wr_clk1), .clocken0 (
               ena1_rename624), .q_a ({rd_data1[7],rd_data1[6],rd_data1[5],
               rd_data1[4],rd_data1[3],rd_data1[2],rd_data1[1],rd_data1[0]})) ;
               
               defparam ix64056z29483.width_a = 8;
               
               defparam ix64056z29483.widthad_a = 8;
               
               defparam ix64056z29483.numwords_a = 256;
               
               defparam ix64056z29483.outdata_reg_a = "UNREGISTERED";
               
               defparam ix64056z29483.address_aclr_a = "NONE";
               
               defparam ix64056z29483.outdata_aclr_a = "NONE";
               
               defparam ix64056z29483.indata_aclr_a = "NONE";
               
               defparam ix64056z29483.wrcontrol_aclr_a = "NONE";
               
               defparam ix64056z29483.byteena_aclr_a = "NONE";
               
               defparam ix64056z29483.width_byteena_a = 1;
               
               defparam ix64056z29483.width_b = 8;
               
               defparam ix64056z29483.widthad_b = 8;
               
               defparam ix64056z29483.numwords_b = 256;
               
               defparam ix64056z29483.rdcontrol_reg_b = "CLOCK1";
               
               defparam ix64056z29483.address_reg_b = "CLOCK1";
               
               defparam ix64056z29483.outdata_reg_b = "UNREGISTERED";
               
               defparam ix64056z29483.outdata_aclr_b = "NONE";
               
               defparam ix64056z29483.rdcontrol_aclr_b = "NONE";
               
               defparam ix64056z29483.indata_reg_b = "CLOCK1";
               
               defparam ix64056z29483.wrcontrol_wraddress_reg_b = "CLOCK1";
               
               defparam ix64056z29483.byteena_reg_b = "CLOCK1";
               
               defparam ix64056z29483.indata_aclr_b = "NONE";
               
               defparam ix64056z29483.wrcontrol_aclr_b = "NONE";
               
               defparam ix64056z29483.byteena_aclr_b = "NONE";
               
               defparam ix64056z29483.width_byteena_b = 1;
               
               defparam ix64056z29483.address_aclr_b = "NONE";
               
               defparam ix64056z29483.operation_mode = "SINGLE_PORT";
               
               defparam ix64056z29483.byte_size = 8;
               
               defparam ix64056z29483.read_during_write_mode_mixed_ports = "DONT_CARE";
               
               defparam ix64056z29483.ram_block_type = "AUTO";
               
               defparam ix64056z29483.init_file = "UNUSED";
               
               defparam ix64056z29483.init_file_layout = "UNUSED";
               
               defparam ix64056z29483.maximum_depth = 0;
               
               defparam ix64056z29483.intended_device_family = "Stratix";
               
               defparam ix64056z29483.lpm_hint = "UNUSED";
               
               defparam ix64056z29483.lpm_type = "altsyncram";
    assign ena1_rename624 = 1 ;
endmodule


module ram_dq_8_1 ( wr_data1, rd_data1, addr1, wr_clk1, rd_clk1, wr_ena1, 
                    rd_ena1, ena1, rst1, regce1 ) ;

    input [7:0]wr_data1 ;
    output [7:0]rd_data1 ;
    input [7:0]addr1 ;
    input wr_clk1 ;
    input rd_clk1 ;
    input wr_ena1 ;
    input rd_ena1 ;
    input ena1 ;
    input rst1 ;
    input regce1 ;

    wire ena1_rename594;



    altsyncram ix64056z29482 (.data_a ({wr_data1[7],wr_data1[6],wr_data1[5],
               wr_data1[4],wr_data1[3],wr_data1[2],wr_data1[1],wr_data1[0]}), .address_a (
               {addr1[7],addr1[6],addr1[5],addr1[4],addr1[3],addr1[2],addr1[1],
               addr1[0]}), .wren_a (wr_ena1), .clock0 (wr_clk1), .clocken0 (
               ena1_rename594), .q_a ({rd_data1[7],rd_data1[6],rd_data1[5],
               rd_data1[4],rd_data1[3],rd_data1[2],rd_data1[1],rd_data1[0]})) ;
               
               defparam ix64056z29482.width_a = 8;
               
               defparam ix64056z29482.widthad_a = 8;
               
               defparam ix64056z29482.numwords_a = 256;
               
               defparam ix64056z29482.outdata_reg_a = "UNREGISTERED";
               
               defparam ix64056z29482.address_aclr_a = "NONE";
               
               defparam ix64056z29482.outdata_aclr_a = "NONE";
               
               defparam ix64056z29482.indata_aclr_a = "NONE";
               
               defparam ix64056z29482.wrcontrol_aclr_a = "NONE";
               
               defparam ix64056z29482.byteena_aclr_a = "NONE";
               
               defparam ix64056z29482.width_byteena_a = 1;
               
               defparam ix64056z29482.width_b = 8;
               
               defparam ix64056z29482.widthad_b = 8;
               
               defparam ix64056z29482.numwords_b = 256;
               
               defparam ix64056z29482.rdcontrol_reg_b = "CLOCK1";
               
               defparam ix64056z29482.address_reg_b = "CLOCK1";
               
               defparam ix64056z29482.outdata_reg_b = "UNREGISTERED";
               
               defparam ix64056z29482.outdata_aclr_b = "NONE";
               
               defparam ix64056z29482.rdcontrol_aclr_b = "NONE";
               
               defparam ix64056z29482.indata_reg_b = "CLOCK1";
               
               defparam ix64056z29482.wrcontrol_wraddress_reg_b = "CLOCK1";
               
               defparam ix64056z29482.byteena_reg_b = "CLOCK1";
               
               defparam ix64056z29482.indata_aclr_b = "NONE";
               
               defparam ix64056z29482.wrcontrol_aclr_b = "NONE";
               
               defparam ix64056z29482.byteena_aclr_b = "NONE";
               
               defparam ix64056z29482.width_byteena_b = 1;
               
               defparam ix64056z29482.address_aclr_b = "NONE";
               
               defparam ix64056z29482.operation_mode = "SINGLE_PORT";
               
               defparam ix64056z29482.byte_size = 8;
               
               defparam ix64056z29482.read_during_write_mode_mixed_ports = "DONT_CARE";
               
               defparam ix64056z29482.ram_block_type = "AUTO";
               
               defparam ix64056z29482.init_file = "UNUSED";
               
               defparam ix64056z29482.init_file_layout = "UNUSED";
               
               defparam ix64056z29482.maximum_depth = 0;
               
               defparam ix64056z29482.intended_device_family = "Stratix";
               
               defparam ix64056z29482.lpm_hint = "UNUSED";
               
               defparam ix64056z29482.lpm_type = "altsyncram";
    assign ena1_rename594 = 1 ;
endmodule


module ram_dq_8_0 ( wr_data1, rd_data1, addr1, wr_clk1, rd_clk1, wr_ena1, 
                    rd_ena1, ena1, rst1, regce1 ) ;

    input [7:0]wr_data1 ;
    output [7:0]rd_data1 ;
    input [7:0]addr1 ;
    input wr_clk1 ;
    input rd_clk1 ;
    input wr_ena1 ;
    input rd_ena1 ;
    input ena1 ;
    input rst1 ;
    input regce1 ;

    wire ena1_rename564;



    altsyncram ix64056z29481 (.data_a ({wr_data1[7],wr_data1[6],wr_data1[5],
               wr_data1[4],wr_data1[3],wr_data1[2],wr_data1[1],wr_data1[0]}), .address_a (
               {addr1[7],addr1[6],addr1[5],addr1[4],addr1[3],addr1[2],addr1[1],
               addr1[0]}), .wren_a (wr_ena1), .clock0 (wr_clk1), .clocken0 (
               ena1_rename564), .q_a ({rd_data1[7],rd_data1[6],rd_data1[5],
               rd_data1[4],rd_data1[3],rd_data1[2],rd_data1[1],rd_data1[0]})) ;
               
               defparam ix64056z29481.width_a = 8;
               
               defparam ix64056z29481.widthad_a = 8;
               
               defparam ix64056z29481.numwords_a = 256;
               
               defparam ix64056z29481.outdata_reg_a = "UNREGISTERED";
               
               defparam ix64056z29481.address_aclr_a = "NONE";
               
               defparam ix64056z29481.outdata_aclr_a = "NONE";
               
               defparam ix64056z29481.indata_aclr_a = "NONE";
               
               defparam ix64056z29481.wrcontrol_aclr_a = "NONE";
               
               defparam ix64056z29481.byteena_aclr_a = "NONE";
               
               defparam ix64056z29481.width_byteena_a = 1;
               
               defparam ix64056z29481.width_b = 8;
               
               defparam ix64056z29481.widthad_b = 8;
               
               defparam ix64056z29481.numwords_b = 256;
               
               defparam ix64056z29481.rdcontrol_reg_b = "CLOCK1";
               
               defparam ix64056z29481.address_reg_b = "CLOCK1";
               
               defparam ix64056z29481.outdata_reg_b = "UNREGISTERED";
               
               defparam ix64056z29481.outdata_aclr_b = "NONE";
               
               defparam ix64056z29481.rdcontrol_aclr_b = "NONE";
               
               defparam ix64056z29481.indata_reg_b = "CLOCK1";
               
               defparam ix64056z29481.wrcontrol_wraddress_reg_b = "CLOCK1";
               
               defparam ix64056z29481.byteena_reg_b = "CLOCK1";
               
               defparam ix64056z29481.indata_aclr_b = "NONE";
               
               defparam ix64056z29481.wrcontrol_aclr_b = "NONE";
               
               defparam ix64056z29481.byteena_aclr_b = "NONE";
               
               defparam ix64056z29481.width_byteena_b = 1;
               
               defparam ix64056z29481.address_aclr_b = "NONE";
               
               defparam ix64056z29481.operation_mode = "SINGLE_PORT";
               
               defparam ix64056z29481.byte_size = 8;
               
               defparam ix64056z29481.read_during_write_mode_mixed_ports = "DONT_CARE";
               
               defparam ix64056z29481.ram_block_type = "AUTO";
               
               defparam ix64056z29481.init_file = "UNUSED";
               
               defparam ix64056z29481.init_file_layout = "UNUSED";
               
               defparam ix64056z29481.maximum_depth = 0;
               
               defparam ix64056z29481.intended_device_family = "Stratix";
               
               defparam ix64056z29481.lpm_hint = "UNUSED";
               
               defparam ix64056z29481.lpm_type = "altsyncram";
    assign ena1_rename564 = 1 ;
endmodule


module sub_12_0 ( cin, a, b, d, cout, p_r15_0_ ) ;

    input cin ;
    input [11:0]a ;
    input [11:0]b ;
    output [11:0]d ;
    output cout ;
    input p_r15_0_ ;

    wire nx63795z11, nx63795z10, nx63795z9, nx63795z8, nx63795z7, nx63795z6, 
         nx63795z5, nx63795z4, nx63795z3, nx63795z2, nx63795z1, nx23445z2, 
         nx_sub_12_0_vcc_net;
    wire [23:0] xmplr_dummy ;




    cycloneii_lcell_comb ix63795z52923 (.combout (d[11]), .cout (nx23445z2), .dataa (
                         b[11]), .datab (a[11]), .datac (1'b1), .datad (
                         nx_sub_12_0_vcc_net), .cin (nx63795z1)) ;
                         
                         defparam ix63795z52923.lut_mask = 16'h69d4;
                         
                         defparam ix63795z52923.sum_lutc_input = "cin";
    assign nx_sub_12_0_vcc_net = 1 ;
    cycloneii_lcell_comb ix63795z52925 (.combout (d[10]), .cout (nx63795z1), .dataa (
                         b[10]), .datab (a[10]), .datac (1'b1), .datad (
                         nx_sub_12_0_vcc_net), .cin (nx63795z2)) ;
                         
                         defparam ix63795z52925.lut_mask = 16'h69d4;
                         
                         defparam ix63795z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix63795z52926 (.combout (d[9]), .cout (nx63795z2), .dataa (
                         b[9]), .datab (a[9]), .datac (1'b1), .datad (
                         nx_sub_12_0_vcc_net), .cin (nx63795z3)) ;
                         
                         defparam ix63795z52926.lut_mask = 16'h69d4;
                         
                         defparam ix63795z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix63795z52927 (.combout (d[8]), .cout (nx63795z3), .dataa (
                         b[8]), .datab (a[8]), .datac (1'b1), .datad (
                         nx_sub_12_0_vcc_net), .cin (nx63795z4)) ;
                         
                         defparam ix63795z52927.lut_mask = 16'h69d4;
                         
                         defparam ix63795z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix63795z52928 (.combout (d[7]), .cout (nx63795z4), .dataa (
                         b[7]), .datab (a[7]), .datac (1'b1), .datad (
                         nx_sub_12_0_vcc_net), .cin (nx63795z5)) ;
                         
                         defparam ix63795z52928.lut_mask = 16'h69d4;
                         
                         defparam ix63795z52928.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix23445z52923 (.combout (cout), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx_sub_12_0_vcc_net), .cin (
                         nx23445z2)) ;
                         
                         defparam ix23445z52923.lut_mask = 16'hf000;
                         
                         defparam ix23445z52923.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix63795z52929 (.combout (d[6]), .cout (nx63795z5), .dataa (
                         b[6]), .datab (a[6]), .datac (1'b1), .datad (
                         nx_sub_12_0_vcc_net), .cin (nx63795z6)) ;
                         
                         defparam ix63795z52929.lut_mask = 16'h69d4;
                         
                         defparam ix63795z52929.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix63795z52930 (.cout (nx63795z6), .dataa (b[5]), .datab (
                         a[5]), .datac (1'b1), .datad (nx_sub_12_0_vcc_net), .cin (
                         nx63795z7)) ;
                         
                         defparam ix63795z52930.lut_mask = 16'h00d4;
                         
                         defparam ix63795z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix63795z52931 (.cout (nx63795z7), .dataa (b[4]), .datab (
                         a[4]), .datac (1'b1), .datad (nx_sub_12_0_vcc_net), .cin (
                         nx63795z8)) ;
                         
                         defparam ix63795z52931.lut_mask = 16'h00d4;
                         
                         defparam ix63795z52931.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix63795z52932 (.cout (nx63795z8), .dataa (b[3]), .datab (
                         a[3]), .datac (1'b1), .datad (nx_sub_12_0_vcc_net), .cin (
                         nx63795z9)) ;
                         
                         defparam ix63795z52932.lut_mask = 16'h00d4;
                         
                         defparam ix63795z52932.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix63795z52933 (.cout (nx63795z9), .dataa (b[2]), .datab (
                         a[2]), .datac (1'b1), .datad (nx_sub_12_0_vcc_net), .cin (
                         nx63795z10)) ;
                         
                         defparam ix63795z52933.lut_mask = 16'h00d4;
                         
                         defparam ix63795z52933.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix63795z52934 (.cout (nx63795z10), .dataa (b[1]), .datab (
                         1'b1), .datac (1'b1), .datad (nx_sub_12_0_vcc_net), .cin (
                         nx63795z11)) ;
                         
                         defparam ix63795z52934.lut_mask = 16'h0050;
                         
                         defparam ix63795z52934.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix63795z52935 (.cout (nx63795z11), .dataa (p_r15_0_), .datab (
                         b[0]), .datac (1'b1), .datad (nx_sub_12_0_vcc_net), .cin (
                         1'b0)) ;
                         defparam ix63795z52935.lut_mask = 16'h0011;
endmodule


module add_11_1 ( cin, a, b, d, cout ) ;

    input cin ;
    input [10:0]a ;
    input [10:0]b ;
    output [10:0]d ;
    output cout ;

    wire nx62798z21, nx62798z19, nx62798z17, nx62798z15, nx62798z13, nx62798z11, 
         nx62798z9, nx62798z7, nx62798z5, nx62798z3, nx23445z2, 
         nx_add_11_1_vcc_net;
    wire [16:0] xmplr_dummy ;




    cycloneii_lcell_comb ix62798z52923 (.combout (d[10]), .cout (nx23445z2), .dataa (
                         a[9]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_add_11_1_vcc_net), .cin (nx62798z3)) ;
                         
                         defparam ix62798z52923.lut_mask = 16'h5aa0;
                         
                         defparam ix62798z52923.sum_lutc_input = "cin";
    assign nx_add_11_1_vcc_net = 1 ;
    cycloneii_lcell_comb ix62798z52925 (.combout (d[9]), .cout (nx62798z3), .dataa (
                         a[8]), .datab (a[9]), .datac (1'b1), .datad (
                         nx_add_11_1_vcc_net), .cin (nx62798z5)) ;
                         
                         defparam ix62798z52925.lut_mask = 16'h96e8;
                         
                         defparam ix62798z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix62798z52926 (.combout (d[8]), .cout (nx62798z5), .dataa (
                         a[7]), .datab (a[8]), .datac (1'b1), .datad (
                         nx_add_11_1_vcc_net), .cin (nx62798z7)) ;
                         
                         defparam ix62798z52926.lut_mask = 16'h96e8;
                         
                         defparam ix62798z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix62798z52927 (.combout (d[7]), .cout (nx62798z7), .dataa (
                         a[6]), .datab (a[7]), .datac (1'b1), .datad (
                         nx_add_11_1_vcc_net), .cin (nx62798z9)) ;
                         
                         defparam ix62798z52927.lut_mask = 16'h96e8;
                         
                         defparam ix62798z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix62798z52928 (.combout (d[6]), .cout (nx62798z9), .dataa (
                         a[5]), .datab (a[6]), .datac (1'b1), .datad (
                         nx_add_11_1_vcc_net), .cin (nx62798z11)) ;
                         
                         defparam ix62798z52928.lut_mask = 16'h96e8;
                         
                         defparam ix62798z52928.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix62798z52929 (.combout (d[5]), .cout (nx62798z11), .dataa (
                         a[4]), .datab (a[5]), .datac (1'b1), .datad (
                         nx_add_11_1_vcc_net), .cin (nx62798z13)) ;
                         
                         defparam ix62798z52929.lut_mask = 16'h96e8;
                         
                         defparam ix62798z52929.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix62798z52930 (.combout (d[4]), .cout (nx62798z13), .dataa (
                         a[3]), .datab (a[4]), .datac (1'b1), .datad (
                         nx_add_11_1_vcc_net), .cin (nx62798z15)) ;
                         
                         defparam ix62798z52930.lut_mask = 16'h96e8;
                         
                         defparam ix62798z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix62798z52931 (.combout (d[3]), .cout (nx62798z15), .dataa (
                         a[2]), .datab (a[3]), .datac (1'b1), .datad (
                         nx_add_11_1_vcc_net), .cin (nx62798z17)) ;
                         
                         defparam ix62798z52931.lut_mask = 16'h96e8;
                         
                         defparam ix62798z52931.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix62798z52932 (.combout (d[2]), .cout (nx62798z17), .dataa (
                         a[1]), .datab (a[2]), .datac (1'b1), .datad (
                         nx_add_11_1_vcc_net), .cin (nx62798z19)) ;
                         
                         defparam ix62798z52932.lut_mask = 16'h96e8;
                         
                         defparam ix62798z52932.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix23445z52923 (.combout (cout), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx_add_11_1_vcc_net), .cin (
                         nx23445z2)) ;
                         
                         defparam ix23445z52923.lut_mask = 16'hf000;
                         
                         defparam ix23445z52923.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix62798z52933 (.combout (d[1]), .cout (nx62798z19), .dataa (
                         a[0]), .datab (a[1]), .datac (1'b1), .datad (
                         nx_add_11_1_vcc_net), .cin (nx62798z21)) ;
                         
                         defparam ix62798z52933.lut_mask = 16'h96e8;
                         
                         defparam ix62798z52933.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix62798z52934 (.combout (d[0]), .cout (nx62798z21), .dataa (
                         a[0]), .datab (b[0]), .datac (1'b1), .datad (
                         nx_add_11_1_vcc_net), .cin (1'b0)) ;
                         
                         defparam ix62798z52934.lut_mask = 16'h6688;
endmodule


module add_9_0 ( cin, a, b, d, cout ) ;

    input cin ;
    input [8:0]a ;
    input [8:0]b ;
    output [8:0]d ;
    output cout ;

    wire nx45949z24, nx45949z21, nx45949z18, nx45949z15, nx45949z12, nx45949z9, 
         nx45949z6, nx45949z3, nx23445z2, nx_add_9_0_vcc_net;
    wire [14:0] xmplr_dummy ;




    cycloneii_lcell_comb ix45949z52923 (.combout (d[8]), .cout (nx23445z2), .dataa (
                         b[8]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_add_9_0_vcc_net), .cin (nx45949z3)) ;
                         
                         defparam ix45949z52923.lut_mask = 16'h5aa0;
                         
                         defparam ix45949z52923.sum_lutc_input = "cin";
    assign nx_add_9_0_vcc_net = 1 ;
    cycloneii_lcell_comb ix45949z52925 (.combout (d[7]), .cout (nx45949z3), .dataa (
                         b[7]), .datab (a[7]), .datac (1'b1), .datad (
                         nx_add_9_0_vcc_net), .cin (nx45949z6)) ;
                         
                         defparam ix45949z52925.lut_mask = 16'h96e8;
                         
                         defparam ix45949z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix45949z52926 (.combout (d[6]), .cout (nx45949z6), .dataa (
                         b[6]), .datab (a[6]), .datac (1'b1), .datad (
                         nx_add_9_0_vcc_net), .cin (nx45949z9)) ;
                         
                         defparam ix45949z52926.lut_mask = 16'h96e8;
                         
                         defparam ix45949z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix45949z52927 (.combout (d[5]), .cout (nx45949z9), .dataa (
                         b[5]), .datab (a[5]), .datac (1'b1), .datad (
                         nx_add_9_0_vcc_net), .cin (nx45949z12)) ;
                         
                         defparam ix45949z52927.lut_mask = 16'h96e8;
                         
                         defparam ix45949z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix45949z52928 (.combout (d[4]), .cout (nx45949z12), .dataa (
                         b[4]), .datab (a[4]), .datac (1'b1), .datad (
                         nx_add_9_0_vcc_net), .cin (nx45949z15)) ;
                         
                         defparam ix45949z52928.lut_mask = 16'h96e8;
                         
                         defparam ix45949z52928.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix45949z52929 (.combout (d[3]), .cout (nx45949z15), .dataa (
                         b[3]), .datab (a[3]), .datac (1'b1), .datad (
                         nx_add_9_0_vcc_net), .cin (nx45949z18)) ;
                         
                         defparam ix45949z52929.lut_mask = 16'h96e8;
                         
                         defparam ix45949z52929.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix45949z52930 (.combout (d[2]), .cout (nx45949z18), .dataa (
                         b[2]), .datab (a[2]), .datac (1'b1), .datad (
                         nx_add_9_0_vcc_net), .cin (nx45949z21)) ;
                         
                         defparam ix45949z52930.lut_mask = 16'h96e8;
                         
                         defparam ix45949z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix23445z52923 (.combout (cout), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx_add_9_0_vcc_net), .cin (
                         nx23445z2)) ;
                         
                         defparam ix23445z52923.lut_mask = 16'hf000;
                         
                         defparam ix23445z52923.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix45949z52931 (.combout (d[1]), .cout (nx45949z21), .dataa (
                         b[1]), .datab (a[1]), .datac (1'b1), .datad (
                         nx_add_9_0_vcc_net), .cin (nx45949z24)) ;
                         
                         defparam ix45949z52931.lut_mask = 16'h96e8;
                         
                         defparam ix45949z52931.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix45949z52932 (.combout (d[0]), .cout (nx45949z24), .dataa (
                         a[0]), .datab (b[0]), .datac (1'b1), .datad (
                         nx_add_9_0_vcc_net), .cin (1'b0)) ;
                         
                         defparam ix45949z52932.lut_mask = 16'h6688;
endmodule


module add_8_0 ( cin, a, b, d, cout ) ;

    input cin ;
    input [7:0]a ;
    input [7:0]b ;
    output [7:0]d ;
    output cout ;

    wire nx44952z22, nx44952z19, nx44952z16, nx44952z13, nx44952z10, nx44952z7, 
         nx44952z4, nx23445z2, nx_add_8_0_vcc_net;
    wire [12:0] xmplr_dummy ;




    cycloneii_lcell_comb ix44952z52923 (.combout (d[7]), .cout (nx23445z2), .dataa (
                         b[7]), .datab (a[7]), .datac (1'b1), .datad (
                         nx_add_8_0_vcc_net), .cin (nx44952z4)) ;
                         
                         defparam ix44952z52923.lut_mask = 16'h96e8;
                         
                         defparam ix44952z52923.sum_lutc_input = "cin";
    assign nx_add_8_0_vcc_net = 1 ;
    cycloneii_lcell_comb ix44952z52925 (.combout (d[6]), .cout (nx44952z4), .dataa (
                         b[6]), .datab (a[6]), .datac (1'b1), .datad (
                         nx_add_8_0_vcc_net), .cin (nx44952z7)) ;
                         
                         defparam ix44952z52925.lut_mask = 16'h96e8;
                         
                         defparam ix44952z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix44952z52926 (.combout (d[5]), .cout (nx44952z7), .dataa (
                         b[5]), .datab (a[5]), .datac (1'b1), .datad (
                         nx_add_8_0_vcc_net), .cin (nx44952z10)) ;
                         
                         defparam ix44952z52926.lut_mask = 16'h96e8;
                         
                         defparam ix44952z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix44952z52927 (.combout (d[4]), .cout (nx44952z10), .dataa (
                         b[4]), .datab (a[4]), .datac (1'b1), .datad (
                         nx_add_8_0_vcc_net), .cin (nx44952z13)) ;
                         
                         defparam ix44952z52927.lut_mask = 16'h96e8;
                         
                         defparam ix44952z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix44952z52928 (.combout (d[3]), .cout (nx44952z13), .dataa (
                         b[3]), .datab (a[3]), .datac (1'b1), .datad (
                         nx_add_8_0_vcc_net), .cin (nx44952z16)) ;
                         
                         defparam ix44952z52928.lut_mask = 16'h96e8;
                         
                         defparam ix44952z52928.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix44952z52929 (.combout (d[2]), .cout (nx44952z16), .dataa (
                         b[2]), .datab (a[2]), .datac (1'b1), .datad (
                         nx_add_8_0_vcc_net), .cin (nx44952z19)) ;
                         
                         defparam ix44952z52929.lut_mask = 16'h96e8;
                         
                         defparam ix44952z52929.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix23445z52923 (.combout (cout), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx_add_8_0_vcc_net), .cin (
                         nx23445z2)) ;
                         
                         defparam ix23445z52923.lut_mask = 16'hf000;
                         
                         defparam ix23445z52923.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix44952z52930 (.combout (d[1]), .cout (nx44952z19), .dataa (
                         b[1]), .datab (a[1]), .datac (1'b1), .datad (
                         nx_add_8_0_vcc_net), .cin (nx44952z22)) ;
                         
                         defparam ix44952z52930.lut_mask = 16'h96e8;
                         
                         defparam ix44952z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix44952z52931 (.combout (d[0]), .cout (nx44952z22), .dataa (
                         a[0]), .datab (b[0]), .datac (1'b1), .datad (
                         nx_add_8_0_vcc_net), .cin (1'b0)) ;
                         
                         defparam ix44952z52931.lut_mask = 16'h6688;
endmodule


module modgen_counter_8_1 ( clock, q, clk_en, aclear, sload, data, aset, sclear, 
                            updn, cnt_en, px50, px23, px46, px24, px17, px13, 
                            px9, px5, px1 ) ;

    input clock ;
    output [7:0]q ;
    input clk_en ;
    input aclear ;
    input sload ;
    input [7:0]data ;
    input aset ;
    input sclear ;
    input updn ;
    input cnt_en ;
    output px50 ;
    output px23 ;
    output px46 ;
    output px24 ;
    output px17 ;
    output px13 ;
    output px9 ;
    output px5 ;
    output px1 ;

    wire nx58250z14, nx58250z12, nx58250z10, nx58250z8, nx58250z6, nx58250z4, 
         nx58250z2, nx_modgen_counter_8_1_vcc_net;
    wire [44:0] xmplr_dummy ;




    cycloneii_lcell_ff reg_q_7_ (.regout (q[7]), .datain (px50), .sdata (1'b0), 
                       .clk (clock), .ena (px23), .aclr (1'b0), .sclr (sclear), 
                       .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_6_ (.regout (q[6]), .datain (px46), .sdata (1'b0), 
                       .clk (clock), .ena (px23), .aclr (1'b0), .sclr (sclear), 
                       .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_5_ (.regout (q[5]), .datain (px24), .sdata (1'b0), 
                       .clk (clock), .ena (px23), .aclr (1'b0), .sclr (sclear), 
                       .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_4_ (.regout (q[4]), .datain (px17), .sdata (1'b0), 
                       .clk (clock), .ena (px23), .aclr (1'b0), .sclr (sclear), 
                       .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_3_ (.regout (q[3]), .datain (px13), .sdata (1'b0), 
                       .clk (clock), .ena (px23), .aclr (1'b0), .sclr (sclear), 
                       .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_2_ (.regout (q[2]), .datain (px9), .sdata (1'b0), .clk (
                       clock), .ena (px23), .aclr (1'b0), .sclr (sclear), .sload (
                       1'b0)) ;
    cycloneii_lcell_ff reg_q_1_ (.regout (q[1]), .datain (px5), .sdata (1'b0), .clk (
                       clock), .ena (px23), .aclr (1'b0), .sclr (sclear), .sload (
                       1'b0)) ;
    cycloneii_lcell_ff reg_q_0_ (.regout (q[0]), .datain (px1), .sdata (1'b0), .clk (
                       clock), .ena (px23), .aclr (1'b0), .sclr (sclear), .sload (
                       1'b0)) ;
    cycloneii_lcell_comb ix58250z52929 (.combout (px9), .cout (nx58250z10), .dataa (
                         q[2]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_8_1_vcc_net), .cin (nx58250z12)) ;
                         
                         defparam ix58250z52929.lut_mask = 16'h5aa0;
                         
                         defparam ix58250z52929.sum_lutc_input = "cin";
    assign nx_modgen_counter_8_1_vcc_net = 1 ;
    cycloneii_lcell_comb ix58250z52923 (.combout (px50), .dataa (q[7]), .datab (
                         1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_8_1_vcc_net), .cin (nx58250z2)) ;
                         
                         defparam ix58250z52923.lut_mask = 16'h5a00;
                         
                         defparam ix58250z52923.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix58250z52925 (.combout (px46), .cout (nx58250z2), .dataa (
                         q[6]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_8_1_vcc_net), .cin (nx58250z4)) ;
                         
                         defparam ix58250z52925.lut_mask = 16'h5aa0;
                         
                         defparam ix58250z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix58250z52930 (.combout (px5), .cout (nx58250z12), .dataa (
                         q[1]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_8_1_vcc_net), .cin (nx58250z14)) ;
                         
                         defparam ix58250z52930.lut_mask = 16'h5aa0;
                         
                         defparam ix58250z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix58250z52926 (.combout (px24), .cout (nx58250z4), .dataa (
                         q[5]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_8_1_vcc_net), .cin (nx58250z6)) ;
                         
                         defparam ix58250z52926.lut_mask = 16'h5aa0;
                         
                         defparam ix58250z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix58250z52927 (.combout (px17), .cout (nx58250z6), .dataa (
                         q[4]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_8_1_vcc_net), .cin (nx58250z8)) ;
                         
                         defparam ix58250z52927.lut_mask = 16'h5aa0;
                         
                         defparam ix58250z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix58250z52928 (.combout (px13), .cout (nx58250z8), .dataa (
                         q[3]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_8_1_vcc_net), .cin (nx58250z10)) ;
                         
                         defparam ix58250z52928.lut_mask = 16'h5aa0;
                         
                         defparam ix58250z52928.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix58250z52931 (.combout (px1), .cout (nx58250z14), .dataa (
                         q[0]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_8_1_vcc_net), .cin (1'b0)) ;
                         
                         defparam ix58250z52931.lut_mask = 16'h55aa;
    cycloneii_lcell_comb ix57253z52923 (.combout (px23), .dataa (clk_en), .datab (
                         sclear), .datac (cnt_en), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix57253z52923.lut_mask = 16'ha8a8;
endmodule


module modgen_counter_8_0 ( clock, q, clk_en, aclear, sload, data, aset, sclear, 
                            updn, cnt_en ) ;

    input clock ;
    output [7:0]q ;
    input clk_en ;
    input aclear ;
    input sload ;
    input [7:0]data ;
    input aset ;
    input sclear ;
    input updn ;
    input cnt_en ;

    wire nx57253z3, nx51271z1, nx58250z14, nx52268z1, nx58250z12, nx53265z1, 
         nx58250z10, nx54262z1, nx58250z8, nx55259z1, nx58250z6, nx56256z1, 
         nx58250z4, nx57253z1, nx58250z2, nx58250z1, 
         nx_modgen_counter_8_0_vcc_net;
    wire [45:0] xmplr_dummy ;




    cycloneii_lcell_ff reg_q_7_ (.regout (q[7]), .datain (nx58250z1), .sdata (
                       1'b0), .clk (clock), .ena (nx57253z3), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_6_ (.regout (q[6]), .datain (nx57253z1), .sdata (
                       1'b0), .clk (clock), .ena (nx57253z3), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_5_ (.regout (q[5]), .datain (nx56256z1), .sdata (
                       1'b0), .clk (clock), .ena (nx57253z3), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_4_ (.regout (q[4]), .datain (nx55259z1), .sdata (
                       1'b0), .clk (clock), .ena (nx57253z3), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_3_ (.regout (q[3]), .datain (nx54262z1), .sdata (
                       1'b0), .clk (clock), .ena (nx57253z3), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_2_ (.regout (q[2]), .datain (nx53265z1), .sdata (
                       1'b0), .clk (clock), .ena (nx57253z3), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_1_ (.regout (q[1]), .datain (nx52268z1), .sdata (
                       1'b0), .clk (clock), .ena (nx57253z3), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_0_ (.regout (q[0]), .datain (nx51271z1), .sdata (
                       1'b0), .clk (clock), .ena (nx57253z3), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_comb ix58250z52929 (.combout (nx53265z1), .cout (nx58250z10)
                         , .dataa (q[2]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_8_0_vcc_net), .cin (nx58250z12)) ;
                         
                         defparam ix58250z52929.lut_mask = 16'h5aa0;
                         
                         defparam ix58250z52929.sum_lutc_input = "cin";
    assign nx_modgen_counter_8_0_vcc_net = 1 ;
    cycloneii_lcell_comb ix58250z52923 (.combout (nx58250z1), .dataa (q[7]), .datab (
                         1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_8_0_vcc_net), .cin (nx58250z2)) ;
                         
                         defparam ix58250z52923.lut_mask = 16'h5a00;
                         
                         defparam ix58250z52923.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix58250z52925 (.combout (nx57253z1), .cout (nx58250z2)
                         , .dataa (q[6]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_8_0_vcc_net), .cin (nx58250z4)) ;
                         
                         defparam ix58250z52925.lut_mask = 16'h5aa0;
                         
                         defparam ix58250z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix58250z52930 (.combout (nx52268z1), .cout (nx58250z12)
                         , .dataa (q[1]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_8_0_vcc_net), .cin (nx58250z14)) ;
                         
                         defparam ix58250z52930.lut_mask = 16'h5aa0;
                         
                         defparam ix58250z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix58250z52926 (.combout (nx56256z1), .cout (nx58250z4)
                         , .dataa (q[5]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_8_0_vcc_net), .cin (nx58250z6)) ;
                         
                         defparam ix58250z52926.lut_mask = 16'h5aa0;
                         
                         defparam ix58250z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix58250z52927 (.combout (nx55259z1), .cout (nx58250z6)
                         , .dataa (q[4]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_8_0_vcc_net), .cin (nx58250z8)) ;
                         
                         defparam ix58250z52927.lut_mask = 16'h5aa0;
                         
                         defparam ix58250z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix58250z52928 (.combout (nx54262z1), .cout (nx58250z8)
                         , .dataa (q[3]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_8_0_vcc_net), .cin (nx58250z10)) ;
                         
                         defparam ix58250z52928.lut_mask = 16'h5aa0;
                         
                         defparam ix58250z52928.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix58250z52931 (.combout (nx51271z1), .cout (nx58250z14)
                         , .dataa (q[0]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_8_0_vcc_net), .cin (1'b0)) ;
                         
                         defparam ix58250z52931.lut_mask = 16'h55aa;
    cycloneii_lcell_comb ix57253z52923 (.combout (nx57253z3), .dataa (cnt_en), .datab (
                         sclear), .datac (1'b1), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix57253z52923.lut_mask = 16'heeee;
endmodule


module sub_10_1 ( cin, a, b, d, cout ) ;

    input cin ;
    input [9:0]a ;
    input [9:0]b ;
    output [9:0]d ;
    output cout ;

    wire nx23445z28, nx23445z25, nx23445z22, nx23445z19, nx23445z16, nx23445z13, 
         nx23445z10, nx23445z7, nx23445z4, nx_sub_10_1_vcc_net;
    wire [20:0] xmplr_dummy ;




    cycloneii_lcell_comb ix23445z52923 (.combout (cout), .dataa (b[9]), .datab (
                         a[9]), .datac (1'b1), .datad (nx_sub_10_1_vcc_net), .cin (
                         nx23445z4)) ;
                         
                         defparam ix23445z52923.lut_mask = 16'hd400;
                         
                         defparam ix23445z52923.sum_lutc_input = "cin";
    assign nx_sub_10_1_vcc_net = 1 ;
    cycloneii_lcell_comb ix23445z52925 (.cout (nx23445z4), .dataa (b[8]), .datab (
                         a[8]), .datac (1'b1), .datad (nx_sub_10_1_vcc_net), .cin (
                         nx23445z7)) ;
                         
                         defparam ix23445z52925.lut_mask = 16'h00d4;
                         
                         defparam ix23445z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix23445z52926 (.cout (nx23445z7), .dataa (b[7]), .datab (
                         a[7]), .datac (1'b1), .datad (nx_sub_10_1_vcc_net), .cin (
                         nx23445z10)) ;
                         
                         defparam ix23445z52926.lut_mask = 16'h00d4;
                         
                         defparam ix23445z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix23445z52927 (.cout (nx23445z10), .dataa (b[6]), .datab (
                         a[6]), .datac (1'b1), .datad (nx_sub_10_1_vcc_net), .cin (
                         nx23445z13)) ;
                         
                         defparam ix23445z52927.lut_mask = 16'h00d4;
                         
                         defparam ix23445z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix23445z52928 (.cout (nx23445z13), .dataa (b[5]), .datab (
                         a[5]), .datac (1'b1), .datad (nx_sub_10_1_vcc_net), .cin (
                         nx23445z16)) ;
                         
                         defparam ix23445z52928.lut_mask = 16'h00d4;
                         
                         defparam ix23445z52928.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix23445z52929 (.cout (nx23445z16), .dataa (b[4]), .datab (
                         a[4]), .datac (1'b1), .datad (nx_sub_10_1_vcc_net), .cin (
                         nx23445z19)) ;
                         
                         defparam ix23445z52929.lut_mask = 16'h00d4;
                         
                         defparam ix23445z52929.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix23445z52930 (.cout (nx23445z19), .dataa (b[3]), .datab (
                         a[3]), .datac (1'b1), .datad (nx_sub_10_1_vcc_net), .cin (
                         nx23445z22)) ;
                         
                         defparam ix23445z52930.lut_mask = 16'h00d4;
                         
                         defparam ix23445z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix23445z52931 (.cout (nx23445z22), .dataa (b[2]), .datab (
                         a[2]), .datac (1'b1), .datad (nx_sub_10_1_vcc_net), .cin (
                         nx23445z25)) ;
                         
                         defparam ix23445z52931.lut_mask = 16'h00d4;
                         
                         defparam ix23445z52931.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix23445z52932 (.cout (nx23445z25), .dataa (b[1]), .datab (
                         a[1]), .datac (1'b1), .datad (nx_sub_10_1_vcc_net), .cin (
                         nx23445z28)) ;
                         
                         defparam ix23445z52932.lut_mask = 16'h00d4;
                         
                         defparam ix23445z52932.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix23445z52933 (.cout (nx23445z28), .dataa (a[0]), .datab (
                         b[0]), .datac (1'b1), .datad (nx_sub_10_1_vcc_net), .cin (
                         1'b0)) ;
                         defparam ix23445z52933.lut_mask = 16'h00bb;
endmodule


module sub_10_0 ( cin, a, b, d, cout ) ;

    input cin ;
    input [9:0]a ;
    input [9:0]b ;
    output [9:0]d ;
    output cout ;

    wire nx23445z28, nx23445z25, nx23445z22, nx23445z19, nx23445z16, nx23445z13, 
         nx23445z10, nx23445z7, nx23445z4, nx_sub_10_0_vcc_net;
    wire [20:0] xmplr_dummy ;




    cycloneii_lcell_comb ix23445z52923 (.combout (cout), .dataa (b[9]), .datab (
                         a[9]), .datac (1'b1), .datad (nx_sub_10_0_vcc_net), .cin (
                         nx23445z4)) ;
                         
                         defparam ix23445z52923.lut_mask = 16'hd400;
                         
                         defparam ix23445z52923.sum_lutc_input = "cin";
    assign nx_sub_10_0_vcc_net = 1 ;
    cycloneii_lcell_comb ix23445z52925 (.cout (nx23445z4), .dataa (b[8]), .datab (
                         a[8]), .datac (1'b1), .datad (nx_sub_10_0_vcc_net), .cin (
                         nx23445z7)) ;
                         
                         defparam ix23445z52925.lut_mask = 16'h00d4;
                         
                         defparam ix23445z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix23445z52926 (.cout (nx23445z7), .dataa (b[7]), .datab (
                         a[7]), .datac (1'b1), .datad (nx_sub_10_0_vcc_net), .cin (
                         nx23445z10)) ;
                         
                         defparam ix23445z52926.lut_mask = 16'h00d4;
                         
                         defparam ix23445z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix23445z52927 (.cout (nx23445z10), .dataa (b[6]), .datab (
                         a[6]), .datac (1'b1), .datad (nx_sub_10_0_vcc_net), .cin (
                         nx23445z13)) ;
                         
                         defparam ix23445z52927.lut_mask = 16'h00d4;
                         
                         defparam ix23445z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix23445z52928 (.cout (nx23445z13), .dataa (b[5]), .datab (
                         a[5]), .datac (1'b1), .datad (nx_sub_10_0_vcc_net), .cin (
                         nx23445z16)) ;
                         
                         defparam ix23445z52928.lut_mask = 16'h00d4;
                         
                         defparam ix23445z52928.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix23445z52929 (.cout (nx23445z16), .dataa (b[4]), .datab (
                         a[4]), .datac (1'b1), .datad (nx_sub_10_0_vcc_net), .cin (
                         nx23445z19)) ;
                         
                         defparam ix23445z52929.lut_mask = 16'h00d4;
                         
                         defparam ix23445z52929.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix23445z52930 (.cout (nx23445z19), .dataa (b[3]), .datab (
                         a[3]), .datac (1'b1), .datad (nx_sub_10_0_vcc_net), .cin (
                         nx23445z22)) ;
                         
                         defparam ix23445z52930.lut_mask = 16'h00d4;
                         
                         defparam ix23445z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix23445z52931 (.cout (nx23445z22), .dataa (b[2]), .datab (
                         a[2]), .datac (1'b1), .datad (nx_sub_10_0_vcc_net), .cin (
                         nx23445z25)) ;
                         
                         defparam ix23445z52931.lut_mask = 16'h00d4;
                         
                         defparam ix23445z52931.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix23445z52932 (.cout (nx23445z25), .dataa (b[1]), .datab (
                         a[1]), .datac (1'b1), .datad (nx_sub_10_0_vcc_net), .cin (
                         nx23445z28)) ;
                         
                         defparam ix23445z52932.lut_mask = 16'h00d4;
                         
                         defparam ix23445z52932.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix23445z52933 (.cout (nx23445z28), .dataa (a[0]), .datab (
                         b[0]), .datac (1'b1), .datad (nx_sub_10_0_vcc_net), .cin (
                         1'b0)) ;
                         defparam ix23445z52933.lut_mask = 16'h00bb;
endmodule


module sub_8_0 ( cin, a, b, d, cout ) ;

    input cin ;
    input [7:0]a ;
    input [7:0]b ;
    output [7:0]d ;
    output cout ;

    wire nx23445z22, nx23445z19, nx23445z16, nx23445z13, nx23445z10, nx23445z7, 
         nx23445z4, nx_sub_8_0_vcc_net;
    wire [16:0] xmplr_dummy ;




    cycloneii_lcell_comb ix23445z52923 (.combout (cout), .dataa (b[7]), .datab (
                         a[7]), .datac (1'b1), .datad (nx_sub_8_0_vcc_net), .cin (
                         nx23445z4)) ;
                         
                         defparam ix23445z52923.lut_mask = 16'hd400;
                         
                         defparam ix23445z52923.sum_lutc_input = "cin";
    assign nx_sub_8_0_vcc_net = 1 ;
    cycloneii_lcell_comb ix23445z52925 (.cout (nx23445z4), .dataa (b[6]), .datab (
                         a[6]), .datac (1'b1), .datad (nx_sub_8_0_vcc_net), .cin (
                         nx23445z7)) ;
                         
                         defparam ix23445z52925.lut_mask = 16'h00d4;
                         
                         defparam ix23445z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix23445z52926 (.cout (nx23445z7), .dataa (b[5]), .datab (
                         a[5]), .datac (1'b1), .datad (nx_sub_8_0_vcc_net), .cin (
                         nx23445z10)) ;
                         
                         defparam ix23445z52926.lut_mask = 16'h00d4;
                         
                         defparam ix23445z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix23445z52927 (.cout (nx23445z10), .dataa (b[4]), .datab (
                         a[4]), .datac (1'b1), .datad (nx_sub_8_0_vcc_net), .cin (
                         nx23445z13)) ;
                         
                         defparam ix23445z52927.lut_mask = 16'h00d4;
                         
                         defparam ix23445z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix23445z52928 (.cout (nx23445z13), .dataa (b[3]), .datab (
                         a[3]), .datac (1'b1), .datad (nx_sub_8_0_vcc_net), .cin (
                         nx23445z16)) ;
                         
                         defparam ix23445z52928.lut_mask = 16'h00d4;
                         
                         defparam ix23445z52928.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix23445z52929 (.cout (nx23445z16), .dataa (b[2]), .datab (
                         a[2]), .datac (1'b1), .datad (nx_sub_8_0_vcc_net), .cin (
                         nx23445z19)) ;
                         
                         defparam ix23445z52929.lut_mask = 16'h00d4;
                         
                         defparam ix23445z52929.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix23445z52930 (.cout (nx23445z19), .dataa (b[1]), .datab (
                         a[1]), .datac (1'b1), .datad (nx_sub_8_0_vcc_net), .cin (
                         nx23445z22)) ;
                         
                         defparam ix23445z52930.lut_mask = 16'h00d4;
                         
                         defparam ix23445z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix23445z52931 (.cout (nx23445z22), .dataa (a[0]), .datab (
                         b[0]), .datac (1'b1), .datad (nx_sub_8_0_vcc_net), .cin (
                         1'b0)) ;
                         defparam ix23445z52931.lut_mask = 16'h00bb;
endmodule


module add_11_0 ( cin, a, b, d, cout ) ;

    input cin ;
    input [10:0]a ;
    input [10:0]b ;
    output [10:0]d ;
    output cout ;

    wire nx62798z29, nx62798z26, nx62798z23, nx62798z20, nx62798z17, nx62798z14, 
         nx62798z11, nx62798z8, nx62798z5, nx62798z3, nx_add_11_0_vcc_net;
    wire [14:0] xmplr_dummy ;




    cycloneii_lcell_comb ix62798z52923 (.combout (d[10]), .dataa (b[10]), .datab (
                         1'b1), .datac (1'b1), .datad (nx_add_11_0_vcc_net), .cin (
                         nx62798z3)) ;
                         
                         defparam ix62798z52923.lut_mask = 16'h5a00;
                         
                         defparam ix62798z52923.sum_lutc_input = "cin";
    assign nx_add_11_0_vcc_net = 1 ;
    cycloneii_lcell_comb ix62798z52925 (.combout (d[9]), .cout (nx62798z3), .dataa (
                         b[9]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_add_11_0_vcc_net), .cin (nx62798z5)) ;
                         
                         defparam ix62798z52925.lut_mask = 16'h5aa0;
                         
                         defparam ix62798z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix62798z52926 (.combout (d[8]), .cout (nx62798z5), .dataa (
                         b[8]), .datab (a[8]), .datac (1'b1), .datad (
                         nx_add_11_0_vcc_net), .cin (nx62798z8)) ;
                         
                         defparam ix62798z52926.lut_mask = 16'h96e8;
                         
                         defparam ix62798z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix62798z52927 (.combout (d[7]), .cout (nx62798z8), .dataa (
                         b[7]), .datab (a[7]), .datac (1'b1), .datad (
                         nx_add_11_0_vcc_net), .cin (nx62798z11)) ;
                         
                         defparam ix62798z52927.lut_mask = 16'h96e8;
                         
                         defparam ix62798z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix62798z52928 (.combout (d[6]), .cout (nx62798z11), .dataa (
                         b[6]), .datab (a[6]), .datac (1'b1), .datad (
                         nx_add_11_0_vcc_net), .cin (nx62798z14)) ;
                         
                         defparam ix62798z52928.lut_mask = 16'h96e8;
                         
                         defparam ix62798z52928.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix62798z52929 (.combout (d[5]), .cout (nx62798z14), .dataa (
                         b[5]), .datab (a[5]), .datac (1'b1), .datad (
                         nx_add_11_0_vcc_net), .cin (nx62798z17)) ;
                         
                         defparam ix62798z52929.lut_mask = 16'h96e8;
                         
                         defparam ix62798z52929.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix62798z52930 (.combout (d[4]), .cout (nx62798z17), .dataa (
                         b[4]), .datab (a[4]), .datac (1'b1), .datad (
                         nx_add_11_0_vcc_net), .cin (nx62798z20)) ;
                         
                         defparam ix62798z52930.lut_mask = 16'h96e8;
                         
                         defparam ix62798z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix62798z52931 (.combout (d[3]), .cout (nx62798z20), .dataa (
                         b[3]), .datab (a[3]), .datac (1'b1), .datad (
                         nx_add_11_0_vcc_net), .cin (nx62798z23)) ;
                         
                         defparam ix62798z52931.lut_mask = 16'h96e8;
                         
                         defparam ix62798z52931.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix62798z52932 (.combout (d[2]), .cout (nx62798z23), .dataa (
                         b[2]), .datab (a[2]), .datac (1'b1), .datad (
                         nx_add_11_0_vcc_net), .cin (nx62798z26)) ;
                         
                         defparam ix62798z52932.lut_mask = 16'h96e8;
                         
                         defparam ix62798z52932.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix62798z52933 (.combout (d[1]), .cout (nx62798z26), .dataa (
                         b[1]), .datab (a[1]), .datac (1'b1), .datad (
                         nx_add_11_0_vcc_net), .cin (nx62798z29)) ;
                         
                         defparam ix62798z52933.lut_mask = 16'h96e8;
                         
                         defparam ix62798z52933.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix62798z52934 (.combout (d[0]), .cout (nx62798z29), .dataa (
                         a[0]), .datab (b[0]), .datac (1'b1), .datad (
                         nx_add_11_0_vcc_net), .cin (1'b0)) ;
                         
                         defparam ix62798z52934.lut_mask = 16'h6688;
endmodule

