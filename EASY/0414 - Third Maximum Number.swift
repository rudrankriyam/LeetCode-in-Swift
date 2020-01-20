class Solution {
    func thirdMax(_ nums: [Int]) -> Int {
        var first = Int.min, second = Int.min, third = Int.min
        
        for number in nums {
            if number == first || number == second || number == third {
                continue
            } 
            
            if number > first {
                third = second
                second = first
                first = number
            } else if number > second {
                third = second
                second = number
            } else if number > third {
                third = number
            }
        }
        return (third == Int.min) ? first : third
    }
}