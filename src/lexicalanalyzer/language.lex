package lexicalanalyzer;

%%

%{

private void imprimir(String descricao, String lexema) {
    System.out.println(lexema + " - " + descricao);
}

%}


%class LexicalAnalyzer
%type void


BRANCO = [\n| |\t|\r]
ID = [_|a-z|A-Z][a-z|A-Z|0-9|_]*
OPSOMA = "+"
OPSUB = "-"
OPMUL = "*"
OPDIV = "/"
OPIGL = "="
AP = "("
FP = ")"
NATURAL = 0|[1-9][0-9]*
REAL = [-+]?[0-9]*\,?[0-9]+

%%

{BRANCO}                     { imprimir("Espaço em branco", yytext()); }
{ID}                         { imprimir("Identificador", yytext()); }
{OPSOMA}                         { imprimir("Operador de soma", yytext()); }
{OPSUB}                         { imprimir("Operador de subtração", yytext()); }
{OPMUL}                         { imprimir("Operador de multiplicação", yytext()); }
{OPDIV}                         { imprimir("Operador de divisão", yytext()); }
{OPIGL}                         { imprimir("Operador de atribuição", yytext()); }
{AP}                         { imprimir("Abre parênteses", yytext()); }
{FP}                         { imprimir("Fecha parênteses", yytext()); }
{NATURAL}                     { imprimir("Número Natural", yytext()); }
{REAL}					 {imprimir("Número Real" , yytext()); }

. { throw new RuntimeException("Caractere inválido " + yytext()); }