class Solution {
    func replaceElements(_ arr: [Int]) -> [Int] {
        if arr.count == 0 { return [] }
        if arr.count < 2 { return [-1] }
        
        var greatestElementArray = arr
        var count = greatestElementArray.count
        var max = greatestElementArray[count - 1]
        greatestElementArray[count - 1] = -1
        
        for index in (0...(count - 2)).reversed() {
            var temp = greatestElementArray[index]
            
            greatestElementArray[index] = max
            
            if max < temp { 
                max = temp 
            }
        }
        return greatestElementArray
    }
}

