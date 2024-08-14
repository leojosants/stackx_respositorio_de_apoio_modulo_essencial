/**
 *	Foi feita uma pesquisa sobre a audiência de canal de TV em várias casas de uma cidade, em determinado dia. 
 * 	Para cada casa consultada foi fornecido o número do canal (4, 5, 7, 12) e o número de pessoas que estavam assistindo àquele canal. 
 * 	Se a televisão estivesse desligada, nada era anotado, ou seja, essa casa não entrava na pesquisa.
 * 
 * 	Faça um programa que:
 * 	a) Leia um número indeterminado de dados (número do canal e número de pessoas que estavam assistindo);
 * 	b) Calcule e mostre a porcentagem de audiência de cada canal.
 * 	
 * 	Para encerrar a entrada de dados, digite o número do canal zero.
 **/

programa {	
	funcao inicio() {
		inteiro numeroCanal = 1
		inteiro contadorPesquisa = 1
		inteiro pontuacaoMencionadoCanal_4 = 0
		inteiro quantidadePessoasAssistiuCanal_4 = 0
		cadeia respostaSeTvLigada
		
		faca {
			escreva("\n\nPesquisa número: ", contadorPesquisa)
			escreva("\nA TV está ligada? ")
			leia(respostaSeTvLigada)
			
			se (respostaSeTvLigada == "n") {
				escreva("Não entra na pesquisa, ir para próxima casa.")
			}
			senao {
				escreva("Escolha o canal [4] - [5] - [7]  - [12] - [0 - ENCERRAR PESQUISA]: ")
				leia(numeroCanal)
			
				enquanto(
					(numeroCanal != 0) e
					(numeroCanal != 4) e
					(numeroCanal != 5) e
					(numeroCanal != 7) e
					(numeroCanal != 12) 	
				) {
					escreva("--> Opção inválida, escolha somente o canal [4] - [5] - [7]  - [12] - [0 - ENCERRAR PESQUISA]: ")
					leia(numeroCanal)
				}
				
				
				escolha (numeroCanal) {
					caso 0:
						escreva("\nPESQUISA ENCERRADA\n")
						pare
					
					caso 4:
						pontuacaoMencionadoCanal_4 += 1
						escreva("Contabilizado pontuação para canal 4")
						pare
	
					caso 5:
						escreva("Contabilizado pontuação para canal 5")
						pare
	
					caso 7:
						escreva("Contabilizado pontuação para canal 7")
						pare
	
					caso 12:
						escreva("Contabilizado pontuação para canal 12")
						pare
				
					caso contrario:
						pare
				}
			}

			contadorPesquisa++
		}
		enquanto(numeroCanal != 0)

		escreva("\nDADOS DA PESQUISA\n")
		escreva("Canal 4 \n")
		escreva("Quantidade de vezes que foi mensionado: ", pontuacaoMencionadoCanal_4, "\n")
		escreva("Quantidade de pessoas assistiram o canal: ", quantidadePessoasAssistiuCanal_4, "\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 775; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */