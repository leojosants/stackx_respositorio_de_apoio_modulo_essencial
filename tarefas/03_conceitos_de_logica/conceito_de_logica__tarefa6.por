/*
	Faça um algoritmo que leia o valor que um funcionário ganha por hora e o número de horas trabalhadas no mês. 
	Calcule e mostre o total do seu salário no referido mês.
*/

programa {
	inclua biblioteca Matematica --> mat
	
	funcao inicio() {
		real valorRecebidoPorHora = 0.0
		inteiro numeroHorasTrabalhadasMes = 0
		real valorTotalSalarioMensal = 0.0

		escreva("\nEntre co os dados do trabalhador\n")
		
		escreva("- Infome o valor recebido por hora.............: R$ ")
		leia(valorRecebidoPorHora)

		escreva("- Infome o número de horas trabalhadas no mês..: ")
		leia(numeroHorasTrabalhadasMes)

		valorTotalSalarioMensal = mat.arredondar((valorRecebidoPorHora * numeroHorasTrabalhadasMes), 2)

		escreva("\nDados do funcionário\n")
		escreva("- Valor recebido por hora.............: R$ ", valorRecebidoPorHora, "\n")
		escreva("- Número de horas trabalhadas no mês..: ", numeroHorasTrabalhadasMes, "\n")
		escreva("- Salário a receber no referido mês...: R$ ", valorTotalSalarioMensal, "\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 918; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */