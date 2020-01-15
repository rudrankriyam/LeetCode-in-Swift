class Solution {
    func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
        if matrix.count == 0 || matrix == nil { return false }
        var row = matrix.count - 1, column = 0
        
        while row >= 0 && column < matrix[0].count {
            if matrix[row][column] > target { 
                row -= 1 
            } else if matrix[row][column] < target { 
                column += 1 
            } else { 
                return true 
            }
        }
        return false 
    }
}