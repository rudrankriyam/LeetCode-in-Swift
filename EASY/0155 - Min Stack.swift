class ListNode {
    let value : Int
    var minimumValue : Int
    var next: ListNode? = nil
    init(_ value: Int) {
        self.value = value
        minimumValue = value
        next = nil
    }
}
class MinStack {
    private var head: ListNode?
    func push(_ x: Int) {
        if head == nil {
            head = ListNode(x)
        } else {
            let node = ListNode(x)
            node.minimumValue = min(head!.minimumValue, x)
            node.next = head
            head = node
        }
    }
    
    func pop() {
       head = head?.next
    }
    
    func top() -> Int {
       return head?.value ?? 0
    }
    
    func getMin() -> Int {
        return head?.minimumValue ?? 0
    } 
}