#
# @lc app=leetcode id=704 lang=ruby
#
# [704] Binary Search
#

# @lc code=start
# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search(nums, target)
  index = nums.sort.bsearch_index {|num| num >= target}
  index && nums[index] == target ? index : -1
end
# @lc code=end

