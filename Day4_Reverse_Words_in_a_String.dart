class Solution {
  String reverseWords(String s) {
    List<String> rw =
        s.trim().split(' ').where((word) => word.isNotEmpty).toList();
    return rw.reversed.join(' ');
  }
}
