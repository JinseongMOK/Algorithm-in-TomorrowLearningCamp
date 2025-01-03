/*
[LEETCODE 215]
URL: https://leetcode.com/problems/kth-largest-element-in-an-array/description/?envType=study-plan-v2&envId=leetcode-75

* 문제
주어진 정수 배열 nums에서 k번째로 큰 요소를 찾는 문제입니다.
배열은 0부터 시작하는 인덱스를 가지며, k는 1부터 시작하는 인덱스입니다.

* 조건
1. 1 <= nums.length <= 10^4
2. -10^4 <= nums[i] <= 10^4
3. 1 <= k <= nums.length

* 예시
예제 1:
	입력: nums = [3,2,1,5,6,4], k = 2
	출력: 5
	설명: 배열을 내림차순으로 정렬하면 [6, 5, 4, 3, 2, 1]이고, 2번째로 큰 요소는 5입니다.

예제 2:
	입력: nums = [3,2,3], k = 1
	출력: 3
	설명: 배열을 내림차순으로 정렬하면 [3, 3, 2]이고, 1번째로 큰 요소는 3입니다.

예제 3:
	입력: nums = [1], k = 1
	출력: 1
	설명: 배열의 유일한 요소는 1입니다.
 */

class Solution {
  int findKthLargest(List<int> nums, int k) {
    nums.sort((a, b) => b.compareTo(a));
    print(nums);

    int result = 0;
    for (int i = 0; i < k; i++) {
      result = nums[i];
    }
    return result;
  }
}
