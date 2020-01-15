class Solution {
    func intervalIntersection(_ A: [[Int]], _ B: [[Int]]) -> [[Int]] {
        var outputArray = [[Int]]()
        var pointerOne = 0
        var pointerTwo = 0
        
        while pointerOne < A.count && pointerTwo < B.count {
            var low = max(A[pointerOne][0], B[pointerTwo][0])
            var high = min(A[pointerOne][1], B[pointerTwo][1])
            
            if low <= high { 
                outputArray.append([low, high])
            }
            
            if A[pointerOne][1] < B[pointerTwo][1] { 
                pointerOne += 1
            } else { 
                pointerTwo += 1
            }
        }
        return outputArray
    }
}