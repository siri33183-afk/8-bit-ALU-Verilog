module alu (
    input  [7:0]  InputA,
    input  [7:0]  InputB,
    input  [2:0]  OpCode,
    output reg [15:0] OutALU,
    output reg        Cout
);

    reg [8:0] add_result;

    always @(*) begin
        // Default values
        OutALU = 16'b0;
        Cout   = 1'b0;
        add_result = 9'b0;

        case (OpCode)

            3'b000: begin
                // Addition
                add_result = {1'b0, InputA} + {1'b0, InputB};
                OutALU = {8'b0, add_result[7:0]};
                Cout = add_result[8];
            end

            3'b001: begin
                // Subtraction
                OutALU = {8'b0, (InputA - InputB)};
                Cout = 1'b0;
            end

            3'b010: begin
                // Multiplication
                OutALU = InputA * InputB;
                Cout = 1'b0;
            end

            3'b011: begin
                // Left Shift
                OutALU = {8'b0, (InputA << 1)};
                Cout = 1'b0;
            end

            3'b100: begin
                // Right Shift
                OutALU = {8'b0, (InputA >> 1)};
                Cout = 1'b0;
            end

            3'b101: begin
                // Logical AND
                OutALU = {8'b0, (InputA & InputB)};
                Cout = 1'b0;
            end

            3'b110: begin
                // Logical OR
                OutALU = {8'b0, (InputA | InputB)};
                Cout = 1'b0;
            end

            3'b111: begin
                // Logical XOR
                OutALU = {8'b0, (InputA ^ InputB)};
                Cout = 1'b0;
            end

            default: begin
                OutALU = 16'b0;
                Cout = 1'b0;
            end

        endcase
    end

endmodule