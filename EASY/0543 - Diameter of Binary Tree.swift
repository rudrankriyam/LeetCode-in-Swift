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
    var answer = 0
    func diameterOfBinaryTree(_ root: TreeNode?) -> Int {
        if root == nil { return 0 }
        depth(root)
        return answer - 1
    }
    
    func depth(_ node: TreeNode?) -> Int {
        if node == nil { return 0 }
        
        var leftNode = depth(node?.left)
        var rightNode = depth(node?.right)
        answer = max(answer, leftNode + rightNode + 1)
        return max(leftNode, rightNode) + 1
    }
}