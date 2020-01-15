class Solution {
    func wordBreak(_ s: String, _ wordDict: [String]) -> Bool {
        var wordDictSet = Set(wordDict)
        var containsWord = Array(repeating: false, count: s.count + 1)
        var s = Array(s)
        containsWord[0] = true

        for index in 1...s.count {
            for index2 in 0..<index {
                if containsWord[index2] && wordDictSet.contains(String(s[index2..<index])) {
                    containsWord[index] = true
                }
            }
        }
        return containsWord[s.count]
    }
}