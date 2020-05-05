class Solution {
    func firstUniqChar(_ s: String) -> Int {
        var characterCount = [Int](repeating: 0, count: 26)
        let firstCharacter = Int(UnicodeScalar("a").value)

        for character in s.unicodeScalars {
            characterCount[Int(character.value) - firstCharacter] += 1
        }

        for (index, character) in s.unicodeScalars.enumerated() {
            if characterCount[Int(character.value) - firstCharacter] == 1 {
                return index
            }
        }
        return -1
    }
}
