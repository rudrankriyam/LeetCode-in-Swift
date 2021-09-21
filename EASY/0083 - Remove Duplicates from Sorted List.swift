/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {
    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
        guard head?.next != nil else { return head }
        
        var currentNode = head
        
        while currentNode != nil {
            if currentNode?.val == currentNode?.next?.val {
                currentNode?.next = currentNode?.next?.next
            } else {
                currentNode = currentNode?.next
            }
        }
        return head
    }
}
