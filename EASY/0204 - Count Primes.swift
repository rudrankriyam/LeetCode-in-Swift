class Solution {
    func countPrimes(_ n: Int) -> Int {
        if n < 3 { return 0 }
        var primeNumbers = [Bool](repeating: false, count: n)
        var count = 0
    
        for value in 2..<n {
            if primeNumbers[value] { continue }
            count += 1
        
            var element = value
            while element < n {
                primeNumbers[element] = true
                element += value
            }
        }   
        return count
    }
}