class MyQueue {
    var stack: [Int] = []
    var tmpStack: [Int] = []
        
    func push(_ n: Int) {
            stack.append(n)
        }
        
    func pop() -> Int {
        while stack.count != 1 {
            tmpStack.append((stack.removeLast()))
        }

        let h = stack.removeLast()

        while tmpStack.count != 0 {
            stack.append(tmpStack.removeLast())
        }
        return h
    }

    func peek() -> Int {
        while stack.count != 1 {
            tmpStack.append((stack.removeLast()))
        }

        let h = stack.last

        while tmpStack.count != 0 {
            stack.append(tmpStack.removeLast())
        }
        return h!
    }

    func empty() -> Bool {
        return stack.isEmpty
    }
}