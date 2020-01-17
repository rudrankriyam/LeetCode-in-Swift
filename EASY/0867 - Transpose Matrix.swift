class Solution {
    func transpose(_ A: [[Int]]) -> [[Int]] {
        var transposedMatrix = Array(repeating: Array(repeating: 0, count: A.count), count: A[0].count)
        for row in A.indices {
            for column in A[0].indices {
                transposedMatrix[column][row] = A[row][column]
            }
        }
        return transposedMatrix
    }
}