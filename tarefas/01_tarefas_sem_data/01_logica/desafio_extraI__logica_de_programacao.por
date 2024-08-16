/**
 *	Faça uma pesquisa utilizando a técnica Google Hacking, para coletar dados sobre acidentes de trânsito e 10 cidades brasileiras.
 *	
 *	Obtenha os seguintes dados:
 *		a) número de veículos de passeio;
 *		b) número de acidentes de trânsito com vítimas.
 *		
 *	Crie um programa que permita saber:
 *		a) Qual é o maior e qual é o menor índice de acidentes de trânsito e a que cidades pertencem;
 *		b) Qual é a média de veículos nas cinco cidades juntas;
 *		c) Qual é a média de acidentes de trânsito nas cidades com menos de 2.000 veículos de passeio.
 */

programa {		
	inclua biblioteca Util
	inclua biblioteca Matematica

	funcao inteiro geraNumerosAleatorios(inteiro minimo, inteiro maximo) {
		retorne Util.sorteia(minimo, maximo)
	}
	
	
	funcao inicio() {	
		cadeia estatisticasAno = "2023" // dados ficticios
		
		cadeia nomeCidadeComMaiorIndiceAcidente = ""		
		cadeia nomeCidadeComMenorIndiceAcidente = ""			
		
		cadeia nomeCidades[] = { "Itamorandiba (MG)", "Quixeramobim (CE)", "Nova Palma (RS)", "São Luiz (MA)", "Tupa (SP)" }
		
		//real numeroVeiculosPasseio[] = { 1.883, 1.206, 1.134, 1.079, 1.779 }
		inteiro numeroVeiculosPasseio[] = { 
			geraNumerosAleatorios(1, 10000), 
			geraNumerosAleatorios(1, 10000), 
			geraNumerosAleatorios(1, 10000), 
			geraNumerosAleatorios(1, 10000), 
			geraNumerosAleatorios(1, 10000)
		}

		
		//real numeroAcidentesTransito[] = { 970.34, 73.86, 340.01, 877.43, 677.95 }
		inteiro numeroAcidentesTransito[] = { 
			geraNumerosAleatorios(1, 1000), 
			geraNumerosAleatorios(1, 1000), 
			geraNumerosAleatorios(1, 1000), 
			geraNumerosAleatorios(1, 1000), 
			geraNumerosAleatorios(1, 1000)
		}
		
		//real numeroAcidentesTransitoComVitimas[] = { 7.34, 3.86, 4.01, 8.43, 6.95 }		
		inteiro numeroAcidentesTransitoComVitimas[] = { 
			geraNumerosAleatorios(1, 900), 
			geraNumerosAleatorios(1, 900), 
			geraNumerosAleatorios(1, 900), 
			geraNumerosAleatorios(1, 900), 
			geraNumerosAleatorios(1, 900)
		}		

		real maiorIndiceAcidenteTransito = 0.0
		real menorIndiceAcidenteTransito = 11111111.1

		real mediaVeiculosTodasCidades = 0.0
		real mediaAcidenteCidadesComMenosDoisMilVeiculos = 0.0
		
		real somaVeiculosTodasCidades = 0.0
		real somaAcidentesEmCidadesComVeiculosMenorDoisMil = 0.0

		inteiro totalCidades = Util.numero_elementos(nomeCidades)
		
		inteiro quantidadeAcidentesEmCidadesComVeiculosMenorDoisMil[5]
		
		cadeia nomeCidadeComQuantidadeVeiculosMenorDoisMil[5]
		

		escreva("\nPESQUISA DE TRÂNSITO - QUANTIDADE DE VEÍCULOS E ACIDENTES (DADOS FICTICIOS) - Ano (", estatisticasAno, ")\n")
		
		escreva("\nCidades pesquisadas\n")
		para (inteiro contador = 0; contador < totalCidades; contador++) {
			escreva(" - ", nomeCidades[contador], "\n")	
		}
		
		escreva("\nNúmero de veículos de passeio\n")
		se (Util.numero_elementos(nomeCidades) == Util.numero_elementos(numeroVeiculosPasseio)) {
			para (inteiro contador = 0; contador < Util.numero_elementos(numeroVeiculosPasseio); contador++) {
				escreva(" - ", nomeCidades[contador], "..: ", numeroVeiculosPasseio[contador], "\n")	
			}
		}
		senao {
			escreva("--> A quantidade de elementos dos vetores são diferentes! \n")
		}

		escreva("\nNúmero de acidentes de trânsito\n")
		se (Util.numero_elementos(nomeCidades) == Util.numero_elementos(numeroAcidentesTransito)) {
			para (inteiro contador = 0; contador < Util.numero_elementos(numeroAcidentesTransito); contador++) {
				escreva(" - ", nomeCidades[contador], "..: ", numeroAcidentesTransito[contador], "\n")	
			}
		}
		senao {
			escreva("--> A quantidade de elementos dos vetores são diferentes! \n")
		}

		escreva("\nNúmero de acidentes de trânsito com vítimas\n")
		se (Util.numero_elementos(nomeCidades) == Util.numero_elementos(numeroAcidentesTransitoComVitimas)) {
			para (inteiro contador = 0; contador < Util.numero_elementos(numeroAcidentesTransitoComVitimas); contador++) {
				escreva(" - ", nomeCidades[contador], "..: ", numeroAcidentesTransitoComVitimas[contador], "\n")	
			}
		}
		senao {
			escreva("--> A quantidade de elementos dos vetores são diferentes!\n")
		}

		escreva("\nMaior índice de acidentes de trânsito e qual cidade pertence\n")
		se (Util.numero_elementos(nomeCidades) == Util.numero_elementos(numeroAcidentesTransito)) {
			para (inteiro contador = 0; contador < Util.numero_elementos(numeroAcidentesTransito); contador++) {
				maiorIndiceAcidenteTransito = Matematica.maior_numero(maiorIndiceAcidenteTransito, numeroAcidentesTransito[contador])
			}

			para (inteiro contador = 0; contador < Util.numero_elementos(numeroAcidentesTransito); contador++) {
				se (numeroAcidentesTransito[contador] == maiorIndiceAcidenteTransito) {
					nomeCidadeComMaiorIndiceAcidente = nomeCidades[contador]
				}
			}
				
			escreva(" - Maior índice de acidentes..: ", maiorIndiceAcidenteTransito, "\n")
			escreva(" - Nome da cidade.............: ", nomeCidadeComMaiorIndiceAcidente, "\n")
		}
		senao {
			escreva("--> A quantidade de elementos dos vetores são diferentes!\n")
		}

		escreva("\nMenor índice de acidentes de trânsito e qual cidade pertence\n")
		se (Util.numero_elementos(nomeCidades) == Util.numero_elementos(numeroAcidentesTransito)) {
			para (inteiro contador = 0; contador < Util.numero_elementos(numeroAcidentesTransito); contador++) {
				menorIndiceAcidenteTransito = Matematica.menor_numero(menorIndiceAcidenteTransito, numeroAcidentesTransito[contador])
			}

			para (inteiro contador = 0; contador < Util.numero_elementos(numeroAcidentesTransito); contador++) {
				se (numeroAcidentesTransito[contador] == menorIndiceAcidenteTransito) {
					nomeCidadeComMenorIndiceAcidente = nomeCidades[contador]
				}
			}
				
			escreva(" - Menor índice de acidente..: ", menorIndiceAcidenteTransito, "\n")
			escreva(" - Nome da cidade............: ", nomeCidadeComMenorIndiceAcidente, "\n")
		}
		senao {
			escreva("--> A quantidade de elementos dos vetores são diferentes!\n")
		}
		
		escreva("\nMédia de véiculos nas 5 cidades juntas\n")		
		para (inteiro contador = 0; contador < Util.numero_elementos(numeroVeiculosPasseio); contador++) {
			somaVeiculosTodasCidades += numeroVeiculosPasseio[contador]	
		}
		mediaVeiculosTodasCidades = somaVeiculosTodasCidades / totalCidades
		escreva(" - Média: ", mediaVeiculosTodasCidades, "\n")

		escreva("\nMédia de acidentes de trânsito nas cidades com menos de 2.000 veículos de passeio\n")
		para (inteiro contador = 0; contador < Util.numero_elementos(numeroVeiculosPasseio); contador++) {
			se (numeroVeiculosPasseio[contador] < 2000) {
				quantidadeAcidentesEmCidadesComVeiculosMenorDoisMil[contador] = numeroAcidentesTransito[contador]
				nomeCidadeComQuantidadeVeiculosMenorDoisMil[contador] = nomeCidades[contador]
			}
		}
		escreva(" - Nome cidade e quantidade acidentes\n")
		se (Util.numero_elementos(nomeCidadeComQuantidadeVeiculosMenorDoisMil) == Util.numero_elementos(quantidadeAcidentesEmCidadesComVeiculosMenorDoisMil)) {
			para (inteiro contador = 0; contador < Util.numero_elementos(nomeCidadeComQuantidadeVeiculosMenorDoisMil); contador++) {
				somaAcidentesEmCidadesComVeiculosMenorDoisMil += quantidadeAcidentesEmCidadesComVeiculosMenorDoisMil[contador]
				
				se (quantidadeAcidentesEmCidadesComVeiculosMenorDoisMil[contador] > 0) {
					escreva("\t", nomeCidadeComQuantidadeVeiculosMenorDoisMil[contador], ": ", quantidadeAcidentesEmCidadesComVeiculosMenorDoisMil[contador], "\n")
				}
			}

			mediaAcidenteCidadesComMenosDoisMilVeiculos = (somaAcidentesEmCidadesComVeiculosMenorDoisMil / Util.numero_elementos(quantidadeAcidentesEmCidadesComVeiculosMenorDoisMil))
		}
		senao {
			escreva("--> A quantidade de elementos dos vetores são diferentes!\n")
		}

		escreva(" - Média de acidentes\n")
		escreva("\t", mediaAcidenteCidadesComMenosDoisMilVeiculos)
		
		escreva("\n")	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 7807; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */