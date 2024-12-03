/*
[LEETCODE 125]
URL: https://leetcode.com/problems/valid-palindrome/description/?envType=study-plan-v2&envId=top-interview-150
* ����
�־��� ���ڿ��� �Ӹ�������� Ȯ���ϴ� �����Դϴ�.
�Ӹ�����̶�, �տ��� ������ �ڿ��� ������ ������ ���ڿ��� �ǹ��մϴ�.
��ҹ��ڿ� ������ �����ϰ�, ���ĺ��� ���ڸ� ���մϴ�.

* ����
1. ���ڿ��� ���̰� 1 �̻� 2^5 �����Դϴ�.
2. ���ڿ��� ���ĺ��� ���ڸ� ���Ե� �� �ֽ��ϴ�.

* ����
���� 1
	�Է�: "A man, a plan, a canal: Panama"
	���: true
	����: ����� �������� �����ϰ� ���ڿ��� "amanaplanacanalpanama"�� �Ӹ�����Դϴ�.

���� 2:
	�Է�: "race a car"
	���: false
	����: ������ �����ص� "raceacar"�� �Ӹ������ �ƴմϴ�.
 */

bool isPalindrome(String s) {
  // ���ĺ��� ���ڸ� �����, �ҹ��ڷ� ��ȯ
  String filtered = '';
  for (var c in s.split('')) {
    if (RegExp(r'[a-zA-Z0-9]').hasMatch(c)) {
      filtered += c.toLowerCase();
    }
  }

  // ���� ���������� ��
  int left = 0;
  int right = filtered.length - 1;
  while (left < right) {
    if (filtered[left] != filtered[right]) {
      return false;
    }
    left++;
    right--;
  }

  return true;
}

