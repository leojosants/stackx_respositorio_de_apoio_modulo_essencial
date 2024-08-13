/**
 * Escreva uma função que retorne o cubo de um número fornecido pelo usuário. 
 **/

let numeroRecebido = window.prompt('Informe um número para obter seu cubo: ');

if (numeroRecebido === '') {
    alert('Campo vazio, informe um valor');
}
else if (numeroRecebido === null) {
    alert('Operação cancelada!');
}
else {
    numeroRecebido = Number(Number(numeroRecebido.replace(',', '.')).toFixed(2));
    const cuboNumeroRecebido = Number(Math.pow(numeroRecebido, 3).toFixed(2));
    console.log('Número recebido..........:', numeroRecebido);
    console.log('Cubo do número recebido..:', cuboNumeroRecebido);
}