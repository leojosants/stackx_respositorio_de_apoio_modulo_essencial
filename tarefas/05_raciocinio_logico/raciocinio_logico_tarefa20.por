/*
	Construa um algoritmo que calcule a média aritmética das 3 notas dos alunos de uma classe. 
	O algoritmo deverá ler, além das notas, o código (de três dígitos) do aluno e deverá ser encerrado quando o código for igual a zero.
*/

programa {	
	inclua biblioteca Matematica --> mat
	inclua biblioteca Texto --> tx
	
	funcao inicio() {
		cadeia codigoAluno = ""
		real somaNotasAluno = 0.0
		real notaAluno = 0.0
		real mediaAluno = 0.0
		inteiro quantidadeDigitosCodigo = 0
		
		escreva("\nEntre com 3 notas e o código com 3 dígitos [xxx] para um aluno\n")

		faca {
			escreva("\nInforme o código com 3 dígitos [xxx] ou [0] para finalizar: ")
			leia(codigoAluno)

			quantidadeDigitosCodigo = tx.numero_caracteres(codigoAluno)
			
			enquanto(quantidadeDigitosCodigo != 3 e codigoAluno != "0") {
				escreva("\n--> erro: informe somente 3 dígitos para o código do aluno, tente novamente: ")
				leia(codigoAluno)

				quantidadeDigitosCodigo = tx.numero_caracteres(codigoAluno)
			}

			se(codigoAluno != "0") {
				escreva("\nInforme 3 notas para o código: ", codigoAluno, "\n")
				
				para(inteiro contador = 1; contador <= 3; contador ++) {
					escreva("- ", contador, "ª nota..: ")
					leia(notaAluno)

					notaAluno = mat.arredondar(notaAluno, 2)
					
					somaNotasAluno += notaAluno
					somaNotasAluno = mat.arredondar(somaNotasAluno, 2)
				}

				mediaAluno = (somaNotasAluno / 3)
				mediaAluno = mat.arredondar(mediaAluno, 2)

				escreva("- Média....: ", mediaAluno, "\n")
			}
			senao {
				escreva("\nOpção [0], finalizar programa!\n")
			}
		}
		enquanto(codigoAluno != "0")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 625; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */