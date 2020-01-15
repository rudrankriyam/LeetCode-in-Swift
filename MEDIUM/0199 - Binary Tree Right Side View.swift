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
    var mapping = [Int: Int]()

    func rightSideView(_ root: TreeNode?) -> [Int] {
        getView(root, 0)
        var view = [Int]()
        for index in 0..<mapping.count {
            view.append(mapping[index]!)
        }
        return view
    }

    func getView(_ current: TreeNode?, _ depth: Int) {
        guard let node = current else { return }

        getView(node.left, depth + 1)
        mapping[depth] = node.val
        getView(node.right, depth + 1)
    }
}