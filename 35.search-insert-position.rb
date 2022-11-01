#
# @lc app=leetcode id=35 lang=ruby
#
# [35] Search Insert Position
#

# @lc code=start
# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search_insert(nums, target)
  result = nums.bsearch { |num| num >= target }
  return nums.length if result.nil?
  nums.index(result)
end
# @lc code=end

