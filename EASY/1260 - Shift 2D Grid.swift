class Solution {
    func shiftGrid(_ grid: [[Int]], _ k: Int) -> [[Int]] {
        if grid.count == 0 || grid[0].count == 0 { return [] }
        var shiftedGrid = grid
        
        for row in grid.indices {
            for column in grid[0].indices {
                let index = (k + (column + (row * grid.count))) % (grid.count * grid[0].count)
                let newRow = index / grid.count
                let newColumn = index % grid.count
                shiftedGrid[newRow][newColumn] = grid[row][column]
            }
        }
        return shiftedGrid
    }
}