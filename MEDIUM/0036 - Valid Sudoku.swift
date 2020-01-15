class Solution {
    func isValidSudoku(_ board: [[Character]]) -> Bool {
        if board == nil || board.count == 0 { return false }
        var rowSets = Array(repeating: Set<Character>(), count: 9)
        var colSets = rowSets
        var boxSets = rowSets
        
        for row in board.indices {
            for col in board[0].indices {
                let digit = board[row][col]
                if digit == "." { continue }
                let box = (row / 3) * 3 + col / 3
                if rowSets[row].contains(digit) || colSets[col].contains(digit) || boxSets[box].contains(digit) { return false }
                rowSets[row].insert(digit)
                colSets[col].insert(digit)
                boxSets[box].insert(digit)
            }
        }
        return true
    }
}