bool increasingTriplet(List<int> nums) {
  // 두 개의 변수로 증가하는 두 수를 추적
  int first = nums[0];
  int second = double.maxFinite.toInt();

  for (int num in nums) {
    if (num <= first) {
      first = num; // 가장 작은 수 갱신
    } else if (num <= second) {
      second = num; // 두 번째로 작은 수 갱신
    } else {
      // 세 번째로 큰 수가 발견된 경우, 증가하는 세 개의 수열이 존재
      return true;
    }
  }
  return false;
}
