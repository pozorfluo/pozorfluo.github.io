'use strict';

function hamming(strand1, strand2) {
    let differences = 0;
    const length = strand1.length;

    for (let i = 0; i < length; i++) {
        if (strand1[i] !== strand2[i]) { differences++;}
    }
    return differences;
}

function changeInput(domElement, value1, value2) {
    domElement.textContent = (value1.length == value2.length ) ? 
        hamming(value1.toLowerCase(), value2.toLowerCase()) :
        "strands must be of equal length.";
}

window.onload = (event) => {
    const domElement = document.getElementById("output");
    const input1 = document.getElementById("input1");
    const input2 = document.getElementById("input2");

    document.querySelectorAll("pre code").forEach((block) => {
        hljs.highlightBlock(block);
    });

    document.querySelectorAll("input").forEach((element) => {
        element.addEventListener("input", function() {
            changeInput(domElement, input1.value, input2.value)
        }, false);
    });
};