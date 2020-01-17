class Solution {
    func nextGreaterElement(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var mappingNumberToIndex = [Int: Int]()
        var outputArray = [Int]()
        
        for (index, number) in nums2.enumerated() {
            mappingNumberToIndex[number] = index
        }
        
        for (index, number) in nums1.enumerated() {
            if let secondIndex = mappingNumberToIndex[number] {
                for _ in secondIndex..<nums2.count - 1 {
                    if nums[secondIndex] < nums[secondIndex + 1] {
                        outputArray.append(nums[secondIndex + 1])
                        break
                    }
                }
            }
        }
        return outputArray
    }
}