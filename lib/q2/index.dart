class Book {
  const Book(this.title, this.author, this.genre, this.year);

  final String title;
  final String author;
  final String genre;
  final int year;

  @override
  String toString() => "Book < $title, $author, $genre, $year >";

  @override
  int get hashCode => Object.hash(
    title.hashCode,
    author.hashCode,
    genre.hashCode,
    year.hashCode,
  );

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is Book &&
            runtimeType == other.runtimeType &&
            hashCode == other.hashCode;
  }
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
