class Solution {
    func canPlaceFlowers(_ flowerbed: [Int], _ n: Int) -> Bool {
        var count = 0
        var flowerbed = flowerbed
        
        for (position, plot) in flowerbed.enumerated() {
            if plot == 0 && (position == 0 || flowerbed[position - 1] == 0) && (position == flowerbed.count - 1 || flowerbed[position + 1] == 0) {
                flowerbed[position] = 1
                count += 1
            }
            if count >= n { return true }
        }
        return false
    }
}