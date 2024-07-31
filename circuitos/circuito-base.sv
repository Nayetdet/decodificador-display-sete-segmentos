module display_de_sete_segmentos(
  input logic [3:0] digito_bcd,
  output logic [6:0] segmentos
);
  always_comb begin
    case (digito_bcd)      // ABCDEFG
      4'b0000: segmentos = 7'b1111110; // 0
      4'b0001: segmentos = 7'b0110000; // 1
      4'b0010: segmentos = 7'b1101101; // 2
      4'b0011: segmentos = 7'b1111001; // 3
      4'b0100: segmentos = 7'b0110011; // 4
      4'b0101: segmentos = 7'b1011011; // 5
      4'b0110: segmentos = 7'b1011111; // 6
      4'b0111: segmentos = 7'b1110000; // 7
      4'b1000: segmentos = 7'b1111111; // 8
      4'b1001: segmentos = 7'b1111011; // 9
      default: segmentos = 7'b0000000;
    endcase
  end
endmodule
