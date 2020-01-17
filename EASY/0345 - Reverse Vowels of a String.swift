class Solution {
    func reverseVowels(_ s: String) -> String {
        if s.count == 0 { return "" }
        
        let vowels = Array("aeiouAEIOU")
        var chars = Array(s)
        var start = 0
        var end = chars.count - 1
        
        while start < end {
            while start < end && !vowels.contains(chars[start]) {
                start += 1
            }
            while start < end && !vowels.contains(chars[end]) {
                end -= 1
            }
            if chars[start] != chars[end] {
                var temp = chars[start]
                chars[start] = chars[end]
                chars[end] = temp
            }
            start += 1
            end -= 1
        }
        return String(chars)
    }
}