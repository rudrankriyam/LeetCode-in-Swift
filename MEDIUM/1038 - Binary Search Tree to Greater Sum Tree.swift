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
    var sum = 0
    func bstToGst(_ root: TreeNode?) -> TreeNode? {
        if let rightNode = root?.right {
            bstToGst(rightNode) 
        }
        
        sum += root!.val
        root?.val = sum
        
        if let leftNode = root?.left { 
            bstToGst(leftNode) 
        }
        return root
    }
}