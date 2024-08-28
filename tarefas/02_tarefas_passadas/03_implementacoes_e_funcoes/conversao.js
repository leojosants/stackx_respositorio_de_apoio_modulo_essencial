// Converte uma string para um número inteiro
function convertToInt(string) {
    // Sua implementação aqui
    const dadoRecebido = string;
    // console.log('Tipo:', typeof dadoRecebido);

    const dadoRecebidoConvertido = parseInt(dadoRecebido);
    // console.log('Tipo:', typeof dadoRecebidoConvertido);
}
convertToInt('ddd');

// Converte um número inteiro para uma string
function convertToString(number) {
    // Sua implementação aqui
    const dadoRecebido = number;
    // console.log('Tipo:', typeof dadoRecebido);

    const dadoRecebidoConvertido = toString(dadoRecebido);
    // console.log('Tipo:', typeof dadoRecebidoConvertido);
}
convertToString(2);

// Converte um valor para um booleano
function convertToBoolean(value) {
    // Sua implementação aqui
     const dadoRecebido = value;
    //  console.log('Tipo:', typeof dadoRecebido);
 
     const dadoRecebidoConvertido = Boolean(dadoRecebido);
    //  console.log('Tipo:', typeof dadoRecebidoConvertido);
}
convertToBoolean(4);

module.exports = { convertToInt, convertToString, convertToBoolean };