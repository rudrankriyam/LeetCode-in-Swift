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
private extension TreeNode {
    var min: TreeNode {
        return left?.min ?? self
    }
}
class Solution {
    func deleteNode(_ root: TreeNode?, _ key: Int) -> TreeNode? {
        guard let node = root else { return nil }   
        
        if node.val == key {
            if node.left == nil && node.right == nil { 
                return nil 
            } 
            
            if node.left == nil { 
                return node.right
            }
            
            if node.right == nil { 
                return node.left 
            }
            
            node.val = node.right!.min.val
            node.right = deleteNode(node.right, node.val)
        } else if key < node.val { 
            node.left = deleteNode(node.left, key) 
        } else if key > node.val {
            node.right = deleteNode(node.right, key)
        }
     return node
    }
}