class Solution {
    func climbStairs(_ n: Int) -> Int {
        if n < 3 { return n }
        var first = 1
        var second = 2
        for _ in 3...n {
            var third = first + second
            first = second
            second = third
        }
        return second
    }
}