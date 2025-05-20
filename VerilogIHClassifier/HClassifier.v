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
    
    reg signed [31:0] chi5 [0:22][0:5];
    initial begin
        chi5[0][0] = 32'sd34015;
        chi5[0][1] = 32'sd-30088;
        chi5[0][2] = 32'sd-15223;
        chi5[0][3] = 32'sd-48881;
        chi5[0][4] = 32'sd14866;
        chi5[0][5] = 32'sd31607;
        chi5[1][0] = 32'sd-34317;
        chi5[1][1] = 32'sd1949;
        chi5[1][2] = 32'sd1717;
        chi5[1][3] = 32'sd34548;
        chi5[1][4] = 32'sd-232;
        chi5[1][5] = 32'sd-1717;
        chi5[2][0] = 32'sd-1320;
        chi5[2][1] = 32'sd-10954;
        chi5[2][2] = 32'sd2980;
        chi5[2][3] = 32'sd-12614;
        chi5[2][4] = 32'sd13934;
        chi5[2][5] = 32'sd-2980;
        chi5[3][0] = 32'sd39577;
        chi5[3][1] = 32'sd115107;
        chi5[3][2] = 32'sd-49875;
        chi5[3][3] = 32'sd125405;
        chi5[3][4] = 32'sd-164982;
        chi5[3][5] = 32'sd49875;
        chi5[4][0] = 32'sd-23055;
        chi5[4][1] = 32'sd-24907;
        chi5[4][2] = 32'sd24969;
        chi5[4][3] = 32'sd-26820;
        chi5[4][4] = 32'sd49875;
        chi5[4][5] = 32'sd-24969;
        chi5[5][0] = 32'sd0;
        chi5[5][1] = 32'sd0;
        chi5[5][2] = 32'sd0;
        chi5[5][3] = 32'sd0;
        chi5[5][4] = 32'sd0;
        chi5[5][5] = 32'sd0;
        chi5[6][0] = 32'sd0;
        chi5[6][1] = 32'sd0;
        chi5[6][2] = 32'sd0;
        chi5[6][3] = 32'sd0;
        chi5[6][4] = 32'sd0;
        chi5[6][5] = 32'sd0;
        chi5[7][0] = 32'sd0;
        chi5[7][1] = 32'sd0;
        chi5[7][2] = 32'sd0;
        chi5[7][3] = 32'sd0;
        chi5[7][4] = 32'sd0;
        chi5[7][5] = 32'sd0;
        chi5[8][0] = 32'sd13653;
        chi5[8][1] = 32'sd0;
        chi5[8][2] = 32'sd0;
        chi5[8][3] = 32'sd0;
        chi5[8][4] = 32'sd0;
        chi5[8][5] = 32'sd0;
        chi5[9][0] = 32'sd0;
        chi5[9][1] = 32'sd8192;
        chi5[9][2] = 32'sd0;
        chi5[9][3] = 32'sd0;
        chi5[9][4] = 32'sd0;
        chi5[9][5] = 32'sd0;
        chi5[10][0] = 32'sd0;
        chi5[10][1] = 32'sd0;
        chi5[10][2] = 32'sd6554;
        chi5[10][3] = 32'sd0;
        chi5[10][4] = 32'sd0;
        chi5[10][5] = 32'sd0;
        chi5[11][0] = 32'sd42014;
        chi5[11][1] = 32'sd-49262;
        chi5[11][2] = 32'sd-37717;
        chi5[11][3] = 32'sd-53558;
        chi5[11][4] = 32'sd11545;
        chi5[11][5] = 32'sd37717;
        chi5[12][0] = 32'sd34317;
        chi5[12][1] = 32'sd-1949;
        chi5[12][2] = 32'sd-1717;
        chi5[12][3] = 32'sd-34548;
        chi5[12][4] = 32'sd232;
        chi5[12][5] = 32'sd1717;
        chi5[13][0] = 32'sd1320;
        chi5[13][1] = 32'sd10954;
        chi5[13][2] = 32'sd-2980;
        chi5[13][3] = 32'sd12614;
        chi5[13][4] = 32'sd-13934;
        chi5[13][5] = 32'sd2980;
        chi5[14][0] = 32'sd-39577;
        chi5[14][1] = 32'sd-115107;
        chi5[14][2] = 32'sd49875;
        chi5[14][3] = 32'sd-125405;
        chi5[14][4] = 32'sd164982;
        chi5[14][5] = 32'sd-49875;
        chi5[15][0] = 32'sd23055;
        chi5[15][1] = 32'sd24907;
        chi5[15][2] = 32'sd-24969;
        chi5[15][3] = 32'sd26820;
        chi5[15][4] = 32'sd-49875;
        chi5[15][5] = 32'sd24969;
        chi5[16][0] = 32'sd0;
        chi5[16][1] = 32'sd0;
        chi5[16][2] = 32'sd0;
        chi5[16][3] = 32'sd0;
        chi5[16][4] = 32'sd0;
        chi5[16][5] = 32'sd0;
        chi5[17][0] = 32'sd0;
        chi5[17][1] = 32'sd0;
        chi5[17][2] = 32'sd0;
        chi5[17][3] = 32'sd0;
        chi5[17][4] = 32'sd0;
        chi5[17][5] = 32'sd0;
        chi5[18][0] = 32'sd0;
        chi5[18][1] = 32'sd0;
        chi5[18][2] = 32'sd0;
        chi5[18][3] = 32'sd0;
        chi5[18][4] = 32'sd0;
        chi5[18][5] = 32'sd0;
        chi5[19][0] = 32'sd-13653;
        chi5[19][1] = 32'sd0;
        chi5[19][2] = 32'sd0;
        chi5[19][3] = 32'sd0;
        chi5[19][4] = 32'sd0;
        chi5[19][5] = 32'sd0;
        chi5[20][0] = 32'sd0;
        chi5[20][1] = 32'sd-8192;
        chi5[20][2] = 32'sd0;
        chi5[20][3] = 32'sd0;
        chi5[20][4] = 32'sd0;
        chi5[20][5] = 32'sd0;
        chi5[21][0] = 32'sd0;
        chi5[21][1] = 32'sd0;
        chi5[21][2] = 32'sd-6554;
        chi5[21][3] = 32'sd0;
        chi5[21][4] = 32'sd0;
        chi5[21][5] = 32'sd0;
        chi5[22][0] = 32'sd-42014;
        chi5[22][1] = 32'sd49262;
        chi5[22][2] = 32'sd37717;
        chi5[22][3] = 32'sd53558;
        chi5[22][4] = 32'sd-11545;
        chi5[22][5] = 32'sd-37717;
    end
    reg signed [31:0 ]chi5_vec [0:22];
    assign chi5_vec[0] = 32'sd-40491;
    assign chi5_vec[1] = 32'sd16290;
    assign chi5_vec[2] = 32'sd15313;
    assign chi5_vec[3] = 32'sd18462;
    assign chi5_vec[4] = 32'sd23173;
    assign chi5_vec[5] = 32'sd16384;
    assign chi5_vec[6] = 32'sd16384;
    assign chi5_vec[7] = 32'sd16384;
    assign chi5_vec[8] = 32'sd16384;
    assign chi5_vec[9] = 32'sd16384;
    assign chi5_vec[10] = 32'sd16384;
    assign chi5_vec[11] = 32'sd-14726;
    assign chi5_vec[12] = 32'sd16478;
    assign chi5_vec[13] = 32'sd17455;
    assign chi5_vec[14] = 32'sd14306;
    assign chi5_vec[15] = 32'sd9595;
    assign chi5_vec[16] = 32'sd16384;
    assign chi5_vec[17] = 32'sd16384;
    assign chi5_vec[18] = 32'sd16384;
    assign chi5_vec[19] = 32'sd16384;
    assign chi5_vec[20] = 32'sd16384;
    assign chi5_vec[21] = 32'sd16384;
    assign chi5_vec[22] = 32'sd47494;

    reg signed [31:0] negchi5 [0:22][0:5];
    assign negchi5[0][0] = 32'sd-34015;
    assign negchi5[0][1] = 32'sd30088;
    assign negchi5[0][2] = 32'sd15223;
    assign negchi5[0][3] = 32'sd48881;
    assign negchi5[0][4] = 32'sd-14866;
    assign negchi5[0][5] = 32'sd-31607;
    assign negchi5[1][0] = 32'sd-34317;
    assign negchi5[1][1] = 32'sd1949;
    assign negchi5[1][2] = 32'sd1717;
    assign negchi5[1][3] = 32'sd34548;
    assign negchi5[1][4] = 32'sd-232;
    assign negchi5[1][5] = 32'sd-1717;
    assign negchi5[2][0] = 32'sd-1320;
    assign negchi5[2][1] = 32'sd-10954;
    assign negchi5[2][2] = 32'sd2980;
    assign negchi5[2][3] = 32'sd-12614;
    assign negchi5[2][4] = 32'sd13934;
    assign negchi5[2][5] = 32'sd-2980;
    assign negchi5[3][0] = 32'sd39577;
    assign negchi5[3][1] = 32'sd115107;
    assign negchi5[3][2] = 32'sd-49875;
    assign negchi5[3][3] = 32'sd125405;
    assign negchi5[3][4] = 32'sd-164982;
    assign negchi5[3][5] = 32'sd49875;
    assign negchi5[4][0] = 32'sd-23055;
    assign negchi5[4][1] = 32'sd-24907;
    assign negchi5[4][2] = 32'sd24969;
    assign negchi5[4][3] = 32'sd-26820;
    assign negchi5[4][4] = 32'sd49875;
    assign negchi5[4][5] = 32'sd-24969;
    assign negchi5[5][0] = 32'sd0;
    assign negchi5[5][1] = 32'sd0;
    assign negchi5[5][2] = 32'sd0;
    assign negchi5[5][3] = 32'sd0;
    assign negchi5[5][4] = 32'sd0;
    assign negchi5[5][5] = 32'sd0;
    assign negchi5[6][0] = 32'sd0;
    assign negchi5[6][1] = 32'sd0;
    assign negchi5[6][2] = 32'sd0;
    assign negchi5[6][3] = 32'sd0;
    assign negchi5[6][4] = 32'sd0;
    assign negchi5[6][5] = 32'sd0;
    assign negchi5[7][0] = 32'sd0;
    assign negchi5[7][1] = 32'sd0;
    assign negchi5[7][2] = 32'sd0;
    assign negchi5[7][3] = 32'sd0;
    assign negchi5[7][4] = 32'sd0;
    assign negchi5[7][5] = 32'sd0;
    assign negchi5[8][0] = 32'sd13653;
    assign negchi5[8][1] = 32'sd0;
    assign negchi5[8][2] = 32'sd0;
    assign negchi5[8][3] = 32'sd0;
    assign negchi5[8][4] = 32'sd0;
    assign negchi5[8][5] = 32'sd0;
    assign negchi5[9][0] = 32'sd0;
    assign negchi5[9][1] = 32'sd8192;
    assign negchi5[9][2] = 32'sd0;
    assign negchi5[9][3] = 32'sd0;
    assign negchi5[9][4] = 32'sd0;
    assign negchi5[9][5] = 32'sd0;
    assign negchi5[10][0] = 32'sd0;
    assign negchi5[10][1] = 32'sd0;
    assign negchi5[10][2] = 32'sd6554;
    assign negchi5[10][3] = 32'sd0;
    assign negchi5[10][4] = 32'sd0;
    assign negchi5[10][5] = 32'sd0;
    assign negchi5[11][0] = 32'sd42014;
    assign negchi5[11][1] = 32'sd-49262;
    assign negchi5[11][2] = 32'sd-37717;
    assign negchi5[11][3] = 32'sd-53558;
    assign negchi5[11][4] = 32'sd11545;
    assign negchi5[11][5] = 32'sd37717;
    assign negchi5[12][0] = 32'sd34317;
    assign negchi5[12][1] = 32'sd-1949;
    assign negchi5[12][2] = 32'sd-1717;
    assign negchi5[12][3] = 32'sd-34548;
    assign negchi5[12][4] = 32'sd232;
    assign negchi5[12][5] = 32'sd1717;
    assign negchi5[13][0] = 32'sd1320;
    assign negchi5[13][1] = 32'sd10954;
    assign negchi5[13][2] = 32'sd-2980;
    assign negchi5[13][3] = 32'sd12614;
    assign negchi5[13][4] = 32'sd-13934;
    assign negchi5[13][5] = 32'sd2980;
    assign negchi5[14][0] = 32'sd-39577;
    assign negchi5[14][1] = 32'sd-115107;
    assign negchi5[14][2] = 32'sd49875;
    assign negchi5[14][3] = 32'sd-125405;
    assign negchi5[14][4] = 32'sd164982;
    assign negchi5[14][5] = 32'sd-49875;
    assign negchi5[15][0] = 32'sd23055;
    assign negchi5[15][1] = 32'sd24907;
    assign negchi5[15][2] = 32'sd-24969;
    assign negchi5[15][3] = 32'sd26820;
    assign negchi5[15][4] = 32'sd-49875;
    assign negchi5[15][5] = 32'sd24969;
    assign negchi5[16][0] = 32'sd0;
    assign negchi5[16][1] = 32'sd0;
    assign negchi5[16][2] = 32'sd0;
    assign negchi5[16][3] = 32'sd0;
    assign negchi5[16][4] = 32'sd0;
    assign negchi5[16][5] = 32'sd0;
    assign negchi5[17][0] = 32'sd0;
    assign negchi5[17][1] = 32'sd0;
    assign negchi5[17][2] = 32'sd0;
    assign negchi5[17][3] = 32'sd0;
    assign negchi5[17][4] = 32'sd0;
    assign negchi5[17][5] = 32'sd0;
    assign negchi5[18][0] = 32'sd0;
    assign negchi5[18][1] = 32'sd0;
    assign negchi5[18][2] = 32'sd0;
    assign negchi5[18][3] = 32'sd0;
    assign negchi5[18][4] = 32'sd0;
    assign negchi5[18][5] = 32'sd0;
    assign negchi5[19][0] = 32'sd-13653;
    assign negchi5[19][1] = 32'sd0;
    assign negchi5[19][2] = 32'sd0;
    assign negchi5[19][3] = 32'sd0;
    assign negchi5[19][4] = 32'sd0;
    assign negchi5[19][5] = 32'sd0;
    assign negchi5[20][0] = 32'sd0;
    assign negchi5[20][1] = 32'sd-8192;
    assign negchi5[20][2] = 32'sd0;
    assign negchi5[20][3] = 32'sd0;
    assign negchi5[20][4] = 32'sd0;
    assign negchi5[20][5] = 32'sd0;
    assign negchi5[21][0] = 32'sd0;
    assign negchi5[21][1] = 32'sd0;
    assign negchi5[21][2] = 32'sd-6554;
    assign negchi5[21][3] = 32'sd0;
    assign negchi5[21][4] = 32'sd0;
    assign negchi5[21][5] = 32'sd0;
    assign negchi5[22][0] = 32'sd-42014;
    assign negchi5[22][1] = 32'sd49262;
    assign negchi5[22][2] = 32'sd37717;
    assign negchi5[22][3] = 32'sd53558;
    assign negchi5[22][4] = 32'sd-11545;
    assign negchi5[22][5] = 32'sd-37717;

    reg signed [31:0] negchi5_vec [22:0];
    assign negchi5_vec[0] = 32'sd40491;
    assign negchi5_vec[1] = 32'sd16290;
    assign negchi5_vec[2] = 32'sd15313;
    assign negchi5_vec[3] = 32'sd18462;
    assign negchi5_vec[4] = 32'sd23173;
    assign negchi5_vec[5] = 32'sd16384;
    assign negchi5_vec[6] = 32'sd16384;
    assign negchi5_vec[7] = 32'sd16384;
    assign negchi5_vec[8] = 32'sd16384;
    assign negchi5_vec[9] = 32'sd16384;
    assign negchi5_vec[10] = 32'sd16384;
    assign negchi5_vec[11] = 32'sd-14726;
    assign negchi5_vec[12] = 32'sd16478;
    assign negchi5_vec[13] = 32'sd17455;
    assign negchi5_vec[14] = 32'sd14306;
    assign negchi5_vec[15] = 32'sd9595;
    assign negchi5_vec[16] = 32'sd16384;
    assign negchi5_vec[17] = 32'sd16384;
    assign negchi5_vec[18] = 32'sd16384;
    assign negchi5_vec[19] = 32'sd16384;
    assign negchi5_vec[20] = 32'sd16384;
    assign negchi5_vec[21] = 32'sd16384;
    assign negchi5_vec[22] = 32'sd47494;

