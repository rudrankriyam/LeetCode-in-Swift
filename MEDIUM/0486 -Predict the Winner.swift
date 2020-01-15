class Solution {
    func PredictTheWinner(_ nums: [Int]) -> Bool {
        var score = Array(repeating: 0, count: nums.count)
        
        for start in stride(from: nums.count, through: 0, by: -1) {
            for end in stride(from: start + 1, through: nums.count - 1, by: 1) {
                
                var firstScore = nums[start] - score[end]
                var secondScore = nums[end] - score[end - 1]
                
                score[end] = max(firstScore, secondScore)
            }
        }
        return score[nums.count - 1] >= 0
    }
}