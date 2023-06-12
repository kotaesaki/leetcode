#
# @lc app=leetcode id=5 lang=ruby
#
# [5] Longest Palindromic Substring
#

# @lc code=start
# @param {String} s
# @return {String}
def longest_palindrome(s)
  return s if palindrome?(s)

  s.size.downto(1) do |x|
    (0..s.size-x).each do |q|
      str = s[q..q+x-1]
      return str if palindrome?(s)
    end
  end
end

def palindrome?(s)
  s.reverse == s
end
# @lc code=end

