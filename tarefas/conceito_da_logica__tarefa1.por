
// Elabore um algoritmo que leia dois n�meros e mostre a soma deles.

programa {
  funcao inicio() {
    inteiro primeiroNumero
    inteiro segundoNumero
    inteiro resultadoSoma

    escreva("\nInforme o primeiro n�mero: ")
    leia(primeiroNumero)

    escreva("Informe o segundo n�mero: ")
    leia(segundoNumero)

    resultadoSoma = primeiroNumero + segundoNumero

    escreva("O resultado da soma entre ", primeiroNumero, " e ", segundoNumero, " � ", resultadoSoma, "\n")
  }
}
