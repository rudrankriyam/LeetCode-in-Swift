class Solution {
    var sums = [Int]()
    init(_ w: [Int]) {
        sums = w
        for index in 1..<w.count {
            sums[index] += sums[index - 1];
        }
    }

    func pickIndex() -> Int {
        let random = Int.random(in: 0..<sums[sums.count - 1]) + 1
        var left = 0, right = sums.count - 1
        while left < right {
            let mid = (right + left) / 2
            
            if sums[mid] == random { 
                return mid
            } else if sums[mid] < random { 
                left = mid + 1 
            } else { 
                right = mid 
            }
        }
        return left
    }
}