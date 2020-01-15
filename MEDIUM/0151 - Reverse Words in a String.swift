class Solution {
    func reverseWords(_ s: String) -> String {
        var charactersArray = Array(s)
        reverseWord(&charactersArray, 0, charactersArray.count - 1)
        
        var length = charactersArray.count
        var left = 0
        for index in 0..<length {
            if charactersArray[index] == " " && charactersArray[left] == " " {
                left = index + 1
            } else if charactersArray[index] == " " {
                reverseWord(&charactersArray, left, index - 1)
                left = index + 1
            } else if index == length - 1 && charactersArray[index] != " " {
                reverseWord(&charactersArray, left, index)
            }
        }
        
        for index in stride(from: length - 1, through: 0, by: -1) {
            if (index == charactersArray.count - 1 || index == 0) && charactersArray[index] == " " || 
            ((index - 1) >= 0 && charactersArray[index] == " " && charactersArray[index - 1] == " ") {
                charactersArray.remove(at: index)
            }
        }
        return String(charactersArray)
    }
    
    func reverseWord(_ s: inout [Character], _ left: Int, _ right: Int) {
        var left = left, right = right
        while left < right {
            s.swapAt(right, left)
            left += 1
            right -= 1
        }
    }
}