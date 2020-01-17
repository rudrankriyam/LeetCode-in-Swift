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
    func getDecimalValue(_ head: ListNode?) -> Int {
        var result = 0
        var current: ListNode? = head
        
        while current != nil {
            if let value = current?.val {
                result = value + result * 2
                current = current?.next
            }
        }
        return result
    }
}