class Solution {
    func longestPalindrome(_ s: String) -> String {
        if s.count < 1 { return "" }
        var start = 0
        var end = 0
        var characters: [Character] = Array(s)

        for index in 0..<characters.count {
            let lengthOne = expandAroundCenter(characters, index, index)
            let lengthTwo = expandAroundCenter(characters, index, index + 1)
            let longestLength = max(lengthOne, lengthTwo)
            if longestLength > end - start {
                start = index - (longestLength - 1) / 2
                end = index + longestLength / 2
            }
        }
        return String(characters[start...end])
    }

    func expandAroundCenter(_ characters: [Character], _ left: Int, _ right: Int) -> Int {
        if left > right { return 0 }
        var leftIndex = left
        var rightIndex = right 

        while leftIndex >= 0 && rightIndex < characters.count && characters[leftIndex] == characters[rightIndex] {
            leftIndex -= 1
            rightIndex += 1
        }
        return (rightIndex - leftIndex) - 1
    }
}