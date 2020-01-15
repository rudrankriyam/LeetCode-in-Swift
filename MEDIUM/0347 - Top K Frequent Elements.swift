class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var mappingNumberToCount = [Int: Int]()
        var mostFrequent = [Int]()

        for number in nums {
            mappingNumberToCount[number, default: 0] += 1
        }
        let frequency = mappingNumberToCount.sorted(by: { $1.value < $0.value })
        for count in stride(from: 0, through: k - 1, by: 1) {
            mostFrequent.append(frequency[count].key)
        }
        return mostFrequent
    }
}