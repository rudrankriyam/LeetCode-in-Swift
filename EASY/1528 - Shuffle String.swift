class Solution {
    func numIdenticalPairs(_ nums: [Int]) -> Int {
        var identicalPairs = 0

        for index in nums.indices {
            for secondIndex in stride(from: index + 1, to: nums.count, by: 1) {
                if nums[index] == nums[secondIndex] {
                    identicalPairs += 1
                }
            }
        }
        return identicalPairs
    }
}
