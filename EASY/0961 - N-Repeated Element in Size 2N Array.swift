class Solution {
    func repeatedNTimes(_ A: [Int]) -> Int {
        for value in 1...4 {
            for element in 0..<(A.count - value) {
                if A[element] == A[value + element] {
                    return A[element]
                }
            }
        }
        return 0
    }
}