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

// frame base
function fibonacci(n) {
  if (n <= 1) {
    return 1;
  }
  return fibonacci(n - 1) + fibonacci(n - 2);
  //               9      +           8
};

// 0 1 2 3 4 5 6  7  8  9  10
// 1 1 2 3 5 8 13 21 34 55 89


// console.log(fibonacci(10));

module.exports = { somaNumeros, ehPar, fibonacci };






var fibonacci = function (n) {
  var a = 0, b = 1;
  for (var posicao = 2; posicao <= n; posicao++) {

    var f = a;
    console.log('anterior:', f);

    a = b;
    console.log('atual:', a);

    b += f;
    console.log('f+a:', f + a);
    console.log('posicao:', posicao);
  }
  return b;
};

console.log(fibonacci(10));