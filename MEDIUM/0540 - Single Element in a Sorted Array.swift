class Solution {
    func singleNonDuplicate(_ nums: [Int]) -> Int {
        var left = 0
        var right = nums.count - 1
        var halfIndex = nums.count / 2
        
        if right == 0 { 
            return nums[0] 
        }
        
        if nums[halfIndex] != nums[halfIndex - 1] && nums[halfIndex] != nums[halfIndex + 1] {
            return nums[halfIndex]
        }
        
        while left < nums.count / 2 && nums.count > 1 {
            if nums[left] != nums[left + 1] { 
                return nums[left] 
            }
            
            if nums[right] != nums[right - 1] { 
                return nums[right] 
            }
            
            left += 2
            right -= 2
        }
        return 0
    }
}