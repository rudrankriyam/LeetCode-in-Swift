class RecentCounter {
    private var counter: [Int]
    private var timeLimit: Int
    private var lastPing: Int
    
    init() {
        timeLimit = 3000
        lastPing = 0
        counter = [Int]()
    }
    
    func ping(_ t: Int) -> Int {
        counter.append(t)
        while counter[lastPing] < t - timeLimit {
            lastPing += 1
        } 
        return counter.count - lastPing
    }
}