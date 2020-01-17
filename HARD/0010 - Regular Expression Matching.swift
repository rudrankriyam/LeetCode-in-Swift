class Solution {
    func isMatch(_ s: String, _ p: String) -> Bool {
        let s = Array(s)
        let p = Array(p)
        var isMatch: [[Bool]] = Array(repeating: Array(repeating: false, count: p.count + 1), count: s.count + 1)
        isMatch[0][0] = true
        for row in 0..<p.count {
            if p[row] == "*" {
                isMatch[0][row + 1] = isMatch[0][row - 1]
            }
        }
        
        for row in 0..<s.count {
            for column in 0..<p.count {
                if p[column] != "*" {
                    if isMatch[row][column] {
                        if p[column] == "." || p[column] == s[row] {
                            isMatch[row + 1][column + 1] = true
                        }
                    }
                } else {
                    if isMatch[row + 1][column - 1] {
                        isMatch[row + 1][column + 1] = true
                    } else if isMatch[row][column - 1] || isMatch[row][column + 1] {
                        if p[column - 1] == s[row] || p[column - 1] == "." {
                            isMatch[row + 1][column + 1] = true
                        }
                    }
                }
            }
        }
        return isMatch[s.count][p.count]
    }
}