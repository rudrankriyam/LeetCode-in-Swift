class Solution {
    func nextPermutation(_ nums: inout [Int]) {
        var index = nums.count - 2
        while index >= 0 && nums[index + 1] <= nums[index] {
            index -= 1
        }
        if index >= 0 {
            var indexTwo = nums.count - 1
            while indexTwo >= 0 && nums[indexTwo] <= nums[index] {
                indexTwo -= 1
            }
            (nums[indexTwo], nums[index]) = (nums[index], nums[indexTwo])
        }
        reverse(&nums, index + 1)
    }
    
    func reverse(_ nums: inout [Int], _ start: Int) {
        var index = start
        var indexTwo = nums.count - 1

        while (index < indexTwo) {
            (nums[indexTwo], nums[index]) = (nums[index], nums[indexTwo])
            index += 1
            indexTwo -= 1
        }
    }
}