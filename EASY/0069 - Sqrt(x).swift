class Solution {
    func mySqrt(_ x: Int) -> Int {
        if x < 2 { return x }
        
        var left = 2
        var right = x / 2
        while left <= right {
            var mid = (left + right) / 2
            var num = mid * mid
            if num > x { 
                right = mid - 1 
            } else if num < x { 
                left = mid + 1 
            } else { 
                return mid 
            }
        }
        return right
    }
}