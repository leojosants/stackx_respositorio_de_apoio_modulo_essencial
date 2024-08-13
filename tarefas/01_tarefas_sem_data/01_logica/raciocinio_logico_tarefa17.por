/*
	Elabore um algoritmo que leia um determinado número e apresente na tela a tabuada de multiplicação deste número. 
	Por exemplo, digamos que o número informado foi 2, o programa deverá apresentar na tela:
		
		1 x 2 = 2
		
		2 x 2 = 4
		
		3 x 2 = 6
		
		10 x 2 = 20
*/

programa {	
	funcao inteiro solicitaValor(inteiro multiplicando) {
		escreva("\nInforme um multiplicador inteiro e tenha o resultado de sua tabuada: ")
		leia(multiplicando)
		retorne multiplicando
	}

	funcao inteiro calculaTabuada(inteiro multiplicador, inteiro multiplicando) {
		retorne (multiplicador * multiplicando)
	}

	funcao exibeResultadoTabuada(inteiro multiplicando, inteiro limiteParaMultiplicacao) {
		inteiro multiplicador
		inteiro resultado
		
		escreva("\nTabuada do número ", multiplicando, "\n")

		para(multiplicador = 1; multiplicador <= limiteParaMultiplicacao; multiplicador++) {
			resultado = calculaTabuada(multiplicador, multiplicando)
			escreva(multiplicador, " * ", multiplicando, " = ", resultado, "\n")
		}
	}
	
	funcao executaProgramaPrincipal() {
		inteiro multiplicando = 0
		inteiro limiteParaMultiplicacao = 10
		
		multiplicando = solicitaValor(multiplicando) 

		exibeResultadoTabuada(multiplicando, limiteParaMultiplicacao) 
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
 * @POSICAO-CURSOR = 378; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */