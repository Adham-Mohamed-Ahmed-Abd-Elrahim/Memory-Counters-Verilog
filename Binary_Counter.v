module binary_counter(clk,count,reset ,load,D_input,Q_out);
parameter n_bits=4;
input wire clk ,count ,load,reset;
input wire [n_bits-1:0] D_input;
output reg [n_bits-1:0] Q_out ;
//Synchrounous Reset
always @ (posedge clk)
begin
if(reset)
Q_out<=0;
else if (load)
Q_out<=D_input;
else if (count)
Q_out<=Q_out+1;
else ;
end
endmodule 