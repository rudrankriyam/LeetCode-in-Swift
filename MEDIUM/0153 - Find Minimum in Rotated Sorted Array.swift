class Solution {
    func findMin(_ nums: [Int]) -> Int {
        var firstValue = nums[0]
        if nums.count == 1 { return firstValue }
        
        var leftIndex = 0
        var rightIndex = nums.count - 1
        var middleIndex = 0
        
        if nums[rightIndex] > firstValue { return firstValue }
        
        while leftIndex < rightIndex {
            var middleIndex = (leftIndex + rightIndex) / 2

            if nums[middleIndex] > nums[rightIndex]  {
                leftIndex = middleIndex + 1
            } else {
                rightIndex = middleIndex 
            }
        }
        return nums[leftIndex]
    }
}