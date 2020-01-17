class Solution {
    func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var set = Set<Int>()
        var result = Set<Int>()
        
        for number in nums1 {
            set.insert(number)
        }
        
        for number in nums2 {
            if set.contains(number) {
                result.insert(number)
            }
        }
        return Array(result)
    }
}