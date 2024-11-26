bool isSubsequence(String s, String t) {
  int sIndex = 0;
  int tIndex = 0;

  while (tIndex < t.length) {
    if (sIndex < s.length && s[sIndex] == t[tIndex]) {
      sIndex++;
    }
    tIndex++;
  }

  return sIndex == s.length;
}

