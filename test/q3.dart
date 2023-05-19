import 'package:avera_interviews_dart/q3/index.dart';
import 'package:test/test.dart';

void main() {
  group('findLongestSub-Array', () {
    test(
        'should return the correct indices for the longest subarray with sum less than or equal to target',
        () {
      final arr = [1, 4, 3, 6, 8, 2];
      final target = 12;
      final result = findLongestSubarray(arr, target);
      expect(result, equals([0, 2]));
    });

    test(
        'should return the correct indices for the longest subarray with sum less than or equal to target when multiple subarrays have same length',
        () {
      final arr = [1, 4, 3, 6, 8, 2];
      final target = 14;
      final result = findLongestSubarray(arr, target);
      expect(result, equals([0, 3]));
    });

    test(
        'should return null when no subarray has sum less than or equal to target',
        () {
      final arr = [1, 4, 3, 6, 8, 2];
      final target = 0;
      final result = findLongestSubarray(arr, target);
      expect(result, isNull);
    });

    test('should return null when input array is empty', () {
      final arr = <int>[];
      final target = 5;
      final result = findLongestSubarray(arr, target);
      expect(result, isNull);
    });

    test(
        'should return null when all elements in input array are greater than target',
        () {
      final arr = [10, 20, 30, 40];
      final target = 5;
      final result = findLongestSubarray(arr, target);
      expect(result, isNull);
    });

    test(
        'should return null when target is negative and all elements in input array are positive',
        () {
      final arr = [1, 2, 3, 4, 5];
      final target = -10;
      final result = findLongestSubarray(arr, target);
      expect(result, isNull);
    });
  });
}
