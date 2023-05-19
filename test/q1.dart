import 'package:avera_interviews_dart/q1/index.dart';
import 'package:test/test.dart';

void main() {
  group('reverseWords', () {
    test('should reverse words in a string with no leading or trailing spaces',
        () {
      final input = 'Hello World';
      final expected = 'olleH dlroW';
      final result = reverseWords(input);
      expect(result, expected);
    });

    test('should reverse words in a string with leading or trailing spaces',
        () {
      final input = '  Welcome   to TypeScript   ';
      final expected = 'emocleW ot tpircSepyT';
      final result = reverseWords(input);
      expect(result, expected);
    });

    test('should reverse words in a string with multiple spaces between words',
        () {
      final input = '  TypeScript is Awesome   ';
      final expected = 'tpircSepyT si emosewA';
      final result = reverseWords(input);
      expect(result, expected);
    });

    test('should handle a single-word input string correctly', () {
      final input = 'Challenge';
      final expected = 'egnellahC';
      final result = reverseWords(input);
      expect(result, expected);
    });

    test('should handle input strings with special characters correctly', () {
      final input = 'Hello@World!';
      final expected = '!dlroW@olleH';
      final result = reverseWords(input);
      expect(result, expected);
    });

    test('should handle input strings with numbers correctly', () {
      final input = '12345 67890';
      final expected = '54321 09876';
      final result = reverseWords(input);
      expect(result, expected);
    });

    test(
        'should handle input strings with uppercase and lowercase letters correctly',
        () {
      final input = 'AbCdEfG';
      final expected = 'GfEdCbA';
      final result = reverseWords(input);
      expect(result, expected);
    });
  });
}
