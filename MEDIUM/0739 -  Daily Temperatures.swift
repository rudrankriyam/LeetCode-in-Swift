class Solution {
    func dailyTemperatures(_ T: [Int]) -> [Int] {
        if T.count < 1 { return T }
        
        var maxTemperature = 101
        var answer = Array(repeating: 0, count: T.count)
        var nextArray = Array(repeating: Int.max, count: maxTemperature)
        var index = T.count - 1
        
        while index >= 0 {
            var warmerIndex = Int.max
            for temp in (T[index] + 1)..<maxTemperature {
                if nextArray[temp] < warmerIndex {
                    warmerIndex = nextArray[temp]
                }
            }
            if warmerIndex < Int.max {
                answer[index] = warmerIndex - index
                
            }
            nextArray[T[index]] = index
            index -= 1
        }
        return answer
    }
}