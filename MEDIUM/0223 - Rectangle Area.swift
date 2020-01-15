class Solution {
    func computeArea(_ A: Int, _ B: Int, _ C: Int, _ D: Int, _ E: Int, _ F: Int, _ G: Int, _ H: Int) -> Int {
        
        var areaOfRectangleOne = (C - A) * (D - B)
        var areaOfRectangleTwo = (G - E) * (H - F)
        var totalArea = areaOfRectangleOne + areaOfRectangleTwo - overlappingArea(A, B, C, D, E, F, G, H)
        return totalArea
    }
    
    func overlappingArea(_ A: Int, _ B: Int, _ C: Int, _ D: Int, _ E: Int, _ F: Int, _ G: Int, _ H: Int) -> Int {
        var left = max(A, E)
        var right = max(min(C, G), left)
        var bottom = max(B, F)
        var top = max(min(D, H), bottom)
        return (top - bottom) * (right - left)
    }
}