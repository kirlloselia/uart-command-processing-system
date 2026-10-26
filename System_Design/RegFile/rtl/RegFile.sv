module RegFile #(
    parameter ADDR_WIDTH = 4,
    parameter DATA_WIDTH = 8
) (
    input logic clk, rst_n,                 // cll, rst signals
    input logic [ADDR_WIDTH-1:0] addr,      // ctrl 
    input logic wr_en, rd_en,               // ctrl
    input logic [DATA_WIDTH-1:0] wr_data,   // data path
    output logic [DATA_WIDTH-1:0] rd_data,  // data path
    output logic rd_data_valid,             // ctrl
    output logic [DATA_WIDTH-1:0] reg_0,    // data path ALU Operand A 
    output logic [DATA_WIDTH-1:0] reg_1,    // data path ALU Operand B
    output logic [DATA_WIDTH-1:0] reg_2,    // data path UART Config 
    output logic [DATA_WIDTH-1:0] reg_3     // data path Div Ratio
);
    // config 
    localparam PAR_EN = 1'b1;
    localparam PAR_TYP = 1'b0;
    localparam PRESCALE = 6' (1 << 5);     // 32

    localparam CLK_DIV = 8'd32;

    // memory
    localparam DEPTH = 1 << ADDR_WIDTH;
    logic [DATA_WIDTH-1:0] mem [DEPTH];
    
    // output reg logic
    assign reg_0 = mem [0];
    assign reg_1 = mem [1];
    assign reg_2 = mem [2];
    assign reg_3 = mem [3];


    always_ff @( posedge clk or negedge rst_n  ) begin : blockName
        if (!rst_n) begin
            // rd
            rd_data <= 'b0;
            rd_data_valid <= 'b0;
            // mem
            //reset_mem ();
            for (int i = 0; i < DEPTH; i++) begin
		    if (i == 2) begin
		        mem [i] <= {PRESCALE, PAR_TYP, PAR_EN};     // prescale 
		    end
		    else if (i == 3) begin
		        mem [i] <= CLK_DIV;
		    end
		    else begin
		        mem [i] <= 'b0; 
		    end
		end
        end
        else begin
            if (wr_en & ~rd_en) begin
                mem [addr] <= wr_data;
            end
            else if (~wr_en & rd_en) begin
                rd_data <= mem [addr];
                rd_data_valid <= 'b1;
            end
            else begin
                rd_data_valid <= 'b0;
            end
        end
    end

/*
    function void reset_mem ();
        for (int i = 0; i < DEPTH; i++) begin
            if (i == 2) begin
                mem [i] <= {PRESCALE, PAR_TYP, PAR_EN};     // prescale 
            end
            else if (i == 3) begin
                mem [i] <= CLK_DIV;
            end
            else begin
                mem [i] <= 'b0; 
            end
        end
    endfunction
*/
endmodule
