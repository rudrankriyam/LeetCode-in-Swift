class Solution {
    func addDigits(_ num: Int) -> Int {
        return 1 + (num - 1) % 9
    }
}