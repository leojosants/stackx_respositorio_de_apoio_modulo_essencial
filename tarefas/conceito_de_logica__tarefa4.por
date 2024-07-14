
// Desenvolva um algoritmo que receba uma quantidade de um alimento em quilos,
// calcule e mostre quantos dias durará esse alimento para uma pessoa que consome 50 gramas desse alimento por dia.

programa {
  funcao real converteKgEmGramas(real gramas) {
    retorne gramas * 1000
  }

  funcao inicio() {
    real quantidadeAlimentoEmKg
    real consumoDiarioEmGramasDia
    real consumoEmGramas
    inteiro duracaoAlimentoEmDias
    
    consumoDiarioEmGramasDia = 50

    escreva("\nEntre com a quantidade de um alimento em quilos: ")
    leia(quantidadeAlimentoEmKg)

    consumoEmGramas = converteKgEmGramas(quantidadeAlimentoEmKg)
    duracaoAlimentoEmDias = consumoEmGramas / consumoDiarioEmGramasDia

    escreva("Para a quantidade de ", quantidadeAlimentoEmKg, "kg em alimento, a duração será de ", duracaoAlimentoEmDias, " dias\n")
  }
}
