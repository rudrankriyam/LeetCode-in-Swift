class Solution {
    func largestNumber(_ nums: [Int]) -> String {
        if nums.count == 0 { return "" }
        var result = ""
        
        let nums = nums.sorted(by: { (num1: Int, num2: Int) -> Bool in
            let s1 = String(num1) + String(num2)
            let s2 = String(num2) + String(num1)
            return Int(s1)! > Int(s2)!
        })
        
        if nums[0] == 0 { 
            return "0" 
        }
                            
        for num in nums { 
            result += String(num) 
        }
                            
        return result
    }
}