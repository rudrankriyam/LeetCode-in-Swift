class Solution {
    func minimumTotal(_ triangle: [[Int]]) -> Int {
        guard triangle.count > 0 else { return 0 }
        var triangleRow = triangle.last!
        var row = triangle.count - 2
        while row >= 0 {
            for column in triangle[row].indices {
                triangleRow[column] = triangle[row][column] + min(triangleRow[column], triangleRow[column + 1])
            }
            row -= 1
        }
        return triangleRow[0]
    }
}