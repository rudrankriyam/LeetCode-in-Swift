class Solution {
    func decodeString(_ s: String) -> String {
        guard s.count > 0 else { return "" }
                                
        var encodedStringArray = [Character](s)
        var decodedString = [Character]()
                                
        for index in 0..<encodedStringArray.count {
            let currentCharacter = encodedStringArray[index]
            
            if currentCharacter != "]" {
                decodedString.append(currentCharacter)
            } else {
                var temporaryStack = [Character]()
                
                while decodedString.count > 0 && decodedString.last! != "[" {
                    temporaryStack.insert(decodedString.removeLast(), at: 0)
                }
                decodedString.removeLast()
                var number = ""
                
                while decodedString.count > 0 && (decodedString.last! >= "0" && decodedString.last! <= "9") {
                    number = String(decodedString.removeLast()) + number
                }
                
                for _ in 0 ..< Int(number)! {
                    decodedString.append(contentsOf: temporaryStack)
                }
            }
        }
        return String(decodedString)
    }
}