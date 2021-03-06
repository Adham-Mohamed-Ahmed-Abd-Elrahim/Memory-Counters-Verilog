module tri_bus(D_input,Q_out,I_O);
parameter n_buffs=4;
input [n_buffs-1:0] D_input;
input I_O;
output wire [n_buffs-1:0] Q_out ;
assign Q_out=(I_O==1)? D_input:
             (I_O==0)? 'z:'x;
endmodule
