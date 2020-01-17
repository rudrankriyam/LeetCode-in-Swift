class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var left = 0
        var right = nums.count - 1
        
        while left <= right {
            var mid = (left + right) / 2
            var midValue = nums[mid]
            
            if midValue == target { 
                return mid 
            } else if midValue > target { 
                right = mid - 1 
            } else if midValue < target { 
                left = mid + 1
            }
        }
        return -1
    }
}