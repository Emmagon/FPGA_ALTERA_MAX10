// This program lets the user control a Servo motor with the board switches 

module pwm_servo (input clk, input [3:0] duty, output reg signal);
reg [6:0] cont;
wire clock100hz;

clock100hz U1(.clk(clk),.senal(clock100hz));
	
always @ (posedge reloj100hz)
begin
	
	if (cont<duty)
	begin
		senal = 1'b1;
	end
	else
	begin
	senal = 1'b0;
	end
	cont=cont+1;
	if (cont ==7'd100)
	begin
		contador = 0;
	end
end

endmodule 