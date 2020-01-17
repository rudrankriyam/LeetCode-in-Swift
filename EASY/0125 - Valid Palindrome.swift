class Solution {
    func isPalindrome(_ s: String) -> Bool {
        var start = 0
        var end = s.count - 1
        var s = Array(s)

        while start < end {
            if !s[start].isNumber && !s[start].isLetter {
                start += 1
                continue
            }

            if !s[end].isNumber && !s[end].isLetter {
                end -= 1
                continue
            }

            if s[start].lowercased() != s[end].lowercased() {
                return false
            }
            start += 1
            end -= 1
        }
        return true
    }
}