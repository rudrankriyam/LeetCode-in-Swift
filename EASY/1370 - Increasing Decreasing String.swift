class Solution {
    func sortString(_ s: String) -> String {
        var result = [Character]()
        var mappingCharacterToFrequency = [Character: Int]()
        let alphabets = "abcdefghijklmnopqrstuvwxyz"

        for character in s {
            mappingCharacterToFrequency[character, default: 0] += 1
        }

        while !mappingCharacterToFrequency.isEmpty {
            for character in alphabets {
                iterateDictionary(character, &mappingCharacterToFrequency, &result)
            }

            for character in alphabets.reversed() {
                iterateDictionary(character, &mappingCharacterToFrequency, &result)
            }
        }
        return String(result)
    }

    private func iterateDictionary(_ character: Character, _ dictionary: inout [Character: Int], _ result: inout [Character]) {
        if let value = dictionary[character], value > 0 {
            result.append(character)
            dictionary[character, default: 0] -= 1
        } else {
            dictionary[character] = nil
        }
    }
}
