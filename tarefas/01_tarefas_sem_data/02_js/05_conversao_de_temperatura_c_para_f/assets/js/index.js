/**
 * Escreva uma função em JavaScript que realize a conversão de uma temperatura fornecida em graus Celsius (C) para Fahrenheit (F). 
 **/

function converteTemperaturaCparaF(temperatura_c) {
    return ((temperatura_c * 9 / 5) + 32);
}

let temperaturaRecebida_c = window.prompt('Informe uma temperatura em graus Celsius para convertê-la para graus Fahrenheit: ');

if (temperaturaRecebida_c === '') {
    alert('Campo vazio, informe um valor');
}
else if (temperaturaRecebida_c === null) {
    alert('Operação cancelada!');
}
else {
    temperaturaRecebida_c = Number(Number(temperaturaRecebida_c.replace(',', '.')).toFixed(2));
    const temperaturaConvertida_f = Number(converteTemperaturaCparaF(temperaturaRecebida_c).toFixed(2));
    console.log('Temperatura recebida ºC..:', temperaturaRecebida_c);
    console.log('Conversão de ºC para ºF...:', temperaturaConvertida_f);
}