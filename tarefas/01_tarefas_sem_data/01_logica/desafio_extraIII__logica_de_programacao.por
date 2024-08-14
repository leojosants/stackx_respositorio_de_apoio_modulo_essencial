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
		inteiro quantidadeCanais = 4
		
		inteiro pontuacaoMencionadoCanal_4 = 0
		inteiro pontuacaoMencionadoCanal_5 = 0
		inteiro pontuacaoMencionadoCanal_7 = 0
		inteiro pontuacaoMencionadoCanal_12 = 0
		
		inteiro quantidadePessoasAssistindoCanal_4 = 0
		inteiro quantidadePessoasAssistindoCanal_5 = 0
		inteiro quantidadePessoasAssistindoCanal_7 = 0
		inteiro quantidadePessoasAssistindoCanal_12 = 0
		
		inteiro respostaQuantidadePessoasAssistindoCanal
		
		real mediaAudienciaCanal_4 = 0.0
		real mediaAudienciaCanal_5 = 0.0
		real mediaAudienciaCanal_7 = 0.0
		real mediaAudienciaCanal_12 = 0.0
		
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
						escreva("Quantidade de pessoas assistindo o canal ", numeroCanal, ": ")
						leia(respostaQuantidadePessoasAssistindoCanal)
						pontuacaoMencionadoCanal_4 += 1
						quantidadePessoasAssistindoCanal_4 += respostaQuantidadePessoasAssistindoCanal
						escreva("Contabilizado pontuação para o canal ", numeroCanal)
						pare
	
					caso 5:
						escreva("Quantidade de pessoas assistindo o canal ", numeroCanal, ": ")
						leia(respostaQuantidadePessoasAssistindoCanal)
						pontuacaoMencionadoCanal_5 += 1
						quantidadePessoasAssistindoCanal_5 += respostaQuantidadePessoasAssistindoCanal
						escreva("Contabilizado pontuação para o canal ", numeroCanal)
						pare
	
					caso 7:
						escreva("Quantidade de pessoas assistindo o canal ", numeroCanal, ": ")
						leia(respostaQuantidadePessoasAssistindoCanal)
						pontuacaoMencionadoCanal_7 += 1
						quantidadePessoasAssistindoCanal_7 += respostaQuantidadePessoasAssistindoCanal
						escreva("Contabilizado pontuação para o canal ", numeroCanal)
						pare
	
					caso 12:
						escreva("Quantidade de pessoas assistindo o canal ", numeroCanal, ": ")
						leia(respostaQuantidadePessoasAssistindoCanal)
						pontuacaoMencionadoCanal_12 += 1
						quantidadePessoasAssistindoCanal_12 += respostaQuantidadePessoasAssistindoCanal
						escreva("Contabilizado pontuação para o canal ", numeroCanal)
						pare
				
					caso contrario:
						pare
				}
			}

			contadorPesquisa++
		}
		enquanto(numeroCanal != 0)


		escreva("\n\nEstatística da Pesquisa\n")
		
		escreva("Canal 4 \n")
		se (pontuacaoMencionadoCanal_4 == 0) {
			mediaAudienciaCanal_4 = 0.0
		} 
		senao {
			mediaAudienciaCanal_4 = quantidadePessoasAssistindoCanal_4 / quantidadeCanais
		}
		escreva("Quantidade de vezes que foi mensionado: ", pontuacaoMencionadoCanal_4, "\n")
		escreva("Quantidade de pessoas assistindo o canal: ", quantidadePessoasAssistindoCanal_4, "\n")
		escreva("Porcentagem de audiência: ", mediaAudienciaCanal_4, "\n\n")


		escreva("Canal 5 \n")
		se (pontuacaoMencionadoCanal_5 == 0) {
			mediaAudienciaCanal_5 = 0.0
		} 
		senao {
			mediaAudienciaCanal_5 = quantidadePessoasAssistindoCanal_5 / quantidadeCanais
		}
		escreva("Quantidade de vezes que foi mensionado: ", pontuacaoMencionadoCanal_5, "\n")
		escreva("Quantidade de pessoas assistindo o canal: ", quantidadePessoasAssistindoCanal_5, "\n")
		escreva("Porcentagem de audiência: ", mediaAudienciaCanal_5, "\n\n")


		escreva("Canal 7 \n")
		se (pontuacaoMencionadoCanal_7 == 0) {
			mediaAudienciaCanal_7 = 0.0
		} 
		senao {
			mediaAudienciaCanal_7 = quantidadePessoasAssistindoCanal_7 / quantidadeCanais
		}
		escreva("Quantidade de vezes que foi mensionado: ", pontuacaoMencionadoCanal_7, "\n")
		escreva("Quantidade de pessoas assistindo o canal: ", quantidadePessoasAssistindoCanal_7, "\n")
		escreva("Porcentagem de audiência: ", mediaAudienciaCanal_7, "\n\n")

		escreva("Canal 12 \n")
		se (pontuacaoMencionadoCanal_12 == 0) {
			mediaAudienciaCanal_12 = 0.0
		} 
		senao {
			mediaAudienciaCanal_12 = quantidadePessoasAssistindoCanal_12 / quantidadeCanais
		}
		escreva("Quantidade de vezes que foi mensionado: ", pontuacaoMencionadoCanal_12, "\n")
		escreva("Quantidade de pessoas assistindo o canal: ", quantidadePessoasAssistindoCanal_12, "\n")
		escreva("Porcentagem de audiência: ", mediaAudienciaCanal_12, "\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 5210; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */