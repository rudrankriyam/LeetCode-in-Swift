class Solution {
    func fourSumCount(_ A: [Int], _ B: [Int], _ C: [Int], _ D: [Int]) -> Int {
        var numberOfTuples = 0
        var mappingSumToCount = [Int: Int]()
        
        for indexA in A.indices {
            for indexB in B.indices {
                var sum = A[indexA] + B[indexB]
                mappingSumToCount[sum, default: 0] += 1
            }
        }
        
        for indexC in C.indices {
            for indexD in D.indices {
                var key = 0 - C[indexC] - D[indexD]
                if let count = mappingSumToCount[key] {
                    numberOfTuples += count
                }
            }
        }
        return numberOfTuples 
    }
}