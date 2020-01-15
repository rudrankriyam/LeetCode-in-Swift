class Solution {
    func findPeakElement(_ nums: [Int]) -> Int {
        var left = 0
        var right = nums.count - 1
        
        while left < right {
            var middle = (left + right) / 2
    
            if nums[middle] > nums[middle + 1] { 
                right = middle 
            } else { 
                left = middle + 1 
            }
        }
        return left
    }
}