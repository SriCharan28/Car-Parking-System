module tb_top;
bit clk;
bit reset_n;
intf vif(clk,reset_n);
test t1(vif);
parking_system dut(.clk(vif.clk),.reset_n(vif.reset_n),.sensor_entrance(vif.sensor_entrance),.sensor_exit(vif.sensor_exit),.password_1(vif.password_1),.password_2(vif.password_2),
.GREEN_LED(vif.GREEN_LED),
.RED_LED(vif.RED_LED),
.HEX_1(vif.HEX_1),
.HEX_2(vif.HEX_2)
);

always #5 clk = ~clk;
always #100 reset_n = ~reset_n;
initial begin
reset_n = 1;
end
endmodule

