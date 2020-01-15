class Solution {
    func minSubArrayLen(_ s: Int, _ nums: [Int]) -> Int {
        var lengthOfArray = nums.count
        var minimumLength = lengthOfArray + 1        
        var leftPointer = 0, sum = 0
        
        for index in 0..<nums.count {
            sum += nums[index]
            
            while sum >= s && leftPointer <= index {
                minimumLength = min(minimumLength, index + 1 - leftPointer)
                sum -= nums[leftPointer]
                leftPointer += 1
            }
        }
        return minimumLength == lengthOfArray + 1 ? 0 : minimumLength
    }
}