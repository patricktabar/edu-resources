// function declaration
function greeting(){
    console.log('hi!')
}

// function expression (they don't get hoisted)
var fun = function(){
    console.log('fun!')
}

var moreFun = () => {
    console.log('more fun here!')
}


//function invocation/call/execution
greeting()
fun()
moreFun()

//function arguments
function add(value1, value2){
    console.log('arguments', arguments)  // AVOID! this will return an obj with the 2 values
    console.log(Array.from(arguments)) // more usefull, this will return an array with the 2 values
    console.log(value1+value2) 
}

add(10,5)

//function arguments
function addMore(...args){
    console.log('arguments', args)  // this will return an obj with the values
    console.log(Array.from(arguments)) // more usefull, this will return an array with the 2 values
    console.log(Array.from(arguments).reduce( (v1,v2) => v1+v2)) 
}

addMore(10, 5, 3, 7, 5, 6)