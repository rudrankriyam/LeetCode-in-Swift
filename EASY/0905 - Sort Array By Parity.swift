class Solution {
    func sortArrayByParity(_ A: [Int]) -> [Int] {
        var array = A
        var left = 0
        var right = A.count - 1
        
        while left < right {
            if array[left] % 2 > array[right] % 2 {
                var temp = array[left]
                array[left] = array[right]
                array[right] = temp
            }
            if array[left] % 2 == 0 {
                left += 1
            }
            if array[right] % 2 == 1 {
                right -= 1
            }
        }
        return array
    }
}