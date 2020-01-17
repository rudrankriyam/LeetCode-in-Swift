class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        var lastNonZero = 0
        
        for index in 0..<nums.count {
            if nums[index] != 0 {
                var temp = nums[lastNonZero]
                nums[lastNonZero] = nums[index]
                nums[index] = temp
                lastNonZero += 1
            }
        }
    }
}