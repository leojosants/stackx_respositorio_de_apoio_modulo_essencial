/*
	CALCULADORA: escreva um algoritmo para ler 2 valores e uma das seguintes operações a serem executadas
	(codificada da seguinte forma: (1.Adição, 2.Subtração, 3.Divisão, 4.Multiplicação). 
	Calcular e escrever o resultado dessa operação sobre os dois valores lidos.
*/

programa {	
	inclua biblioteca Matematica

	funcao real formataValor(real valor, inteiro casasDecimais) {
		retorne Matematica.arredondar(valor, casasDecimais)
	}

	funcao real solicitaOperando(real operando, cadeia primeiroOuSegundoOperando) {
		escreva("- ", primeiroOuSegundoOperando, " valor..: ")		
		leia(operando)	
		retorne operando 
	}

	funcao vazio exibeMenuOperacoes() {
		escreva("\nMenu de operações matemáticas\n")
		escreva("[ 1 ] - Adição\n")
		escreva("[ 2 ] - Subtração\n")
		escreva("[ 3 ] - Divisão\n")
		escreva("[ 4 ] - Multiplicação\n")
	}
	
	funcao inteiro solicitaOpcaoOperacao(inteiro opcaoOperacao) {
		escreva("\nEscolha uma opção: ")
		leia(opcaoOperacao)
		retorne opcaoOperacao
	}

	funcao real calculaResultadoOperacao(real operando1, real operando2, inteiro opcaoOperacao) {
		real resultado = 0.0
		
		se(opcaoOperacao == 1) {
			resultado = (operando1 + operando2)
		}
		senao se(opcaoOperacao == 2) {
			resultado = (operando1 - operando2)
		}
		senao se(opcaoOperacao == 3) {
			resultado = (operando1 / operando2)
		}
		senao se(opcaoOperacao == 4) {
			resultado = (operando1 * operando2)
		}
		
		retorne resultado
	}

	funcao vazio exibeResultadoOperacao(real operando1, real operando2, real resultadoOperacao) {
		escreva("- Operando 1...: ", operando1, "\n")
		escreva("- Operando 2...: ", operando2, "\n")
		escreva("- Resultado....: ", resultadoOperacao, "\n")
	}
	
	funcao executaProgramaPrincipal() {
		real operando1 = 0.0
		real operando2 = 0.0
		real resultadoOperacao = 0.0
		inteiro opcaoOperacao = 0
		inteiro opcaoOperacaoAdicao = 1
		inteiro opcaoOperacaoSubtracao = 2
		inteiro opcaoOperacaoDivisao = 3
		inteiro opcaoOperacaoMultiplicacao = 4
		
		escreva("\nInforme dois valores e escolha uma operação\n")
		
		operando1 = solicitaOperando(operando1, "Primeiro")
		operando1 = formataValor(operando1, 2)	
		
		operando2 = solicitaOperando(operando2, "Segundo ") 
		operando2 = formataValor(operando2, 2)	

		exibeMenuOperacoes()

		opcaoOperacao = solicitaOpcaoOperacao(opcaoOperacao)

		escolha (opcaoOperacao) {
			caso opcaoOperacaoAdicao:
				escreva("\n[ Adição ]\n")				
				resultadoOperacao = calculaResultadoOperacao(operando1, operando2, opcaoOperacaoAdicao)	
				pare
	
			caso opcaoOperacaoSubtracao:
				escreva("\n[ Subtração ]\n")
				resultadoOperacao = calculaResultadoOperacao(operando1, operando2, opcaoOperacaoSubtracao)	
				pare
	
			caso opcaoOperacaoDivisao:
				escreva("\n[ Divisão ]\n")
				
				se(operando2 == 0) {
					escreva("- Não é possível realizar divisão por ZERO!\n")					
					retorne
				}
				
				resultadoOperacao = calculaResultadoOperacao(operando1, operando2, opcaoOperacaoDivisao)	
				pare

			caso opcaoOperacaoMultiplicacao:
				escreva("\n[ Multiplicação ]\n")
				resultadoOperacao = calculaResultadoOperacao(operando1, operando2, opcaoOperacaoMultiplicacao)	
				pare
	
			caso contrario:
				escreva("\n--> Opção invávida, finalizar programa!\n")
				retorne
		}

		resultadoOperacao = formataValor(resultadoOperacao, 2)
		
		exibeResultadoOperacao(operando1, operando2, resultadoOperacao)
	}

	funcao inicio() {
		executaProgramaPrincipal()
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3313; 
 * @DOBRAMENTO-CODIGO = [9, 13, 19, 27, 33, 52];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */