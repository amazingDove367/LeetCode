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
    func reverseList(_ head: ListNode?) -> ListNode? {
        guard let first = head, let second = first.next else { return head }
        
        let reverse = reverseList(second) // 마지막으로 들어간 second node 자체가 리턴되는 것임
        second.next = first // 그래서 그 노드 자체 접근하는 것임 
        first.next = nil // 가능한 이유: 스택에 reverseList(2), reverseList(1) 쌓여있으니 

        return reverse // 가장 마지막으로 들어간게 뿌리가 되어, 반대로 쌓임.
    }
}