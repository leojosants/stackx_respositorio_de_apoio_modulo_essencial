/*
	Desenvolva um algoritmo que receba o salário de um funcionário, calcule e mostre seu novo salário com reajuste de 15%.
*/

programa {	
	inclua biblioteca Matematica --> mat

	funcao real solicitaSalarioFuncionario(real salarioFuncionario) {
		escreva("\nInforme o salário do funcionário: R$ ")
		leia(salarioFuncionario)

		retorne salarioFuncionario
	}

	funcao real formataValor(real valor, inteiro casasDecimais) {
		retorne mat.arredondar(valor, casasDecimais)
	}

	funcao real calculaNovoSalarioFuncionario(real salarioFuncionario, real taxaReajuste) {
		retorne (salarioFuncionario + (salarioFuncionario * taxaReajuste))
	}

	funcao vazio exubeDadosFuncionario(real salarioFuncionario, real taxaReajuste, real novoSalarioFuncionario) {
		escreva("\nDados do funcionário\n")
		escreva("- Salário atual.....: R$ ", salarioFuncionario, "\n")
		escreva("- Taxa de reajuste..: ", taxaReajuste, "%\n")
		escreva("- Novo salário......: R$ ", novoSalarioFuncionario, "\n")
	}
	
	funcao executaProgramaPrincipal() {
		real salarioFuncionario = 0.0
		real novoSalarioFuncionario = 0.0
		real taxaReajuste = 0.15 // 15%
		
		salarioFuncionario = solicitaSalarioFuncionario(salarioFuncionario)
		salarioFuncionario = formataValor(salarioFuncionario, 2)

		novoSalarioFuncionario = calculaNovoSalarioFuncionario(salarioFuncionario, taxaReajuste)
		novoSalarioFuncionario = formataValor(novoSalarioFuncionario, 2)

		exubeDadosFuncionario(salarioFuncionario, taxaReajuste, novoSalarioFuncionario)
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
 * @POSICAO-CURSOR = 763; 
 * @DOBRAMENTO-CODIGO = [7];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */