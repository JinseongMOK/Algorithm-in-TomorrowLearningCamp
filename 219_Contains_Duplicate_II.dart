/*
[LEETCODE 219]
URL: https://leetcode.com/problems/contains-duplicate-ii/description/?envType=study-plan-v2&envId=top-interview-150
* 문제
정수 배열 nums와 정수 k가 주어질 때, 같은 값을 가지는 두 인덱스 i와 j에 대해 abs(i - j) <= k를 만족하는 경우가 있는지 확인하세요.
만약 조건을 만족하는 인덱스 쌍이 있다면 true를 반환하고, 그렇지 않으면 false를 반환하세요.

* 조건
1 <= nums.length <= 10^5
-10^9 <= nums[i] <= 10^9
0 <= k <= 10^5

* 예시
예제 1
	입력: nums = [1, 2, 3, 1] k = 3
	출력: true
	설명: nums[0]와 nums[3]의 값이 동일하며, abs(0 - 3) = 3으로 조건을 만족합니다.

예제 2:
	입력: nums = [1, 0, 1, 1] k = 1
	출력: true
	설명: nums[2]와 nums[3]의 값이 동일하며, abs(2 - 3) = 1로 조건을 만족합니다.

예제 3:
	입력: nums = [1, 2, 3, 1, 2, 3] k = 2
	출력: false
	설명: 중복 값들은 존재하지만, 조건 abs(i - j) <= 2를 만족하는 쌍이 없습니다.
 */
bool containsNearbyDuplicate(List<int> nums, int k) {
  // 해시맵 생성 (숫자 -> 가장 최근 인덱스)
  Map<int, int> indexMap = {};

  // 배열 순회
  for (int i = 0; i < nums.length; i++) {
    // 만약 숫자가 해시맵에 존재하고 인덱스 차이가 k 이하라면 true 반환
    if (indexMap.containsKey(nums[i]) && (i - indexMap[nums[i]]!) <= k) {
      return true;
    }
    // 현재 숫자와 인덱스를 해시맵에 업데이트
    indexMap[nums[i]] = i;
  }

  // 조건을 만족하는 경우가 없으면 false 반환
  return false;
}
