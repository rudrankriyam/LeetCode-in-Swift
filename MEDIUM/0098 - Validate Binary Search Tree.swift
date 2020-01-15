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
    func isValidBST(_ root: TreeNode?) -> Bool {
        return checkValues(root, Int.min, Int.max)
    }
    
    func checkValues(_ root: TreeNode?, _ lower: Int, _ upper: Int) -> Bool {
        guard let root = root else { return true }
        if root.val > lower && root.val < upper {
            return checkValues(root.left, lower, root.val) && checkValues(root.right, root.val, upper) 
        }
        return false
    }
}