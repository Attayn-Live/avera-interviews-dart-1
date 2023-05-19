## Challenge Title: "Word Reversal"

### Problem Statement:

You are given a string containing multiple words separated by spaces. Your task is to implement a
function that reverses the order of each word in the string while keeping the words themselves
unchanged. The reversed words should be separated by spaces, and the resulting string should have no
leading or trailing spaces.

### Function Signature:

```dart
String reverseWords(String input) {
  // Implementation goes here
  return '';
}
```

### Input:

The `input` parameter is a string containing words separated by spaces. It is guaranteed to have at
least one word and at most 10^5 characters. The input string may have leading or trailing spaces,
but the words themselves will not contain any spaces. Multiple spaces between words should be
treated as a single space.

### Output:

The function should return a string with the words in reversed order, separated by spaces, with no
leading or trailing spaces.

### Examples:

```dart
reverseWords("Hello World"); // Output: "olleH dlroW"
reverseWords("  Welcome   to TypeScript   "); // Output: "emocleW ot tpircSepyT"
reverseWords("  TypeScript is Awesome   "); // Output: "tpircSepyT si emosewA"
```
