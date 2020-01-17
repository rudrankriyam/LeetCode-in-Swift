class Solution {
    func isUgly(_ num: Int) -> Bool {
        var number = num
        for value in 2..<6 where number > 0 {
            while number % value == 0 {
                number /= value
            }
        }
        return number == 1
    }
}