class Solution {
    int majorityElement(List<int> nums) {
        int candidate = nums[0];
        int count = 1;

        // 1�� ��ǥ
        for (int i = 1; i < nums.length; i++) {
            if (nums[i] == candidate) {
                count++; // �ĺ��� ������ ī��Ʈ ����
            } else {
                count--; // �ĺ��� �ٸ��� ī��Ʈ ����
                if (count == 0) {
                    candidate = nums[i]; // ī��Ʈ�� 0�� �Ǹ� ���ο� �ĺ��� ����
                    count = 1; // ī��Ʈ �ʱ�ȭ
                }
            }
        }

        return candidate; // �ֺ� ��ȯ
    }
}
