class Solution {
    func numJewelsInStones(_ J: String, _ S: String) -> Int {
        var mappingStonesToOccurence = [Character: Int]()
        var count = 0
        
        for jewel in J {
            mappingStonesToOccurence[jewel, default: 0] += 1
        }
        
        for stone in S {
            if let jewel = mappingStonesToOccurence[stone] {
                count += 1
            }
        }
        return count
    }
}