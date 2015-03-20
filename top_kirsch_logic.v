//
// Verilog description for cell top_kirsch, 
// Thu Mar 28 16:41:32 2013
//
// Precision RTL Synthesis, 2008a.47//


module top_kirsch_logic ( nrst, clk, rxflex, txflex, o_sevenseg, o_mode, o_nrst, 
                    debug_key, debug_switch, debug_led_red, debug_led_grn, 
                    debug_sevenseg_0, debug_sevenseg_1, debug_sevenseg_2, 
                    debug_sevenseg_3, debug_sevenseg_4, debug_sevenseg_5 ) ;

    input nrst ;
    input clk ;
    input rxflex ;
    output txflex ;
    output [15:0]o_sevenseg ;
    output [1:0]o_mode ;
    output o_nrst ;
    input [3:1]debug_key ;
    input [17:0]debug_switch ;
    output [16:0]debug_led_red ;
    output [5:0]debug_led_grn ;
    output [7:0]debug_sevenseg_0 ;
    output [7:0]debug_sevenseg_1 ;
    output [7:0]debug_sevenseg_2 ;
    output [7:0]debug_sevenseg_3 ;
    output [7:0]debug_sevenseg_4 ;
    output [7:0]debug_sevenseg_5 ;

    wire [1:0]o_mode_dup0;
    wire pixavail;
    wire [7:0]pixel;
    wire o_valid, kirschout;
    wire [2:0]dir;
    wire rowcount_7_, rowcount_6_, rowcount_5_, rowcount_4_, rowcount_3_, 
         rowcount_2_, rowcount_0_, nrst_int, clk_int, rxflex_int, o_nrst_dup0, 
         debug_num_0_0_, o_sevenseg_dup0_7_, nx59584z1, nx60581z1, nx61578z1, 
         nx63572z1, nx25683z1, nx26680z1, nx27677z1, nx29671z1, nx57590z1, 
         nx58587z1, nx62575z1, nx30z1, nx1027z1, nx28674z1, 
         Tx_Reg_14n6ss1_0__dup_4, NOT_rtlcn2_dup_5, row_count_1__dup_10, 
         nx41851z1, nx42848z1, nx43845z1, nx44842z1, nx45839z1, nx46836z1, 
         nx47833z1, nx49827z1, nx50824z1, nx62540z1, nx63537z1, nx64534z1, 
         nx65531z1, nx992z1, nx21351z1, nx21351z2, nx35935z1;
    wire [1583:0] xmplr_dummy ;




    uw_uart u_uw_uart (.clk (clk_int), .rst (o_nrst_dup0), .kirschout (kirschout
            ), .kirschdir ({dir[2],dir[1],dir[0]}), .o_valid (o_valid), .i_mode (
            {o_mode_dup0[1],o_mode_dup0[0]}), .datain ({pixel[7],pixel[6],
            pixel[5],pixel[4],pixel[3],pixel[2],pixel[1],pixel[0]}), .o_pixavail (
            pixavail), .rxflex (rxflex_int), .p_Tx_Reg_14n6ss1_0_ (
            Tx_Reg_14n6ss1_0__dup_4), .p_NOT_rtlcn2 (NOT_rtlcn2_dup_5), .p_nrst_int (
            nrst_int), .px705 (nx35935z1)) ;
    kirsch_notri u_kirsch (.p_o_valid (o_valid), .p_o_edge (kirschout), .p_o_dir (
                 {dir[2],dir[1],dir[0]}), .p_o_mode ({o_mode_dup0[1],
                 o_mode_dup0[0]}), .p_i_reset (o_nrst_dup0), .p_i_pixel ({
                 pixel[7],pixel[6],pixel[5],pixel[4],pixel[3],pixel[2],pixel[1],
                 pixel[0]}), .p_i_valid_rtlc_747_or_76 ({pixavail}), .p_o_row ({
                 rowcount_7_,rowcount_6_,rowcount_5_,rowcount_4_,rowcount_3_,
                 rowcount_2_,xmplr_dummy [0],rowcount_0_}), .p_i_clock (clk_int)
                 , .p_row_count_1_ (row_count_1__dup_10), .px705 (nx35935z1)) ;
    assign o_nrst_dup0 = ~nrst_int ;
    assign debug_num_0_0_ = 0 ;
    assign o_sevenseg_dup0_7_ = 1 ;
    assign nx21351z1 = ~nx21351z2 ;
    cycloneii_io u_kirsch_debug_led_red_triBus3_9_ (.padio (debug_led_red[9]), .datain (
                 debug_num_0_0_), .oe (debug_num_0_0_), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam u_kirsch_debug_led_red_triBus3_9_.operation_mode = "output";
                 
                 defparam u_kirsch_debug_led_red_triBus3_9_.output_register_mode = "none";
                 
                 defparam u_kirsch_debug_led_red_triBus3_9_.tie_off_output_clock_enable = "false";
                 
                 defparam u_kirsch_debug_led_red_triBus3_9_.oe_register_mode = "none";
                 
                 defparam u_kirsch_debug_led_red_triBus3_9_.tie_off_oe_clock_enable = "false";
                 
                 defparam u_kirsch_debug_led_red_triBus3_9_.input_register_mode = "none";
    cycloneii_io u_kirsch_debug_led_red_triBus3_8_ (.padio (debug_led_red[8]), .datain (
                 debug_num_0_0_), .oe (debug_num_0_0_), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam u_kirsch_debug_led_red_triBus3_8_.operation_mode = "output";
                 
                 defparam u_kirsch_debug_led_red_triBus3_8_.output_register_mode = "none";
                 
                 defparam u_kirsch_debug_led_red_triBus3_8_.tie_off_output_clock_enable = "false";
                 
                 defparam u_kirsch_debug_led_red_triBus3_8_.oe_register_mode = "none";
                 
                 defparam u_kirsch_debug_led_red_triBus3_8_.tie_off_oe_clock_enable = "false";
                 
                 defparam u_kirsch_debug_led_red_triBus3_8_.input_register_mode = "none";
    cycloneii_io u_kirsch_debug_led_red_triBus3_7_ (.padio (debug_led_red[7]), .datain (
                 debug_num_0_0_), .oe (debug_num_0_0_), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam u_kirsch_debug_led_red_triBus3_7_.operation_mode = "output";
                 
                 defparam u_kirsch_debug_led_red_triBus3_7_.output_register_mode = "none";
                 
                 defparam u_kirsch_debug_led_red_triBus3_7_.tie_off_output_clock_enable = "false";
                 
                 defparam u_kirsch_debug_led_red_triBus3_7_.oe_register_mode = "none";
                 
                 defparam u_kirsch_debug_led_red_triBus3_7_.tie_off_oe_clock_enable = "false";
                 
                 defparam u_kirsch_debug_led_red_triBus3_7_.input_register_mode = "none";
    cycloneii_io u_kirsch_debug_led_red_triBus3_6_ (.padio (debug_led_red[6]), .datain (
                 debug_num_0_0_), .oe (debug_num_0_0_), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam u_kirsch_debug_led_red_triBus3_6_.operation_mode = "output";
                 
                 defparam u_kirsch_debug_led_red_triBus3_6_.output_register_mode = "none";
                 
                 defparam u_kirsch_debug_led_red_triBus3_6_.tie_off_output_clock_enable = "false";
                 
                 defparam u_kirsch_debug_led_red_triBus3_6_.oe_register_mode = "none";
                 
                 defparam u_kirsch_debug_led_red_triBus3_6_.tie_off_oe_clock_enable = "false";
                 
                 defparam u_kirsch_debug_led_red_triBus3_6_.input_register_mode = "none";
    cycloneii_io u_kirsch_debug_led_red_triBus3_5_ (.padio (debug_led_red[5]), .datain (
                 debug_num_0_0_), .oe (debug_num_0_0_), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam u_kirsch_debug_led_red_triBus3_5_.operation_mode = "output";
                 
                 defparam u_kirsch_debug_led_red_triBus3_5_.output_register_mode = "none";
                 
                 defparam u_kirsch_debug_led_red_triBus3_5_.tie_off_output_clock_enable = "false";
                 
                 defparam u_kirsch_debug_led_red_triBus3_5_.oe_register_mode = "none";
                 
                 defparam u_kirsch_debug_led_red_triBus3_5_.tie_off_oe_clock_enable = "false";
                 
                 defparam u_kirsch_debug_led_red_triBus3_5_.input_register_mode = "none";
    cycloneii_io u_kirsch_debug_led_red_triBus3_4_ (.padio (debug_led_red[4]), .datain (
                 debug_num_0_0_), .oe (debug_num_0_0_), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam u_kirsch_debug_led_red_triBus3_4_.operation_mode = "output";
                 
                 defparam u_kirsch_debug_led_red_triBus3_4_.output_register_mode = "none";
                 
                 defparam u_kirsch_debug_led_red_triBus3_4_.tie_off_output_clock_enable = "false";
                 
                 defparam u_kirsch_debug_led_red_triBus3_4_.oe_register_mode = "none";
                 
                 defparam u_kirsch_debug_led_red_triBus3_4_.tie_off_oe_clock_enable = "false";
                 
                 defparam u_kirsch_debug_led_red_triBus3_4_.input_register_mode = "none";
    cycloneii_io u_kirsch_debug_led_red_triBus3_3_ (.padio (debug_led_red[3]), .datain (
                 debug_num_0_0_), .oe (debug_num_0_0_), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam u_kirsch_debug_led_red_triBus3_3_.operation_mode = "output";
                 
                 defparam u_kirsch_debug_led_red_triBus3_3_.output_register_mode = "none";
                 
                 defparam u_kirsch_debug_led_red_triBus3_3_.tie_off_output_clock_enable = "false";
                 
                 defparam u_kirsch_debug_led_red_triBus3_3_.oe_register_mode = "none";
                 
                 defparam u_kirsch_debug_led_red_triBus3_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam u_kirsch_debug_led_red_triBus3_3_.input_register_mode = "none";
    cycloneii_io u_kirsch_debug_led_red_triBus3_2_ (.padio (debug_led_red[2]), .datain (
                 debug_num_0_0_), .oe (debug_num_0_0_), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam u_kirsch_debug_led_red_triBus3_2_.operation_mode = "output";
                 
                 defparam u_kirsch_debug_led_red_triBus3_2_.output_register_mode = "none";
                 
                 defparam u_kirsch_debug_led_red_triBus3_2_.tie_off_output_clock_enable = "false";
                 
                 defparam u_kirsch_debug_led_red_triBus3_2_.oe_register_mode = "none";
                 
                 defparam u_kirsch_debug_led_red_triBus3_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam u_kirsch_debug_led_red_triBus3_2_.input_register_mode = "none";
    cycloneii_io u_kirsch_debug_led_red_triBus3_16_ (.padio (debug_led_red[16])
                 , .datain (debug_num_0_0_), .oe (debug_num_0_0_), .outclk (1'b0
                 ), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam u_kirsch_debug_led_red_triBus3_16_.operation_mode = "output";
                 
                 defparam u_kirsch_debug_led_red_triBus3_16_.output_register_mode = "none";
                 
                 defparam u_kirsch_debug_led_red_triBus3_16_.tie_off_output_clock_enable = "false";
                 
                 defparam u_kirsch_debug_led_red_triBus3_16_.oe_register_mode = "none";
                 
                 defparam u_kirsch_debug_led_red_triBus3_16_.tie_off_oe_clock_enable = "false";
                 
                 defparam u_kirsch_debug_led_red_triBus3_16_.input_register_mode = "none";
    cycloneii_io u_kirsch_debug_led_red_triBus3_15_ (.padio (debug_led_red[15])
                 , .datain (debug_num_0_0_), .oe (debug_num_0_0_), .outclk (1'b0
                 ), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam u_kirsch_debug_led_red_triBus3_15_.operation_mode = "output";
                 
                 defparam u_kirsch_debug_led_red_triBus3_15_.output_register_mode = "none";
                 
                 defparam u_kirsch_debug_led_red_triBus3_15_.tie_off_output_clock_enable = "false";
                 
                 defparam u_kirsch_debug_led_red_triBus3_15_.oe_register_mode = "none";
                 
                 defparam u_kirsch_debug_led_red_triBus3_15_.tie_off_oe_clock_enable = "false";
                 
                 defparam u_kirsch_debug_led_red_triBus3_15_.input_register_mode = "none";
    cycloneii_io u_kirsch_debug_led_red_triBus3_14_ (.padio (debug_led_red[14])
                 , .datain (debug_num_0_0_), .oe (debug_num_0_0_), .outclk (1'b0
                 ), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam u_kirsch_debug_led_red_triBus3_14_.operation_mode = "output";
                 
                 defparam u_kirsch_debug_led_red_triBus3_14_.output_register_mode = "none";
                 
                 defparam u_kirsch_debug_led_red_triBus3_14_.tie_off_output_clock_enable = "false";
                 
                 defparam u_kirsch_debug_led_red_triBus3_14_.oe_register_mode = "none";
                 
                 defparam u_kirsch_debug_led_red_triBus3_14_.tie_off_oe_clock_enable = "false";
                 
                 defparam u_kirsch_debug_led_red_triBus3_14_.input_register_mode = "none";
    cycloneii_io u_kirsch_debug_led_red_triBus3_13_ (.padio (debug_led_red[13])
                 , .datain (debug_num_0_0_), .oe (debug_num_0_0_), .outclk (1'b0
                 ), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam u_kirsch_debug_led_red_triBus3_13_.operation_mode = "output";
                 
                 defparam u_kirsch_debug_led_red_triBus3_13_.output_register_mode = "none";
                 
                 defparam u_kirsch_debug_led_red_triBus3_13_.tie_off_output_clock_enable = "false";
                 
                 defparam u_kirsch_debug_led_red_triBus3_13_.oe_register_mode = "none";
                 
                 defparam u_kirsch_debug_led_red_triBus3_13_.tie_off_oe_clock_enable = "false";
                 
                 defparam u_kirsch_debug_led_red_triBus3_13_.input_register_mode = "none";
    cycloneii_io u_kirsch_debug_led_red_triBus3_12_ (.padio (debug_led_red[12])
                 , .datain (debug_num_0_0_), .oe (debug_num_0_0_), .outclk (1'b0
                 ), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam u_kirsch_debug_led_red_triBus3_12_.operation_mode = "output";
                 
                 defparam u_kirsch_debug_led_red_triBus3_12_.output_register_mode = "none";
                 
                 defparam u_kirsch_debug_led_red_triBus3_12_.tie_off_output_clock_enable = "false";
                 
                 defparam u_kirsch_debug_led_red_triBus3_12_.oe_register_mode = "none";
                 
                 defparam u_kirsch_debug_led_red_triBus3_12_.tie_off_oe_clock_enable = "false";
                 
                 defparam u_kirsch_debug_led_red_triBus3_12_.input_register_mode = "none";
    cycloneii_io u_kirsch_debug_led_red_triBus3_11_ (.padio (debug_led_red[11])
                 , .datain (debug_num_0_0_), .oe (debug_num_0_0_), .outclk (1'b0
                 ), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam u_kirsch_debug_led_red_triBus3_11_.operation_mode = "output";
                 
                 defparam u_kirsch_debug_led_red_triBus3_11_.output_register_mode = "none";
                 
                 defparam u_kirsch_debug_led_red_triBus3_11_.tie_off_output_clock_enable = "false";
                 
                 defparam u_kirsch_debug_led_red_triBus3_11_.oe_register_mode = "none";
                 
                 defparam u_kirsch_debug_led_red_triBus3_11_.tie_off_oe_clock_enable = "false";
                 
                 defparam u_kirsch_debug_led_red_triBus3_11_.input_register_mode = "none";
    cycloneii_io u_kirsch_debug_led_red_triBus3_10_ (.padio (debug_led_red[10])
                 , .datain (debug_num_0_0_), .oe (debug_num_0_0_), .outclk (1'b0
                 ), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam u_kirsch_debug_led_red_triBus3_10_.operation_mode = "output";
                 
                 defparam u_kirsch_debug_led_red_triBus3_10_.output_register_mode = "none";
                 
                 defparam u_kirsch_debug_led_red_triBus3_10_.tie_off_output_clock_enable = "false";
                 
                 defparam u_kirsch_debug_led_red_triBus3_10_.oe_register_mode = "none";
                 
                 defparam u_kirsch_debug_led_red_triBus3_10_.tie_off_oe_clock_enable = "false";
                 
                 defparam u_kirsch_debug_led_red_triBus3_10_.input_register_mode = "none";
    cycloneii_io u_kirsch_debug_led_red_triBus3_1_ (.padio (debug_led_red[1]), .datain (
                 debug_num_0_0_), .oe (debug_num_0_0_), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam u_kirsch_debug_led_red_triBus3_1_.operation_mode = "output";
                 
                 defparam u_kirsch_debug_led_red_triBus3_1_.output_register_mode = "none";
                 
                 defparam u_kirsch_debug_led_red_triBus3_1_.tie_off_output_clock_enable = "false";
                 
                 defparam u_kirsch_debug_led_red_triBus3_1_.oe_register_mode = "none";
                 
                 defparam u_kirsch_debug_led_red_triBus3_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam u_kirsch_debug_led_red_triBus3_1_.input_register_mode = "none";
    cycloneii_io u_kirsch_debug_led_red_triBus3_0_ (.padio (debug_led_red[0]), .datain (
                 debug_num_0_0_), .oe (debug_num_0_0_), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam u_kirsch_debug_led_red_triBus3_0_.operation_mode = "output";
                 
                 defparam u_kirsch_debug_led_red_triBus3_0_.output_register_mode = "none";
                 
                 defparam u_kirsch_debug_led_red_triBus3_0_.tie_off_output_clock_enable = "false";
                 
                 defparam u_kirsch_debug_led_red_triBus3_0_.oe_register_mode = "none";
                 
                 defparam u_kirsch_debug_led_red_triBus3_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam u_kirsch_debug_led_red_triBus3_0_.input_register_mode = "none";
    cycloneii_io u_kirsch_debug_led_grn_triBus4_5_ (.padio (debug_led_grn[5]), .datain (
                 debug_num_0_0_), .oe (debug_num_0_0_), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam u_kirsch_debug_led_grn_triBus4_5_.operation_mode = "output";
                 
                 defparam u_kirsch_debug_led_grn_triBus4_5_.output_register_mode = "none";
                 
                 defparam u_kirsch_debug_led_grn_triBus4_5_.tie_off_output_clock_enable = "false";
                 
                 defparam u_kirsch_debug_led_grn_triBus4_5_.oe_register_mode = "none";
                 
                 defparam u_kirsch_debug_led_grn_triBus4_5_.tie_off_oe_clock_enable = "false";
                 
                 defparam u_kirsch_debug_led_grn_triBus4_5_.input_register_mode = "none";
    cycloneii_io u_kirsch_debug_led_grn_triBus4_4_ (.padio (debug_led_grn[4]), .datain (
                 debug_num_0_0_), .oe (debug_num_0_0_), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam u_kirsch_debug_led_grn_triBus4_4_.operation_mode = "output";
                 
                 defparam u_kirsch_debug_led_grn_triBus4_4_.output_register_mode = "none";
                 
                 defparam u_kirsch_debug_led_grn_triBus4_4_.tie_off_output_clock_enable = "false";
                 
                 defparam u_kirsch_debug_led_grn_triBus4_4_.oe_register_mode = "none";
                 
                 defparam u_kirsch_debug_led_grn_triBus4_4_.tie_off_oe_clock_enable = "false";
                 
                 defparam u_kirsch_debug_led_grn_triBus4_4_.input_register_mode = "none";
    cycloneii_io u_kirsch_debug_led_grn_triBus4_3_ (.padio (debug_led_grn[3]), .datain (
                 debug_num_0_0_), .oe (debug_num_0_0_), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam u_kirsch_debug_led_grn_triBus4_3_.operation_mode = "output";
                 
                 defparam u_kirsch_debug_led_grn_triBus4_3_.output_register_mode = "none";
                 
                 defparam u_kirsch_debug_led_grn_triBus4_3_.tie_off_output_clock_enable = "false";
                 
                 defparam u_kirsch_debug_led_grn_triBus4_3_.oe_register_mode = "none";
                 
                 defparam u_kirsch_debug_led_grn_triBus4_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam u_kirsch_debug_led_grn_triBus4_3_.input_register_mode = "none";
    cycloneii_io u_kirsch_debug_led_grn_triBus4_2_ (.padio (debug_led_grn[2]), .datain (
                 debug_num_0_0_), .oe (debug_num_0_0_), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam u_kirsch_debug_led_grn_triBus4_2_.operation_mode = "output";
                 
                 defparam u_kirsch_debug_led_grn_triBus4_2_.output_register_mode = "none";
                 
                 defparam u_kirsch_debug_led_grn_triBus4_2_.tie_off_output_clock_enable = "false";
                 
                 defparam u_kirsch_debug_led_grn_triBus4_2_.oe_register_mode = "none";
                 
                 defparam u_kirsch_debug_led_grn_triBus4_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam u_kirsch_debug_led_grn_triBus4_2_.input_register_mode = "none";
    cycloneii_io u_kirsch_debug_led_grn_triBus4_1_ (.padio (debug_led_grn[1]), .datain (
                 debug_num_0_0_), .oe (debug_num_0_0_), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam u_kirsch_debug_led_grn_triBus4_1_.operation_mode = "output";
                 
                 defparam u_kirsch_debug_led_grn_triBus4_1_.output_register_mode = "none";
                 
                 defparam u_kirsch_debug_led_grn_triBus4_1_.tie_off_output_clock_enable = "false";
                 
                 defparam u_kirsch_debug_led_grn_triBus4_1_.oe_register_mode = "none";
                 
                 defparam u_kirsch_debug_led_grn_triBus4_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam u_kirsch_debug_led_grn_triBus4_1_.input_register_mode = "none";
    cycloneii_io u_kirsch_debug_led_grn_triBus4_0_ (.padio (debug_led_grn[0]), .datain (
                 debug_num_0_0_), .oe (debug_num_0_0_), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam u_kirsch_debug_led_grn_triBus4_0_.operation_mode = "output";
                 
                 defparam u_kirsch_debug_led_grn_triBus4_0_.output_register_mode = "none";
                 
                 defparam u_kirsch_debug_led_grn_triBus4_0_.tie_off_output_clock_enable = "false";
                 
                 defparam u_kirsch_debug_led_grn_triBus4_0_.oe_register_mode = "none";
                 
                 defparam u_kirsch_debug_led_grn_triBus4_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam u_kirsch_debug_led_grn_triBus4_0_.input_register_mode = "none";
    cycloneii_io rxflex_ibuf (.combout (rxflex_int), .padio (rxflex), .datain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam rxflex_ibuf.operation_mode = "input";
                 
                 defparam rxflex_ibuf.output_register_mode = "none";
                 
                 defparam rxflex_ibuf.tie_off_output_clock_enable = "false";
                 
                 defparam rxflex_ibuf.oe_register_mode = "none";
                 
                 defparam rxflex_ibuf.tie_off_oe_clock_enable = "false";
                 
                 defparam rxflex_ibuf.input_register_mode = "none";
    cycloneii_lcell_ff reg_out_txflex_obuf (.regout (nx21351z2), .datain (
                       Tx_Reg_14n6ss1_0__dup_4), .sdata (1'b0), .clk (clk_int), 
                       .ena (NOT_rtlcn2_dup_5), .aclr (o_nrst_dup0), .sclr (1'b0
                       ), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_out_o_sevenseg_obuf_9_ (.regout (nx50824z1), .datain (
                       nx1027z1), .sdata (1'b0), .clk (clk_int), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_out_o_sevenseg_obuf_8_ (.regout (nx49827z1), .datain (
                       nx30z1), .sdata (1'b0), .clk (clk_int), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_out_o_sevenseg_obuf_6_ (.regout (nx47833z1), .datain (
                       nx63572z1), .sdata (1'b0), .clk (clk_int), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_out_o_sevenseg_obuf_5_ (.regout (nx46836z1), .datain (
                       nx62575z1), .sdata (1'b0), .clk (clk_int), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_out_o_sevenseg_obuf_4_ (.regout (nx45839z1), .datain (
                       nx61578z1), .sdata (1'b0), .clk (clk_int), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_out_o_sevenseg_obuf_3_ (.regout (nx44842z1), .datain (
                       nx60581z1), .sdata (1'b0), .clk (clk_int), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_out_o_sevenseg_obuf_2_ (.regout (nx43845z1), .datain (
                       nx59584z1), .sdata (1'b0), .clk (clk_int), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_out_o_sevenseg_obuf_14_ (.regout (nx992z1), .datain (
                       nx29671z1), .sdata (1'b0), .clk (clk_int), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_out_o_sevenseg_obuf_13_ (.regout (nx65531z1), .datain (
                       nx28674z1), .sdata (1'b0), .clk (clk_int), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_out_o_sevenseg_obuf_12_ (.regout (nx64534z1), .datain (
                       nx27677z1), .sdata (1'b0), .clk (clk_int), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_out_o_sevenseg_obuf_11_ (.regout (nx63537z1), .datain (
                       nx26680z1), .sdata (1'b0), .clk (clk_int), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_out_o_sevenseg_obuf_10_ (.regout (nx62540z1), .datain (
                       nx25683z1), .sdata (1'b0), .clk (clk_int), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_out_o_sevenseg_obuf_1_ (.regout (nx42848z1), .datain (
                       nx58587z1), .sdata (1'b0), .clk (clk_int), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_out_o_sevenseg_obuf_0_ (.regout (nx41851z1), .datain (
                       nx57590z1), .sdata (1'b0), .clk (clk_int), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_io o_sevenseg_obuf_7_ (.padio (o_sevenseg[7]), .datain (
                 o_sevenseg_dup0_7_), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 defparam o_sevenseg_obuf_7_.operation_mode = "output";
                 
                 defparam o_sevenseg_obuf_7_.output_register_mode = "none";
                 
                 defparam o_sevenseg_obuf_7_.tie_off_output_clock_enable = "false";
                 defparam o_sevenseg_obuf_7_.oe_register_mode = "none";
                 
                 defparam o_sevenseg_obuf_7_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_sevenseg_obuf_7_.input_register_mode = "none";
    cycloneii_io o_sevenseg_obuf_15_ (.padio (o_sevenseg[15]), .datain (
                 o_sevenseg_dup0_7_), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam o_sevenseg_obuf_15_.operation_mode = "output";
                 
                 defparam o_sevenseg_obuf_15_.output_register_mode = "none";
                 
                 defparam o_sevenseg_obuf_15_.tie_off_output_clock_enable = "false";
                 
                 defparam o_sevenseg_obuf_15_.oe_register_mode = "none";
                 
                 defparam o_sevenseg_obuf_15_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_sevenseg_obuf_15_.input_register_mode = "none";
    cycloneii_io o_nrst_obuf (.padio (o_nrst), .datain (o_nrst_dup0), .oe (1'b1)
                 , .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam o_nrst_obuf.operation_mode = "output";
                 
                 defparam o_nrst_obuf.output_register_mode = "none";
                 
                 defparam o_nrst_obuf.tie_off_output_clock_enable = "false";
                 
                 defparam o_nrst_obuf.oe_register_mode = "none";
                 
                 defparam o_nrst_obuf.tie_off_oe_clock_enable = "false";
                 
                 defparam o_nrst_obuf.input_register_mode = "none";
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
    cycloneii_io nrst_ibuf (.combout (nrst_int), .padio (nrst), .datain (1'b0), 
                 .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam nrst_ibuf.operation_mode = "input";
                 
                 defparam nrst_ibuf.output_register_mode = "none";
                 
                 defparam nrst_ibuf.tie_off_output_clock_enable = "false";
                 
                 defparam nrst_ibuf.oe_register_mode = "none";
                 
                 defparam nrst_ibuf.tie_off_oe_clock_enable = "false";
                 
                 defparam nrst_ibuf.input_register_mode = "none";
    cycloneii_io ix21351z43919 (.padio (txflex), .datain (nx21351z1), .oe (1'b1)
                 , .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix21351z43919.operation_mode = "output";
                 
                 defparam ix21351z43919.output_register_mode = "none";
                 
                 defparam ix21351z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix21351z43919.oe_register_mode = "none";
                 
                 defparam ix21351z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix21351z43919.input_register_mode = "none";
    cycloneii_io ix992z43919 (.padio (o_sevenseg[14]), .datain (nx992z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix992z43919.operation_mode = "output";
                 
                 defparam ix992z43919.output_register_mode = "none";
                 
                 defparam ix992z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix992z43919.oe_register_mode = "none";
                 
                 defparam ix992z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix992z43919.input_register_mode = "none";
    cycloneii_io ix65531z43919 (.padio (o_sevenseg[13]), .datain (nx65531z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix65531z43919.operation_mode = "output";
                 
                 defparam ix65531z43919.output_register_mode = "none";
                 
                 defparam ix65531z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix65531z43919.oe_register_mode = "none";
                 
                 defparam ix65531z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix65531z43919.input_register_mode = "none";
    cycloneii_io ix64534z43919 (.padio (o_sevenseg[12]), .datain (nx64534z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix64534z43919.operation_mode = "output";
                 
                 defparam ix64534z43919.output_register_mode = "none";
                 
                 defparam ix64534z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix64534z43919.oe_register_mode = "none";
                 
                 defparam ix64534z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix64534z43919.input_register_mode = "none";
    cycloneii_io ix63537z43919 (.padio (o_sevenseg[11]), .datain (nx63537z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix63537z43919.operation_mode = "output";
                 
                 defparam ix63537z43919.output_register_mode = "none";
                 
                 defparam ix63537z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix63537z43919.oe_register_mode = "none";
                 
                 defparam ix63537z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix63537z43919.input_register_mode = "none";
    cycloneii_io ix62540z43919 (.padio (o_sevenseg[10]), .datain (nx62540z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix62540z43919.operation_mode = "output";
                 
                 defparam ix62540z43919.output_register_mode = "none";
                 
                 defparam ix62540z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix62540z43919.oe_register_mode = "none";
                 
                 defparam ix62540z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix62540z43919.input_register_mode = "none";
    cycloneii_io ix50824z43919 (.padio (o_sevenseg[9]), .datain (nx50824z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix50824z43919.operation_mode = "output";
                 
                 defparam ix50824z43919.output_register_mode = "none";
                 
                 defparam ix50824z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix50824z43919.oe_register_mode = "none";
                 
                 defparam ix50824z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix50824z43919.input_register_mode = "none";
    cycloneii_io ix49827z43919 (.padio (o_sevenseg[8]), .datain (nx49827z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix49827z43919.operation_mode = "output";
                 
                 defparam ix49827z43919.output_register_mode = "none";
                 
                 defparam ix49827z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix49827z43919.oe_register_mode = "none";
                 
                 defparam ix49827z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix49827z43919.input_register_mode = "none";
    cycloneii_io ix47833z43919 (.padio (o_sevenseg[6]), .datain (nx47833z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix47833z43919.operation_mode = "output";
                 
                 defparam ix47833z43919.output_register_mode = "none";
                 
                 defparam ix47833z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix47833z43919.oe_register_mode = "none";
                 
                 defparam ix47833z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix47833z43919.input_register_mode = "none";
    cycloneii_io ix46836z43919 (.padio (o_sevenseg[5]), .datain (nx46836z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix46836z43919.operation_mode = "output";
                 
                 defparam ix46836z43919.output_register_mode = "none";
                 
                 defparam ix46836z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix46836z43919.oe_register_mode = "none";
                 
                 defparam ix46836z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix46836z43919.input_register_mode = "none";
    cycloneii_io ix45839z43919 (.padio (o_sevenseg[4]), .datain (nx45839z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix45839z43919.operation_mode = "output";
                 
                 defparam ix45839z43919.output_register_mode = "none";
                 
                 defparam ix45839z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix45839z43919.oe_register_mode = "none";
                 
                 defparam ix45839z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix45839z43919.input_register_mode = "none";
    cycloneii_io ix44842z43919 (.padio (o_sevenseg[3]), .datain (nx44842z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix44842z43919.operation_mode = "output";
                 
                 defparam ix44842z43919.output_register_mode = "none";
                 
                 defparam ix44842z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix44842z43919.oe_register_mode = "none";
                 
                 defparam ix44842z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix44842z43919.input_register_mode = "none";
    cycloneii_io ix43845z43919 (.padio (o_sevenseg[2]), .datain (nx43845z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix43845z43919.operation_mode = "output";
                 
                 defparam ix43845z43919.output_register_mode = "none";
                 
                 defparam ix43845z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix43845z43919.oe_register_mode = "none";
                 
                 defparam ix43845z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix43845z43919.input_register_mode = "none";
    cycloneii_io ix42848z43919 (.padio (o_sevenseg[1]), .datain (nx42848z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix42848z43919.operation_mode = "output";
                 
                 defparam ix42848z43919.output_register_mode = "none";
                 
                 defparam ix42848z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix42848z43919.oe_register_mode = "none";
                 
                 defparam ix42848z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix42848z43919.input_register_mode = "none";
    cycloneii_io ix41851z43919 (.padio (o_sevenseg[0]), .datain (nx41851z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix41851z43919.operation_mode = "output";
                 
                 defparam ix41851z43919.output_register_mode = "none";
                 
                 defparam ix41851z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix41851z43919.oe_register_mode = "none";
                 
                 defparam ix41851z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix41851z43919.input_register_mode = "none";
    cycloneii_io debug_sevenseg_5_obuf_7_ (.padio (debug_sevenseg_5[7]), .datain (
                 o_sevenseg_dup0_7_), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_5_obuf_7_.operation_mode = "output";
                 
                 defparam debug_sevenseg_5_obuf_7_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_5_obuf_7_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_5_obuf_7_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_5_obuf_7_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_5_obuf_7_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_5_obuf_6_ (.padio (debug_sevenseg_5[6]), .datain (
                 debug_num_0_0_), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1)
                 , .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_5_obuf_6_.operation_mode = "output";
                 
                 defparam debug_sevenseg_5_obuf_6_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_5_obuf_6_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_5_obuf_6_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_5_obuf_6_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_5_obuf_6_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_5_obuf_5_ (.padio (debug_sevenseg_5[5]), .datain (
                 debug_num_0_0_), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1)
                 , .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_5_obuf_5_.operation_mode = "output";
                 
                 defparam debug_sevenseg_5_obuf_5_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_5_obuf_5_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_5_obuf_5_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_5_obuf_5_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_5_obuf_5_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_5_obuf_4_ (.padio (debug_sevenseg_5[4]), .datain (
                 debug_num_0_0_), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1)
                 , .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_5_obuf_4_.operation_mode = "output";
                 
                 defparam debug_sevenseg_5_obuf_4_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_5_obuf_4_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_5_obuf_4_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_5_obuf_4_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_5_obuf_4_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_5_obuf_3_ (.padio (debug_sevenseg_5[3]), .datain (
                 debug_num_0_0_), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1)
                 , .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_5_obuf_3_.operation_mode = "output";
                 
                 defparam debug_sevenseg_5_obuf_3_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_5_obuf_3_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_5_obuf_3_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_5_obuf_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_5_obuf_3_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_5_obuf_2_ (.padio (debug_sevenseg_5[2]), .datain (
                 debug_num_0_0_), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1)
                 , .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_5_obuf_2_.operation_mode = "output";
                 
                 defparam debug_sevenseg_5_obuf_2_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_5_obuf_2_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_5_obuf_2_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_5_obuf_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_5_obuf_2_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_5_obuf_1_ (.padio (debug_sevenseg_5[1]), .datain (
                 debug_num_0_0_), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1)
                 , .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_5_obuf_1_.operation_mode = "output";
                 
                 defparam debug_sevenseg_5_obuf_1_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_5_obuf_1_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_5_obuf_1_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_5_obuf_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_5_obuf_1_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_5_obuf_0_ (.padio (debug_sevenseg_5[0]), .datain (
                 o_sevenseg_dup0_7_), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_5_obuf_0_.operation_mode = "output";
                 
                 defparam debug_sevenseg_5_obuf_0_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_5_obuf_0_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_5_obuf_0_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_5_obuf_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_5_obuf_0_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_4_obuf_7_ (.padio (debug_sevenseg_4[7]), .datain (
                 o_sevenseg_dup0_7_), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_4_obuf_7_.operation_mode = "output";
                 
                 defparam debug_sevenseg_4_obuf_7_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_4_obuf_7_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_4_obuf_7_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_4_obuf_7_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_4_obuf_7_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_4_obuf_6_ (.padio (debug_sevenseg_4[6]), .datain (
                 debug_num_0_0_), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1)
                 , .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_4_obuf_6_.operation_mode = "output";
                 
                 defparam debug_sevenseg_4_obuf_6_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_4_obuf_6_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_4_obuf_6_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_4_obuf_6_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_4_obuf_6_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_4_obuf_5_ (.padio (debug_sevenseg_4[5]), .datain (
                 debug_num_0_0_), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1)
                 , .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_4_obuf_5_.operation_mode = "output";
                 
                 defparam debug_sevenseg_4_obuf_5_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_4_obuf_5_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_4_obuf_5_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_4_obuf_5_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_4_obuf_5_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_4_obuf_4_ (.padio (debug_sevenseg_4[4]), .datain (
                 debug_num_0_0_), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1)
                 , .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_4_obuf_4_.operation_mode = "output";
                 
                 defparam debug_sevenseg_4_obuf_4_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_4_obuf_4_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_4_obuf_4_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_4_obuf_4_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_4_obuf_4_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_4_obuf_3_ (.padio (debug_sevenseg_4[3]), .datain (
                 debug_num_0_0_), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1)
                 , .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_4_obuf_3_.operation_mode = "output";
                 
                 defparam debug_sevenseg_4_obuf_3_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_4_obuf_3_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_4_obuf_3_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_4_obuf_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_4_obuf_3_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_4_obuf_2_ (.padio (debug_sevenseg_4[2]), .datain (
                 debug_num_0_0_), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1)
                 , .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_4_obuf_2_.operation_mode = "output";
                 
                 defparam debug_sevenseg_4_obuf_2_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_4_obuf_2_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_4_obuf_2_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_4_obuf_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_4_obuf_2_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_4_obuf_1_ (.padio (debug_sevenseg_4[1]), .datain (
                 debug_num_0_0_), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1)
                 , .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_4_obuf_1_.operation_mode = "output";
                 
                 defparam debug_sevenseg_4_obuf_1_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_4_obuf_1_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_4_obuf_1_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_4_obuf_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_4_obuf_1_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_4_obuf_0_ (.padio (debug_sevenseg_4[0]), .datain (
                 o_sevenseg_dup0_7_), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_4_obuf_0_.operation_mode = "output";
                 
                 defparam debug_sevenseg_4_obuf_0_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_4_obuf_0_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_4_obuf_0_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_4_obuf_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_4_obuf_0_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_3_obuf_7_ (.padio (debug_sevenseg_3[7]), .datain (
                 o_sevenseg_dup0_7_), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_3_obuf_7_.operation_mode = "output";
                 
                 defparam debug_sevenseg_3_obuf_7_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_3_obuf_7_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_3_obuf_7_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_3_obuf_7_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_3_obuf_7_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_3_obuf_6_ (.padio (debug_sevenseg_3[6]), .datain (
                 debug_num_0_0_), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1)
                 , .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_3_obuf_6_.operation_mode = "output";
                 
                 defparam debug_sevenseg_3_obuf_6_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_3_obuf_6_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_3_obuf_6_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_3_obuf_6_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_3_obuf_6_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_3_obuf_5_ (.padio (debug_sevenseg_3[5]), .datain (
                 debug_num_0_0_), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1)
                 , .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_3_obuf_5_.operation_mode = "output";
                 
                 defparam debug_sevenseg_3_obuf_5_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_3_obuf_5_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_3_obuf_5_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_3_obuf_5_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_3_obuf_5_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_3_obuf_4_ (.padio (debug_sevenseg_3[4]), .datain (
                 debug_num_0_0_), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1)
                 , .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_3_obuf_4_.operation_mode = "output";
                 
                 defparam debug_sevenseg_3_obuf_4_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_3_obuf_4_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_3_obuf_4_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_3_obuf_4_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_3_obuf_4_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_3_obuf_3_ (.padio (debug_sevenseg_3[3]), .datain (
                 debug_num_0_0_), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1)
                 , .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_3_obuf_3_.operation_mode = "output";
                 
                 defparam debug_sevenseg_3_obuf_3_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_3_obuf_3_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_3_obuf_3_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_3_obuf_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_3_obuf_3_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_3_obuf_2_ (.padio (debug_sevenseg_3[2]), .datain (
                 debug_num_0_0_), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1)
                 , .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_3_obuf_2_.operation_mode = "output";
                 
                 defparam debug_sevenseg_3_obuf_2_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_3_obuf_2_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_3_obuf_2_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_3_obuf_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_3_obuf_2_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_3_obuf_1_ (.padio (debug_sevenseg_3[1]), .datain (
                 debug_num_0_0_), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1)
                 , .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_3_obuf_1_.operation_mode = "output";
                 
                 defparam debug_sevenseg_3_obuf_1_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_3_obuf_1_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_3_obuf_1_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_3_obuf_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_3_obuf_1_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_3_obuf_0_ (.padio (debug_sevenseg_3[0]), .datain (
                 o_sevenseg_dup0_7_), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_3_obuf_0_.operation_mode = "output";
                 
                 defparam debug_sevenseg_3_obuf_0_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_3_obuf_0_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_3_obuf_0_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_3_obuf_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_3_obuf_0_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_2_obuf_7_ (.padio (debug_sevenseg_2[7]), .datain (
                 o_sevenseg_dup0_7_), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_2_obuf_7_.operation_mode = "output";
                 
                 defparam debug_sevenseg_2_obuf_7_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_2_obuf_7_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_2_obuf_7_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_2_obuf_7_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_2_obuf_7_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_2_obuf_6_ (.padio (debug_sevenseg_2[6]), .datain (
                 debug_num_0_0_), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1)
                 , .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_2_obuf_6_.operation_mode = "output";
                 
                 defparam debug_sevenseg_2_obuf_6_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_2_obuf_6_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_2_obuf_6_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_2_obuf_6_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_2_obuf_6_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_2_obuf_5_ (.padio (debug_sevenseg_2[5]), .datain (
                 debug_num_0_0_), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1)
                 , .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_2_obuf_5_.operation_mode = "output";
                 
                 defparam debug_sevenseg_2_obuf_5_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_2_obuf_5_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_2_obuf_5_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_2_obuf_5_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_2_obuf_5_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_2_obuf_4_ (.padio (debug_sevenseg_2[4]), .datain (
                 debug_num_0_0_), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1)
                 , .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_2_obuf_4_.operation_mode = "output";
                 
                 defparam debug_sevenseg_2_obuf_4_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_2_obuf_4_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_2_obuf_4_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_2_obuf_4_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_2_obuf_4_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_2_obuf_3_ (.padio (debug_sevenseg_2[3]), .datain (
                 debug_num_0_0_), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1)
                 , .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_2_obuf_3_.operation_mode = "output";
                 
                 defparam debug_sevenseg_2_obuf_3_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_2_obuf_3_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_2_obuf_3_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_2_obuf_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_2_obuf_3_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_2_obuf_2_ (.padio (debug_sevenseg_2[2]), .datain (
                 debug_num_0_0_), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1)
                 , .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_2_obuf_2_.operation_mode = "output";
                 
                 defparam debug_sevenseg_2_obuf_2_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_2_obuf_2_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_2_obuf_2_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_2_obuf_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_2_obuf_2_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_2_obuf_1_ (.padio (debug_sevenseg_2[1]), .datain (
                 debug_num_0_0_), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1)
                 , .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_2_obuf_1_.operation_mode = "output";
                 
                 defparam debug_sevenseg_2_obuf_1_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_2_obuf_1_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_2_obuf_1_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_2_obuf_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_2_obuf_1_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_2_obuf_0_ (.padio (debug_sevenseg_2[0]), .datain (
                 o_sevenseg_dup0_7_), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_2_obuf_0_.operation_mode = "output";
                 
                 defparam debug_sevenseg_2_obuf_0_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_2_obuf_0_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_2_obuf_0_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_2_obuf_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_2_obuf_0_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_1_obuf_7_ (.padio (debug_sevenseg_1[7]), .datain (
                 o_sevenseg_dup0_7_), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_1_obuf_7_.operation_mode = "output";
                 
                 defparam debug_sevenseg_1_obuf_7_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_1_obuf_7_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_1_obuf_7_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_1_obuf_7_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_1_obuf_7_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_1_obuf_6_ (.padio (debug_sevenseg_1[6]), .datain (
                 debug_num_0_0_), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1)
                 , .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_1_obuf_6_.operation_mode = "output";
                 
                 defparam debug_sevenseg_1_obuf_6_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_1_obuf_6_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_1_obuf_6_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_1_obuf_6_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_1_obuf_6_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_1_obuf_5_ (.padio (debug_sevenseg_1[5]), .datain (
                 debug_num_0_0_), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1)
                 , .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_1_obuf_5_.operation_mode = "output";
                 
                 defparam debug_sevenseg_1_obuf_5_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_1_obuf_5_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_1_obuf_5_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_1_obuf_5_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_1_obuf_5_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_1_obuf_4_ (.padio (debug_sevenseg_1[4]), .datain (
                 debug_num_0_0_), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1)
                 , .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_1_obuf_4_.operation_mode = "output";
                 
                 defparam debug_sevenseg_1_obuf_4_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_1_obuf_4_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_1_obuf_4_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_1_obuf_4_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_1_obuf_4_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_1_obuf_3_ (.padio (debug_sevenseg_1[3]), .datain (
                 debug_num_0_0_), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1)
                 , .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_1_obuf_3_.operation_mode = "output";
                 
                 defparam debug_sevenseg_1_obuf_3_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_1_obuf_3_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_1_obuf_3_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_1_obuf_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_1_obuf_3_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_1_obuf_2_ (.padio (debug_sevenseg_1[2]), .datain (
                 debug_num_0_0_), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1)
                 , .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_1_obuf_2_.operation_mode = "output";
                 
                 defparam debug_sevenseg_1_obuf_2_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_1_obuf_2_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_1_obuf_2_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_1_obuf_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_1_obuf_2_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_1_obuf_1_ (.padio (debug_sevenseg_1[1]), .datain (
                 debug_num_0_0_), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1)
                 , .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_1_obuf_1_.operation_mode = "output";
                 
                 defparam debug_sevenseg_1_obuf_1_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_1_obuf_1_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_1_obuf_1_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_1_obuf_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_1_obuf_1_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_1_obuf_0_ (.padio (debug_sevenseg_1[0]), .datain (
                 o_sevenseg_dup0_7_), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_1_obuf_0_.operation_mode = "output";
                 
                 defparam debug_sevenseg_1_obuf_0_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_1_obuf_0_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_1_obuf_0_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_1_obuf_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_1_obuf_0_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_0_obuf_7_ (.padio (debug_sevenseg_0[7]), .datain (
                 o_sevenseg_dup0_7_), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_0_obuf_7_.operation_mode = "output";
                 
                 defparam debug_sevenseg_0_obuf_7_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_0_obuf_7_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_0_obuf_7_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_0_obuf_7_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_0_obuf_7_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_0_obuf_6_ (.padio (debug_sevenseg_0[6]), .datain (
                 debug_num_0_0_), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1)
                 , .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_0_obuf_6_.operation_mode = "output";
                 
                 defparam debug_sevenseg_0_obuf_6_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_0_obuf_6_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_0_obuf_6_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_0_obuf_6_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_0_obuf_6_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_0_obuf_5_ (.padio (debug_sevenseg_0[5]), .datain (
                 debug_num_0_0_), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1)
                 , .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_0_obuf_5_.operation_mode = "output";
                 
                 defparam debug_sevenseg_0_obuf_5_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_0_obuf_5_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_0_obuf_5_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_0_obuf_5_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_0_obuf_5_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_0_obuf_4_ (.padio (debug_sevenseg_0[4]), .datain (
                 debug_num_0_0_), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1)
                 , .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_0_obuf_4_.operation_mode = "output";
                 
                 defparam debug_sevenseg_0_obuf_4_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_0_obuf_4_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_0_obuf_4_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_0_obuf_4_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_0_obuf_4_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_0_obuf_3_ (.padio (debug_sevenseg_0[3]), .datain (
                 debug_num_0_0_), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1)
                 , .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_0_obuf_3_.operation_mode = "output";
                 
                 defparam debug_sevenseg_0_obuf_3_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_0_obuf_3_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_0_obuf_3_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_0_obuf_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_0_obuf_3_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_0_obuf_2_ (.padio (debug_sevenseg_0[2]), .datain (
                 debug_num_0_0_), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1)
                 , .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_0_obuf_2_.operation_mode = "output";
                 
                 defparam debug_sevenseg_0_obuf_2_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_0_obuf_2_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_0_obuf_2_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_0_obuf_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_0_obuf_2_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_0_obuf_1_ (.padio (debug_sevenseg_0[1]), .datain (
                 debug_num_0_0_), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1)
                 , .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_0_obuf_1_.operation_mode = "output";
                 
                 defparam debug_sevenseg_0_obuf_1_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_0_obuf_1_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_0_obuf_1_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_0_obuf_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_0_obuf_1_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_0_obuf_0_ (.padio (debug_sevenseg_0[0]), .datain (
                 o_sevenseg_dup0_7_), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_0_obuf_0_.operation_mode = "output";
                 
                 defparam debug_sevenseg_0_obuf_0_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_0_obuf_0_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_0_obuf_0_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_0_obuf_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_0_obuf_0_.input_register_mode = "none";
    cycloneii_io clk_ibuf (.combout (clk_int), .padio (clk), .datain (1'b0), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam clk_ibuf.operation_mode = "input";
                 
                 defparam clk_ibuf.output_register_mode = "none";
                 
                 defparam clk_ibuf.tie_off_output_clock_enable = "false";
                 
                 defparam clk_ibuf.oe_register_mode = "none";
                 
                 defparam clk_ibuf.tie_off_oe_clock_enable = "false";
                 
                 defparam clk_ibuf.input_register_mode = "none";
    cycloneii_lcell_comb ix62575z52923 (.combout (nx62575z1), .dataa (
                         rowcount_0_), .datab (rowcount_2_), .datac (rowcount_3_
                         ), .datad (row_count_1__dup_10), .cin (1'b0)) ;
                         
                         defparam ix62575z52923.lut_mask = 16'h48e4;
    cycloneii_lcell_comb ix58587z52923 (.combout (nx58587z1), .dataa (
                         rowcount_0_), .datab (rowcount_2_), .datac (rowcount_3_
                         ), .datad (row_count_1__dup_10), .cin (1'b0)) ;
                         
                         defparam ix58587z52923.lut_mask = 16'h820b;
    cycloneii_lcell_comb ix57590z52923 (.combout (nx57590z1), .dataa (
                         rowcount_0_), .datab (rowcount_2_), .datac (rowcount_3_
                         ), .datad (row_count_1__dup_10), .cin (1'b0)) ;
                         
                         defparam ix57590z52923.lut_mask = 16'h4308;
    cycloneii_lcell_comb ix63572z52923 (.combout (nx63572z1), .dataa (
                         rowcount_0_), .datab (rowcount_2_), .datac (rowcount_3_
                         ), .datad (row_count_1__dup_10), .cin (1'b0)) ;
                         
                         defparam ix63572z52923.lut_mask = 16'h8620;
    cycloneii_lcell_comb ix28674z52923 (.combout (nx28674z1), .dataa (
                         rowcount_7_), .datab (rowcount_6_), .datac (rowcount_5_
                         ), .datad (rowcount_4_), .cin (1'b0)) ;
                         
                         defparam ix28674z52923.lut_mask = 16'ha4c8;
    cycloneii_lcell_comb ix1027z52923 (.combout (nx1027z1), .dataa (rowcount_7_)
                         , .datab (rowcount_6_), .datac (rowcount_5_), .datad (
                         rowcount_4_), .cin (1'b0)) ;
                         
                         defparam ix1027z52923.lut_mask = 16'h5910;
    cycloneii_lcell_comb ix30z52923 (.combout (nx30z1), .dataa (rowcount_7_), .datab (
                         rowcount_6_), .datac (rowcount_5_), .datad (rowcount_4_
                         ), .cin (1'b0)) ;
                         
                         defparam ix30z52923.lut_mask = 16'h4109;
    cycloneii_lcell_comb ix29671z52923 (.combout (nx29671z1), .dataa (
                         rowcount_7_), .datab (rowcount_6_), .datac (rowcount_5_
                         ), .datad (rowcount_4_), .cin (1'b0)) ;
                         
                         defparam ix29671z52923.lut_mask = 16'h2904;
    cycloneii_lcell_comb ix27677z52923 (.combout (nx27677z1), .dataa (
                         rowcount_7_), .datab (rowcount_6_), .datac (rowcount_5_
                         ), .datad (rowcount_4_), .cin (1'b0)) ;
                         
                         defparam ix27677z52923.lut_mask = 16'h8098;
    cycloneii_lcell_comb ix26680z52923 (.combout (nx26680z1), .dataa (
                         rowcount_7_), .datab (rowcount_6_), .datac (rowcount_5_
                         ), .datad (rowcount_4_), .cin (1'b0)) ;
                         
                         defparam ix26680z52923.lut_mask = 16'hc324;
    cycloneii_lcell_comb ix25683z52923 (.combout (nx25683z1), .dataa (
                         rowcount_7_), .datab (rowcount_6_), .datac (rowcount_5_
                         ), .datad (rowcount_4_), .cin (1'b0)) ;
                         
                         defparam ix25683z52923.lut_mask = 16'h5704;
    cycloneii_lcell_comb ix61578z52923 (.combout (nx61578z1), .dataa (
                         rowcount_0_), .datab (rowcount_2_), .datac (rowcount_3_
                         ), .datad (row_count_1__dup_10), .cin (1'b0)) ;
                         
                         defparam ix61578z52923.lut_mask = 16'h40c1;
    cycloneii_lcell_comb ix60581z52923 (.combout (nx60581z1), .dataa (
                         rowcount_0_), .datab (rowcount_2_), .datac (rowcount_3_
                         ), .datad (row_count_1__dup_10), .cin (1'b0)) ;
                         
                         defparam ix60581z52923.lut_mask = 16'h2698;
    cycloneii_lcell_comb ix59584z52923 (.combout (nx59584z1), .dataa (
                         rowcount_0_), .datab (rowcount_2_), .datac (rowcount_3_
                         ), .datad (row_count_1__dup_10), .cin (1'b0)) ;
                         
                         defparam ix59584z52923.lut_mask = 16'h2e0a;
endmodule


module kirsch_notri ( p_o_valid, p_o_edge, p_o_dir, p_o_mode, p_i_reset, 
                      p_i_pixel, p_i_valid_rtlc_747_or_76, p_o_row, p_i_clock, 
                      p_row_count_1_, px705 ) ;

    output p_o_valid ;
    output p_o_edge ;
    output [2:0]p_o_dir ;
    output [1:0]p_o_mode ;
    input p_i_reset ;
    input [7:0]p_i_pixel ;
    input [7:7]p_i_valid_rtlc_747_or_76 ;
    output [7:0]p_o_row ;
    input p_i_clock ;
    output p_row_count_1_ ;
    output px705 ;

    wire sub_9_, sub_10_, sub_11_, sub_12_;
    wire [12:0]r9;
    wire [9:0]r8;
    wire [2:0]r8_dir;
    wire nx1448z3;
    wire [8:0]r6_14n0r1;
    wire [7:0]r1_9n1s1;
    wire nx47743z2;
    wire [8:0]r2_10n1s1;
    wire [8:0]r2_10n1s4;
    wire [9:0]r7_15n1s1;
    wire [8:0]r7_15n1s2;
    wire [7:0]rtlcn947;
    wire v_6_, v_4_, row_count_2_, row_count_3_, row_count_4_, row_count_5_, 
         row_count_6_, row_count_7_;
    wire [12:1]r9_17n0r1;
    wire [7:0]col_flop;
    wire [2:0]r5_dir;
    wire [2:0]r4_dir;
    wire r2_dir_1_, r2_dir_0_, r2_dir_2_;
    wire [9:0]r7;
    wire [8:0]r6;
    wire [7:0]r1;
    wire v_5_, sub_7_, sub_8_, v_7_, nx15883z1;
    wire [9:0]r5;
    wire nx9374z1;
    wire [9:0]r4;
    wire [8:0]r2;
    wire [12:0]r3_11n1s1;
    wire [12:0]r3;
    wire [7:0]r2_10n1s1f1;
    wire [7:0]r2_10n1s4f1;
    wire [7:0]f;
    wire nx20740z3;
    wire [7:0]g;
    wire nx19070z2, nx20740z5, v_3_;
    wire [7:0]r1_9n1s1f2;
    wire v_1_, v_2_;
    wire [7:0]e;
    wire [7:0]col_i;
    wire nx30960z1, nx30960z2, nx30960z3, nx30960z4, nx30960z5, nx30960z6, 
         nx30960z7, nx30960z8, nx64436z1, nx33634z1, nx82z1, nx21064z1, nx1448z1, 
         nx60567z1, not_v_7, nx31323z1;
    wire [8:0]r3_11n1s1f1;
    wire PWR, nx20740z2, nx20067z1, nx47743z1, nx20740z1, nx64436z2, nx60567z2, 
         nx12508z1, nx60567z3, nx64436z3, nx1448z2, nx19070z1, nx60567z5, 
         nx60567z6, nx13505z1, nx60567z4, nx31323z2, nx43221z1, nx43221z2, 
         nx20740z4, NOT_rtlc19_PS6_n24, nx44420z1, NOT_r2_dir_1_, nx43423z1, 
         NOT_r2_dir_0_;
    wire [0:0]d;
    wire [883:0] xmplr_dummy ;




    sub_8_0 ix20740z19320 (.a ({g[7],g[6],g[5],g[4],g[3],g[2],g[1],g[0]}), .b ({
            d[0],d[0],d[0],d[0],d[0],d[0],d[0],d[0]}), .cout (nx20740z3)) ;
    sub_8_1 ix19070z19317 (.a ({d[0],d[0],d[0],d[0],d[0],d[0],d[0],d[0]}), .b ({
            d[0],d[0],d[0],d[0],d[0],d[0],d[0],d[0]}), .cout (nx19070z2)) ;
    sub_8_2 ix20740z19328 (.a ({d[0],d[0],d[0],d[0],d[0],d[0],d[0],d[0]}), .b ({
            f[7],f[6],f[5],f[4],f[3],f[2],f[1],f[0]}), .cout (nx20740z5)) ;
    add_13_0 r3_add13_11i1 (.a ({r3[12],r3[11],r3[10],r3[9],r3[8],r3[7],r3[6],
             r3[5],r3[4],r3[3],r3[2],r3[1],r3[0]}), .b ({xmplr_dummy [0],
             xmplr_dummy [1],xmplr_dummy [2],xmplr_dummy [3],r3_11n1s1f1[8],
             r3_11n1s1f1[7],r3_11n1s1f1[6],r3_11n1s1f1[5],r3_11n1s1f1[4],
             r3_11n1s1f1[3],r3_11n1s1f1[2],r3_11n1s1f1[1],r3_11n1s1f1[0]}), .d (
             {r3_11n1s1[12],r3_11n1s1[11],r3_11n1s1[10],r3_11n1s1[9],
             r3_11n1s1[8],r3_11n1s1[7],r3_11n1s1[6],r3_11n1s1[5],r3_11n1s1[4],
             r3_11n1s1[3],r3_11n1s1[2],r3_11n1s1[1],r3_11n1s1[0]})) ;
    sub_10_0 ix9374z6956 (.a ({d[0],r2[8],r2[7],r2[6],r2[5],r2[4],r2[3],r2[2],
             r2[1],r2[0]}), .b ({r4[9],r4[8],r4[7],r4[6],r4[5],r4[4],r4[3],r4[2]
             ,r4[1],r4[0]}), .cout (nx9374z1)) ;
    sub_10_1 ix15883z6955 (.a ({r4[9],r4[8],r4[7],r4[6],r4[5],r4[4],r4[3],r4[2],
             r4[1],r4[0]}), .b ({r5[9],r5[8],r5[7],r5[6],r5[5],r5[4],r5[3],r5[2]
             ,r5[1],r5[0]}), .cout (nx15883z1)) ;
    add_12_0 r9_add12_17i1 (.a ({r3[11],r3[10],r3[9],r3[8],r3[7],r3[6],r3[5],
             r3[4],r3[3],r3[2],r3[1],r3[0]}), .b ({r3[12],xmplr_dummy [4],
             xmplr_dummy [5],xmplr_dummy [6],xmplr_dummy [7],xmplr_dummy [8],
             xmplr_dummy [9],xmplr_dummy [10],xmplr_dummy [11],xmplr_dummy [12],
             xmplr_dummy [13],xmplr_dummy [14]}), .d ({r9_17n0r1[12],
             r9_17n0r1[11],r9_17n0r1[10],r9_17n0r1[9],r9_17n0r1[8],r9_17n0r1[7],
             r9_17n0r1[6],r9_17n0r1[5],r9_17n0r1[4],r9_17n0r1[3],r9_17n0r1[2],
             r9_17n0r1[1]})) ;
    inc_8_0 ix39583z59249 (.a ({col_i[7],col_i[6],col_i[5],col_i[4],col_i[3],
            col_i[2],col_i[1],col_i[0]}), .d (rtlcn947)) ;
    modgen_counter_8_0 modgen_counter_row_count (.clock (p_i_clock), .q ({
                       row_count_7_,row_count_6_,row_count_5_,row_count_4_,
                       row_count_3_,row_count_2_,p_row_count_1_,p_o_row[0]}), .cnt_en (
                       nx64436z1)) ;
    add_8_0 r7_add8_15i9 (.a ({e[7],e[6],e[5],e[4],e[3],e[2],e[1],e[0]}), .b ({
            f[7],f[6],f[5],f[4],f[3],f[2],f[1],f[0]}), .d ({r7_15n1s2[0],
            r7_15n1s2[1],r7_15n1s2[2],r7_15n1s2[3],r7_15n1s2[4],r7_15n1s2[5],
            r7_15n1s2[6],r7_15n1s2[7]}), .cout (r7_15n1s2[8])) ;
    add_9_0 r7_add9_15i10 (.a ({r7_15n1s2[8],r7_15n1s2[0],r7_15n1s2[1],
            r7_15n1s2[2],r7_15n1s2[3],r7_15n1s2[4],r7_15n1s2[5],r7_15n1s2[6],
            r7_15n1s2[7]}), .b ({xmplr_dummy [15],g[7],g[6],g[5],g[4],g[3],g[2],
            g[1],g[0]}), .d ({r7_15n1s1[0],r7_15n1s1[1],r7_15n1s1[2],
            r7_15n1s1[3],r7_15n1s1[4],r7_15n1s1[5],r7_15n1s1[6],r7_15n1s1[7],
            r7_15n1s1[8]}), .cout (r7_15n1s1[9])) ;
    add_8_1 r2_add8_10i25 (.a ({r2_10n1s4f1[7],r2_10n1s4f1[6],r2_10n1s4f1[5],
            r2_10n1s4f1[4],r2_10n1s4f1[3],r2_10n1s4f1[2],r2_10n1s4f1[1],
            r2_10n1s4f1[0]}), .b ({d[0],d[0],d[0],d[0],d[0],d[0],d[0],d[0]}), .d (
            {r2_10n1s4[0],r2_10n1s4[1],r2_10n1s4[2],r2_10n1s4[3],r2_10n1s4[4],
            r2_10n1s4[5],r2_10n1s4[6],r2_10n1s4[7]}), .cout (r2_10n1s4[8])) ;
    add_9_1 r2_add9_10i26 (.a ({r2_10n1s4[8],r2_10n1s4[0],r2_10n1s4[1],
            r2_10n1s4[2],r2_10n1s4[3],r2_10n1s4[4],r2_10n1s4[5],r2_10n1s4[6],
            r2_10n1s4[7]}), .b ({xmplr_dummy [16],r2_10n1s1f1[7],r2_10n1s1f1[6],
            r2_10n1s1f1[5],r2_10n1s1f1[4],r2_10n1s1f1[3],r2_10n1s1f1[2],
            r2_10n1s1f1[1],r2_10n1s1f1[0]}), .d ({r2_10n1s1[0],r2_10n1s1[1],
            r2_10n1s1[2],r2_10n1s1[3],r2_10n1s1[4],r2_10n1s1[5],r2_10n1s1[6],
            r2_10n1s1[7],r2_10n1s1[8]})) ;
    sub_10_2 ix47743z6956 (.a ({r4[9],r4[8],r4[7],r4[6],r4[5],r4[4],r4[3],r4[2],
             r4[1],r4[0]}), .b ({r7[9],r7[8],r7[7],r7[6],r7[5],r7[4],r7[3],r7[2]
             ,r7[1],r7[0]}), .cout (nx47743z2)) ;
    add_8_2 r1_add8_9i17 (.a ({d[0],d[0],d[0],d[0],d[0],d[0],d[0],d[0]}), .b ({
            r1_9n1s1f2[7],r1_9n1s1f2[6],r1_9n1s1f2[5],r1_9n1s1f2[4],
            r1_9n1s1f2[3],r1_9n1s1f2[2],r1_9n1s1f2[1],r1_9n1s1f2[0]}), .d ({
            r1_9n1s1[0],r1_9n1s1[1],r1_9n1s1[2],r1_9n1s1[3],r1_9n1s1[4],
            r1_9n1s1[5],r1_9n1s1[6],r1_9n1s1[7]})) ;
    add_8_3 r6_add8_14i1 (.a ({f[7],f[6],f[5],f[4],f[3],f[2],f[1],f[0]}), .b ({
            g[7],g[6],g[5],g[4],g[3],g[2],g[1],g[0]}), .d ({r6_14n0r1[0],
            r6_14n0r1[1],r6_14n0r1[2],r6_14n0r1[3],r6_14n0r1[4],r6_14n0r1[5],
            r6_14n0r1[6],r6_14n0r1[7]}), .cout (r6_14n0r1[8])) ;
    sub_12_0 sub_sub13_1 (.a ({r8[9],r8[8],r8[7],r8[6],r8[5],r8[4],r8[3],r8[2],
             r8[1],r8[0],xmplr_dummy [17],xmplr_dummy [18]}), .b ({r9[12],r9[11]
             ,r9[10],r9[9],r9[8],r9[7],r9[6],r9[5],r9[4],r9[3],r9[2],r9[1]}), .d (
             {sub_12_,sub_11_,sub_10_,sub_9_,sub_8_,sub_7_,xmplr_dummy [19],
             xmplr_dummy [20],xmplr_dummy [21],xmplr_dummy [22],xmplr_dummy [23]
             ,xmplr_dummy [24]}), .cout (nx1448z3), .p_r9_0_ (r9[0])) ;
    assign not_v_7 = ~v_7_ ;
    assign PWR = 1 ;
    assign p_o_mode[0] = ~px705 ;
    assign r4_dir[1] = ~nx44420z1 ;
    assign NOT_r2_dir_1_ = ~r2_dir_1_ ;
    assign r4_dir[0] = ~nx43423z1 ;
    assign NOT_r2_dir_0_ = ~r2_dir_0_ ;
    assign d[0] = 0 ;
    cycloneii_lcell_ff reg_v_7_ (.regout (v_7_), .datain (v_6_), .sdata (1'b0), 
                       .clk (p_i_clock), .ena (1'b1), .aclr (1'b0), .sclr (1'b0)
                       , .sload (1'b0)) ;
    cycloneii_lcell_ff reg_v_6_ (.regout (v_6_), .datain (v_5_), .sdata (1'b0), 
                       .clk (p_i_clock), .ena (1'b1), .aclr (1'b0), .sclr (1'b0)
                       , .sload (1'b0)) ;
    cycloneii_lcell_ff reg_v_5_ (.regout (v_5_), .datain (v_4_), .sdata (1'b0), 
                       .clk (p_i_clock), .ena (1'b1), .aclr (1'b0), .sclr (1'b0)
                       , .sload (1'b0)) ;
    cycloneii_lcell_ff reg_v_4_ (.regout (v_4_), .datain (v_3_), .sdata (1'b0), 
                       .clk (p_i_clock), .ena (1'b1), .aclr (1'b0), .sclr (1'b0)
                       , .sload (1'b0)) ;
    cycloneii_lcell_ff reg_v_3_ (.regout (v_3_), .datain (v_2_), .sdata (1'b0), 
                       .clk (p_i_clock), .ena (1'b1), .aclr (1'b0), .sclr (1'b0)
                       , .sload (1'b0)) ;
    cycloneii_lcell_ff reg_v_2_ (.regout (v_2_), .datain (v_1_), .sdata (1'b0), 
                       .clk (p_i_clock), .ena (1'b1), .aclr (1'b0), .sclr (1'b0)
                       , .sload (1'b0)) ;
    cycloneii_lcell_ff reg_v_1_ (.regout (v_1_), .datain (
                       p_i_valid_rtlc_747_or_76[7]), .sdata (1'b0), .clk (
                       p_i_clock), .ena (1'b1), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    cycloneii_lcell_ff reg_r9_9_ (.regout (r9[9]), .datain (r9_17n0r1[9]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r9_8_ (.regout (r9[8]), .datain (r9_17n0r1[8]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r9_7_ (.regout (r9[7]), .datain (r9_17n0r1[7]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r9_6_ (.regout (r9[6]), .datain (r9_17n0r1[6]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r9_5_ (.regout (r9[5]), .datain (r9_17n0r1[5]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r9_4_ (.regout (r9[4]), .datain (r9_17n0r1[4]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r9_3_ (.regout (r9[3]), .datain (r9_17n0r1[3]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r9_2_ (.regout (r9[2]), .datain (r9_17n0r1[2]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r9_12_ (.regout (r9[12]), .datain (r9_17n0r1[12]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r9_11_ (.regout (r9[11]), .datain (r9_17n0r1[11]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r9_10_ (.regout (r9[10]), .datain (r9_17n0r1[10]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r9_1_ (.regout (r9[1]), .datain (r9_17n0r1[1]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r9_0_ (.regout (r9[0]), .datain (r3[0]), .sdata (1'b0
                       ), .clk (p_i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r8_dir_2_ (.regout (r8_dir[2]), .datain (r5_dir[2]), 
                       .sdata (r4_dir[2]), .clk (p_i_clock), .ena (v_6_), .aclr (
                       1'b0), .sclr (1'b0), .sload (nx15883z1)) ;
    cycloneii_lcell_ff reg_r8_dir_1_ (.regout (r8_dir[1]), .datain (r5_dir[1]), 
                       .sdata (r4_dir[1]), .clk (p_i_clock), .ena (v_6_), .aclr (
                       1'b0), .sclr (1'b0), .sload (nx15883z1)) ;
    cycloneii_lcell_ff reg_r8_dir_0_ (.regout (r8_dir[0]), .datain (r5_dir[0]), 
                       .sdata (r4_dir[0]), .clk (p_i_clock), .ena (v_6_), .aclr (
                       1'b0), .sclr (1'b0), .sload (nx15883z1)) ;
    cycloneii_lcell_ff reg_r8_9_ (.regout (r8[9]), .datain (r5[9]), .sdata (
                       r4[9]), .clk (p_i_clock), .ena (v_6_), .aclr (1'b0), .sclr (
                       1'b0), .sload (nx15883z1)) ;
    cycloneii_lcell_ff reg_r8_8_ (.regout (r8[8]), .datain (r5[8]), .sdata (
                       r4[8]), .clk (p_i_clock), .ena (v_6_), .aclr (1'b0), .sclr (
                       1'b0), .sload (nx15883z1)) ;
    cycloneii_lcell_ff reg_r8_7_ (.regout (r8[7]), .datain (r5[7]), .sdata (
                       r4[7]), .clk (p_i_clock), .ena (v_6_), .aclr (1'b0), .sclr (
                       1'b0), .sload (nx15883z1)) ;
    cycloneii_lcell_ff reg_r8_6_ (.regout (r8[6]), .datain (r5[6]), .sdata (
                       r4[6]), .clk (p_i_clock), .ena (v_6_), .aclr (1'b0), .sclr (
                       1'b0), .sload (nx15883z1)) ;
    cycloneii_lcell_ff reg_r8_5_ (.regout (r8[5]), .datain (r5[5]), .sdata (
                       r4[5]), .clk (p_i_clock), .ena (v_6_), .aclr (1'b0), .sclr (
                       1'b0), .sload (nx15883z1)) ;
    cycloneii_lcell_ff reg_r8_4_ (.regout (r8[4]), .datain (r5[4]), .sdata (
                       r4[4]), .clk (p_i_clock), .ena (v_6_), .aclr (1'b0), .sclr (
                       1'b0), .sload (nx15883z1)) ;
    cycloneii_lcell_ff reg_r8_3_ (.regout (r8[3]), .datain (r5[3]), .sdata (
                       r4[3]), .clk (p_i_clock), .ena (v_6_), .aclr (1'b0), .sclr (
                       1'b0), .sload (nx15883z1)) ;
    cycloneii_lcell_ff reg_r8_2_ (.regout (r8[2]), .datain (r5[2]), .sdata (
                       r4[2]), .clk (p_i_clock), .ena (v_6_), .aclr (1'b0), .sclr (
                       1'b0), .sload (nx15883z1)) ;
    cycloneii_lcell_ff reg_r8_1_ (.regout (r8[1]), .datain (r5[1]), .sdata (
                       r4[1]), .clk (p_i_clock), .ena (v_6_), .aclr (1'b0), .sclr (
                       1'b0), .sload (nx15883z1)) ;
    cycloneii_lcell_ff reg_r8_0_ (.regout (r8[0]), .datain (r5[0]), .sdata (
                       r4[0]), .clk (p_i_clock), .ena (v_6_), .aclr (1'b0), .sclr (
                       1'b0), .sload (nx15883z1)) ;
    cycloneii_lcell_ff reg_r7_9_ (.regout (r7[9]), .datain (r7_15n1s1[9]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (v_4_), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r7_8_ (.regout (r7[8]), .datain (r7_15n1s1[0]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (v_4_), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r7_7_ (.regout (r7[7]), .datain (r7_15n1s1[1]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (v_4_), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r7_6_ (.regout (r7[6]), .datain (r7_15n1s1[2]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (v_4_), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r7_5_ (.regout (r7[5]), .datain (r7_15n1s1[3]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (v_4_), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r7_4_ (.regout (r7[4]), .datain (r7_15n1s1[4]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (v_4_), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r7_3_ (.regout (r7[3]), .datain (r7_15n1s1[5]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (v_4_), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r7_2_ (.regout (r7[2]), .datain (r7_15n1s1[6]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (v_4_), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r7_1_ (.regout (r7[1]), .datain (r7_15n1s1[7]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (v_4_), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r7_0_ (.regout (r7[0]), .datain (r7_15n1s1[8]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (v_4_), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r6_8_ (.regout (r6[8]), .datain (r6_14n0r1[8]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r6_7_ (.regout (r6[7]), .datain (r6_14n0r1[0]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r6_6_ (.regout (r6[6]), .datain (r6_14n0r1[1]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r6_5_ (.regout (r6[5]), .datain (r6_14n0r1[2]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r6_4_ (.regout (r6[4]), .datain (r6_14n0r1[3]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r6_3_ (.regout (r6[3]), .datain (r6_14n0r1[4]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r6_2_ (.regout (r6[2]), .datain (r6_14n0r1[5]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r6_1_ (.regout (r6[1]), .datain (r6_14n0r1[6]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r6_0_ (.regout (r6[0]), .datain (r6_14n0r1[7]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r5_dir_2_ (.regout (r5_dir[2]), .datain (r4_dir[2]), 
                       .sdata (r2_dir_2_), .clk (p_i_clock), .ena (v_3_), .aclr (
                       1'b0), .sclr (1'b0), .sload (nx9374z1)) ;
    cycloneii_lcell_ff reg_r5_dir_1_ (.regout (r5_dir[1]), .datain (r4_dir[1]), 
                       .sdata (r2_dir_1_), .clk (p_i_clock), .ena (v_3_), .aclr (
                       1'b0), .sclr (1'b0), .sload (nx9374z1)) ;
    cycloneii_lcell_ff reg_r5_dir_0_ (.regout (r5_dir[0]), .datain (r4_dir[0]), 
                       .sdata (r2_dir_0_), .clk (p_i_clock), .ena (v_3_), .aclr (
                       1'b0), .sclr (1'b0), .sload (nx9374z1)) ;
    cycloneii_lcell_ff reg_r5_9_ (.regout (r5[9]), .datain (r4[9]), .sdata (d[0]
                       ), .clk (p_i_clock), .ena (v_3_), .aclr (1'b0), .sclr (
                       1'b0), .sload (nx9374z1)) ;
    cycloneii_lcell_ff reg_r5_8_ (.regout (r5[8]), .datain (r4[8]), .sdata (
                       r2[8]), .clk (p_i_clock), .ena (v_3_), .aclr (1'b0), .sclr (
                       1'b0), .sload (nx9374z1)) ;
    cycloneii_lcell_ff reg_r5_7_ (.regout (r5[7]), .datain (r4[7]), .sdata (
                       r2[7]), .clk (p_i_clock), .ena (v_3_), .aclr (1'b0), .sclr (
                       1'b0), .sload (nx9374z1)) ;
    cycloneii_lcell_ff reg_r5_6_ (.regout (r5[6]), .datain (r4[6]), .sdata (
                       r2[6]), .clk (p_i_clock), .ena (v_3_), .aclr (1'b0), .sclr (
                       1'b0), .sload (nx9374z1)) ;
    cycloneii_lcell_ff reg_r5_5_ (.regout (r5[5]), .datain (r4[5]), .sdata (
                       r2[5]), .clk (p_i_clock), .ena (v_3_), .aclr (1'b0), .sclr (
                       1'b0), .sload (nx9374z1)) ;
    cycloneii_lcell_ff reg_r5_4_ (.regout (r5[4]), .datain (r4[4]), .sdata (
                       r2[4]), .clk (p_i_clock), .ena (v_3_), .aclr (1'b0), .sclr (
                       1'b0), .sload (nx9374z1)) ;
    cycloneii_lcell_ff reg_r5_3_ (.regout (r5[3]), .datain (r4[3]), .sdata (
                       r2[3]), .clk (p_i_clock), .ena (v_3_), .aclr (1'b0), .sclr (
                       1'b0), .sload (nx9374z1)) ;
    cycloneii_lcell_ff reg_r5_2_ (.regout (r5[2]), .datain (r4[2]), .sdata (
                       r2[2]), .clk (p_i_clock), .ena (v_3_), .aclr (1'b0), .sclr (
                       1'b0), .sload (nx9374z1)) ;
    cycloneii_lcell_ff reg_r5_1_ (.regout (r5[1]), .datain (r4[1]), .sdata (
                       r2[1]), .clk (p_i_clock), .ena (v_3_), .aclr (1'b0), .sclr (
                       1'b0), .sload (nx9374z1)) ;
    cycloneii_lcell_ff reg_r5_0_ (.regout (r5[0]), .datain (r4[0]), .sdata (
                       r2[0]), .clk (p_i_clock), .ena (v_3_), .aclr (1'b0), .sclr (
                       1'b0), .sload (nx9374z1)) ;
    cycloneii_lcell_ff reg_r4_dir_2_ (.regout (r4_dir[2]), .datain (r2_dir_2_), 
                       .sdata (d[0]), .clk (p_i_clock), .ena (nx47743z1), .aclr (
                       1'b0), .sclr (1'b0), .sload (v_5_)) ;
    cycloneii_lcell_ff reg_r4_dir_1_ (.regout (nx44420z1), .datain (
                       NOT_r2_dir_1_), .sdata (1'b0), .clk (p_i_clock), .ena (
                       nx47743z1), .aclr (1'b0), .sclr (nx82z1), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_r4_dir_0_ (.regout (nx43423z1), .datain (
                       NOT_r2_dir_0_), .sdata (1'b0), .clk (p_i_clock), .ena (
                       nx47743z1), .aclr (1'b0), .sclr (nx82z1), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_r4_9_ (.regout (r4[9]), .datain (d[0]), .sdata (r7[9]
                       ), .clk (p_i_clock), .ena (nx47743z1), .aclr (1'b0), .sclr (
                       1'b0), .sload (v_5_)) ;
    cycloneii_lcell_ff reg_r4_8_ (.regout (r4[8]), .datain (r2[8]), .sdata (
                       r7[8]), .clk (p_i_clock), .ena (nx47743z1), .aclr (1'b0)
                       , .sclr (1'b0), .sload (v_5_)) ;
    cycloneii_lcell_ff reg_r4_7_ (.regout (r4[7]), .datain (r2[7]), .sdata (
                       r7[7]), .clk (p_i_clock), .ena (nx47743z1), .aclr (1'b0)
                       , .sclr (1'b0), .sload (v_5_)) ;
    cycloneii_lcell_ff reg_r4_6_ (.regout (r4[6]), .datain (r2[6]), .sdata (
                       r7[6]), .clk (p_i_clock), .ena (nx47743z1), .aclr (1'b0)
                       , .sclr (1'b0), .sload (v_5_)) ;
    cycloneii_lcell_ff reg_r4_5_ (.regout (r4[5]), .datain (r2[5]), .sdata (
                       r7[5]), .clk (p_i_clock), .ena (nx47743z1), .aclr (1'b0)
                       , .sclr (1'b0), .sload (v_5_)) ;
    cycloneii_lcell_ff reg_r4_4_ (.regout (r4[4]), .datain (r2[4]), .sdata (
                       r7[4]), .clk (p_i_clock), .ena (nx47743z1), .aclr (1'b0)
                       , .sclr (1'b0), .sload (v_5_)) ;
    cycloneii_lcell_ff reg_r4_3_ (.regout (r4[3]), .datain (r2[3]), .sdata (
                       r7[3]), .clk (p_i_clock), .ena (nx47743z1), .aclr (1'b0)
                       , .sclr (1'b0), .sload (v_5_)) ;
    cycloneii_lcell_ff reg_r4_2_ (.regout (r4[2]), .datain (r2[2]), .sdata (
                       r7[2]), .clk (p_i_clock), .ena (nx47743z1), .aclr (1'b0)
                       , .sclr (1'b0), .sload (v_5_)) ;
    cycloneii_lcell_ff reg_r4_1_ (.regout (r4[1]), .datain (r2[1]), .sdata (
                       r7[1]), .clk (p_i_clock), .ena (nx47743z1), .aclr (1'b0)
                       , .sclr (1'b0), .sload (v_5_)) ;
    cycloneii_lcell_ff reg_r4_0_ (.regout (r4[0]), .datain (r2[0]), .sdata (
                       r7[0]), .clk (p_i_clock), .ena (nx47743z1), .aclr (1'b0)
                       , .sclr (1'b0), .sload (v_5_)) ;
    cycloneii_lcell_ff reg_r3_9_ (.regout (r3[9]), .datain (r3_11n1s1[9]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       v_2_), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r3_8_ (.regout (r3[8]), .datain (r3_11n1s1[8]), .sdata (
                       d[0]), .clk (p_i_clock), .ena (PWR), .aclr (1'b0), .sclr (
                       1'b0), .sload (v_2_)) ;
    cycloneii_lcell_ff reg_r3_7_ (.regout (r3[7]), .datain (r3_11n1s1[7]), .sdata (
                       r1[7]), .clk (p_i_clock), .ena (PWR), .aclr (1'b0), .sclr (
                       1'b0), .sload (v_2_)) ;
    cycloneii_lcell_ff reg_r3_6_ (.regout (r3[6]), .datain (r3_11n1s1[6]), .sdata (
                       r1[6]), .clk (p_i_clock), .ena (PWR), .aclr (1'b0), .sclr (
                       1'b0), .sload (v_2_)) ;
    cycloneii_lcell_ff reg_r3_5_ (.regout (r3[5]), .datain (r3_11n1s1[5]), .sdata (
                       r1[5]), .clk (p_i_clock), .ena (PWR), .aclr (1'b0), .sclr (
                       1'b0), .sload (v_2_)) ;
    cycloneii_lcell_ff reg_r3_4_ (.regout (r3[4]), .datain (r3_11n1s1[4]), .sdata (
                       r1[4]), .clk (p_i_clock), .ena (PWR), .aclr (1'b0), .sclr (
                       1'b0), .sload (v_2_)) ;
    cycloneii_lcell_ff reg_r3_3_ (.regout (r3[3]), .datain (r3_11n1s1[3]), .sdata (
                       r1[3]), .clk (p_i_clock), .ena (PWR), .aclr (1'b0), .sclr (
                       1'b0), .sload (v_2_)) ;
    cycloneii_lcell_ff reg_r3_2_ (.regout (r3[2]), .datain (r3_11n1s1[2]), .sdata (
                       r1[2]), .clk (p_i_clock), .ena (PWR), .aclr (1'b0), .sclr (
                       1'b0), .sload (v_2_)) ;
    cycloneii_lcell_ff reg_r3_12_ (.regout (r3[12]), .datain (r3_11n1s1[12]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       v_2_), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r3_11_ (.regout (r3[11]), .datain (r3_11n1s1[11]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       v_2_), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r3_10_ (.regout (r3[10]), .datain (r3_11n1s1[10]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       v_2_), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r3_1_ (.regout (r3[1]), .datain (r3_11n1s1[1]), .sdata (
                       r1[1]), .clk (p_i_clock), .ena (PWR), .aclr (1'b0), .sclr (
                       1'b0), .sload (v_2_)) ;
    cycloneii_lcell_ff reg_r3_0_ (.regout (r3[0]), .datain (r3_11n1s1[0]), .sdata (
                       r1[0]), .clk (p_i_clock), .ena (PWR), .aclr (1'b0), .sclr (
                       1'b0), .sload (v_2_)) ;
    cycloneii_lcell_ff reg_r2_dir_2_ (.regout (r2_dir_2_), .datain (nx19070z1), 
                       .sdata (1'b0), .clk (p_i_clock), .ena (nx33634z1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r2_dir_1_ (.regout (r2_dir_1_), .datain (nx20067z1), 
                       .sdata (1'b0), .clk (p_i_clock), .ena (nx33634z1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r2_dir_0_ (.regout (r2_dir_0_), .datain (nx21064z1), 
                       .sdata (1'b0), .clk (p_i_clock), .ena (nx33634z1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r2_8_ (.regout (r2[8]), .datain (r2_10n1s1[0]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (nx33634z1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r2_7_ (.regout (r2[7]), .datain (r2_10n1s1[1]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (nx33634z1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r2_6_ (.regout (r2[6]), .datain (r2_10n1s1[2]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (nx33634z1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r2_5_ (.regout (r2[5]), .datain (r2_10n1s1[3]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (nx33634z1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r2_4_ (.regout (r2[4]), .datain (r2_10n1s1[4]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (nx33634z1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r2_3_ (.regout (r2[3]), .datain (r2_10n1s1[5]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (nx33634z1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r2_2_ (.regout (r2[2]), .datain (r2_10n1s1[6]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (nx33634z1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r2_1_ (.regout (r2[1]), .datain (r2_10n1s1[7]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (nx33634z1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r2_0_ (.regout (r2[0]), .datain (r2_10n1s1[8]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (nx33634z1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r1_7_ (.regout (r1[7]), .datain (r1_9n1s1[0]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (nx33634z1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r1_6_ (.regout (r1[6]), .datain (r1_9n1s1[1]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (nx33634z1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r1_5_ (.regout (r1[5]), .datain (r1_9n1s1[2]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (nx33634z1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r1_4_ (.regout (r1[4]), .datain (r1_9n1s1[3]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (nx33634z1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r1_3_ (.regout (r1[3]), .datain (r1_9n1s1[4]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (nx33634z1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r1_2_ (.regout (r1[2]), .datain (r1_9n1s1[5]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (nx33634z1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r1_1_ (.regout (r1[1]), .datain (r1_9n1s1[6]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (nx33634z1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r1_0_ (.regout (r1[0]), .datain (r1_9n1s1[7]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (nx33634z1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_o_valid (.regout (p_o_valid), .datain (nx60567z1), .sdata (
                       1'b0), .clk (p_i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       not_v_7), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_o_mode_1_ (.regout (p_o_mode[1]), .datain (PWR), .sdata (
                       1'b0), .clk (p_i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       p_i_reset), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_o_mode_0_ (.regout (px705), .datain (
                       NOT_rtlc19_PS6_n24), .sdata (1'b0), .clk (p_i_clock), .ena (
                       1'b1), .aclr (1'b0), .sclr (p_i_reset), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_o_edge (.regout (p_o_edge), .datain (nx1448z1), .sdata (
                       1'b0), .clk (p_i_clock), .ena (v_7_), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_o_dir_2_ (.regout (p_o_dir[2]), .datain (r8_dir[2]), 
                       .sdata (1'b0), .clk (p_i_clock), .ena (v_7_), .aclr (1'b0
                       ), .sclr (nx31323z1), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_o_dir_1_ (.regout (p_o_dir[1]), .datain (r8_dir[1]), 
                       .sdata (1'b0), .clk (p_i_clock), .ena (v_7_), .aclr (1'b0
                       ), .sclr (nx31323z1), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_o_dir_0_ (.regout (p_o_dir[0]), .datain (r8_dir[0]), 
                       .sdata (1'b0), .clk (p_i_clock), .ena (v_7_), .aclr (1'b0
                       ), .sclr (nx31323z1), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_g_7_ (.regout (g[7]), .datain (f[7]), .sdata (1'b0), 
                       .clk (p_i_clock), .ena (p_i_valid_rtlc_747_or_76[7]), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_g_6_ (.regout (g[6]), .datain (f[6]), .sdata (1'b0), 
                       .clk (p_i_clock), .ena (p_i_valid_rtlc_747_or_76[7]), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_g_5_ (.regout (g[5]), .datain (f[5]), .sdata (1'b0), 
                       .clk (p_i_clock), .ena (p_i_valid_rtlc_747_or_76[7]), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_g_4_ (.regout (g[4]), .datain (f[4]), .sdata (1'b0), 
                       .clk (p_i_clock), .ena (p_i_valid_rtlc_747_or_76[7]), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_g_3_ (.regout (g[3]), .datain (f[3]), .sdata (1'b0), 
                       .clk (p_i_clock), .ena (p_i_valid_rtlc_747_or_76[7]), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_g_2_ (.regout (g[2]), .datain (f[2]), .sdata (1'b0), 
                       .clk (p_i_clock), .ena (p_i_valid_rtlc_747_or_76[7]), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_g_1_ (.regout (g[1]), .datain (f[1]), .sdata (1'b0), 
                       .clk (p_i_clock), .ena (p_i_valid_rtlc_747_or_76[7]), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_g_0_ (.regout (g[0]), .datain (f[0]), .sdata (1'b0), 
                       .clk (p_i_clock), .ena (p_i_valid_rtlc_747_or_76[7]), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_f_7_ (.regout (f[7]), .datain (e[7]), .sdata (1'b0), 
                       .clk (p_i_clock), .ena (p_i_valid_rtlc_747_or_76[7]), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_f_6_ (.regout (f[6]), .datain (e[6]), .sdata (1'b0), 
                       .clk (p_i_clock), .ena (p_i_valid_rtlc_747_or_76[7]), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_f_5_ (.regout (f[5]), .datain (e[5]), .sdata (1'b0), 
                       .clk (p_i_clock), .ena (p_i_valid_rtlc_747_or_76[7]), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_f_4_ (.regout (f[4]), .datain (e[4]), .sdata (1'b0), 
                       .clk (p_i_clock), .ena (p_i_valid_rtlc_747_or_76[7]), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_f_3_ (.regout (f[3]), .datain (e[3]), .sdata (1'b0), 
                       .clk (p_i_clock), .ena (p_i_valid_rtlc_747_or_76[7]), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_f_2_ (.regout (f[2]), .datain (e[2]), .sdata (1'b0), 
                       .clk (p_i_clock), .ena (p_i_valid_rtlc_747_or_76[7]), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_f_1_ (.regout (f[1]), .datain (e[1]), .sdata (1'b0), 
                       .clk (p_i_clock), .ena (p_i_valid_rtlc_747_or_76[7]), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_f_0_ (.regout (f[0]), .datain (e[0]), .sdata (1'b0), 
                       .clk (p_i_clock), .ena (p_i_valid_rtlc_747_or_76[7]), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_e_7_ (.regout (e[7]), .datain (p_i_pixel[7]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (
                       p_i_valid_rtlc_747_or_76[7]), .aclr (1'b0), .sclr (1'b0)
                       , .sload (1'b0)) ;
    cycloneii_lcell_ff reg_e_6_ (.regout (e[6]), .datain (p_i_pixel[6]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (
                       p_i_valid_rtlc_747_or_76[7]), .aclr (1'b0), .sclr (1'b0)
                       , .sload (1'b0)) ;
    cycloneii_lcell_ff reg_e_5_ (.regout (e[5]), .datain (p_i_pixel[5]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (
                       p_i_valid_rtlc_747_or_76[7]), .aclr (1'b0), .sclr (1'b0)
                       , .sload (1'b0)) ;
    cycloneii_lcell_ff reg_e_4_ (.regout (e[4]), .datain (p_i_pixel[4]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (
                       p_i_valid_rtlc_747_or_76[7]), .aclr (1'b0), .sclr (1'b0)
                       , .sload (1'b0)) ;
    cycloneii_lcell_ff reg_e_3_ (.regout (e[3]), .datain (p_i_pixel[3]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (
                       p_i_valid_rtlc_747_or_76[7]), .aclr (1'b0), .sclr (1'b0)
                       , .sload (1'b0)) ;
    cycloneii_lcell_ff reg_e_2_ (.regout (e[2]), .datain (p_i_pixel[2]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (
                       p_i_valid_rtlc_747_or_76[7]), .aclr (1'b0), .sclr (1'b0)
                       , .sload (1'b0)) ;
    cycloneii_lcell_ff reg_e_1_ (.regout (e[1]), .datain (p_i_pixel[1]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (
                       p_i_valid_rtlc_747_or_76[7]), .aclr (1'b0), .sclr (1'b0)
                       , .sload (1'b0)) ;
    cycloneii_lcell_ff reg_e_0_ (.regout (e[0]), .datain (p_i_pixel[0]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (
                       p_i_valid_rtlc_747_or_76[7]), .aclr (1'b0), .sclr (1'b0)
                       , .sload (1'b0)) ;
    cycloneii_lcell_ff reg_col_i_7_ (.regout (col_i[7]), .datain (col_flop[7]), 
                       .sdata (1'b0), .clk (p_i_clock), .ena (1'b1), .aclr (1'b0
                       ), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_col_i_6_ (.regout (col_i[6]), .datain (col_flop[6]), 
                       .sdata (1'b0), .clk (p_i_clock), .ena (1'b1), .aclr (1'b0
                       ), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_col_i_5_ (.regout (col_i[5]), .datain (col_flop[5]), 
                       .sdata (1'b0), .clk (p_i_clock), .ena (1'b1), .aclr (1'b0
                       ), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_col_i_4_ (.regout (col_i[4]), .datain (col_flop[4]), 
                       .sdata (1'b0), .clk (p_i_clock), .ena (1'b1), .aclr (1'b0
                       ), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_col_i_3_ (.regout (col_i[3]), .datain (col_flop[3]), 
                       .sdata (1'b0), .clk (p_i_clock), .ena (1'b1), .aclr (1'b0
                       ), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_col_i_2_ (.regout (col_i[2]), .datain (col_flop[2]), 
                       .sdata (1'b0), .clk (p_i_clock), .ena (1'b1), .aclr (1'b0
                       ), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_col_i_1_ (.regout (col_i[1]), .datain (col_flop[1]), 
                       .sdata (1'b0), .clk (p_i_clock), .ena (1'b1), .aclr (1'b0
                       ), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_col_i_0_ (.regout (col_i[0]), .datain (col_flop[0]), 
                       .sdata (1'b0), .clk (p_i_clock), .ena (1'b1), .aclr (1'b0
                       ), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_col_flop_7_ (.regout (col_flop[7]), .datain (
                       rtlcn947[7]), .sdata (1'b0), .clk (p_i_clock), .ena (
                       p_i_valid_rtlc_747_or_76[7]), .aclr (1'b0), .sclr (1'b0)
                       , .sload (1'b0)) ;
    cycloneii_lcell_ff reg_col_flop_6_ (.regout (col_flop[6]), .datain (
                       rtlcn947[6]), .sdata (1'b0), .clk (p_i_clock), .ena (
                       p_i_valid_rtlc_747_or_76[7]), .aclr (1'b0), .sclr (1'b0)
                       , .sload (1'b0)) ;
    cycloneii_lcell_ff reg_col_flop_5_ (.regout (col_flop[5]), .datain (
                       rtlcn947[5]), .sdata (1'b0), .clk (p_i_clock), .ena (
                       p_i_valid_rtlc_747_or_76[7]), .aclr (1'b0), .sclr (1'b0)
                       , .sload (1'b0)) ;
    cycloneii_lcell_ff reg_col_flop_4_ (.regout (col_flop[4]), .datain (
                       rtlcn947[4]), .sdata (1'b0), .clk (p_i_clock), .ena (
                       p_i_valid_rtlc_747_or_76[7]), .aclr (1'b0), .sclr (1'b0)
                       , .sload (1'b0)) ;
    cycloneii_lcell_ff reg_col_flop_3_ (.regout (col_flop[3]), .datain (
                       rtlcn947[3]), .sdata (1'b0), .clk (p_i_clock), .ena (
                       p_i_valid_rtlc_747_or_76[7]), .aclr (1'b0), .sclr (1'b0)
                       , .sload (1'b0)) ;
    cycloneii_lcell_ff reg_col_flop_2_ (.regout (col_flop[2]), .datain (
                       rtlcn947[2]), .sdata (1'b0), .clk (p_i_clock), .ena (
                       p_i_valid_rtlc_747_or_76[7]), .aclr (1'b0), .sclr (1'b0)
                       , .sload (1'b0)) ;
    cycloneii_lcell_ff reg_col_flop_1_ (.regout (col_flop[1]), .datain (
                       rtlcn947[1]), .sdata (1'b0), .clk (p_i_clock), .ena (
                       p_i_valid_rtlc_747_or_76[7]), .aclr (1'b0), .sclr (1'b0)
                       , .sload (1'b0)) ;
    cycloneii_lcell_ff reg_col_flop_0_ (.regout (col_flop[0]), .datain (
                       rtlcn947[0]), .sdata (1'b0), .clk (p_i_clock), .ena (
                       p_i_valid_rtlc_747_or_76[7]), .aclr (1'b0), .sclr (1'b0)
                       , .sload (1'b0)) ;
    cycloneii_lcell_comb ix20740z52927 (.combout (nx20740z4), .dataa (nx20740z5)
                         , .datab (v_3_), .datac (v_1_), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix20740z52927.lut_mask = 16'h0808;
    cycloneii_lcell_comb ix43221z52925 (.combout (nx43221z2), .dataa (
                         p_i_valid_rtlc_747_or_76[7]), .datab (v_3_), .datac (
                         v_1_), .datad (v_2_), .cin (1'b0)) ;
                         
                         defparam ix43221z52925.lut_mask = 16'hfffe;
    cycloneii_lcell_comb ix43221z52924 (.combout (nx43221z1), .dataa (v_6_), .datab (
                         v_4_), .datac (1'b1), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix43221z52924.lut_mask = 16'heeee;
    cycloneii_lcell_comb ix31323z52924 (.combout (nx31323z2), .dataa (sub_9_), .datab (
                         sub_10_), .datac (1'b1), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix31323z52924.lut_mask = 16'heeee;
    cycloneii_lcell_comb ix60567z52926 (.combout (nx60567z4), .dataa (
                         row_count_5_), .datab (row_count_6_), .datac (
                         p_o_row[0]), .datad (p_row_count_1_), .cin (1'b0)) ;
                         
                         defparam ix60567z52926.lut_mask = 16'hfeee;
    cycloneii_lcell_comb ix13505z52924 (.combout (nx13505z1), .dataa (
                         row_count_3_), .datab (row_count_4_), .datac (
                         row_count_5_), .datad (row_count_6_), .cin (1'b0)) ;
                         
                         defparam ix13505z52924.lut_mask = 16'hfffe;
    cycloneii_lcell_comb ix60567z52928 (.combout (nx60567z6), .dataa (
                         col_flop[5]), .datab (col_flop[6]), .datac (col_flop[7]
                         ), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix60567z52928.lut_mask = 16'hfefe;
    cycloneii_lcell_comb ix60567z52927 (.combout (nx60567z5), .dataa (
                         col_flop[2]), .datab (col_flop[3]), .datac (col_flop[4]
                         ), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix60567z52927.lut_mask = 16'hfefe;
    cycloneii_lcell_comb ix19070z52923 (.combout (nx19070z1), .dataa (nx19070z2)
                         , .datab (nx20740z5), .datac (v_1_), .datad (v_2_), .cin (
                         1'b0)) ;
                         defparam ix19070z52923.lut_mask = 16'h0503;
    cycloneii_lcell_comb ix1448z52924 (.combout (nx1448z2), .dataa (sub_12_), .datab (
                         nx1448z3), .datac (sub_7_), .datad (sub_8_), .cin (1'b0
                         )) ;
                         defparam ix1448z52924.lut_mask = 16'hfbbb;
    cycloneii_lcell_comb ix64436z52925 (.combout (nx64436z3), .dataa (
                         p_i_valid_rtlc_747_or_76[7]), .datab (col_i[0]), .datac (
                         col_i[1]), .datad (col_i[2]), .cin (1'b0)) ;
                         
                         defparam ix64436z52925.lut_mask = 16'h8000;
    cycloneii_lcell_comb ix60567z52925 (.combout (nx60567z3), .dataa (
                         row_count_3_), .datab (row_count_4_), .datac (1'b1), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix60567z52925.lut_mask = 16'heeee;
    cycloneii_lcell_comb ix12508z52924 (.combout (nx12508z1), .dataa (
                         row_count_2_), .datab (p_row_count_1_), .datac (1'b1), 
                         .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix12508z52924.lut_mask = 16'heeee;
    cycloneii_lcell_comb ix60567z52924 (.combout (nx60567z2), .dataa (
                         row_count_2_), .datab (row_count_7_), .datac (nx60567z3
                         ), .datad (nx60567z4), .cin (1'b0)) ;
                         
                         defparam ix60567z52924.lut_mask = 16'hfffe;
    cycloneii_lcell_comb ix64436z52924 (.combout (nx64436z2), .dataa (col_i[3])
                         , .datab (col_i[4]), .datac (col_i[5]), .datad (
                         col_i[6]), .cin (1'b0)) ;
                         
                         defparam ix64436z52924.lut_mask = 16'h8000;
    cycloneii_lcell_comb ix20740z52924 (.combout (nx20740z1), .dataa (v_1_), .datab (
                         v_2_), .datac (1'b1), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix20740z52924.lut_mask = 16'heeee;
    cycloneii_lcell_comb ix47743z52924 (.combout (nx47743z1), .dataa (nx47743z2)
                         , .datab (v_5_), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix47743z52924.lut_mask = 16'h7777;
    cycloneii_lcell_comb ix20067z52923 (.combout (nx20067z1), .dataa (v_1_), .datab (
                         v_2_), .datac (1'b1), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix20067z52923.lut_mask = 16'h4444;
    cycloneii_lcell_comb ix20740z52925 (.combout (nx20740z2), .dataa (nx20740z3)
                         , .datab (v_1_), .datac (v_2_), .datad (nx20740z4), .cin (
                         1'b0)) ;
                         defparam ix20740z52925.lut_mask = 16'hff74;
    cycloneii_lcell_comb ix38408z52923 (.combout (r3_11n1s1f1[8]), .dataa (r6[8]
                         ), .datab (v_5_), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix38408z52923.lut_mask = 16'h8888;
    cycloneii_lcell_comb ix38408z52924 (.combout (r3_11n1s1f1[7]), .dataa (r6[7]
                         ), .datab (r1[7]), .datac (v_5_), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix38408z52924.lut_mask = 16'hacac;
    cycloneii_lcell_comb ix38408z52925 (.combout (r3_11n1s1f1[6]), .dataa (r6[6]
                         ), .datab (r1[6]), .datac (v_5_), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix38408z52925.lut_mask = 16'hacac;
    cycloneii_lcell_comb ix38408z52926 (.combout (r3_11n1s1f1[5]), .dataa (r6[5]
                         ), .datab (r1[5]), .datac (v_5_), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix38408z52926.lut_mask = 16'hacac;
    cycloneii_lcell_comb ix38408z52927 (.combout (r3_11n1s1f1[4]), .dataa (r6[4]
                         ), .datab (r1[4]), .datac (v_5_), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix38408z52927.lut_mask = 16'hacac;
    cycloneii_lcell_comb ix38408z52928 (.combout (r3_11n1s1f1[3]), .dataa (r6[3]
                         ), .datab (r1[3]), .datac (v_5_), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix38408z52928.lut_mask = 16'hacac;
    cycloneii_lcell_comb ix38408z52929 (.combout (r3_11n1s1f1[2]), .dataa (r6[2]
                         ), .datab (r1[2]), .datac (v_5_), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix38408z52929.lut_mask = 16'hacac;
    cycloneii_lcell_comb ix38408z52930 (.combout (r3_11n1s1f1[1]), .dataa (r6[1]
                         ), .datab (r1[1]), .datac (v_5_), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix38408z52930.lut_mask = 16'hacac;
    cycloneii_lcell_comb ix38408z52931 (.combout (r3_11n1s1f1[0]), .dataa (r6[0]
                         ), .datab (r1[0]), .datac (v_5_), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix38408z52931.lut_mask = 16'hacac;
    cycloneii_lcell_comb ix31323z52923 (.combout (nx31323z1), .dataa (sub_11_), 
                         .datab (v_7_), .datac (nx1448z2), .datad (nx31323z2), .cin (
                         1'b0)) ;
                         defparam ix31323z52923.lut_mask = 16'h0004;
    cycloneii_lcell_comb ix60567z52923 (.combout (nx60567z1), .dataa (
                         col_flop[1]), .datab (nx60567z2), .datac (nx60567z5), .datad (
                         nx60567z6), .cin (1'b0)) ;
                         
                         defparam ix60567z52923.lut_mask = 16'hccc8;
    cycloneii_lcell_comb ix1448z52923 (.combout (nx1448z1), .dataa (sub_9_), .datab (
                         sub_10_), .datac (sub_11_), .datad (nx1448z2), .cin (
                         1'b0)) ;
                         defparam ix1448z52923.lut_mask = 16'hfffe;
    cycloneii_lcell_comb ix21064z52923 (.combout (nx21064z1), .dataa (nx20740z3)
                         , .datab (nx20740z5), .datac (v_1_), .datad (v_2_), .cin (
                         1'b0)) ;
                         defparam ix21064z52923.lut_mask = 16'ha0a3;
    cycloneii_lcell_comb ix82z52924 (.combout (nx82z1), .dataa (nx47743z2), .datab (
                         v_5_), .datac (1'b1), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix82z52924.lut_mask = 16'h4444;
    cycloneii_lcell_comb ix33634z52923 (.combout (nx33634z1), .dataa (v_3_), .datab (
                         v_1_), .datac (v_2_), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix33634z52923.lut_mask = 16'hfefe;
    cycloneii_lcell_comb ix13505z52923 (.combout (p_o_row[7]), .dataa (
                         row_count_2_), .datab (row_count_7_), .datac (
                         p_row_count_1_), .datad (nx13505z1), .cin (1'b0)) ;
                         
                         defparam ix13505z52923.lut_mask = 16'hccc9;
    cycloneii_lcell_comb ix12508z52923 (.combout (p_o_row[6]), .dataa (
                         row_count_5_), .datab (row_count_6_), .datac (nx12508z1
                         ), .datad (nx60567z3), .cin (1'b0)) ;
                         
                         defparam ix12508z52923.lut_mask = 16'hccc9;
    cycloneii_lcell_comb ix11511z52923 (.combout (p_o_row[5]), .dataa (
                         row_count_2_), .datab (row_count_5_), .datac (
                         p_row_count_1_), .datad (nx60567z3), .cin (1'b0)) ;
                         
                         defparam ix11511z52923.lut_mask = 16'hccc9;
    cycloneii_lcell_comb ix10514z52923 (.combout (p_o_row[4]), .dataa (
                         row_count_2_), .datab (row_count_3_), .datac (
                         row_count_4_), .datad (p_row_count_1_), .cin (1'b0)) ;
                         
                         defparam ix10514z52923.lut_mask = 16'hf0e1;
    cycloneii_lcell_comb ix9517z52923 (.combout (p_o_row[3]), .dataa (
                         row_count_2_), .datab (row_count_3_), .datac (
                         p_row_count_1_), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix9517z52923.lut_mask = 16'hc9c9;
    cycloneii_lcell_comb ix8520z52923 (.combout (p_o_row[2]), .dataa (
                         row_count_2_), .datab (p_row_count_1_), .datac (1'b1), 
                         .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix8520z52923.lut_mask = 16'h9999;
    cycloneii_lcell_comb ix43221z52923 (.combout (NOT_rtlc19_PS6_n24), .dataa (
                         v_5_), .datab (v_7_), .datac (nx43221z1), .datad (
                         nx43221z2), .cin (1'b0)) ;
                         
                         defparam ix43221z52923.lut_mask = 16'h0001;
    cycloneii_lcell_comb ix64436z52923 (.combout (nx64436z1), .dataa (col_i[7])
                         , .datab (nx64436z2), .datac (nx64436z3), .datad (1'b1)
                         , .cin (1'b0)) ;
                         
                         defparam ix64436z52923.lut_mask = 16'h8080;
    cycloneii_lcell_comb ix30960z52923 (.combout (r1_9n1s1f2[7]), .dataa (
                         nx30960z1), .datab (v_2_), .datac (v_1_), .datad (1'b1)
                         , .cin (1'b0)) ;
                         
                         defparam ix30960z52923.lut_mask = 16'ha2a2;
    cycloneii_lcell_comb ix30960z52925 (.combout (r1_9n1s1f2[6]), .dataa (
                         nx30960z2), .datab (v_2_), .datac (v_1_), .datad (1'b1)
                         , .cin (1'b0)) ;
                         
                         defparam ix30960z52925.lut_mask = 16'ha2a2;
    cycloneii_lcell_comb ix30960z52927 (.combout (r1_9n1s1f2[5]), .dataa (
                         nx30960z3), .datab (v_2_), .datac (v_1_), .datad (1'b1)
                         , .cin (1'b0)) ;
                         
                         defparam ix30960z52927.lut_mask = 16'ha2a2;
    cycloneii_lcell_comb ix30960z52929 (.combout (r1_9n1s1f2[4]), .dataa (
                         nx30960z4), .datab (v_2_), .datac (v_1_), .datad (1'b1)
                         , .cin (1'b0)) ;
                         
                         defparam ix30960z52929.lut_mask = 16'ha2a2;
    cycloneii_lcell_comb ix30960z52931 (.combout (r1_9n1s1f2[3]), .dataa (
                         nx30960z5), .datab (v_2_), .datac (v_1_), .datad (1'b1)
                         , .cin (1'b0)) ;
                         
                         defparam ix30960z52931.lut_mask = 16'ha2a2;
    cycloneii_lcell_comb ix30960z52933 (.combout (r1_9n1s1f2[2]), .dataa (
                         nx30960z6), .datab (v_2_), .datac (v_1_), .datad (1'b1)
                         , .cin (1'b0)) ;
                         
                         defparam ix30960z52933.lut_mask = 16'ha2a2;
    cycloneii_lcell_comb ix30960z52935 (.combout (r1_9n1s1f2[1]), .dataa (
                         nx30960z7), .datab (v_2_), .datac (v_1_), .datad (1'b1)
                         , .cin (1'b0)) ;
                         
                         defparam ix30960z52935.lut_mask = 16'ha2a2;
    cycloneii_lcell_comb ix30960z52937 (.combout (r1_9n1s1f2[0]), .dataa (
                         nx30960z8), .datab (v_2_), .datac (v_1_), .datad (1'b1)
                         , .cin (1'b0)) ;
                         
                         defparam ix30960z52937.lut_mask = 16'ha2a2;
    cycloneii_lcell_comb ix9650z52923 (.combout (r2_10n1s1f1[7]), .dataa (e[7])
                         , .datab (v_2_), .datac (v_1_), .datad (v_3_), .cin (
                         1'b0)) ;
                         defparam ix9650z52923.lut_mask = 16'h0200;
    cycloneii_lcell_comb ix9650z52924 (.combout (r2_10n1s1f1[6]), .dataa (e[6])
                         , .datab (v_2_), .datac (v_1_), .datad (v_3_), .cin (
                         1'b0)) ;
                         defparam ix9650z52924.lut_mask = 16'h0200;
    cycloneii_lcell_comb ix9650z52925 (.combout (r2_10n1s1f1[5]), .dataa (e[5])
                         , .datab (v_2_), .datac (v_1_), .datad (v_3_), .cin (
                         1'b0)) ;
                         defparam ix9650z52925.lut_mask = 16'h0200;
    cycloneii_lcell_comb ix9650z52926 (.combout (r2_10n1s1f1[4]), .dataa (e[4])
                         , .datab (v_2_), .datac (v_1_), .datad (v_3_), .cin (
                         1'b0)) ;
                         defparam ix9650z52926.lut_mask = 16'h0200;
    cycloneii_lcell_comb ix9650z52927 (.combout (r2_10n1s1f1[3]), .dataa (e[3])
                         , .datab (v_2_), .datac (v_1_), .datad (v_3_), .cin (
                         1'b0)) ;
                         defparam ix9650z52927.lut_mask = 16'h0200;
    cycloneii_lcell_comb ix9650z52928 (.combout (r2_10n1s1f1[2]), .dataa (e[2])
                         , .datab (v_2_), .datac (v_1_), .datad (v_3_), .cin (
                         1'b0)) ;
                         defparam ix9650z52928.lut_mask = 16'h0200;
    cycloneii_lcell_comb ix9650z52929 (.combout (r2_10n1s1f1[1]), .dataa (e[1])
                         , .datab (v_2_), .datac (v_1_), .datad (v_3_), .cin (
                         1'b0)) ;
                         defparam ix9650z52929.lut_mask = 16'h0200;
    cycloneii_lcell_comb ix9650z52930 (.combout (r2_10n1s1f1[0]), .dataa (e[0])
                         , .datab (v_2_), .datac (v_1_), .datad (v_3_), .cin (
                         1'b0)) ;
                         defparam ix9650z52930.lut_mask = 16'h0200;
    cycloneii_lcell_comb ix20740z52923 (.combout (r2_10n1s4f1[7]), .dataa (f[7])
                         , .datab (nx20740z1), .datac (nx20740z2), .datad (g[7])
                         , .cin (1'b0)) ;
                         
                         defparam ix20740z52923.lut_mask = 16'h0e02;
    cycloneii_lcell_comb ix20740z52930 (.combout (r2_10n1s4f1[6]), .dataa (f[6])
                         , .datab (nx20740z1), .datac (nx20740z2), .datad (g[6])
                         , .cin (1'b0)) ;
                         
                         defparam ix20740z52930.lut_mask = 16'h0e02;
    cycloneii_lcell_comb ix20740z52931 (.combout (r2_10n1s4f1[5]), .dataa (f[5])
                         , .datab (nx20740z1), .datac (nx20740z2), .datad (g[5])
                         , .cin (1'b0)) ;
                         
                         defparam ix20740z52931.lut_mask = 16'h0e02;
    cycloneii_lcell_comb ix20740z52932 (.combout (r2_10n1s4f1[4]), .dataa (f[4])
                         , .datab (nx20740z1), .datac (nx20740z2), .datad (g[4])
                         , .cin (1'b0)) ;
                         
                         defparam ix20740z52932.lut_mask = 16'h0e02;
    cycloneii_lcell_comb ix20740z52933 (.combout (r2_10n1s4f1[3]), .dataa (f[3])
                         , .datab (nx20740z1), .datac (nx20740z2), .datad (g[3])
                         , .cin (1'b0)) ;
                         
                         defparam ix20740z52933.lut_mask = 16'h0e02;
    cycloneii_lcell_comb ix20740z52934 (.combout (r2_10n1s4f1[2]), .dataa (f[2])
                         , .datab (nx20740z1), .datac (nx20740z2), .datad (g[2])
                         , .cin (1'b0)) ;
                         
                         defparam ix20740z52934.lut_mask = 16'h0e02;
    cycloneii_lcell_comb ix20740z52935 (.combout (r2_10n1s4f1[1]), .dataa (f[1])
                         , .datab (nx20740z1), .datac (nx20740z2), .datad (g[1])
                         , .cin (1'b0)) ;
                         
                         defparam ix20740z52935.lut_mask = 16'h0e02;
    cycloneii_lcell_comb ix20740z52936 (.combout (r2_10n1s4f1[0]), .dataa (f[0])
                         , .datab (nx20740z1), .datac (nx20740z2), .datad (g[0])
                         , .cin (1'b0)) ;
                         
                         defparam ix20740z52936.lut_mask = 16'h0e02;
    cycloneii_lcell_comb ix30960z52938 (.combout (nx30960z8), .dataa (e[0]), .datab (
                         v_2_), .datac (v_1_), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix30960z52938.lut_mask = 16'h0202;
    cycloneii_lcell_comb ix30960z52936 (.combout (nx30960z7), .dataa (e[1]), .datab (
                         v_2_), .datac (v_1_), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix30960z52936.lut_mask = 16'h0202;
    cycloneii_lcell_comb ix30960z52934 (.combout (nx30960z6), .dataa (e[2]), .datab (
                         v_2_), .datac (v_1_), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix30960z52934.lut_mask = 16'h0202;
    cycloneii_lcell_comb ix30960z52932 (.combout (nx30960z5), .dataa (e[3]), .datab (
                         v_2_), .datac (v_1_), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix30960z52932.lut_mask = 16'h0202;
    cycloneii_lcell_comb ix30960z52930 (.combout (nx30960z4), .dataa (e[4]), .datab (
                         v_2_), .datac (v_1_), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix30960z52930.lut_mask = 16'h0202;
    cycloneii_lcell_comb ix30960z52928 (.combout (nx30960z3), .dataa (e[5]), .datab (
                         v_2_), .datac (v_1_), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix30960z52928.lut_mask = 16'h0202;
    cycloneii_lcell_comb ix30960z52926 (.combout (nx30960z2), .dataa (e[6]), .datab (
                         v_2_), .datac (v_1_), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix30960z52926.lut_mask = 16'h0202;
    cycloneii_lcell_comb ix30960z52924 (.combout (nx30960z1), .dataa (e[7]), .datab (
                         v_2_), .datac (v_1_), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix30960z52924.lut_mask = 16'h0202;
endmodule


module sub_12_0 ( cin, a, b, d, cout, p_r9_0_ ) ;

    input cin ;
    input [11:0]a ;
    input [11:0]b ;
    output [11:0]d ;
    output cout ;
    input p_r9_0_ ;

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
    cycloneii_lcell_comb ix63795z52935 (.cout (nx63795z11), .dataa (p_r9_0_), .datab (
                         b[0]), .datac (1'b1), .datad (nx_sub_12_0_vcc_net), .cin (
                         1'b0)) ;
                         defparam ix63795z52935.lut_mask = 16'h0011;
endmodule


module add_8_3 ( cin, a, b, d, cout ) ;

    input cin ;
    input [7:0]a ;
    input [7:0]b ;
    output [7:0]d ;
    output cout ;

    wire nx44952z22, nx44952z19, nx44952z16, nx44952z13, nx44952z10, nx44952z7, 
         nx44952z4, nx23445z2, nx_add_8_3_vcc_net;
    wire [12:0] xmplr_dummy ;




    cycloneii_lcell_comb ix44952z52923 (.combout (d[7]), .cout (nx23445z2), .dataa (
                         b[7]), .datab (a[7]), .datac (1'b1), .datad (
                         nx_add_8_3_vcc_net), .cin (nx44952z4)) ;
                         
                         defparam ix44952z52923.lut_mask = 16'h96e8;
                         
                         defparam ix44952z52923.sum_lutc_input = "cin";
    assign nx_add_8_3_vcc_net = 1 ;
    cycloneii_lcell_comb ix44952z52925 (.combout (d[6]), .cout (nx44952z4), .dataa (
                         b[6]), .datab (a[6]), .datac (1'b1), .datad (
                         nx_add_8_3_vcc_net), .cin (nx44952z7)) ;
                         
                         defparam ix44952z52925.lut_mask = 16'h96e8;
                         
                         defparam ix44952z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix44952z52926 (.combout (d[5]), .cout (nx44952z7), .dataa (
                         b[5]), .datab (a[5]), .datac (1'b1), .datad (
                         nx_add_8_3_vcc_net), .cin (nx44952z10)) ;
                         
                         defparam ix44952z52926.lut_mask = 16'h96e8;
                         
                         defparam ix44952z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix44952z52927 (.combout (d[4]), .cout (nx44952z10), .dataa (
                         b[4]), .datab (a[4]), .datac (1'b1), .datad (
                         nx_add_8_3_vcc_net), .cin (nx44952z13)) ;
                         
                         defparam ix44952z52927.lut_mask = 16'h96e8;
                         
                         defparam ix44952z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix44952z52928 (.combout (d[3]), .cout (nx44952z13), .dataa (
                         b[3]), .datab (a[3]), .datac (1'b1), .datad (
                         nx_add_8_3_vcc_net), .cin (nx44952z16)) ;
                         
                         defparam ix44952z52928.lut_mask = 16'h96e8;
                         
                         defparam ix44952z52928.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix44952z52929 (.combout (d[2]), .cout (nx44952z16), .dataa (
                         b[2]), .datab (a[2]), .datac (1'b1), .datad (
                         nx_add_8_3_vcc_net), .cin (nx44952z19)) ;
                         
                         defparam ix44952z52929.lut_mask = 16'h96e8;
                         
                         defparam ix44952z52929.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix23445z52923 (.combout (cout), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx_add_8_3_vcc_net), .cin (
                         nx23445z2)) ;
                         
                         defparam ix23445z52923.lut_mask = 16'hf000;
                         
                         defparam ix23445z52923.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix44952z52930 (.combout (d[1]), .cout (nx44952z19), .dataa (
                         b[1]), .datab (a[1]), .datac (1'b1), .datad (
                         nx_add_8_3_vcc_net), .cin (nx44952z22)) ;
                         
                         defparam ix44952z52930.lut_mask = 16'h96e8;
                         
                         defparam ix44952z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix44952z52931 (.combout (d[0]), .cout (nx44952z22), .dataa (
                         a[0]), .datab (b[0]), .datac (1'b1), .datad (
                         nx_add_8_3_vcc_net), .cin (1'b0)) ;
                         
                         defparam ix44952z52931.lut_mask = 16'h6688;
endmodule


module add_8_2 ( cin, a, b, d, cout ) ;

    input cin ;
    input [7:0]a ;
    input [7:0]b ;
    output [7:0]d ;
    output cout ;

    wire nx44952z22, nx44952z19, nx44952z16, nx44952z13, nx44952z10, nx44952z7, 
         nx44952z4, nx_add_8_2_vcc_net;
    wire [9:0] xmplr_dummy ;




    cycloneii_lcell_comb ix44952z52923 (.combout (d[7]), .dataa (b[7]), .datab (
                         a[7]), .datac (1'b1), .datad (nx_add_8_2_vcc_net), .cin (
                         nx44952z4)) ;
                         
                         defparam ix44952z52923.lut_mask = 16'h9696;
                         
                         defparam ix44952z52923.sum_lutc_input = "cin";
    assign nx_add_8_2_vcc_net = 1 ;
    cycloneii_lcell_comb ix44952z52925 (.combout (d[6]), .cout (nx44952z4), .dataa (
                         b[6]), .datab (a[6]), .datac (1'b1), .datad (
                         nx_add_8_2_vcc_net), .cin (nx44952z7)) ;
                         
                         defparam ix44952z52925.lut_mask = 16'h96e8;
                         
                         defparam ix44952z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix44952z52926 (.combout (d[5]), .cout (nx44952z7), .dataa (
                         b[5]), .datab (a[5]), .datac (1'b1), .datad (
                         nx_add_8_2_vcc_net), .cin (nx44952z10)) ;
                         
                         defparam ix44952z52926.lut_mask = 16'h96e8;
                         
                         defparam ix44952z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix44952z52927 (.combout (d[4]), .cout (nx44952z10), .dataa (
                         b[4]), .datab (a[4]), .datac (1'b1), .datad (
                         nx_add_8_2_vcc_net), .cin (nx44952z13)) ;
                         
                         defparam ix44952z52927.lut_mask = 16'h96e8;
                         
                         defparam ix44952z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix44952z52928 (.combout (d[3]), .cout (nx44952z13), .dataa (
                         b[3]), .datab (a[3]), .datac (1'b1), .datad (
                         nx_add_8_2_vcc_net), .cin (nx44952z16)) ;
                         
                         defparam ix44952z52928.lut_mask = 16'h96e8;
                         
                         defparam ix44952z52928.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix44952z52929 (.combout (d[2]), .cout (nx44952z16), .dataa (
                         b[2]), .datab (a[2]), .datac (1'b1), .datad (
                         nx_add_8_2_vcc_net), .cin (nx44952z19)) ;
                         
                         defparam ix44952z52929.lut_mask = 16'h96e8;
                         
                         defparam ix44952z52929.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix44952z52930 (.combout (d[1]), .cout (nx44952z19), .dataa (
                         b[1]), .datab (a[1]), .datac (1'b1), .datad (
                         nx_add_8_2_vcc_net), .cin (nx44952z22)) ;
                         
                         defparam ix44952z52930.lut_mask = 16'h96e8;
                         
                         defparam ix44952z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix44952z52931 (.combout (d[0]), .cout (nx44952z22), .dataa (
                         a[0]), .datab (b[0]), .datac (1'b1), .datad (
                         nx_add_8_2_vcc_net), .cin (1'b0)) ;
                         
                         defparam ix44952z52931.lut_mask = 16'h6688;
endmodule


module sub_10_2 ( cin, a, b, d, cout ) ;

    input cin ;
    input [9:0]a ;
    input [9:0]b ;
    output [9:0]d ;
    output cout ;

    wire nx23445z28, nx23445z25, nx23445z22, nx23445z19, nx23445z16, nx23445z13, 
         nx23445z10, nx23445z7, nx23445z4, nx_sub_10_2_vcc_net;
    wire [20:0] xmplr_dummy ;




    cycloneii_lcell_comb ix23445z52923 (.combout (cout), .dataa (b[9]), .datab (
                         a[9]), .datac (1'b1), .datad (nx_sub_10_2_vcc_net), .cin (
                         nx23445z4)) ;
                         
                         defparam ix23445z52923.lut_mask = 16'hd400;
                         
                         defparam ix23445z52923.sum_lutc_input = "cin";
    assign nx_sub_10_2_vcc_net = 1 ;
    cycloneii_lcell_comb ix23445z52925 (.cout (nx23445z4), .dataa (b[8]), .datab (
                         a[8]), .datac (1'b1), .datad (nx_sub_10_2_vcc_net), .cin (
                         nx23445z7)) ;
                         
                         defparam ix23445z52925.lut_mask = 16'h00d4;
                         
                         defparam ix23445z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix23445z52926 (.cout (nx23445z7), .dataa (b[7]), .datab (
                         a[7]), .datac (1'b1), .datad (nx_sub_10_2_vcc_net), .cin (
                         nx23445z10)) ;
                         
                         defparam ix23445z52926.lut_mask = 16'h00d4;
                         
                         defparam ix23445z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix23445z52927 (.cout (nx23445z10), .dataa (b[6]), .datab (
                         a[6]), .datac (1'b1), .datad (nx_sub_10_2_vcc_net), .cin (
                         nx23445z13)) ;
                         
                         defparam ix23445z52927.lut_mask = 16'h00d4;
                         
                         defparam ix23445z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix23445z52928 (.cout (nx23445z13), .dataa (b[5]), .datab (
                         a[5]), .datac (1'b1), .datad (nx_sub_10_2_vcc_net), .cin (
                         nx23445z16)) ;
                         
                         defparam ix23445z52928.lut_mask = 16'h00d4;
                         
                         defparam ix23445z52928.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix23445z52929 (.cout (nx23445z16), .dataa (b[4]), .datab (
                         a[4]), .datac (1'b1), .datad (nx_sub_10_2_vcc_net), .cin (
                         nx23445z19)) ;
                         
                         defparam ix23445z52929.lut_mask = 16'h00d4;
                         
                         defparam ix23445z52929.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix23445z52930 (.cout (nx23445z19), .dataa (b[3]), .datab (
                         a[3]), .datac (1'b1), .datad (nx_sub_10_2_vcc_net), .cin (
                         nx23445z22)) ;
                         
                         defparam ix23445z52930.lut_mask = 16'h00d4;
                         
                         defparam ix23445z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix23445z52931 (.cout (nx23445z22), .dataa (b[2]), .datab (
                         a[2]), .datac (1'b1), .datad (nx_sub_10_2_vcc_net), .cin (
                         nx23445z25)) ;
                         
                         defparam ix23445z52931.lut_mask = 16'h00d4;
                         
                         defparam ix23445z52931.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix23445z52932 (.cout (nx23445z25), .dataa (b[1]), .datab (
                         a[1]), .datac (1'b1), .datad (nx_sub_10_2_vcc_net), .cin (
                         nx23445z28)) ;
                         
                         defparam ix23445z52932.lut_mask = 16'h00d4;
                         
                         defparam ix23445z52932.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix23445z52933 (.cout (nx23445z28), .dataa (a[0]), .datab (
                         b[0]), .datac (1'b1), .datad (nx_sub_10_2_vcc_net), .cin (
                         1'b0)) ;
                         defparam ix23445z52933.lut_mask = 16'h00bb;
endmodule


module add_9_1 ( cin, a, b, d, cout ) ;

    input cin ;
    input [8:0]a ;
    input [8:0]b ;
    output [8:0]d ;
    output cout ;

    wire nx45949z24, nx45949z21, nx45949z18, nx45949z15, nx45949z12, nx45949z9, 
         nx45949z6, nx45949z3, nx_add_9_1_vcc_net;
    wire [11:0] xmplr_dummy ;




    cycloneii_lcell_comb ix45949z52923 (.combout (d[8]), .dataa (a[8]), .datab (
                         1'b1), .datac (1'b1), .datad (nx_add_9_1_vcc_net), .cin (
                         nx45949z3)) ;
                         
                         defparam ix45949z52923.lut_mask = 16'h5a5a;
                         
                         defparam ix45949z52923.sum_lutc_input = "cin";
    assign nx_add_9_1_vcc_net = 1 ;
    cycloneii_lcell_comb ix45949z52925 (.combout (d[7]), .cout (nx45949z3), .dataa (
                         b[7]), .datab (a[7]), .datac (1'b1), .datad (
                         nx_add_9_1_vcc_net), .cin (nx45949z6)) ;
                         
                         defparam ix45949z52925.lut_mask = 16'h96e8;
                         
                         defparam ix45949z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix45949z52926 (.combout (d[6]), .cout (nx45949z6), .dataa (
                         b[6]), .datab (a[6]), .datac (1'b1), .datad (
                         nx_add_9_1_vcc_net), .cin (nx45949z9)) ;
                         
                         defparam ix45949z52926.lut_mask = 16'h96e8;
                         
                         defparam ix45949z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix45949z52927 (.combout (d[5]), .cout (nx45949z9), .dataa (
                         b[5]), .datab (a[5]), .datac (1'b1), .datad (
                         nx_add_9_1_vcc_net), .cin (nx45949z12)) ;
                         
                         defparam ix45949z52927.lut_mask = 16'h96e8;
                         
                         defparam ix45949z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix45949z52928 (.combout (d[4]), .cout (nx45949z12), .dataa (
                         b[4]), .datab (a[4]), .datac (1'b1), .datad (
                         nx_add_9_1_vcc_net), .cin (nx45949z15)) ;
                         
                         defparam ix45949z52928.lut_mask = 16'h96e8;
                         
                         defparam ix45949z52928.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix45949z52929 (.combout (d[3]), .cout (nx45949z15), .dataa (
                         b[3]), .datab (a[3]), .datac (1'b1), .datad (
                         nx_add_9_1_vcc_net), .cin (nx45949z18)) ;
                         
                         defparam ix45949z52929.lut_mask = 16'h96e8;
                         
                         defparam ix45949z52929.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix45949z52930 (.combout (d[2]), .cout (nx45949z18), .dataa (
                         b[2]), .datab (a[2]), .datac (1'b1), .datad (
                         nx_add_9_1_vcc_net), .cin (nx45949z21)) ;
                         
                         defparam ix45949z52930.lut_mask = 16'h96e8;
                         
                         defparam ix45949z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix45949z52931 (.combout (d[1]), .cout (nx45949z21), .dataa (
                         b[1]), .datab (a[1]), .datac (1'b1), .datad (
                         nx_add_9_1_vcc_net), .cin (nx45949z24)) ;
                         
                         defparam ix45949z52931.lut_mask = 16'h96e8;
                         
                         defparam ix45949z52931.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix45949z52932 (.combout (d[0]), .cout (nx45949z24), .dataa (
                         a[0]), .datab (b[0]), .datac (1'b1), .datad (
                         nx_add_9_1_vcc_net), .cin (1'b0)) ;
                         
                         defparam ix45949z52932.lut_mask = 16'h6688;
endmodule


module add_8_1 ( cin, a, b, d, cout ) ;

    input cin ;
    input [7:0]a ;
    input [7:0]b ;
    output [7:0]d ;
    output cout ;

    wire nx44952z22, nx44952z19, nx44952z16, nx44952z13, nx44952z10, nx44952z7, 
         nx44952z4, nx23445z2, nx_add_8_1_vcc_net;
    wire [12:0] xmplr_dummy ;




    cycloneii_lcell_comb ix44952z52923 (.combout (d[7]), .cout (nx23445z2), .dataa (
                         b[7]), .datab (a[7]), .datac (1'b1), .datad (
                         nx_add_8_1_vcc_net), .cin (nx44952z4)) ;
                         
                         defparam ix44952z52923.lut_mask = 16'h96e8;
                         
                         defparam ix44952z52923.sum_lutc_input = "cin";
    assign nx_add_8_1_vcc_net = 1 ;
    cycloneii_lcell_comb ix44952z52925 (.combout (d[6]), .cout (nx44952z4), .dataa (
                         b[6]), .datab (a[6]), .datac (1'b1), .datad (
                         nx_add_8_1_vcc_net), .cin (nx44952z7)) ;
                         
                         defparam ix44952z52925.lut_mask = 16'h96e8;
                         
                         defparam ix44952z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix44952z52926 (.combout (d[5]), .cout (nx44952z7), .dataa (
                         b[5]), .datab (a[5]), .datac (1'b1), .datad (
                         nx_add_8_1_vcc_net), .cin (nx44952z10)) ;
                         
                         defparam ix44952z52926.lut_mask = 16'h96e8;
                         
                         defparam ix44952z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix44952z52927 (.combout (d[4]), .cout (nx44952z10), .dataa (
                         b[4]), .datab (a[4]), .datac (1'b1), .datad (
                         nx_add_8_1_vcc_net), .cin (nx44952z13)) ;
                         
                         defparam ix44952z52927.lut_mask = 16'h96e8;
                         
                         defparam ix44952z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix44952z52928 (.combout (d[3]), .cout (nx44952z13), .dataa (
                         b[3]), .datab (a[3]), .datac (1'b1), .datad (
                         nx_add_8_1_vcc_net), .cin (nx44952z16)) ;
                         
                         defparam ix44952z52928.lut_mask = 16'h96e8;
                         
                         defparam ix44952z52928.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix44952z52929 (.combout (d[2]), .cout (nx44952z16), .dataa (
                         b[2]), .datab (a[2]), .datac (1'b1), .datad (
                         nx_add_8_1_vcc_net), .cin (nx44952z19)) ;
                         
                         defparam ix44952z52929.lut_mask = 16'h96e8;
                         
                         defparam ix44952z52929.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix23445z52923 (.combout (cout), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx_add_8_1_vcc_net), .cin (
                         nx23445z2)) ;
                         
                         defparam ix23445z52923.lut_mask = 16'hf000;
                         
                         defparam ix23445z52923.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix44952z52930 (.combout (d[1]), .cout (nx44952z19), .dataa (
                         b[1]), .datab (a[1]), .datac (1'b1), .datad (
                         nx_add_8_1_vcc_net), .cin (nx44952z22)) ;
                         
                         defparam ix44952z52930.lut_mask = 16'h96e8;
                         
                         defparam ix44952z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix44952z52931 (.combout (d[0]), .cout (nx44952z22), .dataa (
                         a[0]), .datab (b[0]), .datac (1'b1), .datad (
                         nx_add_8_1_vcc_net), .cin (1'b0)) ;
                         
                         defparam ix44952z52931.lut_mask = 16'h6688;
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
                         a[8]), .datab (1'b1), .datac (1'b1), .datad (
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

    wire nx51271z1, nx58250z8, nx52268z1, nx58250z7, nx53265z1, nx58250z6, 
         nx54262z1, nx58250z5, nx55259z1, nx58250z4, nx56256z1, nx58250z3, 
         nx57253z1, nx58250z2, nx58250z1, nx_modgen_counter_8_0_vcc_net;
    wire [49:0] xmplr_dummy ;




    cycloneii_lcell_ff reg_q_7_ (.regout (q[7]), .datain (nx58250z1), .sdata (
                       1'b0), .clk (clock), .ena (cnt_en), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_6_ (.regout (q[6]), .datain (nx57253z1), .sdata (
                       1'b0), .clk (clock), .ena (cnt_en), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_5_ (.regout (q[5]), .datain (nx56256z1), .sdata (
                       1'b0), .clk (clock), .ena (cnt_en), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_4_ (.regout (q[4]), .datain (nx55259z1), .sdata (
                       1'b0), .clk (clock), .ena (cnt_en), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_3_ (.regout (q[3]), .datain (nx54262z1), .sdata (
                       1'b0), .clk (clock), .ena (cnt_en), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_2_ (.regout (q[2]), .datain (nx53265z1), .sdata (
                       1'b0), .clk (clock), .ena (cnt_en), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_1_ (.regout (q[1]), .datain (nx52268z1), .sdata (
                       1'b0), .clk (clock), .ena (cnt_en), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_0_ (.regout (q[0]), .datain (nx51271z1), .sdata (
                       1'b0), .clk (clock), .ena (cnt_en), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_comb ix58250z52929 (.combout (nx53265z1), .cout (nx58250z6)
                         , .dataa (q[2]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_8_0_vcc_net), .cin (nx58250z7)) ;
                         
                         defparam ix58250z52929.lut_mask = 16'h5aa0;
                         
                         defparam ix58250z52929.sum_lutc_input = "cin";
    assign nx_modgen_counter_8_0_vcc_net = 1 ;
    cycloneii_lcell_comb ix58250z52930 (.combout (nx52268z1), .cout (nx58250z7)
                         , .dataa (q[1]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_8_0_vcc_net), .cin (nx58250z8)) ;
                         
                         defparam ix58250z52930.lut_mask = 16'h5aa0;
                         
                         defparam ix58250z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix58250z52923 (.combout (nx58250z1), .dataa (q[7]), .datab (
                         1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_8_0_vcc_net), .cin (nx58250z2)) ;
                         
                         defparam ix58250z52923.lut_mask = 16'h5a00;
                         
                         defparam ix58250z52923.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix58250z52925 (.combout (nx57253z1), .cout (nx58250z2)
                         , .dataa (q[6]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_8_0_vcc_net), .cin (nx58250z3)) ;
                         
                         defparam ix58250z52925.lut_mask = 16'h5aa0;
                         
                         defparam ix58250z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix58250z52926 (.combout (nx56256z1), .cout (nx58250z3)
                         , .dataa (q[5]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_8_0_vcc_net), .cin (nx58250z4)) ;
                         
                         defparam ix58250z52926.lut_mask = 16'h5aa0;
                         
                         defparam ix58250z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix58250z52927 (.combout (nx55259z1), .cout (nx58250z4)
                         , .dataa (q[4]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_8_0_vcc_net), .cin (nx58250z5)) ;
                         
                         defparam ix58250z52927.lut_mask = 16'h5aa0;
                         
                         defparam ix58250z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix58250z52928 (.combout (nx54262z1), .cout (nx58250z5)
                         , .dataa (q[3]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_8_0_vcc_net), .cin (nx58250z6)) ;
                         
                         defparam ix58250z52928.lut_mask = 16'h5aa0;
                         
                         defparam ix58250z52928.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix58250z52931 (.combout (nx51271z1), .cout (nx58250z8)
                         , .dataa (q[0]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_8_0_vcc_net), .cin (1'b0)) ;
                         
                         defparam ix58250z52931.lut_mask = 16'h55aa;
endmodule


module inc_8_0 ( cin, a, d, cout ) ;

    input cin ;
    input [7:0]a ;
    output [7:0]d ;
    output cout ;

    wire nx44952z15, nx44952z13, nx44952z11, nx44952z9, nx44952z7, nx44952z5, 
         nx44952z3, nx_inc_8_0_vcc_net;
    wire [17:0] xmplr_dummy ;




    cycloneii_lcell_comb ix44952z52923 (.combout (d[7]), .dataa (a[7]), .datab (
                         1'b1), .datac (1'b1), .datad (nx_inc_8_0_vcc_net), .cin (
                         nx44952z3)) ;
                         
                         defparam ix44952z52923.lut_mask = 16'h5a00;
                         
                         defparam ix44952z52923.sum_lutc_input = "cin";
    assign nx_inc_8_0_vcc_net = 1 ;
    cycloneii_lcell_comb ix44952z52925 (.combout (d[6]), .cout (nx44952z3), .dataa (
                         a[6]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_inc_8_0_vcc_net), .cin (nx44952z5)) ;
                         
                         defparam ix44952z52925.lut_mask = 16'h5aa0;
                         
                         defparam ix44952z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix44952z52926 (.combout (d[5]), .cout (nx44952z5), .dataa (
                         a[5]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_inc_8_0_vcc_net), .cin (nx44952z7)) ;
                         
                         defparam ix44952z52926.lut_mask = 16'h5aa0;
                         
                         defparam ix44952z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix44952z52927 (.combout (d[4]), .cout (nx44952z7), .dataa (
                         a[4]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_inc_8_0_vcc_net), .cin (nx44952z9)) ;
                         
                         defparam ix44952z52927.lut_mask = 16'h5aa0;
                         
                         defparam ix44952z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix44952z52928 (.combout (d[3]), .cout (nx44952z9), .dataa (
                         a[3]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_inc_8_0_vcc_net), .cin (nx44952z11)) ;
                         
                         defparam ix44952z52928.lut_mask = 16'h5aa0;
                         
                         defparam ix44952z52928.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix44952z52929 (.combout (d[2]), .cout (nx44952z11), .dataa (
                         a[2]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_inc_8_0_vcc_net), .cin (nx44952z13)) ;
                         
                         defparam ix44952z52929.lut_mask = 16'h5aa0;
                         
                         defparam ix44952z52929.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix44952z52930 (.combout (d[1]), .cout (nx44952z13), .dataa (
                         a[1]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_inc_8_0_vcc_net), .cin (nx44952z15)) ;
                         
                         defparam ix44952z52930.lut_mask = 16'h5aa0;
                         
                         defparam ix44952z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix44952z52931 (.combout (d[0]), .cout (nx44952z15), .dataa (
                         a[0]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_inc_8_0_vcc_net), .cin (1'b0)) ;
                         
                         defparam ix44952z52931.lut_mask = 16'h55aa;
endmodule


module add_12_0 ( cin, a, b, d, cout ) ;

    input cin ;
    input [11:0]a ;
    input [11:0]b ;
    output [11:0]d ;
    output cout ;

    wire nx63795z24, nx63795z22, nx63795z20, nx63795z18, nx63795z16, nx63795z14, 
         nx63795z12, nx63795z10, nx63795z8, nx63795z6, nx63795z4, 
         nx_add_12_0_vcc_net;
    wire [13:0] xmplr_dummy ;




    cycloneii_lcell_comb ix63795z52923 (.combout (d[11]), .dataa (b[11]), .datab (
                         a[11]), .datac (1'b1), .datad (nx_add_12_0_vcc_net), .cin (
                         nx63795z4)) ;
                         
                         defparam ix63795z52923.lut_mask = 16'h9600;
                         
                         defparam ix63795z52923.sum_lutc_input = "cin";
    assign nx_add_12_0_vcc_net = 1 ;
    cycloneii_lcell_comb ix63795z52925 (.combout (d[10]), .cout (nx63795z4), .dataa (
                         a[11]), .datab (a[10]), .datac (1'b1), .datad (
                         nx_add_12_0_vcc_net), .cin (nx63795z6)) ;
                         
                         defparam ix63795z52925.lut_mask = 16'h96e8;
                         
                         defparam ix63795z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix63795z52926 (.combout (d[9]), .cout (nx63795z6), .dataa (
                         a[10]), .datab (a[9]), .datac (1'b1), .datad (
                         nx_add_12_0_vcc_net), .cin (nx63795z8)) ;
                         
                         defparam ix63795z52926.lut_mask = 16'h96e8;
                         
                         defparam ix63795z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix63795z52927 (.combout (d[8]), .cout (nx63795z8), .dataa (
                         a[9]), .datab (a[8]), .datac (1'b1), .datad (
                         nx_add_12_0_vcc_net), .cin (nx63795z10)) ;
                         
                         defparam ix63795z52927.lut_mask = 16'h96e8;
                         
                         defparam ix63795z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix63795z52928 (.combout (d[7]), .cout (nx63795z10), .dataa (
                         a[8]), .datab (a[7]), .datac (1'b1), .datad (
                         nx_add_12_0_vcc_net), .cin (nx63795z12)) ;
                         
                         defparam ix63795z52928.lut_mask = 16'h96e8;
                         
                         defparam ix63795z52928.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix63795z52929 (.combout (d[6]), .cout (nx63795z12), .dataa (
                         a[7]), .datab (a[6]), .datac (1'b1), .datad (
                         nx_add_12_0_vcc_net), .cin (nx63795z14)) ;
                         
                         defparam ix63795z52929.lut_mask = 16'h96e8;
                         
                         defparam ix63795z52929.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix63795z52930 (.combout (d[5]), .cout (nx63795z14), .dataa (
                         a[6]), .datab (a[5]), .datac (1'b1), .datad (
                         nx_add_12_0_vcc_net), .cin (nx63795z16)) ;
                         
                         defparam ix63795z52930.lut_mask = 16'h96e8;
                         
                         defparam ix63795z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix63795z52931 (.combout (d[4]), .cout (nx63795z16), .dataa (
                         a[5]), .datab (a[4]), .datac (1'b1), .datad (
                         nx_add_12_0_vcc_net), .cin (nx63795z18)) ;
                         
                         defparam ix63795z52931.lut_mask = 16'h96e8;
                         
                         defparam ix63795z52931.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix63795z52932 (.combout (d[3]), .cout (nx63795z18), .dataa (
                         a[4]), .datab (a[3]), .datac (1'b1), .datad (
                         nx_add_12_0_vcc_net), .cin (nx63795z20)) ;
                         
                         defparam ix63795z52932.lut_mask = 16'h96e8;
                         
                         defparam ix63795z52932.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix63795z52933 (.combout (d[2]), .cout (nx63795z20), .dataa (
                         a[3]), .datab (a[2]), .datac (1'b1), .datad (
                         nx_add_12_0_vcc_net), .cin (nx63795z22)) ;
                         
                         defparam ix63795z52933.lut_mask = 16'h96e8;
                         
                         defparam ix63795z52933.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix63795z52934 (.combout (d[1]), .cout (nx63795z22), .dataa (
                         a[2]), .datab (a[1]), .datac (1'b1), .datad (
                         nx_add_12_0_vcc_net), .cin (nx63795z24)) ;
                         
                         defparam ix63795z52934.lut_mask = 16'h96e8;
                         
                         defparam ix63795z52934.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix63795z52935 (.combout (d[0]), .cout (nx63795z24), .dataa (
                         a[0]), .datab (a[1]), .datac (1'b1), .datad (
                         nx_add_12_0_vcc_net), .cin (1'b0)) ;
                         
                         defparam ix63795z52935.lut_mask = 16'h6688;
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


module add_13_0 ( cin, a, b, d, cout ) ;

    input cin ;
    input [12:0]a ;
    input [12:0]b ;
    output [12:0]d ;
    output cout ;

    wire nx64792z33, nx64792z30, nx64792z27, nx64792z24, nx64792z21, nx64792z18, 
         nx64792z15, nx64792z12, nx64792z9, nx64792z7, nx64792z5, nx64792z3, 
         nx_add_13_0_vcc_net;
    wire [18:0] xmplr_dummy ;




    cycloneii_lcell_comb ix64792z52923 (.combout (d[12]), .dataa (a[12]), .datab (
                         1'b1), .datac (1'b1), .datad (nx_add_13_0_vcc_net), .cin (
                         nx64792z3)) ;
                         
                         defparam ix64792z52923.lut_mask = 16'h5a00;
                         
                         defparam ix64792z52923.sum_lutc_input = "cin";
    assign nx_add_13_0_vcc_net = 1 ;
    cycloneii_lcell_comb ix64792z52925 (.combout (d[11]), .cout (nx64792z3), .dataa (
                         a[11]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_add_13_0_vcc_net), .cin (nx64792z5)) ;
                         
                         defparam ix64792z52925.lut_mask = 16'h5aa0;
                         
                         defparam ix64792z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix64792z52926 (.combout (d[10]), .cout (nx64792z5), .dataa (
                         a[10]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_add_13_0_vcc_net), .cin (nx64792z7)) ;
                         
                         defparam ix64792z52926.lut_mask = 16'h5aa0;
                         
                         defparam ix64792z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix64792z52927 (.combout (d[9]), .cout (nx64792z7), .dataa (
                         a[9]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_add_13_0_vcc_net), .cin (nx64792z9)) ;
                         
                         defparam ix64792z52927.lut_mask = 16'h5aa0;
                         
                         defparam ix64792z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix64792z52928 (.combout (d[8]), .cout (nx64792z9), .dataa (
                         b[8]), .datab (a[8]), .datac (1'b1), .datad (
                         nx_add_13_0_vcc_net), .cin (nx64792z12)) ;
                         
                         defparam ix64792z52928.lut_mask = 16'h96e8;
                         
                         defparam ix64792z52928.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix64792z52929 (.combout (d[7]), .cout (nx64792z12), .dataa (
                         b[7]), .datab (a[7]), .datac (1'b1), .datad (
                         nx_add_13_0_vcc_net), .cin (nx64792z15)) ;
                         
                         defparam ix64792z52929.lut_mask = 16'h96e8;
                         
                         defparam ix64792z52929.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix64792z52930 (.combout (d[6]), .cout (nx64792z15), .dataa (
                         b[6]), .datab (a[6]), .datac (1'b1), .datad (
                         nx_add_13_0_vcc_net), .cin (nx64792z18)) ;
                         
                         defparam ix64792z52930.lut_mask = 16'h96e8;
                         
                         defparam ix64792z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix64792z52931 (.combout (d[5]), .cout (nx64792z18), .dataa (
                         b[5]), .datab (a[5]), .datac (1'b1), .datad (
                         nx_add_13_0_vcc_net), .cin (nx64792z21)) ;
                         
                         defparam ix64792z52931.lut_mask = 16'h96e8;
                         
                         defparam ix64792z52931.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix64792z52932 (.combout (d[4]), .cout (nx64792z21), .dataa (
                         b[4]), .datab (a[4]), .datac (1'b1), .datad (
                         nx_add_13_0_vcc_net), .cin (nx64792z24)) ;
                         
                         defparam ix64792z52932.lut_mask = 16'h96e8;
                         
                         defparam ix64792z52932.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix64792z52933 (.combout (d[3]), .cout (nx64792z24), .dataa (
                         b[3]), .datab (a[3]), .datac (1'b1), .datad (
                         nx_add_13_0_vcc_net), .cin (nx64792z27)) ;
                         
                         defparam ix64792z52933.lut_mask = 16'h96e8;
                         
                         defparam ix64792z52933.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix64792z52934 (.combout (d[2]), .cout (nx64792z27), .dataa (
                         b[2]), .datab (a[2]), .datac (1'b1), .datad (
                         nx_add_13_0_vcc_net), .cin (nx64792z30)) ;
                         
                         defparam ix64792z52934.lut_mask = 16'h96e8;
                         
                         defparam ix64792z52934.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix64792z52935 (.combout (d[1]), .cout (nx64792z30), .dataa (
                         b[1]), .datab (a[1]), .datac (1'b1), .datad (
                         nx_add_13_0_vcc_net), .cin (nx64792z33)) ;
                         
                         defparam ix64792z52935.lut_mask = 16'h96e8;
                         
                         defparam ix64792z52935.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix64792z52936 (.combout (d[0]), .cout (nx64792z33), .dataa (
                         a[0]), .datab (b[0]), .datac (1'b1), .datad (
                         nx_add_13_0_vcc_net), .cin (1'b0)) ;
                         
                         defparam ix64792z52936.lut_mask = 16'h6688;
endmodule


module sub_8_2 ( cin, a, b, d, cout ) ;

    input cin ;
    input [7:0]a ;
    input [7:0]b ;
    output [7:0]d ;
    output cout ;

    wire nx23445z22, nx23445z19, nx23445z16, nx23445z13, nx23445z10, nx23445z7, 
         nx23445z4, nx_sub_8_2_vcc_net;
    wire [16:0] xmplr_dummy ;




    cycloneii_lcell_comb ix23445z52923 (.combout (cout), .dataa (b[7]), .datab (
                         a[7]), .datac (1'b1), .datad (nx_sub_8_2_vcc_net), .cin (
                         nx23445z4)) ;
                         
                         defparam ix23445z52923.lut_mask = 16'hd400;
                         
                         defparam ix23445z52923.sum_lutc_input = "cin";
    assign nx_sub_8_2_vcc_net = 1 ;
    cycloneii_lcell_comb ix23445z52925 (.cout (nx23445z4), .dataa (b[6]), .datab (
                         a[6]), .datac (1'b1), .datad (nx_sub_8_2_vcc_net), .cin (
                         nx23445z7)) ;
                         
                         defparam ix23445z52925.lut_mask = 16'h00d4;
                         
                         defparam ix23445z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix23445z52926 (.cout (nx23445z7), .dataa (b[5]), .datab (
                         a[5]), .datac (1'b1), .datad (nx_sub_8_2_vcc_net), .cin (
                         nx23445z10)) ;
                         
                         defparam ix23445z52926.lut_mask = 16'h00d4;
                         
                         defparam ix23445z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix23445z52927 (.cout (nx23445z10), .dataa (b[4]), .datab (
                         a[4]), .datac (1'b1), .datad (nx_sub_8_2_vcc_net), .cin (
                         nx23445z13)) ;
                         
                         defparam ix23445z52927.lut_mask = 16'h00d4;
                         
                         defparam ix23445z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix23445z52928 (.cout (nx23445z13), .dataa (b[3]), .datab (
                         a[3]), .datac (1'b1), .datad (nx_sub_8_2_vcc_net), .cin (
                         nx23445z16)) ;
                         
                         defparam ix23445z52928.lut_mask = 16'h00d4;
                         
                         defparam ix23445z52928.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix23445z52929 (.cout (nx23445z16), .dataa (b[2]), .datab (
                         a[2]), .datac (1'b1), .datad (nx_sub_8_2_vcc_net), .cin (
                         nx23445z19)) ;
                         
                         defparam ix23445z52929.lut_mask = 16'h00d4;
                         
                         defparam ix23445z52929.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix23445z52930 (.cout (nx23445z19), .dataa (b[1]), .datab (
                         a[1]), .datac (1'b1), .datad (nx_sub_8_2_vcc_net), .cin (
                         nx23445z22)) ;
                         
                         defparam ix23445z52930.lut_mask = 16'h00d4;
                         
                         defparam ix23445z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix23445z52931 (.cout (nx23445z22), .dataa (a[0]), .datab (
                         b[0]), .datac (1'b1), .datad (nx_sub_8_2_vcc_net), .cin (
                         1'b0)) ;
                         defparam ix23445z52931.lut_mask = 16'h00bb;
endmodule


module sub_8_1 ( cin, a, b, d, cout ) ;

    input cin ;
    input [7:0]a ;
    input [7:0]b ;
    output [7:0]d ;
    output cout ;

    wire nx23445z22, nx23445z19, nx23445z16, nx23445z13, nx23445z10, nx23445z7, 
         nx23445z4, nx_sub_8_1_vcc_net;
    wire [16:0] xmplr_dummy ;




    cycloneii_lcell_comb ix23445z52923 (.combout (cout), .dataa (b[7]), .datab (
                         a[7]), .datac (1'b1), .datad (nx_sub_8_1_vcc_net), .cin (
                         nx23445z4)) ;
                         
                         defparam ix23445z52923.lut_mask = 16'hd400;
                         
                         defparam ix23445z52923.sum_lutc_input = "cin";
    assign nx_sub_8_1_vcc_net = 1 ;
    cycloneii_lcell_comb ix23445z52925 (.cout (nx23445z4), .dataa (b[6]), .datab (
                         a[6]), .datac (1'b1), .datad (nx_sub_8_1_vcc_net), .cin (
                         nx23445z7)) ;
                         
                         defparam ix23445z52925.lut_mask = 16'h00d4;
                         
                         defparam ix23445z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix23445z52926 (.cout (nx23445z7), .dataa (b[5]), .datab (
                         a[5]), .datac (1'b1), .datad (nx_sub_8_1_vcc_net), .cin (
                         nx23445z10)) ;
                         
                         defparam ix23445z52926.lut_mask = 16'h00d4;
                         
                         defparam ix23445z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix23445z52927 (.cout (nx23445z10), .dataa (b[4]), .datab (
                         a[4]), .datac (1'b1), .datad (nx_sub_8_1_vcc_net), .cin (
                         nx23445z13)) ;
                         
                         defparam ix23445z52927.lut_mask = 16'h00d4;
                         
                         defparam ix23445z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix23445z52928 (.cout (nx23445z13), .dataa (b[3]), .datab (
                         a[3]), .datac (1'b1), .datad (nx_sub_8_1_vcc_net), .cin (
                         nx23445z16)) ;
                         
                         defparam ix23445z52928.lut_mask = 16'h00d4;
                         
                         defparam ix23445z52928.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix23445z52929 (.cout (nx23445z16), .dataa (b[2]), .datab (
                         a[2]), .datac (1'b1), .datad (nx_sub_8_1_vcc_net), .cin (
                         nx23445z19)) ;
                         
                         defparam ix23445z52929.lut_mask = 16'h00d4;
                         
                         defparam ix23445z52929.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix23445z52930 (.cout (nx23445z19), .dataa (b[1]), .datab (
                         a[1]), .datac (1'b1), .datad (nx_sub_8_1_vcc_net), .cin (
                         nx23445z22)) ;
                         
                         defparam ix23445z52930.lut_mask = 16'h00d4;
                         
                         defparam ix23445z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix23445z52931 (.cout (nx23445z22), .dataa (a[0]), .datab (
                         b[0]), .datac (1'b1), .datad (nx_sub_8_1_vcc_net), .cin (
                         1'b0)) ;
                         defparam ix23445z52931.lut_mask = 16'h00bb;
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


module uw_uart ( clk, rst, kirschout, kirschdir, o_valid, i_mode, datain, 
                 o_pixavail, rxflex, txflex, p_Tx_Reg_14n6ss1_0_, p_NOT_rtlcn2, 
                 p_nrst_int, px705 ) ;

    input clk ;
    input rst ;
    input kirschout ;
    input [2:0]kirschdir ;
    input o_valid ;
    input [1:0]i_mode ;
    output [7:0]datain ;
    output o_pixavail ;
    input rxflex ;
    output txflex ;
    output p_Tx_Reg_14n6ss1_0_ ;
    output p_NOT_rtlcn2 ;
    input p_nrst_int ;
    input px705 ;

    wire [7:0]sdin;
    wire rxerr, rxrdy, sdout_7_, sdout_5_, sdout_3_, sdout_2_, sdout_1_, 
         sdout_0_;
    wire [7:0]rdata;
    wire state, dsend, mdata_7_, mdata_5_, mdata_3_, mdata_2_, mdata_1_, 
         mdata_0_, ack;
    wire [15:0]waitcount;
    wire ld_sdout, rawrx, mdata_7n5ss1_6_, mdata_7n5ss1_4_, nx40736z2, nx46385z2, 
         nx33354z2, nx40736z3, nx38868z1, nx46385z1, nx39480z1, not_o_valid, 
         nx33354z1, nx58116z1, nx38742z1, nx18433z1, nx39480z2, nx39480z6, 
         nx39480z3, nx39480z4, nx40736z4, nx39480z5, nx39480z7, nx36748z1, 
         nx35751z1, nx34754z1, nx33757z1;
    wire [192:0] xmplr_dummy ;




    UARTS i_uarts (.CLK (clk), .RST (rst), .Din ({sdout_7_,xmplr_dummy [0],
          sdout_5_,xmplr_dummy [1],sdout_3_,sdout_2_,sdout_1_,sdout_0_}), .LD (
          ld_sdout), .Rx (rawrx), .Dout ({sdin[7],sdin[6],sdin[5],sdin[4],
          sdin[3],sdin[2],sdin[1],sdin[0]}), .RxErr (rxerr), .RxRDY (rxrdy), .p_Tx_Reg_14n6ss1_0_ (
          p_Tx_Reg_14n6ss1_0_), .p_NOT_rtlcn2 (p_NOT_rtlcn2), .p_rxflex (rxflex)
          , .p_nrst_int_dup_8 (p_nrst_int)) ;
    modgen_counter_16_0 modgen_counter_waitcount (.clock (clk), .q ({
                        waitcount[15],waitcount[14],waitcount[13],waitcount[12],
                        waitcount[11],waitcount[10],waitcount[9],waitcount[8],
                        waitcount[7],waitcount[6],waitcount[5],waitcount[4],
                        waitcount[3],waitcount[2],waitcount[1],waitcount[0]}), .clk_en (
                        nx33354z1), .sclear (nx33354z2)) ;
    assign not_o_valid = ~o_valid ;
    cycloneii_lcell_ff reg_state (.regout (state), .datain (nx38868z1), .sdata (
                       1'b0), .clk (clk), .ena (1'b1), .aclr (rst), .sclr (1'b0)
                       , .sload (1'b0)) ;
    cycloneii_lcell_ff reg_sdout_7_ (.regout (sdout_7_), .datain (mdata_7_), .sdata (
                       1'b0), .clk (clk), .ena (nx38868z1), .aclr (rst), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_sdout_5_ (.regout (sdout_5_), .datain (mdata_5_), .sdata (
                       1'b0), .clk (clk), .ena (nx38868z1), .aclr (rst), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_sdout_3_ (.regout (sdout_3_), .datain (mdata_3_), .sdata (
                       1'b0), .clk (clk), .ena (nx38868z1), .aclr (rst), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_sdout_2_ (.regout (sdout_2_), .datain (mdata_2_), .sdata (
                       1'b0), .clk (clk), .ena (nx38868z1), .aclr (rst), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_sdout_1_ (.regout (sdout_1_), .datain (mdata_1_), .sdata (
                       1'b0), .clk (clk), .ena (nx38868z1), .aclr (rst), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_sdout_0_ (.regout (sdout_0_), .datain (mdata_0_), .sdata (
                       1'b0), .clk (clk), .ena (nx38868z1), .aclr (rst), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_rdata_7_ (.regout (rdata[7]), .datain (sdin[7]), .sdata (
                       1'b0), .clk (clk), .ena (rxrdy), .aclr (rst), .sclr (1'b0
                       ), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_rdata_6_ (.regout (rdata[6]), .datain (sdin[6]), .sdata (
                       1'b0), .clk (clk), .ena (rxrdy), .aclr (rst), .sclr (1'b0
                       ), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_rdata_5_ (.regout (rdata[5]), .datain (sdin[5]), .sdata (
                       1'b0), .clk (clk), .ena (rxrdy), .aclr (rst), .sclr (1'b0
                       ), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_rdata_4_ (.regout (rdata[4]), .datain (sdin[4]), .sdata (
                       1'b0), .clk (clk), .ena (rxrdy), .aclr (rst), .sclr (1'b0
                       ), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_rdata_3_ (.regout (rdata[3]), .datain (sdin[3]), .sdata (
                       1'b0), .clk (clk), .ena (rxrdy), .aclr (rst), .sclr (1'b0
                       ), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_rdata_2_ (.regout (rdata[2]), .datain (sdin[2]), .sdata (
                       1'b0), .clk (clk), .ena (rxrdy), .aclr (rst), .sclr (1'b0
                       ), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_rdata_1_ (.regout (rdata[1]), .datain (sdin[1]), .sdata (
                       1'b0), .clk (clk), .ena (rxrdy), .aclr (rst), .sclr (1'b0
                       ), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_rdata_0_ (.regout (rdata[0]), .datain (sdin[0]), .sdata (
                       1'b0), .clk (clk), .ena (rxrdy), .aclr (rst), .sclr (1'b0
                       ), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_mdata_7_ (.regout (mdata_7_), .datain (
                       mdata_7n5ss1_6_), .sdata (1'b0), .clk (clk), .ena (
                       nx40736z3), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_mdata_5_ (.regout (mdata_5_), .datain (
                       mdata_7n5ss1_4_), .sdata (1'b0), .clk (clk), .ena (
                       nx40736z3), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    assign nx36748z1 = 1 ;
    cycloneii_lcell_ff reg_mdata_3_ (.regout (mdata_3_), .datain (kirschdir[2])
                       , .sdata (nx36748z1), .clk (clk), .ena (nx40736z3), .aclr (
                       1'b0), .sclr (nx38742z1), .sload (not_o_valid)) ;
    assign nx35751z1 = 1 ;
    cycloneii_lcell_ff reg_mdata_2_ (.regout (mdata_2_), .datain (kirschdir[1])
                       , .sdata (nx35751z1), .clk (clk), .ena (nx40736z3), .aclr (
                       1'b0), .sclr (nx38742z1), .sload (not_o_valid)) ;
    assign nx34754z1 = 1 ;
    cycloneii_lcell_ff reg_mdata_1_ (.regout (mdata_1_), .datain (kirschdir[0])
                       , .sdata (nx34754z1), .clk (clk), .ena (nx40736z3), .aclr (
                       1'b0), .sclr (nx38742z1), .sload (not_o_valid)) ;
    assign nx33757z1 = 1 ;
    cycloneii_lcell_ff reg_mdata_0_ (.regout (mdata_0_), .datain (kirschout), .sdata (
                       nx33757z1), .clk (clk), .ena (nx40736z3), .aclr (1'b0), .sclr (
                       nx38742z1), .sload (not_o_valid)) ;
    cycloneii_lcell_ff reg_ld_sdout (.regout (ld_sdout), .datain (nx18433z1), .sdata (
                       1'b0), .clk (clk), .ena (1'b1), .aclr (rst), .sclr (1'b0)
                       , .sload (1'b0)) ;
    cycloneii_lcell_ff reg_dsend (.regout (dsend), .datain (nx46385z1), .sdata (
                       1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), .sclr (rst)
                       , .sload (1'b0)) ;
    cycloneii_lcell_ff reg_charavail (.regout (o_pixavail), .datain (nx58116z1)
                       , .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (rst), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_ack (.regout (ack), .datain (nx39480z1), .sdata (1'b0
                       ), .clk (clk), .ena (1'b1), .aclr (1'b0), .sclr (rst), .sload (
                       1'b0)) ;
    cycloneii_lcell_comb ix33354z52923 (.combout (nx33354z1), .dataa (ack), .datab (
                         o_pixavail), .datac (p_nrst_int), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix33354z52923.lut_mask = 16'hefef;
    cycloneii_lcell_comb ix39480z52929 (.combout (nx39480z7), .dataa (
                         waitcount[11]), .datab (waitcount[10]), .datac (1'b1), 
                         .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix39480z52929.lut_mask = 16'h1111;
    cycloneii_lcell_comb ix39480z52927 (.combout (nx39480z5), .dataa (
                         waitcount[9]), .datab (waitcount[8]), .datac (nx39480z6
                         ), .datad (nx39480z7), .cin (1'b0)) ;
                         
                         defparam ix39480z52927.lut_mask = 16'h1000;
    cycloneii_lcell_comb ix40736z52926 (.combout (nx40736z4), .dataa (o_pixavail
                         ), .datab (rxerr), .datac (ack), .datad (nx39480z2), .cin (
                         1'b0)) ;
                         defparam ix40736z52926.lut_mask = 16'hfe04;
    cycloneii_lcell_comb ix39480z52926 (.combout (nx39480z4), .dataa (
                         waitcount[3]), .datab (waitcount[2]), .datac (
                         waitcount[1]), .datad (waitcount[0]), .cin (1'b0)) ;
                         
                         defparam ix39480z52926.lut_mask = 16'h0004;
    cycloneii_lcell_comb ix39480z52925 (.combout (nx39480z3), .dataa (
                         waitcount[7]), .datab (waitcount[6]), .datac (
                         waitcount[5]), .datad (waitcount[4]), .cin (1'b0)) ;
                         
                         defparam ix39480z52925.lut_mask = 16'h0040;
    cycloneii_lcell_comb ix39480z52928 (.combout (nx39480z6), .dataa (
                         waitcount[15]), .datab (waitcount[14]), .datac (
                         waitcount[13]), .datad (waitcount[12]), .cin (1'b0)) ;
                         
                         defparam ix39480z52928.lut_mask = 16'h0001;
    cycloneii_lcell_comb ix39480z52924 (.combout (nx39480z2), .dataa (o_valid), 
                         .datab (nx39480z3), .datac (nx39480z4), .datad (
                         nx39480z5), .cin (1'b0)) ;
                         
                         defparam ix39480z52924.lut_mask = 16'heaaa;
    cycloneii_lcell_comb ix18433z52923 (.combout (nx18433z1), .dataa (state), .datab (
                         dsend), .datac (ld_sdout), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix18433z52923.lut_mask = 16'h5454;
    cycloneii_lcell_comb ix38742z52924 (.combout (nx38742z1), .dataa (i_mode[1])
                         , .datab (px705), .datac (o_pixavail), .datad (ack), .cin (
                         1'b0)) ;
                         defparam ix38742z52924.lut_mask = 16'h111f;
    cycloneii_lcell_comb ix40736z52925 (.combout (nx40736z3), .dataa (nx40736z4)
                         , .datab (px705), .datac (i_mode[1]), .datad (
                         p_nrst_int), .cin (1'b0)) ;
                         
                         defparam ix40736z52925.lut_mask = 16'hab00;
    cycloneii_lcell_comb ix58116z52923 (.combout (nx58116z1), .dataa (o_pixavail
                         ), .datab (rxrdy), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix58116z52923.lut_mask = 16'h4444;
    cycloneii_lcell_comb ix39480z52923 (.combout (nx39480z1), .dataa (o_pixavail
                         ), .datab (ack), .datac (nx39480z2), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix39480z52923.lut_mask = 16'h0e0e;
    cycloneii_lcell_comb ix46385z52923 (.combout (nx46385z1), .dataa (rxerr), .datab (
                         nx40736z2), .datac (nx46385z2), .datad (nx39480z2), .cin (
                         1'b0)) ;
                         defparam ix46385z52923.lut_mask = 16'hfef2;
    cycloneii_lcell_comb ix38868z52923 (.combout (nx38868z1), .dataa (state), .datab (
                         dsend), .datac (1'b1), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix38868z52923.lut_mask = 16'h4444;
    cycloneii_lcell_comb ix46385z52924 (.combout (nx46385z2), .dataa (i_mode[1])
                         , .datab (px705), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix46385z52924.lut_mask = 16'h1111;
    cycloneii_lcell_comb ix40736z52924 (.combout (nx40736z2), .dataa (o_pixavail
                         ), .datab (ack), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix40736z52924.lut_mask = 16'heeee;
    cycloneii_lcell_comb ix38742z52923 (.combout (mdata_7n5ss1_4_), .dataa (
                         o_valid), .datab (nx38742z1), .datac (1'b1), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix38742z52923.lut_mask = 16'hdddd;
    cycloneii_lcell_comb ix40736z52923 (.combout (mdata_7n5ss1_6_), .dataa (
                         o_valid), .datab (i_mode[1]), .datac (px705), .datad (
                         nx40736z2), .cin (1'b0)) ;
                         
                         defparam ix40736z52923.lut_mask = 16'h54fc;
    cycloneii_lcell_comb ix40426z52923 (.combout (datain[0]), .dataa (o_pixavail
                         ), .datab (rdata[0]), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix40426z52923.lut_mask = 16'h8888;
    cycloneii_lcell_comb ix41423z52923 (.combout (datain[1]), .dataa (o_pixavail
                         ), .datab (rdata[1]), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix41423z52923.lut_mask = 16'h8888;
    cycloneii_lcell_comb ix42420z52923 (.combout (datain[2]), .dataa (o_pixavail
                         ), .datab (rdata[2]), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix42420z52923.lut_mask = 16'h8888;
    cycloneii_lcell_comb ix43417z52923 (.combout (datain[3]), .dataa (o_pixavail
                         ), .datab (rdata[3]), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix43417z52923.lut_mask = 16'h8888;
    cycloneii_lcell_comb ix44414z52923 (.combout (datain[4]), .dataa (o_pixavail
                         ), .datab (rdata[4]), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix44414z52923.lut_mask = 16'h8888;
    cycloneii_lcell_comb ix45411z52923 (.combout (datain[5]), .dataa (o_pixavail
                         ), .datab (rdata[5]), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix45411z52923.lut_mask = 16'h8888;
    cycloneii_lcell_comb ix46408z52923 (.combout (datain[6]), .dataa (o_pixavail
                         ), .datab (rdata[6]), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix46408z52923.lut_mask = 16'h8888;
    cycloneii_lcell_comb ix33354z52924 (.combout (nx33354z2), .dataa (nx39480z2)
                         , .datab (p_nrst_int), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix33354z52924.lut_mask = 16'hbbbb;
    cycloneii_lcell_comb ix47405z52923 (.combout (datain[7]), .dataa (o_pixavail
                         ), .datab (rdata[7]), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix47405z52923.lut_mask = 16'h8888;
    cycloneii_lcell_comb ix15671z52923 (.combout (rawrx), .dataa (rxflex), .datab (
                         p_nrst_int), .datac (1'b1), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix15671z52923.lut_mask = 16'h8888;
endmodule


module modgen_counter_16_0 ( clock, q, clk_en, aclear, sload, data, aset, sclear, 
                             updn, cnt_en ) ;

    input clock ;
    output [15:0]q ;
    input clk_en ;
    input aclear ;
    input sload ;
    input [15:0]data ;
    input aset ;
    input sclear ;
    input updn ;
    input cnt_en ;

    wire nx51271z1, nx22081z30, nx52268z1, nx22081z28, nx53265z1, nx22081z26, 
         nx54262z1, nx22081z24, nx55259z1, nx22081z22, nx56256z1, nx22081z20, 
         nx57253z1, nx22081z18, nx58250z1, nx22081z16, nx59247z1, nx22081z14, 
         nx60244z1, nx22081z12, nx17096z1, nx22081z10, nx18093z1, nx22081z8, 
         nx19090z1, nx22081z6, nx20087z1, nx22081z4, nx21084z1, nx22081z2, 
         nx22081z1, nx_modgen_counter_16_0_vcc_net;
    wire [81:0] xmplr_dummy ;




    cycloneii_lcell_ff reg_q_9_ (.regout (q[9]), .datain (nx60244z1), .sdata (
                       1'b0), .clk (clock), .ena (clk_en), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_8_ (.regout (q[8]), .datain (nx59247z1), .sdata (
                       1'b0), .clk (clock), .ena (clk_en), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_7_ (.regout (q[7]), .datain (nx58250z1), .sdata (
                       1'b0), .clk (clock), .ena (clk_en), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_6_ (.regout (q[6]), .datain (nx57253z1), .sdata (
                       1'b0), .clk (clock), .ena (clk_en), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_5_ (.regout (q[5]), .datain (nx56256z1), .sdata (
                       1'b0), .clk (clock), .ena (clk_en), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_4_ (.regout (q[4]), .datain (nx55259z1), .sdata (
                       1'b0), .clk (clock), .ena (clk_en), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_3_ (.regout (q[3]), .datain (nx54262z1), .sdata (
                       1'b0), .clk (clock), .ena (clk_en), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_2_ (.regout (q[2]), .datain (nx53265z1), .sdata (
                       1'b0), .clk (clock), .ena (clk_en), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_15_ (.regout (q[15]), .datain (nx22081z1), .sdata (
                       1'b0), .clk (clock), .ena (clk_en), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_14_ (.regout (q[14]), .datain (nx21084z1), .sdata (
                       1'b0), .clk (clock), .ena (clk_en), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_13_ (.regout (q[13]), .datain (nx20087z1), .sdata (
                       1'b0), .clk (clock), .ena (clk_en), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_12_ (.regout (q[12]), .datain (nx19090z1), .sdata (
                       1'b0), .clk (clock), .ena (clk_en), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_11_ (.regout (q[11]), .datain (nx18093z1), .sdata (
                       1'b0), .clk (clock), .ena (clk_en), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_10_ (.regout (q[10]), .datain (nx17096z1), .sdata (
                       1'b0), .clk (clock), .ena (clk_en), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_1_ (.regout (q[1]), .datain (nx52268z1), .sdata (
                       1'b0), .clk (clock), .ena (clk_en), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_0_ (.regout (q[0]), .datain (nx51271z1), .sdata (
                       1'b0), .clk (clock), .ena (clk_en), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_comb ix22081z52925 (.combout (nx21084z1), .cout (nx22081z2)
                         , .dataa (q[14]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_0_vcc_net), .cin (nx22081z4)) ;
                         
                         defparam ix22081z52925.lut_mask = 16'h5aa0;
                         
                         defparam ix22081z52925.sum_lutc_input = "cin";
    assign nx_modgen_counter_16_0_vcc_net = 1 ;
    cycloneii_lcell_comb ix22081z52926 (.combout (nx20087z1), .cout (nx22081z4)
                         , .dataa (q[13]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_0_vcc_net), .cin (nx22081z6)) ;
                         
                         defparam ix22081z52926.lut_mask = 16'h5aa0;
                         
                         defparam ix22081z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix22081z52927 (.combout (nx19090z1), .cout (nx22081z6)
                         , .dataa (q[12]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_0_vcc_net), .cin (nx22081z8)) ;
                         
                         defparam ix22081z52927.lut_mask = 16'h5aa0;
                         
                         defparam ix22081z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix22081z52928 (.combout (nx18093z1), .cout (nx22081z8)
                         , .dataa (q[11]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_0_vcc_net), .cin (nx22081z10)) ;
                         
                         defparam ix22081z52928.lut_mask = 16'h5aa0;
                         
                         defparam ix22081z52928.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix22081z52929 (.combout (nx17096z1), .cout (nx22081z10)
                         , .dataa (q[10]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_0_vcc_net), .cin (nx22081z12)) ;
                         
                         defparam ix22081z52929.lut_mask = 16'h5aa0;
                         
                         defparam ix22081z52929.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix22081z52937 (.combout (nx53265z1), .cout (nx22081z26)
                         , .dataa (q[2]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_0_vcc_net), .cin (nx22081z28)) ;
                         
                         defparam ix22081z52937.lut_mask = 16'h5aa0;
                         
                         defparam ix22081z52937.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix22081z52930 (.combout (nx60244z1), .cout (nx22081z12)
                         , .dataa (q[9]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_0_vcc_net), .cin (nx22081z14)) ;
                         
                         defparam ix22081z52930.lut_mask = 16'h5aa0;
                         
                         defparam ix22081z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix22081z52938 (.combout (nx52268z1), .cout (nx22081z28)
                         , .dataa (q[1]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_0_vcc_net), .cin (nx22081z30)) ;
                         
                         defparam ix22081z52938.lut_mask = 16'h5aa0;
                         
                         defparam ix22081z52938.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix22081z52931 (.combout (nx59247z1), .cout (nx22081z14)
                         , .dataa (q[8]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_0_vcc_net), .cin (nx22081z16)) ;
                         
                         defparam ix22081z52931.lut_mask = 16'h5aa0;
                         
                         defparam ix22081z52931.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix22081z52932 (.combout (nx58250z1), .cout (nx22081z16)
                         , .dataa (q[7]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_0_vcc_net), .cin (nx22081z18)) ;
                         
                         defparam ix22081z52932.lut_mask = 16'h5aa0;
                         
                         defparam ix22081z52932.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix22081z52933 (.combout (nx57253z1), .cout (nx22081z18)
                         , .dataa (q[6]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_0_vcc_net), .cin (nx22081z20)) ;
                         
                         defparam ix22081z52933.lut_mask = 16'h5aa0;
                         
                         defparam ix22081z52933.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix22081z52934 (.combout (nx56256z1), .cout (nx22081z20)
                         , .dataa (q[5]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_0_vcc_net), .cin (nx22081z22)) ;
                         
                         defparam ix22081z52934.lut_mask = 16'h5aa0;
                         
                         defparam ix22081z52934.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix22081z52935 (.combout (nx55259z1), .cout (nx22081z22)
                         , .dataa (q[4]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_0_vcc_net), .cin (nx22081z24)) ;
                         
                         defparam ix22081z52935.lut_mask = 16'h5aa0;
                         
                         defparam ix22081z52935.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix22081z52936 (.combout (nx54262z1), .cout (nx22081z24)
                         , .dataa (q[3]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_0_vcc_net), .cin (nx22081z26)) ;
                         
                         defparam ix22081z52936.lut_mask = 16'h5aa0;
                         
                         defparam ix22081z52936.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix22081z52923 (.combout (nx22081z1), .dataa (q[15]), .datab (
                         1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_0_vcc_net), .cin (nx22081z2)) ;
                         
                         defparam ix22081z52923.lut_mask = 16'h5a00;
                         
                         defparam ix22081z52923.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix22081z52939 (.combout (nx51271z1), .cout (nx22081z30)
                         , .dataa (q[0]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_0_vcc_net), .cin (1'b0)) ;
                         
                         defparam ix22081z52939.lut_mask = 16'h55aa;
endmodule


module UARTS ( CLK, RST, Din, LD, Rx, Baud, Dout, Tx, TxBusy, RxErr, RxRDY, 
               p_Tx_Reg_14n6ss1_0_, p_NOT_rtlcn2, p_rxflex, p_nrst_int_dup_8 ) ;

    input CLK ;
    input RST ;
    input [7:0]Din ;
    input LD ;
    input Rx ;
    input Baud ;
    output [7:0]Dout ;
    output Tx ;
    output TxBusy ;
    output RxErr ;
    output RxRDY ;
    output p_Tx_Reg_14n6ss1_0_ ;
    output p_NOT_rtlcn2 ;
    input p_rxflex ;
    input p_nrst_int_dup_8 ;

    wire [7:0]Rx_Reg;
    wire TxDivisor_5_;
    wire [10:0]RxDiv;
    wire [11:0]TxDiv;
    wire TopTx, TopRx;
    wire [3:0]TxBitCnt;
    wire [3:0]RxBitCnt;
    wire Rx_r;
    wire [1:0]TxFSM;
    wire RxFSM_6_, RxFSM_5_, RxFSM_3_, RxFSM_2_, RxFSM_1_, RxFSM_0_, nx65151z1, 
         nx50920z2, nx35603z1, not_rtlc17_X_0_n360, nx54636z1, nx15541z1, 
         nx13547z1, nx14544z1, nx11553z1, nx34394z1, nx34394z3, nx32400z1, 
         nx13547z2, nx30017z1, PWR, nx4608z1, nx51917z2, nx50920z3, nx51917z3, 
         nx9370z2, nx51917z1, nx50920z1, nx49923z1, nx48926z1, nx8373z1, 
         nx9370z1, nx10367z1, nx11364z1, nx5605z1, nx15376z1, nx34394z4, 
         nx34394z5, nx34394z6, nx34394z9, nx34394z7, nx34394z10, nx34394z8, 
         nx32400z2, nx32400z3, nx32400z4, nx32400z6, nx32400z5, nx32400z7, 
         nx15541z2, nx4608z2, nx4608z3, nx51917z4, nx8373z2, nx15541z3, 
         nx32400z8, nx32400z9, not_Rx_r, NOT_Rx, nx34606z1, 
         NOT_Tx_Reg_14n6ss1_8_, nx33609z1, NOT_Tx_Reg_14n6ss1_7_, nx32612z1, 
         NOT_Tx_Reg_14n6ss1_6_, nx31615z1, NOT_Tx_Reg_14n6ss1_5_, nx30618z1, 
         NOT_Tx_Reg_14n6ss1_4_, nx29621z1, NOT_Tx_Reg_14n6ss1_3_, nx28624z1, 
         NOT_Tx_Reg_14n6ss1_2_, nx61140z1, NOT_Tx_Reg_14n6ss1_1_, nx34394z2, 
         nx16538z1;
    wire [348:0] xmplr_dummy ;




    modgen_counter_11_0 modgen_counter_RxDiv (.clock (CLK), .q ({RxDiv[10],
                        RxDiv[9],RxDiv[8],RxDiv[7],RxDiv[6],RxDiv[5],RxDiv[4],
                        RxDiv[3],RxDiv[2],RxDiv[1],RxDiv[0]}), .aclear (RST), .sclear (
                        nx65151z1)) ;
    modgen_counter_12_0 modgen_counter_TxDiv (.clock (CLK), .q ({TxDiv[11],
                        TxDiv[10],TxDiv[9],TxDiv[8],TxDiv[7],TxDiv[6],TxDiv[5],
                        TxDiv[4],TxDiv[3],TxDiv[2],TxDiv[1],TxDiv[0]}), .aclear (
                        RST), .sclear (nx32400z1)) ;
    assign PWR = 1 ;
    assign Rx_r = ~not_Rx_r ;
    assign RxFSM_0_ = ~nx34394z2 ;
    cycloneii_lcell_ff reg_Tx_Reg_8_ (.regout (nx34606z1), .datain (
                       NOT_Tx_Reg_14n6ss1_8_), .sdata (1'b0), .clk (CLK), .ena (
                       nx35603z1), .aclr (RST), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_Tx_Reg_7_ (.regout (nx33609z1), .datain (
                       NOT_Tx_Reg_14n6ss1_7_), .sdata (1'b0), .clk (CLK), .ena (
                       nx35603z1), .aclr (RST), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_Tx_Reg_6_ (.regout (nx32612z1), .datain (
                       NOT_Tx_Reg_14n6ss1_6_), .sdata (1'b0), .clk (CLK), .ena (
                       nx35603z1), .aclr (RST), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_Tx_Reg_5_ (.regout (nx31615z1), .datain (
                       NOT_Tx_Reg_14n6ss1_5_), .sdata (1'b0), .clk (CLK), .ena (
                       nx35603z1), .aclr (RST), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_Tx_Reg_4_ (.regout (nx30618z1), .datain (
                       NOT_Tx_Reg_14n6ss1_4_), .sdata (1'b0), .clk (CLK), .ena (
                       nx35603z1), .aclr (RST), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_Tx_Reg_3_ (.regout (nx29621z1), .datain (
                       NOT_Tx_Reg_14n6ss1_3_), .sdata (1'b0), .clk (CLK), .ena (
                       nx35603z1), .aclr (RST), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_Tx_Reg_2_ (.regout (nx28624z1), .datain (
                       NOT_Tx_Reg_14n6ss1_2_), .sdata (1'b0), .clk (CLK), .ena (
                       nx35603z1), .aclr (RST), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_Tx_Reg_1_ (.regout (nx61140z1), .datain (
                       NOT_Tx_Reg_14n6ss1_1_), .sdata (1'b0), .clk (CLK), .ena (
                       nx35603z1), .aclr (RST), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_TxFSM_1_ (.regout (TxFSM[1]), .datain (nx5605z1), .sdata (
                       1'b0), .clk (CLK), .ena (1'b1), .aclr (RST), .sclr (1'b0)
                       , .sload (1'b0)) ;
    cycloneii_lcell_ff reg_TxFSM_0_ (.regout (TxFSM[0]), .datain (nx4608z1), .sdata (
                       1'b0), .clk (CLK), .ena (1'b1), .aclr (RST), .sclr (1'b0)
                       , .sload (1'b0)) ;
    cycloneii_lcell_ff reg_TxDivisor_5_ (.regout (TxDivisor_5_), .datain (PWR), 
                       .sdata (1'b0), .clk (CLK), .ena (1'b1), .aclr (RST), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_TopTx (.regout (TopTx), .datain (nx32400z1), .sdata (
                       1'b0), .clk (CLK), .ena (1'b1), .aclr (RST), .sclr (1'b0)
                       , .sload (1'b0)) ;
    cycloneii_lcell_ff reg_TopRx (.regout (TopRx), .datain (nx34394z1), .sdata (
                       1'b0), .clk (CLK), .ena (1'b1), .aclr (RST), .sclr (1'b0)
                       , .sload (1'b0)) ;
    cycloneii_lcell_ff reg_Rx_r (.regout (not_Rx_r), .datain (NOT_Rx), .sdata (
                       1'b0), .clk (CLK), .ena (1'b1), .aclr (RST), .sclr (1'b0)
                       , .sload (1'b0)) ;
    cycloneii_lcell_ff reg_Rx_Reg_7_ (.regout (Rx_Reg[7]), .datain (Rx_r), .sdata (
                       1'b0), .clk (CLK), .ena (nx54636z1), .aclr (RST), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_Rx_Reg_6_ (.regout (Rx_Reg[6]), .datain (Rx_Reg[7]), 
                       .sdata (1'b0), .clk (CLK), .ena (nx54636z1), .aclr (RST)
                       , .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_Rx_Reg_5_ (.regout (Rx_Reg[5]), .datain (Rx_Reg[6]), 
                       .sdata (1'b0), .clk (CLK), .ena (nx54636z1), .aclr (RST)
                       , .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_Rx_Reg_4_ (.regout (Rx_Reg[4]), .datain (Rx_Reg[5]), 
                       .sdata (1'b0), .clk (CLK), .ena (nx54636z1), .aclr (RST)
                       , .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_Rx_Reg_3_ (.regout (Rx_Reg[3]), .datain (Rx_Reg[4]), 
                       .sdata (1'b0), .clk (CLK), .ena (nx54636z1), .aclr (RST)
                       , .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_Rx_Reg_2_ (.regout (Rx_Reg[2]), .datain (Rx_Reg[3]), 
                       .sdata (1'b0), .clk (CLK), .ena (nx54636z1), .aclr (RST)
                       , .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_Rx_Reg_1_ (.regout (Rx_Reg[1]), .datain (Rx_Reg[2]), 
                       .sdata (1'b0), .clk (CLK), .ena (nx54636z1), .aclr (RST)
                       , .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_Rx_Reg_0_ (.regout (Rx_Reg[0]), .datain (Rx_Reg[1]), 
                       .sdata (1'b0), .clk (CLK), .ena (nx54636z1), .aclr (RST)
                       , .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_RxRDYi (.regout (RxRDY), .datain (nx30017z1), .sdata (
                       1'b0), .clk (CLK), .ena (1'b1), .aclr (RST), .sclr (1'b0)
                       , .sload (1'b0)) ;
    cycloneii_lcell_ff reg_RxFSM_6_ (.regout (RxFSM_6_), .datain (RxFSM_1_), .sdata (
                       RxFSM_5_), .clk (CLK), .ena (nx15541z1), .aclr (RST), .sclr (
                       1'b0), .sload (not_Rx_r)) ;
    cycloneii_lcell_ff reg_RxFSM_5_ (.regout (RxFSM_5_), .datain (nx11553z1), .sdata (
                       1'b0), .clk (CLK), .ena (nx15541z1), .aclr (RST), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_RxFSM_3_ (.regout (RxFSM_3_), .datain (nx13547z1), .sdata (
                       1'b0), .clk (CLK), .ena (nx15541z1), .aclr (RST), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_RxFSM_2_ (.regout (RxFSM_2_), .datain (nx14544z1), .sdata (
                       1'b0), .clk (CLK), .ena (nx15541z1), .aclr (RST), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_RxFSM_1_ (.regout (RxFSM_1_), .datain (RxFSM_0_), .sdata (
                       1'b0), .clk (CLK), .ena (nx15541z1), .aclr (RST), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_RxFSM_0_ (.regout (nx34394z2), .datain (nx16538z1), .sdata (
                       1'b0), .clk (CLK), .ena (nx15541z1), .aclr (RST), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_RxErr (.regout (RxErr), .datain (nx15376z1), .sdata (
                       1'b0), .clk (CLK), .ena (1'b1), .aclr (RST), .sclr (1'b0)
                       , .sload (1'b0)) ;
    cycloneii_lcell_ff reg_Dout_7_ (.regout (Dout[7]), .datain (Rx_Reg[7]), .sdata (
                       1'b0), .clk (CLK), .ena (nx30017z1), .aclr (RST), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_Dout_6_ (.regout (Dout[6]), .datain (Rx_Reg[6]), .sdata (
                       1'b0), .clk (CLK), .ena (nx30017z1), .aclr (RST), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_Dout_5_ (.regout (Dout[5]), .datain (Rx_Reg[5]), .sdata (
                       1'b0), .clk (CLK), .ena (nx30017z1), .aclr (RST), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_Dout_4_ (.regout (Dout[4]), .datain (Rx_Reg[4]), .sdata (
                       1'b0), .clk (CLK), .ena (nx30017z1), .aclr (RST), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_Dout_3_ (.regout (Dout[3]), .datain (Rx_Reg[3]), .sdata (
                       1'b0), .clk (CLK), .ena (nx30017z1), .aclr (RST), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_Dout_2_ (.regout (Dout[2]), .datain (Rx_Reg[2]), .sdata (
                       1'b0), .clk (CLK), .ena (nx30017z1), .aclr (RST), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_Dout_1_ (.regout (Dout[1]), .datain (Rx_Reg[1]), .sdata (
                       1'b0), .clk (CLK), .ena (nx30017z1), .aclr (RST), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_Dout_0_ (.regout (Dout[0]), .datain (Rx_Reg[0]), .sdata (
                       1'b0), .clk (CLK), .ena (nx30017z1), .aclr (RST), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff modgen_counter_TxBitCnt_reg_q_3_ (.regout (TxBitCnt[3]), 
                       .datain (nx51917z1), .sdata (1'b0), .clk (CLK), .ena (
                       1'b1), .aclr (RST), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff modgen_counter_TxBitCnt_reg_q_2_ (.regout (TxBitCnt[2]), 
                       .datain (nx50920z1), .sdata (1'b0), .clk (CLK), .ena (
                       1'b1), .aclr (RST), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff modgen_counter_TxBitCnt_reg_q_1_ (.regout (TxBitCnt[1]), 
                       .datain (nx49923z1), .sdata (1'b0), .clk (CLK), .ena (
                       1'b1), .aclr (RST), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff modgen_counter_TxBitCnt_reg_q_0_ (.regout (TxBitCnt[0]), 
                       .datain (nx48926z1), .sdata (1'b0), .clk (CLK), .ena (
                       1'b1), .aclr (RST), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff modgen_counter_RxBitCnt_reg_q_3_ (.regout (RxBitCnt[3]), 
                       .datain (nx8373z1), .sdata (1'b0), .clk (CLK), .ena (1'b1
                       ), .aclr (RST), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff modgen_counter_RxBitCnt_reg_q_2_ (.regout (RxBitCnt[2]), 
                       .datain (nx9370z1), .sdata (1'b0), .clk (CLK), .ena (1'b1
                       ), .aclr (RST), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff modgen_counter_RxBitCnt_reg_q_1_ (.regout (RxBitCnt[1]), 
                       .datain (nx10367z1), .sdata (1'b0), .clk (CLK), .ena (
                       1'b1), .aclr (RST), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff modgen_counter_RxBitCnt_reg_q_0_ (.regout (RxBitCnt[0]), 
                       .datain (nx11364z1), .sdata (1'b0), .clk (CLK), .ena (
                       1'b1), .aclr (RST), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_comb ix50920z52924 (.combout (nx50920z2), .dataa (TopTx), .datab (
                         TxFSM[1]), .datac (1'b1), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix50920z52924.lut_mask = 16'h2222;
    cycloneii_lcell_comb ix61140z52923 (.combout (p_Tx_Reg_14n6ss1_0_), .dataa (
                         nx61140z1), .datab (TxFSM[1]), .datac (TxFSM[0]), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix61140z52923.lut_mask = 16'hf8f8;
    cycloneii_lcell_comb ix28624z52923 (.combout (NOT_Tx_Reg_14n6ss1_1_), .dataa (
                         Din[0]), .datab (nx28624z1), .datac (TxFSM[1]), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix28624z52923.lut_mask = 16'hc5c5;
    cycloneii_lcell_comb ix29621z52923 (.combout (NOT_Tx_Reg_14n6ss1_2_), .dataa (
                         Din[1]), .datab (nx29621z1), .datac (TxFSM[1]), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix29621z52923.lut_mask = 16'hc5c5;
    cycloneii_lcell_comb ix30618z52923 (.combout (NOT_Tx_Reg_14n6ss1_3_), .dataa (
                         Din[2]), .datab (nx30618z1), .datac (TxFSM[1]), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix30618z52923.lut_mask = 16'hc5c5;
    cycloneii_lcell_comb ix31615z52923 (.combout (NOT_Tx_Reg_14n6ss1_4_), .dataa (
                         Din[3]), .datab (nx31615z1), .datac (TxFSM[1]), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix31615z52923.lut_mask = 16'hc5c5;
    cycloneii_lcell_comb ix32612z52923 (.combout (NOT_Tx_Reg_14n6ss1_5_), .dataa (
                         Din[5]), .datab (nx32612z1), .datac (TxFSM[1]), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix32612z52923.lut_mask = 16'hc5c5;
    cycloneii_lcell_comb ix33609z52923 (.combout (NOT_Tx_Reg_14n6ss1_6_), .dataa (
                         Din[5]), .datab (nx33609z1), .datac (TxFSM[1]), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix33609z52923.lut_mask = 16'hc5c5;
    cycloneii_lcell_comb ix34606z52923 (.combout (NOT_Tx_Reg_14n6ss1_7_), .dataa (
                         Din[7]), .datab (nx34606z1), .datac (TxFSM[1]), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix34606z52923.lut_mask = 16'hc5c5;
    cycloneii_lcell_comb ix35603z52923 (.combout (NOT_Tx_Reg_14n6ss1_8_), .dataa (
                         Din[7]), .datab (TxFSM[1]), .datac (1'b1), .datad (1'b1
                         ), .cin (1'b0)) ;
                         
                         defparam ix35603z52923.lut_mask = 16'h1111;
    cycloneii_lcell_comb ix65151z52923 (.combout (nx65151z1), .dataa (nx34394z2)
                         , .datab (nx34394z3), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix65151z52923.lut_mask = 16'hdddd;
    cycloneii_lcell_comb ix32400z52931 (.combout (nx32400z9), .dataa (TxDiv[10])
                         , .datab (TxDiv[9]), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix32400z52931.lut_mask = 16'h1111;
    cycloneii_lcell_comb ix32400z52930 (.combout (nx32400z8), .dataa (
                         TxDivisor_5_), .datab (TxDiv[11]), .datac (TxDiv[0]), .datad (
                         nx32400z9), .cin (1'b0)) ;
                         
                         defparam ix32400z52930.lut_mask = 16'h0100;
    cycloneii_lcell_comb ix8373z52925 (.combout (nx8373z2), .dataa (RxBitCnt[3])
                         , .datab (RxBitCnt[2]), .datac (RxBitCnt[1]), .datad (
                         RxBitCnt[0]), .cin (1'b0)) ;
                         
                         defparam ix8373z52925.lut_mask = 16'h6aaa;
    cycloneii_lcell_comb ix51917z52926 (.combout (nx51917z4), .dataa (
                         TxBitCnt[3]), .datab (TxBitCnt[2]), .datac (nx50920z2)
                         , .datad (nx50920z3), .cin (1'b0)) ;
                         
                         defparam ix51917z52926.lut_mask = 16'hf0f1;
    cycloneii_lcell_comb ix4608z52925 (.combout (nx4608z3), .dataa (TxBitCnt[3])
                         , .datab (TxBitCnt[2]), .datac (TxBitCnt[1]), .datad (
                         TxBitCnt[0]), .cin (1'b0)) ;
                         
                         defparam ix4608z52925.lut_mask = 16'hfeff;
    cycloneii_lcell_comb ix4608z52924 (.combout (nx4608z2), .dataa (LD), .datab (
                         TopTx), .datac (TxFSM[1]), .datad (TxFSM[0]), .cin (
                         1'b0)) ;
                         defparam ix4608z52924.lut_mask = 16'h3335;
    cycloneii_lcell_comb ix15541z52925 (.combout (nx15541z2), .dataa (Rx), .datab (
                         TopRx), .datac (RxFSM_6_), .datad (nx34394z2), .cin (
                         1'b0)) ;
                         defparam ix15541z52925.lut_mask = 16'hac00;
    cycloneii_lcell_comb ix32400z52929 (.combout (nx32400z7), .dataa (TxDiv[4])
                         , .datab (TxDiv[3]), .datac (TxDiv[2]), .datad (
                         TxDiv[1]), .cin (1'b0)) ;
                         
                         defparam ix32400z52929.lut_mask = 16'h0001;
    cycloneii_lcell_comb ix32400z52927 (.combout (nx32400z5), .dataa (TxDiv[4])
                         , .datab (TxDiv[3]), .datac (TxDiv[2]), .datad (
                         TxDiv[1]), .cin (1'b0)) ;
                         
                         defparam ix32400z52927.lut_mask = 16'h0002;
    cycloneii_lcell_comb ix32400z52928 (.combout (nx32400z6), .dataa (TxDiv[8])
                         , .datab (TxDiv[7]), .datac (TxDiv[6]), .datad (
                         TxDiv[5]), .cin (1'b0)) ;
                         
                         defparam ix32400z52928.lut_mask = 16'h0001;
    cycloneii_lcell_comb ix15541z52926 (.combout (nx15541z3), .dataa (p_rxflex)
                         , .datab (RxFSM_6_), .datac (p_nrst_int_dup_8), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix15541z52926.lut_mask = 16'hb3b3;
    cycloneii_lcell_comb ix32400z52926 (.combout (nx32400z4), .dataa (TxDiv[8])
                         , .datab (TxDiv[7]), .datac (TxDiv[6]), .datad (
                         TxDiv[5]), .cin (1'b0)) ;
                         
                         defparam ix32400z52926.lut_mask = 16'h0800;
    cycloneii_lcell_comb ix32400z52925 (.combout (nx32400z3), .dataa (
                         TxDivisor_5_), .datab (TxDiv[11]), .datac (TxDiv[10]), 
                         .datad (TxDiv[9]), .cin (1'b0)) ;
                         
                         defparam ix32400z52925.lut_mask = 16'h0002;
    cycloneii_lcell_comb ix32400z52924 (.combout (nx32400z2), .dataa (TxDiv[0])
                         , .datab (nx32400z3), .datac (nx32400z4), .datad (
                         nx32400z5), .cin (1'b0)) ;
                         
                         defparam ix32400z52924.lut_mask = 16'h8000;
    cycloneii_lcell_comb ix34394z52929 (.combout (nx34394z8), .dataa (RxDiv[3])
                         , .datab (RxDiv[2]), .datac (RxDiv[1]), .datad (
                         RxDiv[0]), .cin (1'b0)) ;
                         
                         defparam ix34394z52929.lut_mask = 16'h0001;
    cycloneii_lcell_comb ix34394z52931 (.combout (nx34394z10), .dataa (RxDiv[3])
                         , .datab (RxDiv[2]), .datac (RxDiv[1]), .datad (
                         RxDiv[0]), .cin (1'b0)) ;
                         
                         defparam ix34394z52931.lut_mask = 16'h0002;
    cycloneii_lcell_comb ix34394z52928 (.combout (nx34394z7), .dataa (RxDiv[7])
                         , .datab (RxDiv[6]), .datac (RxDiv[5]), .datad (
                         RxDiv[4]), .cin (1'b0)) ;
                         
                         defparam ix34394z52928.lut_mask = 16'h0001;
    cycloneii_lcell_comb ix34394z52930 (.combout (nx34394z9), .dataa (RxDiv[7])
                         , .datab (RxDiv[6]), .datac (RxDiv[5]), .datad (
                         RxDiv[4]), .cin (1'b0)) ;
                         
                         defparam ix34394z52930.lut_mask = 16'h0800;
    cycloneii_lcell_comb ix34394z52927 (.combout (nx34394z6), .dataa (
                         TxDivisor_5_), .datab (RxDiv[10]), .datac (RxDiv[9]), .datad (
                         RxDiv[8]), .cin (1'b0)) ;
                         
                         defparam ix34394z52927.lut_mask = 16'h0001;
    cycloneii_lcell_comb ix34394z52926 (.combout (nx34394z5), .dataa (nx34394z6)
                         , .datab (nx34394z7), .datac (nx34394z8), .datad (1'b1)
                         , .cin (1'b0)) ;
                         
                         defparam ix34394z52926.lut_mask = 16'h8080;
    cycloneii_lcell_comb ix34394z52925 (.combout (nx34394z4), .dataa (
                         TxDivisor_5_), .datab (RxDiv[10]), .datac (RxDiv[9]), .datad (
                         RxDiv[8]), .cin (1'b0)) ;
                         
                         defparam ix34394z52925.lut_mask = 16'h0002;
    cycloneii_lcell_comb ix15376z52923 (.combout (nx15376z1), .dataa (RxErr), .datab (
                         RxRDY), .datac (RxFSM_6_), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix15376z52923.lut_mask = 16'hf2f2;
    cycloneii_lcell_comb ix11364z52923 (.combout (nx11364z1), .dataa (TopRx), .datab (
                         RxBitCnt[0]), .datac (RxFSM_3_), .datad (nx34394z2), .cin (
                         1'b0)) ;
                         defparam ix11364z52923.lut_mask = 16'h6c40;
    cycloneii_lcell_comb ix10367z52923 (.combout (nx10367z1), .dataa (
                         RxBitCnt[1]), .datab (RxBitCnt[0]), .datac (nx34394z2)
                         , .datad (not_rtlc17_X_0_n360), .cin (1'b0)) ;
                         
                         defparam ix10367z52923.lut_mask = 16'h60aa;
    cycloneii_lcell_comb ix9370z52923 (.combout (nx9370z1), .dataa (RxBitCnt[2])
                         , .datab (nx34394z2), .datac (not_rtlc17_X_0_n360), .datad (
                         nx9370z2), .cin (1'b0)) ;
                         
                         defparam ix9370z52923.lut_mask = 16'h4a8a;
    cycloneii_lcell_comb ix8373z52923 (.combout (nx8373z1), .dataa (RxBitCnt[3])
                         , .datab (nx34394z2), .datac (not_rtlc17_X_0_n360), .datad (
                         nx8373z2), .cin (1'b0)) ;
                         
                         defparam ix8373z52923.lut_mask = 16'hca0a;
    cycloneii_lcell_comb ix48926z52923 (.combout (nx48926z1), .dataa (TopTx), .datab (
                         TxBitCnt[0]), .datac (TxFSM[1]), .datad (TxFSM[0]), .cin (
                         1'b0)) ;
                         defparam ix48926z52923.lut_mask = 16'hce6c;
    cycloneii_lcell_comb ix49923z52923 (.combout (nx49923z1), .dataa (
                         TxBitCnt[1]), .datab (TxBitCnt[0]), .datac (nx50920z2)
                         , .datad (nx51917z2), .cin (1'b0)) ;
                         
                         defparam ix49923z52923.lut_mask = 16'h09aa;
    cycloneii_lcell_comb ix50920z52923 (.combout (nx50920z1), .dataa (
                         TxBitCnt[2]), .datab (nx50920z2), .datac (nx51917z2), .datad (
                         nx50920z3), .cin (1'b0)) ;
                         
                         defparam ix50920z52923.lut_mask = 16'h2a1a;
    cycloneii_lcell_comb ix51917z52923 (.combout (nx51917z1), .dataa (
                         TxBitCnt[3]), .datab (nx51917z2), .datac (nx51917z3), .datad (
                         nx51917z4), .cin (1'b0)) ;
                         
                         defparam ix51917z52923.lut_mask = 16'heea2;
    cycloneii_lcell_comb ix61812z52923 (.combout (p_NOT_rtlcn2), .dataa (LD), .datab (
                         TopTx), .datac (TxFSM[1]), .datad (TxFSM[0]), .cin (
                         1'b0)) ;
                         defparam ix61812z52923.lut_mask = 16'h0cca;
    cycloneii_lcell_comb ix9370z52924 (.combout (nx9370z2), .dataa (RxBitCnt[1])
                         , .datab (RxBitCnt[0]), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix9370z52924.lut_mask = 16'h8888;
    cycloneii_lcell_comb ix51917z52925 (.combout (nx51917z3), .dataa (
                         TxBitCnt[2]), .datab (TxBitCnt[1]), .datac (TxBitCnt[0]
                         ), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix51917z52925.lut_mask = 16'hfefe;
    cycloneii_lcell_comb ix50920z52925 (.combout (nx50920z3), .dataa (
                         TxBitCnt[1]), .datab (TxBitCnt[0]), .datac (1'b1), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix50920z52925.lut_mask = 16'heeee;
    cycloneii_lcell_comb ix51917z52924 (.combout (nx51917z2), .dataa (TopTx), .datab (
                         TxFSM[1]), .datac (TxFSM[0]), .datad (1'b1), .cin (1'b0
                         )) ;
                         defparam ix51917z52924.lut_mask = 16'h2828;
    cycloneii_lcell_comb ix4608z52923 (.combout (nx4608z1), .dataa (TxFSM[1]), .datab (
                         TxFSM[0]), .datac (nx4608z2), .datad (nx4608z3), .cin (
                         1'b0)) ;
                         defparam ix4608z52923.lut_mask = 16'hc1c3;
    cycloneii_lcell_comb ix30017z52923 (.combout (nx30017z1), .dataa (TopRx), .datab (
                         not_Rx_r), .datac (RxFSM_5_), .datad (1'b1), .cin (1'b0
                         )) ;
                         defparam ix30017z52923.lut_mask = 16'h2020;
    cycloneii_lcell_comb ix13547z52924 (.combout (nx13547z2), .dataa (
                         RxBitCnt[3]), .datab (RxBitCnt[2]), .datac (RxBitCnt[1]
                         ), .datad (RxBitCnt[0]), .cin (1'b0)) ;
                         
                         defparam ix13547z52924.lut_mask = 16'h0002;
    cycloneii_lcell_comb ix32400z52923 (.combout (nx32400z1), .dataa (nx32400z2)
                         , .datab (nx32400z6), .datac (nx32400z7), .datad (
                         nx32400z8), .cin (1'b0)) ;
                         
                         defparam ix32400z52923.lut_mask = 16'heaaa;
    cycloneii_lcell_comb ix34394z52924 (.combout (nx34394z3), .dataa (nx34394z4)
                         , .datab (nx34394z5), .datac (nx34394z9), .datad (
                         nx34394z10), .cin (1'b0)) ;
                         
                         defparam ix34394z52924.lut_mask = 16'heccc;
    cycloneii_lcell_comb ix34394z52923 (.combout (nx34394z1), .dataa (nx34394z2)
                         , .datab (nx34394z3), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix34394z52923.lut_mask = 16'h8888;
    cycloneii_lcell_comb ix11553z52923 (.combout (nx11553z1), .dataa (RxFSM_2_)
                         , .datab (nx13547z2), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix11553z52923.lut_mask = 16'h8888;
    cycloneii_lcell_comb ix16538z52923 (.combout (nx16538z1), .dataa (not_Rx_r)
                         , .datab (RxFSM_6_), .datac (RxFSM_5_), .datad (1'b1), 
                         .cin (1'b0)) ;
                         
                         defparam ix16538z52923.lut_mask = 16'h2323;
    cycloneii_lcell_comb ix14544z52923 (.combout (nx14544z1), .dataa (not_Rx_r)
                         , .datab (RxFSM_3_), .datac (RxFSM_1_), .datad (1'b1), 
                         .cin (1'b0)) ;
                         
                         defparam ix14544z52923.lut_mask = 16'hecec;
    cycloneii_lcell_comb ix13547z52923 (.combout (nx13547z1), .dataa (RxFSM_2_)
                         , .datab (nx13547z2), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix13547z52923.lut_mask = 16'h2222;
    cycloneii_lcell_comb ix15541z52924 (.combout (nx15541z1), .dataa (not_Rx_r)
                         , .datab (nx34394z2), .datac (nx15541z2), .datad (
                         nx15541z3), .cin (1'b0)) ;
                         
                         defparam ix15541z52924.lut_mask = 16'hf2f0;
    cycloneii_lcell_comb ix54636z52924 (.combout (nx54636z1), .dataa (TopRx), .datab (
                         RxFSM_3_), .datac (1'b1), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix54636z52924.lut_mask = 16'h8888;
    cycloneii_lcell_comb ix8373z52924 (.combout (not_rtlc17_X_0_n360), .dataa (
                         TopRx), .datab (RxFSM_3_), .datac (nx34394z2), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix8373z52924.lut_mask = 16'h8b8b;
    cycloneii_lcell_comb ix35603z52924 (.combout (nx35603z1), .dataa (LD), .datab (
                         TopTx), .datac (TxFSM[1]), .datad (TxFSM[0]), .cin (
                         1'b0)) ;
                         defparam ix35603z52924.lut_mask = 16'h00ca;
    cycloneii_lcell_comb ix5605z52923 (.combout (nx5605z1), .dataa (TxFSM[0]), .datab (
                         TxFSM[1]), .datac (TopTx), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix5605z52923.lut_mask = 16'h6c6c;
    cycloneii_lcell_comb ix57064z52923 (.combout (NOT_Rx), .dataa (p_rxflex), .datab (
                         p_nrst_int_dup_8), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix57064z52923.lut_mask = 16'h7777;
endmodule


module modgen_counter_12_0 ( clock, q, clk_en, aclear, sload, data, aset, sclear, 
                             updn, cnt_en ) ;

    input clock ;
    output [11:0]q ;
    input clk_en ;
    input aclear ;
    input sload ;
    input [11:0]data ;
    input aset ;
    input sclear ;
    input updn ;
    input cnt_en ;

    wire nx51271z1, nx18093z22, nx52268z1, nx18093z20, nx53265z1, nx18093z18, 
         nx54262z1, nx18093z16, nx55259z1, nx18093z14, nx56256z1, nx18093z12, 
         nx57253z1, nx18093z10, nx58250z1, nx18093z8, nx59247z1, nx18093z6, 
         nx60244z1, nx18093z4, nx17096z1, nx18093z2, nx18093z1, 
         nx_modgen_counter_12_0_vcc_net;
    wire [61:0] xmplr_dummy ;




    cycloneii_lcell_ff reg_q_9_ (.regout (q[9]), .datain (nx60244z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_8_ (.regout (q[8]), .datain (nx59247z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_7_ (.regout (q[7]), .datain (nx58250z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_6_ (.regout (q[6]), .datain (nx57253z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_5_ (.regout (q[5]), .datain (nx56256z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_4_ (.regout (q[4]), .datain (nx55259z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_3_ (.regout (q[3]), .datain (nx54262z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_2_ (.regout (q[2]), .datain (nx53265z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_11_ (.regout (q[11]), .datain (nx18093z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_10_ (.regout (q[10]), .datain (nx17096z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_1_ (.regout (q[1]), .datain (nx52268z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_0_ (.regout (q[0]), .datain (nx51271z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_comb ix18093z52933 (.combout (nx53265z1), .cout (nx18093z18)
                         , .dataa (q[2]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_12_0_vcc_net), .cin (nx18093z20)) ;
                         
                         defparam ix18093z52933.lut_mask = 16'h5aa0;
                         
                         defparam ix18093z52933.sum_lutc_input = "cin";
    assign nx_modgen_counter_12_0_vcc_net = 1 ;
    cycloneii_lcell_comb ix18093z52923 (.combout (nx18093z1), .dataa (q[11]), .datab (
                         1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_12_0_vcc_net), .cin (nx18093z2)) ;
                         
                         defparam ix18093z52923.lut_mask = 16'h5a00;
                         
                         defparam ix18093z52923.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix18093z52925 (.combout (nx17096z1), .cout (nx18093z2)
                         , .dataa (q[10]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_12_0_vcc_net), .cin (nx18093z4)) ;
                         
                         defparam ix18093z52925.lut_mask = 16'h5aa0;
                         
                         defparam ix18093z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix18093z52926 (.combout (nx60244z1), .cout (nx18093z4)
                         , .dataa (q[9]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_12_0_vcc_net), .cin (nx18093z6)) ;
                         
                         defparam ix18093z52926.lut_mask = 16'h5aa0;
                         
                         defparam ix18093z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix18093z52927 (.combout (nx59247z1), .cout (nx18093z6)
                         , .dataa (q[8]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_12_0_vcc_net), .cin (nx18093z8)) ;
                         
                         defparam ix18093z52927.lut_mask = 16'h5aa0;
                         
                         defparam ix18093z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix18093z52928 (.combout (nx58250z1), .cout (nx18093z8)
                         , .dataa (q[7]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_12_0_vcc_net), .cin (nx18093z10)) ;
                         
                         defparam ix18093z52928.lut_mask = 16'h5aa0;
                         
                         defparam ix18093z52928.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix18093z52934 (.combout (nx52268z1), .cout (nx18093z20)
                         , .dataa (q[1]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_12_0_vcc_net), .cin (nx18093z22)) ;
                         
                         defparam ix18093z52934.lut_mask = 16'h5aa0;
                         
                         defparam ix18093z52934.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix18093z52929 (.combout (nx57253z1), .cout (nx18093z10)
                         , .dataa (q[6]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_12_0_vcc_net), .cin (nx18093z12)) ;
                         
                         defparam ix18093z52929.lut_mask = 16'h5aa0;
                         
                         defparam ix18093z52929.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix18093z52930 (.combout (nx56256z1), .cout (nx18093z12)
                         , .dataa (q[5]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_12_0_vcc_net), .cin (nx18093z14)) ;
                         
                         defparam ix18093z52930.lut_mask = 16'h5aa0;
                         
                         defparam ix18093z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix18093z52931 (.combout (nx55259z1), .cout (nx18093z14)
                         , .dataa (q[4]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_12_0_vcc_net), .cin (nx18093z16)) ;
                         
                         defparam ix18093z52931.lut_mask = 16'h5aa0;
                         
                         defparam ix18093z52931.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix18093z52932 (.combout (nx54262z1), .cout (nx18093z16)
                         , .dataa (q[3]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_12_0_vcc_net), .cin (nx18093z18)) ;
                         
                         defparam ix18093z52932.lut_mask = 16'h5aa0;
                         
                         defparam ix18093z52932.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix18093z52935 (.combout (nx51271z1), .cout (nx18093z22)
                         , .dataa (q[0]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_12_0_vcc_net), .cin (1'b0)) ;
                         
                         defparam ix18093z52935.lut_mask = 16'h55aa;
endmodule


module modgen_counter_11_0 ( clock, q, clk_en, aclear, sload, data, aset, sclear, 
                             updn, cnt_en ) ;

    input clock ;
    output [10:0]q ;
    input clk_en ;
    input aclear ;
    input sload ;
    input [10:0]data ;
    input aset ;
    input sclear ;
    input updn ;
    input cnt_en ;

    wire nx51271z1, nx17096z20, nx52268z1, nx17096z18, nx53265z1, nx17096z16, 
         nx54262z1, nx17096z14, nx55259z1, nx17096z12, nx56256z1, nx17096z10, 
         nx57253z1, nx17096z8, nx58250z1, nx17096z6, nx59247z1, nx17096z4, 
         nx60244z1, nx17096z2, nx17096z1, nx_modgen_counter_11_0_vcc_net;
    wire [56:0] xmplr_dummy ;




    cycloneii_lcell_ff reg_q_9_ (.regout (q[9]), .datain (nx60244z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_8_ (.regout (q[8]), .datain (nx59247z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_7_ (.regout (q[7]), .datain (nx58250z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_6_ (.regout (q[6]), .datain (nx57253z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_5_ (.regout (q[5]), .datain (nx56256z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_4_ (.regout (q[4]), .datain (nx55259z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_3_ (.regout (q[3]), .datain (nx54262z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_2_ (.regout (q[2]), .datain (nx53265z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_10_ (.regout (q[10]), .datain (nx17096z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_1_ (.regout (q[1]), .datain (nx52268z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_0_ (.regout (q[0]), .datain (nx51271z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_comb ix17096z52932 (.combout (nx53265z1), .cout (nx17096z16)
                         , .dataa (q[2]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_11_0_vcc_net), .cin (nx17096z18)) ;
                         
                         defparam ix17096z52932.lut_mask = 16'h5aa0;
                         
                         defparam ix17096z52932.sum_lutc_input = "cin";
    assign nx_modgen_counter_11_0_vcc_net = 1 ;
    cycloneii_lcell_comb ix17096z52923 (.combout (nx17096z1), .dataa (q[10]), .datab (
                         1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_11_0_vcc_net), .cin (nx17096z2)) ;
                         
                         defparam ix17096z52923.lut_mask = 16'h5a00;
                         
                         defparam ix17096z52923.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix17096z52925 (.combout (nx60244z1), .cout (nx17096z2)
                         , .dataa (q[9]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_11_0_vcc_net), .cin (nx17096z4)) ;
                         
                         defparam ix17096z52925.lut_mask = 16'h5aa0;
                         
                         defparam ix17096z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix17096z52926 (.combout (nx59247z1), .cout (nx17096z4)
                         , .dataa (q[8]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_11_0_vcc_net), .cin (nx17096z6)) ;
                         
                         defparam ix17096z52926.lut_mask = 16'h5aa0;
                         
                         defparam ix17096z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix17096z52927 (.combout (nx58250z1), .cout (nx17096z6)
                         , .dataa (q[7]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_11_0_vcc_net), .cin (nx17096z8)) ;
                         
                         defparam ix17096z52927.lut_mask = 16'h5aa0;
                         
                         defparam ix17096z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix17096z52933 (.combout (nx52268z1), .cout (nx17096z18)
                         , .dataa (q[1]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_11_0_vcc_net), .cin (nx17096z20)) ;
                         
                         defparam ix17096z52933.lut_mask = 16'h5aa0;
                         
                         defparam ix17096z52933.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix17096z52928 (.combout (nx57253z1), .cout (nx17096z8)
                         , .dataa (q[6]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_11_0_vcc_net), .cin (nx17096z10)) ;
                         
                         defparam ix17096z52928.lut_mask = 16'h5aa0;
                         
                         defparam ix17096z52928.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix17096z52929 (.combout (nx56256z1), .cout (nx17096z10)
                         , .dataa (q[5]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_11_0_vcc_net), .cin (nx17096z12)) ;
                         
                         defparam ix17096z52929.lut_mask = 16'h5aa0;
                         
                         defparam ix17096z52929.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix17096z52930 (.combout (nx55259z1), .cout (nx17096z12)
                         , .dataa (q[4]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_11_0_vcc_net), .cin (nx17096z14)) ;
                         
                         defparam ix17096z52930.lut_mask = 16'h5aa0;
                         
                         defparam ix17096z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix17096z52931 (.combout (nx54262z1), .cout (nx17096z14)
                         , .dataa (q[3]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_11_0_vcc_net), .cin (nx17096z16)) ;
                         
                         defparam ix17096z52931.lut_mask = 16'h5aa0;
                         
                         defparam ix17096z52931.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix17096z52934 (.combout (nx51271z1), .cout (nx17096z20)
                         , .dataa (q[0]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_11_0_vcc_net), .cin (1'b0)) ;
                         
                         defparam ix17096z52934.lut_mask = 16'h55aa;
endmodule

