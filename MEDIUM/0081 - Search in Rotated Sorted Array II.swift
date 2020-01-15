class Solution {
    func search(_ nums: [Int], _ target: Int) -> Bool {
        if nums.count == 0 { return false }
        var left = 0
        var right = nums.count - 1
        
        while left <= right {
            var middle = (right + left) / 2
            
            if target == nums[middle] { 
                return true 
            } else if nums[middle] > nums[right] {
                if nums[middle] > target && nums[left] <= target { 
                    right = middle 
                } else { 
                    left = middle + 1 
                }
            } else if nums[middle] < nums[right] {
                if nums[middle] < target && nums[right] >= target { 
                    left = middle + 1 
                } else { 
                    right = middle 
                }
            } else { 
                right -= 1 
            }
        }
        return nums[left] == target ? true : false
    }
}