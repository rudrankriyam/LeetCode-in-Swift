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
    var node: ListNode?
    var nodeLength: Int = 0

    init(_ head: ListNode?) {
        node = head
        var currentNode: ListNode? = node
        while currentNode != nil {
            nodeLength += 1
            currentNode = currentNode?.next
        }
    }
    
    func getRandom() -> Int {
        let randomValue = Int.random(in: 0..<nodeLength)
        var currentNode: ListNode? = node
        var currentValue = 0
        while currentValue < nodeLength && currentNode != nil {
            if currentValue == randomValue {
                return currentNode?.val ?? 0
            } else {
                currentNode = currentNode?.next
                currentValue += 1
            }
        }
        return currentNode?.val ?? 0
    }
}