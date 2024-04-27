`timescale 1ns / 1ps
module testbench(

    );
    reg [31:0] A,B;
    reg [3:0] control;
    wire [31:0] S;
    wire carry, overflow, zero;
    main unit(A, B, control, S, carry, overflow, zero);
    initial begin
    
    A = 5;
    B=5;
    control = 1;
    #400
    $display("A=%d B=%d control=%d S=%d carry=%b overflow=%b zero=%b",A,B,control,S,carry,overflow , zero);
    A = 5;
    B=9;
    control = 1;
    #400
    $display("A=%d B=%d control=%d S=%d carry=%b overflow=%b zero=%b",A,B,control,S,carry, overflow, zero);
	A=7;
	B=9;
	control=0;
	#400
    $display("A=%d B=%d control=%d S=%d carry=%b overflow=%b zero=%b",A,B,control,S,carry, overflow, zero);
	A=18;
	B=9;
	control=10;
	#400
    $display("A=%d B=%d control=%d S=%d carry=%b overflow=%b zero=%b",A,B,control,S,carry, overflow, zero);
    // addition - 0
    A=4294967295;
	B=2;
	control=0;
	#400
    $display("adunare A=%d B=%d control=%d S=%d carry=%b overflow=%b zero=%b",A,B,control,S,carry, overflow, zero);
    A=0;
	B=0;
	control=0;
	#400
    $display("adunare A=%d B=%d control=%d S=%d carry=%b overflow=%b zero=%b",A,B,control,S,carry, overflow, zero);
    A=6748256;
	B=64396834;
	control=0;
	#400
    $display("adunare A=%d B=%d control=%d S=%d carry=%b overflow=%b zero=%b",A,B,control,S,carry, overflow, zero);
    A=67539;
	B=235;
	control=0;
	#400
    $display("adunare A=%d B=%d control=%d S=%d carry=%b overflow=%b zero=%b",A,B,control,S,carry, overflow, zero);
    A=2348;
	B=243235;
	control=0;
	#400
    $display("adunare A=%d B=%d control=%d S=%d carry=%b overflow=%b zero=%b",A,B,control,S,carry, overflow, zero);
    A=5904357;
	B=13334;
	control=0;
	#400
    $display("adunare A=%d B=%d control=%d S=%d carry=%b overflow=%b zero=%b",A,B,control,S,carry, overflow, zero);
    // multiplication - 1
    A=36544;
	B=262;
	control=1;
	#400
    $display("inmultire A=%d B=%d control=%d S=%d carry=%b overflow=%b zero=%b",A,B,control,S,carry, overflow, zero);
    A=33333;
	B=0;
	control=1;
	#400
    $display("inmultire A=%d B=%d control=%d S=%d carry=%b overflow=%b zero=%b",A,B,control,S,carry, overflow, zero);
    A=0;
	B=333333;
	control=1;
	#400
    $display("inmultire A=%d B=%d control=%d S=%d carry=%b overflow=%b zero=%b",A,B,control,S,carry, overflow, zero);
    A=743896;
	B=3333583;
	control=1;
	#400
    $display("inmultire A=%d B=%d control=%d S=%d carry=%b overflow=%b zero=%b",A,B,control,S,carry, overflow, zero);
    A=679;
	B=234234;
	control=1;
	#400
    $display("inmultire A=%d B=%d control=%d S=%d carry=%b overflow=%b zero=%b",A,B,control,S,carry, overflow, zero);
    A=89655;
	B=54255;
	control=1;
	#400
    $display("inmultire A=%d B=%d control=%d S=%d carry=%b overflow=%b zero=%b",A,B,control,S,carry, overflow, zero);
    A=245;
	B=4525;
	control=1;
	#400
    $display("inmultire A=%d B=%d control=%d S=%d carry=%b overflow=%b zero=%b",A,B,control,S,carry, overflow, zero);
    A=874;
	B=25535;
	control=1;
	#400
    $display("inmultire A=%d B=%d control=%d S=%d carry=%b overflow=%b zero=%b",A,B,control,S,carry, overflow, zero);
    // subtraction -2
    A=57439;
	B=232;
	control=2;
	#400
    $display("scadere A=%d B=%d control=%d S=%d carry=%b overflow=%b zero=%b",A,B,control,S,carry, overflow, zero);
    A=4567;
	B=4567;
	control=2;
	#400
    $display("scadere A=%d B=%d control=%d S=%d carry=%b overflow=%b zero=%b",A,B,control,S,carry, overflow, zero);
    A=6843;
	B=4567;
	control=2;
	#400
    $display("scadere A=%d B=%d control=%d S=%d carry=%b overflow=%b zero=%b",A,B,control,S,carry, overflow, zero);
    A=23525;
	B=255;
	control=2;
	#400
    $display("scadere A=%d B=%d control=%d S=%d carry=%b overflow=%b zero=%b",A,B,control,S,carry, overflow, zero);
    A=5255425;
	B=5235255;
	control=2;
	#400
    $display("scadere A=%d B=%d control=%d S=%d carry=%b overflow=%b zero=%b",A,B,control,S,carry, overflow, zero);
    A=8678059;
	B=24235;
	control=2;
	#400
    $display("scadere A=%d B=%d control=%d S=%d carry=%b overflow=%b zero=%b",A,B,control,S,carry, overflow, zero);
    // left shift - 3
    A=32;
	B=0;
	control=3;
	#400
    $display("left shift A=%d B=%d control=%d S=%d carry=%b overflow=%b zero=%b",A,B,control,S,carry, overflow, zero);
    A=0;
	B=0;
	control=3;
	#400
    $display("left shift A=%d B=%d control=%d S=%d carry=%b overflow=%b zero=%b",A,B,control,S,carry, overflow, zero);
    A=5327852;
	B=0;
	control=3;
	#400
    $display("left shift A=%d B=%d control=%d S=%d carry=%b overflow=%b zero=%b",A,B,control,S,carry, overflow, zero);
    A=2348923;
	B=0;
	control=3;
	#400
    $display("left shift A=%d B=%d control=%d S=%d carry=%b overflow=%b zero=%b",A,B,control,S,carry, overflow, zero);
    A=567428;
	B=0;
	control=3;
	#400
    $display("left shift A=%d B=%d control=%d S=%d carry=%b overflow=%b zero=%b",A,B,control,S,carry, overflow, zero);
    A=45436;
	B=0;
	control=3;
	#400
    $display("left shift A=%d B=%d control=%d S=%d carry=%b overflow=%b zero=%b",A,B,control,S,carry, overflow, zero);
    // right shift - 4
    A=32;
	B=0;
	control=4;
	#400
    $display("right shift A=%d B=%d control=%d S=%d carry=%b overflow=%b zero=%b",A,B,control,S,carry, overflow, zero);
    A=0;
	B=0;
	control=4;
	#400
    $display("right shift A=%d B=%d control=%d S=%d carry=%b overflow=%b zero=%b",A,B,control,S,carry, overflow, zero);
    A=4294967295;
	B=0;
	control=4;
	#400
    $display("right shift A=%d B=%d control=%d S=%d carry=%b overflow=%b zero=%b",A,B,control,S,carry, overflow, zero);
    // arithmetic right shift - 5
    A=32;
	B=0;
	control=5;
	#400
    $display("arithmetic right shift A=%d B=%d control=%d S=%d carry=%b overflow=%b zero=%b",A,B,control,S,carry, overflow, zero);
    A=0;
	B=0;
	control=5;
	#400
    $display("arithmetic right shift A=%d B=%d control=%d S=%d carry=%b overflow=%b zero=%b",A,B,control,S,carry, overflow, zero);
    A=4294967295;
	B=0;
	control=5;
	#400
    $display("arithmetic right shift A=%d B=%d control=%d S=%d carry=%b overflow=%b zero=%b",A,B,control,S,carry, overflow, zero);
    A=923847;
	B=0;
	control=5;
	#400
    $display("arithmetic right shift A=%d B=%d control=%d S=%d carry=%b overflow=%b zero=%b",A,B,control,S,carry, overflow, zero);
    A=5437593;
	B=0;
	control=5;
	#400
    $display("arithmetic right shift A=%d B=%d control=%d S=%d carry=%b overflow=%b zero=%b",A,B,control,S,carry, overflow, zero);
    A=64896;
	B=0;
	control=5;
	#400
    $display("arithmetic right shift A=%d B=%d control=%d S=%d carry=%b overflow=%b zero=%b",A,B,control,S,carry, overflow, zero);
    // bitwise and - 6
        A=65563;
	B=1;
	control=6;
	#5
    $display("And A=%d B=%d control=%d S=%d carry=%b overflow=%b zero=%b",A,B,control,S,carry, overflow, zero);
        A=4294967295;
	B=456;
	control=6;
	#5
    $display("And A=%d B=%d control=%d S=%d carry=%b overflow=%b zero=%b",A,B,control,S,carry, overflow, zero);
        A=4294967295;
	B=4294967295;
	control=6;
	#5
    $display("And A=%d B=%d control=%d S=%d carry=%b overflow=%b zero=%b",A,B,control,S,carry, overflow, zero);
        A=756433;
	B=0;
	control=6;
	#5
    $display("And A=%d B=%d control=%d S=%d carry=%b overflow=%b zero=%b",A,B,control,S,carry, overflow, zero);
            A=0;
	B=0;
	control=6;
	#5
    $display("And A=%d B=%d control=%d S=%d carry=%b overflow=%b zero=%b",A,B,control,S,carry, overflow, zero);
    // bitwise or - 7
            A=65562;
	B=1;
	control=7;
	#5
    $display("Or A=%d B=%d control=%d S=%d carry=%b overflow=%b zero=%b",A,B,control,S,carry, overflow, zero);
        A=4294967295;
	B=645663;
	control=7;
	#5
    $display("Or A=%d B=%d control=%d S=%d carry=%b overflow=%b zero=%b",A,B,control,S,carry, overflow, zero);
        A=4294967295;
	B=4294967295;
	control=7;
	#5
    $display("Or A=%d B=%d control=%d S=%d carry=%b overflow=%b zero=%b",A,B,control,S,carry, overflow, zero);
        A=9826433;
	B=0;
	control=7;
	#5
    $display("Or A=%d B=%d control=%d S=%d carry=%b overflow=%b zero=%b",A,B,control,S,carry, overflow, zero);
            A=0;
	B=0;
	control=7;
	#5
    $display("Or A=%d B=%d control=%d S=%d carry=%b overflow=%b zero=%b",A,B,control,S,carry, overflow, zero);
    // bitwise not  - 8
        A=543222;
	control=8;
	#5
    $display("Not A=%d control=%d S=%d carry=%b overflow=%b zero=%b",A,control,S,carry, overflow, zero);
        A=65633395;
	control=8;
	#5
    $display("Not A=%d control=%d S=%d carry=%b overflow=%b zero=%b",A,control,S,carry, overflow, zero);
        A=4294967295;
	control=8;
	#5
    $display("Not A=%d  control=%d S=%d carry=%b overflow=%b zero=%b",A,control,S,carry, overflow, zero);
        A=9826433;
	control=8;
	#5
    $display("Not A=%d control=%d S=%d carry=%b overflow=%b zero=%b",A,control,S,carry, overflow, zero);
            A=0;
	control=8;
	#5
    $display("Not A=%d control=%d S=%d carry=%b overflow=%b zero=%b",A,control,S,carry, overflow, zero);
    // bitwise xor - 9
        A=2345566;
	B=1;
	control=9;
	#5
    $display("Xor A=%d B=%d control=%d S=%d carry=%b overflow=%b zero=%b",A,B,control,S,carry, overflow, zero);
        A=4294967295;
	B=54677;
	control=9;
	#5
    $display("Xor A=%d B=%d control=%d S=%d carry=%b overflow=%b zero=%b",A,B,control,S,carry, overflow, zero);
        A=4294967295;
	B=4294967295;
	control=9;
	#5
    $display("Xor A=%d B=%d control=%d S=%d carry=%b overflow=%b zero=%b",A,B,control,S,carry, overflow, zero);
        A=4294967295;
	B=0;
	control=9;
	#5
    $display("Xor A=%d B=%d control=%d S=%d carry=%b overflow=%b zero=%b",A,B,control,S,carry, overflow, zero);
        A=0;
	B=0;
	control=9;
	#5
    $display("Xor A=%d B=%d control=%d S=%d carry=%b overflow=%b zero=%b",A,B,control,S,carry, overflow, zero);
    // division - 10
            A=15;
	B=1;
	control=10;
	#400
    $display("Division A=%d B=%d control=%d S=%d carry=%b overflow=%b zero=%b",A,B,control,S,carry, overflow, zero);
        A=503;
	B=10;
	control=10;
	#400
    $display("Division A=%d B=%d control=%d S=%d carry=%b overflow=%b zero=%b",A,B,control,S,carry, overflow, zero);
        A=4294967295;
	B=4294967295;
	control=10;
	#400
    $display("Division A=%d B=%d control=%d S=%d carry=%b overflow=%b zero=%b",A,B,control,S,carry, overflow, zero);
        A=0;
	B=564633;
	control=10;
	#400
    $display("Division A=%d B=%d control=%d S=%d carry=%b overflow=%b zero=%b",A,B,control,S,carry, overflow, zero);
        A=0;
	B=0;
	control=10;
	#400;
    //$display("Division A=%d B=%d control=%d S=%d carry=%b overflow=%b zero=%b",A,B,control,S,carry, overflow, zero);
    end
    
    
endmodule