module clock100hz(input clk, output signal);	//it is 50hz
reg [19:0] cont;
reg tempo; //Avoid that the serial variable been register  

assign signal=tempo;

always @(posedge clk)
begin
	cont=cont+1;
	if (cont == 20'd5000)//if you want to increase or decrease the frequency, change the value inside the if   
	begin
		cont=0;
		tempo = ~tempo;
		
	end
end
endmodule
