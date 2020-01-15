class Solution {
    func numSquares(_ n: Int) -> Int {
        var number = n
        while number % 4 == 0 { 
            number /= 4 
        }
        
        if number % 8 == 7 { 
            return 4 
        }
        
        if isSquare(Double(number)) {
            return 1 
        }
        
        var index = 1
        while (index * index <= number) {
            if isSquare(Double(number - index * index)) { 
                return 2 
            }
            index += 1
        }
        return 3
    }
    
    func isSquare(_ n: Double) -> Bool {
        var sqRoot = sqrt(n)
        return Int(n) == Int(sqRoot) * Int(sqRoot)
    }
}