class Solution {
    func selfDividingNumbers(_ left: Int, _ right: Int) -> [Int] {
        var answer = [Int]()
        
        loop: for value in left...right {
            var number = value
            while number != 0 {
                let remainder = number % 10
                
                if remainder == 0 || value % remainder != 0 { 
                    continue loop 
                }
                number = number / 10
            }
            answer.append(value)
        }
        return answer
    }
}