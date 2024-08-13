/**
 * Faça um programa JavaScript em que o usuário informará a sua idade 
 * e o algoritmo emitirá uma mensagem dizendo se o usuário é ou não menor de idade.
 **/

function verificaMaioridade(idade) {
    const maioridadeCivil = 18;
    let mensagem = null;
    
    if (idade<maioridadeCivil) {
        mensagem = 'menor de idade';
    }
    else {
        mensagem = 'maior de idade';
    }

    return mensagem;
}

let idadeRecebida = window.prompt('Informe a idade e verifique sua maioridade cívil: ');

if (idadeRecebida === '') {
    alert('Campo vazio, informe a idade.');
}
else if (idadeRecebida === null) {
    alert('Operação cancelada!');
}
else {
    idadeRecebida = Number(Number(idadeRecebida.replace(',', '.')).toFixed(2));
    const resultadoMaioridade = verificaMaioridade(idadeRecebida);
    console.log('Idade recebida........:', idadeRecebida);
    console.log('Resultado maioridade..:', resultadoMaioridade)
}