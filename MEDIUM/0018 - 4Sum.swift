class Solution {
    func fourSum(_ nums: [Int], _ target: Int) -> [[Int]] {
        if nums.count < 4 { return [] }
        var outputArray = [[Int]]()
        var nums = nums.sorted()

        for index1 in 0..<nums.count - 3 {
            if index1 > 0 && nums[index1] == nums[index1 - 1] { continue }
            for index2 in (index1 + 1)..<nums.count - 2 {
                if index2 > (index1 + 1) && nums[index2] == nums[index2 - 1] { continue }

                var left = index2 + 1
                var right = nums.count - 1
                while left < right {
                    let leftSum = nums[index1] + nums[index2]
                    let rightSum = nums[left] + nums[right]
                    
                    if rightSum + leftSum == target {
                        outputArray.append([nums[index1], nums[index2], nums[left],  nums[right]])
                        while left < right && nums[left] == nums[left + 1] { left += 1 }
                        while left < right && nums[right] == nums[right - 1] { right -= 1 }
                        left += 1
                        right -= 1
                    } else if rightSum + leftSum > target { 
                        right -= 1
                    } else {
                        left += 1
                    }
                }
            }
        }
        return outputArray
    }
}