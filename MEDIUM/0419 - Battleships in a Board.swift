class Solution {
    func countBattleships(_ board: [[Character]]) -> Int {
        if board.count == 0 { return 0 }
 
        var numberOfBattleShips = 0
        
        for row in board.indices {
            for column in board[0].indices {
                if board[row][column] == "." { 
                    continue 
                }
                
                if row > 0 && board[row - 1][column] == "X" { 
                    continue
                }
                
                if column > 0 && board[row][column - 1] == "X" {
                    continue 
                }
                
                numberOfBattleShips += 1
            }
        }
        return numberOfBattleShips
    }
}