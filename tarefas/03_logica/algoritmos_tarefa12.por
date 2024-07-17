/*
	O valor unitário de um livro na promoção custa R$ 12,00. 
	Caso o cliente compre acima de 10 livros, o preço unitário do livro fica por R$ 8,00.
	Escreva um algoritmo que leia o número de livros comprados, calcule e mostre o valor total que o cliente deverá pagar
*/

programa {	
	inclua biblioteca Matematica --> mat

	funcao real formataValor(real valor, inteiro quantidadeCasasDecimais) {
		retorne mat.arredondar(valor, quantidadeCasasDecimais)
	}

	funcao vazio exibeTabelaPrecos(real valorUnitarioLivroPromocao, real valorUnitarioLivroAcima10Un) {
		escreva("\nTabela de preços para compra de livros\n")
		escreva("[Valor unitário]..: R$ ", valorUnitarioLivroPromocao, "\n")
		escreva("[Acima de 10 un]..: R$ ", valorUnitarioLivroAcima10Un, "\n")
	}

	funcao inteiro solicitaNumeroLivrosComprar(inteiro numeroLivrosComprar) {
		escreva("\nInforme o número de livros que deseja comprar [un]: ")
		leia(numeroLivrosComprar)

		retorne numeroLivrosComprar
	}

	funcao real calculaValorTotalCompra(real valorLivro, inteiro numeroLivrosComprar) {
		retorne (valorLivro * numeroLivrosComprar)
	}

	funcao real validaNumeroLivrosComprar(inteiro numeroLivrosComprar, real valorTotalCompra, real valorUnitarioLivroPromocao, real valorUnitarioLivroAcima10Un) {
		se(numeroLivrosComprar < 0) {
			escreva("- Não é possível calcular a compra com um valor negativo!\n")
			retorne 0.0
		}		
		senao se(numeroLivrosComprar <= 10) {
			valorTotalCompra = calculaValorTotalCompra(valorUnitarioLivroPromocao, numeroLivrosComprar)
			valorTotalCompra = formataValor(valorTotalCompra, 2)
		}
		senao se(numeroLivrosComprar > 10) {
			valorTotalCompra = calculaValorTotalCompra(valorUnitarioLivroAcima10Un, numeroLivrosComprar)
			valorTotalCompra = formataValor(valorTotalCompra, 2)
		}

		retorne valorTotalCompra
	}

	funcao vazio exibeDadosCompra(inteiro numeroLivrosComprar, real valorTotalCompra) {
		escreva("\nDados da compra\n")
		escreva("- Quantidade de livro(s)..: ",  numeroLivrosComprar, " [un]\n")
		escreva("- Valor total a pagar.....: R$ ", valorTotalCompra, "\n")
	}
	
	funcao executaProgramaPrincipal() {
		real valorUnitarioLivroPromocao = 12.0
		real valorUnitarioLivroAcima10Un = 8.0
		real valorTotalCompra = 0.0
		inteiro numeroLivrosComprar = 0
		inteiro formatar2CasasDecimais = 2

		valorUnitarioLivroPromocao = formataValor(valorUnitarioLivroPromocao, formatar2CasasDecimais)
		valorUnitarioLivroAcima10Un = formataValor(valorUnitarioLivroAcima10Un, formatar2CasasDecimais)

		exibeTabelaPrecos(valorUnitarioLivroPromocao, valorUnitarioLivroAcima10Un) 
		
		numeroLivrosComprar = solicitaNumeroLivrosComprar(numeroLivrosComprar) 

		valorTotalCompra = validaNumeroLivrosComprar(numeroLivrosComprar, valorTotalCompra, valorUnitarioLivroPromocao, valorUnitarioLivroAcima10Un)

		exibeDadosCompra(numeroLivrosComprar, valorTotalCompra)
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
 * @POSICAO-CURSOR = 2495; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */