class Solution {
    func relativeSortArray(_ arr1: [Int], _ arr2: [Int]) -> [Int] {
        guard arr2.count != 0 else { return arr1 }
        
        var mappingNumberToCount = [Int: Int]()
        var result = [Int]()
        
        for number in arr1 { 
            mappingNumberToCount[number, default: 0] += 1 
        }
        
        for number in arr2 {
            result += Array(repeating: number, count: mappingNumberToCount[number, default: 0])
            mappingNumberToCount[number] = nil
        }
        let keys = mappingNumberToCount.keys.sorted()
        
        for remainingNumber in keys {
            result += Array(repeating: remainingNumber, count: mappingNumberToCount[remainingNumber, default: 0])
        }
        return result
    }
}