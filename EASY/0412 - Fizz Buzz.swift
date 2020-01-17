class Solution {
    func fizzBuzz(_ n: Int) -> [String] {
        var result = [String]()
        var mapping = [(number: 3, value: "Fizz"), (number: 5, value: "Buzz")]
        
        for number in 1...n {
            var string = ""
            for tuple in mapping {
                if number % tuple.number == 0 {
                    string += tuple.value
                    }
                }
            
                if string == "" {
                    string += "\(number)"
                }
            result.append(string)
        }
        return result
    }
}