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
    func buildTree(_ preorder: [Int], _ inorder: [Int]) -> TreeNode? {
        return buildTree(0, 0, preorder.count, preorder, inorder)
    }
    
    private func buildTree(_ preStart: Int, _ inStart: Int, _ inEnd: Int, _ preorder: [Int], _ inorder: [Int]) -> TreeNode? {
        if preStart > preorder.count - 1 || inStart > inEnd { return nil }
        
        let root = TreeNode(preorder[preStart])
        
        var inIndex = 0
        for index in inStart...inEnd {
            if inorder[index] == root.val { 
                inIndex = index
                break
            }
        }
        root.left = buildTree(preStart + 1, inStart, inIndex - 1, preorder, inorder)
        root.right = buildTree(preStart + inIndex - inStart + 1, inIndex + 1, inEnd, preorder, inorder)
        return root
    }
}