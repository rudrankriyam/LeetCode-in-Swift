class Solution {
    func compareVersion(_ version1: String, _ version2: String) -> Int {
        let version1Components = version1.split(separator: ".").compactMap { Int($0) }
        let version2Components = version2.split(separator: ".").compactMap { Int($0) }
        
        var index = 0
        
        while index < version1Components.count || index < version2Components.count {
            let character1 = (index < version1Components.count) ? version1Components[index] : 0 
            let character2 = (index < version2Components.count) ? version2Components[index] : 0 
            
            if character1 > character2 { return 1 }
            else if character1 < character2 { return -1 }
            else { index += 1 }
        }
        return 0
    }
}