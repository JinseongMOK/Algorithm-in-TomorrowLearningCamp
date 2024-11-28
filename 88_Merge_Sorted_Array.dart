/*
[LEETCODE 88]
URL: https://leetcode.com/problems/merge-sorted-array/description/?envType=study-plan-v2&envId=top-interview-150

* 문제
정렬된 배열 nums1과 nums2가 주어지며, nums1은 충분한 공간을 할당받고 있습니다.
nums1의 초기 크기는 m이고, nums2의 크기는 n입니다.
두 배열을 합쳐서 nums1에 정렬된 형태로 저장해야 합니다.

* 조건
1. 0 <= m, n <= 200
2. 1 <= m + n <= 200
3. -10^9 <= nums1[i], nums2[i] <= 10^9

* 예시
예제 1
	입력: nums1 = [1,2,3,0,0,0], m = 3, nums2 = [2,5,6], n = 3
	출력: nums1 = [1,2,2,3,5,6]
	설명: nums1의 처음 3개의 요소는 [1,2,3]이고, nums2는 [2,5,6]입니다. 두 배열을 합치면 [1,2,2,3,5,6]가 됩니다.

예제 2:
	입력: nums1 = [1], m = 1, nums2 = [], n = 0
	출력: nums1 = [1]
	설명: nums2가 비어 있으므로 nums1은 변경되지 않습니다.

예제 3:
	입력: nums1 = [0], m = 0, nums2 = [1], n = 1
	출력: nums1 = [1]
	설명: nums1이 비어 있고, nums2의 요소가 nums1으로 복사됩니다.
*/

class Solution {
    void merge(List<int> nums1, int m, List<int> nums2, int n) {
        int i = m - 1; // nums1의 마지막 유효 요소 인덱스
        int j = n - 1; // nums2의 마지막 요소 인덱스
        int k = m + n - 1; // nums1의 마지막 인덱스
        
        while (i >= 0 && j >= 0) {
            if (nums1[i] > nums2[j]) {
                nums1[k--] = nums1[i--]; // nums1의 요소를 사용
            } else {
                nums1[k--] = nums2[j--]; // nums2의 요소를 사용
            }
        }
        
        // nums2에 남은 요소가 있는 경우 복사
        while (j >= 0) {
            nums1[k--] = nums2[j--];
        }
    }
}
