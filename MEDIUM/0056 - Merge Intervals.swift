class Solution {
    func merge(_ intervals: [[Int]]) -> [[Int]] {
        let sortedIntervals = intervals.sorted(by: { $0[0] < $1[0] })
        var mergedIntervals = [[Int]]()

        for interval in sortedIntervals {
            if mergedIntervals.isEmpty {
                mergedIntervals.append(interval)
                continue
            }
            let count = mergedIntervals.count
            if mergedIntervals[count - 1][1] < interval[0] {
                mergedIntervals.append(interval)
                continue
            }
            mergedIntervals[count - 1][1] = max(mergedIntervals[count - 1][1], interval[1])
        }
        return mergedIntervals
    }
}