class Book{
    constructor(title, author, isbn){
        this.title = title;
        this.author = author;
        this.isbn = isbn;
    }
}

class UI{
    addBookToList(book){
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

    showAlert(msg, className){
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

    deleteBook(target){
        if(target.className === 'delete'){
            target.parentElement.parentElement.remove();
        }
    }

    clearFields(){
        document.getElementById('title').value = '';
        document.getElementById('author').value = '';
        document.getElementById('isbn').value = '';
    }
}


//Local store class
class Store{
    static displayBooks(){
        const books = Store.getBooks();
        books.forEach(function(book){
            const ui = new UI;
            //Add book to UI
            ui.addBookToList(book);
        });
    }

    static addBook(book){
        const books = Store.getBooks();
        books.push(book);
        localStorage.setItem('books', JSON.stringify(books));
    }

    static getBooks(){
        let books;
        if(localStorage.getItem('books') === null){
            books = [];
        } else {
            books = JSON.parse(localStorage.getItem('books'));
        }
        return books;
    }

    static removeBook(isbn){
        const books = Store.getBooks();

        books.forEach(function(book, index){
            if(book.isbn === isbn){
                books.splice(index, 1);
            }
        });

        localStorage.setItem('books', JSON.stringify(books));
    }
}

//DOM load event
document.addEventListener('DOMContentLoaded', Store.displayBooks());

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

        //Add to Local Storage
        Store.addBook(book);

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

    //remove from Local Storage
    Store.removeBook(e.target.parentElement.previousElementSibling.textContent);

    //Show message
    ui.showAlert('Book Removed!', 'success');

    e.preventDefault();
})