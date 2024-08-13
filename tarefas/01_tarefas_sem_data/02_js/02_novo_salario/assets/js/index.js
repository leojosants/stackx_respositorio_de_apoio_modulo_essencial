/**
 * Faça um algoritmo que leia o salário de um funcionário, 
 * calcule e mostre o seu novo salário, com 15% de aumento.
 **/

let salarioRecebido = window.prompt('Informe o salário do funcionário para obter seu salário com 15% de aumento: R$ ');

if (salarioRecebido === '') {
    alert('Campo vazio, informe um valor');
}
else if (salarioRecebido === null) {
    alert('Operação cancelada!');
}
else {
    salarioRecebido = Number(Number(salarioRecebido.replace(',', '.')).toFixed(2));
    const valorAumento = Number((salarioRecebido * 0.15).toFixed(2));
    const SalarioFinal = Number(Number((salarioRecebido + valorAumento)).toFixed(2));
    console.log('Salário inicial...: R$', salarioRecebido);
    console.log('Valor do aumento..: R$', valorAumento);
    console.log('Salário final.....: R$', SalarioFinal);
}