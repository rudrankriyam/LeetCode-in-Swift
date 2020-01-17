class Solution {
    var longestIncreasingPath = 1
    
    func longestIncreasingPath(_ matrix: [[Int]]) -> Int {
        guard !matrix.isEmpty else { return 0 }
        let M = matrix.count
        let N = matrix[0].count
        
        var intMatrix = Array(repeating: Array(repeating: -1, count: matrix[0].count), count: matrix.count)
        
        for row in matrix.indices {
            for column in matrix[0].indices {
                exploreMatrix(row, column, matrix, &intMatrix)
            }
        }
        return longestIncreasingPath
    }
    
    func exploreMatrix(_ row: Int, _ column: Int, _ matrix: [[Int]], _ intMatrix: inout [[Int]]) -> Int {
        guard intMatrix[row][column] == -1 else { 
            return intMatrix[row][column] 
        }
        
        let targetVal = matrix[row][column]
        var path = 1

        if row > 0 && matrix[row - 1][column] > targetVal { 
            path = max(path, 1 + exploreMatrix(row - 1, column, matrix, &intMatrix)) 
        }

        if column > 0 && matrix[row][column - 1] > targetVal{ 
            path = max(path, 1 + exploreMatrix(row, column - 1, matrix, &intMatrix)) 
        }

        if row < matrix.count - 1 && matrix[row + 1][column] > targetVal { 
            path = max(path, 1 + exploreMatrix(row + 1, column, matrix, &intMatrix)) 
        }

        if column < matrix[0].count - 1 && matrix[row][column + 1] > targetVal { 
            path = max(path, 1 + exploreMatrix(row, column + 1, matrix, &intMatrix)) 
        }

        intMatrix[row][column] = path
        longestIncreasingPath = max(longestIncreasingPath, path)
        return path
    }
}