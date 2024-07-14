
// Construa um algoritmo que leia 4 notas e mostre a média.

programa {
  funcao inicio() {
    real notas
    real somaNotas, mediaNotas
    inteiro quantidadeNotasReceber

    somaNotas = 0.0
    mediaNotas = 0.0
    quantidadeNotasReceber = 4

    escreva("\nEntre com 4 notas\n")
    
    para (inteiro i = 1; i <= quantidadeNotasReceber; i++)  {
      escreva("- Informe a ", i, "ª nota: ")
      leia(notas)
      somaNotas += notas
    }

    mediaNotas = somaNotas / quantidadeNotasReceber

    escreva("\nMédia das notas: ", mediaNotas, "\n")
  }
}
