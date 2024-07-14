/*
	Faça um algoritmo que leia o valor que um funcionário ganha por hora e o número de horas trabalhadas no mês. 
	Calcule e mostre o total do seu salário no referido mês.
*/

programa {
	inclua biblioteca Matematica --> mat

	funcao real solicitaValorRecebidoPorHora() {
		real valorRecebidoPorHora = 0.0
		
		escreva("- Infome o valor recebido por hora.............: R$ ")
		leia(valorRecebidoPorHora)

		retorne valorRecebidoPorHora
	}

	funcao inteiro solicitaNumeroHorasTrabalhadasMes() {
		inteiro numeroHorasTrabalhadasMes = 0
		
		escreva("- Infome o número de horas trabalhadas no mês..: ")
		leia(numeroHorasTrabalhadasMes)

		retorne numeroHorasTrabalhadasMes
	}

	funcao real formataNumero(real numero, inteiro casasDecimais) {
		retorne mat.arredondar(numero, casasDecimais)
	}

	funcao real calculaValorTotalSalarioMensal(real valorRecebidoPorHora, inteiro numeroHorasTrabalhadasMes) {
		retorne formataNumero((valorRecebidoPorHora * numeroHorasTrabalhadasMes), 2)
	}

	funcao vazio exibeDadosFuncionario(real valorRecebidoPorHora, inteiro numeroHorasTrabalhadasMes, real valorTotalSalarioMensal) {
		escreva("\nDados do funcionário\n")
		escreva("- Valor recebido por hora.............: R$ ", valorRecebidoPorHora, "\n")
		escreva("- Número de horas trabalhadas no mês..: ", numeroHorasTrabalhadasMes, "\n")
		escreva("- Salário a receber no referido mês...: R$ ", valorTotalSalarioMensal, "\n")
	}
	
	funcao executaProgramaPrincipal() {
		real valorRecebidoPorHora = 0.0
		real valorTotalSalarioMensal = 0.0
		inteiro numeroHorasTrabalhadasMes = 0

		escreva("\nEntre com os dados do trabalhador\n")
		
		valorRecebidoPorHora = solicitaValorRecebidoPorHora()

		numeroHorasTrabalhadasMes = solicitaNumeroHorasTrabalhadasMes()

		valorTotalSalarioMensal = calculaValorTotalSalarioMensal(valorRecebidoPorHora, numeroHorasTrabalhadasMes) 

		exibeDadosFuncionario(valorRecebidoPorHora, numeroHorasTrabalhadasMes, valorTotalSalarioMensal)
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
 * @POSICAO-CURSOR = 1678; 
 * @DOBRAMENTO-CODIGO = [8];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */