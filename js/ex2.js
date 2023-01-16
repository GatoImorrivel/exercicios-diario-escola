//2) Formate a variável “numero” para o seguinte formato: “(XX)_X_XXXX-XXXX”

var numero = "5(1)9-876-543-21";

// Regex para selecionar quaisquer caracter que não
// seja um numero
let mascara = /[^0-9]/g;

// Remove os caracteres que não se encaixam no regex
let numeroSanitizado = numero.replace(mascara, "");

// (XX) X XXXX-XXXX
let dd = numeroSanitizado.substring(0, 2);
let numeroExtra = numeroSanitizado.charAt(2);
let esquerda = numeroSanitizado.substring(3, 7);
let direita = numeroSanitizado.substring(7, 11);

let numeroFormatado = `(${dd}) ${numeroExtra} ${esquerda}-${direita}`;

console.log(numeroFormatado);
