class Solution {
    func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
        if matrix.count == 0 || matrix == nil { return false }
        
        var numberOfRows = matrix.count
        var numberOfColumns = matrix[0].count
                
        var left = 0
        var right = numberOfRows * numberOfColumns - 1        
        
        while left <= right {
            var middle = (left + right) / 2
            var middleValue = matrix[middle / numberOfColumns][middle % numberOfColumns]
            
            if middleValue == target { return true }
            
            if middleValue > target {
                right = middle - 1
            } else {
                left = middle + 1
            }
        }
        return false
    }
}