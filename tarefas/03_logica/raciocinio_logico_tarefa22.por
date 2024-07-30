/*
	Escreva um algoritmo que leia 50 valores e encontre o maior e o menor deles. 
	Mostre o resultado.
*/

programa {
	inclua biblioteca Matematica
	inclua biblioteca Util
	
	funcao inicio()	{
		inteiro maiorNumero = Util.sorteia(0, 100)   // será um numero aleatório entre 0 e 100
		inteiro menorNumero = Util.sorteia(100, 201) // será um numero aleatório entre 100 e 201
		inteiro vetorNumeros[50]
		inteiro tamanhoVetorNumeros = Util.numero_elementos(vetorNumeros)

		escreva("\n")
		escreva("Valor aleatório inicial para maiorNumero..: ", maiorNumero, "\n")
		escreva("Valor aleatório inicial para menorNumero..: ", menorNumero, "\n")

		// preenche o vetor com 50 valores
		para (inteiro i = 0; i < tamanhoVetorNumeros; i++) {
			vetorNumeros[i] = Util.sorteia(1, 50)
		}

		escreva("\nValores do vetorNumeros.........: ")
		
		para (inteiro i = 0; i < tamanhoVetorNumeros; i++) {
			escreva("", vetorNumeros[i], " ")
		}

		para (inteiro i = 0; i < tamanhoVetorNumeros; i++) {
			se (maiorNumero < vetorNumeros[i]) {
				maiorNumero = vetorNumeros[i]
			}

			se (menorNumero > vetorNumeros[i]) {
				menorNumero = vetorNumeros[i]
			}
		}

		escreva("\n\n")
		escreva("Maior valor no vetor vetorNumero..: ", maiorNumero, "\n")
		escreva("Menor valor no vetor vetorNumero..:", menorNumero, "\n")
	}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 175; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */