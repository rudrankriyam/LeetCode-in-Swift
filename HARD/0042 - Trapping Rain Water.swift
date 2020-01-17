class Solution {
    func trap(_ height: [Int]) -> Int {
        var left = 0
        var right = height.count - 1
        
        var leftMaximum = 0
        var rightMaximum = 0
        var waterCollected = 0
        
        while left < right {
            if height[left] < height[right] {
                height[left] >= leftMaximum ? (leftMaximum = height[left]) : (waterCollected += leftMaximum - height[left])
                left += 1
            } else {
                height[right] >= rightMaximum ? (rightMaximum = height[right]) : (waterCollected += rightMaximum - height[right])
                right -= 1
            }
        }
        return waterCollected
    }
}