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
    var minimumDifference = Int.max
    var previous: Int? = nil
    
    func getMinimumDifference(_ root: TreeNode?) -> Int {
        guard let rootNode = root else { return minimumDifference }
        
        getMinimumDifference(rootNode.left)
        if let previous = previous {
            minimumDifference = min(minimumDifference, rootNode.val - previous)
        }
        previous = rootNode.val
        getMinimumDifference(rootNode.right)
        return minimumDifference
    }
}

