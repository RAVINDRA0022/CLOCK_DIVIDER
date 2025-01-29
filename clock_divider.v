`timescale 1ns / 1ps

module clk_divider(input clk ,
                   input rst , 
                   output reg clk_out);
                    
                always @(posedge clk or posedge rst)
                    if(rst)
                       clk_out <= 0 ;
                    else 
                        clk_out <= ~clk_out ;
endmodule
