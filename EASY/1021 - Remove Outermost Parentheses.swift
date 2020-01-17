class Solution {
    func removeOuterParentheses(_ S: String) -> String {
        var string = String()
        var counter = 0
        for character in S {
            if character == "(" {
                if counter > 0 {
                    string.append(character)
                }
                counter += 1
            } else if character == ")" {
                counter -= 1
                if counter > 0 {
                    string.append(character)
                }
            }
        }
        return string
    }
}

