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
  result1 = []
  result2 = []

  if root1.left == nil && root1.right == nil
    result1 << root1.val
  end
  if root1.left != nil
    similar(root1.left, result1)
  end

  if root1.right != nil
    similar(root1.right, result1)
  end

  if root2.left == nil && root2.right == nil
    result2 << root2.val
  end
  if root2.left != nil
    similar(root2.left, result2)
  end

  if root2.right != nil
    similar(root2.right, result2)
  end
  puts result1.inspect
  puts result2.inspect
  result1 == result2
end

def similar(root, result)
  if root.left == nil && root.right == nil
    result << root.val
    return
  end
  if root.left != nil
    similar(root.left, result)
  end
  if root.right != nil
    similar(root.right, result)
  end
end
# @lc code=end

