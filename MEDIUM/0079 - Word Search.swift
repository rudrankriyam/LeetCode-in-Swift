class Solution {
    func exist(_ board: [[Character]], _ word: String) -> Bool {
        if board.isEmpty { return false }
        let wordArray = Array(word)
        var board = board
        for row in board.indices {
            for column in board[0].indices {
                if board[row][column] == wordArray[0] && exploreCharacters(row, column, &board, wordArray, 0) {
                    return true
                }
            } 
        }
        return false
    }
    
    func exploreCharacters(_ row: Int, _ column: Int, _ board: inout [[Character]], _ word: [Character], _ count: Int) -> Bool {
        if count == word.count { return true }
        if row < 0 || row >= board.count { return false }
        if column < 0 || column >= board[0].count { return false }
        if board[row][column] != word[count] { return false }
        
        var temp = board[row][column]
        board[row][column] = "." 
        let characterExists = exploreCharacters(row + 1, column, &board, word, count + 1) || exploreCharacters(row - 1, column, &board, word, count + 1) || exploreCharacters(row, column + 1, &board, word, count + 1) || exploreCharacters(row, column - 1, &board, word, count + 1)
        board[row][column] = temp
        return characterExists
    }
}