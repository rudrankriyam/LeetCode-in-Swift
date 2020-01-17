class Solution {
    func lastStoneWeight(_ stones: [Int]) -> Int {
        guard stones.count != 0 else { return 0 }
        
        var stones = stones
        while stones.count >= 2 {
            smashStones(&stones)
        }
        return stones.count == 0 ? 0 : stones.last!
    }
    
    func smashStones(_ stones: inout [Int]) {
        stones.sort()
        let heaviestStone = stones.removeLast()
        let secondHeaviestStone = stones.removeLast()
        let difference = heaviestStone - secondHeaviestStone
        
        if difference == 0 { return }
        stones.append(difference)
    }
}