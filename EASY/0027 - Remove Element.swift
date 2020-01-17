class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        var left = 0
        var right = nums.count
        
        while left < right {
            if nums[left] == val {
                nums[left] = nums[right - 1]
                right -= 1
            } else {
                left += 1
            }
        }
        return right
    }
}