class Solution {
    func countAndSay(_ n: Int) -> String {
        var sequence: [Character] = ["1"]
        
        for _ in 1..<n {
            var temp: [Character] = []
            var index = 0
            while index < sequence.count {
                let character = sequence[index]
                var count = 0
                while index < sequence.count && sequence[index] == character {
                    count += 1
                    index += 1
                }
                temp.append(Character(String(count)))
                temp.append(character)
            }
            sequence = temp
        }
        return String(sequence)
    }
}