//Game var
let min = 1, 
    max = 10,
    winningNum = getRandomNumber(min, max),
    guessesLeft = 3;

//UI  elements
const game = document.querySelector('#game'),
    minNum = document.querySelector('.min-num'),
    maxNum = document.querySelector('.max-num'),
    guessBtn = document.querySelector('#guess-btn'),
    guessInput = document.querySelector('#guess-input'),
    message = document.querySelector('.message');

//Assign UI min/max
minNum.textContent = min;
maxNum.textContent = max;

//Play again Event Listeners
game.addEventListener('mousedown', (e)=>{
    if(e.target.className === 'play-again'){
        //reload the page
        window.location.reload();
    }
})

//Listen for guess
guessBtn.addEventListener('click', ()=>{            
    let guess = parseInt(guessInput.value);
    //Validate
    if(isNaN(guess) || guess < min || guess > max){
        setMessage(`Please enter a valid number between ${min} and ${max}`, 'red', 'shake');
    }    

    //check if won
    if(guess === winningNum){

        gameOver(true, `${winningNum} is correct, You win!`);  

    } else{
        //Wrong number
        guessesLeft -= 1;

        if(guessesLeft === 0){
            gameOver(false, `${winningNum} was the correct number! GAME OVER`);
            
        } else {
            //change border
            guessInput.style.borderColor = 'red';
            //clear input
            guessInput.value = '';
            //set message
            setMessage(`${guess} is not correct! You have ${guessesLeft} more try`, 'red', 'rubberBand');
        }
    }
})

//Set message
function setMessage(msg, color, animation){
    //message.classList.remove;
    message.classList.add(animation, "animated");
    message.style.color = color;
    message.textContent = msg;
}


//Game Over
function gameOver(won, msg){
    let color;
    let animation;
    won === true ? color = 'green' : color = 'red'; 
    won === true ? animation = 'jello' : animation = 'shake';
    //disable input
    guessInput.disable = true;
    //change border
    guessInput.style.borderColor = color;
    //set msg
    setMessage(msg, color, animation);         
    
    //Play again
    guessBtn.value = 'Play Again';
    guessBtn.classList.add('play-again');
}


function getRandomNumber(min, max){
    return Math.floor(Math.random() * (max - min + 1) + min);
}


// //Listen Return key pressed
// guessInput.addEventListener('keypress', (e)=>{
//     if(e.keyCode === 13){
//         let guess = parseInt(guessInput.value);
//         //Validate
//         if(isNaN(guess) || !Number.isInteger(guess) || guess < min || guess > max){
//             setMessage(`Please enter a valid number between ${min} and ${max}`, 'red');
//     } 
//     }
// })