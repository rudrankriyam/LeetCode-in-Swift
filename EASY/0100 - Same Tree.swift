/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.left = nil
 *         self.right = nil
 *     }
 * }
 */
class Solution {
    func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
        var pStack = [TreeNode]()
        var qStack = [TreeNode]()
        
        if let p = p { pStack.append(p) }
        if let q = q { qStack.append(q) }
        while !pStack.isEmpty && !qStack.isEmpty {
            let pNode = pStack.removeLast()
            let qNode = qStack.removeLast()
            if pNode.val != qNode.val { return false }
            
            if let pRightNode = pNode.right { 
                pStack.append(pRightNode) 
            }
            if let qRightNode = qNode.right { 
                qStack.append(qRightNode) 
            }
            
            if pStack.count != qStack.count { return false }
            
            if let pLeftNode = pNode.left { 
                pStack.append(pLeftNode) 
            }
            if let qLeftNode = qNode.left { 
                qStack.append(qLeftNode) 
            }

            if pStack.count != qStack.count { return false }
        }
        return pStack.count == qStack.count
    }
}