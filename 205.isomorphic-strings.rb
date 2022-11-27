#
# @lc app=leetcode id=205 lang=ruby
#
# [205] Isomorphic Strings
#

# @lc code=start
# @param {String} s
# @param {String} t
# @return {Boolean}
def is_isomorphic(s, t)
  memo = {}
  s_array = s.chars
  t_array = t.chars
  s_array.each_with_index do |char, index|
    return false if memo[char] && (memo[char] != t_array[index])
    return false if !memo[char] && memo.key(t_array[index])

    memo[char] = t_array[index]
  end
  p memo
  true
end
# @lc code=end

