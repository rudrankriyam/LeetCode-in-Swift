class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        guard prices.count != 0 else { return 0 }
        var buyingPrice = Int.min
        var preBuyingPrice = 0
        var sellingPrice = 0
        var preSellingPrice = 0

        for price in prices {
            preBuyingPrice = buyingPrice
            buyingPrice = max(preSellingPrice - price, preBuyingPrice)
            preSellingPrice = sellingPrice
            sellingPrice = max(preBuyingPrice + price, preSellingPrice)
        }
        return sellingPrice
    }
}