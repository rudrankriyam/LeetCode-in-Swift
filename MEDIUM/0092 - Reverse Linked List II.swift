/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */
class Solution {
    func reverseBetween(_ head: ListNode?, _ m: Int, _ n: Int) -> ListNode? {
        if head == nil { return nil }
        
        let initialNode = ListNode(0)
        initialNode.next = head
        
        var previousNode: ListNode? = initialNode
        for _ in 0..<(m - 1) {
            previousNode = previousNode?.next
        }

        let startNode: ListNode? = previousNode?.next
        var endNode: ListNode? = startNode?.next
        
        for _ in 0..<(n - m) {
            startNode?.next = endNode?.next
            endNode?.next = previousNode?.next
            previousNode?.next = endNode
            endNode = startNode?.next
        }
        return initialNode.next
    }
}