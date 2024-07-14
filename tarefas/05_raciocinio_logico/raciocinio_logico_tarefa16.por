/*
	Escreva um algoritmo que leia dez valores numéricos inteiros e apresente na tela o somatório dos valores.
*/

programa {	
	funcao inicio() {
		inteiro quantidadeValoresReceber = 10
		inteiro valoresRecebidos[10]
		inteiro somaValoresRecebidos = 0
		
		escreva("\nEntre com ", quantidadeValoresReceber, " valores inteiros\n")

		para(inteiro contador = 0; contador < quantidadeValoresReceber; contador++) {
			escreva("- ", (contador + 1),"° valor: ")		
			leia(valoresRecebidos[contador])
			somaValoresRecebidos += valoresRecebidos[contador]
		}

		escreva("\nExibindo resultado\n")
		escreva("- Soma dos ", quantidadeValoresReceber, " valores recebidos: ", somaValoresRecebidos, "\n")	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 704; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */