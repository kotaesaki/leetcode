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
  result = {}
  s.chars.each_with_index {|s, i| result[i] = s}
  key = 200
  result.each do |k, v|
    if arr.include?(v) 
      result[key] = v
      result.delete(k)
      key -= 1
    end
  end
  puts result.inspect
  # result.join!
end
# @lc code=end

