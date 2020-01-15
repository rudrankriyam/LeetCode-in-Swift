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
    func getAllElements(_ root1: TreeNode?, _ root2: TreeNode?) -> [Int] {
        var mergedArray = [Int]()
        
        flattenTree(root1, &mergedArray)
        flattenTree(root2, &mergedArray)
        return mergedArray.sorted()
    }
            
    private func flattenTree(_ root: TreeNode?, _ array: inout [Int]) {
        guard let root = root else { return }

        flattenTree(root.left, &array)
        array.append(root.val)
        flattenTree(root.right, &array)
    }
}