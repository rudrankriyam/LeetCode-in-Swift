class Solution {
    func searchRange(_ nums: [Int], _ target: Int) -> [Int] {
        var targetRange = [-1, -1]
        var leftIndex = extremeInsertionIndex(nums, target, true) 
        if leftIndex == nums.count || nums[leftIndex] != target { return targetRange }
        targetRange[0] = leftIndex
        targetRange[1] = extremeInsertionIndex(nums, target, false) - 1
        
        return targetRange
    }
             
    func extremeInsertionIndex(_ nums: [Int], _ target: Int, _ left: Bool) -> Int {
        var lowPointer = 0
        var highPointer = nums.count

        while lowPointer < highPointer {
            var mid = (lowPointer + highPointer) / 2
            if nums[mid] > target || (left && target == nums[mid]) {
                highPointer = mid
            } else {
                lowPointer = mid + 1
            }
        }
        return lowPointer 
    }
}