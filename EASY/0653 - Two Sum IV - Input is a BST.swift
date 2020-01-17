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
    func findTarget(_ root: TreeNode?, _ k: Int) -> Bool {
        var array = [Int]()
        inorder(root, &array)
        if array.count < 2 { return false }
        var left = 0
        var right = array.count - 1
        
        while left < right {
            let sum = array[left] + array[right] 
            if sum == k { return true }
            if sum > k {
                right -= 1
            } else {
                left += 1
            }
        }
        return false
    }
    
    func inorder(_ root: TreeNode?, _ array: inout [Int]) {
        guard let root = root else { return }

        let left = inorder(root.left, &array)
        array.append(root.val)
        let right = inorder(root.right, &array)
    }
}