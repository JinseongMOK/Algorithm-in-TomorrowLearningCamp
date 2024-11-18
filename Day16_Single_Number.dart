class Solution {
  int singleNumber(List<int> nums) {
    int result = 0;

    for (int xor in nums) {
        result ^= xor;
    }
    return result;
  }
}
