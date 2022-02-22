module pwmservo (input clk, output reg senal);
reg [6:0] contador;
reg [6:0] duty;
reg [3:0] cont;
wire reloj100hz;
wire rls;
reloj100hz U1(.clk(clk),.senal(reloj100hz));
relojp2 U2(.clk(clk), .led(rls));
always @ (posedge rls)
begin
if(cont==4'd1)begin
duty = 6'd0;
end
if(cont==4'd4)begin
duty = 6'd20;
cont=0;
end
cont=cont+1;

end
	
always @ (posedge reloj100hz)
begin
	
	if (contador<duty)
	begin
		senal = 1'b1;
	end
	else
	begin
	senal = 1'b0;
	end
	contador=contador+1;
	if (contador ==7'd100)
	begin
		contador = 0;
	end
end

endmodule 