#
# @lc app=leetcode id=21 lang=ruby
#
# [21] Merge Two Sorted Lists
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
# @param {ListNode} list1
# @param {ListNode} list2
# @return {ListNode}
def merge_two_lists(list1, list2)
  result = ListNode.new

  current = list2
  target = list1

  while result.nil?
    if current.val <= target.val
      result.val = target.val
      result.next = current
      current = current.next
    else
      result.val = current.val
      result.next = target
      target = target.next
    end
    result = result.next
  end
  result
end
# @lc code=end

