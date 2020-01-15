class MyCalendar {
    var calendar: [[Int]]
    
    init() {
        self.calendar = [[Int]]()
    }
    
    func book(_ start: Int, _ end: Int) -> Bool {
        var low = 0
        var high = calendar.count - 1
        while low <= high {
            let mid = (low + high) / 2
            let midDate = calendar[mid]
            
            if start < midDate[1], end > midDate[0] {
                return false
            } else if start < midDate[1] {
                low = mid + 1
            } else {
                high = mid - 1
            }
        }
        calendar.insert([start, end], at: low)
        return true
    }
}