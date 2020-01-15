class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var left = 0
        var right = nums.count - 1
        
        while left <= right {
            var pivot = left + (right - left) / 2
            var pivotValue = nums[pivot]
            var leftValue = nums[left]
            var rightValue = nums[right]
            
            if pivotValue == target { 
                return pivot 
            } else if pivotValue >= leftValue {
                if target >= leftValue && target < pivotValue { 
                    right = pivot - 1 
                } else { 
                    left = pivot + 1
                }
            } else {
                if target <= rightValue  && target > pivotValue { 
                    left = pivot + 1 
                } else { 
                    right = pivot - 1 
                }
            }
        }
        return -1
    }
}