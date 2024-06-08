import 'dart:io';

class Book {
  String title;
  String author;
  String isbn;
  String bookType; //? 'ebook' or 'physical'
  bool isLent = false;

  Book(this.title, this.author, this.isbn, this.bookType);

  @override
  String toString() {
    return '$title by $author (ISBN: $isbn, Type: $bookType, Lent: $isLent)';
  }
}
class PhysicalBook extends Book {
  int pages;

  PhysicalBook(String title, String author, String isbn, this.pages)
      : super(title, author, isbn, 'physical');
}

class EBook extends Book {
  String fileSize;

  EBook(String title, String author, String isbn, this.fileSize)
      : super(title, author, isbn, 'ebook');
}
class Member {
  int memberId;
  String name;
  List<Book> borrowedBooks = [];

  Member(this.memberId, this.name);

  bool borrowBook(Book book) {
    if (book.isLent) {
      print("Sorry, the book '${book.title}' is already lent out.");
      return false;
    }
    book.isLent = true;
    borrowedBooks.add(book);
    return true;
  }

  bool returnBook(Book book) {
    if (borrowedBooks.contains(book)) {
      book.isLent = false;
      borrowedBooks.remove(book);
      return true;
    }
    return false;
  }

  @override
  String toString() {
    var borrowedTitles = borrowedBooks.map((book) => book.title).join(', ');
    return 'Member $name (ID: $memberId) has borrowed: $borrowedTitles';
  }
}
class Library {
  List<Book> books = [];
  List<Member> members = [];

  void addBook(Book book) {
    books.add(book);
  }

  List<Book> searchBooks({String? title, String? author, String? isbn}) {
    var results = books;
    if (title != null) {
      results = results.where((book) => book.title.toLowerCase().contains(title.toLowerCase())).toList();
    }
    if (author != null) {
      results = results.where((book) => book.author.toLowerCase().contains(author.toLowerCase())).toList();
    }
    if (isbn != null) {
      results = results.where((book) => book.isbn == isbn).toList();
    }
    return results;
  }

  void lendBook(Book book, Member member) {
    if (member.borrowBook(book)) {
      print("Book '${book.title}' has been lent to ${member.name}.");
    } else {
      print("Could not lend book '${book.title}' to ${member.name}.");
    }
  }

  void returnBook(Book book, Member member) {
    if (member.returnBook(book)) {
      print("Book '${book.title}' has been returned by ${member.name}.");
    } else {
      print("Could not return book '${book.title}' by ${member.name}.");
    }
  }
}
void main()
{
//todo create 
//? task
//! important

void main() {
  // Create a library
  var library = Library();

  // Add books
  var book1 = PhysicalBook("1984", "George Orwell", "1234567890", 328);
  var book2 = EBook("Brave New World", "Aldous Huxley", "2345678901", "2MB");
  library.addBook(book1);
  library.addBook(book2);

  // Add a member
  var member = Member(1, "John Doe");
  library.members.add(member);

  // Search for books
  print("Search Results:");
  for (var book in library.searchBooks(author: "Orwell")) {
    print(book);
  }

  //todo Lend a book to a member
  library.lendBook(book1, member);

  //todo Check member's borrowed books
  print(member);

  //todo Return a book
  library.returnBook(book1, member);

  //todo Check member's borrowed books after returning
  print(member);
}

}