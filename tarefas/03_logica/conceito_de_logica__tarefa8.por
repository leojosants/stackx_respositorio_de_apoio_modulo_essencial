/*
	Faça um algoritmo para transformar uma distância expressa em milhas para quilômetros.
	Sabe-se que uma milha corresponde a 1.6214 km.
*/

programa {
	inclua biblioteca Matematica --> mat

	funcao real solicitaDistanciaMilha(real distanciaMilhaRecebida) {
		escreva("\nInfome uma distância [milha]: ")
		leia(distanciaMilhaRecebida)

		retorne distanciaMilhaRecebida
	}

	funcao real formataNumero(real numero, inteiro casasDecimais) {
		retorne mat.arredondar(numero, casasDecimais)
	}

	funcao real calculaConversaoMilhaKm(real distanciaMilha, real umaMilhaEquivaleKm) {
		retorne (distanciaMilha * umaMilhaEquivaleKm)
	}

	funcao vazio exibeConversaoMilhaKm(real distanciaMilhaRecebida, real conversaoMilhaKm) {
		escreva("\nExibindo resultado\n")
		escreva("- ", distanciaMilhaRecebida, "[milha] equivalem a ", conversaoMilhaKm, "[km]\n")
	}
	
	funcao executarProgramaPrincipal() {
		real distanciaMilhaRecebida = 0.0
		real conversaoMilhaKm = 0.0
		real umaMilhaEquivaleKm = 1.6214

		distanciaMilhaRecebida = solicitaDistanciaMilha(distanciaMilhaRecebida)
		distanciaMilhaRecebida = formataNumero(distanciaMilhaRecebida, 2)

		conversaoMilhaKm = calculaConversaoMilhaKm(distanciaMilhaRecebida, umaMilhaEquivaleKm)
		conversaoMilhaKm = formataNumero(conversaoMilhaKm, 4)

		exibeConversaoMilhaKm(distanciaMilhaRecebida, conversaoMilhaKm)
	}

	funcao inicio() {
		executarProgramaPrincipal()
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1350; 
 * @DOBRAMENTO-CODIGO = [8, 15];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */