(function() {
'use strict';

function toRomanNumerals(numberString)
{
    // Group symbols by "exponent"
    const lut = [
        ['', 'I', 'II', 'III', 'IV', 'V', 'VI', 'VII', 'VIII', 'IX'], // E0
        ['', 'X', 'XX', 'XXX', 'XL', 'L', 'LX', 'LXX', 'LXXX', 'XC'], // E1
        ['', 'C', 'CC', 'CCC', 'CD', 'D', 'DC', 'DCC', 'DCCC', 'CM'], // E2
        // ['M']                                                      // E3
    ];

    const digitCount = numberString.length - 1;

    let roman = '';

    for (let i = 0; i <= digitCount; i++) {
        const exponent = digitCount - i;

        if( exponent < 3 ) {
            roman += lut[exponent][numberString[i]];
        }
    }

    // Bundle all digits above E2
    if ( digitCount >= 3)    {
        roman = 'M'.repeat(numberString.slice(0,-3)) + roman;
    }

    return roman;
}


/**
 * Split input between non-digit and digits into array of strings
 * For each entry in array of strings
 *   If entry represents a number process toRomanNumerals
 * Update DOM with joined array of strings
 */
function changeInput(domElement, input) 
{
    // Capture separator matches to splice them in output array
    let inputArray = input.split(/(\D+)/);
    
    for (const [index, element] of inputArray.entries()) {
        // Assert string COULD BE a number and is NOT '' or ' '
        if (!(isNaN(parseInt(element)))) { 
            inputArray[index] = toRomanNumerals(element);
        };
    }

    const result = inputArray.join('');
    domElement.textContent = result ? result : "...";
}

window.onload = (event) => {
    const domElement = document.getElementById("output");
    const input = document.getElementById("input1");
    
    input.addEventListener("input", function() {
        changeInput(domElement, input.value)
        }, false);
};
})();