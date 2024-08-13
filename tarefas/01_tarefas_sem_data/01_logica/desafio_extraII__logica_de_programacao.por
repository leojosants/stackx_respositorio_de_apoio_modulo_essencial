/**
 *	Faça um programa que receba 10 números aleatórios, 
 *	salve em um vetor, e imprima esse vetor de trás para frente.
**/

programa {
	inclua biblioteca Util
	
	funcao inicio() {
		inteiro vetorNumerosAleatorios[10]
		inteiro tamanhoVetor = Util.numero_elementos(vetorNumerosAleatorios)

		para(inteiro contador = 0; contador < tamanhoVetor; contador++ ) {
			vetorNumerosAleatorios[contador] = Util.sorteia(1, 100)	
		}

		escreva("\nExibindo os elementos do vetor em ordem normal\n")
		para(inteiro contador = 0; contador < tamanhoVetor; contador++) {
			escreva(" ", vetorNumerosAleatorios[contador])	
		}

		escreva("\n\nExibindo os elementos do vetor em ordem invertida\n")
		para(inteiro contador = (tamanhoVetor - 1); contador >= 0; contador-- ) {
			escreva(" ", vetorNumerosAleatorios[contador])	
		}

		escreva("\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 683; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */