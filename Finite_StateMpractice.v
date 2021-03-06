module mealy (In_level,clk,reset,edge_detect);
input wire clk,reset ;
input wire In_level;
output reg edge_detect;
reg mealy_current ,mealy_next ;

/*Parameter initalization of states
(localparm to not be changed) */
localparam zero =2'b00;
localparam one =2'b01;
//Asynchrnous reset and linking current and next state 
always @(posedge clk,reset )
begin 
if (reset==1)
mealy_current<=zero;
else
mealy_current<=mealy_next;
end 
//Implementaion of States Together 
always @(In_level, mealy_current)
begin 
/*Deduce next_state from any inital state using 
input */
case(mealy_current)
zero: if(In_level==1)
begin 
mealy_next<=one;
edge_detect<=1'b1;
$display("One stage");
end
else ;
one: if (In_level==0)
begin 
mealy_next<=zero;
edge_detect<=1'b0;
$display("zero stage");
end 
endcase 
end 
endmodule 