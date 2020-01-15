class Solution {
    func kthSmallest(_ matrix: [[Int]], _ k: Int) -> Int {
        
        var left = matrix[0][0]
        var right = matrix[matrix.count - 1][matrix[0].count - 1] + 1
        
        while left < right {
            var middle = left + (right - left) / 2
            var count = 0
            var column = matrix[0].count - 1
            for row in 0..<matrix.count {
                while column >= 0 && matrix[row][column] > middle { 
                    column -= 1 
                }
                count += (column + 1)
            }
            if count < k { 
                left = middle + 1 
            } else { 
                right = middle 
            }
        }
        return left
    }
}