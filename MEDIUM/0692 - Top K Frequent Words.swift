class Solution {
    func topKFrequent(_ words: [String], _ k: Int) -> [String] {
        var mappingWordsToCount = [String: Int]()

        for word in words { mappingWordsToCount[word, default: 0] += 1 }
        
        var sortedTuple = mappingWordsToCount.sorted { (a, b) -> Bool in
            return a.value > b.value || (a.value == b.value && a.key < b.key)
        }
        return Array(sortedTuple.map { $0.key }.prefix(k))
    }
}