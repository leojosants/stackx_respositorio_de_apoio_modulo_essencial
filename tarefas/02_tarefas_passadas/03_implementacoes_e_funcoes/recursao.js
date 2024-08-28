// Soma dos números inteiros de 1 a n
function somaNumeros(n) {
  if (n === 0) {
    return 0;
  }
  else {
    return n + somaNumeros(n - 1);
  }
}
// const result = somaNumeros(3); // retorna 6
// console.log('\nresultado', result);

// Verifica se um número é PAR
function ehPar(numero) {
  if (numero === 0) {
    return true;
  }
  else if (numero === 1) {
    return false;
  }
  else {
    return ehPar(numero - 2);
  }
}
// ehPar(numero);

function fibonacci(n) {
  if (n <= 1) {
    return 1;
  }
  return fibonacci(n - 1) + fibonacci(n - 2);
};
// console.log(fibonacci(10));

module.exports = { somaNumeros, ehPar, fibonacci };