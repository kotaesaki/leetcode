#
# @lc app=leetcode id=917 lang=ruby
#
# [917] Reverse Only Letters
#

# @lc code=start
# @param {String} s
# @return {String}
def reverse_only_letters(s)
  lowers = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r","s", "t", "u","v", "w", "x", "y", "z"]
  uppers = lowers.map(&:upcase)
  arr = lowers + uppers
  result = s.chars
  left, right = 0, result.length - 1
  while left < right
    while left < right && !arr.include?(result[left])
      left += 1
    end
    while left < right && !arr.include?(result[right])
      right -= 1
    end
    result[left], result[right] = result[right], result[left]
    left += 1
    right -= 1
  end
  result.join
end
# @lc code=end

