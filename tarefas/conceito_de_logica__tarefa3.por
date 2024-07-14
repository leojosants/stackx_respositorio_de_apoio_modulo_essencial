
// Desenvolva um algoritmo que receba dois valores numéricos inteiros, 
// calcule e mostre a soma do quadrado desses dois números.

programa {
  inclua biblioteca Matematica

  funcao real solicitaNumeros(inteiro posicao) {
    real numero
        
    escreva("- Informe o ", posicao, "° número: ")
    leia(numero)

    retorne numero
  }

  funcao inteiro calculaPotencia(inteiro valor) {
    retorne Matematica.potencia(valor, 2)
  }

  funcao inteiro calculaSomaQuadrados(inteiro quadradoPrimeiroValor, inteiro quadradoSegundoValor) {
    retorne quadradoPrimeiroValor + quadradoSegundoValor
  }

  funcao exibeResultado(inteiro somaQuadadros) {
    escreva("\nSoma do quadrado dos valores: ", somaQuadadros, "\n")
  }

  funcao inicio() {
    inteiro primeiroValor, segundoValor
    inteiro quadradoPrimeiroValor, quadradoSegundoValor
    inteiro somaQuadadros    

    escreva("\nEntre com dois valores numéricos inteiros\n")

    primeiroValor = solicitaNumeros(1)
    segundoValor = solicitaNumeros(2)
    quadradoPrimeiroValor = calculaPotencia(primeiroValor)
    quadradoSegundoValor = calculaPotencia(segundoValor)
    somaQuadadros = calculaSomaQuadrados(quadradoPrimeiroValor, quadradoSegundoValor)

    exibeResultado(somaQuadadros)
  }
}
