//
module Shift_Register(clk,shift,reset,Serial_in,D_input,Q_out);
parameter n_bits =4;
input wire clk,shift,reset,Serial_in;
input wire [n_bits-1:0] D_input;
output reg[n_bits-1:0] Q_out;

//With Asynchrounous reset
always @(posedge clk or reset)
begin
if(reset)
Q_out<=0;
else if (shift)
begin 
Q_out<=Q_out<<1;
Q_out[0]<=Serial_in;
end 
else;
end 
endmodule 

