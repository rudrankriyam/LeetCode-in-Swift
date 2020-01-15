class Solution {
    func uniquePaths(_ m: Int, _ n: Int) -> Int {
        var uniquePathMatrix = Array(repeating: Array(repeating: 1, count: n), count: m)
  
        for row in 1..<uniquePathMatrix.count {
            for column in 1..<uniquePathMatrix[0].count {
                uniquePathMatrix[row][column] = uniquePathMatrix[row - 1][column] + uniquePathMatrix[row][column - 1]
            }
        }
        return uniquePathMatrix[m - 1][n - 1]
    }
}