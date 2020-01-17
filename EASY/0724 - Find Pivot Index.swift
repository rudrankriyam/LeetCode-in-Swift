class Solution {
    func pivotIndex(_ nums: [Int]) -> Int {
        if nums.count < 3 { return -1 }
        var leftSum = 0
        let totalSum = nums.reduce(0, +)
        
        for (index, number) in nums.enumerated() {
            if leftSum == (totalSum - leftSum - number) {
                return index
            }
            leftSum += number
        }
        return -1   
    }
}