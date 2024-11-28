/*
[LEETCODE 88]
URL: https://leetcode.com/problems/merge-sorted-array/description/?envType=study-plan-v2&envId=top-interview-150

* ����
���ĵ� �迭 nums1�� nums2�� �־�����, nums1�� ����� ������ �Ҵ�ް� �ֽ��ϴ�.
nums1�� �ʱ� ũ��� m�̰�, nums2�� ũ��� n�Դϴ�.
�� �迭�� ���ļ� nums1�� ���ĵ� ���·� �����ؾ� �մϴ�.

* ����
1. 0 <= m, n <= 200
2. 1 <= m + n <= 200
3. -10^9 <= nums1[i], nums2[i] <= 10^9

* ����
���� 1
	�Է�: nums1 = [1,2,3,0,0,0], m = 3, nums2 = [2,5,6], n = 3
	���: nums1 = [1,2,2,3,5,6]
	����: nums1�� ó�� 3���� ��Ҵ� [1,2,3]�̰�, nums2�� [2,5,6]�Դϴ�. �� �迭�� ��ġ�� [1,2,2,3,5,6]�� �˴ϴ�.

���� 2:
	�Է�: nums1 = [1], m = 1, nums2 = [], n = 0
	���: nums1 = [1]
	����: nums2�� ��� �����Ƿ� nums1�� ������� �ʽ��ϴ�.

���� 3:
	�Է�: nums1 = [0], m = 0, nums2 = [1], n = 1
	���: nums1 = [1]
	����: nums1�� ��� �ְ�, nums2�� ��Ұ� nums1���� ����˴ϴ�.
*/

class Solution {
    void merge(List<int> nums1, int m, List<int> nums2, int n) {
        int i = m - 1; // nums1�� ������ ��ȿ ��� �ε���
        int j = n - 1; // nums2�� ������ ��� �ε���
        int k = m + n - 1; // nums1�� ������ �ε���
        
        while (i >= 0 && j >= 0) {
            if (nums1[i] > nums2[j]) {
                nums1[k--] = nums1[i--]; // nums1�� ��Ҹ� ���
            } else {
                nums1[k--] = nums2[j--]; // nums2�� ��Ҹ� ���
            }
        }
        
        // nums2�� ���� ��Ұ� �ִ� ��� ����
        while (j >= 0) {
            nums1[k--] = nums2[j--];
        }
    }
}
