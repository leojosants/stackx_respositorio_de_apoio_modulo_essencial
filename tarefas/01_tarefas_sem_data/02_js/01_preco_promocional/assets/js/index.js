/**
 * Crie um algoritmo que leia o preço de um produto, 
 * calcule e mostre o seu PREÇO PROMOCIONAL, com 5% de desconto.
 **/

let precoProdutoRecebido = window.prompt('Informe o preço do produto para obter seu preço promocional: R$ ');

if (precoProdutoRecebido === '') {
    alert('Campo vazio, informe um valor');
}
else if (precoProdutoRecebido === null) {
    alert('Operação cancelada!');
}
else {
    precoProdutoRecebido = Number(Number(precoProdutoRecebido.replace(',', '.')).toFixed(2));
    const valorDesconto = Number((precoProdutoRecebido * 0.05).toFixed(2));
    const valorPromocional = Number((precoProdutoRecebido - valorDesconto).toFixed(2));
    console.log('Preço do produto...: R$', precoProdutoRecebido);
    console.log('Valor do desconto..: R$', valorDesconto);
    console.log('Preço promocional..: R$', valorPromocional);
}