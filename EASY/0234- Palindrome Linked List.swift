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
        var currentNode = head
        var values = [Int]()
        
        while currentNode != nil {
            values.append(currentNode?.val ?? 0)
            currentNode = currentNode?.next 
        }
        
        var front = 0
        var back = values.count - 1
        
        while front < back {
            if values[front] != values[back] {
                return false
            }
            front += 1
            back -= 1
        }
        return true
    }
}