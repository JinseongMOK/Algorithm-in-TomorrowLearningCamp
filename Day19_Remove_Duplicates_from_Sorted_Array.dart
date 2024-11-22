class Solution {
    int removeDuplicates(List<int> nums) {
        if (nums.isEmpty) return 0; // �迭�� ��������� 0 ��ȯ

        int k = 1; // ��ȿ�� ����� ������ �� ������ (ù ��° ��Ҵ� �׻� ��ȿ�ϹǷ� 1�� ����)

        for (int i = 1; i < nums.length; i++) {
            if (nums[i] != nums[k - 1]) { // ���� ��Ұ� ������ ��ȿ ��ҿ� �ٸ���
                nums[k] = nums[i]; // ��ȿ ��ġ�� ���� ��Ҹ� ��ġ
                k++; // ��ȿ ��� ���� ����
            }
        }

        return k; // ��ȿ�� ���̸� ��ȯ
    }
}
