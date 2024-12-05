/*
* ����
�־��� �迭 nums���� Ư�� �� val�� �����ؾ� �մϴ�.
������ ���� �迭�� �迭�� ó�� �κп� ���ܵΰ�, �迭�� ���̸� ��ȯ�ؾ� �մϴ�.
�迭���� ���ŵ� ���� ����� ���Ե��� �ʾƾ� �ϸ�,
��ȯ�� ���̸� �������� ���� �迭�� ó�� �κп� ���� ���� �ùٸ� ����� �������ϴ�.


* ����
1. 0 <= nums.length <= 100
2. 0 <= nums[i] <= 50
3. 0 <= val <= 100

* ����
���� 1
	�Է�: nums = [3,2,2,3], val = 3
	���: 2
	����: �迭���� 3�� �����ϸ� [2,2]�� �����ϴ�. ���� ��ȯ ���� 2�Դϴ�.

���� 2
	�Է�: nums = [0,1,2,2,3,0,4,2], val = 2
	���: 5
	����: �迭���� 2�� �����ϸ� [0,1,3,0,4]�� �����ϴ�. ���� ��ȯ ���� 5�Դϴ�.

URL: https://leetcode.com/problems/remove-element/description/?envType=study-plan-v2&envId=top-interview-150
 */

class Solution {
    int removeElement(List<int> nums, int val) {
        int k = 0; // val�� �ƴ� ����� ������ �� ������

        for (int i = 0; i < nums.length; i++) {
            if (nums[i] != val) {
                nums[k] = nums[i]; // val�� �ƴ� ��Ҹ� k ��ġ�� ��ġ
                k++; // ���� ��ġ�� �̵�
            }
        }

        return k; // val�� �ƴ� ����� ������ ��ȯ
    }
}