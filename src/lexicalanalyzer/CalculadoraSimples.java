package lexicalanalyzer;

import java.io.IOException;
import java.io.StringReader;

public class CalculadoraSimples {
	public static void main(String[] args) throws IOException {

		String expr = "x = 3,2 + ( 2 * 12,01)";

		LexicalAnalyzer lexical = new LexicalAnalyzer(new StringReader(expr));
		lexical.yylex();

	}
}
