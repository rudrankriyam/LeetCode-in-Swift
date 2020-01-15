class Solution {
    func solve(_ board: inout [[Character]]) {
        if board.count == 0 { return }
        
        for row in board.indices {
            if board[row][0] == "O" {
                exploreBoundaries(&board, row, 0)
            }
            
            if board[row][board[0].count - 1] == "O" {
                exploreBoundaries(&board, row, board[0].count - 1)
            }
        }
        
        for column in board[0].indices {
            if board[0][column] == "O" {
                exploreBoundaries(&board, 0, column)
            }
            
            if board[board.count - 1][column] == "O" {
                exploreBoundaries(&board, board.count - 1, column)
            }
        }
        
        for row in board.indices {
            for column in board[0].indices {
                if board[row][column] == "O" {
                    board[row][column] = "X"
                } else if board[row][column] == "*" {
                    board[row][column] = "O"
                }
            }
        }
    }
    
    func exploreBoundaries(_ board: inout [[Character]], _ row: Int, _ column: Int) {
        if row > board.count - 1 || row < 0 || column < 0 || column > board[0].count {
            return 
        }
        
        if board[row][column] == "O" {
            board[row][column] = "*"
        }
        
        if row > 0 && board[row - 1][column] == "O" {
            exploreBoundaries(&board, row - 1, column)
        }
        
        if row < board.count - 1 && board[row + 1][column] == "O" {
            exploreBoundaries(&board, row + 1, column)
        }
        
        if column > 0 && board[row][column - 1] == "O" {
            exploreBoundaries(&board, row, column - 1)
        }
        
        if column < board[0].count - 1 && board[row][column + 1]  == "O" {
            exploreBoundaries(&board, row, column + 1)
        }
        
        return
    }
}