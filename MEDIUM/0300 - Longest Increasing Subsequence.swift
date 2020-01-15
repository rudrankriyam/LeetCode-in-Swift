class Solution {
    func lengthOfLIS(_ nums: [Int]) -> Int {
        if nums.count == 0 { return 0 }
        
        var array = Array(repeating: 0, count: nums.count)
        array[0] = 1
        var longestSubsequence = 1
        
        for index in 1..<array.count {
            var currentMax = 0
            for indexTwo in 0..<index {
                if nums[index] > nums[indexTwo] {
                    currentMax = max(currentMax, array[indexTwo])
                }
            }
            array[index] = currentMax + 1
            longestSubsequence = max(longestSubsequence, array[index])
        }
        return longestSubsequence
    }
}