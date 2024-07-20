/*
	Elabore um algoritmo que leia a medida em metros de frente e profundidade de um número indeterminado de terrenos. 
	
	O algoritmo deverá calcular e mostrar a área do terreno. 
	
	Deverá parar somente quando a área de um terreno for inferior a 100 metros quadrados.
*/

programa {
	inclua biblioteca Matematica
	
	funcao inicio() {
		real medidaFrenteTerreno = 0.0
		real medidaProfundidadeTerreno = 0.0
		real resultadoAreaTerreno = 0.0

		enquanto(verdadeiro) {
			escreva("\nInforme a medida de frente de um terreno [m]........: ")
			leia(medidaFrenteTerreno)
	
			escreva("\nInforme a medida de profundidade de um terreno [m]..: ")
			leia(medidaProfundidadeTerreno)
	
			resultadoAreaTerreno = medidaFrenteTerreno * medidaProfundidadeTerreno
			resultadoAreaTerreno = Matematica.arredondar(resultadoAreaTerreno, 2)
	
			escreva("\n- Área do terreno: ", resultadoAreaTerreno, "m²\n\n")
	
			se(resultadoAreaTerreno < 100) {
				escreva("\nDetectado área do terreno menor que 100m², finalizar programa!\n")
				pare
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1037; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */