module tb_display_de_sete_segmentos;
  logic [3:0] digito_bcd;
  logic [6:0] segmentos;

  display_de_sete_segmentos dut(
    .digito_bcd(digito_bcd),
    .segmentos(segmentos)
  );

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, digito_bcd, segmentos);
    /*
    Os argumentos presentes no $dumpvars fazem com que
    apenas as variáveis "digito_bcd" e "segmentos"
    apareçam na forma de onda da simulação, removendo
    as demais variáveis indesejadas.
    */

    for (int i = 0; i < 16; i++) begin
      digito_bcd = i;
      #200;

      $write("Dígito: %d | Segmentos: ", digito_bcd);
      for (int j = 6; j >= 0; j--) begin
        $write("%c=%b ", "A" + (6 - j), segmentos[j]);
        /*
        Somar "A" ao número faz com que ele seja reconhecido
        como um caractere no código ASCII.
        */
      end
      $display();
    end

    $finish;
  end
endmodule
