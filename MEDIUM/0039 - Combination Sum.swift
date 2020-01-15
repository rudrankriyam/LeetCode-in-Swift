class Solution {
    func combinationSum(_ candidates: [Int], _ target: Int) -> [[Int]] {
        return findCombinations(0, target, candidates)
    }
    
    func findCombinations(_ candidate: Int, _ target: Int, _ candidates: [Int]) -> [[Int]] {
        var answer = [[Int]]()

        for index in candidate..<candidates.count {
            if candidates[index] == target { 
                answer.append([candidates[index]]) 
            } else if candidates[index] < target {
                let combinations = findCombinations(index, target - candidates[index], candidates)
                if combinations.count > 0 {
                    for combination in combinations {
                        answer.append(combination + [candidates[index]])
                    }
                }
            }
        } 
        return answer
    }
}