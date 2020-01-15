class Solution {
    func subsets(_ nums: [Int]) -> [[Int]] {
        var subsets = [[Int]]()
        
        for index in 0..<nums.count {
            for index2 in 0..<subsets.count {
                var temp = subsets[index2]
                temp.append(nums[index])
                subsets.append(temp)
            }
            subsets.append([nums[index]])
        }
        subsets.append([])
        return subsets
    }
}