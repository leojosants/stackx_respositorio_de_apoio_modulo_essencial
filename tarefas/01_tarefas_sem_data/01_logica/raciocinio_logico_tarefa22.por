/*
	Escreva um algoritmo que leia 50 valores e encontre o maior e o menor deles. 
	Mostre o resultado.
*/

programa {
	inclua biblioteca Matematica
	inclua biblioteca Util

	funcao inteiro sorteiaNumeroAleatorio(inteiro comecaEm, inteiro terminaEm) {
		retorne Util.sorteia(0, 100)
	}

	funcao inteiro verificaTamanhoVetor(inteiro vetor[]) {
		retorne Util.numero_elementos(vetor)
	}

	funcao vazio exibeMaiorValor(cadeia mensagem, inteiro maiorValor) {
		escreva(mensagem, maiorValor, "\n")
	}

	funcao vazio exibeMenorValor(cadeia mensagem, inteiro menorValor) {
		escreva(mensagem, menorValor, "\n")
	}

	funcao vazio preencheVetor(inteiro &vetor[], inteiro tamanhoVetor) {
		para (inteiro i = 0; i < tamanhoVetor; i++) {
			vetor[i] = sorteiaNumeroAleatorio(1, 50)
		}
	}
	
	funcao vazio exibeVetor(cadeia mensagem, inteiro vetor[], inteiro tamanhoVetor) {
		escreva("\n")
		escreva(mensagem)
		para (inteiro i = 0; i < tamanhoVetor; i++) {
			escreva("", vetor[i], " ")
		}
	}

	funcao vazio comparaMaiorMenorValor(inteiro vetor[], inteiro tamanhoVetor, inteiro &maiorNumero, inteiro &menorNumero) {
		para (inteiro i = 0; i < tamanhoVetor; i++) {
			se (maiorNumero < vetor[i]) {
				maiorNumero = vetor[i]
			}

			se (menorNumero > vetor[i]) {
				menorNumero = vetor[i]
			}
		}
	}
	
	funcao executaProgramaPrincipal()	{
		inteiro maiorNumero = sorteiaNumeroAleatorio(0, 100)   // será um numero aleatório entre 0 e 100
		inteiro menorNumero = sorteiaNumeroAleatorio(100, 201) // será um numero aleatório entre 100 e 201
		inteiro vetorNumeros[50]
		inteiro tamanhoVetorNumeros = verificaTamanhoVetor(vetorNumeros)

		escreva("\n")
		exibeMaiorValor("Valor aleatório inicial para maiorNumero..: ", maiorNumero)
		exibeMenorValor("Valor aleatório inicial para menorNumero..: ", menorNumero)

		preencheVetor(vetorNumeros, tamanhoVetorNumeros)

		exibeVetor("Valores do vetor vetorNumeros.............: ", vetorNumeros, tamanhoVetorNumeros)

		comparaMaiorMenorValor(vetorNumeros, tamanhoVetorNumeros, maiorNumero, menorNumero)

		escreva("\n\n")
		exibeMaiorValor("Maior valor no vetor vetorNumero..........: ", maiorNumero)
		exibeMenorValor("Menor valor no vetor vetorNumero..........: ", menorNumero)
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
 * @POSICAO-CURSOR = 2214; 
 * @DOBRAMENTO-CODIGO = [9, 13, 25, 31, 39];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */