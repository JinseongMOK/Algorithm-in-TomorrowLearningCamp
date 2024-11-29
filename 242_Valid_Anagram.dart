/*
* ����
�� ���� ���ڿ� s�� t�� �־����� ��,
t�� s�� �ֳʱ׷����� Ȯ���ϴ� �Լ��� �ۼ��ϼ���.
�ֳʱ׷��� �� ���ڿ��� ���� ���ڸ� ���� ������ŭ ������ ������, ������ �ٸ� ��츦 ���մϴ�.

* ����
1. 1 <= s.length, t.length <= 5 * 10^4
2. s�� t�� ���� �ҹ��ڷθ� �̷���� �ֽ��ϴ�.

* ����
1. �Է�: s = "anagram", t = "nagaram" ���: true
	����: t�� s�� �ֳʱ׷��Դϴ�.

2. �Է�: s = "rat", t = "car" ���: false
	����: t�� s�� �ֳʱ׷��� �ƴմϴ�.

URL: https://leetcode.com/problems/valid-anagram/description/?envType=study-plan-v2&envId=top-interview-150
 */

bool isAnagram(String s, String t) {
  // �� ���ڿ��� ���̰� �ٸ��� �ֳʱ׷��� �ƴ�
  if (s.length != t.length) return false;
  
  // �� ���ڿ��� ���ڸ� ������ �� ��
  List<String> sortedS = s.split('')..sort();
  List<String> sortedT = t.split('')..sort();
  
  return sortedS.join() == sortedT.join();
}
