#
# @lc app=leetcode id=202 lang=ruby
#
# [202] Happy Number
#

# @lc code=start
# @param {Integer} n
# @return {Boolean}
def is_happy(n)
  return true if n == 1
  arr = n.to_s.chars.map(&:to_i)
  memo = []
  iter = ""
  until iter == 1 do
    iter = arr.map { |n| n ** 2 }.sum
    break if memo.include?(iter)
    memo << iter
    arr = iter.to_s.chars.map(&:to_i)
  end

  iter == 1 ? true : false
end
# @lc code=end

