#
# @lc app=leetcode id=20 lang=ruby
#
# [20] Valid Parentheses
#

# @lc code=start
# @param {String} s
# @return {Boolean}
def is_valid(s)
  a = ['(', ')']
  b = ['{', '}']
  c = ['[', ']']
  before_chars = []
  s.chars.each do |char|
    return false if char == a[1] && before_chars[-1] != a[0]
    return false if char == b[1] && before_chars[-1] != b[0]
    return false if char == c[1] && before_chars[-1] != c[0]

    char == a[1] || char == b[1] || char == c[1] ? before_chars.pop : before_chars.push(char)
  end
  return false if before_chars.length > 0
  return true
end
# @lc code=end

