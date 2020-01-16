class Solution {
    func isValid(_ s: String) -> Bool {
        if s.count == 0 { return true }
        var mappingClosingBraceToOpeningBrace: [Character: Character] = [")": "(", "}": "{", "]": "["]
        var stack = [Character]()    
    
        for character in s {
            if let openingBrace = mappingClosingBraceToOpeningBrace[character] {
                var topElement = stack.isEmpty ? "#" : stack.removeLast()
                
                if openingBrace != topElement { 
                    return false 
                }
            } else { 
                stack.append(character) 
            }
        }
        return stack.isEmpty
    }
}