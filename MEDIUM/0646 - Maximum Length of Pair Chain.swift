class Solution {
    func findLongestChain(_ pairs: [[Int]]) -> Int {
        var pairs = pairs.sorted(by: {$0[1] < $1[1] })
        
        var current = Int.min
        var answer = 0
        
        for pair in pairs {
            if current < pair[0] { 
                current = pair[1]
                answer += 1 
            }
        }
        return answer
    }
}