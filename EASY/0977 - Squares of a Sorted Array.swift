class Solution {
    func sortedSquares(_ A: [Int]) -> [Int] {
        var squaredArray = Array(repeating: 0, count: A.count)
        var left = 0
        var right = A.count - 1
        
        for index in A.indices {
            var rightSquared = A[right] * A[right]
            var leftSquared = A[left] * A[left]
            if leftSquared > rightSquared {
                squaredArray[A.count - 1 - index] = leftSquared
                left += 1
            } else {
                squaredArray[A.count - 1 - index] = rightSquared
                right -= 1
            }
        }
        return squaredArray
    }
}