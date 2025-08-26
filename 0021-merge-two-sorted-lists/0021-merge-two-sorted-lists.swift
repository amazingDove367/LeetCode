/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */

 // 질문 1: O(N)
 // 질문 2: head ? [0, nil]로 두고, 마지막에 [0, nil] 빼는 방법?

 class Solution {
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        let dummy = ListNode()
        var cur = dummy

        var l1 = list1
        var l2 = list2

        while let node1 = l1, let node2 = l2 {
            if node1.val <= node2.val {
                cur.next = node1
                l1 = node1.next
            } else {
                cur.next = node2
                l2 = node2.next
            }
            cur = cur.next!
        }
        
        cur.next = l1 ?? l2

        // cur은 마지막 노드 가리킴
        return dummy.next
    }
}