class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        guard s.count > 0 else { return 0 }
        var mappingCharactersToIndex = [Character: Int]()
        var maximumLength = 1
        var start = 0
        var end = 0

        for character in s {
            if let index = mappingCharactersToIndex[character] {
                maximumLength = max(end - start, maximumLength)
                start = max(start, index + 1)
            }
            mappingCharactersToIndex[character] = end
            end += 1
        }
        return max(end - start, maximumLength)
    }
}