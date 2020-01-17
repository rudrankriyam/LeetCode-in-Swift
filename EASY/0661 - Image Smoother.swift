class Solution {
    func imageSmoother(_ M: [[Int]]) -> [[Int]] {
        var matrix = M
        for row in matrix.indices {
            for column in matrix[0].indices {
            
                let minRow = row == 0 ? 0 : row - 1
                let maxRow = row == M.count - 1 ? M.count - 1 : row + 1
            
                let minColumn = column == 0 ? 0 : column - 1
                let maxColumn = column == matrix[row].count - 1 ? matrix[row].count - 1 : column + 1
            
                var sum = 0
                var count = 0
            
                for rowIndex in minRow...maxRow {
                    for columnIndex in minColumn...maxColumn {
                        sum += M[rowIndex][columnIndex]
                        count += 1
                    }
                }
                matrix[row][column] = (sum / count)
            }
        }
        return matrix
    }
}