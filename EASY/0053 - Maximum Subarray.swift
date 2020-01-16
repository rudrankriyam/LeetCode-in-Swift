class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        var n = nums.count
        var nums = nums
        var maximumSum = nums[0]
        for index in 1..<n {
            if nums[index - 1] > 0 {
                nums[index] = max(nums[index], nums[index] + nums[index - 1])
            }
            maximumSum = max(maximumSum, nums[index])
        }
        return maximumSum
    }
}