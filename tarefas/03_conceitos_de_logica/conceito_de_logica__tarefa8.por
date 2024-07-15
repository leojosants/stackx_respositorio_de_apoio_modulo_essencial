/*
	Faça um algoritmo para transformar uma distância expressa em milhas para quilômetros.
	Sabe-se que uma milha corresponde a 1.6214 km.
*/

programa {
	inclua biblioteca Matematica --> mat
	
	funcao inicio() {
		real distanciaMilhaRecebida = 0.0
		real conversaoMilhaKm = 0.0
		real umaMilhaEquivaleKm = 1.6214

		escreva("\nInfome uma distância [milha]: ")
		leia(distanciaMilhaRecebida)

		distanciaMilhaRecebida = mat.arredondar(distanciaMilhaRecebida, 2)

		conversaoMilhaKm = distanciaMilhaRecebida * umaMilhaEquivaleKm
		conversaoMilhaKm = mat.arredondar(conversaoMilhaKm, 4)

		escreva("\nExibindo resultado\n")
		escreva("- ", distanciaMilhaRecebida, "[milha] equivalem a ", conversaoMilhaKm, "[km]\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 685; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */