/*
	Elaborar um algoritmo que lê o público total de um jogo de futebol e fornece a renda do jogo, 
	sabendo-se que havia 4 tipos de ingressos assim distribuídos:
		- popular 10% do público a R$ 5,00;
		- geral 50% do público a R$ 10,00;
		- arquibancada 30% do público a R$ 20,00;
		- cadeiras 10% do público a R$ 30,00;
*/

programa {
	inclua biblioteca Matematica --> mat
	
	funcao inicio() {
		real rendaJogo = 0.0
		real publicoTotal = 0.0
				
		real porcentagemPopular = 0.1
		real porcentagemGeral = 0.5
		real porcentagemArquibancada = 0.3
		real porcentagemCadeiras = 0.1

		real precoIngressoPopular = 5.0
		real precoIngressoGeral = 10.0
		real precoIngressoArquibancada = 20.0
		real precoIngressoCadeiras = 30.0

		real precoFinalIngressoPopular = 0.0
		real precoFinalIngressoGeral = 0.0
		real precoFinalIngressoArquibancada = 0.0
		real precoFinalIngressoCadeiras = 0.0
		
		escreva("\nInforme o público total do jogo: ")
		leia(publicoTotal)

		precoFinalIngressoPopular = (publicoTotal * porcentagemPopular) * precoIngressoPopular
		
		precoFinalIngressoGeral = (publicoTotal * porcentagemGeral) * precoIngressoGeral
		
		precoFinalIngressoArquibancada = (publicoTotal * porcentagemArquibancada) * precoIngressoArquibancada
		
		precoFinalIngressoCadeiras = (publicoTotal * porcentagemCadeiras) * precoIngressoCadeiras
		
		rendaJogo = precoFinalIngressoPopular + precoFinalIngressoGeral + precoFinalIngressoArquibancada + precoFinalIngressoCadeiras

		escreva("- Renda do jogo: R$", mat.arredondar(rendaJogo, 2), "\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 919; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */