class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        if nums.count < 2 { return [] }
        var mappingNumberToIndex = [Int: Int]()
    
        for (index, number) in nums.enumerated() {
            if let secondIndex = mappingNumberToIndex[target - number] {
                return [index, secondIndex]
            }
            mappingNumberToIndex[number] = index 
        }
        return []
    }
}