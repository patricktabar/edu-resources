const h3Left = document.querySelector('#left');
const h3Right = document.querySelector('#right');
const color1 = document.querySelector('#color1');
const color2 = document.querySelector('#color2');
const body = document.querySelector('body');
const code = document.querySelector('code');

//set body background gradient
function setGradient(){
    body
    .style
    .background = 
    `linear-gradient(to right, ${color1.value}, ${color2.value})`;
    loadValues();
    setBorderColor();
}

//set snippet border color to color2
function setBorderColor(){
    code.style.borderLeftColor = color2.value;
}

//load color values
function loadValues(){
    h3Left.textContent = color1.value;
    h3Right.textContent = color2.value;
}

//write code to <code> tag
function writeCode(){
    code.textContent = 
`body {
    background: linear-gradient(to right, ${color1.value} , ${color2.value});
}`
}

//when loading the window load values and set the ambient
window.onload = () => {
    loadValues();
    writeCode();
    setBorderColor();
}

//get color values
color1.addEventListener('input', setGradient);
color2.addEventListener('input', setGradient);