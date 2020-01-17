class Solution {
    func minWindow(_ s: String, _ t: String) -> String {
        var mappingCharacterToCount = [Character: Int]()
        for character in s {
            mappingCharacterToCount[character] = 0
        }
        for character in t {
            if mappingCharacterToCount[character] != nil {
                mappingCharacterToCount[character, default: 0] += 1
            }
        }
        
        var start = 0
        var end = 0
        var minLength = Int.max
        var minStart = 0
        var missing = t.count
        var s = Array(s)
        
        while end < s.count {
            let current = s[end]
            if mappingCharacterToCount[current]! > 0 { 
                missing -= 1 
            }
            mappingCharacterToCount[current, default: 0] -= 1
            
            while missing == 0 {
                if minLength > end - start + 1 {
                    minLength =  end - start + 1
                    minStart = start
                }
                
                let head = s[start]
                if mappingCharacterToCount[head]! >= 0 {
                    missing += 1
                }
                mappingCharacterToCount[head, default: 0] += 1
                start += 1
            }
            end += 1
        }
        
        return minLength == Int.max ? "" : String(s[minStart..<minStart + minLength])
    }
}