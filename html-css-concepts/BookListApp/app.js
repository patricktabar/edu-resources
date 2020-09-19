// Book constructor
function Book(title, author, isbn){
    this.title = title;
    this.author = author;
    this.isbn = isbn;
}

// UI constructor
function UI(){}

// Add book to list
UI.prototype.addBookToList = function(book){
    const list = document.getElementById('book-list');
    
    //create tr element
    const row = document.createElement('tr');

    //insert cols
    row.innerHTML = `
    <td>${book.title}</td>
    <td>${book.author}</td>
    <td>${book.isbn}</td>
    <td><a href="#" class="delete">X</a></td>`

    list.appendChild(row);
}

//Show alert
UI.prototype.showAlert = function(msg, className){
    //create div
    const div = document.createElement('div');
    //add class name
    div.className= `alert ${className}`;
    //add text
    div.appendChild(document.createTextNode(msg));
    //get parent
    const container = document.querySelector('.container');
    //get form
    const form = document.querySelector('#book-form');
    //Insert alert
    container.insertBefore(div, form);
    //disapper after 3 sec.
    setTimeout(function(){
        document.querySelector('.alert').remove();
    }, 3000);
}

//Delete book
UI.prototype.deleteBook = function(target){
    if(target.className === 'delete'){
        target.parentElement.parentElement.remove();
    }
}

//Clear fields
UI.prototype.clearFields = function(){
    document.getElementById('title').value = '';
    document.getElementById('author').value = '';
    document.getElementById('isbn').value = '';
}


// Event Listeners for add book
document
.getElementById('book-form')
.addEventListener('submit', function(e){
    
    // Get form values
    const 
        title = document.getElementById('title').value,
        author = document.getElementById('author').value,
        isbn = document.getElementById('isbn').value;

    // Instantiate book
    const book = new Book(title, author, isbn);

    // Istantiate UI
    const ui = new UI();

    //validate
    if(title === '' || author === '' || isbn === ''){
        //error alert
        ui.showAlert('Please fill in all fields correctly', 'error');
    } else{
        // Add book to list
        ui.addBookToList(book);

        //Show success
        ui.showAlert('Book Added!', 'success');
    
        //Clear form fields
        ui.clearFields();
    }
    

    e.preventDefault();
})


// Event Listener for delete book
document.getElementById('book-list').addEventListener('click', function(e){
    
    // Istantiate UI
    const ui = new UI();

    //delete book
    ui.deleteBook(e.target);

    //Show message
    ui.showAlert('Book Removed!', 'success');

    e.preventDefault();
})