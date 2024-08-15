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
	inclua biblioteca Texto
	inclua biblioteca Tipos

	funcao cadeia extraiSubTexto(cadeia texto, inteiro inicioFatiamento, inteiro fimFatiamento) {
		retorne Texto.extrair_subtexto(texto, inicioFatiamento, fimFatiamento)
	}

	funcao cadeia colocaTextoEmMinuscula(cadeia texto) {
		retorne Texto.caixa_baixa(texto)
	}
	
	funcao vazio solicitaRespostaSeTvLigada(cadeia &respostaSeTvLigada, inteiro contadorPesquisa) {
		escreva("\n\nPesquisa número: ", contadorPesquisa)
		escreva("\nA TV está ligada [s/n]? ")
		leia(respostaSeTvLigada)
		respostaSeTvLigada = extraiSubTexto(respostaSeTvLigada, 0, 1)
		respostaSeTvLigada = colocaTextoEmMinuscula(respostaSeTvLigada)

		enquanto( 
			(respostaSeTvLigada != "s") e (respostaSeTvLigada != "n") 
		) {
			exibeMensagem("--> Opção inválida, informe somente [s/n] - A TV está ligada? ")
			leia(respostaSeTvLigada)
			respostaSeTvLigada = extraiSubTexto(respostaSeTvLigada, 0, 1)
			respostaSeTvLigada = colocaTextoEmMinuscula(respostaSeTvLigada)
		}
	}

	funcao vazio solicitaNumeroCanal(inteiro &numeroCanal, cadeia mensagem) {
		exibeMensagem(mensagem)
		leia(numeroCanal)
	}

	funcao vazio processaRespostaCanal(inteiro numeroCanal, inteiro &respostaQuantidadePessoasAssistindoCanal, inteiro &pontuacaoMencionadoCanal, inteiro &quantidadePessoasAssistindoCanal) {
		escreva("Quantidade de pessoas assistindo o canal ", numeroCanal, ": ")
		leia(respostaQuantidadePessoasAssistindoCanal)
		pontuacaoMencionadoCanal += 1
		quantidadePessoasAssistindoCanal += respostaQuantidadePessoasAssistindoCanal
		escreva("Contabilizado pontuação para o canal ", numeroCanal)
}
	
	funcao vazio exibeMensagem(cadeia mensagem) {
		escreva(mensagem)
	}
	
	funcao real converteTipoInteiroParaReal(inteiro valorInteiro) {
		retorne Tipos.inteiro_para_real(valorInteiro)	
	}
	
	funcao vazio calculaMedia(real &mediaAudienciaCanal, inteiro quantidadePessoasAssistindoCanal, inteiro quantidadeCanais) {		
		mediaAudienciaCanal = converteTipoInteiroParaReal(quantidadePessoasAssistindoCanal / quantidadeCanais)
	}
	
	funcao vazio exibeEstatisticaIndividualPesquisa(inteiro pontuacaoMencionadoCanal, inteiro quantidadePessoasAssistindoCanal, real &mediaAudienciaCanal, inteiro quantidadeCanais) {
		se (pontuacaoMencionadoCanal == 0) {
			mediaAudienciaCanal = 0.0
		} 
		senao {
			calculaMedia(mediaAudienciaCanal, quantidadePessoasAssistindoCanal, quantidadeCanais)
		}
		escreva("Quantidade de vezes que foi mensionado: ", pontuacaoMencionadoCanal, "\n")
		escreva("Quantidade de pessoas assistindo o canal: ", quantidadePessoasAssistindoCanal, "\n")
		escreva("Porcentagem de audiência: ", mediaAudienciaCanal, "\n\n")
	}
	
	funcao vazio exibeEstatisticaFinalPesquisa(
		inteiro pontuacaoMencionadoCanal_4,
		inteiro pontuacaoMencionadoCanal_5,
		inteiro pontuacaoMencionadoCanal_7,
		inteiro pontuacaoMencionadoCanal_12,
		inteiro quantidadePessoasAssistindoCanal_4,
		inteiro quantidadePessoasAssistindoCanal_5,
		inteiro quantidadePessoasAssistindoCanal_7,
		inteiro quantidadePessoasAssistindoCanal_12,
		real mediaAudienciaCanal_4,
		real mediaAudienciaCanal_5,
		real mediaAudienciaCanal_7,
		real mediaAudienciaCanal_12,
		inteiro quantidadeCanais
	) {
		exibeMensagem("Canal 4 \n")
		exibeEstatisticaIndividualPesquisa(pontuacaoMencionadoCanal_4, quantidadePessoasAssistindoCanal_4, mediaAudienciaCanal_4, quantidadeCanais)

		exibeMensagem("Canal 5 \n")
		exibeEstatisticaIndividualPesquisa(pontuacaoMencionadoCanal_5, quantidadePessoasAssistindoCanal_5, mediaAudienciaCanal_5, quantidadeCanais)

		exibeMensagem("Canal 7 \n")
		exibeEstatisticaIndividualPesquisa(pontuacaoMencionadoCanal_7, quantidadePessoasAssistindoCanal_7, mediaAudienciaCanal_7, quantidadeCanais)

		exibeMensagem("Canal 12 \n")
		exibeEstatisticaIndividualPesquisa(pontuacaoMencionadoCanal_12, quantidadePessoasAssistindoCanal_12, mediaAudienciaCanal_12, quantidadeCanais)
	}
	
	funcao executaProgramaPrincipal() {
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
		
		inteiro respostaQuantidadePessoasAssistindoCanal = 0
		
		real mediaAudienciaCanal_4 = 0.0
		real mediaAudienciaCanal_5 = 0.0
		real mediaAudienciaCanal_7 = 0.0
		real mediaAudienciaCanal_12 = 0.0
		
		cadeia respostaSeTvLigada = ""


		faca {
			solicitaRespostaSeTvLigada(respostaSeTvLigada, contadorPesquisa)
			
			se (respostaSeTvLigada == "n") {
				exibeMensagem("Não entra na pesquisa, ir para próxima casa.")
			}
			senao {
				solicitaNumeroCanal(numeroCanal, "Escolha o canal [4] - [5] - [7]  - [12] - [0 - ENCERRAR PESQUISA]: ")
			
				enquanto(
					(numeroCanal != 0) e
					(numeroCanal != 4) e
					(numeroCanal != 5) e
					(numeroCanal != 7) e
					(numeroCanal != 12) 	
				) {
					solicitaNumeroCanal(numeroCanal, "--> Opção inválida, escolha somente o canal [4] - [5] - [7]  - [12] - [0 - ENCERRAR PESQUISA]: ")
				}			
				
				escolha (numeroCanal) {
					caso 0:
						exibeMensagem("\nPESQUISA ENCERRADA\n")
						pare
					
					caso 4:
						processaRespostaCanal(
							numeroCanal, respostaQuantidadePessoasAssistindoCanal, pontuacaoMencionadoCanal_4, quantidadePessoasAssistindoCanal_4
						)
						pare
	
					caso 5:
						processaRespostaCanal(
							numeroCanal, respostaQuantidadePessoasAssistindoCanal, pontuacaoMencionadoCanal_5, quantidadePessoasAssistindoCanal_5
						)
						pare
	
					caso 7:
						processaRespostaCanal(
							numeroCanal, respostaQuantidadePessoasAssistindoCanal, pontuacaoMencionadoCanal_7, quantidadePessoasAssistindoCanal_7
						)
						pare
	
					caso 12:
						processaRespostaCanal(
							numeroCanal, respostaQuantidadePessoasAssistindoCanal, pontuacaoMencionadoCanal_12, quantidadePessoasAssistindoCanal_12
						)
						pare
				
					caso contrario:
						pare
				}
			}

			contadorPesquisa++
		}
		enquanto(numeroCanal != 0)

		exibeMensagem("\n\nEstatística da Pesquisa\n")
		exibeEstatisticaFinalPesquisa(
			pontuacaoMencionadoCanal_4, 
			pontuacaoMencionadoCanal_5, 
			pontuacaoMencionadoCanal_7, 
			pontuacaoMencionadoCanal_12,
			quantidadePessoasAssistindoCanal_4, 
			quantidadePessoasAssistindoCanal_5, 
			quantidadePessoasAssistindoCanal_7, 
			quantidadePessoasAssistindoCanal_12,
			mediaAudienciaCanal_4, 
			mediaAudienciaCanal_5, 
			mediaAudienciaCanal_7, 
			mediaAudienciaCanal_12,
			quantidadeCanais
		)
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
 * @POSICAO-CURSOR = 7349; 
 * @DOBRAMENTO-CODIGO = [16, 20, 24, 41, 46, 54, 58, 62, 66, 150];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */