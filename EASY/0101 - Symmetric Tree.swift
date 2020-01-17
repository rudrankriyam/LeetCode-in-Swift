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
    func isSymmetric(_ root: TreeNode?) -> Bool {
        guard let root = root else { return true }
        var stack = [root.left, root.right]
        
        while !stack.isEmpty {
            var nodeOne = stack.removeLast()
            var nodeTwo = stack.removeLast()
            if nodeOne == nil && nodeTwo == nil { continue }
            guard let node1 = nodeOne, let node2 = nodeTwo else { return false }
            if node1.val != node2.val { return false }
            
            stack.append(node1.left)
            stack.append(node2.right)
            stack.append(node1.right)
            stack.append(node2.left)
        }
        return stack.isEmpty
    }
}