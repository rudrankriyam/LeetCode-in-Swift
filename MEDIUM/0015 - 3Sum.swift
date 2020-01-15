class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        var outputArray = [[Int]]()
        if nums.count < 3 { return [] }
        var nums = nums.sorted()

        for index in 0..<nums.count - 2 {
            if (index > 0 && nums[index] == nums[index - 1]) { continue }
            var left = index + 1
            var right = nums.count - 1

            while left < right { 
                var sum = nums[left] + nums[right] + nums[index]
                if sum == 0 {
                    outputArray.append([nums[index], nums[left], nums[right]])
                    while left < right && nums[left] == nums[left + 1] { 
                        left += 1 
                    }
                    while left < right && nums[right] == nums[right - 1] { 
                        right -= 1 
                    }
                    left += 1
                    right -= 1
                } else if sum > 0 {
                    right -= 1
                } else {
                    left += 1
                }
            }
        }
        return outputArray
    }
}