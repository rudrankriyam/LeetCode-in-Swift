class Solution {
    func checkPossibility(_ nums: [Int]) -> Bool {
        var nums = nums
        var isModified = false

        for index in 0..<nums.count - 1 {
            if nums[index] > nums[index + 1] {
                if isModified {
                    return false
                }
                if index > 0 && nums[index + 1] <= nums[index - 1] {
                    nums[index + 1] = nums[index]
                }
                isModified = true
            }
        }
        return true
    }
}
