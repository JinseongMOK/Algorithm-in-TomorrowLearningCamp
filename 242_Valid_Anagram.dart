/*
* 문제
두 개의 문자열 s와 t가 주어졌을 때,
t가 s의 애너그램인지 확인하는 함수를 작성하세요.
애너그램은 두 문자열이 같은 문자를 같은 개수만큼 가지고 있지만, 순서는 다른 경우를 말합니다.

* 조건
1. 1 <= s.length, t.length <= 5 * 10^4
2. s와 t는 영어 소문자로만 이루어져 있습니다.

* 예시
1. 입력: s = "anagram", t = "nagaram" 출력: true
	설명: t는 s의 애너그램입니다.

2. 입력: s = "rat", t = "car" 출력: false
	설명: t는 s의 애너그램이 아닙니다.

URL: https://leetcode.com/problems/valid-anagram/description/?envType=study-plan-v2&envId=top-interview-150
 */

bool isAnagram(String s, String t) {
  // 두 문자열의 길이가 다르면 애너그램이 아님
  if (s.length != t.length) return false;
  
  // 각 문자열의 문자를 정렬한 후 비교
  List<String> sortedS = s.split('')..sort();
  List<String> sortedT = t.split('')..sort();
  
  return sortedS.join() == sortedT.join();
}
