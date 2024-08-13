
// Construa um algoritmo que leia 4 notas e mostre a média.

programa {
  funcao real preencheVetor(inteiro quantidadeNotasReceber) {
    real vetor[quantidadeNotasReceber]

    escreva("\nEntre com 4 notas\n")
  
    para (inteiro i = 0; i < quantidadeNotasReceber; i++)  {
      escreva("- Informe a ", (i + 1), "ª nota: ")
      leia(vetor[i])
    }

    retorne vetor
  }

  funcao real calculaSomaNotas(real vetor[], inteiro quantidadeNotasReceber) {
    real soma = 0.0

    para (inteiro i = 0; i < quantidadeNotasReceber; i++)  {
      soma += vetor[i]
    }

    retorne soma
  }

  funcao real calculaMedia(real somaNotas, inteiro quantidadeNotasReceber) {
    retorne somaNotas / quantidadeNotasReceber
  }

  funcao exibeResultado(inteiro quantidadeNotasReceber, real mediaNotas) {
    escreva("\nMédia das ", quantidadeNotasReceber, " notas: ", mediaNotas, "\n")
  }

  funcao inicio() {
    real somaNotas, mediaNotas
    inteiro quantidadeNotasReceber = 4
    real notas[quantidadeNotasReceber]   
    
    notas = preencheVetor(quantidadeNotasReceber)
    somaNotas = calculaSomaNotas(notas, quantidadeNotasReceber)
    mediaNotas = calculaMedia(somaNotas, quantidadeNotasReceber)

    exibeResultado(quantidadeNotasReceber, mediaNotas)
  }
}
