class Solution {
    func generateMatrix(_ n: Int) -> [[Int]] {        
        var squareMatrix = Array(repeating: Array(repeating: 0, count: n), count: n)
    
        var rowStart = 0
        var columnStart = 0
        var columnEnd = squareMatrix.count - 1
        var rowEnd = squareMatrix[0].count - 1
        var number = 1

        while rowStart <= rowEnd && columnStart <= columnEnd {
            for column in stride(from: columnStart, through: columnEnd, by: 1) {
                squareMatrix[rowStart][column] = number
                number += 1
            }
            rowStart += 1 

            for row in stride(from: rowStart, through: rowEnd, by: 1) {
                squareMatrix[row][columnEnd] = number
                number += 1
            }

            columnEnd -= 1
            if rowStart <= rowEnd {
                for column in stride(from: columnEnd, through: columnStart, by: -1) {
                    squareMatrix[rowEnd][column] = number
                    number += 1
                }
                rowEnd -= 1
            }
            
            if columnStart <= columnEnd {
                for row in stride(from: rowEnd, through: rowStart, by: -1) {
                    squareMatrix[row][columnStart] = number
                    number += 1
                }
                columnStart += 1
            }  
        }
        return squareMatrix
    }
}