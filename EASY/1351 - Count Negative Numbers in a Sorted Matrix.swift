class Solution {
    func countNegatives(_ grid: [[Int]]) -> Int {
        var negativeNumbers = 0

        for row in grid {
            for (columnIndex, number) in row.enumerated() {
                if number < 0 {
                    // As the row is sorted in non-increasing order, all the numbers after this in this row will be negative. So add all the negative numbers including the given number.
                    negativeNumbers += row.count - columnIndex
                    // Break from the loop because all the next numbers will be negative only.
                    break
                }
            }
        }
        return negativeNumbers
    }
}
