/*
	Escreva um algoritmo que leia dez valores numéricos inteiros e apresente na tela o somatório dos valores.
*/

programa
 {
	funcao vazio exibeMensagemInicial(inteiro quantidadeValoresReceber) {
		escreva("\nEntre com ", quantidadeValoresReceber, " valores inteiros\n")

	}

	funcao inteiro calculaSomaValoresRecebidos(inteiro quantidadeValoresReceber, inteiro valoresRecebidos[]) {
		inteiro soma = 0
		
		para(inteiro contador = 0; contador < quantidadeValoresReceber; contador++) {
			soma += valoresRecebidos[contador]
		}
		
		retorne soma
	}

	funcao vazio preencheVetor(inteiro quantidadeValoresReceber, inteiro valoresRecebidos[], inteiro somaValoresRecebidos) {
		para(inteiro contador = 0; contador < quantidadeValoresReceber; contador++) {
			inteiro valor = 0
			valoresRecebidos[contador] = solicitaValor(contador, valor) 
		}
	}

	funcao inteiro solicitaValor(inteiro contador, inteiro valor) {
		escreva("- ", (contador + 1),"° valor: ")		
		leia(valor)
		retorne valor
	}

	funcao vazio exibeSomaValoresRecebidos(inteiro quantidadeValoresReceber, inteiro somaValoresRecebidos) {
		escreva("\nExibindo resultado\n")
		escreva("- Soma dos ", quantidadeValoresReceber, " valores recebidos: ", somaValoresRecebidos, "\n")
	}
	
	funcao executarProgramaPrincipal()
 {
		inteiro quantidadeValoresReceber = 10
		inteiro valoresRecebidos[10]
		inteiro somaValoresRecebidos = 0
		
		exibeMensagemInicial(quantidadeValoresReceber) 

		preencheVetor(quantidadeValoresReceber, valoresRecebidos, somaValoresRecebidos)

		somaValoresRecebidos = calculaSomaValoresRecebidos(quantidadeValoresReceber, valoresRecebidos)

		exibeSomaValoresRecebidos(quantidadeValoresReceber, somaValoresRecebidos)	
	}

	// programa principal
	funcao inicio() {
		executarProgramaPrincipal()
	}

}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1729; 
 * @DOBRAMENTO-CODIGO = [10, 20, 28];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
