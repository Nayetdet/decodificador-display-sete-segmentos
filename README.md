# Decodificador de Display de Sete Segmentos
## Código Base
O código base realiza o mapeamento de cada dígito BCD de 4 bits para o padrão correspondente de 7 segmentos, acionando apenas os segmentos necessários para representar o dígito.

## Tabela de Conversão
A tabela abaixo mostra o padrão de segmentos ativados para cada dígito BCD:

> | **Dígito BCD** | **Segmentos Ativados** | **Descrição**                                           |
> |:--------------:|:----------------------:|---------------------------------------------------------|
> | 0              | 1111110                | Apenas o segmento G é desativado                        |
> | 1              | 0110000                | Apenas os segmentos B e C são ativados                  |
> | 2              | 1101101                | Apenas os segmentos C e F são desativados               |
> | 3              | 1111001                | Apenas os segmentos E e F são desativados               |
> | 4              | 0110011                | Apenas os segmentos A, D e E são desativados            |
> | 5              | 1011011                | Apenas os segmentos B e E são desativados               |
> | 6              | 1011111                | Apenas o segmento B é desativado                        |
> | 7              | 1110000                | Apenas os segmentos A, B e C são ativados               |
> | 8              | 1111111                | Todos os segmentos são ativados                         |
> | 9              | 1111011                | Apenas o segmento E é desativado                        |
>
> Para dígitos BCD inválidos, o padrão de segmentos é definido como todos estando desativados.

### Esquema do Circuito
> ![Esquema do circuito](https://github.com/Nayetdet/decodificador-display-sete-segmentos/blob/main/imagens/circuito-gerado-digitaljs.png)
> <br /> Esquema do circuito gerado quando o DigitalJS é executado.

> ![Esquema do circuito](https://github.com/Nayetdet/decodificador-display-sete-segmentos/blob/main/imagens/circuito-gerado-vscode.png)
> <br /> Esquema do circuito gerado quando o VSCode é executado com a extensão do DigitalJS.

## Bancada de Testes
A bancada de testes avalia todos os dígitos possíveis em BCD e exibe os sinais gerados de forma clara. Além disso, gera a forma de onda correspondente do circuito.

## Output da Bancada de Testes

> Dígito: ‎ ‎ 0 | Segmentos: A=1 B=1 C=1 D=1 E=1 F=1 G=0 <br />
> Dígito: ‎ ‎ 1 | Segmentos: A=0 B=1 C=1 D=0 E=0 F=0 G=0 <br />
> Dígito: ‎ ‎ 2 | Segmentos: A=1 B=1 C=0 D=1 E=1 F=0 G=1 <br />
> Dígito: ‎ ‎ 3 | Segmentos: A=1 B=1 C=1 D=1 E=0 F=0 G=1 <br />
> Dígito: ‎ ‎ 4 | Segmentos: A=0 B=1 C=1 D=0 E=0 F=1 G=1 <br />
> Dígito: ‎ ‎ 5 | Segmentos: A=1 B=0 C=1 D=1 E=0 F=1 G=1 <br />
> Dígito: ‎ ‎ 6 | Segmentos: A=1 B=0 C=1 D=1 E=1 F=1 G=1 <br />
> Dígito: ‎ ‎ 7 | Segmentos: A=1 B=1 C=1 D=0 E=0 F=0 G=0 <br />
> Dígito: ‎ ‎ 8 | Segmentos: A=1 B=1 C=1 D=1 E=1 F=1 G=1 <br />
> Dígito: ‎ ‎ 9 | Segmentos: A=1 B=1 C=1 D=1 E=0 F=1 G=1 <br />
> Dígito: 10 | Segmentos: A=0 B=0 C=0 D=0 E=0 F=0 G=0 <br />
> Dígito: 11 | Segmentos: A=0 B=0 C=0 D=0 E=0 F=0 G=0 <br />
> Dígito: 12 | Segmentos: A=0 B=0 C=0 D=0 E=0 F=0 G=0 <br />
> Dígito: 13 | Segmentos: A=0 B=0 C=0 D=0 E=0 F=0 G=0 <br />
> Dígito: 14 | Segmentos: A=0 B=0 C=0 D=0 E=0 F=0 G=0 <br /> 
> Dígito: 15 | Segmentos: A=0 B=0 C=0 D=0 E=0 F=0 G=0 <br />
> <br />
> Repare que o resultado auxilia bastante na verificação do circuito, uma vez que explicita ainda mais quais segmentos estão acionados para cada dígito BCD.

### Forma de Onda do Circuito
> ![Forma de Onda do Circuito](https://github.com/Nayetdet/decodificador-display-sete-segmentos/blob/main/imagens/forma-de-onda.png)
> * Forma de Onda do Circuito gerado quando a bancada de testes é executada no EDA Playground. <br />
> * Para visualizar e simular o circuito, acesse o EDA Playground [aqui](https://www.edaplayground.com/x/ZQdA).
