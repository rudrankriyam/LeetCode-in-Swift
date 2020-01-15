class Solution {
    func integerBreak(_ n: Int) -> Int {
        var products = Array(repeating: 1, count: n + 1)
        
        for index in 2...n {
            for index2 in 1..<index {
                products[index] = max(products[index], max(products[index2], index2) * max(products[index - index2], index - index2))
            }
        }
        return products[n]
    }
}