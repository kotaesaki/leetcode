#
# @lc app=leetcode id=100 lang=ruby
#
# [100] Same Tree
#

# @lc code=start
# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} p
# @param {TreeNode} q
# @return {Boolean}
def is_same_tree(p, q)
  a = get_tree(p)
  b = get_tree(q)
  p "a: #{a}"
  p "b: #{b}"
  a == b
end

def get_tree(tree)
  return [nil] if tree.nil?

  [tree.val] + get_tree(tree.left) + get_tree(tree.right)
end
# @lc code=end

