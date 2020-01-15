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
    func insertIntoBST(_ root: TreeNode?, _ val: Int) -> TreeNode? {
        guard var currentNode = root else { 
            return TreeNode(val) 
        }
        if currentNode.val <= val { 
            currentNode.right = insertIntoBST(currentNode.right, val) 
        } else { 
            currentNode.left = insertIntoBST(currentNode.left, val) 
        }
        return root
    }
}