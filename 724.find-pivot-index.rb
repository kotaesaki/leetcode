#
# @lc app=leetcode id=724 lang=ruby
#
# [724] Find Pivot Index
#

# @lc code=start
# @param {Integer[]} nums
# @return {Integer}
def pivot_index(nums)
  left, right = 0, nums[1..].sum
  return 0 if left == right 

  nums.each_with_index do |num, index|
    next if index == 0

    left += nums[index-1]
    right -= nums[index]
    return index if left == right
  end
  return -1
end
# @lc code=end

