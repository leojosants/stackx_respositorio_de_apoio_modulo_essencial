/*
	Desenvolva um algoritmo que receba o salário de um funcionário, calcule e mostre seu novo salário com reajuste de 15%.
*/

programa {	
	inclua biblioteca Matematica --> mat
	funcao inicio() {
		real salarioFuncionario = 0.0
		real novoSalarioFuncionario = 0.0
		real taxaReajuste = 0.15 // 15%
		
		escreva("\nInforme o salário do funcionário: R$ ")
		leia(salarioFuncionario)

		salarioFuncionario = mat.arredondar(salarioFuncionario, 2)

		novoSalarioFuncionario = (salarioFuncionario + (salarioFuncionario * taxaReajuste))
		novoSalarioFuncionario = mat.arredondar(novoSalarioFuncionario, 2)

		escreva("\nExibindo dados\n")
		escreva("- Salário atual.....: R$ ", salarioFuncionario, "\n")
		escreva("- Taxa de reajuste..: ", taxaReajuste, "%\n")
		escreva("- Novo salário......: R$ ", novoSalarioFuncionario, "\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 669; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */