/*
	Chico tem 1,50 metro e cresce 2 centímetros por ano, enquanto Zé tem 1,10 metro e cresce 3 centímetros por ano. 
	Construa um algoritmo que calcule e imprima quantos anos serão necessários para que Zé seja maior que Chico.
*/

programa {		
	funcao inicio() {
		real alturaChico = 1.50
		real alturaZe = 1.10
		real crescimentoPorAnoAlturaChico = 0.2
		real crescimentoPorAnoAlturaZe = 0.3
		inteiro contador = 0
		logico comparaAlturaZeEhMaiorChico = falso
	
		enquanto(alturaZe < alturaChico) {
			alturaChico += crescimentoPorAnoAlturaChico
			alturaZe += crescimentoPorAnoAlturaZe

			alturaChico = alturaChico
			alturaZe = alturaZe
			
			comparaAlturaZeEhMaiorChico = (alturaZe > alturaChico)
			
			escreva("Altura Chico - ", (contador + 1), "° ano......................: ", alturaChico, "\n")
			escreva("Altura Zé    - ", (contador + 1), "° ano.........................: ", alturaZe, "\n")

			se(comparaAlturaZeEhMaiorChico) {
				escreva("Altura de Zé é maior que a de Chico\n\n")
			}
			senao {
				escreva("Altura de Chico é maior que a de Zé\n\n")
			}
			
			contador++
		}

		escreva("Serão necessários ", contador, " anos, para que Zé tenha a altura maior que a de Chico.\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1080; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */