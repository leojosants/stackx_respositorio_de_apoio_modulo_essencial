/*
	Construa um algoritmo que calcule a média aritmética das 3 notas dos alunos de uma classe. 
	O algoritmo deverá ler, além das notas, o código (de três dígitos) do aluno e deverá ser encerrado quando o código for igual a zero.
*/

programa {	
	inclua biblioteca Matematica --> mat
	inclua biblioteca Texto --> tx

	funcao vazio mensagemInicial() {
		escreva("\nEntre com 3 notas e o código com 3 dígitos [xxx] para um aluno\n")
	}

	funcao cadeia solicitaCodigoAluno(cadeia codigoAluno) {
		escreva("\nInforme o código com 3 dígitos [xxx] ou [0] para finalizar: ")
		leia(codigoAluno)
		retorne codigoAluno
	}

	funcao inteiro verificaQuantidadeDigitosCodigo(cadeia codigoAluno) {
		retorne tx.numero_caracteres(codigoAluno)
	}
	
	funcao vazio exibeMensagemErroDigitos() {
		escreva("\n --> ERRO: quantidade de dígitos diferente de 3, tente novamente!\n")
	}

	funcao real solicitaNotaAluno(inteiro contador, real notaAluno) {
		escreva("- ", contador, "ª nota..: ")
		leia(notaAluno)
		retorne notaAluno
	}

	funcao real formataValor(real valor, inteiro casasDecimais) {
		retorne mat.arredondar(valor, casasDecimais)
	}

	funcao real calculaMediaAluno(real somaNotasAluno, inteiro quantidadeNotas) {
		retorne (somaNotasAluno / quantidadeNotas)
	}

	funcao vazio exibeMedia(real mediaAluno) {
		escreva("- Média....: ", mediaAluno, "\n")
	}

	funcao vazio mensagemEncerraPrograma() {
		escreva("\nOpção [0], finalizar programa!\n")
	}
	
	funcao executaProgramaPrincipal() {
		cadeia codigoAluno = ""
		real notaAluno = 0.0
		real mediaAluno = 0.0
		real somaNotasAluno = 0.0
		inteiro quantidadeDigitosCodigo = 0
		
		mensagemInicial()

		faca {
			codigoAluno = solicitaCodigoAluno(codigoAluno)

			quantidadeDigitosCodigo = verificaQuantidadeDigitosCodigo(codigoAluno)
			
			enquanto((quantidadeDigitosCodigo != 3) e (codigoAluno != "0")) {
				exibeMensagemErroDigitos()
				codigoAluno = solicitaCodigoAluno(codigoAluno)
				quantidadeDigitosCodigo = verificaQuantidadeDigitosCodigo(codigoAluno)
			}

			se(codigoAluno != "0") {
				inteiro quantidadeNotas = 3
				escreva("\nInforme ", quantidadeNotas," notas para o código: ", codigoAluno, "\n")
				
				para(inteiro contador = 1; contador <= quantidadeNotas; contador ++) {
					notaAluno = solicitaNotaAluno(contador, notaAluno)
					notaAluno = formataValor(notaAluno, 2)
					
					somaNotasAluno += notaAluno
					somaNotasAluno = formataValor(somaNotasAluno, 2)
				}

				mediaAluno = calculaMediaAluno(somaNotasAluno, quantidadeNotas)
				mediaAluno = formataValor(mediaAluno, 2)

				exibeMedia(mediaAluno)
			}
			senao {
				mensagemEncerraPrograma()
			}
		}
		enquanto(codigoAluno != "0")
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
 * @POSICAO-CURSOR = 801; 
 * @DOBRAMENTO-CODIGO = [9, 19, 27, 33, 41, 45];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */