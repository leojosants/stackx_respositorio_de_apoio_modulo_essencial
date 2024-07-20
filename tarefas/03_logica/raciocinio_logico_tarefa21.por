/*
	Elabore um algoritmo que leia a medida em metros de frente e profundidade de um número indeterminado de terrenos. 
	
	O algoritmo deverá calcular e mostrar a área do terreno. 
	
	Deverá parar somente quando a área de um terreno for inferior a 100 metros quadrados.
*/

programa {
	inclua biblioteca Matematica

	funcao vazio exibeLinha() {
		escreva("---------------------------------------------\n\n")
	}

	funcao vazio exibeMensagemInicial() {
		escreva("\nInforme a medida de frente [ m ] e de profundidade [ m ] de um terreno\n")
	}

	funcao real solicitaFrenteMedidaTerreno(real medidaTerreno) {
		escreva("- Frente [ m ]........: ")
		leia(medidaTerreno)
		retorne medidaTerreno
	}

	funcao real solicitaProfundidadeMedidaTerreno(real medidaTerreno) {
		escreva("- Profundidade [ m ]........: ")
		leia(medidaTerreno)
		retorne medidaTerreno
	}

	funcao real calculaResultadoAreaTerreno(real medidaFrenteTerreno, real medidaProfundidadeTerreno) {
		retorne medidaFrenteTerreno * medidaProfundidadeTerreno
	}

	funcao real formataValor(real valor, inteiro casasDecimais) {
		retorne Matematica.arredondar(valor, casasDecimais)
	}

	funcao vazio exibeResultadoAreaTerreno(real resultadoAreaTerreno) {
		escreva("- Área do terreno.....: ", resultadoAreaTerreno, "m²\n\n")
	}
	
	funcao executaProgramaPrincipal() {
		real medidaFrenteTerreno = 0.0
		real medidaProfundidadeTerreno = 0.0
		real resultadoAreaTerreno = 0.0

		exibeMensagemInicial()

		enquanto(verdadeiro) {
			medidaFrenteTerreno = solicitaFrenteMedidaTerreno(medidaFrenteTerreno)
			medidaFrenteTerreno = formataValor(medidaFrenteTerreno, 2)
	
			medidaProfundidadeTerreno = solicitaFrenteMedidaTerreno(medidaProfundidadeTerreno)
			medidaProfundidadeTerreno = formataValor(medidaProfundidadeTerreno, 2)
	
			resultadoAreaTerreno = calculaResultadoAreaTerreno(medidaFrenteTerreno, medidaProfundidadeTerreno)
			resultadoAreaTerreno = formataValor(resultadoAreaTerreno, 2)
	
			exibeResultadoAreaTerreno(resultadoAreaTerreno)

			exibeLinha()
	
			se(resultadoAreaTerreno < 100) {
				escreva("Detectado área do terreno menor que 100m², finalizar programa!\n")
				pare
			}
			senao {
				escreva("Informe uma nova medida do terreno\n")
			}
		}
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
 * @POSICAO-CURSOR = 1284; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */