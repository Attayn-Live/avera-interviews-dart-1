### Challenge Title: Book Library

#### Difficulty: Beginner Level

#### Description:

You are tasked with building a Book Library system that allows users to add, remove, and search for
books. The system should be implemented as a class called BookLibrary, which should have the
following functionalities:

* `addBook(book: Book): void`: This method should allow users to add a `book` to the library.
  The `book` parameter should be an object of type `Book`, which has the following
  properties: `title (string)`, `author (string)`, `genre (string)`, and`year (number)`. The method
  should add the book to the library and store it for future reference.

* `removeBook(bookTitle: string): boolean`: This method should allow users to remove a book from the
  library based on its title. The method should return `true` if the book was successfully removed,
  and `false`otherwise.

* `searchBooks(searchTerm: string): Book[]`: This method should allow users to search for books in
  the library based on a search term. The method should return an array of `Book` objects that match
  the search term. The search should be case-insensitive and should match against the `title`
  , `author`, and `genre` properties of the books.

* `getAllBooks(): Book[]`: This method should return an array of all the books in the library.

Example:

```dart
// Usage example
final library = BookLibrary();
final book1 = Book("The Catcher in the Rye", "J.D. Salinger", "Fiction", 1951);
final book2 = Book("To Kill a Mockingbird", "Harper Lee", "Fiction", 1960);
final book3 = Book("The Great Gatsby", "F. Scott Fitzgerald", "Fiction", 1925);

library.addBook(book1);
library.addBook(book2);
library.addBook(book3);

print(library.getAllBooks()); // Output: [book1, book2, book3]

print(library.searchBooks("catcher")); // Output: [book1]
print(library.searchBooks("Fiction")); // Output: [book1, book2, book3]

print(library.removeBook("To Kill a Mockingbird")); // Output: true

print(library.getAllBooks()); // Output: [book1, book3]
```

#### NOTES:

Ensure that the implementation;

* should not allow adding a duplicate book to the library;
* should handle removing a book with case-insensitive title match
