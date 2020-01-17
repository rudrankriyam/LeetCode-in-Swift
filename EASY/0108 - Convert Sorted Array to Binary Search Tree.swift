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
    func sortedArrayToBST(_ nums: [Int]) -> TreeNode? {
        if(nums.count == 0) { return nil }
        return inorderTraversal(0, nums.count - 1, nums)
    }
    
    func inorderTraversal(_ left: Int, _ right: Int, _ nums: [Int]) -> TreeNode? {
        if left > right { return nil }
        var middle = (left + right) / 2
        var root = TreeNode(nums[middle])
        root.left = inorderTraversal(left, middle - 1, nums)
        root.right = inorderTraversal(middle + 1, right, nums)
        return root
    }
}