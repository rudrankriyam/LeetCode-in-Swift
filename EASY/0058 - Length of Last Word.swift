class Solution {
    func lengthOfLastWord(_ s: String) -> Int {
        var lengthOfLastWord = 0
        var isStartOfWord = false
        
        for character in s.reversed() {
            if character != " " {
                lengthOfLastWord += 1
                isStartOfWord = true
            } else {
                if isStartOfWord {
                    return lengthOfLastWord
                }
            }
        }
        return lengthOfLastWord
    }
}