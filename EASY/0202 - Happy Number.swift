class Solution {
    func isHappy(_ n: Int) -> Bool {
        var happyNumber = n
        var seenSet = Set<Int>()
        while happyNumber != 1 && !seenSet.contains(happyNumber) {
            seenSet.insert(happyNumber)
            happyNumber = getNextNumber(&happyNumber)
        }
        return happyNumber == 1
    }

    func getNextNumber(_ happyNumber: inout Int) -> Int {
        var sum = 0
        while happyNumber > 0 {
            var remainder = happyNumber % 10
            happyNumber /= 10
            sum += remainder * remainder
        }
        return sum
    }
}