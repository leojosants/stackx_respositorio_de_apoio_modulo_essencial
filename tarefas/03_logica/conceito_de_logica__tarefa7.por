/*
	Com base na altura de uma pessoa, construa um algoritmo que calcule seu peso ideal, usando a seguinte fórmula: (72.7 × altura) − 58.
*/

programa {
	inclua biblioteca Matematica --> mat

	funcao real solicitaAltura(real altura) {
		escreva("\nInforme a altura [m]: ")
		leia(altura)
		
		retorne altura
	}

	funcao real formataValor(real valor, inteiro casasDecimais) {
		retorne mat.arredondar(valor, casasDecimais)
	}

	funcao real calculaFormulaPesoIdeal(real altura) {
		retorne (72.7 * altura) - 58
	}

	funcao vazio exibePesoIdeal(real altura, real formulaPesoIdeal) {
		escreva("\nExibindo resultado\n")
		escreva("- O peso ideal para ", altura, "m de altura é ", formulaPesoIdeal, "kg\n")	
	}
	
	funcao exececutaProgramaPrincipal() {
		real altura = 0.0
		real formulaPesoIdeal = 0.0
	
		altura = solicitaAltura(altura)
		altura = formataValor(altura, 2)

		formulaPesoIdeal = calculaFormulaPesoIdeal(altura)
		formulaPesoIdeal = formataValor(formulaPesoIdeal, 2)

		exibePesoIdeal(altura, formulaPesoIdeal)
	}

	funcao inicio() {
		exececutaProgramaPrincipal()	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1006; 
 * @DOBRAMENTO-CODIGO = [7];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */