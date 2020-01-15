class Solution {
    func canJump(_ nums: [Int]) -> Bool {
        guard !nums.isEmpty else { return true }
        
        var maximumReach = 0
        for index in 0..<nums.count - 1 {
            if maximumReach < nums[index] + index {
                maximumReach = nums[index] + index
            }
            if nums[index] == 0 && maximumReach == index { return false }
        }
        return true    
    }
}