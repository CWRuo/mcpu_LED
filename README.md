# mcpu_LED
Two LEDs blank on a Altera Demo Board, based on mcpu and verilog.

The original project https://github.com/cpldcpu/MCPU using inout ports to reduce pins, 
these may cause simulaion problems for some software, I rewrite the verilog 
files to avoid inout ports. It had been implemented on an Altera Demo Board that is 
compatible with http://piswords.com/alteraep4ce6e.html

Power cosumption is 45.1mA, or 49.5mA when USB BLASTER connected.

Total logic elements using 72 on EP4CE22C8. 

GPL License.
