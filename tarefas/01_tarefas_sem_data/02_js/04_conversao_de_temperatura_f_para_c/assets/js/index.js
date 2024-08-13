/**
 * Escreva uma função em JavaScript que realize a conversão de uma temperatura fornecida em graus Fahrenheit (F) para Celsius (C). 
 **/

function converteTemperaturaFparaC(temperatura_f) {
    return ((temperatura_f - 32) * 5 / 9);
}

let temperaturaRecebida_f = window.prompt('Informe uma temperatura em graus Fahrenheit para convertê-la para graus Celsius: ');

if (temperaturaRecebida_f === '') {
    alert('Campo vazio, informe um valor');
}
else if (temperaturaRecebida_f === null) {
    alert('Operação cancelada!');
}
else {
    temperaturaRecebida_f = Number(Number(temperaturaRecebida_f.replace(',', '.')).toFixed(2));
    const temperaturaConvertida_c = Number(converteTemperaturaFparaC(temperaturaRecebida_f).toFixed(2));
    console.log('Temperatura recebida ºF..:', temperaturaRecebida_f);
    console.log('Conersão de ºF para ºC...:', temperaturaConvertida_c);
}