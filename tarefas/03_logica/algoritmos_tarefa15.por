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
	funcao inicio() {
		inteiro opcaoCidadania
		inteiro quantidadeOpcoesCidadania = 6
		cadeia vetorOpcoesCidadanias[6] = {"Brasileiro","Alemão", "Inglês", "Italiano", "Espanhol", "Francês"}
		cadeia vetorLinguasNativas[6] = {"Português","Alemão", "Inglês", "Italiano", "Espanhol", "Francês"}
		
		escreva("\nMenu de cidadania\n")

		para(inteiro indice = 0; indice < quantidadeOpcoesCidadania; indice++) {
			escreva("[ ", (indice + 1), " ] - ", vetorOpcoesCidadanias[indice], "\n")
		}
		
		escreva("\nEscolha uma opção: ")
		leia(opcaoCidadania)

		escolha(opcaoCidadania) {
			caso 1:
				para(inteiro indice = 0; indice < quantidadeOpcoesCidadania; indice++) {
					se(indice == 0) {
						escreva("\n- Cidadania......: ", vetorOpcoesCidadanias[0], "\n- Lingua nativa..: ", vetorLinguasNativas[0], "\n")
						pare
					}
				}
				pare

			caso 2: 
				para(inteiro indice = 0; indice < quantidadeOpcoesCidadania; indice++) {
					se(indice == 1) {
						escreva("\n- Cidadania......: ", vetorOpcoesCidadanias[1], "\n- Lingua nativa..: ", vetorLinguasNativas[1], "\n")
						pare
					}
				}
				pare

			caso 3: 
				para(inteiro indice = 0; indice < quantidadeOpcoesCidadania; indice++) {
					se(indice == 2) {
						escreva("\n- Cidadania......: ", vetorOpcoesCidadanias[2], "\n- Lingua nativa..: ", vetorLinguasNativas[2], "\n")
						pare
					}
				}
				pare

			caso 4: 
				para(inteiro indice = 0; indice < quantidadeOpcoesCidadania; indice++) {
					se(indice == 3) {
						escreva("\n- Cidadania......: ", vetorOpcoesCidadanias[3], "\n- Lingua nativa..: ", vetorLinguasNativas[3], "\n")
						pare
					}
				}
				pare

			caso 5: 
				para(inteiro indice = 0; indice < quantidadeOpcoesCidadania; indice++) {
					se(indice == 4) {
						escreva("\n- Cidadania......: ", vetorOpcoesCidadanias[4], "\n- Lingua nativa..: ", vetorLinguasNativas[4], "\n")
						pare
					}
				}
				pare

			caso 6:
				para(inteiro indice = 0; indice < quantidadeOpcoesCidadania; indice++) {
					se(indice == 5) {
						escreva("\n- Cidadania......: ", vetorOpcoesCidadanias[5], "\n- Lingua nativa..: ", vetorLinguasNativas[5], "\n")
						pare
					}
				}
				pare
				
			caso contrario: 
				escreva("\n- Cidadania e Lingua nativa inexistente para código..: ", opcaoCidadania, "\n")
				pare
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 848; 
 * @DOBRAMENTO-CODIGO = [31, 40, 49, 58];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */