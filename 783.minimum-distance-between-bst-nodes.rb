#
# @lc app=leetcode id=783 lang=ruby
#
# [783] Minimum Distance Between BST Nodes
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
# @return {Integer}
def min_diff_in_bst(root)
  hoge(root)

end

def hoge(root)
  return if root == nil

  hoge(root.left)

  if prev_value != nil
    min_distance = [min_distance, root.val - prev_value.val].min
  end
  prev_value = root.val

  hoge(root.right)
end
# @lc code=end


    # result = if root.left.val > root.val
    #   root.val.left - root.val
    # else
    #   root.val - root.val.left
    # end
    # return 0 if result == 0
  
    # result

    # return min_diff_in_bst(root.right) < min_diff_in_bst(root.left)
    #  ? min_diff_in_bst(root.right)
    #  : min_diff_in_bst(root.left)