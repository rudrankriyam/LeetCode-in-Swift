class Solution {
    func peakIndexInMountainArray(_ A: [Int]) -> Int {
        var left = 0
        var right = A.count - 1
        
        while left < right {
            var middle = left + (right - left) / 2
            if A[middle] < A[middle + 1] {
                left = middle + 1
            } else {
                right = middle
            }
        }
        return left
    }
}