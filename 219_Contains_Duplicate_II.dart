/*
[LEETCODE 219]
URL: https://leetcode.com/problems/contains-duplicate-ii/description/?envType=study-plan-v2&envId=top-interview-150
* ����
���� �迭 nums�� ���� k�� �־��� ��, ���� ���� ������ �� �ε��� i�� j�� ���� abs(i - j) <= k�� �����ϴ� ��찡 �ִ��� Ȯ���ϼ���.
���� ������ �����ϴ� �ε��� ���� �ִٸ� true�� ��ȯ�ϰ�, �׷��� ������ false�� ��ȯ�ϼ���.

* ����
1 <= nums.length <= 10^5
-10^9 <= nums[i] <= 10^9
0 <= k <= 10^5

* ����
���� 1
	�Է�: nums = [1, 2, 3, 1] k = 3
	���: true
	����: nums[0]�� nums[3]�� ���� �����ϸ�, abs(0 - 3) = 3���� ������ �����մϴ�.

���� 2:
	�Է�: nums = [1, 0, 1, 1] k = 1
	���: true
	����: nums[2]�� nums[3]�� ���� �����ϸ�, abs(2 - 3) = 1�� ������ �����մϴ�.

���� 3:
	�Է�: nums = [1, 2, 3, 1, 2, 3] k = 2
	���: false
	����: �ߺ� ������ ����������, ���� abs(i - j) <= 2�� �����ϴ� ���� �����ϴ�.
 */
bool containsNearbyDuplicate(List<int> nums, int k) {
  // �ؽø� ���� (���� -> ���� �ֱ� �ε���)
  Map<int, int> indexMap = {};

  // �迭 ��ȸ
  for (int i = 0; i < nums.length; i++) {
    // ���� ���ڰ� �ؽøʿ� �����ϰ� �ε��� ���̰� k ���϶�� true ��ȯ
    if (indexMap.containsKey(nums[i]) && (i - indexMap[nums[i]]!) <= k) {
      return true;
    }
    // ���� ���ڿ� �ε����� �ؽøʿ� ������Ʈ
    indexMap[nums[i]] = i;
  }

  // ������ �����ϴ� ��찡 ������ false ��ȯ
  return false;
}
