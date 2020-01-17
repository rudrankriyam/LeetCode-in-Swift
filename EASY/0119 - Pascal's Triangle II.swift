class Solution {
    func getRow(_ rowIndex: Int) -> [Int] {
        var indexRow = [1]
        for _ in 0..<rowIndex {
            var sum: [Int] = []
            for (first, second) in zip([0] + indexRow, indexRow + [0]) {
                sum.append(first + second)
            }
            indexRow = sum
        }
        return indexRow   
    }
}