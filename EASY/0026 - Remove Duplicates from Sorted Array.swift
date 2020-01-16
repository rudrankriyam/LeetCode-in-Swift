class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        if nums.count == 0 { return 0 }
        var count = 0
        for currentIndex in 1..<nums.count {
            if nums[count] != nums[currentIndex] {
                count += 1
                nums[count] = nums[currentIndex]
            }
        }
        return count + 1
    }
}