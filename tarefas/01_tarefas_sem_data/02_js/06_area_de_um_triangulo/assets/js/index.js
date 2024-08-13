/**
 * Escreva uma função que retorne a área de um triângulo, a partir dos valores de base e altura fornecidos.
 **/

function calculaAreaTriangulo(base, altura) {
    return ((base * altura) / 2);
}

let baseRecebida = window.prompt('Informe o valor da base de um triângulo: ');
let alturaRecebida = window.prompt('Informe o valor da altura de um triângulo: ');

if (baseRecebida === '' || alturaRecebida === '') {
    alert('Campo(s) vazio(s), informe o(s) valor(s)');
}
else if (baseRecebida === null || alturaRecebida === null) {
    alert('Operação cancelada!');
}
else {
    baseRecebida = Number(Number(baseRecebida.replace(',', '.')).toFixed(2));
    alturaRecebida = Number(Number(alturaRecebida.replace(',', '.')).toFixed(2));
    const areaTriangulo = Number(calculaAreaTriangulo(baseRecebida, alturaRecebida).toFixed(2));
    console.log('Base recebida.......:', baseRecebida);
    console.log('Altura recebida.....:', alturaRecebida);
    console.log('Área do triângulo...:', areaTriangulo, 'cm²');
}