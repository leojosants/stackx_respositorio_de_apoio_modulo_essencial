/*
	Escreva um algoritmo que leia a quantidade de combustível abastecido em um automóvel em litros, 
	bem como, a distância que o automóvel percorre por litro abastecido. 
	O algoritmo deverá calcular e mostrar a distância máxima que o automóvel poderá atingir.
*/

programa {	
	inclua biblioteca Matematica --> mat
	
	funcao inicio() {
		real quantidadeCombustivelAbastecidoLitros = 0.0
		real distanciaPercorrePorLitro = 0.0
		real distanciaMaximaAtinge = 0.0
		
		escreva("\nInforme a quantidade de combustível abastecida em um automóvel [litros]..: ")
		leia(quantidadeCombustivelAbastecidoLitros)

		quantidadeCombustivelAbastecidoLitros = mat.arredondar(quantidadeCombustivelAbastecidoLitros, 2)

		escreva("Informe a distância que o automóvel percorre por litro [m]...............: ")
		leia(distanciaPercorrePorLitro)

		distanciaPercorrePorLitro = mat.arredondar(distanciaPercorrePorLitro, 2)

		distanciaMaximaAtinge = (quantidadeCombustivelAbastecidoLitros * distanciaPercorrePorLitro)
		distanciaMaximaAtinge = mat.arredondar(distanciaMaximaAtinge, 2)

		escreva("\nDados do veículo\n")
		escreva("- Quantidade abastecida de combustível..: ", quantidadeCombustivelAbastecidoLitros, "[litros]\n")
		escreva("- Distância que percorre por litro......: ", distanciaPercorrePorLitro, "[km]\n")
		escreva("- Distância que poderá atingir..........: ", distanciaMaximaAtinge, "[km]\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1122; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */