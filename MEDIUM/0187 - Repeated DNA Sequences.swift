class Solution {
    func findRepeatedDnaSequences(_ s: String) -> [String] {
        var repeatedSequences = Set<String>()
        var substringSet = Set<String>()
        var index = 0
        var s = Array(s)
        
        while index + 10 <= s.count {
            let substring = String(s[index..<index + 10])
            
            if !substringSet.contains(substring) {
                substringSet.insert(substring)
            } else {
                repeatedSequences.insert(substring)
            }
            index += 1                       
        }
        return Array(repeatedSequences)
    }
}