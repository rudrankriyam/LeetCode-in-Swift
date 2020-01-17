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
    var answer = 0
    
    func longestUnivaluePath(_ root: TreeNode?) -> Int {
        guard let root = root else { return 0 }
        arrowLength(root)
        return answer
    }
    
    func arrowLength(_ node: TreeNode?) -> Int {
        guard let node = node else { return 0 }

        let leftLength: Int = arrowLength(node.left)
        let rightLength: Int = arrowLength(node.right)

        var leftArrow = 0
        var rightArrow = 0

        if node.left != nil && (node.left?.val == node.val) {
            leftArrow += (leftLength + 1)
        }

        if node.right != nil && (node.right?.val == node.val) {
            rightArrow += (rightLength + 1)
        }
        
        answer = max(answer, leftArrow + rightArrow)
        return max(leftArrow, rightArrow)
    }
}