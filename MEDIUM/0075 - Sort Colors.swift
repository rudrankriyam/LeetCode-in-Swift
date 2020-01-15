class Solution {
    func sortColors(_ nums: inout [Int]) {
        var start = 0
        var end = nums.count - 1
        var current = 0
        
        while current <= end {
            if nums[current] == 0 {
                swapNumbers(current, start, &nums)
                current += 1
                start += 1
            } else if nums[current] == 2 {
                swapNumbers(current, end, &nums)
                end -= 1
            } else {
                current += 1
            }
        }
    }
    
    private func swapNumbers(_ firstIndex: Int, _ secondIndex: Int, _ nums: inout [Int]) {
        var temp = nums[firstIndex]
        nums[firstIndex] = nums[secondIndex]
        nums[secondIndex] = temp
    }
}