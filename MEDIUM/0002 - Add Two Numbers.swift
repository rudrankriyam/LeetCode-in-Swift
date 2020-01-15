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
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var l1 = l1
        var l2 = l2
        var initialNode = ListNode(0)
        var currentNode = initialNode
        var carryOver = 0
        
        while l1 != nil || l2 != nil {
            var firstValue = l1?.val ?? 0
            var secondvalue = l2?.val ?? 0
            var sum = firstValue + secondvalue + carryOver
            carryOver = sum / 10
            currentNode.next = ListNode(sum % 10)
            currentNode = currentNode.next!
            
            l1 = l1?.next
            l2 = l2?.next
        }
        if carryOver > 0 { 
            currentNode.next = ListNode(carryOver)
        }
        return initialNode.next
    }
}
