class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        var candidate = nums[0]
        var count = 0
        
        for number in nums {
            if number == candidate {
                count += 1
            } else if count == 0 {
                candidate = number
                count += 1
            } else {
                count -= 1
            }
        }
        return candidate
    }
}