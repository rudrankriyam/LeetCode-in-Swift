class Solution {
    func eraseOverlapIntervals(_ intervals: [[Int]]) -> Int {
        var intervals = intervals.sorted(by: { $0[0] < $1[0] })
        var numberOverlap = 0
        var index = 0
        while (index < intervals.count - 1) {
            var current = intervals[index]
            var next = intervals[index + 1]

            if (current[1] > next[0]) {
                if (current[1] > next[1]) { 
                    intervals.remove(at: index)
                } else { 
                    intervals.remove(at: index + 1) 
                }
                numberOverlap += 1
            } else { 
                index += 1 
            }
        }
        return numberOverlap
    }
}