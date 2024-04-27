`timescale 1ns / 1ps

module Assigner1(
    input [31:0] a,
    input flag,
    output [31:0] b
    );
    
    assign b[0]= a[0]&flag;
    assign b[1]= a[1]& flag;
    assign b[2]= a[2]& flag;
    assign b[3]= a[3]& flag;
    assign b[4]= a[4]& flag;
    assign b[5]= a[5]& flag;
    assign b[6]= a[6]& flag;
    assign b[7]= a[7]& flag;
    assign b[8]= a[8]& flag;
    assign b[9]= a[9]& flag;
    assign b[10]= a[10]& flag;
    assign b[11]= a[11]& flag;
    assign b[12]= a[12]& flag;
    assign b[13]= a[13]& flag;
    assign b[14]= a[14]& flag;
    assign b[15]= a[15]& flag;
    assign b[16]= a[16]& flag;
    assign b[17]= a[17]& flag;
    assign b[18]= a[18]& flag;
    assign b[19]= a[19]& flag;
    assign b[20]= a[20]& flag;
    assign b[21]= a[21]& flag;
    assign b[22]= a[22]& flag;
    assign b[23]= a[23]& flag;
    assign b[24]= a[24]& flag;
    assign b[25]= a[25]& flag;
    assign b[26]= a[26]& flag;
    assign b[27]= a[27]& flag;
    assign b[28]= a[28]& flag;
    assign b[29]= a[29]& flag;
    assign b[30]= a[30]& flag;
    assign b[31]= a[31]& flag;
    
    
endmodule

module comparator(
    input [31:0] a,
    input [31:0] b,
    output a_l
    );
    
    wire [31:0] E, A;
    Compare1 cp0(a[0], b[0], E[0], A[0]);
    Compare1 cp1(a[1], b[1], E[1], A[1]);
    Compare1 cp2(a[2], b[2], E[2], A[2]);
    Compare1 cp3(a[3], b[3], E[3], A[3]);
    Compare1 cp4(a[4], b[4], E[4], A[4]);
    Compare1 cp5(a[5], b[5], E[5], A[5]);
    Compare1 cp6(a[6], b[6], E[6], A[6]);
    Compare1 cp7(a[7], b[7], E[7], A[7]);
    Compare1 cp8(a[8], b[8], E[8], A[8]);
    Compare1 cp9(a[9], b[9], E[9], A[9]);
    Compare1 cp10(a[10], b[10], E[10], A[10]);
    Compare1 cp11(a[11], b[11], E[11], A[11]);
    Compare1 cp12(a[12], b[12], E[12], A[12]);
    Compare1 cp13(a[13], b[13], E[13], A[13]);
    Compare1 cp14(a[14], b[14], E[14], A[14]);
    Compare1 cp15(a[15], b[15], E[15], A[15]);
    Compare1 cp16(a[16], b[16], E[16], A[16]);
    Compare1 cp17(a[17], b[17], E[17], A[17]);
    Compare1 cp18(a[18], b[18], E[18], A[18]);
    Compare1 cp19(a[19], b[19], E[19], A[19]);
    Compare1 cp20(a[20], b[20], E[20], A[20]);
    Compare1 cp21(a[21], b[21], E[21], A[21]);
    Compare1 cp22(a[22], b[22], E[22], A[22]);
    Compare1 cp23(a[23], b[23], E[23], A[23]);
    Compare1 cp24(a[24], b[24], E[24], A[24]);
    Compare1 cp25(a[25], b[25], E[25], A[25]);
    Compare1 cp26(a[26], b[26], E[26], A[26]);
    Compare1 cp27(a[27], b[27], E[27], A[27]);
    Compare1 cp28(a[28], b[28], E[28], A[28]);
    Compare1 cp29(a[29], b[29], E[29], A[29]);
    Compare1 cp30(a[30], b[30], E[30], A[30]);
    Compare1 cp31(a[31], b[31], E[31], A[31]);
    
    
    assign a_l =  ( A[31] |
                   (A[30]&E[31]) |
                   (A[29]&E[30]&E[31]) | 
                   (A[28]&E[31]&E[30]&E[29]) |
                   (A[27]&E[31]&E[30]&E[29]&E[28]) |
                   (A[26]&E[31]&E[30]&E[29]&E[28]&E[27]) |
                   (A[25]&E[31]&E[30]&E[29]&E[28]&E[27]&E[26]) |
                   (A[24]&E[31]&E[30]&E[29]&E[28]&E[27]&E[26]&E[25]) |
                   (A[23]&E[31]&E[30]&E[29]&E[28]&E[27]&E[26]&E[25]&E[24]) |
                   (A[22]&E[31]&E[30]&E[29]&E[28]&E[27]&E[26]&E[25]&E[24]&E[23]) |
                   (A[21]&E[31]&E[30]&E[29]&E[28]&E[27]&E[26]&E[25]&E[24]&E[23]&E[22]) |
                   (A[20]&E[31]&E[30]&E[29]&E[28]&E[27]&E[26]&E[25]&E[24]&E[23]&E[22]&E[21]) |
                   (A[19]&E[31]&E[30]&E[29]&E[28]&E[27]&E[26]&E[25]&E[24]&E[23]&E[22]&E[21]&E[20]) | 
                   (A[18]&E[31]&E[30]&E[29]&E[28]&E[27]&E[26]&E[25]&E[24]&E[23]&E[22]&E[21]&E[20]&E[19]) |
                   (A[17]&E[31]&E[30]&E[29]&E[28]&E[27]&E[26]&E[25]&E[24]&E[23]&E[22]&E[21]&E[20]&E[19]&E[18]) |
                   (A[16]&E[31]&E[30]&E[29]&E[28]&E[27]&E[26]&E[25]&E[24]&E[23]&E[22]&E[21]&E[20]&E[19]&E[18]&E[17]) |
                   (A[15]&E[31]&E[30]&E[29]&E[28]&E[27]&E[26]&E[25]&E[24]&E[23]&E[22]&E[21]&E[20]&E[19]&E[18]&E[17]&E[16]) | 
                   (A[14]&E[31]&E[30]&E[29]&E[28]&E[27]&E[26]&E[25]&E[24]&E[23]&E[22]&E[21]&E[20]&E[19]&E[18]&E[17]&E[16]&E[15]) |
                   (A[13]&E[31]&E[30]&E[29]&E[28]&E[27]&E[26]&E[25]&E[24]&E[23]&E[22]&E[21]&E[20]&E[19]&E[18]&E[17]&E[16]&E[15]&E[14]) |
                   (A[12]&E[31]&E[30]&E[29]&E[28]&E[27]&E[26]&E[25]&E[24]&E[23]&E[22]&E[21]&E[20]&E[19]&E[18]&E[17]&E[16]&E[15]&E[14]&E[13]) | 
                   (A[11]&E[31]&E[30]&E[29]&E[28]&E[27]&E[26]&E[25]&E[24]&E[23]&E[22]&E[21]&E[20]&E[19]&E[18]&E[17]&E[16]&E[15]&E[14]&E[13]&E[12]) |
                   (A[10]&E[31]&E[30]&E[29]&E[28]&E[27]&E[26]&E[25]&E[24]&E[23]&E[22]&E[21]&E[20]&E[19]&E[18]&E[17]&E[16]&E[15]&E[14]&E[13]&E[12]&E[11]) |
                   (A[9] &E[31]&E[30]&E[29]&E[28]&E[27]&E[26]&E[25]&E[24]&E[23]&E[22]&E[21]&E[20]&E[19]&E[18]&E[17]&E[16]&E[15]&E[14]&E[13]&E[12]&E[11]&E[10]) |
                   (A[8] &E[31]&E[30]&E[29]&E[28]&E[27]&E[26]&E[25]&E[24]&E[23]&E[22]&E[21]&E[20]&E[19]&E[18]&E[17]&E[16]&E[15]&E[14]&E[13]&E[12]&E[11]&E[10]&E[9]) |
                   (A[7] &E[31]&E[30]&E[29]&E[28]&E[27]&E[26]&E[25]&E[24]&E[23]&E[22]&E[21]&E[20]&E[19]&E[18]&E[17]&E[16]&E[15]&E[14]&E[13]&E[12]&E[11]&E[10]&E[9]&E[8]) |
                   (A[6] &E[31]&E[30]&E[29]&E[28]&E[27]&E[26]&E[25]&E[24]&E[23]&E[22]&E[21]&E[20]&E[19]&E[18]&E[17]&E[16]&E[15]&E[14]&E[13]&E[12]&E[11]&E[10]&E[9]&E[8]&E[7]) |
                   (A[5] &E[31]&E[30]&E[29]&E[28]&E[27]&E[26]&E[25]&E[24]&E[23]&E[22]&E[21]&E[20]&E[19]&E[18]&E[17]&E[16]&E[15]&E[14]&E[13]&E[12]&E[11]&E[10]&E[9]&E[8]&E[7]&E[6]) |
                   (A[4] &E[31]&E[30]&E[29]&E[28]&E[27]&E[26]&E[25]&E[24]&E[23]&E[22]&E[21]&E[20]&E[19]&E[18]&E[17]&E[16]&E[15]&E[14]&E[13]&E[12]&E[11]&E[10]&E[9]&E[8]&E[7]&E[6]&E[5]) |
                   (A[3] &E[31]&E[30]&E[29]&E[28]&E[27]&E[26]&E[25]&E[24]&E[23]&E[22]&E[21]&E[20]&E[19]&E[18]&E[17]&E[16]&E[15]&E[14]&E[13]&E[12]&E[11]&E[10]&E[9]&E[8]&E[7]&E[6]&E[5]&E[4]) |
                   (A[2] &E[31]&E[30]&E[29]&E[28]&E[27]&E[26]&E[25]&E[24]&E[23]&E[22]&E[21]&E[20]&E[19]&E[18]&E[17]&E[16]&E[15]&E[14]&E[13]&E[12]&E[11]&E[10]&E[9]&E[8]&E[7]&E[6]&E[5]&E[4]&E[3]) |
                   (A[1] &E[31]&E[30]&E[29]&E[28]&E[27]&E[26]&E[25]&E[24]&E[23]&E[22]&E[21]&E[20]&E[19]&E[18]&E[17]&E[16]&E[15]&E[14]&E[13]&E[12]&E[11]&E[10]&E[9]&E[8]&E[7]&E[6]&E[5]&E[4]&E[3]&E[2]) |
                   (A[0] &E[31]&E[30]&E[29]&E[28]&E[27]&E[26]&E[25]&E[24]&E[23]&E[22]&E[21]&E[20]&E[19]&E[18]&E[17]&E[16]&E[15]&E[14]&E[13]&E[12]&E[11]&E[10]&E[9]&E[8]&E[7]&E[6]&E[5]&E[4]&E[3]&E[2]&E[1])
                    );    
    
endmodule

module Compare1(
    input a,
    input b,
    output equal, 
    output a_less
    );
    
    assign equal = (a&b) | (~a & ~b);
    assign a_less = (~a & b);
        
endmodule

module divider(
    input [31:0] d,
    input [31:0] ds,
    output [31:0] q
	//output [8:0] rest
    );
	//assign qq=q[39:8];
    //wire [39:0] q;
    wire [31:0] d_copy1;
    wire [31:0] d_copy2;
    wire [31:0] d_copy3;
    wire [31:0] d_copy4;
    wire [31:0] d_copy5;
    wire [31:0] d_copy6;
    wire [31:0] d_copy7;
    wire [31:0] d_copy8;
    wire [31:0] d_copy9;
    wire [31:0] d_copy10;
    wire [31:0] d_copy11;
    wire [31:0] d_copy12;
    wire [31:0] d_copy13;
    wire [31:0] d_copy14;
    wire [31:0] d_copy15;
    wire [31:0] d_copy16;
    wire [31:0] d_copy17;
    wire [31:0] d_copy18;
    wire [31:0] d_copy19;
    wire [31:0] d_copy20;
    wire [31:0] d_copy21;
    wire [31:0] d_copy22;
    wire [31:0] d_copy23;
    wire [31:0] d_copy24;
    wire [31:0] d_copy25;
    wire [31:0] d_copy26;
    wire [31:0] d_copy27;
    wire [31:0] d_copy28;
    wire [31:0] d_copy29;
    wire [31:0] d_copy30;
    wire [31:0] d_copy31;
    wire [31:0] d_copy32;
    wire [31:0] d_copy33;
    wire [31:0] d_copy34;
    wire [31:0] d_copy35;
    wire [31:0] d_copy36;
    wire [31:0] d_copy37;
    wire [31:0] d_copy38;
    wire [31:0] d_copy39;
    wire [31:0] d_copy40;    
    
    wire [31:0] flag;
    
    wire [31:0] k1;
    wire [31:0] k2;
    wire [31:0] k3;
    wire [31:0] k4;
    wire [31:0] k5;
    wire [31:0] k6;
    wire [31:0] k7;
    wire [31:0] k8;
    wire [31:0] k9;
    wire [31:0] k10;
    wire [31:0] k11;
    wire [31:0] k12;
    wire [31:0] k13;
    wire [31:0] k14;
    wire [31:0] k15;
    wire [31:0] k16;
    wire [31:0] k17;
    wire [31:0] k18;
    wire [31:0] k19;
    wire [31:0] k20;
    wire [31:0] k21;
    wire [31:0] k22;
    wire [31:0] k23;
    wire [31:0] k24;
    wire [31:0] k25;
    wire [31:0] k26;
    wire [31:0] k27;
    wire [31:0] k28;
    wire [31:0] k29;
    wire [31:0] k30;
    wire [31:0] k31;
    wire [31:0] k32;
     
    
    comparator c1( {31'b0, d[31]}, ds, flag[0]);
    Assigner1 A1(ds, ~flag[0], k1);
    subtractor32 s1( {31'b0, d[31]}, k1, d_copy1);
    assign q[31] = ~flag[0];
    

    comparator c2( {d_copy1[30:0], d[30]}, ds, flag[1]);
    Assigner1 A2(ds, ~flag[1], k2);
    subtractor32 s2( {d_copy1[30:0], d[30]}, k2, d_copy2);
    assign q[30] = ~flag[1];
    
     
    comparator c3( {d_copy2[30:0], d[29]}, ds, flag[2]);
    Assigner1 A3(ds, ~flag[2], k3);
    subtractor32 s3( {d_copy2[30:0], d[29]}, k3, d_copy3);
    assign q[29] = ~flag[2];
    
     
    comparator c4( {d_copy3[30:0], d[28]}, ds, flag[3]);
    Assigner1 A4(ds, ~flag[3], k4);
    subtractor32 s4( {d_copy3[30:0], d[28]}, k4, d_copy4);
    assign q[28] = ~flag[3];
    
     
    comparator c5( {d_copy4[30:0], d[27]}, ds, flag[4]);
    Assigner1 A5(ds, ~flag[4], k5);
    subtractor32 s5( {d_copy4[30:0], d[27]}, k5, d_copy5);
    assign q[27] = ~flag[4];


    comparator c6( {d_copy5[30:0], d[26]}, ds, flag[5]);
    Assigner1 A6(ds, ~flag[5], k6);
    subtractor32 s6( {d_copy5[30:0], d[26]}, k6, d_copy6);
    assign q[26] = ~flag[5];
    
     
    comparator c7( {d_copy6[30:0], d[25]}, ds, flag[6]);
    Assigner1 A7(ds, ~flag[6], k7);
    subtractor32 s7( {d_copy6[30:0], d[25]}, k7, d_copy7);
    assign q[25] = ~flag[6];
    
     
    comparator c8( {d_copy7[30:0], d[24]}, ds, flag[7]);
    Assigner1 A8(ds, ~flag[7], k8);
    subtractor32 s8( {d_copy7[30:0], d[24]}, k8, d_copy8);
    assign q[24] = ~flag[7];
    
     
    comparator c9( {d_copy8[30:0],d[23]}, ds, flag[8]);
    Assigner1 A9(ds, ~flag[8], k9);
    subtractor32 s9( {d_copy8[30:0],d[23]}, k9, d_copy9);
    assign q[23] = ~flag[8];
    
     
    comparator c10( {d_copy9[30:0], d[22]}, ds, flag[9]);
    Assigner1 A10(ds, ~flag[9], k10);
    subtractor32 s10( {d_copy9[30:0], d[22]}, k10, d_copy10);
    assign q[22] = ~flag[9];
    
     
    comparator c11( {d_copy10[30:0], d[21]}, ds, flag[10]);
    Assigner1 A11(ds, ~flag[10], k11);
    subtractor32 s11( {d_copy10[30:0], d[21]}, k11, d_copy11);
    assign q[21] = ~flag[10];
    
     
    comparator c12( {d_copy11[30:0], d[20]}, ds, flag[11]);
    Assigner1 A12(ds, ~flag[11], k12);
    subtractor32 s12( {d_copy11[30:0], d[20]}, k12, d_copy12);
    assign q[20] = ~flag[11];
    
     
    comparator c13( {d_copy12[30:0], d[19]}, ds, flag[12]);
    Assigner1 A13(ds, ~flag[12], k13);
    subtractor32 s13( {d_copy12[30:0], d[19]}, k13, d_copy13);
    assign q[19] = ~flag[12];
    

    comparator c14( {d_copy13[30:0], d[18]}, ds, flag[13]);
    Assigner1 A14(ds, ~flag[13], k14);
    subtractor32 s14( {d_copy13[30:0], d[18]}, k14, d_copy14);
    assign q[18] = ~flag[13];
    
     
    comparator c15( {d_copy14[30:0], d[17]}, ds, flag[14]);
    Assigner1 A15(ds, ~flag[14], k15);
    subtractor32 s15( {d_copy14[30:0], d[17]}, k15, d_copy15);
    assign q[17] = ~flag[14];
    
     
    comparator c16( {d_copy15[30:0], d[16]}, ds, flag[15]);
    Assigner1 A16(ds, ~flag[15], k16);
    subtractor32 s16( {d_copy15[30:0], d[16]}, k16, d_copy16);
    assign q[16] = ~flag[15];
    
    comparator c17( {d_copy16[30:0], d[15]}, ds, flag[16]);
    Assigner1 A17(ds, ~flag[16], k17);
    subtractor32 s17( {d_copy16[30:0], d[15]}, k17, d_copy17);
    assign q[15] = ~flag[16];
    
     
    comparator c18( {d_copy17[30:0], d[14]}, ds, flag[17]);
    Assigner1 A18(ds, ~flag[17], k18);
    subtractor32 s18( {d_copy17[30:0], d[14]}, k18, d_copy18);
    assign q[14] = ~flag[17];
    
     
    comparator c19( {d_copy18[30:0], d[13]}, ds, flag[18]);
    Assigner1 A19(ds, ~flag[18], k19);
    subtractor32 s19( {d_copy18[30:0], d[13]}, k19, d_copy19);
    assign q[13] = ~flag[18];
    
     
    comparator c20( {d_copy19[30:0], d[12]}, ds, flag[19]);
    Assigner1 A20(ds, ~flag[19], k20);
    subtractor32 s20( {d_copy19[30:0], d[12]}, k20, d_copy20);
    assign q[12] = ~flag[19];
    
     
    comparator c21( {d_copy20[30:0], d[11]}, ds, flag[20]);
    Assigner1 A21(ds, ~flag[20], k21);
    subtractor32 s21( {d_copy20[30:0], d[11]}, k21, d_copy21);
    assign q[11] = ~flag[20];
    
     
    comparator c22( {d_copy21[30:0], d[10]}, ds, flag[21]);
    Assigner1 A22(ds, ~flag[21], k22);
    subtractor32 s22( {d_copy21[30:0], d[10]}, k22, d_copy22);
    assign q[10] = ~flag[21];
    
     
    comparator c23( {d_copy22[30:0], d[9]}, ds, flag[22]);
    Assigner1 A23(ds, ~flag[22], k23);
    subtractor32 s23( {d_copy22[30:0], d[9]}, k23, d_copy23);
    assign q[9] = ~flag[22];
    
     
    comparator c24( {d_copy23[30:0], d[8]}, ds, flag[23]);
    Assigner1 A24(ds, ~flag[23], k24);
    subtractor32 s24( {d_copy23[30:0], d[8]}, k24, d_copy24);
    assign q[8] = ~flag[23];
    
     
    comparator c25( {d_copy24[30:0], d[7]}, ds, flag[24]);
    Assigner1 A25(ds, ~flag[24], k25);
    subtractor32 s25( {d_copy24[30:0], d[7]}, k25, d_copy25);
    assign q[7] = ~flag[24];
    
     
    comparator c26( {d_copy25[30:0], d[6]}, ds, flag[25]);
    Assigner1 A26(ds, ~flag[25], k26);
    subtractor32 s26( {d_copy25[30:0], d[6]}, k26, d_copy26);
    assign q[6] = ~flag[25];
   
     
    comparator c27( {d_copy26[30:0], d[5]}, ds, flag[26]);
    Assigner1 A27(ds, ~flag[26], k27);
    subtractor32 s27( {d_copy26[30:0], d[5]}, k27, d_copy27);
    assign q[5] = ~flag[26];
    
     
    comparator c28( {d_copy27[30:0], d[4]}, ds, flag[27]);
    Assigner1 A28(ds, ~flag[27], k28);
    subtractor32 s28( {d_copy27[30:0], d[4]}, k28, d_copy28);
    assign q[4] = ~flag[27];
    
     
    comparator c29( {d_copy28[30:0], d[3]}, ds, flag[28]);
    Assigner1 A29(ds, ~flag[28], k29);
    subtractor32 s29( {d_copy28[30:0], d[3]}, k29, d_copy29);
    assign q[3] = ~flag[28];
    
     
    comparator c30( {d_copy29[30:0], d[2]}, ds, flag[29]);
    Assigner1 A30(ds, ~flag[29], k30);
    subtractor32 s30( {d_copy29[30:0], d[2]}, k30, d_copy30);
    assign q[2] = ~flag[29];
    
     
    comparator c31( {d_copy30[30:0], d[1]}, ds, flag[30]);
    Assigner1 A31(ds, ~flag[30], k31);
    subtractor32 s31( {d_copy30[30:0], d[1]}, k31, d_copy31);
    assign q[1] = ~flag[30];
    
     
    comparator c32( {d_copy31[30:0], d[0]}, ds, flag[31]);
    Assigner1 A32(ds, ~flag[31], k32);
    subtractor32 s32( {d_copy31[30:0], d[0]}, k32, d_copy32);
    assign q[0] = ~flag[31];
    
    
endmodule