// Implemente a função 'dobrarNumeros' que recebe um array de números
// e retorna um novo array com cada número dobrado.
function dobrarNumeros(numeros) {
    // Sua implementação aqui
    const numerosDobrados = numeros.map((numero) => numero * 2);
    return numerosDobrados;
}
const numeros = [10, 20, 30, 40, 50];
dobrarNumeros(numeros);


// Implemente a função 'somarValores' que recebe um array de números
// e retorna a soma de todos os valores.
function somarValores(numeros2) {
    // Sua implementação aqui
    const soma = numeros2.reduce((numero, acumulador) => acumulador + numero, 0);
    return soma;
}
const numeros2 = [10, 20, 30, 40, 50];
somarValores(numeros2);


// Implemente a função 'filtrarPares' que recebe um array de números
// e retorna um novo array contendo apenas os números pares.
function filtrarPares(numeros3) {
    // Sua implementação aqui
    const numerosPares = numeros3.filter((numero) => {
        if (numero % 2 === 0) return numero;
    });

    return numerosPares;
}
const numeros3 = [1, 2, 3, 4, 5];
filtrarPares(numeros3);


module.exports = { dobrarNumeros, somarValores, filtrarPares };