
// Desenvolva um algoritmo que receba uma quantidade de um alimento em quilos,
// calcule e mostre quantos dias durará esse alimento para uma pessoa que consome 50 gramas desse alimento por dia.

programa {

  funcao real solicitaQuantidadeAlimentoEmKg() {
    real quantidade

    escreva("\nEntre com a quantidade de um alimento em quilos: ")
    leia(quantidade)

    retorne quantidade
  }

  funcao real converteKgEmGramas(real gramas) {
    retorne gramas * 1000
  }

  funcao real calculaDuracaoAlumentoEmDias(real consumoEmGramas, real consumoDiarioEmGramas) {
    retorne consumoEmGramas / consumoDiarioEmGramas
  }

  funcao exibeResultado(real quantidadeAlimentoEmKg, inteiro duracaoAlimentoEmDias) {
    escreva("Para a quantidade de ", quantidadeAlimentoEmKg, "kg em alimento, a duração será de ", duracaoAlimentoEmDias, " dias\n")
  }

  funcao inicio() {
    real quantidadeAlimentoEmKg
    real consumoDiarioEmGramas_50
    real consumoEmGramas
    inteiro duracaoAlimentoEmDias
    
    consumoDiarioEmGramas_50 = 50
    quantidadeAlimentoEmKg = solicitaQuantidadeAlimentoEmKg()
    consumoEmGramas = converteKgEmGramas(quantidadeAlimentoEmKg)
    duracaoAlimentoEmDias = calculaDuracaoAlumentoEmDias(consumoEmGramas, consumoDiarioEmGramas_50)

    exibeResultado(quantidadeAlimentoEmKg, duracaoAlimentoEmDias)
  }
}
