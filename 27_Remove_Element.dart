/*
* 문제
주어진 배열 nums에서 특정 값 val을 제거해야 합니다.
제거한 후의 배열은 배열의 처음 부분에 남겨두고, 배열의 길이를 반환해야 합니다.
배열에서 제거된 값은 결과에 포함되지 않아야 하며,
반환된 길이를 기준으로 원래 배열의 처음 부분에 남은 값이 올바른 결과로 여겨집니다.


* 조건
1. 0 <= nums.length <= 100
2. 0 <= nums[i] <= 50
3. 0 <= val <= 100

* 예시
예제 1
	입력: nums = [3,2,2,3], val = 3
	출력: 2
	설명: 배열에서 3을 제거하면 [2,2]가 남습니다. 따라서 반환 값은 2입니다.

예제 2
	입력: nums = [0,1,2,2,3,0,4,2], val = 2
	출력: 5
	설명: 배열에서 2를 제거하면 [0,1,3,0,4]가 남습니다. 따라서 반환 값은 5입니다.

URL: https://leetcode.com/problems/remove-element/description/?envType=study-plan-v2&envId=top-interview-150
 */

class Solution {
    int removeElement(List<int> nums, int val) {
        int k = 0; // val이 아닌 요소의 개수를 셀 포인터

        for (int i = 0; i < nums.length; i++) {
            if (nums[i] != val) {
                nums[k] = nums[i]; // val이 아닌 요소를 k 위치에 배치
                k++; // 다음 위치로 이동
            }
        }

        return k; // val이 아닌 요소의 개수를 반환
    }
}
