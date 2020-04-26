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
    func isPalindrome(_ head: ListNode?) -> Bool {
        
        var prevNode = head 
        var nextNode = head 
        
        while (nextNode?.next != nil) {
            nextNode = nextNode?.next?.next
            prevNode = prevNode?.next
        }
        
        var rightHalf = prevNode?.reverse()
        var leftHalf = head 
        
        while rightHalf != nil {
            if leftHalf?.val != rightHalf?.val {
                return false
            }
            leftHalf = leftHalf?.next
            rightHalf = rightHalf?.next
        }
        return true
        
    }
}

extension ListNode {
    public func reverse() -> ListNode? {
        if self == nil {
            //Checking if the head is empty
            //ie the list is empty
            return nil
        }
        
        var prev: ListNode? = nil
        var currentNode: ListNode? = self 
        
        while(currentNode != nil) {
            let nextNode = currentNode?.next
            currentNode?.next = prev 
            prev = currentNode
            currentNode = nextNode
        }
        
        return prev
    }
}
