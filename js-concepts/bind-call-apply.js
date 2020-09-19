/*
La funzione bind() crea una nuova funzione, 
che avvolge l'oggetto della funzione originale. 
Chiamando la funzione si ottiene generalmente l'esecuzione 
della sua funzione di involucro.
*/

const obj = {
    name: 'object3',
    play() {
        console.log('play', this)   //returns play {name: "object", play: ƒ}
        var innerFunc = function() {
            console.log('innerFunc', this)  // NOW returns innerFunc {name: "object", play: ƒ}
        }
        return innerFunc.bind(this)() //IIFE
    }
}

obj.play()


/*
La funzione  call() Richiama un metodo di un oggetto, 
sostituendo un altro oggetto con quello precedente.
*/

const char1 = {
    name: 'John',
    age: 27,    
    weight: 80,
    increaseWeight(kg) {
        return this.weight += kg;
    },
    increaseAge(num1, num2){
        return this.age += num1+num2;
    }
}

const char2 = {
    name: 'Dave',
    age: 36,
    weight: 63
}

console.log('prima ', char2)
char1.increaseWeight.call(char2, 13)
console.log('dopo call()', char2)


/* 
Il metodo apply() chiama una funzione con un dato valore 
e i parametri forniti come array
*/

char1.increaseAge.apply(char2, [22,6])
console.log('dopo apply()', char2)


const newIncreaseAge = char1.increaseAge.bind(char2, -2,-8)
newIncreaseAge()
console.log('dopo bind()', char2)



const numbers = [5, 6, 2, 3, 7];

const min = Math.min.apply(null, numbers);
const max = Math.max.apply(null, numbers);

console.log('min', min, 'max', max);