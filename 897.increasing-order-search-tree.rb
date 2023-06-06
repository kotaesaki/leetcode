#
# @lc app=leetcode id=897 lang=ruby
#
# [897] Increasing Order Search Tree
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
# @return {TreeNode}
def increasing_bst(root, tail = nil)
  return tail unless root
  result = increasing_bst(root.left, root)
  root.left = nil
  root.right = increasing_bst(root.right, tail)
  
  result 
end
# @lc code=end

