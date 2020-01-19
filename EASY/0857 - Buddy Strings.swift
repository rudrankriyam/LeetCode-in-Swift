class Solution {
    func buddyStrings(_ A: String, _ B: String) -> Bool {
        if A.count != B.count { return false }
        
        var A = Array(A), B = Array(B)
        
        if A == B {
            return A.count > Set(A).count 
        } else {
            return differentLetters(A, B)
        }
    }
    
    func differentLetters(_ A: [Character], _ B: [Character]) -> Bool {
        var indices = [Int]()
        for index in A.indices where A[index] != B[index] {
            indices.append(index)
            if indices.count > 2 { return false }
        }
        return A[indices[0]] == B[indices[1]] && A[indices[1]] == B[indices[0]]
    }
}