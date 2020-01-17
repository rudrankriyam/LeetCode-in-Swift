class Solution {
    func uniqueMorseRepresentations(_ words: [String]) -> Int {
        var morseCodeReprestation = [".-","-...","-.-.","-..",".","..-.","--.",
                 "....","..",".---","-.-",".-..","--","-.",
                 "---",".--.","--.-",".-.","...","-","..-",
                 "...-",".--","-..-","-.--","--.."]
        var a = UnicodeScalar("a").value        
        var seen = Set<String>()
        
        for word in words {
            var encodedWord = ""
            for character in word.unicodeScalars {
                encodedWord.append(morseCodeReprestation[Int(character.value - a)])
            }
            seen.insert(encodedWord)
        }
        return seen.count
    }
}