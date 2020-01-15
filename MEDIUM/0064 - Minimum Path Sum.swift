class Solution {
    func minPathSum(_ grid: [[Int]]) -> Int {
        if grid == nil || grid.count == 0 { return 0 }
        var numberOfRows = grid.count
        var numberOfColumns = grid[0].count
        
        var matrix = Array(repeating: Array(repeating: 0, count: numberOfColumns), count: numberOfRows)
        
        for rowIndex in 0..<numberOfRows {
            for columnIndex in 0..<numberOfColumns {
                matrix[rowIndex][columnIndex] += grid[rowIndex][columnIndex]
                if rowIndex > 0 && columnIndex > 0 {
                    matrix[rowIndex][columnIndex] += min(matrix[rowIndex - 1][columnIndex], matrix[rowIndex][columnIndex - 1]) 
                } else if rowIndex > 0 {
                    matrix[rowIndex][columnIndex] += matrix[rowIndex - 1][columnIndex]
                } else if columnIndex > 0 {
                    matrix[rowIndex][columnIndex] += matrix[rowIndex][columnIndex - 1]
                }
            }
        }
        return matrix[numberOfRows - 1][numberOfColumns - 1]
    }
}