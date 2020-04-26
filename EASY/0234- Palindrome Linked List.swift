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
    
    //The function below is the optimised version of the code above
    //O(1)- Space and O(n)- Time
   func isPalindromeOptimised(_ head: ListNode?) -> Bool {
        
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

 //Extension for the optimised solution. Aids in the reversal of the list.
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
