class Solution {
    func oddCells(_ n: Int, _ m: Int, _ indices: [[Int]]) -> Int {
        var matrix = Array(repeating: Array(repeating: 0, count: m), count: n)
        var numberOfOddCells = 0
        for index in indices {
            let row = index[0]
            let column = index[1]
            
            for rowIndex in matrix.indices {
                matrix[rowIndex][column] += 1
            }
            
            for columnIndex in matrix[0].indices {
                matrix[row][columnIndex] += 1
            }
        }
        
        for row in matrix.indices {
            for column in matrix[0].indices {
                if matrix[row][column] % 2 != 0 {
                    numberOfOddCells += 1
                }
            }
        }
        return numberOfOddCells
    }
}