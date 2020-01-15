class Solution {
    func subarraySum(_ nums: [Int], _ k: Int) -> Int {
        var count = 0, sum = 0
        var mappingSumToCount = [Int: Int]()
        mappingSumToCount[0] = 1
        
        for index in nums.indices {
            sum += nums[index]
            if let subarraySum = mappingSumToCount[sum - k] { 
                count += subarraySum 
            }
            mappingSumToCount[sum, default: 0] += 1
        }
        return count
    }
}

