module ALU #(
    parameter DATA_WIDTH = 8,
    parameter FUN_WIDTH = 4,
    parameter OUT_WIDTH = 2*DATA_WIDTH,
    parameter REGISTER_OPER = 1
)(
    input logic clk, rst_n,                 // clk, rst_n
    input logic [DATA_WIDTH-1:0] op_a, op_b,      // data path operands
    input logic [FUN_WIDTH-1:0] alu_fun,    // ctrl
    input logic alu_en,
    output logic alu_out_valid,                 // ctrl
    output logic [OUT_WIDTH-1:0] alu_out   // data path
    /*
    output logic carry_flag,                // output flags
    output logic arith_flag,
    output logic logic_flag,
    output logic cmp_flag,
    output logic shift_flag
    */
);
    logic [DATA_WIDTH-1:0] a, b;
    if (REGISTER_OPER) begin
        always_ff @( posedge clk or negedge rst_n ) begin : register_input_logic
            if (!rst_n) begin
                a <= 'b0;
                b <= 'b0;
            end
            else begin
                a <= op_a;
                b <= op_b;
            end
        end
    end
    else begin
        assign a = op_a;
        assign b = op_b;
    end

    // comb alu 
    logic [OUT_WIDTH-1:0] alu_out_c;
    always @(*) begin
        case (alu_fun)
            4'b0000: begin 
                alu_out_c = a + b; // Addition
            end
            4'b0001: begin 
                alu_out_c = a - b; // Subtraction
            end
            4'b0010: alu_out_c = a * b; // Multiplication
            4'b0011: alu_out_c = a / b; // Division
            4'b0100: alu_out_c = a & b; // Bitwise AND
            4'b0101: alu_out_c = a | b; // Bitwise OR
            4'b0110: alu_out_c = ~(a & b); // Bitwise NAND
            4'b0111: alu_out_c = ~(a | b); // Bitwise NOR
            4'b1000: alu_out_c = a ^ b; // Bitwise XOR
            4'b1001: alu_out_c = ~(a ^ b); // Bitwise XNOR
            4'b1010: begin
                if (a == b) alu_out_c = 16'b1; // Equal
                else alu_out_c = 16'b0; // Not equal
            end
            4'b1011: begin
                if (a > b) alu_out_c = 16'b10; // Equal
                else alu_out_c = 16'b0; // Not equal
            end
            4'b1100: begin
                if (a < b) alu_out_c = 16'b11; // Equal
                else alu_out_c = 16'b0; // Not equal
            end
            4'b1101: alu_out_c = a >> 1; // Shift right
            4'b1110: alu_out_c = a << 1; // Shift left
            default: begin
                alu_out_c = 16'b0; // Default case
            end
        endcase
    end

/*
    // flags
    assign carry_flag = alu_out [DATA_WIDTH];
    always @(*) begin
        arith_flag = 1'b0;
        logic_flag = 1'b0;
        cmp_flag = 1'b0;
        shift_flag = 1'b0;
        casex (alu_fun)
            4'b00xx:            arith_flag = 1'b1; // Arithmetic operations
            4'b01xx, 4'b100x:   logic_flag = 1'b1; // Logic operations
            4'b101x, 4'b1100:   cmp_flag = 1'b1; // Comparison operations
            4'b1101, 4'b1110:   shift_flag = 1'b1; // Shift operations
            default: begin
                arith_flag = 1'b0;
                logic_flag = 1'b0;
                cmp_flag = 1'b0;
                shift_flag = 1'b0;
            end
        endcase
    end
*/
    // sequential alu
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            alu_out <= 'b0;
            alu_out_valid <= 'b0;
        end
        else begin
            if (alu_en) begin
                alu_out <= alu_out_c;
                alu_out_valid <= 'b1;
            end
            else begin
                alu_out_valid <= 'b0;
            end
        end
    end
endmodule
