module Register_File(Read_addr,Write_addr,clk,In_data,W_En,Out_data);
//n_reg=4;
parameter sel=2;
parameter data_width=16;
input clk,W_En;
input [sel-1:0] Read_addr,Write_addr;
input [data_width-1:0] In_data;
output reg [data_width-1:0] Out_data;
reg [data_width-1:0] reg_array[2**sel-1:0];
always@(posedge clk)
begin 
if(W_En)
begin
 reg_array[Write_addr]<=In_data;
 Out_data<=reg_array[Read_addr];
end
else ;
end
endmodule 