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
    func removeElements(_ head: ListNode?, _ val: Int) -> ListNode? {
        
        let initialNode = ListNode(0)
        initialNode.next = head
        
        var previousNode = initialNode
        var currentNode = head
        
        while currentNode != nil {
            if (currentNode?.val == val) {
                previousNode.next = currentNode?.next
            } else {
                previousNode = currentNode!
            }
            currentNode = currentNode?.next
        }
        
        return initialNode.next
    }
}