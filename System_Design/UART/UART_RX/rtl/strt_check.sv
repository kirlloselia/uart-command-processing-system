module start_check (
    input logic sampled_bit,    // datapath (start bit)
    input logic strt_chk_en,    // ctrl path
    output logic strt_glitch
);
    assign strt_glitch  = strt_chk_en ? sampled_bit : 'b0;
endmodule