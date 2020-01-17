class MyStack {
    var queue: [Int]
    init() {
        self.queue = [Int]()
    }

    func push(_ x: Int) {
        queue.append(x)
        for _ in 0..<queue.count - 1 {
            queue.append(queue.removeFirst())
        }
    }
    
    func pop() -> Int {
        return queue.removeFirst()
    }
    
    func top() -> Int {
        return queue.first!
    }
    
    func empty() -> Bool {
        return queue.isEmpty
    }
}