Este projeto é um analisador léxico, pedido na disciplina de Compiladores do IFB,
pelo aluno: Felipe Gabriel Guerra Neves
Para a construção do mesmo foi utilizado o JFlex;
Para usar o analisador é simples, basta abrir o projeto no eclipse, entrar na
classe "CalculadoraSimples" e mudar a váriavel "expr", além do pedido no trabalho
(reconhecimento de: números naturais; números reais; operadores de: soma, subtração,
multiplicação, divisão; Abre e fecha parênteses) tomei a liberdade de adicionar "=",
operador de atribuição, o reconhecimento de espaços em branco, e indentificadores
sendo assim é possível fazer a análise de: x = 3,2 + ( 2 * 12,01) tendo resultado:
x - Identificador
  - Espaço em branco
= - Operador de atribuição
  - Espaço em branco
3,2 - Número Real
  - Espaço em branco
+ - Operador de soma
  - Espaço em branco
( - Abre parênteses
  - Espaço em branco
2 - Número Natural
  - Espaço em branco
* - Operador de multiplicação
  - Espaço em branco
12,01 - Número Real
) - Fecha parênteses
