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
    func binaryTreePaths(_ root: TreeNode?) -> [String] {
        if root == nil { return [] }
        var paths = [String]()
        search(root, "", &paths)
        return paths
    }
        
    func search(_ root: TreeNode?, _ currentPath: String, _ paths: inout [String]) {
        guard let root = root else {return }
        
        if root.left == nil && root.right == nil { 
            paths.append("\(currentPath)\(root.val)") 
        }
        
        if root.left != nil { 
            search(root.left, "\(currentPath)\(root.val)->", &paths) 
        }
        
        if root.right != nil { 
            search(root.right, "\(currentPath)\(root.val)->", &paths) 
        }
    }
}