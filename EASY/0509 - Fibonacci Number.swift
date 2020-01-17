class Solution {
    func fib(_ N: Int) -> Int {
        if N < 2 { return N }
        if N == 2 { return 1 }
        
        var current = 0
        var previousOne = 1
        var previousTwo = 1
        
        for value in 3...N {
            current = previousOne + previousTwo
            previousOne = previousTwo
            previousTwo = current
        }
        return current
    }
}