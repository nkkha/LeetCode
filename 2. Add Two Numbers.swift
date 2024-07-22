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
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        let dummyHead = ListNode(0)
        var tail = dummyHead, currentL1 = l1, currentL2 = l2
        var carry = 0

        while (currentL1 != nil || currentL2 != nil) {
            var value = (currentL1?.val ?? 0) + (currentL2?.val ?? 0) + carry
            carry = value / 10

            tail.next = ListNode(value % 10)
            tail = tail.next!

            currentL1 = currentL1?.next ?? nil
            currentL2 = currentL2?.next ?? nil
        }

        if carry > 0 {
            tail.next = ListNode(carry)
        }

        let l3 = dummyHead.next
        dummyHead.next = nil
        return l3
    }
}
