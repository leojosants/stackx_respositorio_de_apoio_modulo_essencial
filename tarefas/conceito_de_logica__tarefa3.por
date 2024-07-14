
// Desenvolva um algoritmo que receba dois valores numéricos inteiros, calcule e mostre a soma do quadrado desses dois números.

programa {
  inclua biblioteca Matematica

  funcao inicio() {
    inteiro primeiroValor, segundoValor
    inteiro quadradoPrimeiroValor, quadradoSegundoValor
    inteiro somaQuadadros    

    escreva("\nEntre com dois valores numéricos inteiros\n")

    escreva("- Informe o primeiro valor: ")
    leia(primeiroValor)

    escreva("- Informe o segundo valor: ")
    leia(segundoValor)

    quadradoPrimeiroValor = Matematica.potencia(primeiroValor, 2)
    quadradoSegundoValor = Matematica.potencia(segundoValor, 2)
    somaQuadadros = quadradoPrimeiroValor + quadradoSegundoValor

    escreva("\nSoma do quadrado dos valores: ", somaQuadadros, "\n")
  }
}
