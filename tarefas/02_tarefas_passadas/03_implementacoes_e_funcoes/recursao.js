// Soma dos números inteiros de 1 a n
function somaNumeros(n) {
  if (n === 1) {
    return 1;
  }
  else {
    return n + somaNumeros(n - 1);
  }
}
// const result = somaNumeros(3); // retorna 6
// console.log('\nresultado', result);

// Verifica se um número é PAR
function ehPar(numero) {
  if (isNaN(numero)) {
    return;
  }

  if (numero === 0) {
    return true;
  }

  if (numero === 1) {
    return false;
  }

  return ehPar(numero - 2);
}
// ehPar(numero);

function fibonacci(n) {
  if (isNaN(n)) {
    return;
  }

  if (n < 0) {
    return;
  }

  if (n === 0 || n === 1) {
    return n;
  }

  return fibonacci(n - 1) + fibonacci(n - 2);
};
// console.log(fibonacci(10));

module.exports = { somaNumeros, ehPar, fibonacci };
