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
  return res.toString();
}

int findKthLargest(List<int> nums, int k) {
  nums.sort();
  final res = nums[nums.length - k];
  return res;
}

class Stack<T> {
  final List _list;

  Stack() : _list = List.empty(growable: true);

  void push(T e) => _list.add(e);
  void pop() => _list.removeLast();
  T get peek => _list.last;
  bool get isEmpty => _list.isEmpty;
}

bool validParentheses(String s) {
  final pair = {'(': ')', '[': ']', '{': '}'};
  final stack = Stack<String>();

  for (int i = 0; i < s.length; i++) {
    if (stack.isEmpty) {
      stack.push(s[i]);
    } else {
      if (s[i] == pair[stack.peek]) {
        stack.pop();
      } else {
        stack.push(s[i]);
      }
    }
  }

  return stack.isEmpty;
}

class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);

  @override
  String toString() {
    String s = "";

    s += val.toString();
    if (next != null) {
      s += ", $next";
    }

    return s;
  }

  @override
  bool operator ==(Object? other) {
    return other is ListNode && other.hashCode == hashCode;
  }

  @override
  int get hashCode {
    return Object.hash(val, next?.hashCode);
  }
}

/// NOTE: Either list1 and list2 SHOULD NOT sorted in non-decreasing order.
/// Otherwise, this function won't works :)
ListNode? mergeTwoLists(ListNode? list1, ListNode? list2) {
  if (list1 == null) return list2;
  if (list2 == null) return list1;

  if (list1.val < list2.val) {
    list1.next = mergeTwoLists(list1.next, list2);
    return list1;
  } else {
    list2.next = mergeTwoLists(list1, list2.next);
    return list2;
  }
}

int removeDuplicates(List<int> nums) {
  int count = 0;
  for (int i = 1; i < nums.length; i++) {
    final cur = nums[i];
    final prev = nums[i - 1];
    if (cur == prev) {
      nums.removeAt(i);
      i--;
      count++;
    }
  }

  print(nums);

  return count;
}
