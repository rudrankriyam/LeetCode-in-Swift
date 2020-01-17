class Solution {
    func toLowerCase(_ str: String) -> String {
        var lowerCasedString = String()
        for character in str {
            if let asciiValue = character.asciiValue, asciiValue >= 65 && asciiValue <= 90 {
                lowerCasedString.append(Character(UnicodeScalar(asciiValue + 32)))
            } else {
                lowerCasedString.append(character)
            }
        }
        return lowerCasedString
    }
}