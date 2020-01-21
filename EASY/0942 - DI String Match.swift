class Solution {
    func diStringMatch(_ S: String) -> [Int] {
        var left = 0, right = S.count
        var result = [Int]()

        for (index, character) in S.enumerated() {
            if character == "I" {
                result.append(left)
                left += 1
            } else {
                result.append(right)
                right -= 1
            }
        }
        result.append(right)
        return result
    }
}
