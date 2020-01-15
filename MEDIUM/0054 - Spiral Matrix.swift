class Solution {
    func spiralOrder(_ matrix: [[Int]]) -> [Int] {
        if matrix.count == 0 { return [] }
        var outputArray = [Int]()
        
        var rowStart = 0
        var columnStart = 0
        var rowEnd = matrix.count - 1
        var columnEnd = matrix[0].count - 1
        
        while rowStart <= rowEnd && columnStart <= columnEnd {
            for columnIndex in stride(from: columnStart, through: columnEnd, by: 1) {
                outputArray.append(matrix[rowStart][columnIndex])
            }
            rowStart += 1
            
            for rowIndex in stride(from: rowStart, through: rowEnd, by: 1) {
                outputArray.append(matrix[rowIndex][columnEnd])
            }
            columnEnd -= 1
            
            if rowStart <= rowEnd {
                for columnIndex in stride(from: columnEnd, through: columnStart, by: -1) {
                outputArray.append(matrix[rowEnd][columnIndex])
                }
                rowEnd -= 1
            }
            
            if columnStart <= columnEnd {
                for rowIndex in stride(from: rowEnd, through: rowStart, by: -1) {
                outputArray.append(matrix[rowIndex][columnStart])
                }
                columnStart += 1
            }
        }
        return outputArray
    }
}