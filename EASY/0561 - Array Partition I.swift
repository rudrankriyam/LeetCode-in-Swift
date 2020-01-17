class Solution {
    func arrayPairSum(_ nums: [Int]) -> Int {
        let nums = nums.sorted()
        var sum: Int = 0
        var index = 0
        
        while index < nums.count {
            sum += nums[index]
            index += 2
        }
        return sum
    }
}