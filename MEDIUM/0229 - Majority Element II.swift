class Solution {
    func majorityElement(_ nums: [Int]) -> [Int] {
        guard nums.count > 0 else { return [] }

        var candidate1 = nums[0]
        var candidate2 = 0
        var count1 = 0
        var count2 = 0
        var result = [Int]()

        for number in nums {
            if number == candidate1 {
                count1 += 1
            } else if number == candidate2 {
                count2 += 1
            } else if count1 == 0 {
                count1 += 1
                candidate1 = number
            } else if count2 == 0 {
                count2 += 1
                candidate2 = number
            } else {
                count1 -= 1
                count2 -= 1
            }
        }
        count1 = 0
        count2 = 0

        for number in nums {
            if number == candidate1 {
                count1 += 1
            } else if number == candidate2 {
                count2 += 1
            }
        }

        if count1 > nums.count / 3 {
            result.append(candidate1)
        }
        if count2 > nums.count / 3 && candidate1 != candidate2 {
            result.append(candidate2)
        }
        return result
    }
}