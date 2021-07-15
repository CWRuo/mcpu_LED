module RamChip (address, dataI, data, CS, WE, OE, clk);  //cw modify.

parameter AddressSize = 6;
parameter WordSize = 8;

input [AddressSize-1:0] address;
input [WordSize-1:0] dataI;  //cw modify.
output [WordSize-1:0] data;  //cw modify.
input CS, WE, OE;
input clk;  //cw modify.

reg [WordSize-1:0] Mem [0:1<<AddressSize];

assign data = Mem[address];  //cw modify.

initial begin  // pre-program the ram
	$readmemh("mcpu.hex", Mem);
end

//always @(CS or WE)
always @(posedge clk)  //cw modify.
  if (!CS && !WE)
    Mem[address] <= dataI;

endmodule
