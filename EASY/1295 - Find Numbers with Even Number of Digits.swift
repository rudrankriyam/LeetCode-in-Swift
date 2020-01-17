class Solution {
    func findNumbers(_ nums: [Int]) -> Int {
        var count = 0
        
        for value in nums {
            var number = String(value)
            if number.count % 2 == 0 {
                count += 1
            }
        }
        return count
    }
}