#
# @lc app=leetcode id=9 lang=ruby
#
# [9] Palindrome Number
#

# @lc code=start
# @param {Integer} x
# @return {Boolean}
def is_palindrome(x)
  return false if x.negative?
  str = x.to_s
  return true if str == str.reverse
  false
end
# @lc code=end

