import 'dart:math';

String longestCommonPrefix(List<String> strs) {
  if (strs.length == 1) {
    if (strs.first.isEmpty) return "";
    return strs.first[0];
  }

  strs.sort((a, b) => a.compareTo(b));

  final a = strs[0];
  final b = strs[strs.length - 1];

  final smallestLength = min(a.length, b.length);

  int i = 0;
  while (i < smallestLength) {
    if (a[i] != b[i]) {
      return a.substring(0, i);
    }
    i++;
  }

  return a.substring(0, i);
}

String kthLargestNumber(List<String> nums, int k) {
  final sorted = nums.map((e) => BigInt.parse(e)).toList()..sort();
  final res = sorted[nums.length - k];
  print(res.toString());
  return res.toString();
}
