
// Desenvolva um algoritmo que receba dois valores num�ricos inteiros, calcule e mostre a soma do quadrado desses dois n�meros.

programa {
  inclua biblioteca Matematica

  funcao inicio() {
    inteiro primeiroValor, segundoValor
    inteiro quadradoPrimeiroValor, quadradoSegundoValor
    inteiro somaQuadadros    

    escreva("\nEntre com dois valores num�ricos inteiros\n")

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
