class Solution {
    func calculate(_ s: String) -> Int {
        var stack = [Int]()
        var string = Array(s + "+")
        var number = 0
        var sign: Character = "+"
        
        for character in string {
            if character >= "0" && character <= "9" {
                number = number * 10 + Int(String(character))!
            } else if character == "+" || character == "-" || character == "*" || character == "/" {
                if sign == "+" || sign == "-" {
                    stack.append((sign == "-" ? -1 : 1) * number)
                    number = 0
                } else if sign == "*" || sign == "/" {
                    let lastNumber = stack.removeLast()
                    stack.append(sign == "*" ? lastNumber * number : lastNumber / number)
                    number = 0
                }
                sign = character
            }
        }
        return stack.reduce(0, +)
    }
}