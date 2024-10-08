// Calcula o perímetro e a área de um retângulo
function calcularRetangulo(retangulo) {
    // Sua implementação aqui
    // P = 2(b+h)
    const perimetro = 2 * (retangulo.largura + retangulo.altura);

    // A = b*h
    const area = retangulo.largura * retangulo.altura;

    console.log(`Perímetro..: ${perimetro.toFixed(2)}cm²`);
    console.log(`Área.......: ${area.toFixed(2)}cm²`);
}

const retangulo = {
    largura: 2.3,
    altura: 3.4,
};

// calcularRetangulo(retangulo);

// Verifica se uma pessoa é maior de idade
function ehAdulto(pessoa) {
    // Sua implementação aqui

    let mensagem = '';
    const idadeElegivel = 18;

    if (pessoa.idade >= idadeElegivel) {
        mensagem = 'É maior de idade.';
    }
    else {
        mensagem = 'Não é maior de idade.';
    }

    console.log(`Mensagem: ${mensagem}`);
}


const pessoa = {
    nome: 'John',
    idade: 25,
    cidade: 'New York',
};
// ehAdulto(pessoa);


// Concatena os valores de um objeto em uma string
function concatenaValores(obj) {
    // Sua implementação aqui
    const mensagem = `A linguagem ${obj.linguagem} é regulada pela ${obj.especificacao}.`;
    console.log(mensagem);
}

const obj = {
    linguagem: 'JavaScript',
    especificacao: 'ECMAScript',
};

concatenaValores(obj);

module.exports = { calcularRetangulo, ehAdulto, concatenaValores };