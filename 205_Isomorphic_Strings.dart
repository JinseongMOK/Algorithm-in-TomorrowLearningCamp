/*
[LEETCODE 205]
URL: https://leetcode.com/problems/isomorphic-strings/description/?envType=study-plan-v2&envId=top-interview-150

* ����
�� ���ڿ� s�� t�� �־����ϴ�.
�� ���ڿ��� ����(isomorphic)���� Ȯ���ϼ���.
�� ���ڿ��� �����̶�� ����, �ϳ��� ���ڿ��� ���ڰ� �ٸ� ���ڿ��� ���ڷ� �ϴ��� ���ε� �� ������ �ǹ��մϴ�.

���� ���ڴ� ���� ���ڷ� ���εǾ�� �մϴ�.
�ٸ� ���ڴ� �ٸ� ���ڷ� ���εǾ�� �մϴ�.
���ڴ� �ڽſ��� ���ε� �� �ֽ��ϴ�.

* ����
1 <= s.length, t.length <= 5 * 10��
s�� t�� ���̴� �����ϴ�.
s�� t�� ���� �ҹ��ڷθ� �̷���� �ֽ��ϴ�.

* ����
���� 1
	�Է�: s = "egg", t = "add"
	���: true
	����: 'e' �� 'a', 'g' �� 'd'. ���� �ϴ��� ������ �����մϴ�.

���� 2:
	�Է�: s = "foo", t = "bar"
	���: false
	����: 'o'�� 'a'�� 'r'�� ���ε� �� �����Ƿ� �Ұ����մϴ�.


���� 3:
	�Է�: s = "paper", t = "title"
	���: true
	����: 'p' �� 't', 'a' �� 'i', 'e' �� 'l', 'r' �� 'e'. �ϴ��� ���� ����.
 */

bool isIsomorphic(String s, String t) {
  if (s.length != t.length) return false;

  Map<String, String> mapST = {};
  Map<String, String> mapTS = {};

  for (int i = 0; i < s.length; i++) {
    String charS = s[i];
    String charT = t[i];

    if (mapST.containsKey(charS)) {
      if (mapST[charS] != charT) return false;
    } else {
      mapST[charS] = charT;
    }

    if (mapTS.containsKey(charT)) {
      if (mapTS[charT] != charS) return false;
    } else {
      mapTS[charT] = charS;
    }
  }

  return true;
}

