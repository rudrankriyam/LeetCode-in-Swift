// Solution One

class Solution {
    func isValidSudoku(_ board: [[Character]]) -> Bool {
        if board == nil || board.count == 0 { return false }

        var rowSets = Array(repeating: Set<Character>(), count: 9)
        var columnSets = Array(repeating: Set<Character>(), count: 9)
        var boxSets = Array(repeating: Set<Character>(), count: 9)
        
        for rowIndex in board.indices {
            for columnIndex in board[0].indices {
                let digit = board[rowIndex][columnIndex]
                let boxIndex = (rowIndex / 3) * 3 + columnIndex / 3

                if digit == "." { continue }

                if rowSets[rowIndex].contains(digit) || columnSets[columnIndex].contains(digit) || boxSets[boxIndex].contains(digit) {
                    return false
                }

                rowSets[rowIndex].insert(digit)
                columnSets[columnIndex].insert(digit)
                boxSets[boxIndex].insert(digit)
            }
        }
        return true
    }
}

// Solution Two

class Solution {
    func isValidSudoku(_ board: [[Character]]) -> Bool {
        var rowSets = Array(repeating: Set<Character>(), count: 9)
        var columnSets = Array(repeating: Set<Character>(), count: 9)
        var boxSets = Array(repeating: Set<Character>(), count: 9)

        for rowIndex in board.indices {
            for columnIndex in board[0].indices {
                let digit = board[rowIndex][columnIndex]
                let boxIndex = (rowIndex / 3) * 3 + columnIndex / 3

                if digit == "." { continue }

                if !rowSets[rowIndex].insert(digit).inserted { return false }

                if !columnSets[columnIndex].insert(digit).inserted { return false }

                if !boxSets[boxIndex].insert(digit).inserted { return false }
            }
        }
        return true
    }
}

// Solution Three

class Solution {
    func isValidSudoku(_ board: [[Character]]) -> Bool {
        var rows = Array(repeating: [Character: Int](), count: 9)
        var columns = Array(repeating: [Character: Int](), count: 9)
        var boxes = Array(repeating: [Character: Int](), count: 9)

        for rowIndex in board.indices {
            for columnIndex in board[0].indices {
                let digit = board[rowIndex][columnIndex]
                let boxIndex = (rowIndex / 3) * 3 + columnIndex / 3

                if digit == "." { continue }

                rows[rowIndex][digit, default: 0] += 1
                columns[columnIndex][digit, default: 0] += 1
                boxes[boxIndex][digit, default: 0] += 1

                if rows[rowIndex][digit]! > 1 || columns[columnIndex][digit]! > 1  || boxes[boxIndex][digit]! > 1 {
                    return false
                }
            }
        }
        return true
    }
}
