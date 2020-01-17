class Solution {
    func reverseWords(_ s: String) -> String {
        let wordsArray = s.components(separatedBy: " ")
        var newSentence = String()

        for index in 0..<wordsArray.count {
            if newSentence != "" {
                newSentence += " "
            }
            newSentence += reverseWord(wordsArray[index])
        }
        return newSentence   
    }
    
    func reverseWord(_ string: String) -> String {
        var reverseWord = String()
        for characters in string {
            reverseWord = "\(characters)" + reverseWord
        }
        return reverseWord
    }    
}