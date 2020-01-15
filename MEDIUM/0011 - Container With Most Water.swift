class Solution {
    func maxArea(_ height: [Int]) -> Int {
        var maximumValue = Int.min 
    
        var left = 0
        var right = height.count - 1

        while left < right {
            var minimumValue = min(height[left], height[right])
            maximumValue = max(maximumValue, minimumValue * (right - left))
            
            if height[left] < height[right] {
                left += 1
            } else {
                right -= 1
            }
        }
        return maximumValue
    }
}