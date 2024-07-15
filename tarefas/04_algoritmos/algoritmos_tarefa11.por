/*
	Escreva um algoritmo que leia a quantidade de combustível abastecido em um automóvel em litros, 
	bem como, a distância que o automóvel percorre por litro abastecido. 
	O algoritmo deverá calcular e mostrar a distância máxima que o automóvel poderá atingir.
*/

programa {	
	inclua biblioteca Matematica --> mat

	funcao real solicitaQuantidadeCombustivelAbastecidoLitros(real quantidadeCombustivelAbastecidoLitros) {
		escreva("\nInforme a quantidade de combustível abastecida em um automóvel [litros]..: ")
		leia(quantidadeCombustivelAbastecidoLitros)

		retorne quantidadeCombustivelAbastecidoLitros
	}

	funcao real formataValor(real valor, inteiro quantidadeCasasDecimais) {
		retorne mat.arredondar(valor, quantidadeCasasDecimais)
	}

	funcao real solicitaDistanciaPercorrePorLitro(real distanciaPercorrePorLitro) {
		escreva("Informe a distância que o automóvel percorre por litro [m]...............: ")
		leia(distanciaPercorrePorLitro)
		
		retorne distanciaPercorrePorLitro
	}

	funcao real calculaDistanciaMaximaAtinge(real quantidadeCombustivelAbastecidoLitros, real distanciaPercorrePorLitro) {
		retorne (quantidadeCombustivelAbastecidoLitros * distanciaPercorrePorLitro)
	}

	funcao vazio exibibeDadosVeiculo(real quantidadeCombustivelAbastecidoLitros, real distanciaPercorrePorLitro, real distanciaMaximaAtinge) {
		escreva("\nDados do veículo\n")
		escreva("- Quantidade abastecida de combustível..: ", quantidadeCombustivelAbastecidoLitros, " [litros]\n")
		escreva("- Distância que percorre por litro......: ", distanciaPercorrePorLitro, " [km]\n")
		escreva("- Distância que poderá atingir..........: ", distanciaMaximaAtinge, " [km]\n")
	}
	
	funcao execupaProgramaPrincipal() {
		real quantidadeCombustivelAbastecidoLitros = 0.0
		real distanciaPercorrePorLitro = 0.0
		real distanciaMaximaAtinge = 0.0
		
		quantidadeCombustivelAbastecidoLitros = solicitaQuantidadeCombustivelAbastecidoLitros(quantidadeCombustivelAbastecidoLitros)
		quantidadeCombustivelAbastecidoLitros = formataValor(quantidadeCombustivelAbastecidoLitros, 2)

		distanciaPercorrePorLitro = solicitaDistanciaPercorrePorLitro(distanciaPercorrePorLitro)
		distanciaPercorrePorLitro = formataValor(distanciaPercorrePorLitro, 2)

		distanciaMaximaAtinge = calculaDistanciaMaximaAtinge(quantidadeCombustivelAbastecidoLitros, distanciaPercorrePorLitro)
		distanciaMaximaAtinge = formataValor(distanciaMaximaAtinge, 2)

		exibibeDadosVeiculo(quantidadeCombustivelAbastecidoLitros, distanciaPercorrePorLitro, distanciaMaximaAtinge)
	}

	funcao inicio() {
		execupaProgramaPrincipal()
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2498; 
 * @DOBRAMENTO-CODIGO = [9];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */