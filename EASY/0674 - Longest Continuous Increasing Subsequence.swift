class Solution {
    func findLengthOfLCIS(_ nums: [Int]) -> Int {
        var answer = 0, anchor = 0
        for index in nums.indices {
            if index > 0 && nums[index - 1] >= nums[index] {
                anchor = index
            }
            answer = max(answer, index - anchor + 1)
        }
        return answer
    }
}