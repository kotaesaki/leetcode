#
# @lc app=leetcode id=700 lang=ruby
#
# [700] Search in a Binary Search Tree
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
# @param {Integer} val
# @return {TreeNode}
def search_bst(root, val)
  return nil if root.nil?

  while root.val != val do
    return search_bst(root.left, val) || search_bst(root.right, val)
  end
  return root
end
# @lc code=end

