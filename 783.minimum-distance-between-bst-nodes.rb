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
  arr = []
  add_arr(root, arr)
  result = 100000000
  arr.sort!.reverse![1..].each_with_index do |num, i|
    # puts "result: #{result}"
    # puts "arr[i-1] - num: #{arr[i] - num}"
    result = arr[i] - num if (arr[i] - num) < result
    return 0 if result <= 0
  end
  result
end

def add_arr(root, arr)
  while root
    arr << root.val
    add_arr(root.left, arr)
    add_arr(root.right, arr)
    root = nil
  end
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