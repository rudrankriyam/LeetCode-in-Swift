class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        if prices.count == 0 { return 0 }
        var maxProfit = 0
        
        for day in 1..<prices.count {
            if prices[day] > prices[day - 1] {
                maxProfit += prices[day] - prices[day - 1]
            }
        }
        return maxProfit
    }
}