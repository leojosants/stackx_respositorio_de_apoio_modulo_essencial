/**
 * Faça um programa JavaScript em que o usuário informará sua altura e peso 
 * e o programa calculará o seu IMC.
 **/

function calculaIMC(altura, peso) {
    const formulaIMC = peso / (altura * altura);
    return formulaIMC;
}

let alturaRecebida = window.prompt('Informe a altura [cm]: ');
let pesoRecebido = window.prompt('Informe o peso [cm]: ');

if (alturaRecebida === '' || pesoRecebido === '') {
    alert('Campo(s) vazio(s), informe o(s) valor(s).');
}
else if (alturaRecebida === null || pesoRecebido === null) {
    alert('Operação cancelada para um(s) valor(s)!');
}
else {
    alturaRecebida = Number(Number(alturaRecebida.replace(',', '.')).toFixed(2));
    pesoRecebido = Number(Number(pesoRecebido.replace(',', '.')).toFixed(2));
    const resultadoIMC = Number(calculaIMC(alturaRecebida, pesoRecebido).toFixed(2));
    console.log('Altura recebida..:', alturaRecebida, 'cm');
    console.log('Peso recebida....:', pesoRecebido, 'kg');
    console.log('Resultado IMC....:', resultadoIMC)
}