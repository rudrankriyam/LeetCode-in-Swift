class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var maxProfit = 0
        var minPrice = Int.max 

        for index in prices.indices {
            if prices[index] < minPrice {
                minPrice = prices[index]
            } else if prices[index] - minPrice > maxProfit {
                maxProfit = prices[index] - minPrice
            }
        }
        return maxProfit
    }
}