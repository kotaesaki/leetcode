#
# @lc app=leetcode id=876 lang=ruby
#
# [876] Middle of the Linked List
#

# @lc code=start
# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {ListNode}
def middle_node(head)
  h = {}
  deep = 0
  while head
    deep += 1
    h[deep] = head
    head = head.next
  end
  h[deep / 2 + 1]
end
# @lc code=end

