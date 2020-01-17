class Solution {
    func islandPerimeter(_ grid: [[Int]]) -> Int {
        guard grid.count > 0, grid[0].count > 0 else { return 0 }
        var perimeter = 0
        
        for row in grid.indices {
            for column in grid[0].indices {
                if grid[row][column] == 1 {
                    perimeter += 4
                    if column + 1 < grid[0].count, grid[row][column + 1] == 1 {
                        perimeter -= 2
                    }
                    if row + 1 < grid.count, grid[row + 1][column] == 1 {
                        perimeter -= 2
                    }
                } 
            }
        }
        return perimeter
    }
}