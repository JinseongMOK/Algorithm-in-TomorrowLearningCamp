class Solution {
    int majorityElement(List<int> nums) {
        int candidate = nums[0];
        int count = 1;

        // 1차 투표
        for (int i = 1; i < nums.length; i++) {
            if (nums[i] == candidate) {
                count++; // 후보가 같으면 카운트 증가
            } else {
                count--; // 후보가 다르면 카운트 감소
                if (count == 0) {
                    candidate = nums[i]; // 카운트가 0이 되면 새로운 후보로 변경
                    count = 1; // 카운트 초기화
                }
            }
        }

        return candidate; // 최빈값 반환
    }
}
