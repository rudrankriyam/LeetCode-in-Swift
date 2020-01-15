class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        guard nums.count >= 2 else { return nums }
        var result = Array(repeating: 1, count: nums.count)
        var start = 1
        var end = 1

        for index in stride(from: 0, through: result.count - 1, by: 1) {
            result[index] *= start
            start *= nums[index]

            result[result.count - 1 - index] *= end
            end *= nums[nums.count - 1 - index]
        }
        return result
    }
}