class Solution {
    func longestCommonSubsequence(_ text1: String, _ text2: String) -> Int {
        if text1.count == 0 || text2.count == 0 { return 0 }
        var length1 = text1.count
        var length2 = text2.count
        var longestCommonSubsequence = Array(repeating: Array(repeating: 0, count: length2 + 1), count: length1 + 1)
        let string1 = Array(text1)
        let string2 = Array(text2)
        
        for row in 1...string1.count {
            for column in 1...string2.count {
                if string1[row - 1] == string2[column - 1] {
                    longestCommonSubsequence[row][column] = 1 + longestCommonSubsequence[row - 1][column - 1]
                } else {
                    longestCommonSubsequence[row][column] = max(longestCommonSubsequence[row - 1][column], longestCommonSubsequence[row][column - 1])
                }
            }
        }
        return longestCommonSubsequence[string1.count][string2.count]
    }
}