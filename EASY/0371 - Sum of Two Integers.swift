class Solution {
    func getSum(_ a: Int, _ b: Int) -> Int {
        return (b == 0) ? a : getSum(a ^ b, (a & b) << 1);
    }
}