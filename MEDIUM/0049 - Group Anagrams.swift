class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var unicodeA = UnicodeScalar("a").value
        var mappingCountToString = [[Int]: [String]]()

        for string in strs {
            var characters = [Int](repeating: 0, count: 26)
            for character in string.unicodeScalars {
                characters[Int(character.value - unicodeA)] += 1
            }
            mappingCountToString[characters, default: []].append(string)
        }
        return Array(mappingCountToString.values)
    }
}