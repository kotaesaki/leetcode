#
# @lc app=leetcode id=872 lang=ruby
#
# [872] Leaf-Similar Trees
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
# @param {TreeNode} root1
# @param {TreeNode} root2
# @return {Boolean}
def leaf_similar(root1, root2)
  similar(root1) == similar(root2)
end

def similar(root)
  if root.left == nil && root.right == nil
    [root.val]
  else
    result = []
    result += similar(root.left) if root.left
    result += similar(root.right) if root.right
    result
  end
end
# @lc code=end

