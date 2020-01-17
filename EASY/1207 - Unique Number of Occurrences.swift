class Solution {
    func uniqueOccurrences(_ arr: [Int]) -> Bool {
        var mappingNumberToCount = [Int: Int]()
        var repeatingOccurence = Set<Int>()
        
        for number in arr {
            mappingNumberToCount[number, default: 0] += 1
        }
        
        for count in mappingNumberToCount.values {
            if repeatingOccurence.contains(count) {
                return false
            } else {
                repeatingOccurence.insert(count)
            }
        }
        return true
    }
}