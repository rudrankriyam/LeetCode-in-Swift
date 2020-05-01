class Solution {
    func myPow(_ x: Double, _ n: Int) -> Double {
        guard x != 0 else { return 0 }
        return power(base: x, exponent: n)
    }
    
    private func power(base: Double, exponent: Int) -> Double {
        guard exponent != 0 else { return 1 } // Anything power 0 is 1
        
        var temp = power(base: base, exponent: exponent / 2)
        
        if exponent % 2 == 0 {
            return temp * temp
        }
        
        if exponent < 0 {
            //if the exponent is negative it should shift in the denominator
            return (1 / base) * temp * temp
        }
        
        return base * temp * temp
    }
}

// By [Swapnanil Dhol](https://twitter.com/SwapnanilDhol)
