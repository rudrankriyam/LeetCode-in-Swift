class Solution {
    func swapPairs(_ head: ListNode?) -> ListNode? {
        var initialNode = ListNode(0)
        initialNode.next = head
        var currentNode = head
        var previousNode = initialNode
        
        while currentNode != nil && currentNode?.next != nil { 
            var firstNode = currentNode
            var secondNode = currentNode?.next 
        
            previousNode.next = secondNode
            firstNode?.next = secondNode?.next
            secondNode?.next = firstNode
            
            previousNode = firstNode!
            currentNode = firstNode?.next
        }
        return initialNode.next
    }
}