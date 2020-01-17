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
    func rangeSumBST(_ root: TreeNode?, _ L: Int, _ R: Int) -> Int {
        var sum = 0
        if root == nil { return sum }
        var stack = [root]
        while !stack.isEmpty {
            if let node = stack.removeLast() {
                if L <= node.val && node.val <= R {
                    sum += node.val
                }
                if L < node.val {
                    stack.append(node.left)
                }
                if node.val < R {
                    stack.append(node.right)
                }
            }
        }
        return sum
    }
}