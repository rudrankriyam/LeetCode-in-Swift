class Solution {
    func longestOnes(_ A: [Int], _ K: Int) -> Int {
        var K = K
        var left = 0
        var right = 0
        while right < A.count {
            if A[right] == 0 {
                K -= 1 
            }
            
            if K < 0 { 
                if A[left] == 0 { 
                    K += 1 
                }
                left += 1
            }
            right += 1
        }
        return right - left
    }
}