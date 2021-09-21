class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        var newDigits = digits
        
        for index in stride(from: digits.count - 1, through: 0, by: -1) {
            if digits[index] == 9 {
                newDigits[index] = 0
            } else {
                newDigits[index] += 1
                return newDigits
            }
        }
        
        if newDigits.first == 0 {
            newDigits.insert(1, at: 0)
        }
        
        return newDigits
    }
}
