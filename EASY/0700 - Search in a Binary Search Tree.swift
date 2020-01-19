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

// Recursive Solution
class Solution {
    func searchBST(_ root: TreeNode?, _ val: Int) -> TreeNode? {
        guard let root = root else { return nil }
        
        if root.val == val { 
            return root 
        } else if root.val > val {
            return searchBST(root.left, val)
        } else {
            return searchBST(root.right, val)
        }
    }
}

// Iterative Solution
class Solution {
    func searchBST(_ root: TreeNode?, _ val: Int) -> TreeNode? {
        var subTree: TreeNode? = root
        
        while subTree != nil {
            guard let value = subTree?.val else { break }

            if value == val {
                break
            } else if value > val {
                subTree = subTree?.left
            } else {
                subTree = subTree?.right
            }
        }
        return subTree
    }
}