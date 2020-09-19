console.log(myVar)      //return undefined
//console.log(myLet)      //throw error here
console.log(myFunction())   //return 'this is my function', then undefined

var myVar = 'this is my var'

let myLet = 'this is my let'

function myFunction(){
    console.log('this is my function')
}

console.log(myVar)      //now return 'this is my var'
console.log(myFunction())       //return 'this is my function'
console.log(myLet)      //return 'this is my let'


//hoisting happens in any execution context
var color = 'red';

var favColor = function(){

    console.log('my fav color is ' + color);    // this will return undefined

    var color = 'green';

    console.log('my new fav color is ' + color);    // this will return greem

};

favColor();


//hoisting happens inside inner functions
function outerFunc(){
    function innerFunc() {
        console.log('this is the inner function');  // this will be hoisted first and then overwrite by the next innerFunc() definition
    }
    console.log(innerFunc()) ;
    function innerFunc() {
        console.log('no, this is the inner function');  // this will overwrite previous innerFunc() values and will be returned when called
    }
}

outerFunc();

