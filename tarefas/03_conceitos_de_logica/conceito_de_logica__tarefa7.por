/*
	Com base na altura de uma pessoa, construa um algoritmo que calcule seu peso ideal, usando a seguinte fórmula: (72.7 × altura) − 58.
*/

programa {
	inclua biblioteca Matematica --> mat
	
	funcao inicio() {
		real altura = 0.0
		real formula = 0.0
	
		escreva("\nInforme a altura [m]: ")
		leia(altura)

		altura = mat.arredondar(altura, 2)

		formula = (72.7 * altura) - 58
		formula = mat.arredondar(formula, 2)

		escreva("\nExibindo resultado\n")
		escreva("- O peso ideal para ", altura, "m de altura é ", formula, "\n")
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 386; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */