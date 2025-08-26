/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */

// 왼 -> 루트 -> 오른쪽
// 오른쪽을 만나면 바로 append stack
// 왼쪽은 지나가는 길 순서로 append stack -> 그래야 result에 pop 하는 반대 순서로 들어가지 

class Solution {
    func inorderTraversal(_ root: TreeNode?) -> [Int] {
        guard var root else { return [] }

        var result = [Int]()
        var stack = [TreeNode]()
        stack.append(root)

        while let left = root.left {
            stack.append(left)
            root = left
        }

        while !stack.isEmpty {
            let node = stack.removeLast()
            result.append(node.val)

            if var cur = node.right {
                stack.append(cur)
                while let left = cur.left {
                    stack.append(left)
                    cur = left
                }
            }
        }
        return result
    }
}