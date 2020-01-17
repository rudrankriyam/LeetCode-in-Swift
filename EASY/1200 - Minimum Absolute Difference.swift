class Solution {
    func minimumAbsDifference(_ arr: [Int]) -> [[Int]] {
        if arr.count < 3 {
            return [arr]
        }
        var arr = arr.sorted()
        var minimumDifference = Int.max
        var outputArray = [[Int]]()

        for index in 0..<arr.count - 1 {
            if minimumDifference > abs(arr[index + 1] - arr[index]) {
                minimumDifference = abs(arr[index + 1] - arr[index])
            }
        }
        for index in 0..<arr.count - 1 {
            if abs(arr[index + 1] - arr[index]) == minimumDifference {
                outputArray.append([arr[index], arr[index + 1]])
            }
        }
        return outputArray
    }
}