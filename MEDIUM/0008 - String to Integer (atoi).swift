class Solution {
    func myAtoi(_ str: String) -> Int {
        var numberString = String()
        var integer = 0

        for character in str {
            if character == " " && numberString.isEmpty { 
            continue
            } else if Int(String(character)) != nil {
                numberString.append(character)
            } else if (character == "+" || character == "-") && numberString.isEmpty {
                numberString.append(character)
            } else {
                break
            }
        }

        if let number = Int(numberString) {
            if number > Int32.max {
                integer = Int(Int32.max)
            } else if number < Int32.min {
                integer = Int(Int32.min)
            } else {
                integer = number
            }
        } else if numberString.count > 1 {
            if numberString.first == "-" {
                integer = Int(Int32.min)
            } else {
                integer = Int(Int32.max)
            }
        }
        return integer
    }
}