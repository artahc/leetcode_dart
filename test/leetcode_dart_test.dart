import 'package:leetcode_dart/leetcode_dart.dart';
import 'package:test/test.dart';

void main() {
  group(
    "Longest Common Prefix",
    () {
      test("fl", () {
        final res = longestCommonPrefix(["flower", "flow", "flight"]);
        expect(res, "fl");
      });

      test("[empty]", () {
        final res = longestCommonPrefix(["dog", "racecar", "car"]);
        expect(res, "");
      });

      test("single value list, return first letter", () {
        final res = longestCommonPrefix(["a"]);
        expect(res, "a");
      });

      test("single value list with empty string", () {
        final res = longestCommonPrefix([""]);
        expect(res, "");
      });

      test("multiple value with single char string", () {
        final res = longestCommonPrefix(["ab", "a"]);
        expect(res, "a");
      });

      test("values consist same length but not sorted lexicographically", () {
        final res = longestCommonPrefix(["abab", "aba", "abc"]);
        expect(res, "ab");
      });
    },
  );

  group(
    "k-th largest number",
    () {
      test("([1, 2], 1) should return 2", () {
        final res = kthLargestNumber(["1", "2"], 1);

        expect(res, "2");
      });

      test("([3, 6, 7, 10], 3) should return 4", () {
        final nums = ["3", "6", "7", "10"];
        final res = kthLargestNumber(nums, 4);

        expect(res, "3");
      });

      test("big number", () {
        final nums = [
          "683339452288515879",
          "7846081062003424420",
          "4805719838",
          "4840666580043",
          "83598933472122816064",
          "522940572025909479",
          "615832818268861533",
          "65439878015",
          "499305616484085",
          "97704358112880133",
          "23861207501102",
          "919346676",
          "60618091901581",
          "5914766072",
          "426842450882100996",
          "914353682223943129",
          "97",
          "241413975523149135",
          "8594929955620533",
          "55257775478129",
          "528",
          "5110809",
          "7930848872563942788",
          "758",
          "4",
          "38272299275037314530",
          "9567700",
          "28449892665",
          "2846386557790827231",
          "53222591365177739",
          "703029",
          "3280920242869904137",
          "87236929298425799136",
          "3103886291279"
        ];

        final res = kthLargestNumber(nums, 3);
        expect(res, "38272299275037314530");
      });
    },
  );

  group(
    "findKthLargest",
    () {
      test(
        "should return 5",
        () {
          final res = findKthLargest([3, 2, 1, 5, 6, 4], 2);
          expect(res, 5);
        },
      );

      test(
        "should return 4",
        () {
          final res = findKthLargest([3, 2, 3, 1, 2, 4, 5, 5, 6], 4);
          expect(res, 4);
        },
      );
    },
  );

  group(
    'validParentheses',
    () {
      test("()[], should return true", () {
        final res = validParentheses("()[]");
        expect(res, true);
      });

      test("([)[, should return false", () {
        final res = validParentheses("([)[");
        expect(res, false);
      });

      test("([)], should return false", () {
        final res = validParentheses("([)]");
        expect(res, false);
      });
    },
  );
}
