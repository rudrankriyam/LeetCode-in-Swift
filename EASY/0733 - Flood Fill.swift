class Solution {
    func floodFill(_ image: [[Int]], _ sr: Int, _ sc: Int, _ newColor: Int) -> [[Int]] {
        var resultImage: [[Int]] = image
        var oldColor = image[sr][sc]
 
        if oldColor != newColor { 
            floodFillColor(&resultImage, sr, sc, newColor, oldColor) 
        }
        return resultImage
    }
           
    func floodFillColor(_ image: inout [[Int]], _ sr: Int, _ sc: Int, _ newColor: Int, _ oldColor: Int) {
        if sr < 0 || sr >= image.count  { return }
        if sc < 0 || sc >= image[0].count { return }
        if image[sr][sc] != oldColor { return }
        
        image[sr][sc] = newColor
        floodFillColor(&image, sr + 1, sc, newColor, oldColor)
        floodFillColor(&image, sr - 1, sc, newColor, oldColor)
        floodFillColor(&image, sr, sc + 1, newColor, oldColor)
        floodFillColor(&image, sr, sc - 1, newColor, oldColor)
    }
}