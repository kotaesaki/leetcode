#
# @lc app=leetcode id=896 lang=ruby
#
# [896] Monotonic Array
#

# @lc code=start
# @param {Integer[]} nums
# @return {Boolean}
def is_monotonic(nums)
  # nums == nums.sort || nums == nums.sort.reverse
  increase?(nums) || decrease?(nums)
end

def increase?(nums)
  nums.each_with_index { |n, i| return false if i != 0 && n < nums[i-1] }
  true
end

def decrease?(nums)
  nums.each_with_index { |n, i| return false if i != 0 && n > nums[i-1] }
  true
end
# @lc code=end

