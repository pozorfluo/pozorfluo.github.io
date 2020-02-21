---
layout : exercises
title : "Roman Numerals LUT"
fakename : "roman_numerals_lut.html"
script : "roman_numerals_lut.js"
caption : |
    ### Exponent and lookup table

    I came across a [variation](https://www.codewars.com/kata/roman-numerals-encoder/java) on the wording of this assignement that suggests to consider each
    digit of the given decimal number according to its decimal place :

    > ... in Roman numerals 1990 is rendered: 1000=M, 900=CM, 90=XC;  
    > <cite>some place on the web</cite>  

    <br/>
    So I tried to express what happens at each decimal place in a lookup table :   

    ```javascript
    // Group symbols by "exponent"
    const lut = [
        ['I', 'II', 'III', 'IV', 'V', 'VI', 'VII', 'VIII', 'IX'], // E0
        ['X', 'XX', 'XXX', 'XL', 'L', 'LX', 'LXX', 'LXXX', 'XC'], // E1
        ['C', 'CC', 'CCC', 'CD', 'D', 'DC', 'DCC', 'DCCC', 'CM'], // E2
        ['M']                                                     // E3
    ];
    ```  

    Laid out like above the patterns of symbols become noticeable and could
    be restated as follow :

    ```javascript
    // Group symbols by "exponent"
    const symbols = [
        [ 'I', 'V', 'X'],  // E0 
        [ 'X', 'L', 'C'],  // E1 
        [ 'C', 'D', 'M'],  // E2 
        [ 'M']             // E3
    ];

    const patterns = [    // E0       E1       E2      E3
        [0],              // I    or  X    or  C   or  M
        [0, 0],           // II   or  XX   or  CC
        [0, 0, 0],        // III  or  XXX  or  CCC
        [0, 1],           // IV   or  XL   or  CD
        [1],              // V    or  L    or  D
        [1, 0],           // etc ...
        [1, 0, 0],
        [1, 0, 0, 0],
        [0, 2]
    ];
    ```

    Which I'll toy with next time I feel like doing crosswords :)
---
<h1><b>Roman</b> Numerals</h1>
<p align="center" id="output">...</p>
<input type="text" id="input1" placeholder="Type whatever..."/>
<br/>
<br/>