module bi_direct_bus(pindata,Data_in,Data_out,OE);
parameter n_buff=4;
input OE;
inout[n_buff-1:0] pindata;
input [n_buff-1:0]  Data_in;
output [n_buff-1:0] Data_out;
assign Data_in=pindata;
assign pindata =(OE==1) ? Data_out :
                (OE==0) ? 'z:'x;
endmodule
