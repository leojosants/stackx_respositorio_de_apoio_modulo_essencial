/*
	Elabore um algoritmo que:
		- leia o valor do lado do quadrado e;
		- calcule a área, 
		- Em seguida calcule o dobro da área. 
		- Mostre a área e o dobro.
*/

programa {
	inclua biblioteca Matematica --> mat
	
	funcao inicio() {
		real medidaLadoQuadrado = 0.0
		real areaQuadrado = 0.0
		real dobroAreaQuadrado = 0.0
		
		escreva("Entre com a medida dos lados de um quadrado [cm]: ")
		leia(medidaLadoQuadrado)

		areaQuadrado = mat.potencia(medidaLadoQuadrado, 2)

		dobroAreaQuadrado = areaQuadrado * 2

		escreva("- Área do quadrado...........: ", mat.arredondar(areaQuadrado, 2), "cm²\n")
		escreva("- Dobro da área do quadrado..: ", mat.arredondar(dobroAreaQuadrado, 2), "cm²\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 703; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */