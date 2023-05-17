#
# @lc app=leetcode id=747 lang=ruby
#
# [747] Largest Number At Least Twice of Others
#

# @lc code=start
# @param {Integer[]} nums
# @return {Integer}
def dominant_index(nums)
  max = nums.max
  res = 0
  nums.each_with_index do |num, i|
    next res = i if num == max

    return -1 if num * 2 > max
  end
  return res
end
# @lc code=end

