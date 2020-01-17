class Solution {
    func hammingDistance(_ x: Int, _ y: Int) -> Int {
        var hammingDistance = x ^ y
        var counter = 0
        
        while hammingDistance > 0 {
            hammingDistance &= (hammingDistance - 1)
            counter += 1
        }
        return counter 
    }
}