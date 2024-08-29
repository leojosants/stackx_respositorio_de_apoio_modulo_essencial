// Retorna o dia da semana correspondente a um número
function retornaDiaSemana(number) {

    // Sua implementação aqui
    let diaSemana = '';

    switch (number) {
        case 1:
            diaSemana = 'Domingo';
            break;

        case 2:
            diaSemana = 'Segunda-feira';
            break;

        case 3:
            diaSemana = 'Terça-feira';
            break;

        case 4:
            diaSemana = 'Quarta-feira';
            break;

        case 5:
            diaSemana = 'Quinta-feira';
            break;

        case 6:
            diaSemana = 'Sexta-feira';
            break;

        case 7:
            diaSemana = 'Sábado';
            break;

        default:
            diaSemana = 'Número inválido';
            break;
    }

    return `Número.........: ${number} \nDia da semana..: ${diaSemana}`;
}

// Retorna o preço do produto com base no código de produto
function retornaPrecoProduto(code) {
    // Sua implementação aqui
    let preco = 0;
    let codigoInvalido = '';

    switch (code.toUpperCase()) {
        case 'A':
            preco = 10.99;
            break;

        case 'B':
            preco = 5.99;
            break;

        case 'C':
            preco = 7.5;
            break;

        default:
            codigoInvalido = 'Inválido';
            break;
    }

    if (codigoInvalido.length > 0) {
        return `Código..: ${code.toUpperCase()} \nPreço...: ${codigoInvalido.toUpperCase()}`;
    }

    return `Código.: ${code.toUpperCase()} \nPreço..: R$${preco.toFixed(2)}`;
}

// Retorna a categoria do produto com base no tipo de produto
function retornaCategoriaProduto(type) {
    // Sua implementação aqui
    let categoria = '';

    switch (type.toLowerCase()) {
        case 'eletrônicos':
        case 'eletronicos':
            categoria = 'Tecnologia';
            break;

        case 'roupas':
            categoria = 'Moda';
            break;

        case 'alimentos':
            categoria = 'Alimentação';
            break;

        default:
            categoria = 'Categoria desconhecida';
            break;
    }

    return `Produto....: ${type.toUpperCase()} \nCategoria..: ${categoria.toUpperCase()}`;
}

module.exports = { retornaDiaSemana, retornaPrecoProduto, retornaCategoriaProduto };
