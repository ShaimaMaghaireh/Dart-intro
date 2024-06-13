//import 'dart:html';
import 'dart:io';

import 'Project1.dart';

 class Book {
  final String title;
  final String author;
  final String id;
  bool isLent;

  Book(this.title, this.author, this.id, [this.isLent = false]);

  @override
  String toString() {
    return 'Book: $title by $author (ID: $id)';
  }
}

class Novel extends Book {
  Novel(String title, String author, String id) : super(title, author, id);
}

class Classic extends Book {
  Classic(String title, String author, String id) : super(title, author, id);
}
class Library {
  final List<Book> books = [];

  void addBook(Book book) {
    books.add(book);
    print('Added: ${book.title}');
  }

  void lendBook(String bookId) {
    Book? book = books.firstWhere((book) => book.id == bookId);
    
  //  orElse:(() => null ) ;

    if (book == null) {
      print('Book not found.');
    } else if (book.isLent) {
      print('Book is already lent.');
    } else {
      book.isLent = true;
      print('Book ${book.title} has been lent.');
    }
  }

  void buyBook(Book book) {
    addBook(book);
    print('Book ${book.title} has been bought.');
  }

  void searchBooks(String query) {
    List<Book> results = books.where((book) => 
      book.title.toLowerCase().contains(query.toLowerCase()) ||
      book.author.toLowerCase().contains(query.toLowerCase())
    ).toList();

    if (results.isEmpty) {
      print('No books found.');
    } else {
      print('Search results:');
      results.forEach((book) => print(book));
    }
  }
}
 void main() {
  Library library = Library();

  // Adding books
  library.addBook(Novel('The Great Gatsby', 'F. Scott Fitzgerald', '1'));
  library.addBook(Classic('Pride and Prejudice', 'Jane Austen', '2'));
  library.addBook(Novel('1984', 'George Orwell', '3'));

  // Search books
  library.searchBooks('1984');

  // Lend a book
  library.lendBook('3');

  // Try lending the same book again
  library.lendBook('3');

  // Buy a new book
  library.buyBook(Novel('Brave New World', 'Aldous Huxley', '4'));

  // Search for a non-existing book
  library.searchBooks('Moby Dick');
}