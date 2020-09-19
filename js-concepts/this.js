// THIS is the object that the function is a property of

console.log(this)      //return the obj Window

// var person = {
//     name: 'Patrick',
//     greeting: function(){
//         console.log('Hi! this is ' + this.name)
//     },
//     sing() {                                                    // es6 sintax
//         console.log( this.name + ' figarofigarofigaro...')
//     }
// }

// person.greeting() // return 'Hi! this is Patrick'

// person.name =  'Mario'

// person.greeting() // return Hi! this is Mario



function sayMyName(){
    console.log('my name is ' + this.name)
}

const name = 'Patrick'

const person1 = {
    name: 'Mario',
    sayMyName: sayMyName
}

const person2 = {
    name: 'Anna',
    sayMyName: sayMyName
}

sayMyName() // returns 'my name is Patrick' 'cos' THIS refers to the global scope

person1.sayMyName() // returns 'my name is Mario' 'cos' THIS refers to the object to which it belongs to person1
person2.sayMyName() //same as above



// THIS and lexical scope
const obj = {
    name: 'object1',
    play() {
        console.log('play', this)   //returns play {name: "object", play: ƒ}
        var innerFunc = function() {
            console.log('innerFunc', this)  // returns innerFunc Window because THIS is not lexically scoped
        }
        innerFunc()
    }
}

obj.play()

// Use of Arrow Function with THIS
const obj2 = {
    name: 'object2',
    play() {
        console.log('play', this)   //returns play {name: "object", play: ƒ}
        var innerFunc = () => {
            console.log('innerFunc', this)  // NOW returns innerFunc {name: "object", play: ƒ}
        }
        innerFunc()
    }
}

obj2.play()

// bind method
const obj3 = {
    name: 'object3',
    play() {
        console.log('play', this)   //returns play {name: "object", play: ƒ}
        var innerFunc = function() {
            console.log('innerFunc', this)  // NOW returns innerFunc {name: "object", play: ƒ}
        }
        return innerFunc.bind(this)()
    }
}

obj3.play()
