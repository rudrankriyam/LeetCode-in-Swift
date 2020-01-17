class Solution {
    func splitArray(_ nums: [Int], _ m: Int) -> Int {
        var left = 0
        var right = 0
        
        for number in nums {
            left = max(left, number)
            right += number
        }
        
        var answer = right
        
        while left <= right {
            var middle = (left + right) >> 1
            var sum = 0
            var current = 1
            
            for number in nums {
                if sum + number > middle {
                    current += 1
                    sum = number 
                } else {
                    sum += number 
                }
            }
            
            if current <= m {
                answer = min(answer, middle)
                right = middle - 1
            } else {
                left = middle + 1
            }
        }
        return answer 
    }
}