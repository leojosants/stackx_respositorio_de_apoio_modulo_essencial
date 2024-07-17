/*
	CALCULADORA: escreva um algoritmo para ler 2 valores e uma das seguintes operações a serem executadas
	(codificada da seguinte forma: (1.Adição, 2.Subtração, 3.Divisão, 4.Multiplicação). 
	Calcular e escrever o resultado dessa operação sobre os dois valores lidos.
*/

programa {	
	inclua biblioteca Matematica
	
	funcao inicio() {
		real operando1
		real operando2
		real resultadoOperacao = 0.0
		inteiro opcaoOperacao
		
		escreva("\nInforme dois valores e escolha uma operação\n")
		
		escreva("- Primeiro valor: ")
		leia(operando1)

		escreva("- Segundo  valor: ")
		leia(operando2)

		escreva("\nMenu de operações matemáticas\n")
		escreva("[ 1 ] - Adição\n")
		escreva("[ 2 ] - Subtração\n")
		escreva("[ 3 ] - Divisão\n")
		escreva("[ 4 ] - Multiplicação\n")

		escreva("\nEscolha uma opção: ")
		leia(opcaoOperacao)

		escolha (opcaoOperacao) {
			caso 1:
				escreva ("\n[ Adição ]\n")				
				resultadoOperacao = Matematica.arredondar((operando1 + operando2), 2)		
				pare
	
			caso 2:
				escreva ("\n[ Subtração ]\n")
				resultadoOperacao = Matematica.arredondar((operando1 - operando2), 2)
				pare
	
			caso 3:
				escreva ("\n[ Divisão ]\n")
				
				se(operando2 == 0) {
					escreva("- Não é possível realizar divisão por ZERO!\n")					
					retorne
				}
				
				resultadoOperacao = Matematica.arredondar((operando1 / operando2), 2)
				pare

			caso 4:
				escreva ("\n[ Multiplicação ]\n")
				resultadoOperacao = Matematica.arredondar((operando1 * operando2), 2)
				pare
	
			caso contrario:
				escreva ("\n--> Opção invávida, finalizar programa!\n")
				retorne
		}

		escreva("- Operando 1...: ", operando1, "\n")
		escreva("- Operando 2...: ", operando2, "\n")
		escreva("- Resultado....: ", resultadoOperacao, "\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 546; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */