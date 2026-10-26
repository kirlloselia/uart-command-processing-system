`timescale 1us/1ns
module tb (
);
    // signals
    reg clk;
    reg [7:0] a, b;
    reg [3:0] alu_fun;
    reg enable;
    wire alu_out_valid;
    wire [15:0] alu_out;
    // wire carry_flag, arith_flag, logic_flag, cmp_flag, shift_flag;

    // dut inst
    ALU dut (   .clk(clk),
                .op_a(a),
                .op_b(b),
                .alu_fun(alu_fun),
                .enable (enable),
                .alu_out(alu_out),
                .alu_out_valid (alu_out_valid)
                // .carry_flag(carry_flag),
                // .arith_flag(arith_flag),
                // .logic_flag(logic_flag),
                // .cmp_flag(cmp_flag),
                // .shift_flag(shift_flag)
    );

    // clk generator
    always #5 clk = ~clk;

    // stimilus
    initial begin
        // $monitor("Time: %t, ALU_FUN: %4b, A: %d, B: %d, ALU_OUT: %d, Carry_flag: %b, Arith_flag: %b, Logic_flag: %b, CMP_flag: %b, Shift_flag: %b",
        //         $time, alu_fun, a, b, alu_out, carry_flag, arith_flag, logic_flag, cmp_flag, shift_flag);
        $monitor("Time: %t, ALU_FUN: %4b, ENABLE: %b, A: %d, B: %d, ALU_OUT: %d, alu_out_valid: %b",
                $time, alu_fun, enable, a, b, alu_out, alu_out_valid);
        clk = 0;
        enable = 1'b1;
        //tc01
        $display("tc01: add");
        a = 16'd36; b = 16'd9;
        alu_fun = 4'b0;
        #10
        if (alu_out == a+b && alu_out_valid) begin
            $display("tc01: add succeded");
        end
        else $error("tc01 failed");
        //tc02
        $display("tc02: sub");
        a = 16'd36; b = 16'd9;
        alu_fun = 4'b1;
        #10
        if (alu_out == a-b && alu_out_valid) begin
            $display("tc02: sub succeded");
        end
        else $error("tc02 failed");
        //tc03
        $display("tc03: mult");
        a = 16'd36; b = 16'd9;
        alu_fun = 4'b10;
        #10
        if (alu_out == a*b && alu_out_valid) begin
            $display("tc03: sub succeded");
        end
        else $error("tc03 failed");
        //tc04
        $display("tc04: div");
        a = 16'd36; b = 16'd9;
        alu_fun = 4'b11;
        #10
        if (alu_out == a/b && alu_out_valid) begin
            $display("tc04: div succeded");
        end
        else $error("tc04 failed");
        //tc05
        $display("tc05: and");
        a = 16'd36; b = 16'd9;
        alu_fun = 4'b100;
        #10
        if (alu_out == (a & b) && alu_out_valid) begin
            $display("tc05: and succeded");
        end
        else $error("tc05 failed");
        //tc06
        $display("tc06: or");
        a = 16'd36; b = 16'd9;
        alu_fun = 4'b101;
        #10
        if (alu_out == (a | b) && alu_out_valid) begin
            $display("tc06: or succeded");
        end
        else $error("tc06 failed");
        //tc07
        $display("tc07: nand");
        a = 16'd36; b = 16'd9;
        alu_fun = 4'b110;
        #10
        if (alu_out == ~(a & b) && alu_out_valid) begin
            $display("tc07: nand succeded");
        end
        else $error("tc07 failed");
        //tc08
        $display("tc08: nor");
        a = 16'd36; b = 16'd9;
        alu_fun = 4'b111;
        #10
        if (alu_out == ~(a | b) && alu_out_valid) begin
            $display("tc08: nor succeded");
        end
        else $error("tc08 failed");
        //tc09
        $display("tc09: xor");
        a = 16'd36; b = 16'd9;
        alu_fun = 4'b1000;
        #10
        if (alu_out == (a ^ b) && alu_out_valid) begin
            $display("tc09: xor succeded");
        end
        else $error("tc09 failed");
        //tc10
        $display("tc10: xnor");
        a = 16'd36; b = 16'd9;
        alu_fun = 4'b1001;
        #10
        if (alu_out == ~(a ^ b) && alu_out_valid) begin
            $display("tc10: xnor succeded");
        end
        else $error("tc10 failed");
        //tc11
        $display("tc11: equal");
        a = 16'd36; b = 16'd36;
        alu_fun = 4'b1010;
        #10
        if (alu_out == 16'b1 && alu_out_valid) begin
            $display("tc11: equal succeded");
        end
        else $error("tc11 failed");
        //tc12
        $display("tc12: greater than");
        a = 16'd36; b = 16'd9;
        alu_fun = 4'b1011;
        #10
        if (alu_out == 16'b10 && alu_out_valid) begin
            $display("tc12: greater than succeded");
        end
        else $error("tc12 failed");
        //tc13
        $display("tc13: less than");
        a = 16'd9; b = 16'd36;
        alu_fun = 4'b1100;
        #10
        if (alu_out == 16'b11 && alu_out_valid) begin
            $display("tc13: less than succeded");
        end
        else $error("tc13 failed");
        //tc14
        $display("tc14: shift right");
        a = 16'd36; b = 16'd0;
        alu_fun = 4'b1101;
        #10
        if (alu_out == (a >> 1) && alu_out_valid) begin
            $display("tc14: shift right succeded");
        end
        else $error("tc14 failed");
        //tc15
        $display("tc15: shift left");
        a = 16'd36; b = 16'd0;
        alu_fun = 4'b1110;
        #10
        if (alu_out == (a << 1) && alu_out_valid) begin
            $display("tc15: shift left succeded");
        end
        else $error("tc15 failed");
        //tc16
        $display("tc16: nop");
        a = 16'd36; b = 16'd0;
        alu_fun = 4'b1111;
        #10
        if (alu_out == 16'b0 && alu_out_valid) begin
            $display("tc16: nop succeded");
        end
        else $error("tc16 failed");
        $finish;
    end
endmodule