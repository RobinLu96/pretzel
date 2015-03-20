//
// Verilog description for cell top_kirsch, 
// 03/20/15 14:39:47
//
// Precision RTL Synthesis, 2008a.47//


module top_kirsch ( nrst, clk, rxflex, txflex, o_sevenseg, o_mode, o_nrst, 
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
    wire [7:0]rowcount;
    wire nx35935z1, nrst_int, clk_int, rxflex_int, o_nrst_dup0;
    wire [16:16]debug_led_red_dup0;
    wire o_sevenseg_dup0_7_, nx59584z1, nx60581z1, nx61578z1, nx63572z1, 
         nx25683z1, nx26680z1, nx27677z1, nx29671z1, nx57590z1, nx58587z1, 
         nx62575z1, nx30z1, nx1027z1, nx28674z1, Tx_Reg_14n6ss1_0__dup_4, 
         NOT_rtlcn2_dup_5, nx41851z1, nx42848z1, nx43845z1, nx44842z1, nx45839z1, 
         nx46836z1, nx47833z1, nx49827z1, nx50824z1, nx62540z1, nx63537z1, 
         nx64534z1, nx65531z1, nx992z1, nx21351z1, nx21351z2, nx35935z2;
    wire [1676:0] xmplr_dummy ;




    uw_uart u_uw_uart (.clk (clk_int), .rst (o_nrst_dup0), .kirschout (kirschout
            ), .kirschdir ({dir[2],dir[1],dir[0]}), .o_valid (o_valid), .datain (
            {pixel[7],pixel[6],pixel[5],pixel[4],pixel[3],pixel[2],pixel[1],
            pixel[0]}), .o_pixavail (pixavail), .rxflex (rxflex_int), .p_rtlcs6 (
            nx35935z1), .p_Tx_Reg_14n6ss1_0_ (Tx_Reg_14n6ss1_0__dup_4), .p_NOT_rtlcn2 (
            NOT_rtlcn2_dup_5), .p_o_mode_dup0_1_ (o_mode_dup0[1]), .p_o_mode_dup0_0_ (
            o_mode_dup0[0]), .p_nrst_int (nrst_int), .px34 (nx35935z2)) ;
    kirsch u_kirsch (.i_clock (clk_int), .i_reset (o_nrst_dup0), .i_valid (
           pixavail), .i_pixel ({pixel[7],pixel[6],pixel[5],pixel[4],pixel[3],
           pixel[2],pixel[1],pixel[0]}), .o_valid (o_valid), .o_edge (kirschout)
           , .o_dir ({dir[2],dir[1],dir[0]}), .o_mode ({o_mode_dup0[1],
           o_mode_dup0[0]}), .o_row ({rowcount[7],rowcount[6],rowcount[5],
           rowcount[4],rowcount[3],rowcount[2],rowcount[1],rowcount[0]}), .p_rtlcs6 (
           nx35935z1), .p_nrst_int (nrst_int), .px34 (nx35935z2)) ;
    assign o_nrst_dup0 = ~nrst_int ;
    assign debug_led_red_dup0[16] = 0 ;
    assign o_sevenseg_dup0_7_ = 1 ;
    assign nx21351z1 = ~nx21351z2 ;
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
                 debug_led_red_dup0[16]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_5_obuf_6_.operation_mode = "output";
                 
                 defparam debug_sevenseg_5_obuf_6_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_5_obuf_6_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_5_obuf_6_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_5_obuf_6_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_5_obuf_6_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_5_obuf_5_ (.padio (debug_sevenseg_5[5]), .datain (
                 o_sevenseg_dup0_7_), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_5_obuf_5_.operation_mode = "output";
                 
                 defparam debug_sevenseg_5_obuf_5_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_5_obuf_5_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_5_obuf_5_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_5_obuf_5_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_5_obuf_5_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_5_obuf_4_ (.padio (debug_sevenseg_5[4]), .datain (
                 o_sevenseg_dup0_7_), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_5_obuf_4_.operation_mode = "output";
                 
                 defparam debug_sevenseg_5_obuf_4_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_5_obuf_4_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_5_obuf_4_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_5_obuf_4_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_5_obuf_4_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_5_obuf_3_ (.padio (debug_sevenseg_5[3]), .datain (
                 debug_led_red_dup0[16]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_5_obuf_3_.operation_mode = "output";
                 
                 defparam debug_sevenseg_5_obuf_3_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_5_obuf_3_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_5_obuf_3_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_5_obuf_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_5_obuf_3_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_5_obuf_2_ (.padio (debug_sevenseg_5[2]), .datain (
                 debug_led_red_dup0[16]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_5_obuf_2_.operation_mode = "output";
                 
                 defparam debug_sevenseg_5_obuf_2_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_5_obuf_2_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_5_obuf_2_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_5_obuf_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_5_obuf_2_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_5_obuf_1_ (.padio (debug_sevenseg_5[1]), .datain (
                 debug_led_red_dup0[16]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_5_obuf_1_.operation_mode = "output";
                 
                 defparam debug_sevenseg_5_obuf_1_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_5_obuf_1_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_5_obuf_1_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_5_obuf_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_5_obuf_1_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_5_obuf_0_ (.padio (debug_sevenseg_5[0]), .datain (
                 debug_led_red_dup0[16]), .oe (1'b1), .outclk (1'b0), .outclkena (
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
                 debug_led_red_dup0[16]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_4_obuf_6_.operation_mode = "output";
                 
                 defparam debug_sevenseg_4_obuf_6_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_4_obuf_6_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_4_obuf_6_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_4_obuf_6_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_4_obuf_6_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_4_obuf_5_ (.padio (debug_sevenseg_4[5]), .datain (
                 o_sevenseg_dup0_7_), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_4_obuf_5_.operation_mode = "output";
                 
                 defparam debug_sevenseg_4_obuf_5_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_4_obuf_5_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_4_obuf_5_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_4_obuf_5_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_4_obuf_5_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_4_obuf_4_ (.padio (debug_sevenseg_4[4]), .datain (
                 o_sevenseg_dup0_7_), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_4_obuf_4_.operation_mode = "output";
                 
                 defparam debug_sevenseg_4_obuf_4_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_4_obuf_4_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_4_obuf_4_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_4_obuf_4_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_4_obuf_4_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_4_obuf_3_ (.padio (debug_sevenseg_4[3]), .datain (
                 debug_led_red_dup0[16]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_4_obuf_3_.operation_mode = "output";
                 
                 defparam debug_sevenseg_4_obuf_3_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_4_obuf_3_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_4_obuf_3_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_4_obuf_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_4_obuf_3_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_4_obuf_2_ (.padio (debug_sevenseg_4[2]), .datain (
                 debug_led_red_dup0[16]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_4_obuf_2_.operation_mode = "output";
                 
                 defparam debug_sevenseg_4_obuf_2_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_4_obuf_2_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_4_obuf_2_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_4_obuf_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_4_obuf_2_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_4_obuf_1_ (.padio (debug_sevenseg_4[1]), .datain (
                 debug_led_red_dup0[16]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
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
                 debug_led_red_dup0[16]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_3_obuf_6_.operation_mode = "output";
                 
                 defparam debug_sevenseg_3_obuf_6_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_3_obuf_6_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_3_obuf_6_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_3_obuf_6_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_3_obuf_6_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_3_obuf_5_ (.padio (debug_sevenseg_3[5]), .datain (
                 o_sevenseg_dup0_7_), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_3_obuf_5_.operation_mode = "output";
                 
                 defparam debug_sevenseg_3_obuf_5_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_3_obuf_5_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_3_obuf_5_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_3_obuf_5_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_3_obuf_5_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_3_obuf_4_ (.padio (debug_sevenseg_3[4]), .datain (
                 o_sevenseg_dup0_7_), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_3_obuf_4_.operation_mode = "output";
                 
                 defparam debug_sevenseg_3_obuf_4_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_3_obuf_4_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_3_obuf_4_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_3_obuf_4_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_3_obuf_4_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_3_obuf_3_ (.padio (debug_sevenseg_3[3]), .datain (
                 debug_led_red_dup0[16]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_3_obuf_3_.operation_mode = "output";
                 
                 defparam debug_sevenseg_3_obuf_3_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_3_obuf_3_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_3_obuf_3_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_3_obuf_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_3_obuf_3_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_3_obuf_2_ (.padio (debug_sevenseg_3[2]), .datain (
                 debug_led_red_dup0[16]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_3_obuf_2_.operation_mode = "output";
                 
                 defparam debug_sevenseg_3_obuf_2_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_3_obuf_2_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_3_obuf_2_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_3_obuf_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_3_obuf_2_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_3_obuf_1_ (.padio (debug_sevenseg_3[1]), .datain (
                 debug_led_red_dup0[16]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_3_obuf_1_.operation_mode = "output";
                 
                 defparam debug_sevenseg_3_obuf_1_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_3_obuf_1_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_3_obuf_1_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_3_obuf_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_3_obuf_1_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_3_obuf_0_ (.padio (debug_sevenseg_3[0]), .datain (
                 debug_led_red_dup0[16]), .oe (1'b1), .outclk (1'b0), .outclkena (
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
                 debug_led_red_dup0[16]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_2_obuf_6_.operation_mode = "output";
                 
                 defparam debug_sevenseg_2_obuf_6_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_2_obuf_6_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_2_obuf_6_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_2_obuf_6_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_2_obuf_6_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_2_obuf_5_ (.padio (debug_sevenseg_2[5]), .datain (
                 debug_led_red_dup0[16]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_2_obuf_5_.operation_mode = "output";
                 
                 defparam debug_sevenseg_2_obuf_5_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_2_obuf_5_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_2_obuf_5_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_2_obuf_5_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_2_obuf_5_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_2_obuf_4_ (.padio (debug_sevenseg_2[4]), .datain (
                 debug_led_red_dup0[16]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_2_obuf_4_.operation_mode = "output";
                 
                 defparam debug_sevenseg_2_obuf_4_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_2_obuf_4_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_2_obuf_4_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_2_obuf_4_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_2_obuf_4_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_2_obuf_3_ (.padio (debug_sevenseg_2[3]), .datain (
                 debug_led_red_dup0[16]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_2_obuf_3_.operation_mode = "output";
                 
                 defparam debug_sevenseg_2_obuf_3_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_2_obuf_3_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_2_obuf_3_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_2_obuf_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_2_obuf_3_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_2_obuf_2_ (.padio (debug_sevenseg_2[2]), .datain (
                 o_sevenseg_dup0_7_), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_2_obuf_2_.operation_mode = "output";
                 
                 defparam debug_sevenseg_2_obuf_2_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_2_obuf_2_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_2_obuf_2_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_2_obuf_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_2_obuf_2_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_2_obuf_1_ (.padio (debug_sevenseg_2[1]), .datain (
                 o_sevenseg_dup0_7_), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_2_obuf_1_.operation_mode = "output";
                 
                 defparam debug_sevenseg_2_obuf_1_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_2_obuf_1_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_2_obuf_1_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_2_obuf_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_2_obuf_1_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_2_obuf_0_ (.padio (debug_sevenseg_2[0]), .datain (
                 debug_led_red_dup0[16]), .oe (1'b1), .outclk (1'b0), .outclkena (
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
                 debug_led_red_dup0[16]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_1_obuf_6_.operation_mode = "output";
                 
                 defparam debug_sevenseg_1_obuf_6_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_1_obuf_6_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_1_obuf_6_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_1_obuf_6_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_1_obuf_6_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_1_obuf_5_ (.padio (debug_sevenseg_1[5]), .datain (
                 debug_led_red_dup0[16]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_1_obuf_5_.operation_mode = "output";
                 
                 defparam debug_sevenseg_1_obuf_5_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_1_obuf_5_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_1_obuf_5_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_1_obuf_5_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_1_obuf_5_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_1_obuf_4_ (.padio (debug_sevenseg_1[4]), .datain (
                 o_sevenseg_dup0_7_), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_1_obuf_4_.operation_mode = "output";
                 
                 defparam debug_sevenseg_1_obuf_4_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_1_obuf_4_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_1_obuf_4_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_1_obuf_4_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_1_obuf_4_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_1_obuf_3_ (.padio (debug_sevenseg_1[3]), .datain (
                 debug_led_red_dup0[16]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_1_obuf_3_.operation_mode = "output";
                 
                 defparam debug_sevenseg_1_obuf_3_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_1_obuf_3_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_1_obuf_3_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_1_obuf_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_1_obuf_3_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_1_obuf_2_ (.padio (debug_sevenseg_1[2]), .datain (
                 debug_led_red_dup0[16]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_1_obuf_2_.operation_mode = "output";
                 
                 defparam debug_sevenseg_1_obuf_2_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_1_obuf_2_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_1_obuf_2_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_1_obuf_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_1_obuf_2_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_1_obuf_1_ (.padio (debug_sevenseg_1[1]), .datain (
                 o_sevenseg_dup0_7_), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_1_obuf_1_.operation_mode = "output";
                 
                 defparam debug_sevenseg_1_obuf_1_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_1_obuf_1_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_1_obuf_1_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_1_obuf_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_1_obuf_1_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_1_obuf_0_ (.padio (debug_sevenseg_1[0]), .datain (
                 debug_led_red_dup0[16]), .oe (1'b1), .outclk (1'b0), .outclkena (
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
                 debug_led_red_dup0[16]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_0_obuf_6_.operation_mode = "output";
                 
                 defparam debug_sevenseg_0_obuf_6_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_0_obuf_6_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_0_obuf_6_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_0_obuf_6_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_0_obuf_6_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_0_obuf_5_ (.padio (debug_sevenseg_0[5]), .datain (
                 debug_led_red_dup0[16]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_0_obuf_5_.operation_mode = "output";
                 
                 defparam debug_sevenseg_0_obuf_5_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_0_obuf_5_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_0_obuf_5_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_0_obuf_5_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_0_obuf_5_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_0_obuf_4_ (.padio (debug_sevenseg_0[4]), .datain (
                 debug_led_red_dup0[16]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_0_obuf_4_.operation_mode = "output";
                 
                 defparam debug_sevenseg_0_obuf_4_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_0_obuf_4_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_0_obuf_4_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_0_obuf_4_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_0_obuf_4_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_0_obuf_3_ (.padio (debug_sevenseg_0[3]), .datain (
                 o_sevenseg_dup0_7_), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_0_obuf_3_.operation_mode = "output";
                 
                 defparam debug_sevenseg_0_obuf_3_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_0_obuf_3_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_0_obuf_3_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_0_obuf_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_0_obuf_3_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_0_obuf_2_ (.padio (debug_sevenseg_0[2]), .datain (
                 o_sevenseg_dup0_7_), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_0_obuf_2_.operation_mode = "output";
                 
                 defparam debug_sevenseg_0_obuf_2_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_0_obuf_2_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_0_obuf_2_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_0_obuf_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_0_obuf_2_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_0_obuf_1_ (.padio (debug_sevenseg_0[1]), .datain (
                 o_sevenseg_dup0_7_), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
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
    cycloneii_io debug_led_red_obuf_9_ (.padio (debug_led_red[9]), .datain (
                 debug_led_red_dup0[16]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_red_obuf_9_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_9_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_9_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_9_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_9_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_9_.input_register_mode = "none";
    cycloneii_io debug_led_red_obuf_8_ (.padio (debug_led_red[8]), .datain (
                 debug_led_red_dup0[16]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_red_obuf_8_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_8_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_8_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_8_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_8_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_8_.input_register_mode = "none";
    cycloneii_io debug_led_red_obuf_7_ (.padio (debug_led_red[7]), .datain (
                 debug_led_red_dup0[16]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_red_obuf_7_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_7_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_7_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_7_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_7_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_7_.input_register_mode = "none";
    cycloneii_io debug_led_red_obuf_6_ (.padio (debug_led_red[6]), .datain (
                 debug_led_red_dup0[16]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_red_obuf_6_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_6_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_6_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_6_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_6_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_6_.input_register_mode = "none";
    cycloneii_io debug_led_red_obuf_5_ (.padio (debug_led_red[5]), .datain (
                 debug_led_red_dup0[16]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_red_obuf_5_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_5_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_5_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_5_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_5_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_5_.input_register_mode = "none";
    cycloneii_io debug_led_red_obuf_4_ (.padio (debug_led_red[4]), .datain (
                 debug_led_red_dup0[16]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_red_obuf_4_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_4_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_4_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_4_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_4_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_4_.input_register_mode = "none";
    cycloneii_io debug_led_red_obuf_3_ (.padio (debug_led_red[3]), .datain (
                 debug_led_red_dup0[16]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_red_obuf_3_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_3_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_3_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_3_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_3_.input_register_mode = "none";
    cycloneii_io debug_led_red_obuf_2_ (.padio (debug_led_red[2]), .datain (
                 debug_led_red_dup0[16]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_red_obuf_2_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_2_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_2_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_2_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_2_.input_register_mode = "none";
    cycloneii_io debug_led_red_obuf_16_ (.padio (debug_led_red[16]), .datain (
                 debug_led_red_dup0[16]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_red_obuf_16_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_16_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_16_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_16_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_16_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_16_.input_register_mode = "none";
    cycloneii_io debug_led_red_obuf_15_ (.padio (debug_led_red[15]), .datain (
                 debug_led_red_dup0[16]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_red_obuf_15_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_15_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_15_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_15_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_15_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_15_.input_register_mode = "none";
    cycloneii_io debug_led_red_obuf_14_ (.padio (debug_led_red[14]), .datain (
                 debug_led_red_dup0[16]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_red_obuf_14_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_14_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_14_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_14_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_14_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_14_.input_register_mode = "none";
    cycloneii_io debug_led_red_obuf_13_ (.padio (debug_led_red[13]), .datain (
                 debug_led_red_dup0[16]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_red_obuf_13_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_13_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_13_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_13_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_13_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_13_.input_register_mode = "none";
    cycloneii_io debug_led_red_obuf_12_ (.padio (debug_led_red[12]), .datain (
                 debug_led_red_dup0[16]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_red_obuf_12_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_12_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_12_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_12_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_12_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_12_.input_register_mode = "none";
    cycloneii_io debug_led_red_obuf_11_ (.padio (debug_led_red[11]), .datain (
                 debug_led_red_dup0[16]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_red_obuf_11_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_11_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_11_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_11_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_11_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_11_.input_register_mode = "none";
    cycloneii_io debug_led_red_obuf_10_ (.padio (debug_led_red[10]), .datain (
                 debug_led_red_dup0[16]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_red_obuf_10_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_10_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_10_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_10_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_10_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_10_.input_register_mode = "none";
    cycloneii_io debug_led_red_obuf_1_ (.padio (debug_led_red[1]), .datain (
                 debug_led_red_dup0[16]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_red_obuf_1_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_1_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_1_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_1_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_1_.input_register_mode = "none";
    cycloneii_io debug_led_red_obuf_0_ (.padio (debug_led_red[0]), .datain (
                 debug_led_red_dup0[16]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_red_obuf_0_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_0_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_0_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_0_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_0_.input_register_mode = "none";
    cycloneii_io debug_led_grn_obuf_5_ (.padio (debug_led_grn[5]), .datain (
                 debug_led_red_dup0[16]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_grn_obuf_5_.operation_mode = "output";
                 
                 defparam debug_led_grn_obuf_5_.output_register_mode = "none";
                 
                 defparam debug_led_grn_obuf_5_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_grn_obuf_5_.oe_register_mode = "none";
                 
                 defparam debug_led_grn_obuf_5_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_grn_obuf_5_.input_register_mode = "none";
    cycloneii_io debug_led_grn_obuf_4_ (.padio (debug_led_grn[4]), .datain (
                 debug_led_red_dup0[16]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_grn_obuf_4_.operation_mode = "output";
                 
                 defparam debug_led_grn_obuf_4_.output_register_mode = "none";
                 
                 defparam debug_led_grn_obuf_4_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_grn_obuf_4_.oe_register_mode = "none";
                 
                 defparam debug_led_grn_obuf_4_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_grn_obuf_4_.input_register_mode = "none";
    cycloneii_io debug_led_grn_obuf_3_ (.padio (debug_led_grn[3]), .datain (
                 debug_led_red_dup0[16]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_grn_obuf_3_.operation_mode = "output";
                 
                 defparam debug_led_grn_obuf_3_.output_register_mode = "none";
                 
                 defparam debug_led_grn_obuf_3_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_grn_obuf_3_.oe_register_mode = "none";
                 
                 defparam debug_led_grn_obuf_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_grn_obuf_3_.input_register_mode = "none";
    cycloneii_io debug_led_grn_obuf_2_ (.padio (debug_led_grn[2]), .datain (
                 debug_led_red_dup0[16]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_grn_obuf_2_.operation_mode = "output";
                 
                 defparam debug_led_grn_obuf_2_.output_register_mode = "none";
                 
                 defparam debug_led_grn_obuf_2_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_grn_obuf_2_.oe_register_mode = "none";
                 
                 defparam debug_led_grn_obuf_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_grn_obuf_2_.input_register_mode = "none";
    cycloneii_io debug_led_grn_obuf_1_ (.padio (debug_led_grn[1]), .datain (
                 debug_led_red_dup0[16]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_grn_obuf_1_.operation_mode = "output";
                 
                 defparam debug_led_grn_obuf_1_.output_register_mode = "none";
                 
                 defparam debug_led_grn_obuf_1_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_grn_obuf_1_.oe_register_mode = "none";
                 
                 defparam debug_led_grn_obuf_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_grn_obuf_1_.input_register_mode = "none";
    cycloneii_io debug_led_grn_obuf_0_ (.padio (debug_led_grn[0]), .datain (
                 debug_led_red_dup0[16]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_grn_obuf_0_.operation_mode = "output";
                 
                 defparam debug_led_grn_obuf_0_.output_register_mode = "none";
                 
                 defparam debug_led_grn_obuf_0_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_grn_obuf_0_.oe_register_mode = "none";
                 
                 defparam debug_led_grn_obuf_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_grn_obuf_0_.input_register_mode = "none";
    cycloneii_io clk_ibuf (.combout (clk_int), .padio (clk), .datain (1'b0), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam clk_ibuf.operation_mode = "input";
                 
                 defparam clk_ibuf.output_register_mode = "none";
                 
                 defparam clk_ibuf.tie_off_output_clock_enable = "false";
                 
                 defparam clk_ibuf.oe_register_mode = "none";
                 
                 defparam clk_ibuf.tie_off_oe_clock_enable = "false";
                 
                 defparam clk_ibuf.input_register_mode = "none";
    cycloneii_lcell_comb ix28674z52923 (.combout (nx28674z1), .dataa (
                         rowcount[7]), .datab (rowcount[6]), .datac (rowcount[5]
                         ), .datad (rowcount[4]), .cin (1'b0)) ;
                         
                         defparam ix28674z52923.lut_mask = 16'ha4c8;
    cycloneii_lcell_comb ix1027z52923 (.combout (nx1027z1), .dataa (rowcount[7])
                         , .datab (rowcount[6]), .datac (rowcount[5]), .datad (
                         rowcount[4]), .cin (1'b0)) ;
                         
                         defparam ix1027z52923.lut_mask = 16'h5910;
    cycloneii_lcell_comb ix30z52923 (.combout (nx30z1), .dataa (rowcount[7]), .datab (
                         rowcount[6]), .datac (rowcount[5]), .datad (rowcount[4]
                         ), .cin (1'b0)) ;
                         
                         defparam ix30z52923.lut_mask = 16'h4109;
    cycloneii_lcell_comb ix62575z52923 (.combout (nx62575z1), .dataa (
                         rowcount[3]), .datab (rowcount[2]), .datac (rowcount[1]
                         ), .datad (rowcount[0]), .cin (1'b0)) ;
                         
                         defparam ix62575z52923.lut_mask = 16'ha4c8;
    cycloneii_lcell_comb ix58587z52923 (.combout (nx58587z1), .dataa (
                         rowcount[3]), .datab (rowcount[2]), .datac (rowcount[1]
                         ), .datad (rowcount[0]), .cin (1'b0)) ;
                         
                         defparam ix58587z52923.lut_mask = 16'h5910;
    cycloneii_lcell_comb ix57590z52923 (.combout (nx57590z1), .dataa (
                         rowcount[3]), .datab (rowcount[2]), .datac (rowcount[1]
                         ), .datad (rowcount[0]), .cin (1'b0)) ;
                         
                         defparam ix57590z52923.lut_mask = 16'h4109;
    cycloneii_lcell_comb ix29671z52923 (.combout (nx29671z1), .dataa (
                         rowcount[7]), .datab (rowcount[6]), .datac (rowcount[5]
                         ), .datad (rowcount[4]), .cin (1'b0)) ;
                         
                         defparam ix29671z52923.lut_mask = 16'h2904;
    cycloneii_lcell_comb ix27677z52923 (.combout (nx27677z1), .dataa (
                         rowcount[7]), .datab (rowcount[6]), .datac (rowcount[5]
                         ), .datad (rowcount[4]), .cin (1'b0)) ;
                         
                         defparam ix27677z52923.lut_mask = 16'h8098;
    cycloneii_lcell_comb ix26680z52923 (.combout (nx26680z1), .dataa (
                         rowcount[7]), .datab (rowcount[6]), .datac (rowcount[5]
                         ), .datad (rowcount[4]), .cin (1'b0)) ;
                         
                         defparam ix26680z52923.lut_mask = 16'hc324;
    cycloneii_lcell_comb ix25683z52923 (.combout (nx25683z1), .dataa (
                         rowcount[7]), .datab (rowcount[6]), .datac (rowcount[5]
                         ), .datad (rowcount[4]), .cin (1'b0)) ;
                         
                         defparam ix25683z52923.lut_mask = 16'h5704;
    cycloneii_lcell_comb ix63572z52923 (.combout (nx63572z1), .dataa (
                         rowcount[3]), .datab (rowcount[2]), .datac (rowcount[1]
                         ), .datad (rowcount[0]), .cin (1'b0)) ;
                         
                         defparam ix63572z52923.lut_mask = 16'h2904;
    cycloneii_lcell_comb ix61578z52923 (.combout (nx61578z1), .dataa (
                         rowcount[3]), .datab (rowcount[2]), .datac (rowcount[1]
                         ), .datad (rowcount[0]), .cin (1'b0)) ;
                         
                         defparam ix61578z52923.lut_mask = 16'h8098;
    cycloneii_lcell_comb ix60581z52923 (.combout (nx60581z1), .dataa (
                         rowcount[3]), .datab (rowcount[2]), .datac (rowcount[1]
                         ), .datad (rowcount[0]), .cin (1'b0)) ;
                         
                         defparam ix60581z52923.lut_mask = 16'hc324;
    cycloneii_lcell_comb ix59584z52923 (.combout (nx59584z1), .dataa (
                         rowcount[3]), .datab (rowcount[2]), .datac (rowcount[1]
                         ), .datad (rowcount[0]), .cin (1'b0)) ;
                         
                         defparam ix59584z52923.lut_mask = 16'h5704;
endmodule


module kirsch ( i_clock, i_reset, i_valid, i_pixel, o_valid, o_edge, o_dir, 
                o_mode, o_row, debug_key, debug_switch, debug_led_red, 
                debug_led_grn, debug_num_0, debug_num_1, debug_num_2, 
                debug_num_3, debug_num_4, debug_num_5, p_rtlcs6, p_nrst_int, 
                px34 ) ;

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
    output p_rtlcs6 ;
    input p_nrst_int ;
    output px34 ;

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
    wire [7:0]max1;
    wire [9:0]max2;
    wire [9:0]max3;
    wire [8:0]add1;
    wire [9:0]add2;
    wire [10:0]add3;
    wire [12:0]add4;
    wire sub1_8_, sub2_10_, sub3_10_, sub4_13_, sub4_12_, sub4_11_, sub4_10_, 
         sub4_9_, sub4_8_, sub4_7_, end_of_img;
    wire [8:0]add1_22n4s1;
    wire [9:0]add2_22n4s1;
    wire [10:0]add3_22n4s1;
    wire [12:1]add4_22n4s1;
    wire sub4_22n4s1_12_, sub4_22n4s1_11_, sub4_22n4s1_10_, sub4_22n4s1_9_, 
         sub4_22n4s1_8_, sub4_22n4s1_7_, nx61551z1, nx31523z1, nx26388z1, 
         nx24244z1, wren_m1, wren_m2, wren_m3;
    wire [7:0]addr_x;
    wire debug_num_5_1__rename973;
    wire [1:0]t_15n2s1;
    wire nx17322z9, nx17322z1, nx20492z2, dir5_18n5ss1_2_, dir6_18n5ss1_2_, 
         not_sub2_10, nx36692z1, nx41056z3, nx24302z1, nx20813z1, nx17322z7, 
         sub1_22n1s1_8_, sub2_22n2s1_10_, sub3_22n3s1_10_, sub4_22n4s1_13_, 
         not_v_7, output_edge_22n5s1, nx17322z2, nx36692z2, nx36266z1, nx46679z2, 
         nx24302z2, nx17322z3, nx17322z6, nx34077z1, nx35074z1, nx36071z1, 
         nx37068z1, nx38065z1, nx39062z1, nx40059z1, nx41056z1, nx25658z1, 
         nx26655z1, nx27652z1, nx28649z1, nx29646z1, nx30643z1, nx31640z1, 
         nx32637z1, nx48297z1, nx47300z1, nx46303z1, nx45306z1, nx44309z1, 
         nx43312z1, nx42315z1, nx41318z1, nx56716z1, nx55719z1, nx54722z1, 
         nx53725z1, nx52728z1, nx51731z1, nx50734z1, nx49737z1, nx27471z1, 
         nx26474z1, nx25477z1, nx24480z1, nx23483z1, nx22486z1, nx21489z1, 
         nx20492z1, nx29646z3, nx30643z3, nx31640z3, nx32637z3, nx33634z1, 
         nx34631z1, nx35628z1, nx36625z1, nx6176z1, nx38525z1, nx46679z1, 
         nx44685z1, nx10438z1, nx2019z1, nx35695z1, nx44114z1, nx45111z1, 
         nx46108z1, nx17322z4, nx17322z8, nx49737z2, nx50734z2, nx51731z2, 
         nx52728z2, nx53725z2, nx54722z2, nx55719z2, nx56716z2, nx41318z2, 
         nx42315z2, nx43312z2, nx44309z2, nx45306z2, nx46303z2, nx47300z2, 
         nx48297z2, nx32637z2, nx31640z2, nx30643z2, nx29646z2, nx28649z2, 
         nx27652z2, nx26655z2, nx25658z2, nx41056z2, nx40059z2, nx39062z2, 
         nx38065z2, nx37068z2, nx36071z2, nx35074z2, nx34077z2, nx60630z1, 
         nx20813z2, nx20813z3, nx20813z4, nx20813z6, nx20813z7, nx20813z5, 
         nx26373z2, nx17322z5, nx44114z2, nx46108z2, nx26373z1, nx45111z2, 
         NOT_dir5_1_, nx46108z3, NOT_dir5_0_;
    wire [1615:0] xmplr_dummy ;




    add_11_0 add3_add11_22i1 (.a ({xmplr_dummy [0],xmplr_dummy [1],r7[8],r7[7],
             r7[6],r7[5],r7[4],r7[3],r7[2],r7[1],r7[0]}), .b ({r8[10],r8[9],
             r8[8],r8[7],r8[6],r8[5],r8[4],r8[3],r8[2],r8[1],r8[0]}), .d ({
             add3_22n4s1[10],add3_22n4s1[9],add3_22n4s1[8],add3_22n4s1[7],
             add3_22n4s1[6],add3_22n4s1[5],add3_22n4s1[4],add3_22n4s1[3],
             add3_22n4s1[2],add3_22n4s1[1],add3_22n4s1[0]})) ;
    modgen_counter_8_0 modgen_counter_x (.clock (i_clock), .q ({x[7],x[6],x[5],
                       x[4],x[3],x[2],x[1],x[0]}), .sclear (i_reset), .cnt_en (
                       i_valid), .p_nrst_int_dup_11 (p_nrst_int)) ;
    modgen_counter_8_1 modgen_counter_o_row (.clock (i_clock), .q ({o_row[7],
                       o_row[6],o_row[5],o_row[4],o_row[3],o_row[2],o_row[1],
                       o_row[0]}), .clk_en (nx17322z1), .sclear (nx17322z9), .cnt_en (
                       nx17322z6)) ;
    sub_8_0 sub1_sub8_22i30 (.a ({r1[7],r1[6],r1[5],r1[4],r1[3],r1[2],r1[1],
            r1[0]}), .b ({r2[7],r2[6],r2[5],r2[4],r2[3],r2[2],r2[1],r2[0]}), .cout (
            nx61551z1)) ;
    add_8_0 add1_add8_22i31 (.a ({r3[7],r3[6],r3[5],r3[4],r3[3],r3[2],r3[1],
            r3[0]}), .b ({r4[7],r4[6],r4[5],r4[4],r4[3],r4[2],r4[1],r4[0]}), .d (
            {add1_22n4s1[7],add1_22n4s1[6],add1_22n4s1[5],add1_22n4s1[4],
            add1_22n4s1[3],add1_22n4s1[2],add1_22n4s1[1],add1_22n4s1[0]}), .cout (
            add1_22n4s1[8])) ;
    add_9_0 add2_add9_22i32 (.a ({xmplr_dummy [2],r5[7],r5[6],r5[5],r5[4],r5[3],
            r5[2],r5[1],r5[0]}), .b ({r7[8],r7[7],r7[6],r7[5],r7[4],r7[3],r7[2],
            r7[1],r7[0]}), .d ({add2_22n4s1[8],add2_22n4s1[7],add2_22n4s1[6],
            add2_22n4s1[5],add2_22n4s1[4],add2_22n4s1[3],add2_22n4s1[2],
            add2_22n4s1[1],add2_22n4s1[0]}), .cout (add2_22n4s1[9])) ;
    sub_10_0 sub2_sub10_22i33 (.a ({r9[9],r9[8],r9[7],r9[6],r9[5],r9[4],r9[3],
             r9[2],r9[1],r9[0]}), .b ({r11[9],r11[8],r11[7],r11[6],r11[5],r11[4]
             ,r11[3],r11[2],r11[1],r11[0]}), .cout (nx31523z1)) ;
    sub_10_1 sub3_sub10_22i34 (.a ({r11[9],r11[8],r11[7],r11[6],r11[5],r11[4],
             r11[3],r11[2],r11[1],r11[0]}), .b ({r12[9],r12[8],r12[7],r12[6],
             r12[5],r12[4],r12[3],r12[2],r12[1],r12[0]}), .cout (nx26388z1)) ;
    add_11_1 add4_add11_22i35 (.a ({xmplr_dummy [3],r13[10],r13[9],r13[8],r13[7]
             ,r13[6],r13[5],r13[4],r13[3],r13[2],r13[1]}), .b ({xmplr_dummy [4],
             xmplr_dummy [5],xmplr_dummy [6],xmplr_dummy [7],xmplr_dummy [8],
             xmplr_dummy [9],xmplr_dummy [10],xmplr_dummy [11],xmplr_dummy [12],
             xmplr_dummy [13],r13[0]}), .d ({add4_22n4s1[11],add4_22n4s1[10],
             add4_22n4s1[9],add4_22n4s1[8],add4_22n4s1[7],add4_22n4s1[6],
             add4_22n4s1[5],add4_22n4s1[4],add4_22n4s1[3],add4_22n4s1[2],
             add4_22n4s1[1]}), .cout (add4_22n4s1[12])) ;
    sub_12_0 sub4_sub13_22i36 (.a ({r14_12_,r14_11_,r14_10_,r14_9_,r14_8_,r14_7_
             ,r14_6_,r14_5_,r14_4_,r14_3_,xmplr_dummy [14],xmplr_dummy [15]}), .b (
             {r15[12],r15[11],r15[10],r15[9],r15[8],r15[7],r15[6],r15[5],r15[4],
             r15[3],r15[2],r15[1]}), .d ({sub4_22n4s1_12_,sub4_22n4s1_11_,
             sub4_22n4s1_10_,sub4_22n4s1_9_,sub4_22n4s1_8_,sub4_22n4s1_7_,
             xmplr_dummy [16],xmplr_dummy [17],xmplr_dummy [18],xmplr_dummy [19]
             ,xmplr_dummy [20],xmplr_dummy [21]}), .cout (nx24244z1), .p_r15_0_ (
             r15[0])) ;
    ram_dq_8_0 m1_mem (.wr_data1 ({i_pixel[7],i_pixel[6],i_pixel[5],i_pixel[4],
               i_pixel[3],i_pixel[2],i_pixel[1],i_pixel[0]}), .rd_data1 ({q1[7],
               q1[6],q1[5],q1[4],q1[3],q1[2],q1[1],q1[0]}), .addr1 ({addr_x[7],
               addr_x[6],addr_x[5],addr_x[4],addr_x[3],addr_x[2],addr_x[1],
               addr_x[0]}), .wr_clk1 (i_clock), .wr_ena1 (wren_m1)) ;
    ram_dq_8_1 m2_mem (.wr_data1 ({i_pixel[7],i_pixel[6],i_pixel[5],i_pixel[4],
               i_pixel[3],i_pixel[2],i_pixel[1],i_pixel[0]}), .rd_data1 ({q2[7],
               q2[6],q2[5],q2[4],q2[3],q2[2],q2[1],q2[0]}), .addr1 ({addr_x[7],
               addr_x[6],addr_x[5],addr_x[4],addr_x[3],addr_x[2],addr_x[1],
               addr_x[0]}), .wr_clk1 (i_clock), .wr_ena1 (wren_m2)) ;
    ram_dq_8_2 m3_mem (.wr_data1 ({i_pixel[7],i_pixel[6],i_pixel[5],i_pixel[4],
               i_pixel[3],i_pixel[2],i_pixel[1],i_pixel[0]}), .rd_data1 ({q3[7],
               q3[6],q3[5],q3[4],q3[3],q3[2],q3[1],q3[0]}), .addr1 ({addr_x[7],
               addr_x[6],addr_x[5],addr_x[4],addr_x[3],addr_x[2],addr_x[1],
               addr_x[0]}), .wr_clk1 (i_clock), .wr_ena1 (wren_m3)) ;
    assign debug_num_5_1__rename973 = 1 ;
    assign not_sub2_10 = ~sub2_10_ ;
    assign sub1_22n1s1_8_ = ~nx61551z1 ;
    assign sub2_22n2s1_10_ = ~nx31523z1 ;
    assign sub3_22n3s1_10_ = ~nx26388z1 ;
    assign sub4_22n4s1_13_ = ~nx24244z1 ;
    assign not_v_7 = ~v[7] ;
    assign o_mode[0] = ~px34 ;
    assign NOT_dir5_1_ = ~dir5[1] ;
    assign NOT_dir5_0_ = ~dir5[0] ;
    cycloneii_lcell_ff reg_v_7_ (.regout (v[7]), .datain (v[6]), .sdata (1'b0), 
                       .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (1'b0), 
                       .sload (1'b0)) ;
    cycloneii_lcell_ff reg_v_6_ (.regout (v[6]), .datain (v[5]), .sdata (1'b0), 
                       .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (1'b0), 
                       .sload (1'b0)) ;
    cycloneii_lcell_ff reg_v_5_ (.regout (v[5]), .datain (v[4]), .sdata (1'b0), 
                       .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (1'b0), 
                       .sload (1'b0)) ;
    cycloneii_lcell_ff reg_v_4_ (.regout (v[4]), .datain (v[3]), .sdata (1'b0), 
                       .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (1'b0), 
                       .sload (1'b0)) ;
    cycloneii_lcell_ff reg_v_3_ (.regout (v[3]), .datain (v[2]), .sdata (1'b0), 
                       .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (1'b0), 
                       .sload (1'b0)) ;
    cycloneii_lcell_ff reg_v_2_ (.regout (v[2]), .datain (v[1]), .sdata (1'b0), 
                       .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (1'b0), 
                       .sload (1'b0)) ;
    cycloneii_lcell_ff reg_v_1_ (.regout (v[1]), .datain (v[0]), .sdata (1'b0), 
                       .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (1'b0), 
                       .sload (1'b0)) ;
    cycloneii_lcell_ff reg_v_0_ (.regout (v[0]), .datain (i_valid), .sdata (1'b0
                       ), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       i_reset), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_t_1_ (.regout (t[1]), .datain (t_15n2s1[1]), .sdata (
                       1'b0), .clk (i_clock), .ena (nx38525z1), .aclr (1'b0), .sclr (
                       i_reset), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_t_0_ (.regout (t[0]), .datain (t_15n2s1[0]), .sdata (
                       1'b0), .clk (i_clock), .ena (nx38525z1), .aclr (1'b0), .sclr (
                       i_reset), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_sub4_9_ (.regout (sub4_9_), .datain (sub4_22n4s1_9_)
                       , .sdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0
                       ), .sclr (not_v_7), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_sub4_8_ (.regout (sub4_8_), .datain (sub4_22n4s1_8_)
                       , .sdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0
                       ), .sclr (not_v_7), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_sub4_7_ (.regout (sub4_7_), .datain (sub4_22n4s1_7_)
                       , .sdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0
                       ), .sclr (not_v_7), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_sub4_13_ (.regout (sub4_13_), .datain (
                       sub4_22n4s1_13_), .sdata (1'b0), .clk (i_clock), .ena (
                       1'b1), .aclr (1'b0), .sclr (not_v_7), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_sub4_12_ (.regout (sub4_12_), .datain (
                       sub4_22n4s1_12_), .sdata (1'b0), .clk (i_clock), .ena (
                       1'b1), .aclr (1'b0), .sclr (not_v_7), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_sub4_11_ (.regout (sub4_11_), .datain (
                       sub4_22n4s1_11_), .sdata (1'b0), .clk (i_clock), .ena (
                       1'b1), .aclr (1'b0), .sclr (not_v_7), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_sub4_10_ (.regout (sub4_10_), .datain (
                       sub4_22n4s1_10_), .sdata (1'b0), .clk (i_clock), .ena (
                       1'b1), .aclr (1'b0), .sclr (not_v_7), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_sub3_10_ (.regout (sub3_10_), .datain (
                       sub3_22n3s1_10_), .sdata (1'b0), .clk (i_clock), .ena (
                       1'b1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_sub2_10_ (.regout (sub2_10_), .datain (
                       sub2_22n2s1_10_), .sdata (1'b0), .clk (i_clock), .ena (
                       1'b1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_sub1_8_ (.regout (sub1_8_), .datain (sub1_22n1s1_8_)
                       , .sdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0
                       ), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r9_9_ (.regout (r9[9]), .datain (max2[9]), .sdata (
                       add2[9]), .clk (i_clock), .ena (nx24302z1), .aclr (1'b0)
                       , .sclr (1'b0), .sload (v[2])) ;
    cycloneii_lcell_ff reg_r9_8_ (.regout (r9[8]), .datain (max2[8]), .sdata (
                       add2[8]), .clk (i_clock), .ena (nx24302z1), .aclr (1'b0)
                       , .sclr (1'b0), .sload (v[2])) ;
    cycloneii_lcell_ff reg_r9_7_ (.regout (r9[7]), .datain (max2[7]), .sdata (
                       add2[7]), .clk (i_clock), .ena (nx24302z1), .aclr (1'b0)
                       , .sclr (1'b0), .sload (v[2])) ;
    cycloneii_lcell_ff reg_r9_6_ (.regout (r9[6]), .datain (max2[6]), .sdata (
                       add2[6]), .clk (i_clock), .ena (nx24302z1), .aclr (1'b0)
                       , .sclr (1'b0), .sload (v[2])) ;
    cycloneii_lcell_ff reg_r9_5_ (.regout (r9[5]), .datain (max2[5]), .sdata (
                       add2[5]), .clk (i_clock), .ena (nx24302z1), .aclr (1'b0)
                       , .sclr (1'b0), .sload (v[2])) ;
    cycloneii_lcell_ff reg_r9_4_ (.regout (r9[4]), .datain (max2[4]), .sdata (
                       add2[4]), .clk (i_clock), .ena (nx24302z1), .aclr (1'b0)
                       , .sclr (1'b0), .sload (v[2])) ;
    cycloneii_lcell_ff reg_r9_3_ (.regout (r9[3]), .datain (max2[3]), .sdata (
                       add2[3]), .clk (i_clock), .ena (nx24302z1), .aclr (1'b0)
                       , .sclr (1'b0), .sload (v[2])) ;
    cycloneii_lcell_ff reg_r9_2_ (.regout (r9[2]), .datain (max2[2]), .sdata (
                       add2[2]), .clk (i_clock), .ena (nx24302z1), .aclr (1'b0)
                       , .sclr (1'b0), .sload (v[2])) ;
    cycloneii_lcell_ff reg_r9_1_ (.regout (r9[1]), .datain (max2[1]), .sdata (
                       add2[1]), .clk (i_clock), .ena (nx24302z1), .aclr (1'b0)
                       , .sclr (1'b0), .sload (v[2])) ;
    cycloneii_lcell_ff reg_r9_0_ (.regout (r9[0]), .datain (max2[0]), .sdata (
                       add2[0]), .clk (i_clock), .ena (nx24302z1), .aclr (1'b0)
                       , .sclr (1'b0), .sload (v[2])) ;
    cycloneii_lcell_ff reg_r8_9_ (.regout (r8[9]), .datain (add3[9]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       v[2]), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r8_8_ (.regout (r8[8]), .datain (add3[8]), .sdata (
                       r7[8]), .clk (i_clock), .ena (debug_num_5_1__rename973), 
                       .aclr (1'b0), .sclr (1'b0), .sload (v[2])) ;
    cycloneii_lcell_ff reg_r8_7_ (.regout (r8[7]), .datain (add3[7]), .sdata (
                       r7[7]), .clk (i_clock), .ena (debug_num_5_1__rename973), 
                       .aclr (1'b0), .sclr (1'b0), .sload (v[2])) ;
    cycloneii_lcell_ff reg_r8_6_ (.regout (r8[6]), .datain (add3[6]), .sdata (
                       r7[6]), .clk (i_clock), .ena (debug_num_5_1__rename973), 
                       .aclr (1'b0), .sclr (1'b0), .sload (v[2])) ;
    cycloneii_lcell_ff reg_r8_5_ (.regout (r8[5]), .datain (add3[5]), .sdata (
                       r7[5]), .clk (i_clock), .ena (debug_num_5_1__rename973), 
                       .aclr (1'b0), .sclr (1'b0), .sload (v[2])) ;
    cycloneii_lcell_ff reg_r8_4_ (.regout (r8[4]), .datain (add3[4]), .sdata (
                       r7[4]), .clk (i_clock), .ena (debug_num_5_1__rename973), 
                       .aclr (1'b0), .sclr (1'b0), .sload (v[2])) ;
    cycloneii_lcell_ff reg_r8_3_ (.regout (r8[3]), .datain (add3[3]), .sdata (
                       r7[3]), .clk (i_clock), .ena (debug_num_5_1__rename973), 
                       .aclr (1'b0), .sclr (1'b0), .sload (v[2])) ;
    cycloneii_lcell_ff reg_r8_2_ (.regout (r8[2]), .datain (add3[2]), .sdata (
                       r7[2]), .clk (i_clock), .ena (debug_num_5_1__rename973), 
                       .aclr (1'b0), .sclr (1'b0), .sload (v[2])) ;
    cycloneii_lcell_ff reg_r8_10_ (.regout (r8[10]), .datain (add3[10]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       v[2]), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r8_1_ (.regout (r8[1]), .datain (add3[1]), .sdata (
                       r7[1]), .clk (i_clock), .ena (debug_num_5_1__rename973), 
                       .aclr (1'b0), .sclr (1'b0), .sload (v[2])) ;
    cycloneii_lcell_ff reg_r8_0_ (.regout (r8[0]), .datain (add3[0]), .sdata (
                       r7[0]), .clk (i_clock), .ena (debug_num_5_1__rename973), 
                       .aclr (1'b0), .sclr (1'b0), .sload (v[2])) ;
    cycloneii_lcell_ff reg_r7_8_ (.regout (r7[8]), .datain (add1[8]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r7_7_ (.regout (r7[7]), .datain (add1[7]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r7_6_ (.regout (r7[6]), .datain (add1[6]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r7_5_ (.regout (r7[5]), .datain (add1[5]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r7_4_ (.regout (r7[4]), .datain (add1[4]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r7_3_ (.regout (r7[3]), .datain (add1[3]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r7_2_ (.regout (r7[2]), .datain (add1[2]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r7_1_ (.regout (r7[1]), .datain (add1[1]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r7_0_ (.regout (r7[0]), .datain (add1[0]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r5_7_ (.regout (r5[7]), .datain (max1[7]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r5_6_ (.regout (r5[6]), .datain (max1[6]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r5_5_ (.regout (r5[5]), .datain (max1[5]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r5_4_ (.regout (r5[4]), .datain (max1[4]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r5_3_ (.regout (r5[3]), .datain (max1[3]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r5_2_ (.regout (r5[2]), .datain (max1[2]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r5_1_ (.regout (r5[1]), .datain (max1[1]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r5_0_ (.regout (r5[0]), .datain (max1[0]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r4_7_ (.regout (r4[7]), .datain (nx49737z1), .sdata (
                       b[7]), .clk (i_clock), .ena (nx41056z3), .aclr (1'b0), .sclr (
                       1'b0), .sload (v[0])) ;
    cycloneii_lcell_ff reg_r4_6_ (.regout (r4[6]), .datain (nx50734z1), .sdata (
                       b[6]), .clk (i_clock), .ena (nx41056z3), .aclr (1'b0), .sclr (
                       1'b0), .sload (v[0])) ;
    cycloneii_lcell_ff reg_r4_5_ (.regout (r4[5]), .datain (nx51731z1), .sdata (
                       b[5]), .clk (i_clock), .ena (nx41056z3), .aclr (1'b0), .sclr (
                       1'b0), .sload (v[0])) ;
    cycloneii_lcell_ff reg_r4_4_ (.regout (r4[4]), .datain (nx52728z1), .sdata (
                       b[4]), .clk (i_clock), .ena (nx41056z3), .aclr (1'b0), .sclr (
                       1'b0), .sload (v[0])) ;
    cycloneii_lcell_ff reg_r4_3_ (.regout (r4[3]), .datain (nx53725z1), .sdata (
                       b[3]), .clk (i_clock), .ena (nx41056z3), .aclr (1'b0), .sclr (
                       1'b0), .sload (v[0])) ;
    cycloneii_lcell_ff reg_r4_2_ (.regout (r4[2]), .datain (nx54722z1), .sdata (
                       b[2]), .clk (i_clock), .ena (nx41056z3), .aclr (1'b0), .sclr (
                       1'b0), .sload (v[0])) ;
    cycloneii_lcell_ff reg_r4_1_ (.regout (r4[1]), .datain (nx55719z1), .sdata (
                       b[1]), .clk (i_clock), .ena (nx41056z3), .aclr (1'b0), .sclr (
                       1'b0), .sload (v[0])) ;
    cycloneii_lcell_ff reg_r4_0_ (.regout (r4[0]), .datain (nx56716z1), .sdata (
                       b[0]), .clk (i_clock), .ena (nx41056z3), .aclr (1'b0), .sclr (
                       1'b0), .sload (v[0])) ;
    cycloneii_lcell_ff reg_r3_7_ (.regout (r3[7]), .datain (nx41318z1), .sdata (
                       c[7]), .clk (i_clock), .ena (nx41056z3), .aclr (1'b0), .sclr (
                       1'b0), .sload (v[0])) ;
    cycloneii_lcell_ff reg_r3_6_ (.regout (r3[6]), .datain (nx42315z1), .sdata (
                       c[6]), .clk (i_clock), .ena (nx41056z3), .aclr (1'b0), .sclr (
                       1'b0), .sload (v[0])) ;
    cycloneii_lcell_ff reg_r3_5_ (.regout (r3[5]), .datain (nx43312z1), .sdata (
                       c[5]), .clk (i_clock), .ena (nx41056z3), .aclr (1'b0), .sclr (
                       1'b0), .sload (v[0])) ;
    cycloneii_lcell_ff reg_r3_4_ (.regout (r3[4]), .datain (nx44309z1), .sdata (
                       c[4]), .clk (i_clock), .ena (nx41056z3), .aclr (1'b0), .sclr (
                       1'b0), .sload (v[0])) ;
    cycloneii_lcell_ff reg_r3_3_ (.regout (r3[3]), .datain (nx45306z1), .sdata (
                       c[3]), .clk (i_clock), .ena (nx41056z3), .aclr (1'b0), .sclr (
                       1'b0), .sload (v[0])) ;
    cycloneii_lcell_ff reg_r3_2_ (.regout (r3[2]), .datain (nx46303z1), .sdata (
                       c[2]), .clk (i_clock), .ena (nx41056z3), .aclr (1'b0), .sclr (
                       1'b0), .sload (v[0])) ;
    cycloneii_lcell_ff reg_r3_1_ (.regout (r3[1]), .datain (nx47300z1), .sdata (
                       c[1]), .clk (i_clock), .ena (nx41056z3), .aclr (1'b0), .sclr (
                       1'b0), .sload (v[0])) ;
    cycloneii_lcell_ff reg_r3_0_ (.regout (r3[0]), .datain (nx48297z1), .sdata (
                       c[0]), .clk (i_clock), .ena (nx41056z3), .aclr (1'b0), .sclr (
                       1'b0), .sload (v[0])) ;
    cycloneii_lcell_ff reg_r2_7_ (.regout (r2[7]), .datain (nx32637z1), .sdata (
                       d[7]), .clk (i_clock), .ena (nx41056z3), .aclr (1'b0), .sclr (
                       1'b0), .sload (v[0])) ;
    cycloneii_lcell_ff reg_r2_6_ (.regout (r2[6]), .datain (nx31640z1), .sdata (
                       d[6]), .clk (i_clock), .ena (nx41056z3), .aclr (1'b0), .sclr (
                       1'b0), .sload (v[0])) ;
    cycloneii_lcell_ff reg_r2_5_ (.regout (r2[5]), .datain (nx30643z1), .sdata (
                       d[5]), .clk (i_clock), .ena (nx41056z3), .aclr (1'b0), .sclr (
                       1'b0), .sload (v[0])) ;
    cycloneii_lcell_ff reg_r2_4_ (.regout (r2[4]), .datain (nx29646z1), .sdata (
                       d[4]), .clk (i_clock), .ena (nx41056z3), .aclr (1'b0), .sclr (
                       1'b0), .sload (v[0])) ;
    cycloneii_lcell_ff reg_r2_3_ (.regout (r2[3]), .datain (nx28649z1), .sdata (
                       d[3]), .clk (i_clock), .ena (nx41056z3), .aclr (1'b0), .sclr (
                       1'b0), .sload (v[0])) ;
    cycloneii_lcell_ff reg_r2_2_ (.regout (r2[2]), .datain (nx27652z1), .sdata (
                       d[2]), .clk (i_clock), .ena (nx41056z3), .aclr (1'b0), .sclr (
                       1'b0), .sload (v[0])) ;
    cycloneii_lcell_ff reg_r2_1_ (.regout (r2[1]), .datain (nx26655z1), .sdata (
                       d[1]), .clk (i_clock), .ena (nx41056z3), .aclr (1'b0), .sclr (
                       1'b0), .sload (v[0])) ;
    cycloneii_lcell_ff reg_r2_0_ (.regout (r2[0]), .datain (nx25658z1), .sdata (
                       d[0]), .clk (i_clock), .ena (nx41056z3), .aclr (1'b0), .sclr (
                       1'b0), .sload (v[0])) ;
    cycloneii_lcell_ff reg_r15_9_ (.regout (r15[9]), .datain (add4[9]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r15_8_ (.regout (r15[8]), .datain (add4[8]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r15_7_ (.regout (r15[7]), .datain (add4[7]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r15_6_ (.regout (r15[6]), .datain (add4[6]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r15_5_ (.regout (r15[5]), .datain (add4[5]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r15_4_ (.regout (r15[4]), .datain (add4[4]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r15_3_ (.regout (r15[3]), .datain (add4[3]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r15_2_ (.regout (r15[2]), .datain (add4[2]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r15_12_ (.regout (r15[12]), .datain (add4[12]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r15_11_ (.regout (r15[11]), .datain (add4[11]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r15_10_ (.regout (r15[10]), .datain (add4[10]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r15_1_ (.regout (r15[1]), .datain (add4[1]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r15_0_ (.regout (r15[0]), .datain (add4[0]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r14_9_ (.regout (r14_9_), .datain (max3[6]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r14_8_ (.regout (r14_8_), .datain (max3[5]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r14_7_ (.regout (r14_7_), .datain (max3[4]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r14_6_ (.regout (r14_6_), .datain (max3[3]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r14_5_ (.regout (r14_5_), .datain (max3[2]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r14_4_ (.regout (r14_4_), .datain (max3[1]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r14_3_ (.regout (r14_3_), .datain (max3[0]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r14_12_ (.regout (r14_12_), .datain (max3[9]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r14_11_ (.regout (r14_11_), .datain (max3[8]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r14_10_ (.regout (r14_10_), .datain (max3[7]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r13_9_ (.regout (r13[9]), .datain (add3[9]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r13_8_ (.regout (r13[8]), .datain (add3[8]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r13_7_ (.regout (r13[7]), .datain (add3[7]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r13_6_ (.regout (r13[6]), .datain (add3[6]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r13_5_ (.regout (r13[5]), .datain (add3[5]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r13_4_ (.regout (r13[4]), .datain (add3[4]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r13_3_ (.regout (r13[3]), .datain (add3[3]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r13_2_ (.regout (r13[2]), .datain (add3[2]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r13_10_ (.regout (r13[10]), .datain (add3[10]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r13_1_ (.regout (r13[1]), .datain (add3[1]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r13_0_ (.regout (r13[0]), .datain (add3[0]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r12_9_ (.regout (r12[9]), .datain (max2[9]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r12_8_ (.regout (r12[8]), .datain (max2[8]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r12_7_ (.regout (r12[7]), .datain (max2[7]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r12_6_ (.regout (r12[6]), .datain (max2[6]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r12_5_ (.regout (r12[5]), .datain (max2[5]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r12_4_ (.regout (r12[4]), .datain (max2[4]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r12_3_ (.regout (r12[3]), .datain (max2[3]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r12_2_ (.regout (r12[2]), .datain (max2[2]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r12_1_ (.regout (r12[1]), .datain (max2[1]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r12_0_ (.regout (r12[0]), .datain (max2[0]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r11_9_ (.regout (r11[9]), .datain (add2[9]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r11_8_ (.regout (r11[8]), .datain (add2[8]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r11_7_ (.regout (r11[7]), .datain (add2[7]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r11_6_ (.regout (r11[6]), .datain (add2[6]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r11_5_ (.regout (r11[5]), .datain (add2[5]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r11_4_ (.regout (r11[4]), .datain (add2[4]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r11_3_ (.regout (r11[3]), .datain (add2[3]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r11_2_ (.regout (r11[2]), .datain (add2[2]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r11_1_ (.regout (r11[1]), .datain (add2[1]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r11_0_ (.regout (r11[0]), .datain (add2[0]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r1_7_ (.regout (r1[7]), .datain (nx41056z1), .sdata (
                       a[7]), .clk (i_clock), .ena (nx41056z3), .aclr (1'b0), .sclr (
                       1'b0), .sload (v[0])) ;
    cycloneii_lcell_ff reg_r1_6_ (.regout (r1[6]), .datain (nx40059z1), .sdata (
                       a[6]), .clk (i_clock), .ena (nx41056z3), .aclr (1'b0), .sclr (
                       1'b0), .sload (v[0])) ;
    cycloneii_lcell_ff reg_r1_5_ (.regout (r1[5]), .datain (nx39062z1), .sdata (
                       a[5]), .clk (i_clock), .ena (nx41056z3), .aclr (1'b0), .sclr (
                       1'b0), .sload (v[0])) ;
    cycloneii_lcell_ff reg_r1_4_ (.regout (r1[4]), .datain (nx38065z1), .sdata (
                       a[4]), .clk (i_clock), .ena (nx41056z3), .aclr (1'b0), .sclr (
                       1'b0), .sload (v[0])) ;
    cycloneii_lcell_ff reg_r1_3_ (.regout (r1[3]), .datain (nx37068z1), .sdata (
                       a[3]), .clk (i_clock), .ena (nx41056z3), .aclr (1'b0), .sclr (
                       1'b0), .sload (v[0])) ;
    cycloneii_lcell_ff reg_r1_2_ (.regout (r1[2]), .datain (nx36071z1), .sdata (
                       a[2]), .clk (i_clock), .ena (nx41056z3), .aclr (1'b0), .sclr (
                       1'b0), .sload (v[0])) ;
    cycloneii_lcell_ff reg_r1_1_ (.regout (r1[1]), .datain (nx35074z1), .sdata (
                       a[1]), .clk (i_clock), .ena (nx41056z3), .aclr (1'b0), .sclr (
                       1'b0), .sload (v[0])) ;
    cycloneii_lcell_ff reg_r1_0_ (.regout (r1[0]), .datain (nx34077z1), .sdata (
                       a[0]), .clk (i_clock), .ena (nx41056z3), .aclr (1'b0), .sclr (
                       1'b0), .sload (v[0])) ;
    cycloneii_lcell_ff reg_output_valid (.regout (o_valid), .datain (nx20813z1)
                       , .sdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0
                       ), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_output_edge (.regout (o_edge), .datain (
                       output_edge_22n5s1), .sdata (1'b0), .clk (i_clock), .ena (
                       1'b1), .aclr (1'b0), .sclr (sub4_13_), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_mode_1_ (.regout (o_mode[1]), .datain (
                       debug_num_5_1__rename973), .sdata (1'b0), .clk (i_clock)
                       , .ena (1'b1), .aclr (1'b0), .sclr (i_reset), .sload (
                       1'b0)) ;
    cycloneii_lcell_ff reg_mode_0_ (.regout (px34), .datain (nx26373z1), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       i_reset), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_max3_9_ (.regout (max3[9]), .datain (r11[9]), .sdata (
                       r12[9]), .clk (i_clock), .ena (debug_num_5_1__rename973)
                       , .aclr (1'b0), .sclr (1'b0), .sload (sub3_10_)) ;
    cycloneii_lcell_ff reg_max3_8_ (.regout (max3[8]), .datain (r11[8]), .sdata (
                       r12[8]), .clk (i_clock), .ena (debug_num_5_1__rename973)
                       , .aclr (1'b0), .sclr (1'b0), .sload (sub3_10_)) ;
    cycloneii_lcell_ff reg_max3_7_ (.regout (max3[7]), .datain (r11[7]), .sdata (
                       r12[7]), .clk (i_clock), .ena (debug_num_5_1__rename973)
                       , .aclr (1'b0), .sclr (1'b0), .sload (sub3_10_)) ;
    cycloneii_lcell_ff reg_max3_6_ (.regout (max3[6]), .datain (r11[6]), .sdata (
                       r12[6]), .clk (i_clock), .ena (debug_num_5_1__rename973)
                       , .aclr (1'b0), .sclr (1'b0), .sload (sub3_10_)) ;
    cycloneii_lcell_ff reg_max3_5_ (.regout (max3[5]), .datain (r11[5]), .sdata (
                       r12[5]), .clk (i_clock), .ena (debug_num_5_1__rename973)
                       , .aclr (1'b0), .sclr (1'b0), .sload (sub3_10_)) ;
    cycloneii_lcell_ff reg_max3_4_ (.regout (max3[4]), .datain (r11[4]), .sdata (
                       r12[4]), .clk (i_clock), .ena (debug_num_5_1__rename973)
                       , .aclr (1'b0), .sclr (1'b0), .sload (sub3_10_)) ;
    cycloneii_lcell_ff reg_max3_3_ (.regout (max3[3]), .datain (r11[3]), .sdata (
                       r12[3]), .clk (i_clock), .ena (debug_num_5_1__rename973)
                       , .aclr (1'b0), .sclr (1'b0), .sload (sub3_10_)) ;
    cycloneii_lcell_ff reg_max3_2_ (.regout (max3[2]), .datain (r11[2]), .sdata (
                       r12[2]), .clk (i_clock), .ena (debug_num_5_1__rename973)
                       , .aclr (1'b0), .sclr (1'b0), .sload (sub3_10_)) ;
    cycloneii_lcell_ff reg_max3_1_ (.regout (max3[1]), .datain (r11[1]), .sdata (
                       r12[1]), .clk (i_clock), .ena (debug_num_5_1__rename973)
                       , .aclr (1'b0), .sclr (1'b0), .sload (sub3_10_)) ;
    cycloneii_lcell_ff reg_max3_0_ (.regout (max3[0]), .datain (r11[0]), .sdata (
                       r12[0]), .clk (i_clock), .ena (debug_num_5_1__rename973)
                       , .aclr (1'b0), .sclr (1'b0), .sload (sub3_10_)) ;
    cycloneii_lcell_ff reg_max2_9_ (.regout (max2[9]), .datain (r9[9]), .sdata (
                       r11[9]), .clk (i_clock), .ena (debug_num_5_1__rename973)
                       , .aclr (1'b0), .sclr (1'b0), .sload (sub2_10_)) ;
    cycloneii_lcell_ff reg_max2_8_ (.regout (max2[8]), .datain (r9[8]), .sdata (
                       r11[8]), .clk (i_clock), .ena (debug_num_5_1__rename973)
                       , .aclr (1'b0), .sclr (1'b0), .sload (sub2_10_)) ;
    cycloneii_lcell_ff reg_max2_7_ (.regout (max2[7]), .datain (r9[7]), .sdata (
                       r11[7]), .clk (i_clock), .ena (debug_num_5_1__rename973)
                       , .aclr (1'b0), .sclr (1'b0), .sload (sub2_10_)) ;
    cycloneii_lcell_ff reg_max2_6_ (.regout (max2[6]), .datain (r9[6]), .sdata (
                       r11[6]), .clk (i_clock), .ena (debug_num_5_1__rename973)
                       , .aclr (1'b0), .sclr (1'b0), .sload (sub2_10_)) ;
    cycloneii_lcell_ff reg_max2_5_ (.regout (max2[5]), .datain (r9[5]), .sdata (
                       r11[5]), .clk (i_clock), .ena (debug_num_5_1__rename973)
                       , .aclr (1'b0), .sclr (1'b0), .sload (sub2_10_)) ;
    cycloneii_lcell_ff reg_max2_4_ (.regout (max2[4]), .datain (r9[4]), .sdata (
                       r11[4]), .clk (i_clock), .ena (debug_num_5_1__rename973)
                       , .aclr (1'b0), .sclr (1'b0), .sload (sub2_10_)) ;
    cycloneii_lcell_ff reg_max2_3_ (.regout (max2[3]), .datain (r9[3]), .sdata (
                       r11[3]), .clk (i_clock), .ena (debug_num_5_1__rename973)
                       , .aclr (1'b0), .sclr (1'b0), .sload (sub2_10_)) ;
    cycloneii_lcell_ff reg_max2_2_ (.regout (max2[2]), .datain (r9[2]), .sdata (
                       r11[2]), .clk (i_clock), .ena (debug_num_5_1__rename973)
                       , .aclr (1'b0), .sclr (1'b0), .sload (sub2_10_)) ;
    cycloneii_lcell_ff reg_max2_1_ (.regout (max2[1]), .datain (r9[1]), .sdata (
                       r11[1]), .clk (i_clock), .ena (debug_num_5_1__rename973)
                       , .aclr (1'b0), .sclr (1'b0), .sload (sub2_10_)) ;
    cycloneii_lcell_ff reg_max2_0_ (.regout (max2[0]), .datain (r9[0]), .sdata (
                       r11[0]), .clk (i_clock), .ena (debug_num_5_1__rename973)
                       , .aclr (1'b0), .sclr (1'b0), .sload (sub2_10_)) ;
    cycloneii_lcell_ff reg_max1_7_ (.regout (max1[7]), .datain (r1[7]), .sdata (
                       r2[7]), .clk (i_clock), .ena (debug_num_5_1__rename973), 
                       .aclr (1'b0), .sclr (1'b0), .sload (sub1_8_)) ;
    cycloneii_lcell_ff reg_max1_6_ (.regout (max1[6]), .datain (r1[6]), .sdata (
                       r2[6]), .clk (i_clock), .ena (debug_num_5_1__rename973), 
                       .aclr (1'b0), .sclr (1'b0), .sload (sub1_8_)) ;
    cycloneii_lcell_ff reg_max1_5_ (.regout (max1[5]), .datain (r1[5]), .sdata (
                       r2[5]), .clk (i_clock), .ena (debug_num_5_1__rename973), 
                       .aclr (1'b0), .sclr (1'b0), .sload (sub1_8_)) ;
    cycloneii_lcell_ff reg_max1_4_ (.regout (max1[4]), .datain (r1[4]), .sdata (
                       r2[4]), .clk (i_clock), .ena (debug_num_5_1__rename973), 
                       .aclr (1'b0), .sclr (1'b0), .sload (sub1_8_)) ;
    cycloneii_lcell_ff reg_max1_3_ (.regout (max1[3]), .datain (r1[3]), .sdata (
                       r2[3]), .clk (i_clock), .ena (debug_num_5_1__rename973), 
                       .aclr (1'b0), .sclr (1'b0), .sload (sub1_8_)) ;
    cycloneii_lcell_ff reg_max1_2_ (.regout (max1[2]), .datain (r1[2]), .sdata (
                       r2[2]), .clk (i_clock), .ena (debug_num_5_1__rename973), 
                       .aclr (1'b0), .sclr (1'b0), .sload (sub1_8_)) ;
    cycloneii_lcell_ff reg_max1_1_ (.regout (max1[1]), .datain (r1[1]), .sdata (
                       r2[1]), .clk (i_clock), .ena (debug_num_5_1__rename973), 
                       .aclr (1'b0), .sclr (1'b0), .sload (sub1_8_)) ;
    cycloneii_lcell_ff reg_max1_0_ (.regout (max1[0]), .datain (r1[0]), .sdata (
                       r2[0]), .clk (i_clock), .ena (debug_num_5_1__rename973), 
                       .aclr (1'b0), .sclr (1'b0), .sload (sub1_8_)) ;
    cycloneii_lcell_ff reg_i_7_ (.regout (i[7]), .datain (d[7]), .sdata (1'b0), 
                       .clk (i_clock), .ena (i_valid), .aclr (1'b0), .sclr (1'b0
                       ), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_i_6_ (.regout (i[6]), .datain (d[6]), .sdata (1'b0), 
                       .clk (i_clock), .ena (i_valid), .aclr (1'b0), .sclr (1'b0
                       ), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_i_5_ (.regout (i[5]), .datain (d[5]), .sdata (1'b0), 
                       .clk (i_clock), .ena (i_valid), .aclr (1'b0), .sclr (1'b0
                       ), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_i_4_ (.regout (i[4]), .datain (d[4]), .sdata (1'b0), 
                       .clk (i_clock), .ena (i_valid), .aclr (1'b0), .sclr (1'b0
                       ), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_i_3_ (.regout (i[3]), .datain (d[3]), .sdata (1'b0), 
                       .clk (i_clock), .ena (i_valid), .aclr (1'b0), .sclr (1'b0
                       ), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_i_2_ (.regout (i[2]), .datain (d[2]), .sdata (1'b0), 
                       .clk (i_clock), .ena (i_valid), .aclr (1'b0), .sclr (1'b0
                       ), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_i_1_ (.regout (i[1]), .datain (d[1]), .sdata (1'b0), 
                       .clk (i_clock), .ena (i_valid), .aclr (1'b0), .sclr (1'b0
                       ), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_i_0_ (.regout (i[0]), .datain (d[0]), .sdata (1'b0), 
                       .clk (i_clock), .ena (i_valid), .aclr (1'b0), .sclr (1'b0
                       ), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_h_7_ (.regout (h[7]), .datain (i[7]), .sdata (1'b0), 
                       .clk (i_clock), .ena (i_valid), .aclr (1'b0), .sclr (1'b0
                       ), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_h_6_ (.regout (h[6]), .datain (i[6]), .sdata (1'b0), 
                       .clk (i_clock), .ena (i_valid), .aclr (1'b0), .sclr (1'b0
                       ), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_h_5_ (.regout (h[5]), .datain (i[5]), .sdata (1'b0), 
                       .clk (i_clock), .ena (i_valid), .aclr (1'b0), .sclr (1'b0
                       ), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_h_4_ (.regout (h[4]), .datain (i[4]), .sdata (1'b0), 
                       .clk (i_clock), .ena (i_valid), .aclr (1'b0), .sclr (1'b0
                       ), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_h_3_ (.regout (h[3]), .datain (i[3]), .sdata (1'b0), 
                       .clk (i_clock), .ena (i_valid), .aclr (1'b0), .sclr (1'b0
                       ), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_h_2_ (.regout (h[2]), .datain (i[2]), .sdata (1'b0), 
                       .clk (i_clock), .ena (i_valid), .aclr (1'b0), .sclr (1'b0
                       ), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_h_1_ (.regout (h[1]), .datain (i[1]), .sdata (1'b0), 
                       .clk (i_clock), .ena (i_valid), .aclr (1'b0), .sclr (1'b0
                       ), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_h_0_ (.regout (h[0]), .datain (i[0]), .sdata (1'b0), 
                       .clk (i_clock), .ena (i_valid), .aclr (1'b0), .sclr (1'b0
                       ), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_g_7_ (.regout (g[7]), .datain (f[7]), .sdata (1'b0), 
                       .clk (i_clock), .ena (i_valid), .aclr (1'b0), .sclr (1'b0
                       ), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_g_6_ (.regout (g[6]), .datain (f[6]), .sdata (1'b0), 
                       .clk (i_clock), .ena (i_valid), .aclr (1'b0), .sclr (1'b0
                       ), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_g_5_ (.regout (g[5]), .datain (f[5]), .sdata (1'b0), 
                       .clk (i_clock), .ena (i_valid), .aclr (1'b0), .sclr (1'b0
                       ), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_g_4_ (.regout (g[4]), .datain (f[4]), .sdata (1'b0), 
                       .clk (i_clock), .ena (i_valid), .aclr (1'b0), .sclr (1'b0
                       ), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_g_3_ (.regout (g[3]), .datain (f[3]), .sdata (1'b0), 
                       .clk (i_clock), .ena (i_valid), .aclr (1'b0), .sclr (1'b0
                       ), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_g_2_ (.regout (g[2]), .datain (f[2]), .sdata (1'b0), 
                       .clk (i_clock), .ena (i_valid), .aclr (1'b0), .sclr (1'b0
                       ), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_g_1_ (.regout (g[1]), .datain (f[1]), .sdata (1'b0), 
                       .clk (i_clock), .ena (i_valid), .aclr (1'b0), .sclr (1'b0
                       ), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_g_0_ (.regout (g[0]), .datain (f[0]), .sdata (1'b0), 
                       .clk (i_clock), .ena (i_valid), .aclr (1'b0), .sclr (1'b0
                       ), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_f_7_ (.regout (f[7]), .datain (e[7]), .sdata (1'b0), 
                       .clk (i_clock), .ena (i_valid), .aclr (1'b0), .sclr (1'b0
                       ), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_f_6_ (.regout (f[6]), .datain (e[6]), .sdata (1'b0), 
                       .clk (i_clock), .ena (i_valid), .aclr (1'b0), .sclr (1'b0
                       ), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_f_5_ (.regout (f[5]), .datain (e[5]), .sdata (1'b0), 
                       .clk (i_clock), .ena (i_valid), .aclr (1'b0), .sclr (1'b0
                       ), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_f_4_ (.regout (f[4]), .datain (e[4]), .sdata (1'b0), 
                       .clk (i_clock), .ena (i_valid), .aclr (1'b0), .sclr (1'b0
                       ), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_f_3_ (.regout (f[3]), .datain (e[3]), .sdata (1'b0), 
                       .clk (i_clock), .ena (i_valid), .aclr (1'b0), .sclr (1'b0
                       ), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_f_2_ (.regout (f[2]), .datain (e[2]), .sdata (1'b0), 
                       .clk (i_clock), .ena (i_valid), .aclr (1'b0), .sclr (1'b0
                       ), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_f_1_ (.regout (f[1]), .datain (e[1]), .sdata (1'b0), 
                       .clk (i_clock), .ena (i_valid), .aclr (1'b0), .sclr (1'b0
                       ), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_f_0_ (.regout (f[0]), .datain (e[0]), .sdata (1'b0), 
                       .clk (i_clock), .ena (i_valid), .aclr (1'b0), .sclr (1'b0
                       ), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_end_of_img (.regout (end_of_img), .datain (nx17322z2)
                       , .sdata (1'b0), .clk (i_clock), .ena (nx6176z1), .aclr (
                       1'b0), .sclr (i_reset), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_e_7_ (.regout (e[7]), .datain (i_pixel[7]), .sdata (
                       1'b0), .clk (i_clock), .ena (i_valid), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_e_6_ (.regout (e[6]), .datain (i_pixel[6]), .sdata (
                       1'b0), .clk (i_clock), .ena (i_valid), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_e_5_ (.regout (e[5]), .datain (i_pixel[5]), .sdata (
                       1'b0), .clk (i_clock), .ena (i_valid), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_e_4_ (.regout (e[4]), .datain (i_pixel[4]), .sdata (
                       1'b0), .clk (i_clock), .ena (i_valid), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_e_3_ (.regout (e[3]), .datain (i_pixel[3]), .sdata (
                       1'b0), .clk (i_clock), .ena (i_valid), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_e_2_ (.regout (e[2]), .datain (i_pixel[2]), .sdata (
                       1'b0), .clk (i_clock), .ena (i_valid), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_e_1_ (.regout (e[1]), .datain (i_pixel[1]), .sdata (
                       1'b0), .clk (i_clock), .ena (i_valid), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_e_0_ (.regout (e[0]), .datain (i_pixel[0]), .sdata (
                       1'b0), .clk (i_clock), .ena (i_valid), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_dir7_2_ (.regout (dir7[2]), .datain (nx44114z1), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_dir7_1_ (.regout (dir7[1]), .datain (nx45111z1), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_dir7_0_ (.regout (dir7[0]), .datain (nx46108z1), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_dir6_2_ (.regout (dir6_2_), .datain (nx35695z1), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_dir6_1_ (.regout (nx45111z2), .datain (NOT_dir5_1_), 
                       .sdata (1'b0), .clk (i_clock), .ena (nx36692z1), .aclr (
                       1'b0), .sclr (nx36692z2), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_dir6_0_ (.regout (nx46108z3), .datain (NOT_dir5_0_), 
                       .sdata (1'b0), .clk (i_clock), .ena (nx36692z1), .aclr (
                       1'b0), .sclr (nx36692z2), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_dir5_2_ (.regout (dir5[2]), .datain (dir5_18n5ss1_2_)
                       , .sdata (1'b0), .clk (i_clock), .ena (v[4]), .aclr (1'b0
                       ), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_dir5_1_ (.regout (dir5[1]), .datain (not_sub2_10), .sdata (
                       1'b0), .clk (i_clock), .ena (v[4]), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_dir5_0_ (.regout (dir5[0]), .datain (dir2_2_), .sdata (
                       1'b0), .clk (i_clock), .ena (v[4]), .aclr (1'b0), .sclr (
                       nx36266z1), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_dir4_2_ (.regout (dir4_2_), .datain (nx46679z1), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_dir4_0_ (.regout (dir4_0_), .datain (nx44685z1), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_dir3_2_ (.regout (dir3_2_), .datain (nx10438z1), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_dir2_2_ (.regout (dir2_2_), .datain (nx2019z1), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_dir1_2_ (.regout (dir1_2_), .datain (sub1_8_), .sdata (
                       1'b0), .clk (i_clock), .ena (v[1]), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_d_7_ (.regout (d[7]), .datain (nx36625z1), .sdata (
                       q2[7]), .clk (i_clock), .ena (nx20492z2), .aclr (1'b0), .sclr (
                       1'b0), .sload (t[1])) ;
    cycloneii_lcell_ff reg_d_6_ (.regout (d[6]), .datain (nx35628z1), .sdata (
                       q2[6]), .clk (i_clock), .ena (nx20492z2), .aclr (1'b0), .sclr (
                       1'b0), .sload (t[1])) ;
    cycloneii_lcell_ff reg_d_5_ (.regout (d[5]), .datain (nx34631z1), .sdata (
                       q2[5]), .clk (i_clock), .ena (nx20492z2), .aclr (1'b0), .sclr (
                       1'b0), .sload (t[1])) ;
    cycloneii_lcell_ff reg_d_4_ (.regout (d[4]), .datain (nx33634z1), .sdata (
                       q2[4]), .clk (i_clock), .ena (nx20492z2), .aclr (1'b0), .sclr (
                       1'b0), .sload (t[1])) ;
    cycloneii_lcell_ff reg_d_3_ (.regout (d[3]), .datain (nx32637z3), .sdata (
                       q2[3]), .clk (i_clock), .ena (nx20492z2), .aclr (1'b0), .sclr (
                       1'b0), .sload (t[1])) ;
    cycloneii_lcell_ff reg_d_2_ (.regout (d[2]), .datain (nx31640z3), .sdata (
                       q2[2]), .clk (i_clock), .ena (nx20492z2), .aclr (1'b0), .sclr (
                       1'b0), .sload (t[1])) ;
    cycloneii_lcell_ff reg_d_1_ (.regout (d[1]), .datain (nx30643z3), .sdata (
                       q2[1]), .clk (i_clock), .ena (nx20492z2), .aclr (1'b0), .sclr (
                       1'b0), .sload (t[1])) ;
    cycloneii_lcell_ff reg_d_0_ (.regout (d[0]), .datain (nx29646z3), .sdata (
                       q2[0]), .clk (i_clock), .ena (nx20492z2), .aclr (1'b0), .sclr (
                       1'b0), .sload (t[1])) ;
    cycloneii_lcell_ff reg_c_7_ (.regout (c[7]), .datain (nx20492z1), .sdata (
                       q1[7]), .clk (i_clock), .ena (nx20492z2), .aclr (1'b0), .sclr (
                       1'b0), .sload (t[1])) ;
    cycloneii_lcell_ff reg_c_6_ (.regout (c[6]), .datain (nx21489z1), .sdata (
                       q1[6]), .clk (i_clock), .ena (nx20492z2), .aclr (1'b0), .sclr (
                       1'b0), .sload (t[1])) ;
    cycloneii_lcell_ff reg_c_5_ (.regout (c[5]), .datain (nx22486z1), .sdata (
                       q1[5]), .clk (i_clock), .ena (nx20492z2), .aclr (1'b0), .sclr (
                       1'b0), .sload (t[1])) ;
    cycloneii_lcell_ff reg_c_4_ (.regout (c[4]), .datain (nx23483z1), .sdata (
                       q1[4]), .clk (i_clock), .ena (nx20492z2), .aclr (1'b0), .sclr (
                       1'b0), .sload (t[1])) ;
    cycloneii_lcell_ff reg_c_3_ (.regout (c[3]), .datain (nx24480z1), .sdata (
                       q1[3]), .clk (i_clock), .ena (nx20492z2), .aclr (1'b0), .sclr (
                       1'b0), .sload (t[1])) ;
    cycloneii_lcell_ff reg_c_2_ (.regout (c[2]), .datain (nx25477z1), .sdata (
                       q1[2]), .clk (i_clock), .ena (nx20492z2), .aclr (1'b0), .sclr (
                       1'b0), .sload (t[1])) ;
    cycloneii_lcell_ff reg_c_1_ (.regout (c[1]), .datain (nx26474z1), .sdata (
                       q1[1]), .clk (i_clock), .ena (nx20492z2), .aclr (1'b0), .sclr (
                       1'b0), .sload (t[1])) ;
    cycloneii_lcell_ff reg_c_0_ (.regout (c[0]), .datain (nx27471z1), .sdata (
                       q1[0]), .clk (i_clock), .ena (nx20492z2), .aclr (1'b0), .sclr (
                       1'b0), .sload (t[1])) ;
    cycloneii_lcell_ff reg_b_7_ (.regout (b[7]), .datain (c[7]), .sdata (1'b0), 
                       .clk (i_clock), .ena (i_valid), .aclr (1'b0), .sclr (1'b0
                       ), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_b_6_ (.regout (b[6]), .datain (c[6]), .sdata (1'b0), 
                       .clk (i_clock), .ena (i_valid), .aclr (1'b0), .sclr (1'b0
                       ), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_b_5_ (.regout (b[5]), .datain (c[5]), .sdata (1'b0), 
                       .clk (i_clock), .ena (i_valid), .aclr (1'b0), .sclr (1'b0
                       ), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_b_4_ (.regout (b[4]), .datain (c[4]), .sdata (1'b0), 
                       .clk (i_clock), .ena (i_valid), .aclr (1'b0), .sclr (1'b0
                       ), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_b_3_ (.regout (b[3]), .datain (c[3]), .sdata (1'b0), 
                       .clk (i_clock), .ena (i_valid), .aclr (1'b0), .sclr (1'b0
                       ), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_b_2_ (.regout (b[2]), .datain (c[2]), .sdata (1'b0), 
                       .clk (i_clock), .ena (i_valid), .aclr (1'b0), .sclr (1'b0
                       ), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_b_1_ (.regout (b[1]), .datain (c[1]), .sdata (1'b0), 
                       .clk (i_clock), .ena (i_valid), .aclr (1'b0), .sclr (1'b0
                       ), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_b_0_ (.regout (b[0]), .datain (c[0]), .sdata (1'b0), 
                       .clk (i_clock), .ena (i_valid), .aclr (1'b0), .sclr (1'b0
                       ), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_add4_9_ (.regout (add4[9]), .datain (add4_22n4s1[9])
                       , .sdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0
                       ), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_add4_8_ (.regout (add4[8]), .datain (add4_22n4s1[8])
                       , .sdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0
                       ), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_add4_7_ (.regout (add4[7]), .datain (add4_22n4s1[7])
                       , .sdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0
                       ), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_add4_6_ (.regout (add4[6]), .datain (add4_22n4s1[6])
                       , .sdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0
                       ), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_add4_5_ (.regout (add4[5]), .datain (add4_22n4s1[5])
                       , .sdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0
                       ), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_add4_4_ (.regout (add4[4]), .datain (add4_22n4s1[4])
                       , .sdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0
                       ), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_add4_3_ (.regout (add4[3]), .datain (add4_22n4s1[3])
                       , .sdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0
                       ), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_add4_2_ (.regout (add4[2]), .datain (add4_22n4s1[2])
                       , .sdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0
                       ), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_add4_12_ (.regout (add4[12]), .datain (
                       add4_22n4s1[12]), .sdata (1'b0), .clk (i_clock), .ena (
                       1'b1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_add4_11_ (.regout (add4[11]), .datain (
                       add4_22n4s1[11]), .sdata (1'b0), .clk (i_clock), .ena (
                       1'b1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_add4_10_ (.regout (add4[10]), .datain (
                       add4_22n4s1[10]), .sdata (1'b0), .clk (i_clock), .ena (
                       1'b1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_add4_1_ (.regout (add4[1]), .datain (add4_22n4s1[1])
                       , .sdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0
                       ), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_add4_0_ (.regout (add4[0]), .datain (r13[0]), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_add3_9_ (.regout (add3[9]), .datain (add3_22n4s1[9])
                       , .sdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0
                       ), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_add3_8_ (.regout (add3[8]), .datain (add3_22n4s1[8])
                       , .sdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0
                       ), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_add3_7_ (.regout (add3[7]), .datain (add3_22n4s1[7])
                       , .sdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0
                       ), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_add3_6_ (.regout (add3[6]), .datain (add3_22n4s1[6])
                       , .sdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0
                       ), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_add3_5_ (.regout (add3[5]), .datain (add3_22n4s1[5])
                       , .sdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0
                       ), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_add3_4_ (.regout (add3[4]), .datain (add3_22n4s1[4])
                       , .sdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0
                       ), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_add3_3_ (.regout (add3[3]), .datain (add3_22n4s1[3])
                       , .sdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0
                       ), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_add3_2_ (.regout (add3[2]), .datain (add3_22n4s1[2])
                       , .sdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0
                       ), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_add3_10_ (.regout (add3[10]), .datain (
                       add3_22n4s1[10]), .sdata (1'b0), .clk (i_clock), .ena (
                       1'b1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_add3_1_ (.regout (add3[1]), .datain (add3_22n4s1[1])
                       , .sdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0
                       ), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_add3_0_ (.regout (add3[0]), .datain (add3_22n4s1[0])
                       , .sdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0
                       ), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_add2_9_ (.regout (add2[9]), .datain (add2_22n4s1[9])
                       , .sdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0
                       ), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_add2_8_ (.regout (add2[8]), .datain (add2_22n4s1[8])
                       , .sdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0
                       ), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_add2_7_ (.regout (add2[7]), .datain (add2_22n4s1[7])
                       , .sdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0
                       ), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_add2_6_ (.regout (add2[6]), .datain (add2_22n4s1[6])
                       , .sdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0
                       ), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_add2_5_ (.regout (add2[5]), .datain (add2_22n4s1[5])
                       , .sdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0
                       ), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_add2_4_ (.regout (add2[4]), .datain (add2_22n4s1[4])
                       , .sdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0
                       ), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_add2_3_ (.regout (add2[3]), .datain (add2_22n4s1[3])
                       , .sdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0
                       ), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_add2_2_ (.regout (add2[2]), .datain (add2_22n4s1[2])
                       , .sdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0
                       ), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_add2_1_ (.regout (add2[1]), .datain (add2_22n4s1[1])
                       , .sdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0
                       ), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_add2_0_ (.regout (add2[0]), .datain (add2_22n4s1[0])
                       , .sdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0
                       ), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_add1_8_ (.regout (add1[8]), .datain (add1_22n4s1[8])
                       , .sdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0
                       ), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_add1_7_ (.regout (add1[7]), .datain (add1_22n4s1[7])
                       , .sdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0
                       ), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_add1_6_ (.regout (add1[6]), .datain (add1_22n4s1[6])
                       , .sdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0
                       ), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_add1_5_ (.regout (add1[5]), .datain (add1_22n4s1[5])
                       , .sdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0
                       ), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_add1_4_ (.regout (add1[4]), .datain (add1_22n4s1[4])
                       , .sdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0
                       ), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_add1_3_ (.regout (add1[3]), .datain (add1_22n4s1[3])
                       , .sdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0
                       ), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_add1_2_ (.regout (add1[2]), .datain (add1_22n4s1[2])
                       , .sdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0
                       ), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_add1_1_ (.regout (add1[1]), .datain (add1_22n4s1[1])
                       , .sdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0
                       ), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_add1_0_ (.regout (add1[0]), .datain (add1_22n4s1[0])
                       , .sdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0
                       ), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_a_7_ (.regout (a[7]), .datain (b[7]), .sdata (1'b0), 
                       .clk (i_clock), .ena (i_valid), .aclr (1'b0), .sclr (1'b0
                       ), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_a_6_ (.regout (a[6]), .datain (b[6]), .sdata (1'b0), 
                       .clk (i_clock), .ena (i_valid), .aclr (1'b0), .sclr (1'b0
                       ), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_a_5_ (.regout (a[5]), .datain (b[5]), .sdata (1'b0), 
                       .clk (i_clock), .ena (i_valid), .aclr (1'b0), .sclr (1'b0
                       ), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_a_4_ (.regout (a[4]), .datain (b[4]), .sdata (1'b0), 
                       .clk (i_clock), .ena (i_valid), .aclr (1'b0), .sclr (1'b0
                       ), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_a_3_ (.regout (a[3]), .datain (b[3]), .sdata (1'b0), 
                       .clk (i_clock), .ena (i_valid), .aclr (1'b0), .sclr (1'b0
                       ), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_a_2_ (.regout (a[2]), .datain (b[2]), .sdata (1'b0), 
                       .clk (i_clock), .ena (i_valid), .aclr (1'b0), .sclr (1'b0
                       ), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_a_1_ (.regout (a[1]), .datain (b[1]), .sdata (1'b0), 
                       .clk (i_clock), .ena (i_valid), .aclr (1'b0), .sclr (1'b0
                       ), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_a_0_ (.regout (a[0]), .datain (b[0]), .sdata (1'b0), 
                       .clk (i_clock), .ena (i_valid), .aclr (1'b0), .sclr (1'b0
                       ), .sload (1'b0)) ;
    cycloneii_lcell_comb ix38525z52924 (.combout (nx38525z1), .dataa (nx17322z6)
                         , .datab (i_valid), .datac (p_nrst_int), .datad (1'b1)
                         , .cin (1'b0)) ;
                         
                         defparam ix38525z52924.lut_mask = 16'h8f8f;
    cycloneii_lcell_comb ix6176z52923 (.combout (nx6176z1), .dataa (nx17322z2), 
                         .datab (end_of_img), .datac (i_valid), .datad (
                         p_nrst_int), .cin (1'b0)) ;
                         
                         defparam ix6176z52923.lut_mask = 16'he0ff;
    cycloneii_lcell_comb ix17322z52923 (.combout (nx17322z1), .dataa (nx17322z2)
                         , .datab (end_of_img), .datac (i_valid), .datad (
                         p_nrst_int), .cin (1'b0)) ;
                         
                         defparam ix17322z52923.lut_mask = 16'hd0ff;
    cycloneii_lcell_comb ix46108z52924 (.combout (nx46108z2), .dataa (v[6]), .datab (
                         dir4_0_), .datac (nx46108z3), .datad (sub3_10_), .cin (
                         1'b0)) ;
                         defparam ix46108z52924.lut_mask = 16'h0fdd;
    cycloneii_lcell_comb ix44114z52924 (.combout (nx44114z2), .dataa (v[6]), .datab (
                         dir4_2_), .datac (dir6_2_), .datad (sub3_10_), .cin (
                         1'b0)) ;
                         defparam ix44114z52924.lut_mask = 16'hf0dd;
    cycloneii_lcell_comb ix17322z52927 (.combout (nx17322z5), .dataa (o_row[3])
                         , .datab (o_row[2]), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix17322z52927.lut_mask = 16'h8888;
    cycloneii_lcell_comb ix26373z52924 (.combout (nx26373z2), .dataa (o_mode[1])
                         , .datab (px34), .datac (v[0]), .datad (end_of_img), .cin (
                         1'b0)) ;
                         defparam ix26373z52924.lut_mask = 16'h00f7;
    cycloneii_lcell_comb ix20813z52927 (.combout (nx20813z5), .dataa (o_row[1])
                         , .datab (v[6]), .datac (nx20813z6), .datad (nx20813z7)
                         , .cin (1'b0)) ;
                         
                         defparam ix20813z52927.lut_mask = 16'h8880;
    cycloneii_lcell_comb ix20813z52929 (.combout (nx20813z7), .dataa (x[3]), .datab (
                         x[2]), .datac (x[1]), .datad (x[0]), .cin (1'b0)) ;
                         
                         defparam ix20813z52929.lut_mask = 16'hfeee;
    cycloneii_lcell_comb ix20813z52928 (.combout (nx20813z6), .dataa (x[6]), .datab (
                         x[5]), .datac (x[4]), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix20813z52928.lut_mask = 16'hfefe;
    cycloneii_lcell_comb ix20813z52926 (.combout (nx20813z4), .dataa (o_row[1])
                         , .datab (o_row[0]), .datac (x[7]), .datad (v[6]), .cin (
                         1'b0)) ;
                         defparam ix20813z52926.lut_mask = 16'ha800;
    cycloneii_lcell_comb ix20813z52925 (.combout (nx20813z3), .dataa (o_row[4])
                         , .datab (o_row[3]), .datac (o_row[2]), .datad (v[6]), 
                         .cin (1'b0)) ;
                         
                         defparam ix20813z52925.lut_mask = 16'hfe00;
    cycloneii_lcell_comb ix20813z52924 (.combout (nx20813z2), .dataa (o_row[7])
                         , .datab (o_row[6]), .datac (o_row[5]), .datad (v[6]), 
                         .cin (1'b0)) ;
                         
                         defparam ix20813z52924.lut_mask = 16'hfe00;
    cycloneii_lcell_comb ix60630z52924 (.combout (nx60630z1), .dataa (sub4_10_)
                         , .datab (sub4_9_), .datac (sub4_8_), .datad (sub4_7_)
                         , .cin (1'b0)) ;
                         
                         defparam ix60630z52924.lut_mask = 16'hfeee;
    cycloneii_lcell_comb ix34077z52924 (.combout (nx34077z2), .dataa (v[2]), .datab (
                         v[1]), .datac (e[0]), .datad (g[0]), .cin (1'b0)) ;
                         
                         defparam ix34077z52924.lut_mask = 16'h3120;
    cycloneii_lcell_comb ix35074z52924 (.combout (nx35074z2), .dataa (v[2]), .datab (
                         v[1]), .datac (e[1]), .datad (g[1]), .cin (1'b0)) ;
                         
                         defparam ix35074z52924.lut_mask = 16'h3120;
    cycloneii_lcell_comb ix36071z52924 (.combout (nx36071z2), .dataa (v[2]), .datab (
                         v[1]), .datac (e[2]), .datad (g[2]), .cin (1'b0)) ;
                         
                         defparam ix36071z52924.lut_mask = 16'h3120;
    cycloneii_lcell_comb ix37068z52924 (.combout (nx37068z2), .dataa (v[2]), .datab (
                         v[1]), .datac (e[3]), .datad (g[3]), .cin (1'b0)) ;
                         
                         defparam ix37068z52924.lut_mask = 16'h3120;
    cycloneii_lcell_comb ix38065z52924 (.combout (nx38065z2), .dataa (v[2]), .datab (
                         v[1]), .datac (e[4]), .datad (g[4]), .cin (1'b0)) ;
                         
                         defparam ix38065z52924.lut_mask = 16'h3120;
    cycloneii_lcell_comb ix39062z52924 (.combout (nx39062z2), .dataa (v[2]), .datab (
                         v[1]), .datac (e[5]), .datad (g[5]), .cin (1'b0)) ;
                         
                         defparam ix39062z52924.lut_mask = 16'h3120;
    cycloneii_lcell_comb ix40059z52924 (.combout (nx40059z2), .dataa (v[2]), .datab (
                         v[1]), .datac (e[6]), .datad (g[6]), .cin (1'b0)) ;
                         
                         defparam ix40059z52924.lut_mask = 16'h3120;
    cycloneii_lcell_comb ix41056z52924 (.combout (nx41056z2), .dataa (v[2]), .datab (
                         v[1]), .datac (e[7]), .datad (g[7]), .cin (1'b0)) ;
                         
                         defparam ix41056z52924.lut_mask = 16'h3120;
    cycloneii_lcell_comb ix25658z52924 (.combout (nx25658z2), .dataa (v[2]), .datab (
                         v[1]), .datac (b[0]), .datad (h[0]), .cin (1'b0)) ;
                         
                         defparam ix25658z52924.lut_mask = 16'h3210;
    cycloneii_lcell_comb ix26655z52924 (.combout (nx26655z2), .dataa (v[2]), .datab (
                         v[1]), .datac (b[1]), .datad (h[1]), .cin (1'b0)) ;
                         
                         defparam ix26655z52924.lut_mask = 16'h3210;
    cycloneii_lcell_comb ix27652z52924 (.combout (nx27652z2), .dataa (v[2]), .datab (
                         v[1]), .datac (b[2]), .datad (h[2]), .cin (1'b0)) ;
                         
                         defparam ix27652z52924.lut_mask = 16'h3210;
    cycloneii_lcell_comb ix28649z52924 (.combout (nx28649z2), .dataa (v[2]), .datab (
                         v[1]), .datac (b[3]), .datad (h[3]), .cin (1'b0)) ;
                         
                         defparam ix28649z52924.lut_mask = 16'h3210;
    cycloneii_lcell_comb ix29646z52924 (.combout (nx29646z2), .dataa (v[2]), .datab (
                         v[1]), .datac (b[4]), .datad (h[4]), .cin (1'b0)) ;
                         
                         defparam ix29646z52924.lut_mask = 16'h3210;
    cycloneii_lcell_comb ix30643z52924 (.combout (nx30643z2), .dataa (v[2]), .datab (
                         v[1]), .datac (b[5]), .datad (h[5]), .cin (1'b0)) ;
                         
                         defparam ix30643z52924.lut_mask = 16'h3210;
    cycloneii_lcell_comb ix31640z52924 (.combout (nx31640z2), .dataa (v[2]), .datab (
                         v[1]), .datac (b[6]), .datad (h[6]), .cin (1'b0)) ;
                         
                         defparam ix31640z52924.lut_mask = 16'h3210;
    cycloneii_lcell_comb ix32637z52924 (.combout (nx32637z2), .dataa (v[2]), .datab (
                         v[1]), .datac (b[7]), .datad (h[7]), .cin (1'b0)) ;
                         
                         defparam ix32637z52924.lut_mask = 16'h3210;
    cycloneii_lcell_comb ix48297z52924 (.combout (nx48297z2), .dataa (v[2]), .datab (
                         v[1]), .datac (a[0]), .datad (f[0]), .cin (1'b0)) ;
                         
                         defparam ix48297z52924.lut_mask = 16'h3210;
    cycloneii_lcell_comb ix47300z52924 (.combout (nx47300z2), .dataa (v[2]), .datab (
                         v[1]), .datac (a[1]), .datad (f[1]), .cin (1'b0)) ;
                         
                         defparam ix47300z52924.lut_mask = 16'h3210;
    cycloneii_lcell_comb ix46303z52924 (.combout (nx46303z2), .dataa (v[2]), .datab (
                         v[1]), .datac (a[2]), .datad (f[2]), .cin (1'b0)) ;
                         
                         defparam ix46303z52924.lut_mask = 16'h3210;
    cycloneii_lcell_comb ix45306z52924 (.combout (nx45306z2), .dataa (v[2]), .datab (
                         v[1]), .datac (a[3]), .datad (f[3]), .cin (1'b0)) ;
                         
                         defparam ix45306z52924.lut_mask = 16'h3210;
    cycloneii_lcell_comb ix44309z52924 (.combout (nx44309z2), .dataa (v[2]), .datab (
                         v[1]), .datac (a[4]), .datad (f[4]), .cin (1'b0)) ;
                         
                         defparam ix44309z52924.lut_mask = 16'h3210;
    cycloneii_lcell_comb ix43312z52924 (.combout (nx43312z2), .dataa (v[2]), .datab (
                         v[1]), .datac (a[5]), .datad (f[5]), .cin (1'b0)) ;
                         
                         defparam ix43312z52924.lut_mask = 16'h3210;
    cycloneii_lcell_comb ix42315z52924 (.combout (nx42315z2), .dataa (v[2]), .datab (
                         v[1]), .datac (a[6]), .datad (f[6]), .cin (1'b0)) ;
                         
                         defparam ix42315z52924.lut_mask = 16'h3210;
    cycloneii_lcell_comb ix41318z52924 (.combout (nx41318z2), .dataa (v[2]), .datab (
                         v[1]), .datac (a[7]), .datad (f[7]), .cin (1'b0)) ;
                         
                         defparam ix41318z52924.lut_mask = 16'h3210;
    cycloneii_lcell_comb ix56716z52924 (.combout (nx56716z2), .dataa (v[2]), .datab (
                         v[1]), .datac (g[0]), .datad (h[0]), .cin (1'b0)) ;
                         
                         defparam ix56716z52924.lut_mask = 16'h3120;
    cycloneii_lcell_comb ix55719z52924 (.combout (nx55719z2), .dataa (v[2]), .datab (
                         v[1]), .datac (g[1]), .datad (h[1]), .cin (1'b0)) ;
                         
                         defparam ix55719z52924.lut_mask = 16'h3120;
    cycloneii_lcell_comb ix54722z52924 (.combout (nx54722z2), .dataa (v[2]), .datab (
                         v[1]), .datac (g[2]), .datad (h[2]), .cin (1'b0)) ;
                         
                         defparam ix54722z52924.lut_mask = 16'h3120;
    cycloneii_lcell_comb ix53725z52924 (.combout (nx53725z2), .dataa (v[2]), .datab (
                         v[1]), .datac (g[3]), .datad (h[3]), .cin (1'b0)) ;
                         
                         defparam ix53725z52924.lut_mask = 16'h3120;
    cycloneii_lcell_comb ix52728z52924 (.combout (nx52728z2), .dataa (v[2]), .datab (
                         v[1]), .datac (g[4]), .datad (h[4]), .cin (1'b0)) ;
                         
                         defparam ix52728z52924.lut_mask = 16'h3120;
    cycloneii_lcell_comb ix51731z52924 (.combout (nx51731z2), .dataa (v[2]), .datab (
                         v[1]), .datac (g[5]), .datad (h[5]), .cin (1'b0)) ;
                         
                         defparam ix51731z52924.lut_mask = 16'h3120;
    cycloneii_lcell_comb ix50734z52924 (.combout (nx50734z2), .dataa (v[2]), .datab (
                         v[1]), .datac (g[6]), .datad (h[6]), .cin (1'b0)) ;
                         
                         defparam ix50734z52924.lut_mask = 16'h3120;
    cycloneii_lcell_comb ix49737z52924 (.combout (nx49737z2), .dataa (v[2]), .datab (
                         v[1]), .datac (g[7]), .datad (h[7]), .cin (1'b0)) ;
                         
                         defparam ix49737z52924.lut_mask = 16'h3120;
    cycloneii_lcell_comb ix17322z52930 (.combout (nx17322z8), .dataa (x[7]), .datab (
                         x[6]), .datac (x[5]), .datad (x[4]), .cin (1'b0)) ;
                         
                         defparam ix17322z52930.lut_mask = 16'h8000;
    cycloneii_lcell_comb ix17322z52926 (.combout (nx17322z4), .dataa (o_row[7])
                         , .datab (o_row[6]), .datac (o_row[5]), .datad (
                         o_row[4]), .cin (1'b0)) ;
                         
                         defparam ix17322z52926.lut_mask = 16'h8000;
    cycloneii_lcell_comb ix46108z52923 (.combout (nx46108z1), .dataa (v[6]), .datab (
                         dir7[0]), .datac (sub3_10_), .datad (nx46108z2), .cin (
                         1'b0)) ;
                         defparam ix46108z52923.lut_mask = 16'hfe00;
    cycloneii_lcell_comb ix45111z52923 (.combout (nx45111z1), .dataa (v[6]), .datab (
                         nx45111z2), .datac (dir7[1]), .datad (sub3_10_), .cin (
                         1'b0)) ;
                         defparam ix45111z52923.lut_mask = 16'h3350;
    cycloneii_lcell_comb ix44114z52923 (.combout (nx44114z1), .dataa (v[6]), .datab (
                         dir7[2]), .datac (sub3_10_), .datad (nx44114z2), .cin (
                         1'b0)) ;
                         defparam ix44114z52923.lut_mask = 16'hfe00;
    cycloneii_lcell_comb ix17322z52931 (.combout (nx17322z9), .dataa (nx17322z6)
                         , .datab (nx17322z3), .datac (end_of_img), .datad (
                         p_nrst_int), .cin (1'b0)) ;
                         
                         defparam ix17322z52931.lut_mask = 16'hd0ff;
    cycloneii_lcell_comb ix35695z52923 (.combout (nx35695z1), .dataa (v[5]), .datab (
                         v[4]), .datac (dir6_2_), .datad (dir6_18n5ss1_2_), .cin (
                         1'b0)) ;
                         defparam ix35695z52923.lut_mask = 16'hf2d0;
    cycloneii_lcell_comb ix2019z52923 (.combout (nx2019z1), .dataa (v[2]), .datab (
                         v[1]), .datac (dir2_2_), .datad (sub1_8_), .cin (1'b0)
                         ) ;
                         defparam ix2019z52923.lut_mask = 16'hf2d0;
    cycloneii_lcell_comb ix10438z52923 (.combout (nx10438z1), .dataa (v[3]), .datab (
                         dir3_2_), .datac (sub1_8_), .datad (nx46679z2), .cin (
                         1'b0)) ;
                         defparam ix10438z52923.lut_mask = 16'hcce4;
    cycloneii_lcell_comb ix44685z52923 (.combout (nx44685z1), .dataa (dir4_0_), 
                         .datab (sub1_8_), .datac (nx46679z2), .datad (nx24302z2
                         ), .cin (1'b0)) ;
                         
                         defparam ix44685z52923.lut_mask = 16'ha3aa;
    cycloneii_lcell_comb ix46679z52923 (.combout (nx46679z1), .dataa (dir4_2_), 
                         .datab (sub1_8_), .datac (nx46679z2), .datad (nx24302z2
                         ), .cin (1'b0)) ;
                         
                         defparam ix46679z52923.lut_mask = 16'hacaa;
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
    cycloneii_lcell_comb ix32637z52926 (.combout (nx32637z3), .dataa (t[0]), .datab (
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
                         defparam ix49737z52923.lut_mask = 16'hf8f8;
    cycloneii_lcell_comb ix50734z52923 (.combout (nx50734z1), .dataa (v[1]), .datab (
                         d[6]), .datac (nx50734z2), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix50734z52923.lut_mask = 16'hf8f8;
    cycloneii_lcell_comb ix51731z52923 (.combout (nx51731z1), .dataa (v[1]), .datab (
                         d[5]), .datac (nx51731z2), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix51731z52923.lut_mask = 16'hf8f8;
    cycloneii_lcell_comb ix52728z52923 (.combout (nx52728z1), .dataa (v[1]), .datab (
                         d[4]), .datac (nx52728z2), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix52728z52923.lut_mask = 16'hf8f8;
    cycloneii_lcell_comb ix53725z52923 (.combout (nx53725z1), .dataa (v[1]), .datab (
                         d[3]), .datac (nx53725z2), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix53725z52923.lut_mask = 16'hf8f8;
    cycloneii_lcell_comb ix54722z52923 (.combout (nx54722z1), .dataa (v[1]), .datab (
                         d[2]), .datac (nx54722z2), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix54722z52923.lut_mask = 16'hf8f8;
    cycloneii_lcell_comb ix55719z52923 (.combout (nx55719z1), .dataa (v[1]), .datab (
                         d[1]), .datac (nx55719z2), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix55719z52923.lut_mask = 16'hf8f8;
    cycloneii_lcell_comb ix56716z52923 (.combout (nx56716z1), .dataa (v[1]), .datab (
                         d[0]), .datac (nx56716z2), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix56716z52923.lut_mask = 16'hf8f8;
    cycloneii_lcell_comb ix41318z52923 (.combout (nx41318z1), .dataa (v[1]), .datab (
                         e[7]), .datac (nx41318z2), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix41318z52923.lut_mask = 16'hf8f8;
    cycloneii_lcell_comb ix42315z52923 (.combout (nx42315z1), .dataa (v[1]), .datab (
                         e[6]), .datac (nx42315z2), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix42315z52923.lut_mask = 16'hf8f8;
    cycloneii_lcell_comb ix43312z52923 (.combout (nx43312z1), .dataa (v[1]), .datab (
                         e[5]), .datac (nx43312z2), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix43312z52923.lut_mask = 16'hf8f8;
    cycloneii_lcell_comb ix44309z52923 (.combout (nx44309z1), .dataa (v[1]), .datab (
                         e[4]), .datac (nx44309z2), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix44309z52923.lut_mask = 16'hf8f8;
    cycloneii_lcell_comb ix45306z52923 (.combout (nx45306z1), .dataa (v[1]), .datab (
                         e[3]), .datac (nx45306z2), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix45306z52923.lut_mask = 16'hf8f8;
    cycloneii_lcell_comb ix46303z52923 (.combout (nx46303z1), .dataa (v[1]), .datab (
                         e[2]), .datac (nx46303z2), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix46303z52923.lut_mask = 16'hf8f8;
    cycloneii_lcell_comb ix47300z52923 (.combout (nx47300z1), .dataa (v[1]), .datab (
                         e[1]), .datac (nx47300z2), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix47300z52923.lut_mask = 16'hf8f8;
    cycloneii_lcell_comb ix48297z52923 (.combout (nx48297z1), .dataa (v[1]), .datab (
                         e[0]), .datac (nx48297z2), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix48297z52923.lut_mask = 16'hf8f8;
    cycloneii_lcell_comb ix32637z52923 (.combout (nx32637z1), .dataa (v[1]), .datab (
                         f[7]), .datac (nx32637z2), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix32637z52923.lut_mask = 16'hf8f8;
    cycloneii_lcell_comb ix31640z52923 (.combout (nx31640z1), .dataa (v[1]), .datab (
                         f[6]), .datac (nx31640z2), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix31640z52923.lut_mask = 16'hf8f8;
    cycloneii_lcell_comb ix30643z52923 (.combout (nx30643z1), .dataa (v[1]), .datab (
                         f[5]), .datac (nx30643z2), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix30643z52923.lut_mask = 16'hf8f8;
    cycloneii_lcell_comb ix29646z52923 (.combout (nx29646z1), .dataa (v[1]), .datab (
                         f[4]), .datac (nx29646z2), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix29646z52923.lut_mask = 16'hf8f8;
    cycloneii_lcell_comb ix28649z52923 (.combout (nx28649z1), .dataa (v[1]), .datab (
                         f[3]), .datac (nx28649z2), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix28649z52923.lut_mask = 16'hf8f8;
    cycloneii_lcell_comb ix27652z52923 (.combout (nx27652z1), .dataa (v[1]), .datab (
                         f[2]), .datac (nx27652z2), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix27652z52923.lut_mask = 16'hf8f8;
    cycloneii_lcell_comb ix26655z52923 (.combout (nx26655z1), .dataa (v[1]), .datab (
                         f[1]), .datac (nx26655z2), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix26655z52923.lut_mask = 16'hf8f8;
    cycloneii_lcell_comb ix25658z52923 (.combout (nx25658z1), .dataa (v[1]), .datab (
                         f[0]), .datac (nx25658z2), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix25658z52923.lut_mask = 16'hf8f8;
    cycloneii_lcell_comb ix41056z52923 (.combout (nx41056z1), .dataa (v[1]), .datab (
                         c[7]), .datac (nx41056z2), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix41056z52923.lut_mask = 16'hf8f8;
    cycloneii_lcell_comb ix40059z52923 (.combout (nx40059z1), .dataa (v[1]), .datab (
                         c[6]), .datac (nx40059z2), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix40059z52923.lut_mask = 16'hf8f8;
    cycloneii_lcell_comb ix39062z52923 (.combout (nx39062z1), .dataa (v[1]), .datab (
                         c[5]), .datac (nx39062z2), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix39062z52923.lut_mask = 16'hf8f8;
    cycloneii_lcell_comb ix38065z52923 (.combout (nx38065z1), .dataa (v[1]), .datab (
                         c[4]), .datac (nx38065z2), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix38065z52923.lut_mask = 16'hf8f8;
    cycloneii_lcell_comb ix37068z52923 (.combout (nx37068z1), .dataa (v[1]), .datab (
                         c[3]), .datac (nx37068z2), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix37068z52923.lut_mask = 16'hf8f8;
    cycloneii_lcell_comb ix36071z52923 (.combout (nx36071z1), .dataa (v[1]), .datab (
                         c[2]), .datac (nx36071z2), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix36071z52923.lut_mask = 16'hf8f8;
    cycloneii_lcell_comb ix35074z52923 (.combout (nx35074z1), .dataa (v[1]), .datab (
                         c[1]), .datac (nx35074z2), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix35074z52923.lut_mask = 16'hf8f8;
    cycloneii_lcell_comb ix34077z52923 (.combout (nx34077z1), .dataa (v[1]), .datab (
                         c[0]), .datac (nx34077z2), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix34077z52923.lut_mask = 16'hf8f8;
    cycloneii_lcell_comb ix11375z52923 (.combout (p_rtlcs6), .dataa (o_mode[1])
                         , .datab (px34), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix11375z52923.lut_mask = 16'h1111;
    cycloneii_lcell_comb ix17322z52928 (.combout (nx17322z6), .dataa (x[3]), .datab (
                         x[2]), .datac (nx17322z7), .datad (nx17322z8), .cin (
                         1'b0)) ;
                         defparam ix17322z52928.lut_mask = 16'h8000;
    cycloneii_lcell_comb ix17322z52925 (.combout (nx17322z3), .dataa (o_row[1])
                         , .datab (o_row[0]), .datac (nx17322z4), .datad (
                         nx17322z5), .cin (1'b0)) ;
                         
                         defparam ix17322z52925.lut_mask = 16'h8000;
    cycloneii_lcell_comb ix24302z52924 (.combout (nx24302z2), .dataa (v[4]), .datab (
                         v[3]), .datac (1'b1), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix24302z52924.lut_mask = 16'h2222;
    cycloneii_lcell_comb ix46679z52924 (.combout (nx46679z2), .dataa (v[2]), .datab (
                         v[1]), .datac (1'b1), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix46679z52924.lut_mask = 16'heeee;
    cycloneii_lcell_comb ix36266z52923 (.combout (nx36266z1), .dataa (v[4]), .datab (
                         sub2_10_), .datac (1'b1), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix36266z52923.lut_mask = 16'h2222;
    cycloneii_lcell_comb ix36692z52925 (.combout (nx36692z2), .dataa (v[5]), .datab (
                         v[4]), .datac (sub2_10_), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix36692z52925.lut_mask = 16'h2020;
    cycloneii_lcell_comb ix17322z52924 (.combout (nx17322z2), .dataa (nx17322z3)
                         , .datab (nx17322z6), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix17322z52924.lut_mask = 16'h8888;
    cycloneii_lcell_comb ix60630z52923 (.combout (output_edge_22n5s1), .dataa (
                         sub4_12_), .datab (sub4_11_), .datac (nx60630z1), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix60630z52923.lut_mask = 16'hfefe;
    cycloneii_lcell_comb ix17322z52929 (.combout (nx17322z7), .dataa (x[1]), .datab (
                         x[0]), .datac (1'b1), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix17322z52929.lut_mask = 16'h8888;
    cycloneii_lcell_comb ix20813z52923 (.combout (nx20813z1), .dataa (nx20813z2)
                         , .datab (nx20813z3), .datac (nx20813z4), .datad (
                         nx20813z5), .cin (1'b0)) ;
                         
                         defparam ix20813z52923.lut_mask = 16'hfffe;
    cycloneii_lcell_comb ix24302z52923 (.combout (nx24302z1), .dataa (v[2]), .datab (
                         v[1]), .datac (v[0]), .datad (nx24302z2), .cin (1'b0)
                         ) ;
                         defparam ix24302z52923.lut_mask = 16'h0302;
    cycloneii_lcell_comb ix41056z52925 (.combout (nx41056z3), .dataa (v[3]), .datab (
                         v[2]), .datac (v[1]), .datad (v[0]), .cin (1'b0)) ;
                         
                         defparam ix41056z52925.lut_mask = 16'hfffe;
    cycloneii_lcell_comb ix36692z52924 (.combout (nx36692z1), .dataa (v[5]), .datab (
                         v[4]), .datac (1'b1), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix36692z52924.lut_mask = 16'h2222;
    cycloneii_lcell_comb ix35695z52924 (.combout (dir6_18n5ss1_2_), .dataa (
                         dir3_2_), .datab (dir5[2]), .datac (sub2_10_), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix35695z52924.lut_mask = 16'hacac;
    cycloneii_lcell_comb ix38260z52923 (.combout (dir5_18n5ss1_2_), .dataa (
                         dir1_2_), .datab (dir2_2_), .datac (sub2_10_), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix38260z52923.lut_mask = 16'hcaca;
    cycloneii_lcell_comb ix20492z52924 (.combout (nx20492z2), .dataa (i_valid), 
                         .datab (t[1]), .datac (t[0]), .datad (1'b1), .cin (1'b0
                         )) ;
                         defparam ix20492z52924.lut_mask = 16'h2a2a;
    cycloneii_lcell_comb ix39522z52923 (.combout (t_15n2s1[0]), .dataa (t[1]), .datab (
                         t[0]), .datac (1'b1), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix39522z52923.lut_mask = 16'h1111;
    cycloneii_lcell_comb ix38525z52923 (.combout (t_15n2s1[1]), .dataa (t[1]), .datab (
                         t[0]), .datac (1'b1), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix38525z52923.lut_mask = 16'h4444;
    cycloneii_lcell_comb ix19087z52930 (.combout (addr_x[0]), .dataa (i_valid), 
                         .datab (x[0]), .datac (nx17322z3), .datad (nx17322z6), 
                         .cin (1'b0)) ;
                         
                         defparam ix19087z52930.lut_mask = 16'h4ccc;
    cycloneii_lcell_comb ix19087z52929 (.combout (addr_x[1]), .dataa (i_valid), 
                         .datab (x[1]), .datac (nx17322z3), .datad (nx17322z6), 
                         .cin (1'b0)) ;
                         
                         defparam ix19087z52929.lut_mask = 16'h4ccc;
    cycloneii_lcell_comb ix19087z52928 (.combout (addr_x[2]), .dataa (i_valid), 
                         .datab (x[2]), .datac (nx17322z3), .datad (nx17322z6), 
                         .cin (1'b0)) ;
                         
                         defparam ix19087z52928.lut_mask = 16'h4ccc;
    cycloneii_lcell_comb ix19087z52927 (.combout (addr_x[3]), .dataa (i_valid), 
                         .datab (x[3]), .datac (nx17322z3), .datad (nx17322z6), 
                         .cin (1'b0)) ;
                         
                         defparam ix19087z52927.lut_mask = 16'h4ccc;
    cycloneii_lcell_comb ix19087z52926 (.combout (addr_x[4]), .dataa (i_valid), 
                         .datab (x[4]), .datac (nx17322z3), .datad (nx17322z6), 
                         .cin (1'b0)) ;
                         
                         defparam ix19087z52926.lut_mask = 16'h4ccc;
    cycloneii_lcell_comb ix19087z52925 (.combout (addr_x[5]), .dataa (i_valid), 
                         .datab (x[5]), .datac (nx17322z3), .datad (nx17322z6), 
                         .cin (1'b0)) ;
                         
                         defparam ix19087z52925.lut_mask = 16'h4ccc;
    cycloneii_lcell_comb ix19087z52924 (.combout (addr_x[6]), .dataa (i_valid), 
                         .datab (x[6]), .datac (nx17322z3), .datad (nx17322z6), 
                         .cin (1'b0)) ;
                         
                         defparam ix19087z52924.lut_mask = 16'h4ccc;
    cycloneii_lcell_comb ix24222z52923 (.combout (wren_m3), .dataa (i_valid), .datab (
                         t[1]), .datac (t[0]), .datad (nx17322z2), .cin (1'b0)
                         ) ;
                         defparam ix24222z52923.lut_mask = 16'h0008;
    cycloneii_lcell_comb ix19087z52931 (.combout (wren_m2), .dataa (i_valid), .datab (
                         t[1]), .datac (t[0]), .datad (nx17322z2), .cin (1'b0)
                         ) ;
                         defparam ix19087z52931.lut_mask = 16'h0020;
    cycloneii_lcell_comb ix13952z52923 (.combout (wren_m1), .dataa (i_valid), .datab (
                         t[1]), .datac (t[0]), .datad (nx17322z2), .cin (1'b0)
                         ) ;
                         defparam ix13952z52923.lut_mask = 16'haa02;
    cycloneii_lcell_comb ix63886z52923 (.combout (o_dir[0]), .dataa (o_edge), .datab (
                         v[7]), .datac (dir7[0]), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix63886z52923.lut_mask = 16'h8080;
    cycloneii_lcell_comb ix62889z52923 (.combout (o_dir[1]), .dataa (o_edge), .datab (
                         v[7]), .datac (dir7[1]), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix62889z52923.lut_mask = 16'h8080;
    cycloneii_lcell_comb ix61892z52923 (.combout (o_dir[2]), .dataa (o_edge), .datab (
                         v[7]), .datac (dir7[2]), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix61892z52923.lut_mask = 16'h8080;
    cycloneii_lcell_comb ix26373z52923 (.combout (nx26373z1), .dataa (nx26373z2)
                         , .datab (px34), .datac (o_mode[1]), .datad (p_nrst_int
                         ), .cin (1'b0)) ;
                         
                         defparam ix26373z52923.lut_mask = 16'h5755;
    cycloneii_lcell_comb ix19087z52923 (.combout (addr_x[7]), .dataa (x[7]), .datab (
                         i_valid), .datac (nx17322z6), .datad (nx17322z3), .cin (
                         1'b0)) ;
                         defparam ix19087z52923.lut_mask = 16'h2aaa;
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

    wire ena1_rename943;



    altsyncram ix64056z29483 (.data_a ({wr_data1[7],wr_data1[6],wr_data1[5],
               wr_data1[4],wr_data1[3],wr_data1[2],wr_data1[1],wr_data1[0]}), .address_a (
               {addr1[7],addr1[6],addr1[5],addr1[4],addr1[3],addr1[2],addr1[1],
               addr1[0]}), .wren_a (wr_ena1), .clock0 (wr_clk1), .clocken0 (
               ena1_rename943), .q_a ({rd_data1[7],rd_data1[6],rd_data1[5],
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
    assign ena1_rename943 = 1 ;
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

    wire ena1_rename913;



    altsyncram ix64056z29482 (.data_a ({wr_data1[7],wr_data1[6],wr_data1[5],
               wr_data1[4],wr_data1[3],wr_data1[2],wr_data1[1],wr_data1[0]}), .address_a (
               {addr1[7],addr1[6],addr1[5],addr1[4],addr1[3],addr1[2],addr1[1],
               addr1[0]}), .wren_a (wr_ena1), .clock0 (wr_clk1), .clocken0 (
               ena1_rename913), .q_a ({rd_data1[7],rd_data1[6],rd_data1[5],
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
    assign ena1_rename913 = 1 ;
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

    wire ena1_rename883;



    altsyncram ix64056z29481 (.data_a ({wr_data1[7],wr_data1[6],wr_data1[5],
               wr_data1[4],wr_data1[3],wr_data1[2],wr_data1[1],wr_data1[0]}), .address_a (
               {addr1[7],addr1[6],addr1[5],addr1[4],addr1[3],addr1[2],addr1[1],
               addr1[0]}), .wren_a (wr_ena1), .clock0 (wr_clk1), .clocken0 (
               ena1_rename883), .q_a ({rd_data1[7],rd_data1[6],rd_data1[5],
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
    assign ena1_rename883 = 1 ;
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


module modgen_counter_8_1 ( clock, q, clk_en, aclear, sload, data, aset, sclear, 
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
         nx_modgen_counter_8_1_vcc_net;
    wire [44:0] xmplr_dummy ;




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
                         nx_modgen_counter_8_1_vcc_net), .cin (nx58250z12)) ;
                         
                         defparam ix58250z52929.lut_mask = 16'h5aa0;
                         
                         defparam ix58250z52929.sum_lutc_input = "cin";
    assign nx_modgen_counter_8_1_vcc_net = 1 ;
    cycloneii_lcell_comb ix58250z52923 (.combout (nx58250z1), .dataa (q[7]), .datab (
                         1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_8_1_vcc_net), .cin (nx58250z2)) ;
                         
                         defparam ix58250z52923.lut_mask = 16'h5a00;
                         
                         defparam ix58250z52923.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix58250z52925 (.combout (nx57253z1), .cout (nx58250z2)
                         , .dataa (q[6]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_8_1_vcc_net), .cin (nx58250z4)) ;
                         
                         defparam ix58250z52925.lut_mask = 16'h5aa0;
                         
                         defparam ix58250z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix58250z52930 (.combout (nx52268z1), .cout (nx58250z12)
                         , .dataa (q[1]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_8_1_vcc_net), .cin (nx58250z14)) ;
                         
                         defparam ix58250z52930.lut_mask = 16'h5aa0;
                         
                         defparam ix58250z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix58250z52926 (.combout (nx56256z1), .cout (nx58250z4)
                         , .dataa (q[5]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_8_1_vcc_net), .cin (nx58250z6)) ;
                         
                         defparam ix58250z52926.lut_mask = 16'h5aa0;
                         
                         defparam ix58250z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix58250z52927 (.combout (nx55259z1), .cout (nx58250z6)
                         , .dataa (q[4]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_8_1_vcc_net), .cin (nx58250z8)) ;
                         
                         defparam ix58250z52927.lut_mask = 16'h5aa0;
                         
                         defparam ix58250z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix58250z52928 (.combout (nx54262z1), .cout (nx58250z8)
                         , .dataa (q[3]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_8_1_vcc_net), .cin (nx58250z10)) ;
                         
                         defparam ix58250z52928.lut_mask = 16'h5aa0;
                         
                         defparam ix58250z52928.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix58250z52931 (.combout (nx51271z1), .cout (nx58250z14)
                         , .dataa (q[0]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_8_1_vcc_net), .cin (1'b0)) ;
                         
                         defparam ix58250z52931.lut_mask = 16'h55aa;
    cycloneii_lcell_comb ix57253z52923 (.combout (nx57253z3), .dataa (clk_en), .datab (
                         sclear), .datac (cnt_en), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix57253z52923.lut_mask = 16'ha8a8;
endmodule


module modgen_counter_8_0 ( clock, q, clk_en, aclear, sload, data, aset, sclear, 
                            updn, cnt_en, p_nrst_int_dup_11 ) ;

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
    input p_nrst_int_dup_11 ;

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
                         p_nrst_int_dup_11), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix57253z52923.lut_mask = 16'hbbbb;
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


module uw_uart ( clk, rst, kirschout, kirschdir, o_valid, i_mode, datain, 
                 o_pixavail, rxflex, txflex, p_rtlcs6, p_Tx_Reg_14n6ss1_0_, 
                 p_NOT_rtlcn2, p_o_mode_dup0_1_, p_o_mode_dup0_0_, p_nrst_int, 
                 px34 ) ;

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
    input p_rtlcs6 ;
    output p_Tx_Reg_14n6ss1_0_ ;
    output p_NOT_rtlcn2 ;
    input p_o_mode_dup0_1_ ;
    input p_o_mode_dup0_0_ ;
    input p_nrst_int ;
    input px34 ;

    wire [7:0]sdin;
    wire rxerr, rxrdy, sdout_7_, sdout_5_, sdout_3_, sdout_2_, sdout_1_, 
         sdout_0_;
    wire [7:0]rdata;
    wire state, dsend, mdata_7_, mdata_5_, mdata_3_, mdata_2_, mdata_1_, 
         mdata_0_, ack;
    wire [15:0]waitcount;
    wire ld_sdout, rawrx, mdata_7n5ss1_6_, mdata_7n5ss1_4_, nx39480z2, nx33354z2, 
         nx40736z2, nx38868z1, nx40736z3, nx39480z1, not_o_valid, nx33354z1, 
         nx58116z1, nx36748z2, nx18433z1, nx40736z4, nx40736z5, nx39480z3, 
         nx39480z4, nx39480z5, nx39480z6, nx36748z1, nx35751z1, nx34754z1, 
         nx33757z1;
    wire [182:0] xmplr_dummy ;




    UARTS i_uarts (.CLK (clk), .RST (rst), .Din ({sdout_7_,xmplr_dummy [0],
          sdout_5_,xmplr_dummy [1],sdout_3_,sdout_2_,sdout_1_,sdout_0_}), .LD (
          ld_sdout), .Rx (rawrx), .Dout ({sdin[7],sdin[6],sdin[5],sdin[4],
          sdin[3],sdin[2],sdin[1],sdin[0]}), .RxErr (rxerr), .RxRDY (rxrdy), .p_Tx_Reg_14n6ss1_0_ (
          p_Tx_Reg_14n6ss1_0_), .p_NOT_rtlcn2 (p_NOT_rtlcn2), .p_rxflex (rxflex)
          , .p_nrst_int_dup_9 (p_nrst_int)) ;
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
                       nx40736z2), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_mdata_5_ (.regout (mdata_5_), .datain (
                       mdata_7n5ss1_4_), .sdata (1'b0), .clk (clk), .ena (
                       nx40736z2), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    assign nx36748z1 = 1 ;
    cycloneii_lcell_ff reg_mdata_3_ (.regout (mdata_3_), .datain (kirschdir[2])
                       , .sdata (nx36748z1), .clk (clk), .ena (nx40736z2), .aclr (
                       1'b0), .sclr (nx36748z2), .sload (not_o_valid)) ;
    assign nx35751z1 = 1 ;
    cycloneii_lcell_ff reg_mdata_2_ (.regout (mdata_2_), .datain (kirschdir[1])
                       , .sdata (nx35751z1), .clk (clk), .ena (nx40736z2), .aclr (
                       1'b0), .sclr (nx36748z2), .sload (not_o_valid)) ;
    assign nx34754z1 = 1 ;
    cycloneii_lcell_ff reg_mdata_1_ (.regout (mdata_1_), .datain (kirschdir[0])
                       , .sdata (nx34754z1), .clk (clk), .ena (nx40736z2), .aclr (
                       1'b0), .sclr (nx36748z2), .sload (not_o_valid)) ;
    assign nx33757z1 = 1 ;
    cycloneii_lcell_ff reg_mdata_0_ (.regout (mdata_0_), .datain (kirschout), .sdata (
                       nx33757z1), .clk (clk), .ena (nx40736z2), .aclr (1'b0), .sclr (
                       nx36748z2), .sload (not_o_valid)) ;
    cycloneii_lcell_ff reg_ld_sdout (.regout (ld_sdout), .datain (nx18433z1), .sdata (
                       1'b0), .clk (clk), .ena (1'b1), .aclr (rst), .sclr (1'b0)
                       , .sload (1'b0)) ;
    cycloneii_lcell_ff reg_dsend (.regout (dsend), .datain (nx40736z3), .sdata (
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
    cycloneii_lcell_comb ix40736z52924 (.combout (nx40736z2), .dataa (nx40736z3)
                         , .datab (p_nrst_int), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix40736z52924.lut_mask = 16'h8888;
    cycloneii_lcell_comb ix39480z52928 (.combout (nx39480z6), .dataa (
                         waitcount[3]), .datab (waitcount[2]), .datac (
                         waitcount[1]), .datad (waitcount[0]), .cin (1'b0)) ;
                         
                         defparam ix39480z52928.lut_mask = 16'h0004;
    cycloneii_lcell_comb ix39480z52927 (.combout (nx39480z5), .dataa (
                         waitcount[7]), .datab (waitcount[6]), .datac (
                         waitcount[5]), .datad (waitcount[4]), .cin (1'b0)) ;
                         
                         defparam ix39480z52927.lut_mask = 16'h0040;
    cycloneii_lcell_comb ix39480z52926 (.combout (nx39480z4), .dataa (
                         waitcount[11]), .datab (waitcount[10]), .datac (
                         waitcount[9]), .datad (waitcount[8]), .cin (1'b0)) ;
                         
                         defparam ix39480z52926.lut_mask = 16'h0001;
    cycloneii_lcell_comb ix39480z52925 (.combout (nx39480z3), .dataa (
                         waitcount[15]), .datab (waitcount[14]), .datac (
                         waitcount[13]), .datad (waitcount[12]), .cin (1'b0)) ;
                         
                         defparam ix39480z52925.lut_mask = 16'h0001;
    cycloneii_lcell_comb ix40736z52927 (.combout (nx40736z5), .dataa (o_pixavail
                         ), .datab (rxerr), .datac (ack), .datad (p_rtlcs6), .cin (
                         1'b0)) ;
                         defparam ix40736z52927.lut_mask = 16'hff04;
    cycloneii_lcell_comb ix40736z52926 (.combout (nx40736z4), .dataa (o_pixavail
                         ), .datab (ack), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix40736z52926.lut_mask = 16'heeee;
    cycloneii_lcell_comb ix18433z52923 (.combout (nx18433z1), .dataa (state), .datab (
                         dsend), .datac (ld_sdout), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix18433z52923.lut_mask = 16'h5454;
    cycloneii_lcell_comb ix33354z52924 (.combout (nx33354z2), .dataa (nx39480z2)
                         , .datab (o_valid), .datac (p_nrst_int), .datad (1'b1)
                         , .cin (1'b0)) ;
                         
                         defparam ix33354z52924.lut_mask = 16'hefef;
    cycloneii_lcell_comb ix58116z52923 (.combout (nx58116z1), .dataa (o_pixavail
                         ), .datab (rxrdy), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix58116z52923.lut_mask = 16'h4444;
    cycloneii_lcell_comb ix39480z52923 (.combout (nx39480z1), .dataa (o_valid), 
                         .datab (o_pixavail), .datac (ack), .datad (nx39480z2), 
                         .cin (1'b0)) ;
                         
                         defparam ix39480z52923.lut_mask = 16'h0054;
    cycloneii_lcell_comb ix40736z52925 (.combout (nx40736z3), .dataa (o_valid), 
                         .datab (nx39480z2), .datac (nx40736z4), .datad (
                         nx40736z5), .cin (1'b0)) ;
                         
                         defparam ix40736z52925.lut_mask = 16'hffe0;
    cycloneii_lcell_comb ix38868z52923 (.combout (nx38868z1), .dataa (state), .datab (
                         dsend), .datac (1'b1), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix38868z52923.lut_mask = 16'h4444;
    cycloneii_lcell_comb ix39480z52924 (.combout (nx39480z2), .dataa (nx39480z3)
                         , .datab (nx39480z4), .datac (nx39480z5), .datad (
                         nx39480z6), .cin (1'b0)) ;
                         
                         defparam ix39480z52924.lut_mask = 16'h8000;
    cycloneii_lcell_comb ix38742z52923 (.combout (mdata_7n5ss1_4_), .dataa (
                         o_valid), .datab (o_pixavail), .datac (ack), .datad (
                         p_rtlcs6), .cin (1'b0)) ;
                         
                         defparam ix38742z52923.lut_mask = 16'hff57;
    cycloneii_lcell_comb ix40736z52923 (.combout (mdata_7n5ss1_6_), .dataa (
                         o_valid), .datab (o_pixavail), .datac (ack), .datad (
                         p_rtlcs6), .cin (1'b0)) ;
                         
                         defparam ix40736z52923.lut_mask = 16'h0057;
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
    cycloneii_lcell_comb ix15671z52923 (.combout (rawrx), .dataa (rxflex), .datab (
                         p_nrst_int), .datac (1'b1), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix15671z52923.lut_mask = 16'h8888;
    cycloneii_lcell_comb ix47405z52923 (.combout (datain[7]), .dataa (o_pixavail
                         ), .datab (rdata[7]), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix47405z52923.lut_mask = 16'h8888;
    cycloneii_lcell_comb ix36748z52924 (.combout (nx36748z2), .dataa (ack), .datab (
                         o_pixavail), .datac (px34), .datad (p_o_mode_dup0_1_), 
                         .cin (1'b0)) ;
                         
                         defparam ix36748z52924.lut_mask = 16'h111f;
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
               p_Tx_Reg_14n6ss1_0_, p_NOT_rtlcn2, p_rxflex, p_nrst_int_dup_9 ) ;

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
    input p_nrst_int_dup_9 ;

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
                         , .datab (RxFSM_6_), .datac (p_nrst_int_dup_9), .datad (
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
                         p_nrst_int_dup_9), .datac (1'b1), .datad (1'b1), .cin (
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

