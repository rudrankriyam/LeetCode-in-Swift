class Solution {
    func rotate(_ nums: inout [Int], _ k: Int) {
        var k = k % nums.count
        reverse(&nums, 0, nums.count - 1)
        reverse(&nums, 0, k - 1)
        reverse(&nums, k, nums.count - 1)
    }
    
    func reverse(_ nums: inout [Int], _ start: Int, _ end: Int) {
        var start = start
        var end = end
        
        while start < end {
            var temp = nums[start]
            nums[start] = nums[end]
            nums[end] = temp
            start += 1
            end -= 1
        }
    }
}