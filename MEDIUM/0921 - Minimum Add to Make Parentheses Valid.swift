class Solution {
    func minAddToMakeValid(_ S: String) -> Int {
        var brackets = [Character]()
        
        for character in S {
            if character == "(" {
                brackets.append(character)
            } else if character == ")" {
                if brackets.last == "(" {
                    brackets.removeLast()
                } else {
                    brackets.append(character)
                }
            }
        }
        return brackets.count
    }
}