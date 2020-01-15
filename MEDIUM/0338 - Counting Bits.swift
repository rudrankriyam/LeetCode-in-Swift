class Solution {
    func countBits(_ num: Int) -> [Int] {
        if num == 0 { return [0] }
        var countBitsArray = Array(repeating: 0, count: num + 1)
        for index in 1...num {
            countBitsArray[index] = countBitsArray[index & (index - 1)] + 1
        }
        return countBitsArray
    }
}