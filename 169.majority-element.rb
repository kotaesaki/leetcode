#
# @lc app=leetcode id=169 lang=ruby
#
# [169] Majority Element
#

# @lc code=start
# @param {Integer[]} nums
# @return {Integer}
def majority_element(nums)
  target_num_arr = nums.uniq
  calc = nums.length.even? ? (nums.length / 2) : nums.length / 2 + 1
  result = ""

  target_num_arr.each do |target_num|
    pre = nums.select { |num| target_num == num }

    if pre.length >= calc
      result = target_num 
      break 
    end
  end
  result
end
# @lc code=end

