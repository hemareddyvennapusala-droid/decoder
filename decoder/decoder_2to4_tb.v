`timescale 1ns/1ps

module decoder_2to4_tb;

reg [1:0] A;
reg EN;
wire [3:0] Y;

decoder_2to4 DUT(
    .A(A),
    .EN(EN),
    .Y(Y)
);

initial begin

    $display("--------------------------------------");
    $display("Time\tEN\tA\tY");
    $display("--------------------------------------");

    EN = 0; A = 2'b00; #10;
    $display("%0dns\t%b\t%b\t%b",$time,EN,A,Y);

    EN = 1; A = 2'b00; #10;
    $display("%0dns\t%b\t%b\t%b",$time,EN,A,Y);

    A = 2'b01; #10;
    $display("%0dns\t%b\t%b\t%b",$time,EN,A,Y);

    A = 2'b10; #10;
    $display("%0dns\t%b\t%b\t%b",$time,EN,A,Y);

    A = 2'b11; #10;
    $display("%0dns\t%b\t%b\t%b",$time,EN,A,Y);

    EN = 0; A = 2'b10; #10;
    $display("%0dns\t%b\t%b\t%b",$time,EN,A,Y);

    $finish;

end

endmodule