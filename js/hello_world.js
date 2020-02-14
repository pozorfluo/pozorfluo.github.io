function sayHello(domElement, name) {
    domElement.textContent = `Hello, ${name}!`;
}

window.onload = (event) => {
    const domElement = document.getElementById("output");
    const input = document.querySelector('input');

    document.querySelectorAll('pre code').forEach((block) => {
        hljs.highlightBlock(block);
    });
    
    input.addEventListener('input', function() {
        sayHello(domElement, input.value ? input.value : 'World')
        }, false);
};