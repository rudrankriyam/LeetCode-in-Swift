class Solution {
    func threeSumClosest(_ nums: [Int], _ target: Int) -> Int {
        var closestSum = nums[0] + nums[1] + nums[nums.count - 1]
        if nums.count < 3 { return 0 }
        var nums = nums.sorted()

        for index in 0..<nums.count - 2 {
            if (index > 0 && nums[index] == nums[index - 1]) { continue }
            var left = index + 1
            var right = nums.count - 1

            while left < right {
                let currentSum = nums[index] + nums[left] + nums[right]
                if currentSum > target {
                    right -= 1
                } else {
                    left += 1
                }
                if abs(currentSum - target) < abs(closestSum - target) {
                    closestSum = currentSum
                }
            }
        }
        return closestSum
    }
}