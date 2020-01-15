class Solution {
    var mapping: [Character: [Character]] = [
        "2": ["a", "b", "c"],
        "3": ["d", "e", "f"],
        "4": ["g", "h", "i"],
        "5": ["j", "k", "l"],
        "6": ["m", "n", "o"],
        "7": ["p", "q", "r", "s"],
        "8": ["t", "u", "v"],
        "9": ["w", "x", "y", "z"]
    ]

    func letterCombinations(_ digits: String) -> [String] {
        var combinations = [String]()
        var currentCombination = [Character]()
        let digits: [Character] = Array(digits)

        exploreCombinations(digits, digits.count, &currentCombination, &combinations)
        return combinations
    }

    func exploreCombinations(_ digits: [Character], _ index: Int, _ currentCombination: inout [Character], _ combinations: inout [String]) {
        if index == 0 {
            if currentCombination.isEmpty { 
                return 
            } else {
                combinations.append(String(currentCombination))
            }
        } else {
            let anotherIndex = digits.count - index
            let characters: [Character] = mapping[digits[anotherIndex]]!
            for character in characters {
                currentCombination.append(character)
                exploreCombinations(digits, index - 1, &currentCombination, &combinations)
                currentCombination.removeLast()
            }
        }
    }
}