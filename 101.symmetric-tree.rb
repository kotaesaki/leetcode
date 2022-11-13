#
# @lc app=leetcode id=101 lang=ruby
#
# [101] Symmetric Tree
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
# @param {TreeNode} root
# @return {Boolean}
def is_symmetric(root)
  left_tree(root.left) == right_tree(root.right)
end

def left_tree(root)
  return [nil] if root.nil?

  [root.val] + left_tree(root.left) + left_tree(root.right)
end

def right_tree(root)
  return [nil] if root.nil?

  [root.val] + right_tree(root.right) + right_tree(root.left)
end

# @lc code=end

