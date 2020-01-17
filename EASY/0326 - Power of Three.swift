class Solution {
    func isPowerOfThree(_ n: Int) -> Bool {
        var number = n
        if number < 1 { return false }
        
        while number % 3 == 0 {
            number /= 3
        }
        return number == 1
    }
}