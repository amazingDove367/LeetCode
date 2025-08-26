/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */

// 투포인터 
class Solution {
    func hasCycle(_ head: ListNode?) -> Bool {
        var slow = head
        var fast = head

        while let currentFast = fast, // optional unwrapping
              let oneStepAhead = currentFast.next { // check if 'currentFast' is nil (.next.next 체크해야하니깐)
            slow = slow?.next // nil이면 no cycle
            fast = oneStepAhead.next // nil이면 no cycle

            // cycle이면, 언젠가 slow, fast는 만나게 돼있음
            if slow === fast {
                return true
            }
        }
        return false
    }
}