class Solution {
  List<int> countBits(int n) {
    // ����� ������ ����Ʈ
    List<int> count = [];

    // 0���� n���� �ݺ�
    for (int i = 0; i <= n; i++) {
      // i�� 2���� ���ڿ��� ��ȯ
      String changeNum = i.toRadixString(2);

      // 2���� ���ڿ����� '1'�� ������ ��
      int onesCount = 0;
      for (int j = 0; j < changeNum.length; j++) {
        if (changeNum[j] == '1') {
          onesCount++;
        }
      }

      // ����Ʈ�� �߰�
      count.add(onesCount);
    }

    return count;
  }
}

