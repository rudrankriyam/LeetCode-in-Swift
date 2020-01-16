class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
    var longestCommonPrefix = ""
    
    if strs.count < 1 { return longestCommonPrefix }
    
    if strs.count == 1 { return strs.first! }
    
    var index = 0
    
    for character in strs[0] {
        for value in 1..<strs.count {
            let currentString = strs[value]
            let currentIndex = currentString.index(currentString.startIndex, offsetBy: index)
            if index >= strs[value].count || character != currentString[currentIndex] {
                return longestCommonPrefix
            }
        }
        longestCommonPrefix.append(character)
        index += 1
    }
    return longestCommonPrefix
    }
}