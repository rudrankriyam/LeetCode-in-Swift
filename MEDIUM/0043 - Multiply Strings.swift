class Solution {
    func multiply(_ num1: String, _ num2: String) -> String {
        var length1 = num1.count, length2 = num2.count
        var numsOne = Array(num1), numsTwo = Array(num2)
        
        var productArray = Array(repeating: 0, count: length1 + length2)
        
        for indexOne in stride(from: length1 - 1, through: 0, by: -1) {
            for indexTwo in stride(from: length2 - 1, through: 0, by: -1) {
                var multiply = Int(String(numsOne[indexOne]))! * Int(String(numsTwo[indexTwo]))!
                var p1 = indexOne + indexTwo
                var p2 = indexTwo + indexOne + 1
                var sum = multiply + productArray[p2]
                
                productArray[p1] += sum / 10
                productArray[p2] = sum % 10
            }
        }
        var array = [Int]()
        for digit in productArray {
            if !(array.isEmpty && digit == 0) {
                array.append(digit)
            }
        }
        let string = array.map { String($0) }.joined(separator: "")
        return string.count == 0 ? "0" : string
    }
}