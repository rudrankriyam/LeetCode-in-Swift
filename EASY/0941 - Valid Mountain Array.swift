class Solution {
    func validMountainArray(_ A: [Int]) -> Bool {
        guard A.count >= 3 else { return false }
        var index = 0
        while index < A.count && index + 1 < A.count && A[index] < A[index + 1] {
            index += 1
        }
        if index == 0 || index + 1 >= A.count { return false }
        
        while index < A.count && index + 1 < A.count {
            if A[index] <= A[index + 1] { return false }
            index += 1
        }
        return true 
    }
}