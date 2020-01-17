class Solution {
    func sumZero(_ n: Int) -> [Int] {
        if n == 0 { return [] }
        if n == 1 { return [0] }
        
        var set = Set<Int>()
        var secondNumber = n / 2
        var firstNumber = n % 2
            
        for number in 0..<secondNumber {
            if !set.contains(secondNumber - number) { 
                set.insert(-(secondNumber - number)) 
            }
        }
        
        if firstNumber != 0 { 
            set.insert(0) 
        }
        
        for number in 0..<secondNumber {
            if !set.contains(secondNumber - number) { 
                set.insert((secondNumber - number)) 
            }
        }
        return Array(set)
    }
}