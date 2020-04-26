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
    
    //The function below is the optimized version of the code above
    //O(1)- Space and O(n)- Time
    func isPalindromeOptimized(_ head: ListNode?) -> Bool {
        var previousNode = head
        var nextNode = head
        
        while (nextNode?.next != nil) {
            nextNode = nextNode?.next?.next
            previousNode = previousNode?.next
        }
        
        var rightHalf = reverse(previousNode)
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
    
    private func reverse(_ listNode: ListNode?) -> ListNode? {
        guard let listNode = listNode else { return nil }
        
        var previousNode: ListNode? = nil
        var currentNode: ListNode? = listNode
        
        while (currentNode != nil) {
            let nextNode = currentNode?.next
            currentNode?.next = previousNode
            previousNode = currentNode
            currentNode = nextNode
        }
        return previousNode
    }
}
