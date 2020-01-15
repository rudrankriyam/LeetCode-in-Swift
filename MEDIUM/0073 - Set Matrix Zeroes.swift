    func setZeroes(_ matrix: inout [[Int]]) {
        var rowsSet = Set<Int>()
        var columnsSet = Set<Int>()
        var isColumn = false
        
        for rowIndex in matrix.indices {
            if matrix[rowIndex][0] == 0 { isColumn = true }
            for columnIndex in 1..<matrix[0].count {
                if matrix[rowIndex][columnIndex] == 0 {
                    matrix[rowIndex][0] = 0
                    matrix[0][columnIndex] = 0
                }
            }
        }
        for rowIndex in 1..<matrix.count {
            for columnIndex in 1..<matrix[0].count {
                if matrix[rowIndex][0] == 0 || matrix[0][columnIndex] == 0 {
                    matrix[rowIndex][columnIndex] = 0
                }
            }
        }
        
        if matrix[0][0] == 0 {
            for columnIndex in matrix[0].indices {
                matrix[0][columnIndex] = 0
            }
        }
        if isColumn {
            for rowIndex in matrix.indices {
                matrix[rowIndex][0] = 0
            }
        }
    }
}