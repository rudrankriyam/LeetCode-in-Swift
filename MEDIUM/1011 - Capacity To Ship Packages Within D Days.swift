class Solution {
    func shipWithinDays(_ weights: [Int], _ D: Int) -> Int {
        var left = 0
        var right = 0
        
        for weight in weights {
            left = max(left, weight)
            right += weight
        }
        
        while left < right {
            var middle = (left + right) / 2
            var days = 1
            var currentWeightInBag = 0
            
            for weight in weights {
                if currentWeightInBag + weight > middle {
                    days += 1
                    currentWeightInBag = 0
                }
                currentWeightInBag += weight
            }
            if days > D { 
                left = middle + 1
            } else { 
                right = middle 
            }
        }
        return left
    }
}