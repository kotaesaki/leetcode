#
# @lc app=leetcode id=217 lang=ruby
#
# [217] Contains Duplicate
#

# @lc code=start
# @param {Integer[]} nums
# @return {Boolean}
def contains_duplicate(nums)
  nums.length != nums.uniq.length
end
# @lc code=end

