class Solution {
    func combine(_ n: Int, _ k: Int) -> [[Int]] {
        var outputArray = [[Int]]()
        var output = [Int]()
        
        func findAllCombination(_ first: Int, _ current: inout [Int]) {
            if current.count == k { outputArray.append(current) }
            
            for index in first..<n + 1 {
                current.append(index)
                findAllCombination(index + 1, &current)
                current.removeLast()
            }
        }
        findAllCombination(1, &output)
        return outputArray
    }
}