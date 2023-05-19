import 'package:avera_interviews_dart/q2/index.dart';
import 'package:test/test.dart';

void main() {
  group('BookLibrary', () {
    late BookLibrary library;
    late Book book1;
    late Book book2;
    late Book book3;

    setUp(() {
      library = BookLibrary();
      book1 = Book("The Catcher in the Rye", "J.D. Salinger", "Fiction", 1951);
      book2 = Book("To Kill a Mockingbird", "Harper Lee", "Fiction", 1960);
      book3 = Book("The Great Gatsby", "F. Scott Fitzgerald", "Fiction", 1925);
    });

    test('should add a book to the library', () {
      library.addBook(book1);
      expect(library.getAllBooks(), contains(book1));
    });

    test('should remove a book from the library', () {
      library.addBook(book1);
      library.addBook(book2);

      final result = library.removeBook("To Kill a Mockingbird");
      expect(result, isTrue);

      expect(library.getAllBooks(), isNot(contains(book2)));
    });

    test(
        'should return false when removing a non-existent book from the library',
        () {
      library.addBook(book1);
      library.addBook(book2);

      expect(library.removeBook("The Great Gatsby"), isFalse);
      expect(library.getAllBooks(), contains(book1));
      expect(library.getAllBooks(), contains(book2));
    });

    test('should search for books in the library by title, author, and genre',
        () {
      library.addBook(book1);
      library.addBook(book2);
      library.addBook(book3);

      final searchResults = library.searchBooks("great");

      expect(searchResults.length, equals(1));
      expect(searchResults[0].title, equals("The Great Gatsby"));
    });

    test('should return an empty array when no books match the search term',
        () {
      library.addBook(book1);
      library.addBook(book2);
      library.addBook(book3);

      final searchResults = library.searchBooks("nonexistent");

      expect(searchResults.length, equals(0));
    });

    test('should return all books in the library', () {
      library.addBook(book1);
      library.addBook(book2);
      library.addBook(book3);

      final allBooks = library.getAllBooks();

      expect(allBooks.length, equals(3));
      expect(allBooks, contains(book1));
      expect(allBooks, contains(book2));
      expect(allBooks, contains(book3));
    });

    test('should not add a duplicate book to the library', () {
      library.addBook(book1);
      library.addBook(book2);

      // Attempt to add a book with the same title as book1
      library.addBook(
        Book("The Catcher in the Rye", "J.D. Salinger", "Fiction", 1951),
      );

      expect(library.getAllBooks().length, equals(2));
    });

    test('should handle removing a book with case-insensitive title match', () {
      library.addBook(book1);
      library.addBook(book2);
      library.addBook(book3);

      expect(library.removeBook("the catcher in the rye"), equals(true));
      expect(library.getAllBooks(), isNot(contains(book1)));
    });
  });
}
