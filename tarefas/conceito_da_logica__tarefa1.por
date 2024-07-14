
// Elabore um algoritmo que leia dois números e mostre a soma deles.

programa {
  funcao inicio() {
    inteiro primeiroNumero
    inteiro segundoNumero
    inteiro resultadoSoma

    escreva("\nInforme o primeiro número: ")
    leia(primeiroNumero)

    escreva("Informe o segundo número: ")
    leia(segundoNumero)

    resultadoSoma = primeiroNumero + segundoNumero

    escreva("O resultado da soma entre ", primeiroNumero, " e ", segundoNumero, " é ", resultadoSoma, "\n")
  }
}
