class Solution {
    func numIslands(_ grid: [[Character]]) -> Int {
        var numberOfIslands = 0
        var grid = grid
        if grid == nil || grid.count == 0 { return 0 }
        
        for row in grid.indices {
            for column in grid[0].indices {
                if grid[row][column] == "1" {
                    numberOfIslands += 1 
                    exploreIslands(row, column, &grid)
                }
            }
        }
        return numberOfIslands 
    }
    
    func exploreIslands(_ row: Int, _ column: Int, _ grid: inout [[Character]]) {
        if row < 0 || row >= grid.count { return }
        if column < 0 || column >= grid[0].count { return}
        if grid[row][column] == "0" { return }
        grid[row][column] = "0"
        
        exploreIslands(row + 1, column, &grid)
        exploreIslands(row - 1, column, &grid)
        exploreIslands(row, column + 1, &grid)
        exploreIslands(row, column - 1, &grid)
    }
}