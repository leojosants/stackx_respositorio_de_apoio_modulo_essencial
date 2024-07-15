/*
	O valor unitário de um livro na promoção custa R$ 12,00. 
	Caso o cliente compre acima de 10 livros, o preço unitário do livro fica por R$ 8,00.
	Escreva um algoritmo que leia o número de livros comprados, calcule e mostre o valor total que o cliente deverá pagar
*/

programa {	
	inclua biblioteca Matematica --> mat
	
	funcao inicio() {
		real valorUnitarioLivroPromocao = 12.0
		real valorUnitarioLivroAcima10Un = 8.0
		real valorTotalCompra = 0.0
		inteiro numeroLivrosComprados = 0

		valorUnitarioLivroPromocao = mat.arredondar(valorUnitarioLivroPromocao, 2)
		valorUnitarioLivroAcima10Un = mat.arredondar(valorUnitarioLivroAcima10Un, 2)

		escreva("\nTabela de preços para compra de livros\n")
		escreva("[Valor unitário]..: R$ ", valorUnitarioLivroPromocao, "\n")
		escreva("[Acima de 10 un]..: R$ ", valorUnitarioLivroAcima10Un, "\n")
		
	
		escreva("\nInforme o número de livros que deseja comprar [un]: ")
		leia(numeroLivrosComprados)

		se(numeroLivrosComprados < 0) {
			escreva("- Não é possível calcular a compra com um valor negativo!\n")
			retorne
		}		
		senao se(numeroLivrosComprados <= 10) {
			valorTotalCompra = (valorUnitarioLivroPromocao * numeroLivrosComprados)
			valorTotalCompra = mat.arredondar(valorTotalCompra, 2)
		}
		senao se(numeroLivrosComprados > 10) {
			valorTotalCompra = (valorUnitarioLivroAcima10Un * numeroLivrosComprados)
			valorTotalCompra = mat.arredondar(valorTotalCompra, 2)
		}

		escreva("\nDados da compra\n")
		escreva("- Quantidade de livro(s)..: ",  numeroLivrosComprados, " [un]\n")
		escreva("- Valor total a pagar.....: R$ ", valorTotalCompra, "\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 648; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */