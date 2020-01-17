class Solution {
    func firstUniqChar(_ s: String) -> Int {
        var arr = Array(repeating: 0, count: 26)
        let base = Int(UnicodeScalar("a").value)
        var index = 0
        for character in s.unicodeScalars {
            arr[Int(character.value) - base] += 1 
        }
        
        for val in s.unicodeScalars {
            if arr[Int(val.value) - base] == 1 {
                return index
            }
            index += 1
        }
        return -1
    }
}