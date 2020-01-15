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

class BSTIterator {
    
    var nodesSorted = [Int]()
    var index = -1

    init(_ root: TreeNode?) {
        self.inOrderTraversal(root)
    }
    
    func next() -> Int {
        if hasNext() {
            index += 1
            return nodesSorted[index]
        }
        return 0
    }
    
    func inOrderTraversal(_ root: TreeNode?) {
        guard let root = root else { return }
        
        inOrderTraversal(root.left)
        nodesSorted.append(root.val)
        inOrderTraversal(root.right)
    }
    
    func hasNext() -> Bool {
        return (index < nodesSorted.count - 1)
    }
}