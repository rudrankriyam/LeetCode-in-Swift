class Solution {
    func rotateString(_ A: String, _ B: String) -> Bool {
        return (A.count == B.count && (A + A).contains(B)) || (A.count == 0 && B.count == 0)
    }
}