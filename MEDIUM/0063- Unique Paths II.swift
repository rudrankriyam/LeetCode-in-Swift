class Solution {
    func uniquePathsWithObstacles(_ obstacleGrid: [[Int]]) -> Int {
        var obstacleGrid = obstacleGrid
        var numberOfRows = obstacleGrid.count
        var numberOfColumns = obstacleGrid[0].count
        
        if obstacleGrid[0][0] == 1 { return 0 }
        
        obstacleGrid[0][0] = 1
        
        for row in 1..<numberOfRows {
            obstacleGrid[row][0] = (obstacleGrid[row][0] == 0 && obstacleGrid[row - 1][0] == 1) ? 1 : 0
        }
        
        for column in 1..<numberOfColumns {
            obstacleGrid[0][column] = (obstacleGrid[0][column] == 0 && obstacleGrid[0][column - 1] == 1) ? 1 : 0
        }
        
        for row in 1..<numberOfRows {
            for column in 1..<numberOfColumns {
                if obstacleGrid[row][column] == 0 {
                    obstacleGrid[row][column] = obstacleGrid[row - 1][column] + obstacleGrid[row][column - 1]
                } else {
                    obstacleGrid[row][column] = 0
                }
            }
        }
        return obstacleGrid[numberOfRows - 1][numberOfColumns - 1]
    }
}