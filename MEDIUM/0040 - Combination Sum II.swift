class Solution {
    func combinationSum2(_ candidates: [Int], _ target: Int) -> [[Int]] {
        var result = [[Int]]()
        var candidate = [Int]()
        
        findCombinations(&result, &candidate, candidates.sorted(), target, 0)
        return result
    }
    
    private func findCombinations(_ result: inout [[Int]], _ candidate: inout [Int], _ candidates: [Int], _ remain: Int, _ start: Int) {
        if remain < 0 { 
            return 
        } else if remain == 0 { 
            result.append(candidate) 
        } else {
            for index in start..<candidates.count {
                if index > start && candidates[index] == candidates[index - 1] { continue }
                candidate.append(candidates[index])
                findCombinations(&result, &candidate, candidates, remain - candidates[index], index + 1)
                candidate.removeLast()
            }
        }
    }
}