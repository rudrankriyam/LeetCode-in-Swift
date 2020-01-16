class Solution {
    func romanToInt(_ s: String) -> Int {
        let mappingRomanToInt: [Character: Int] = ["I": 1, "V": 5, "X": 10, "L": 50, "C": 100, "D": 500, "M": 1000]
        let romanCharacters = Array(s)
        var integer = 0
        var previousValue = 0

        for character in romanCharacters {
            if let value = mappingRomanToInt[character] {
                if value <= previousValue {
                    integer += value
                } else {
                    integer += (value - 2 * previousValue)
                }
                previousValue = value
            }
        }
        return integer
    }
}