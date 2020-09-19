// variable environment and scope chain
//lexical scope vs dynamic scope 

function outerFunc(){
    var a = 1   // can only acces a from here
    console.log('outer', a)
    return function innerFunc(){
        var b = 2
        console.log('inner', a, b) // cannot access 'c' from here
        return function deepestFunc(){
            var c = 3
            console.log('deepest', a,b,c) // from here I acn access any level up to the top
        }
    }
}

outerFunc()()()


// same if I use let/cost instead of var
function outerFunc2(){
    let a = 1   // can only acces a from here
    console.log('outer', a)
    return function innerFunc(){
        let b = 2
        console.log('inner', a, b) // cannot access 'c' from here
        return function deepestFunc(){
            let c = 3
            console.log('deepest', a,b,c) // from here I acn access any level up to the top
        }
    }
}

outerFunc2()()()


//variables env in different functions

function one(){
    var a
    console.log('a inside one() is ' + a)
}

function two(){
    var a = 2
    console.log('a inside two() is ' + a)
    one()
}

var a = 3
console.log('a is global context is ' + a)

two()
