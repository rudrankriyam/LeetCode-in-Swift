class Solution {
    func coinChange(_ coins: [Int], _ amount: Int) -> Int {
        guard amount > 0 else { return 0 }
        var numberOfCoins = Array(repeating: amount + 1, count: amount + 1)
        numberOfCoins[0] = 0
        
        for value in 1...amount {
            for coin in coins {
                if coin <= value {
                    numberOfCoins[value] = min(numberOfCoins[value], numberOfCoins[value - coin] + 1)
                }
            }
        }
        return numberOfCoins[amount] > amount ? -1 : numberOfCoins[amount]
    }
}