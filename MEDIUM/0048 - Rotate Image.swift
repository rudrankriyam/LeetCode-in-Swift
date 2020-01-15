class Solution {
    func rotate(_ matrix: inout [[Int]]) {
        if matrix.count < 1 { return }
        var numberOfRows = matrix.count
        
        for row in 0..<numberOfRows {
            for column in row..<numberOfRows {
                var temp = matrix[column][row]
                matrix[column][row] = matrix[row][column]
                matrix[row][column] = temp
            }
        }
        
        for row in 0..<numberOfRows {
            for column in 0..<numberOfRows / 2 {
                var temp = matrix[row][column]
                matrix[row][column] = matrix[row][numberOfRows - column - 1]
                matrix[row][numberOfRows - column - 1] = temp
            }
        }
    }
}