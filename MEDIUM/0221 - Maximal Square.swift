class Solution {
    func maximalSquare(_ matrix: [[Character]]) -> Int {
        if matrix.count == 0 { return 0 }
        var rows = matrix.count, columns = rows > 0 ? (matrix[0].count) : 0
        var largestSquare = Array(repeating: 0, count: columns + 1)
        var area = 0, previous = 0 
        
        for row in 1...rows {
            for column in 1...columns {
                var temp = largestSquare[column]
                if (matrix[row - 1][column - 1]) == "1" {
                    largestSquare[column] = min(min(previous, largestSquare[column - 1]), largestSquare[column]) + 1
                    area = max(area, largestSquare[column])
                } else { 
                    largestSquare[column] = 0 
                }
                previous = temp
            }
        }
        return area * area
    }
}