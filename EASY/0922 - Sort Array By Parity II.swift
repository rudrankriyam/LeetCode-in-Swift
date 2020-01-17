class Solution {
    func sortArrayByParityII(_ A: [Int]) -> [Int] {
        var outputArray = A
        var index2 = 1
        
        for index in stride(from: 0, through: outputArray.count - 1, by: 2) {
            if outputArray[index] % 2 == 1 {
                while outputArray[index2] % 2 == 1 {
                    index2 += 2
                }
                var temp = outputArray[index]
                outputArray[index] = outputArray[index2]
                outputArray[index2] = temp
            }
        }
        return outputArray
    }
}