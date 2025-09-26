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
class Solution {
    func swapPairs(_ head: ListNode?) -> ListNode? {
        return helper(head)
    }

    func helper(_ head: ListNode?) -> ListNode? {
        guard let first = head, let second = first.next else { return head }

        var third = second.next
        second.next = first 
        first.next = third

        first.next = helper(third)

        return second
    }
}