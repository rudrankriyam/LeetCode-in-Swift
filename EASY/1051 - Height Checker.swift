class Solution {
    func heightChecker(_ heights: [Int]) -> Int {
        let array = heights.sorted()
        var counter = 0

        for index in 0..<array.count {
            if heights[index] != array[index] {
                counter = counter + 1
            }
        }
        return counter
    }
}