#
# @lc app=leetcode id=922 lang=ruby
#
# [922] Sort Array By Parity II
#

# @lc code=start
# @param {Integer[]} nums
# @return {Integer[]}
def sort_array_by_parity_ii(nums)
  result = []
  even, odd = 0, 1
  nums.each do |n|
    if n.even?
      result[even] = n
      even += 2
    else
      result[odd] = n
      odd += 2
    end
  end
  result
end
# @lc code=end

