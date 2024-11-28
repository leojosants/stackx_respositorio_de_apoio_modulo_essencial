// Converte uma string para um número inteiro
function convertToInt(string) {
    // Sua implementação aqui
    if (string === undefined) return;
    return Number(string);
}
// console.log(typeof convertToInt());
// console.log(typeof convertToInt(3));
// console.log(typeof convertToInt('3'));


// Converte um número inteiro para uma string
function convertToString(number) {
    // Sua implementação aqui
    if (number === undefined) return;
    return String(number);
}
// console.log(typeof convertToString());
// console.log(typeof convertToString(3));
// console.log(typeof convertToString('3'));


// Converte um valor para um booleano
function convertToBoolean(value) {
    // Sua implementação aqui
    if (value === undefined) return;

    if (value === 0 || value === 1) {
        return Boolean(value);
    }
    else {
        return undefined;
    }
}
// console.log(typeof convertToBoolean(1));
// console.log(typeof convertToBoolean(0));
// console.log(convertToBoolean(1));
// console.log(convertToBoolean(0));


module.exports = { convertToInt, convertToString, convertToBoolean };