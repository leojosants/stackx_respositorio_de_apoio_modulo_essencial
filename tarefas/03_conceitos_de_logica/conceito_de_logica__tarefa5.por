/*
	Elabore um algoritmo que:
		- leia o valor do lado do quadrado e;
		- calcule a área, 
		- Em seguida calcule o dobro da área. 
		- Mostre a área e o dobro.
*/

programa {
	inclua biblioteca Matematica --> mat

	funcao real solicitaMedidaLadoQuadrado() {
		real medida = 0.0
		
		escreva("Entre com a medida dos lados de um quadrado [cm]: ")
		leia(medida)

		retorne medida
	}

	funcao real calculaPotencia(real base, real expoente) {
		retorne mat.potencia(base, expoente)
	}

	funcao real calculaAreaQuadrado(real medida) {
		real potencia = 0.0
		potencia = calculaPotencia(medida, 2)
		retorne potencia
	}

	funcao real calculaDobroAreaQuadrado(real area) {
		retorne area * 2
	}

	funcao vazio exibeDadosQuadadro(real areaQuadrado, real dobroAreaQuadrado) {
		escreva("- Área do quadrado...........: ", areaQuadrado, "cm²\n")
		escreva("- Dobro da área do quadrado..: ", dobroAreaQuadrado, "cm²\n")
	}

	funcao executaProgramaPrincipal() {
		real medidaLadoQuadrado = 0.0
		real areaQuadrado = 0.0
		real dobroAreaQuadrado = 0.0
		
		medidaLadoQuadrado = solicitaMedidaLadoQuadrado()

		areaQuadrado = calculaAreaQuadrado(medidaLadoQuadrado)

		dobroAreaQuadrado = calculaDobroAreaQuadrado(areaQuadrado)

		exibeDadosQuadadro(areaQuadrado, dobroAreaQuadrado) 
	}

	// programa principal
	funcao inicio() {
		executaProgramaPrincipal()
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1299; 
 * @DOBRAMENTO-CODIGO = [11, 20, 24, 30, 34, 39];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */