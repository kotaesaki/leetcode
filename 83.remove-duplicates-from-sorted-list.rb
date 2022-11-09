#
# @lc app=leetcode id=83 lang=ruby
#
# [83] Remove Duplicates from Sorted List
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
def delete_duplicates(head)
  return head if head.next.nil?

  result = ListNode.new
  while head.next.present?
    next if head.val == result.val
    result.val = head.val
    next if result.val == head.next.val 
    result.next = head.next
  end
end
# @lc code=end

