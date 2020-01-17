class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
    if s.count != t.count { return false }
        var mappingCharacterToCount = [Character: Int]()

        for (characterOne, characterTwo) in zip(s, t) {
            mappingCharacterToCount[characterOne, default: 0] += 1
            mappingCharacterToCount[characterTwo, default: 0] -= 1
        }
        for count in mappingCharacterToCount.values {
            if count != 0 { return false }
        }
        return true
    }
}