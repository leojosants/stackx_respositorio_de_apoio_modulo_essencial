/**
 *  Escreva um programa, que receba o raio de um cilindro, e a sua altura, e exiba o valor do seu volume.
 **/

function calculaVolumeCilindro(raio, altura) {
    const PI = Number(Math.PI.toFixed(2));
    const volume = PI * Math.pow(raio, 2) * altura;
    return volume;
}

function validaValorEntrada(valor) {
    let valorEhValido = true;

    if (valor === 0) {
        alert('Campo vazio ou operação cancelada!');
        valorEhValido = false;
    }
    else if (isNaN(valor)) {
        alert('Informe somente digitos numéricos, separados por ponto!');
        valorEhValido = false;
    }

    return valorEhValido
}

let raioCilindro = null;
let alturaCilindro = null;
let volumeCilindro = null;

alert('Informe o valor do raio e a altura de um cilindro e obtenha seu volume.')

raioCilindro = Number(window.prompt('Digite o valor do raio[cm] do cilindro, se necessario separar por ponto: '));

if (validaValorEntrada(raioCilindro)) {
    alturaCilindro = Number(window.prompt('Digite o valor do altura[cm] do cilindro, se necessario separar por ponto: '));

    if (validaValorEntrada(alturaCilindro)) {
        volumeCilindro = calculaVolumeCilindro(raioCilindro, alturaCilindro);
        volumeCilindro = volumeCilindro.toFixed(2);
        alert(`Volume do cilindro: ${volumeCilindro}cm²`);
    }
}