
`timescale 1ns / 1ps

module top(clk_in, 
           data, 
           lcd_e, 
           lcd_rs, 
           lcd_rw, 
           led, 
           ps2ck, 
           ps2dk);

    input clk_in;
   output [7:0] data;
   output lcd_e;
   output lcd_rs;
   output lcd_rw;
   output [7:0] led;
    inout ps2ck;
    inout ps2dk;
   
   wire XLXN_4;
   wire XLXN_5;
   wire XLXN_6;
   reg clk;
   
assign rst = 1'b1;
 always@(posedge clk_in)  
	clk <= ~clk;
 
 
   div_256 XLXI_1 (.mclk(clk), 
                   .reset(rst), 
                   .clk(XLXN_6));
   div16 XLXI_2 (.clk(clk), 
                 .rst(rst), 
                 .clk_16(XLXN_5));
   lcd XLXI_3 (.clk(XLXN_5), 
               .data_in(led[7:0]), 
               .rst(XLXN_4), 
               .data(data[7:0]), 
               .lcd_e(lcd_e), 
               .lcd_rs(lcd_rs), 
               .lcd_rw(lcd_rw));
   ps2_keyboard_interface XLXI_4 (.clk(XLXN_6), 
                                  .reset(rst), 
                                  .rx_read(), 
                                  .tx_data(), 
                                  .tx_write(), 
                                  .rx_ascii(led[7:0]), 
                                  .rx_data_ready(), 
                                  .rx_extended(), 
                                  .rx_released(XLXN_4), 
                                  .rx_scan_code(), 
                                  .rx_shift_key_on(), 
                                  .tx_error_no_keyboard_ack(), 
                                  .tx_write_ack_o(), 
                                  .ps2_clk(ps2ck), 
                                  .ps2_data(ps2dk));
endmodule
