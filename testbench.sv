module alu_tb;

    reg [7:0] InputA;
    reg [7:0] InputB;
    reg [2:0] OpCode;

    wire [15:0] OutALU;
    wire Cout;

    // Instantiate the ALU
    alu uut (
        .InputA(InputA),
        .InputB(InputB),
        .OpCode(OpCode),
        .OutALU(OutALU),
        .Cout(Cout)
    );

    initial begin
      $dumpfile("dump,vcd");
      $dumpvars(0,alu_tb);

        // Case 1
        InputA = 45;
        InputB = 38;

        OpCode = 3'b000;
        #10;

        OpCode = 3'b001;
        #10;

        OpCode = 3'b110;
        #10;

        OpCode = 3'b111;
        #10;

        // Case 2
        InputA = 49;
        InputB = 10;

        OpCode = 3'b010;
        #10;

        OpCode = 3'b011;
        #10;

        OpCode = 3'b100;
        #10;

        OpCode = 3'b101;
        #10;
    
        $finish;
    end

    initial begin
        $monitor("Time=%0t | A=%d | B=%d | OpCode=%b | OutALU=%d | Cout=%b",
                 $time, InputA, InputB, OpCode, OutALU, Cout);
    end

endmodule