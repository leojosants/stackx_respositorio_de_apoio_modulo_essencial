/*
	Chico tem 1,50 metro e cresce 2 centímetros por ano, enquanto Zé tem 1,10 metro e cresce 3 centímetros por ano. 
	Construa um algoritmo que calcule e imprima quantos anos serão necessários para que Zé seja maior que Chico.
*/

programa {		
	funcao real calculaCrescimentoAltura(real altura, real crescimentoPorAnoAltura) {
		altura += crescimentoPorAnoAltura
		retorne altura
	}

	funcao logico comparaAlturas(real primeiraAltura, real segundaAltura) {
		retorne (primeiraAltura > segundaAltura)
	}

	funcao vazio exibeQuantidadeAnosnecessarios(inteiro contador) {
		escreva("Serão necessários ", contador, " anos, para que Zé tenha a altura maior que a de Chico.\n")
	}

	funcao vazio exibeAumentoProgressivoAnoAltura(inteiro ano, real altura) {
		escreva("Altura Chico - ", (ano + 1), "° ano.........................: ", altura, "\n")
	}

	funcao vazio exibeSeAlturaMenorOuMaior(logico comparacao) {
		se(comparacao) {
				escreva("Altura de Zé é maior que a de Chico\n\n")
		}
		senao {
			escreva("Altura de Chico é maior que a de Zé\n\n")
		}
	}

	funcao executaProgramaPrincipal() {
		real alturaChico = 1.50
		real alturaZe = 1.10
		real crescimentoPorAnoAlturaChico = 0.2
		real crescimentoPorAnoAlturaZe = 0.3
		inteiro contador = 0
		logico comparaAlturaZeEhMaiorChico = falso
	
		enquanto(alturaZe < alturaChico) {
			alturaChico = calculaCrescimentoAltura(alturaChico, crescimentoPorAnoAlturaChico)
			
			alturaZe = calculaCrescimentoAltura(alturaZe, crescimentoPorAnoAlturaZe)
			
			comparaAlturaZeEhMaiorChico = comparaAlturas(alturaChico, alturaZe)
			
			exibeAumentoProgressivoAnoAltura(contador + 1, alturaChico)
			
			exibeAumentoProgressivoAnoAltura(contador + 1, alturaZe)
			
			exibeSeAlturaMenorOuMaior(comparaAlturaZeEhMaiorChico) 
			
			contador++
		}

		exibeQuantidadeAnosnecessarios(contador)
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
 * @POSICAO-CURSOR = 1645; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */