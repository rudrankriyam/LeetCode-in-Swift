class Solution {
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
        let initialNode = ListNode(0)
        
        var firstNode: ListNode? = initialNode
        var secondNode: ListNode? = initialNode
        
        secondNode?.next = head
        
        for _ in 1...(n + 1) {
            firstNode = firstNode?.next
        }
        
        while firstNode != nil {
            firstNode = firstNode?.next
            secondNode = secondNode?.next
        }
        
        secondNode?.next = secondNode?.next?.next
        return initialNode.next
    }
}