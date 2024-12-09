/*
[LEETCODE 80]
URL: https://leetcode.com/problems/remove-duplicates-from-sorted-array-ii/description/?envType=study-plan-v2&envId=top-interview-150

* 문제
정렬된 배열 nums에서 각 요소가 최대 2번까지 나타나도록 중복된 요소를 제거하고, 남은 요소의 유효한 길이를 반환해야 합니다. 
즉, 어떤 숫자가 2회 이상 등장하면, 2회까지만 남겨두고 나머지는 제거해야 하며, 
제거 후의 배열은 처음 부분에 남아 있어야 합니다.


* 조건
1. 0 <= nums.length <= 3 * 10^4
2. -100 <= nums[i] <= 100
3. nums는 정렬되어 있습니다.

* 예시
예제 1
	입력: nums = [1,1,1,2,2,3]
	출력: 5
	설명: 각 숫자가 최대 2번 등장하도록 하면 배열은 [1, 1, 2, 2, 3]가 됩니다. 유효한 길이는 5입니다.

예제 2
	입력: nums = [0,0,1,1,1,1,2,3,3]
	출력: 7
	설명: 중복된 요소를 제거하면 배열은 [0, 0, 1, 1, 2, 3, 3]가 됩니다. 유효한 길이는 7입니다.
*/

class Solution {
  int removeDuplicates(List<int> nums) {
    int j = 2;

    if (nums.length <= 2) {
      return nums.length;
    }

    for (int i = 2; i < nums.length; i++) {
      if (nums[i] != nums[j - 2]) {
        nums[j] = nums[i];
        j++;
      }
    }
    return j;
  }
}
