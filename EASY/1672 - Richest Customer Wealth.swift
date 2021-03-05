class Solution {
    func maximumWealth(_ accounts: [[Int]]) -> Int {
        var maximumWealth = 0

        for account in accounts {
            var totalMoney = 0

            for money in account {
                totalMoney += money
            }
            maximumWealth = max(maximumWealth, totalMoney)
        }
        return maximumWealth
    }
}
