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
    func largestValues(_ root: TreeNode?) -> [Int] {
        guard let node = root else { return [] }
        var largestValues = [Int]()
        var queue = [TreeNode]()
        
        queue.append(node)
        while !queue.isEmpty {
            var maximumValue = Int.min
            var count = queue.count - 1
            
            while count >= 0 {
                let node = queue.removeFirst()
                if node.val > maximumValue { 
                    maximumValue = node.val 
                }

                if let leftChild = node.left { 
                    queue.append(leftChild) 
                }

                if let rightChild = node.right { 
                    queue.append(rightChild) 
                }
                
                count -= 1
            }
            largestValues.append(maximumValue)
        }
        return largestValues
    }
}