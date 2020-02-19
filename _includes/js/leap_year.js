(function() {
'use strict';

function isLeap(year) 
{
    // Force conversion to boolean with Double NOT (!!)
    return !!(!(year % 400) || ((year % 100) && !(year % 4)));
}

function changeInput(domElement, value) 
{
    domElement.textContent = isLeap(value);
}

window.onload = (event) => {
    const domElement = document.getElementById("output");
    const input = document.querySelector("input");

    input.addEventListener("input", function() {
        changeInput(domElement, input.value ? 
            parseInt(input.value) : 
            2020)
    }, false);
};
})();