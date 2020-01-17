class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        var set = Set<Int>()
        for number in nums {
            if set.contains(number) {
                set.remove(number)
            } else { 
                set.insert(number) 
            }
        }
        return set.first ?? 0
    }
}