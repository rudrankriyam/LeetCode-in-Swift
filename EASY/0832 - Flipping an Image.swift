class Solution {
    func flipAndInvertImage(_ A: [[Int]]) -> [[Int]] {
        var matrix = A
        
        for row in matrix.indices {
            for column in 0..<(matrix[0].count + 1) / 2 {
                var temp = matrix[row][column]
                matrix[row][column] = matrix[row][flippingMatrix[0].count - 1 - column]
                matrix[row][matrix[0].count - 1 - column] = temp
            }
        }
        
        for row in matrix.indices {
            for column in matrix[0].indices {
                matrix[row][column] == 1 ? (matrix[row][column] = 0) : (matrix[row][column] = 1)
            }
        }
        return matrix
    }
}