/*
[LEETCODE 383]
URL: https://leetcode.com/problems/ransom-note/description/?envType=study-plan-v2&envId=top-interview-150
* 문제
주어진 두 문자열 ransomNote와 magazine이 있습니다.
ransomNote를 작성하기 위해 필요한 모든 문자를 magazine에서 가져올 수 있는지 확인하세요.
각 문자는 magazine에서 단 한 번만 사용할 수 있습니다.

True 또는 False를 반환하세요.

* 조건
1 <= ransomNote.length, magazine.length <= 10⁵
ransomNote와 magazine은 소문자로만 구성됩니다.

* 예시
예제 1
	입력: ransomNote = "a", magazine = "b"
	출력: false
	설명: `ransomNote`를 작성하기 위해 필요한 'a'를 `magazine`에서 찾을 수 없습니다.


예제 2:
	입력: ransomNote = "aa", magazine = "ab"
	출력: false
	설명: `ransomNote`를 작성하기 위해 필요한 두 개의 'a'가 `magazine`에 존재하지 않습니다.

	
예제 3:
	입력: ransomNote = "aa", magazine = "aba"
	출력: true
	설명: `ransomNote`를 작성하기 위해 필요한 두 개의 'a'를 `magazine`에서 가져올 수 있습니다.
*/
bool canConstruct(String ransomNote, String magazine) {
  List<int> charCount = List.filled(26, 0);

  for (int i = 0; i < magazine.length; i++) {
    charCount[magazine.codeUnitAt(i) - 'a'.codeUnitAt(0)]++;
  }

  for (int i = 0; i < ransomNote.length; i++) {
    int index = ransomNote.codeUnitAt(i) - 'a'.codeUnitAt(0);
    if (charCount[index] == 0) {
      return false;
    }
    charCount[index]--;
  }

  return true;
}
