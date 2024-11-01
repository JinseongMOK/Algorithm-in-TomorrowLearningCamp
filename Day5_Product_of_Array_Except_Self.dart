class Solution {
  List<int> productExceptSelf(List<int> nums) {
    List<int> result = List.filled(nums.length, 1);
    for (int i = 1; i < nums.length; i++) {
      result[i] = result[i - 1] * nums[i - 1];
    }
    int basic = 1;
    for (int i = nums.length - 1; i >= 0; i--) {
      result[i] = result[i] * basic;
      basic *= nums[i];
    }
    return result;
  }
}
