class Solution {
    func findDisappearedNumbers(_ nums: [Int]) -> [Int] {
        
        if nums.isEmpty { return [] }
        var elements = Set<Int>()
        
        for value in nums {
            elements.insert(value)
        }
        
        for number in 1...nums.count {
            if elements.contains(number) {
                elements.remove(number)
            } else {
                elements.insert(number)
            }
        }
        return Array(elements)
    }
}