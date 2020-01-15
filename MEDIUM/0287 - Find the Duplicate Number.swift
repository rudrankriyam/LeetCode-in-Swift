class Solution {
    func findDuplicate(_ nums: [Int]) -> Int {
        var slow = nums[0]
        var fast = nums[0]
        
        repeat {
            slow = nums[slow]
            fast = nums[nums[fast]]
        } while slow != fast
        
        var pointerOne = nums[0]
        var pointerTwo = slow
        
        while pointerOne != pointerTwo {
            pointerOne = nums[pointerOne]
            pointerTwo = nums[pointerTwo]
        }
        return pointerOne
    }
}