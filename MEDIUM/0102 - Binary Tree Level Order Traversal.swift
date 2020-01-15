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
    var levels = [[Int]]()
    func levelOrder(_ root: TreeNode?) -> [[Int]] {
        if root == nil { return levels }
        levelOrder(root, 0)
        return levels
    }
    
    func levelOrder(_ node: TreeNode?, _ level: Int) {
        if level == levels.count { 
            levels.append([]) 
        }
        
        guard let node = node else { return }
        
        levels[level].append(node.val)
        
        if node.left != nil { 
            levelOrder(node.left!, level + 1) 
        }
        
        if node.right != nil { 
            levelOrder(node.right!, level + 1) 
        }
    }
}