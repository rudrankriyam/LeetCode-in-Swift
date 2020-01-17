class Solution {
    func findJudge(_ N: Int, _ trust: [[Int]]) -> Int {
        if trust.count == 0 { return N == 1 ? 1 : -1 }
        var trustCount = Array(repeating: 0, count: N + 1)
        
        for t in trust {
            trustCount[t[1]] += 1
            trustCount[t[0]] -= 1
        }
        for person in 1..<trustCount.count {
            if trustCount[person] == N - 1 { 
                return person
            }
        }
        return -1
    }
}