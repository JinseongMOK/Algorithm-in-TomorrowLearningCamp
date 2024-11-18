class Solution {
  List<int> countBits(int n) {
    // 결과를 저장할 리스트
    List<int> count = [];

    // 0부터 n까지 반복
    for (int i = 0; i <= n; i++) {
      // i를 2진수 문자열로 변환
      String changeNum = i.toRadixString(2);

      // 2진수 문자열에서 '1'의 개수를 셈
      int onesCount = 0;
      for (int j = 0; j < changeNum.length; j++) {
        if (changeNum[j] == '1') {
          onesCount++;
        }
      }

      // 리스트에 추가
      count.add(onesCount);
    }

    return count;
  }
}

