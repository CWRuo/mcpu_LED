module mcpuN1(input rst, input clk, output reg Q0, output Q1);
wire [7:0] data;
wire [7:0] dataX;
wire [5:0] adress;
wire oe, we;

mcpu dut (data,dataX,adress,oe,we,rst,clk);	
RamChip ram (adress,dataX,data,1'b0,we,oe,clk);

always @(posedge clk)
  if ((adress == 56) && !we)
    Q0 <= dataX[7];

assign Q1 = !Q0;
	 
endmodule
