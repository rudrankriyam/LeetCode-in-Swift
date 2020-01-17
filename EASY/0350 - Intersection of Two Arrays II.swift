class Solution {
    func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var mappingNumberToCount = [Int: Int]()
        var intersectionArray = [Int]()
        
        for number in nums1 {
            mappingNumberToCount[number, default: 0] += 1
        }
        
        for number in nums2 {
            if let count = mappingNumberToCount[number], count > 0 {
                intersectionArray.append(number)
                mappingNumberToCount[number] = count - 1
            }
        }
        return intersectionArray
    }
}