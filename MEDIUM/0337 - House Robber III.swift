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
    func rob(_ root: TreeNode?) -> Int {
        guard let root = root else { return 0 }
        let maximumAmount = robHouse(root)
        return max(maximumAmount.alternateHouse, maximumAmount.currentHouse)
    }
    
    func robHouse(_ root: TreeNode?) -> (alternateHouse: Int, currentHouse: Int) {
        guard let root = root else { return (0, 0) }
        let leftHouse = robHouse(root.left)
        let rightHouse = robHouse(root.right)
        
        let alternateHouse = max(leftHouse.alternateHouse, leftHouse.currentHouse) + max(rightHouse.alternateHouse, rightHouse.currentHouse)
        let currentHouse = leftHouse.alternateHouse + rightHouse.alternateHouse + root.val
        return (alternateHouse, currentHouse)
    }
}