endmodule

function automatic signed [31:0] get_chi5;
    input integer row, col;
    begin
        case (row)
            0: case (col)
                0: get_chi5 = 32'sd34015;
                1: get_chi5 = 32'sd-30088;
                2: get_chi5 = 32'sd-15223;
                3: get_chi5 = 32'sd-48881;
                4: get_chi5 = 32'sd14866;
                5: get_chi5 = 32'sd31607;
                default: get_{name_prefix} = 32'sd0;
            endcase
            1: case (col)
                0: get_chi5 = 32'sd-34317;
                1: get_chi5 = 32'sd1949;
                2: get_chi5 = 32'sd1717;
                3: get_chi5 = 32'sd34548;
                4: get_chi5 = 32'sd-232;
                5: get_chi5 = 32'sd-1717;
                default: get_{name_prefix} = 32'sd0;
            endcase
            2: case (col)
                0: get_chi5 = 32'sd-1320;
                1: get_chi5 = 32'sd-10954;
                2: get_chi5 = 32'sd2980;
                3: get_chi5 = 32'sd-12614;
                4: get_chi5 = 32'sd13934;
                5: get_chi5 = 32'sd-2980;
                default: get_{name_prefix} = 32'sd0;
            endcase
            3: case (col)
                0: get_chi5 = 32'sd39577;
                1: get_chi5 = 32'sd115107;
                2: get_chi5 = 32'sd-49875;
                3: get_chi5 = 32'sd125405;
                4: get_chi5 = 32'sd-164982;
                5: get_chi5 = 32'sd49875;
                default: get_{name_prefix} = 32'sd0;
            endcase
            4: case (col)
                0: get_chi5 = 32'sd-23055;
                1: get_chi5 = 32'sd-24907;
                2: get_chi5 = 32'sd24969;
                3: get_chi5 = 32'sd-26820;
                4: get_chi5 = 32'sd49875;
                5: get_chi5 = 32'sd-24969;
                default: get_{name_prefix} = 32'sd0;
            endcase
            5: case (col)
                0: get_chi5 = 32'sd0;
                1: get_chi5 = 32'sd0;
                2: get_chi5 = 32'sd0;
                3: get_chi5 = 32'sd0;
                4: get_chi5 = 32'sd0;
                5: get_chi5 = 32'sd0;
                default: get_{name_prefix} = 32'sd0;
            endcase
            6: case (col)
                0: get_chi5 = 32'sd0;
                1: get_chi5 = 32'sd0;
                2: get_chi5 = 32'sd0;
                3: get_chi5 = 32'sd0;
                4: get_chi5 = 32'sd0;
                5: get_chi5 = 32'sd0;
                default: get_{name_prefix} = 32'sd0;
            endcase
            7: case (col)
                0: get_chi5 = 32'sd0;
                1: get_chi5 = 32'sd0;
                2: get_chi5 = 32'sd0;
                3: get_chi5 = 32'sd0;
                4: get_chi5 = 32'sd0;
                5: get_chi5 = 32'sd0;
                default: get_{name_prefix} = 32'sd0;
            endcase
            8: case (col)
                0: get_chi5 = 32'sd13653;
                1: get_chi5 = 32'sd0;
                2: get_chi5 = 32'sd0;
                3: get_chi5 = 32'sd0;
                4: get_chi5 = 32'sd0;
                5: get_chi5 = 32'sd0;
                default: get_{name_prefix} = 32'sd0;
            endcase
            9: case (col)
                0: get_chi5 = 32'sd0;
                1: get_chi5 = 32'sd8192;
                2: get_chi5 = 32'sd0;
                3: get_chi5 = 32'sd0;
                4: get_chi5 = 32'sd0;
                5: get_chi5 = 32'sd0;
                default: get_{name_prefix} = 32'sd0;
            endcase
            10: case (col)
                0: get_chi5 = 32'sd0;
                1: get_chi5 = 32'sd0;
                2: get_chi5 = 32'sd6554;
                3: get_chi5 = 32'sd0;
                4: get_chi5 = 32'sd0;
                5: get_chi5 = 32'sd0;
                default: get_{name_prefix} = 32'sd0;
            endcase
            11: case (col)
                0: get_chi5 = 32'sd42014;
                1: get_chi5 = 32'sd-49262;
                2: get_chi5 = 32'sd-37717;
                3: get_chi5 = 32'sd-53558;
                4: get_chi5 = 32'sd11545;
                5: get_chi5 = 32'sd37717;
                default: get_{name_prefix} = 32'sd0;
            endcase
            12: case (col)
                0: get_chi5 = 32'sd34317;
                1: get_chi5 = 32'sd-1949;
                2: get_chi5 = 32'sd-1717;
                3: get_chi5 = 32'sd-34548;
                4: get_chi5 = 32'sd232;
                5: get_chi5 = 32'sd1717;
                default: get_{name_prefix} = 32'sd0;
            endcase
            13: case (col)
                0: get_chi5 = 32'sd1320;
                1: get_chi5 = 32'sd10954;
                2: get_chi5 = 32'sd-2980;
                3: get_chi5 = 32'sd12614;
                4: get_chi5 = 32'sd-13934;
                5: get_chi5 = 32'sd2980;
                default: get_{name_prefix} = 32'sd0;
            endcase
            14: case (col)
                0: get_chi5 = 32'sd-39577;
                1: get_chi5 = 32'sd-115107;
                2: get_chi5 = 32'sd49875;
                3: get_chi5 = 32'sd-125405;
                4: get_chi5 = 32'sd164982;
                5: get_chi5 = 32'sd-49875;
                default: get_{name_prefix} = 32'sd0;
            endcase
            15: case (col)
                0: get_chi5 = 32'sd23055;
                1: get_chi5 = 32'sd24907;
                2: get_chi5 = 32'sd-24969;
                3: get_chi5 = 32'sd26820;
                4: get_chi5 = 32'sd-49875;
                5: get_chi5 = 32'sd24969;
                default: get_{name_prefix} = 32'sd0;
            endcase
            16: case (col)
                0: get_chi5 = 32'sd0;
                1: get_chi5 = 32'sd0;
                2: get_chi5 = 32'sd0;
                3: get_chi5 = 32'sd0;
                4: get_chi5 = 32'sd0;
                5: get_chi5 = 32'sd0;
                default: get_{name_prefix} = 32'sd0;
            endcase
            17: case (col)
                0: get_chi5 = 32'sd0;
                1: get_chi5 = 32'sd0;
                2: get_chi5 = 32'sd0;
                3: get_chi5 = 32'sd0;
                4: get_chi5 = 32'sd0;
                5: get_chi5 = 32'sd0;
                default: get_{name_prefix} = 32'sd0;
            endcase
            18: case (col)
                0: get_chi5 = 32'sd0;
                1: get_chi5 = 32'sd0;
                2: get_chi5 = 32'sd0;
                3: get_chi5 = 32'sd0;
                4: get_chi5 = 32'sd0;
                5: get_chi5 = 32'sd0;
                default: get_{name_prefix} = 32'sd0;
            endcase
            19: case (col)
                0: get_chi5 = 32'sd-13653;
                1: get_chi5 = 32'sd0;
                2: get_chi5 = 32'sd0;
                3: get_chi5 = 32'sd0;
                4: get_chi5 = 32'sd0;
                5: get_chi5 = 32'sd0;
                default: get_{name_prefix} = 32'sd0;
            endcase
            20: case (col)
                0: get_chi5 = 32'sd0;
                1: get_chi5 = 32'sd-8192;
                2: get_chi5 = 32'sd0;
                3: get_chi5 = 32'sd0;
                4: get_chi5 = 32'sd0;
                5: get_chi5 = 32'sd0;
                default: get_{name_prefix} = 32'sd0;
            endcase
            21: case (col)
                0: get_chi5 = 32'sd0;
                1: get_chi5 = 32'sd0;
                2: get_chi5 = 32'sd-6554;
                3: get_chi5 = 32'sd0;
                4: get_chi5 = 32'sd0;
                5: get_chi5 = 32'sd0;
                default: get_{name_prefix} = 32'sd0;
            endcase
            22: case (col)
                0: get_chi5 = 32'sd-42014;
                1: get_chi5 = 32'sd49262;
                2: get_chi5 = 32'sd37717;
                3: get_chi5 = 32'sd53558;
                4: get_chi5 = 32'sd-11545;
                5: get_chi5 = 32'sd-37717;
                default: get_{name_prefix} = 32'sd0;
            endcase
            default: get_{name_prefix} = 32'sd0;
        endcase
    end
endfunction



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

