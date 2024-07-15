/*
	Escreva um algoritmo que leia um valor para a variável A e um valor para a variável B. 
	Logo após, o algoritmo deverá fazer com que a variável A guarde o valor da variável B e a variável B guarde o valor da variável A. 
	Apresentar os valores das variáveis A e B antes e depois da troca.
*/

programa {	
	funcao inicio() {
		inteiro variavel_a
		inteiro variavel_b
		inteiro trocaVariaveis
		
		escreva("\nInforme o valor para 'A': ")
		leia(variavel_a)

		escreva("Informe o valor para 'B': ")
		leia(variavel_b)

		escreva("\nValores antes da troca\n")
		escreva("- A: ", variavel_a, "\n")
		escreva("- B: ", variavel_b, "\n")

		trocaVariaveis = variavel_a
		variavel_a = variavel_b
		variavel_b = trocaVariaveis

		escreva("\nValores depois da troca\n")
		escreva("- A: ", variavel_a, "\n")
		escreva("- B: ", variavel_b, "\n")
		
	}
}

/*
	refatoração

	programa {	
		funcao inteiro solicitaValor(caracter letra ) {
			inteiro valor
			
			escreva("Informe o valor para '", letra, "': ")
			leia(valor)
			
			retorne valor
		}

		funcao vazio exibeValores(cadeia instrucao, inteiro variavel_a, inteiro variavel_b) {
			escreva("\nValores ", instrucao, " da troca.\n")
			escreva("- A: ", variavel_a, "\n")
			escreva("- B: ", variavel_b, "\n")
		}
	
		funcao vazio executaProgramaPrincipal() {
			inteiro variavel_a
			inteiro variavel_b
			inteiro trocaVariaveis
	
			escreva("\n")
			
			variavel_a = solicitaValor('A')
			variavel_b = solicitaValor('B')
	
			exibeValores("antes", variavel_a, variavel_b)
	
			trocaVariaveis = variavel_a
			variavel_a = variavel_b
			variavel_b = trocaVariaveis
	
			exibeValores("depois", variavel_a, variavel_b)
		}

		funcao inicio() {
			executaProgramaPrincipal()
		}
	}
*/
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1722; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */