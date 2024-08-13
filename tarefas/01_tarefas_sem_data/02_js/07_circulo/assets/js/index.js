/**
 * Escreva uma função que encontre a área e o perímetro de um círculo, de acordo com o raio fornecido
 **/

function calculaAreaPerimetroCirculo(raio) {
    const PI = Number(Math.PI.toFixed(2));
    const area = PI * Math.pow(raio, 2);
    const perimetro = 2 * PI * raio;
    return { area, perimetro };
}

let raioRecebido = window.prompt('Informe o valor do raio e obtenha a área e o perímetro de um cículo: ');

if (raioRecebido === '') {
    alert('Campo vazio, informe o valor');
}
else if (raioRecebido === null) {
    alert('Operação cancelada!');
}
else {
    raioRecebido = Number(Number(raioRecebido.replace(',', '.')).toFixed(2));
    const areaCirculo = Number(calculaAreaPerimetroCirculo(raioRecebido).area.toFixed(2));
    const perimetroCirculo = Number(calculaAreaPerimetroCirculo(raioRecebido).perimetro.toFixed(2));
    console.log('Raio recebido.........:', raioRecebido, 'cm');
    console.log('Área do círculo.......:', areaCirculo, 'cm');
    console.log('Perímetro do círculo..:', perimetroCirculo, 'cm²');
}