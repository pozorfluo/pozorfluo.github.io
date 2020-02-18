'use strict';

function fizzbuzz(number) {
    const result = [`${number}`,
                    "fizz",
                    "buzz",
                    "fizzbuzz"];

    return result[!(number % 3) + !(number % 5) * 2];
}

function changeInput(domElement, value) {
    domElement.textContent = value ? fizzbuzz(value) : "...";
}

window.onload = (event) => {
    const domElement = document.getElementById("output");
    const input = document.querySelector('input');

    input.addEventListener('input', function() {
        changeInput(domElement, parseInt(input.value))
    }, false);
};