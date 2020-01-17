class Solution {
    func calPoints(_ ops: [String]) -> Int {
        var stack = [Int]()
        
        for type in ops {
            if let number = Int(type) {
                stack.append(number)
            } else if type == "D" {
                let number = stack.last!
                stack.append((number * 2))
            } else if type == "C" {
                stack.popLast()
            } else if type == "+" {
                let numberOne = stack.removeLast()
                let numberTwo = stack.last! + numberOne
                stack.append(numberOne)
                stack.append(numberTwo)
            }
        }
        return stack.reduce(0, +)
    }
}