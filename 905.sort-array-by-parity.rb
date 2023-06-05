#
# @lc app=leetcode id=905 lang=ruby
#
# [905] Sort Array By Parity
#

# @lc code=start
# @param {Integer[]} nums
# @return {Integer[]}
def sort_array_by_parity(nums)
  nums.select(&:even?) + nums.select(&:odd?)
end
# @lc code=end

