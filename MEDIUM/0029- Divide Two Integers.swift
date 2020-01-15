class Solution {
    func divide(_ dividend: Int, _ divisor: Int) -> Int {
        if dividend == Int32.min {
            if divisor == 1 { return Int(Int32.min) }
            else if divisor == -1 { return Int(Int32.max) }
        }
        var sign1 = dividend < 0
        var sign2 = divisor < 0
        
        var dividend = abs(Int64(dividend))
        var divisor = abs(Int64(divisor))
        
        var division = 0
        
        while divisor <= dividend {
            var add = 1
            var check = divisor
            while (check << 1) < dividend {
                add = add << 1
                check = check << 1
            }
            division += add
            dividend -= check 
        }
        if sign1 != sign2 { 
            division = -division 
        }
        return division
    }
}