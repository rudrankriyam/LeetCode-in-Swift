class Solution {
    func missingNumber(_ nums: [Int]) -> Int {
        var missingNumber = nums.count 
        for (index, number) in nums.enumerated() {
            missingNumber ^= index ^ number
        }
        return missingNumber
    }
}