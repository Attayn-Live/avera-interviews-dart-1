class Book {
  const Book(this.title, this.author, this.genre, this.year);

  final String title;
  final String author;
  final String genre;
  final int year;
}

class BookLibrary {
  addBook(Book book) {
    // Implementation here
    return;
  }

  bool removeBook(String bookTitle) {
    // Implementation here
    return false;
  }

  List<Book> searchBooks(String searchTerm) {
    // Implementation here
    return [];
  }

  List<Book> getAllBooks() {
    // Implementation here
    return [];
  }
}
