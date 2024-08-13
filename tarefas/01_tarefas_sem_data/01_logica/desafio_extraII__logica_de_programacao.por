/**
 *	Faça um programa que receba 10 números aleatórios, 
 *	salve em um vetor, e imprima esse vetor de trás para frente.
**/

programa {
	inclua biblioteca Util
	inclua biblioteca Texto

	funcao inteiro verificaTamanhoVetor(inteiro vetor[]) {
		retorne Util.numero_elementos(vetor)
	}

	funcao inteiro sorteiNumeros(inteiro inicioNumero, inteiro fimNumero) {
		retorne Util.sorteia(inicioNumero, fimNumero)
	}

	funcao vazio preencheVetor(inteiro &vetor[], inteiro tamanhoVetor) {
		para(inteiro contador = 0; contador < tamanhoVetor; contador++ ) {
			vetor[contador] = sorteiNumeros(1, 100)	
		}
	}

	funcao cadeia transformaTextoEmCaixaBaixa(cadeia texto) {
		retorne Texto.caixa_baixa(texto)
	}
	
	funcao vazio exibeElementosVetor(inteiro vetor[], inteiro tamanhoVetor, cadeia ordem) {
		cadeia ordemCaixaBaixa = transformaTextoEmCaixaBaixa(ordem)
		
		se(ordemCaixaBaixa == "normal") {
			escreva("\nExibindo os elementos do vetor em ordem ", ordem, ".\n")
			para(inteiro contador = 0; contador < tamanhoVetor; contador++) {
				escreva(" ", vetor[contador])	
			}			
		}
		senao se(ordemCaixaBaixa == "invertida") {
			escreva("\n\nExibindo os elementos do vetor em ordem ", ordem, ".\n")
			para(inteiro contador = (tamanhoVetor - 1); contador >= 0; contador-- ) {
				escreva(" ", vetor[contador])	
			}
		}
		senao {
			escreva("\nÓrdem para exibição inválida!")
		}

	}
	
	funcao executaProgramaPrincipal() {
		inteiro vetorNumerosAleatorios[10]
		inteiro tamanhoVetor = verificaTamanhoVetor(vetorNumerosAleatorios)

		preencheVetor(vetorNumerosAleatorios, tamanhoVetor)
		
		exibeElementosVetor(vetorNumerosAleatorios, tamanhoVetor, "normal")
		
		exibeElementosVetor(vetorNumerosAleatorios, tamanhoVetor, "invertida")

		escreva("\n")
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
 * @POSICAO-CURSOR = 595; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */