#
# @lc app=leetcode id=136 lang=ruby
#
# [136] Single Number
#

# @lc code=start
# @param {Integer[]} nums
# @return {Integer}
def single_number(nums)
  return nums[0] if nums.length == 1

  nums.sort!
  tmp = nums[0]

  nums.each_with_index do |num, i|
    next if i == 0

    break if tmp != num && tmp != ''
    
    next tmp = '' if tmp == num

    tmp = num
  end
  tmp
end
# @lc code=end

