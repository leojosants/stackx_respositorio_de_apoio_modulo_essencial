
// Elabore um algoritmo que leia dois números e mostre a soma deles.

programa {
  funcao real solicitaNumeros(inteiro posicao) {
    real numero

    escreva("- Informe o ", posicao, "° número: ")
    leia(numero)

    retorne numero
  }

  funcao exibeResultado(inteiro primeiroNumero, inteiro segundoNumero, inteiro resultadoSoma) {
    escreva("\nO resultado da soma entre ", primeiroNumero, " e ", segundoNumero, " é ", resultadoSoma, "\n")
  }

  funcao inicio() {
    inteiro primeiroNumero
    inteiro segundoNumero
    inteiro resultadoSoma

    escreva("\nEntre com dois números\n")

    primeiroNumero = solicitaNumeros(1)
    segundoNumero = solicitaNumeros(2)
    resultadoSoma = primeiroNumero + segundoNumero

    exibeResultado(primeiroNumero, segundoNumero, resultadoSoma)
  }
}
