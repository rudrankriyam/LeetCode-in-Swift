class Solution {
    func rob(_ nums: [Int]) -> Int {
        var maximumMoney = 0
        var previousMaximumMoney = 0
        
        for value in nums {
            var currentHouse = maximumMoney
            maximumMoney = max(previousMaximumMoney + value, maximumMoney)
            previousMaximumMoney = currentHouse
        }
        return maximumMoney                   
    }
}