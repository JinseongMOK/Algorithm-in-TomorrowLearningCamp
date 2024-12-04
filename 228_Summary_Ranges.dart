/* 
[LEETCODE 228]
URL: https://leetcode.com/problems/summary-ranges/description/?envType=study-plan-v2&envId=top-interview-150
* 문제
정렬된 고유한 정수 배열 nums가 주어졌을 때, 연속된 숫자들을 하나의 범위로 묶어 문자열 형태로 반환하세요.
각 범위는 "a->b"의 형식이며, 숫자가 하나만 포함될 경우 해당 숫자 "a"를 반환합니다.

* 조건
0 <= nums.length <= 20
-2^31 <= nums[i] <= 2^31 - 1
모든 nums의 원소는 고유하며, 오름차순으로 정렬되어 있습니다.

* 예시
예제 1
	입력: nums = [0, 1, 2, 4, 5, 7]
	출력: ["0->2", "4->5", "7"]
	설명: 
		0, 1, 2는 연속적이므로 "0->2"로 묶입니다.
		4, 5는 연속적이므로 "4->5"로 묶입니다.
		7은 혼자이므로 "7"로 나타냅니다.

예제 2:
	입력: nums = [0, 2, 3, 4, 6, 8, 9]
	출력: ["0", "2->4", "6", "8->9"]
	설명:
		2, 3, 4는 연속적이므로 "2->4"로 묶입니다.
		8, 9는 연속적이므로 "8->9"로 묶입니다.
	
예제 3:
	입력: nums = []
	출력: []
	설명: 배열이 비어 있으므로 빈 배열을 반환합니다.
*/
List<String> summaryRanges(List<int> nums) {
  // 결과를 저장할 리스트
  List<String> result = [];
  int n = nums.length;

  // 배열이 비어있으면 빈 리스트 반환
  if (n == 0) return result;

  // 범위 시작점
  int start = nums[0];

  for (int i = 0; i < n; i++) {
    // 마지막 원소이거나 현재 숫자와 다음 숫자가 연속되지 않는 경우
    if (i == n - 1 || nums[i] + 1 != nums[i + 1]) {
      // 범위가 한 숫자인 경우
      if (start == nums[i]) {
        result.add(start.toString());
      } else {
        // 범위가 여러 숫자인 경우
        result.add("$start->${nums[i]}");
      }
      // 다음 범위의 시작점을 업데이트
      if (i != n - 1) {
        start = nums[i + 1];
      }
    }
  }

  return result;
}
