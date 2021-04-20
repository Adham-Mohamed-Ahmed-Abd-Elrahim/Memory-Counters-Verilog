
module Reg2(load,reset,D_input,clk,Q_out);
parameter bits_n=4;

input wire load,reset,clk;
input wire [bits_n-1:0] D_input;
output reg [bits_n-1:0] Q_out;
//Never Forget to unforce output signals
//No need for else as there is no active assigment
always @(posedge clk , reset,load)
begin 
if(!reset)
Q_out <=0;
else if (load==1)
Q_out <=D_input;
else 
Q_out<=Q_out;
end
endmodule 