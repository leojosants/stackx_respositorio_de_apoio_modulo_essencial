/*
	Escreva um algoritmo que leia a cidadania de uma pessoa, codificada da seguinte forma:
		1 - Brasileiro,
		2 - Alemão,
		3 - Inglês,
		4 - Italiano,
		5 - Espanhol e
		6 - Francês.
	
	O algoritmo deverá mostrar na tela a língua nativa do cidadão, de acordo com a cidadania selecionada. 
	Caso não seja informado nenhum código válido, informar na tela que a língua nativa da pessoa não pode ser verificada.
*/

programa {
	inclua biblioteca Util

	funcao inteiro verificaTamanhoVetor(cadeia vetor[]) {
		retorne Util.numero_elementos(vetor)		
	}

	funcao vazio exibeMenuCidadania(cadeia vetorOpcoesCidadanias[]) {
		inteiro tamanhoVetor = verificaTamanhoVetor(vetorOpcoesCidadanias)
		
		escreva("\nMenu de cidadania\n")

		para(inteiro indice = 0; indice < tamanhoVetor; indice++) {
			escreva("[ ", (indice + 1), " ] - ", vetorOpcoesCidadanias[indice], "\n")
		}
	}

	funcao inteiro solicitaOpcaoCidadania(inteiro opcaoCidadaniaEscolhida) {
		escreva("\nEscolha uma opção: ")
		leia(opcaoCidadaniaEscolhida)
		retorne opcaoCidadaniaEscolhida
	}
	
	funcao vazio exibeResultadoOpcaoEscolhida(inteiro opcaoCidadaniaEscolhida, inteiro quantidadeOpcoesCidadania, cadeia vetorOpcoesCidadanias[], cadeia vetorLinguasNativas[]) {
		opcaoCidadaniaEscolhida = (opcaoCidadaniaEscolhida - 1)
		
		para(inteiro indice = 0; indice < quantidadeOpcoesCidadania; indice++) {
			se(indice == opcaoCidadaniaEscolhida) {
				escreva("\n- Cidadania......: ", vetorOpcoesCidadanias[opcaoCidadaniaEscolhida], "\n- Lingua nativa..: ", vetorLinguasNativas[opcaoCidadaniaEscolhida], "\n")
				pare
			}
		}
	}
	
	funcao executaProgramaPrincipal() {
		inteiro opcaoCidadaniaEscolhida = 0
		inteiro quantidadeOpcoesCidadania = 6
		cadeia vetorOpcoesCidadanias[6] = {"Brasileiro","Alemão", "Inglês", "Italiano", "Espanhol", "Francês"}
		cadeia vetorLinguasNativas[6] = {"Português","Alemão", "Inglês", "Italiano", "Espanhol", "Francês"}	
		
		exibeMenuCidadania(vetorOpcoesCidadanias)
		
		opcaoCidadaniaEscolhida = solicitaOpcaoCidadania(opcaoCidadaniaEscolhida)

		escolha(opcaoCidadaniaEscolhida) {
			caso 1:
				exibeResultadoOpcaoEscolhida(opcaoCidadaniaEscolhida, quantidadeOpcoesCidadania, vetorOpcoesCidadanias, vetorLinguasNativas)
				pare

			caso 2: 
				exibeResultadoOpcaoEscolhida(opcaoCidadaniaEscolhida, quantidadeOpcoesCidadania, vetorOpcoesCidadanias, vetorLinguasNativas)
				pare

			caso 3: 
				exibeResultadoOpcaoEscolhida(opcaoCidadaniaEscolhida, quantidadeOpcoesCidadania, vetorOpcoesCidadanias, vetorLinguasNativas)
				pare

			caso 4: 
				exibeResultadoOpcaoEscolhida(opcaoCidadaniaEscolhida, quantidadeOpcoesCidadania, vetorOpcoesCidadanias, vetorLinguasNativas)
				pare

			caso 5: 
				exibeResultadoOpcaoEscolhida(opcaoCidadaniaEscolhida, quantidadeOpcoesCidadania, vetorOpcoesCidadanias, vetorLinguasNativas)
				pare

			caso 6:
				exibeResultadoOpcaoEscolhida(opcaoCidadaniaEscolhida, quantidadeOpcoesCidadania, vetorOpcoesCidadanias, vetorLinguasNativas)
				pare
				
			caso contrario: 
				escreva("\n- Cidadania e Lingua nativa inexistente para código..: ", opcaoCidadaniaEscolhida, "\n")
				pare
		}
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
 * @POSICAO-CURSOR = 618; 
 * @DOBRAMENTO-CODIGO = [16, 20, 30, 36];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */