#
# @lc app=leetcode id=905 lang=ruby
#
# [905] Sort Array By Parity
#

# @lc code=start
# @param {Integer[]} nums
# @return {Integer[]}
def sort_array_by_parity(nums)
  even = []
  odd = []
  nums.each do |n|
    if n % 2 == 0
      even << n
    else
      odd << n
    end
  end
  even + odd
end
# @lc code=end

