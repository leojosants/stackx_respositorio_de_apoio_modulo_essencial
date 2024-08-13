/*
	Crie um algoritmo que leia um determinado número e apresente na tela a tabuada da divisão deste número. 
	
	Por exemplo, digamos que o número informado foi 5, o programa deverá apresentar na tela:

	5 / 5 = 1
	
	10 / 5 = 2
	
	15 / 5 = 3
	
	50 / 5 = 10
*/

programa {	
	funcao inteiro solicitaValor(inteiro dividendo) {
		escreva("\nInforme um dividendo inteiro e tenha o resultado de sua tabuada: ")
		leia(dividendo)
		retorne dividendo
	}

	funcao inteiro calculaTabuada(inteiro divisor, inteiro dividendo) {
		retorne (divisor / dividendo)
	}

	funcao exibeResultadoTabuada(inteiro dividendo, inteiro limiteParaDivisao) {
		inteiro multiplicador
		inteiro resultado

		escreva("\nTabuada do número ", dividendo, "\n")

		para(inteiro divisor = 5; divisor <= limiteParaDivisao; divisor += 5) {
			escreva(divisor, " / ", dividendo, " = ", (divisor / dividendo), "\n")
		}
	}
	
	funcao executaProgramaPrincipal() {
		inteiro dividendo = 0
		inteiro limiteParaDivisao = 50

		dividendo = solicitaValor(dividendo)

		exibeResultadoTabuada(dividendo, limiteParaDivisao) 			
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
 * @POSICAO-CURSOR = 1053; 
 * @DOBRAMENTO-CODIGO = [15, 21];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */