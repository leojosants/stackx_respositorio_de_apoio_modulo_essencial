/* - - - - - - - - - - global - - - - - - - - - - */
const readline = require('readline');
const fileSystem = require('fs');
const EventEmitter = require('events');
const eventEmitter = new EventEmitter();

const leitor = readline.createInterface(
    {
        input: process.stdin,
        output: process.stdout,
    }
);

/* - - - - - - - - - - funções - - - - - - - - - - */
function programaPrincipal() {

    // - Peça o caminho de um arquivo txt do seu computador;
    leitor.question('\nDigite o caminho do arquivo [exemplo.txt]: ', (caminho_do_arquivo) => {

        // otimizado trecho
        const caminho_tratado = caminho_do_arquivo.replaceAll(" ", "")
            .replace(/[0-9]/g, '')
            .toLowerCase()
            .trim();

        // - Quanto tempo demorou a execução;
        console.time('-> Quanto tempo demorou a execução');

        async function lerArquivo() {
            await fileSystem.readFile(caminho_tratado, 'utf8', (erro, dados) => {
                if (erro) {
                    console.log('-> erro, arquivo não encontrado!');
                    leitor.close();
                    return;
                }

                const linhas_do_arquivo = dados.split(/\r?\n/);
                let total_linhas_somente_numeros = 0;
                let total_somente_numeros_na_linha = 0;
                let total_linhas_texto = 0;
                const numeros_arquivo = [];

                for (let indice = 0; indice < linhas_do_arquivo.length; indice++) {

                    // verifica se a string possui somente numero
                    if (/^\d+$/.test(linhas_do_arquivo[indice])) {
                        total_linhas_somente_numeros++;
                        total_somente_numeros_na_linha += Number(linhas_do_arquivo[indice]);
                    }

                    // verifica se a string NÃO possui somente numero
                    if (!(/^\d+$/.test(linhas_do_arquivo[indice]))) {
                        total_linhas_texto++;
                    }

                    // elimina todos os caracteres não numeros
                    numeros_arquivo.push(Number(linhas_do_arquivo[indice].replace(/[^0-9]/g, '')));
                }

                const soma_numeros = numeros_arquivo.reduce((acumulador, valor) => acumulador + valor);

                // otimizado trecho
                const resumo = {
                    total_linhas_somente_numeros,
                    total_somente_numeros_na_linha,
                    total_linhas_texto,
                    soma_numeros,
                    caminho_tratado,
                };

                // O resumo deverá ser disparado por EVENTO:
                eventEmitter.emit('exibirResumo', resumo);

                // - Quanto tempo demorou a execução;
                console.timeEnd('-> Quanto tempo demorou a execução');

                // - Pergunte se deseja executar novamente.
                solicitarPerguntaNovaExecucao();
            });
        }

        lerArquivo();
    });
}

function exibirResumo(resumo) {
    console.log(`\n-> Resumo do arquivo '${resumo.caminho_tratado}'`);
    console.table([
        ['Conte quantas linhas possuem somente números', resumo.total_linhas_somente_numeros],
        ['Soma dos números destas linhas', resumo.total_somente_numeros_na_linha],
        ['Quantas linhas possuem texto', resumo.total_linhas_texto],
        ['Soma dos números dentro deste arquivo', resumo.soma_numeros],
        ['Quantas linhas continham texto', resumo.total_linhas_texto],
    ]);
}

function solicitarPerguntaNovaExecucao() {
    leitor.question('\nQuer executar novamente [S/N]? ', (resposta) => {

        // otimizado trecho
        const resposta_tratada = resposta.replaceAll(" ", "")
            .replace(/[0-9]/g, '')
            .toUpperCase()
            .trim()
            .charAt(0);

        if (resposta_tratada === 'S') {
            eventEmitter.emit('recebeuRespostaSim');
        }
        else if (resposta_tratada === 'N') {
            eventEmitter.emit('recebeuRespostaNao');
        }
        else {
            eventEmitter.emit('recebeuRespostaInvalida');
        }
    });
}

function processarRespostaNao() {
    console.log('Programa finalizado!');
    leitor.close();
}

function processarRespostaInvalida() {
    console.log('Responda somente [S/N]');
    solicitarPerguntaNovaExecucao();
}

function executarProgramaPrincipal() {
    programaPrincipal();
}

/* - - - - - - - - - - eventos - - - - - - - - - - */
eventEmitter.on('exibirResumo', (resumo) => {
    exibirResumo(resumo);
});

eventEmitter.on('recebeuRespostaSim', () => {
    executarProgramaPrincipal();
});

eventEmitter.on('recebeuRespostaNao', () => {
    processarRespostaNao();
});

eventEmitter.on('recebeuRespostaInvalida', () => {
    processarRespostaInvalida();
});

/* - - - - - - - - - - programa principal - - - - - - - - - - */
executarProgramaPrincipal();