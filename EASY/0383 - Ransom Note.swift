class Solution {
    func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
        var mappingDictionary = [Character: Int]()
        for value in ransomNote {
            mappingDictionary[value, default: 0] += 1
        }

        for value in magazine {
            if let count = mappingDictionary[value] {
                if count > 1 {
                    mappingDictionary[value] = count - 1
                } else {
                    mappingDictionary[value] = nil
                }
            }
        }
        return mappingDictionary.count == 0
    }
}