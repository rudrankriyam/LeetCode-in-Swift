class Solution {

    let array: [Int]
    
    init(_ nums: [Int]) {
        self.array = nums
        
    }
    
    /** Resets the array to its original configuration and return it. */
    func reset() -> [Int] {
        return array
    }
    
    /** Returns a random shuffling of the array. */
    func shuffle() -> [Int] {
        var copy = array
        var length = copy.count
        
        for _ in copy { 
            let randomIndex = Int.random(in: 0..<length)
            if randomIndex != length - 1 { 
                copy.swapAt(randomIndex, length - 1)
            }
            length -= 1
        }
        return copy
    }
}