class ListNode {
    var value: Int
    var key: Int
    var previous: ListNode?
    var next: ListNode?
    
    init(_ key: Int, _ value: Int) {
        self.key = key
        self.value = value
    }
}
   
class LRUCache {
    var capacity: Int
    var head: ListNode?
    var tail: ListNode?
    var count: Int
    var map: [Int: ListNode]

    init(_ capacity: Int) {
        self.capacity = capacity
        head = ListNode(-1, -1)
        tail = ListNode(-1, -1)
        head?.next = tail
        tail?.previous = head
        count = 0
        map = [Int: ListNode]()
    }
    
    func get(_ key: Int) -> Int {
        if map[key] == nil { return -1 }
        var node = map[key]
        deleteNode(node)
        moveToHead(node)
        return node!.value
    }
    
    func put(_ key: Int, _ value: Int) {
        if map[key] != nil {
            var node = map[key]
            node?.value = value
            deleteNode(node)
            moveToHead(node)
            return
        }
        
        var node = ListNode(key, value)
        map[key] = node
        if count == capacity {
            var delete = tail?.previous
            deleteNode(delete)
            map[delete!.key] = nil
            count -= 1
        }
        moveToHead(node)
        count += 1
    }
    
    func moveToHead(_ node: ListNode?) {
        node?.next = head?.next
        head?.next?.previous = node
        node?.previous = head
        head?.next = node
    }
    
    func deleteNode(_ node: ListNode?) {
        node?.next?.previous = node?.previous
        node?.previous?.next = node?.next
    }
}