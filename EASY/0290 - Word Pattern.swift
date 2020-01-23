class Solution {
    func wordPattern(_ pattern: String, _ str: String) -> Bool {
        var str = str.components(separatedBy: " ")
        var pattern = Array(pattern)
        var mappingCharacterToString = [Character: String]()

        if pattern.count != str.count { return false }
        
        for index in str.indices {
            if let string = mappingCharacterToString[pattern[index]] {
                if string != str[index] { return false }
            } else {
                if !mappingCharacterToString.values.contains(str[index]) {
                    mappingCharacterToString[pattern[index]] = str[index]
                } else { return false }
            }
        }
        return true
    }
}