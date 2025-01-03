/*
URL: https://leetcode.com/problems/group-anagrams/description/?envType=study-plan-v2&envId=top-interview-150
* 문제
문자열 배열 strs가 주어질 때, 애너그램끼리 그룹화하세요.

애너그램: 문자의 순서는 다르지만, 동일한 문자를 동일한 빈도로 포함하는 문자열.
결과는 가능한 모든 애너그램 그룹을 포함해야 하며, 각 그룹 내의 순서는 중요하지 않습니다.

* 조건
1 <= strs.length <= 10^4
0 <= strs[i].length <= 100
strs[i]는 소문자 영어 알파벳으로만 이루어져 있습니다.

* 예시
예제 1
	입력: strs = ["eat", "tea", "tan", "ate", "nat", "bat"]
	출력: [["bat"],["nat","tan"],["ate","eat","tea"]]

예제 2:
	입력: strs = [""]
	출력: [[""]]
	
예제 3:
	입력: strs = ["a"]
	출력: [["a"]]
 */

class Solution {
  List<List<String>> groupAnagrams(List<String> strs) {
    Map<String, List<String>> map = {};

    for (String str in strs) {
      List<String> sortList = str.split('')..sort();
      String sortedJoin = sortList.join();

      if (!map.containsKey(sortedJoin)) {
        map[sortedJoin] = [];
      }
      map[sortedJoin]!.add(str);
    }

    return map.values.toList();
  }
}
