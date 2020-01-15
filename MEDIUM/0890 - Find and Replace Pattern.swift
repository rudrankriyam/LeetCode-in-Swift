class Solution {
    func findAndReplacePattern(_ words: [String], _ pattern: String) -> [String] {
        var patternMatchingWordsArray = [String]()
        
        for word in words {
            if matchWordWithPattern(word, pattern) {
                patternMatchingWordsArray.append(word)
            }
        }
        return patternMatchingWordsArray
    }
    
    func matchWordWithPattern(_ word: String, _ pattern: String) -> Bool {
        var forwardMapping = [Character: Character]()
        var backwardMapping = [Character: Character]()
        
        for (characterOfWord, characterOfPattern) in zip(word, pattern) {
            
            if forwardMapping[characterOfWord] == nil {
                forwardMapping[characterOfWord] = characterOfPattern
            }
            
            if backwardMapping[characterOfPattern] == nil {
                backwardMapping[characterOfPattern] = characterOfWord
            }
            
            if forwardMapping[characterOfWord] != characterOfPattern || backwardMapping[characterOfPattern] != characterOfWord { 
                return false 
            }
        }
        return true 
    }
}