#
# @lc app=leetcode id=680 lang=ruby
#
# [680] Valid Palindrome II
#

# @lc code=start
# @param {String} s
# @return {Boolean}
def valid_palindrome(s)
  left = 0
  right = s.length - 1

  while left < right 
    if s[left] != s[right]
      return is_palindrome(s, left+1, right) || is_palindrome(s, left, right-1)
    end

    left += 1
    right -= 1
  end

  return true
end

def is_palindrome(s, left, right)
  while left < right
    if s[left] != s[right]
      return false
    end

    left += 1
    right -= 1
  end
  return true
end
# @lc code=end

