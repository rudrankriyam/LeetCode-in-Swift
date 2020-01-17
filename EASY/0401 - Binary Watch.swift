class Solution {
    func readBinaryWatch(_ num: Int) -> [String] {
        var allPossibleTimes = [String]()
        var res = [String]()
        
        func findLEDS(hours: Int, minutes: Int) -> Int {
            let numberOfHours = Array(String(hours, radix: 2))
            .filter { $0 == "1" }.count
            
            let numberOfMinutes = Array(String(minutes, radix: 2))
            .filter { $0 == "1"}.count
            
            return numberOfHours + numberOfMinutes
        }
        
        for hours in 0...11 {
            for minutes in 0...59 {
                let time: UInt = UInt(hours * 64 + minutes) 
                if Int(bitPattern: time) == num {
                    allPossibleTimes.append(String(format: "%d:%02d", hours, minutes))
                }
            }
        }
        return allPossibleTimes
    }
}