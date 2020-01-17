class Solution {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        var indexOne = 0
        var indexTwo = numbers.count - 1
    
        while indexOne < indexTwo {
            let sumOfItems = numbers[indexOne] + numbers[indexTwo]
            
            if target == sumOfItems {
                return [indexOne + 1, indexTwo + 1]
            } else if target > sumOfItems {
                indexOne += 1
            } else if target < sumOfItems {
                indexTwo -= 1
            }
        }
    return []
    }
}