class Solution {
    func numDecodings(_ s: String) -> Int {
        guard s.count > 0 else { return 0 }
        var characters = Array(s)
        var temp = 0
        var characterOne = characters[characters.count - 1] == "0" ? 0 : 1
        var characterTwo = 1
        var index = characters.count - 2

        while index >= 0 {
            defer { index -= 1 }

            if characters[index] == "0" || characters[index] > "2" || (characters[index] == "2" && characters[index + 1] > "6") {
                if characterOne == 0 { return 0 }
                characterTwo = characterOne
                if characters[index] == "0" { characterOne = 0 }
            } else {
                temp = characterOne
                characterOne += characterTwo
                characterTwo = temp
            }
        }
        return characterOne
    }
}