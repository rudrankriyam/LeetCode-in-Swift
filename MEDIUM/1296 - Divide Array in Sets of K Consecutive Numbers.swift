class Solution {
    func isPossibleDivide(_ nums: [Int], _ k: Int) -> Bool {
        if nums.count % k != 0 { return false }
        if k > nums.count / 2 { return false }
        
        var mappingNumberToCount = [Int: Int]()
        
        for number in nums {
            mappingNumberToCount[number, default: 0] += 1
        }
        
        var sortedArray = nums.sorted()
        
        for number in sortedArray {
            if let count = mappingNumberToCount[number], count > 0 {
                for index in 0..<k {
                    if !mappingNumberToCount.keys.contains(index + number) || mappingNumberToCount[index + number]! == 0 {
                        return false
                    } else {
                        mappingNumberToCount[index + number, default: 0] -= 1
                    }
                }
            }
        }
        return true
    }
}