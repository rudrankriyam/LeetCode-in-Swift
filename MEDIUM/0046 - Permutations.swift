class Solution {
    func permute(_ nums: [Int]) -> [[Int]] {
        var permutedArray = [[Int]]()
        var numbers = nums 
        findPermutations(numbers.count, &numbers, &permutedArray, 0)
        return permutedArray
    }
    
    func findPermutations(_ countOfArray: Int, _ nums: inout [Int], _ output: inout [[Int]], _ firstIndex: Int) {
        if firstIndex == countOfArray { 
            output.append(nums)
        }
        for index in firstIndex..<countOfArray {
            swapNumbers(firstIndex, index, &nums)
            findPermutations(countOfArray, &nums, &output, firstIndex + 1)
            swapNumbers(firstIndex, index, &nums)
        }
    }
    
    func swapNumbers(_ firstIndex: Int, _ secondIndex: Int, _ nums: inout [Int]) {
        var temp = nums[firstIndex]
        nums[firstIndex] = nums[secondIndex]
        nums[secondIndex] = temp
    }
}