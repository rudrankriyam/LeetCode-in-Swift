class Solution {
    func reverse(_ x: Int) -> Int {
        var number = x
        var reversedNumber = 0

        let intMax = (2 << 30) - 1
        let intMin = (-intMax + 1)

        while number != 0 {
            let digit = number % 10
            number /= 10
            if reversedNumber > intMax / 10 || (reversedNumber == intMax / 10 && digit > 7) {
                return 0
            }
            if reversedNumber < intMin / 10 || (reversedNumber == intMin / 10 && digit < -8) {
                return 0
            }
            reversedNumber = reversedNumber * 10 + digit
        }
        return reversedNumber
    }
}