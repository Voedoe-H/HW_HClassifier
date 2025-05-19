module h_classifier(
    input wire signed [31:0] in0,
    input wire signed [31:0] in1,
    input wire signed [31:0] in2,
    input wire signed [31:0] in3,
    input wire signed [31:0] in4,
    input wire signed [31:0] in5
);
// Q17.14 
    wire signed [31:0] observed_transition [5:0];
    assign observed_transition[0] = in0;
    assign observed_transition[1] = in1;
    assign observed_transition[2] = in2;
    assign observed_transition[3] = in3;
    assign observed_transition[4] = in4;
    assign observed_transition[5] = in5;
    
endmodule

module fixed_mul_q17_14 (
    input signed [31:0] a,
    input signed [31:0] b,
    output signed [31:0] result
);
    wire signed [63:0] mult_full;
    assign mult_full = a * b;
    assign result = mult_full >>> 14;
endmodule

module fixed_add_q17_14(
    input signed [31:0] a,
    input signed [31:0] b,
    output signed [31:0] result
);
    assign result = a + b;
endmodule