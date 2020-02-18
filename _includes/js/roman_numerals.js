'use strict';

function toRomanNumerals(number)
{
    return 'I'.repeat(number)
              .replace(/IIIII/g, 'V')
              .replace(/IIII/g,  'IV')
              .replace(/VV/g,    'X')
              .replace(/VIV/g,   'IX')
              .replace(/XXXXX/g, 'L')
              .replace(/XXXX/g,  'XL')
              .replace(/LL/g,    'C')
              .replace(/LXL/g,   'XC')
              .replace(/CCCCC/g, 'D')
              .replace(/CCCC/g,  'CD')
              .replace(/DD/g,    'M')
              .replace(/DCD/g,   'CM');
}

function changeInput(domElement, value = 0) {
    const romanNumeral = toRomanNumerals(value);
    domElement.textContent = romanNumeral ? romanNumeral : "...";
}

window.onload = (event) => {
    const domElement = document.getElementById("output");
    const input = document.getElementById("input1");
    
    input.addEventListener("input", function() {
        changeInput(domElement, input.value)
        }, false);
};