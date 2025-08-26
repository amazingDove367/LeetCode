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

// 왼쪽 전부 -> 오른쪽 전부 -> 루트

class Solution {
    func postorderTraversal(_ root: TreeNode?) -> [Int] {
        guard var root else { return [] }

        var result = [Int]()
        var lastVisited: TreeNode? = nil
        var stack = [TreeNode]()

        func pushLeftPath(_ node: TreeNode?) {
            var temp = node
            while let cur = temp {
                stack.append(cur)
                temp = cur.left
            }
        }

        pushLeftPath(root)

        while !stack.isEmpty {
            var peek = stack.last! // stack 꼭대기 관찰 

            // left 는 보지 않아도 되는 이유는, 이미 pushLeftPath에서 다 push 했기 때문에 
            if let right = peek.right, lastVisited !== right {
                // 오른쪽 서브트리 진입 
                pushLeftPath(right) // 왼쪽 모든 경로
            } else {
                let cur = stack.removeLast()
                result.append(cur.val)
                lastVisited = cur // 안쪽(밑쪽) 오른쪽 서브트리에서 올라오면서 체크용
            }
        }
        return result
    }
}