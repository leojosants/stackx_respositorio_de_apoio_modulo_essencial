
// Construa um algoritmo que leia 4 notas e mostre a m�dia.

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
      escreva("- Informe a ", i, "� nota: ")
      leia(notas)
      somaNotas += notas
    }

    mediaNotas = somaNotas / quantidadeNotasReceber

    escreva("\nM�dia das notas: ", mediaNotas, "\n")
  }
}
