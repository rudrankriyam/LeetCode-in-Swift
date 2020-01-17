class Solution {
    func compress(_ chars: inout [Character]) -> Int {
        var anchor: Int = 0
        var write = 0
        
        for index in 0..<chars.count {
            if (index + 1 == chars.count) || chars[index + 1] != chars[index] {
                chars[write] = chars[anchor]
                write += 1
                
                if index > anchor {
                    for digit in String(index - anchor + 1) {
                        chars[write] = digit
                        write += 1
                    }
                }
                anchor = index + 1
            }
        }
        return write
    }
}