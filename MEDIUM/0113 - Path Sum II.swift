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
    func pathSum(_ root: TreeNode?, _ sum: Int) -> [[Int]] {
        var paths = [[Int]]()
        var path = [Int]()
        findPaths(root, sum, &paths, &path)
        return paths
    }

    func findPaths(_ root: TreeNode?, _ sum: Int, _ paths: inout [[Int]],  _ currentPath: inout [Int]) {
        guard var root = root else { return }
    
        currentPath.append(root.val)
        if root.val == sum && root.left == nil && root.right == nil {
            paths.append(currentPath)
        }
        
        findPaths(root.left, sum - root.val, &paths, &currentPath)
        findPaths(root.right, sum - root.val, &paths, &currentPath)
        currentPath.removeLast()        
    }
}