#
# @lc app=leetcode id=859 lang=ruby
#
# [859] Buddy Strings
#

# @lc code=start
# @param {String} s
# @param {String} goal
# @return {Boolean}
def buddy_strings(s, goal)
  return false if s.size != goal.size
  return false if s.size < 2
  h = {}
  ans = []
  duplicates = false
  s.chars.each_with_index do |v, i|
    duplicates = true if h[v]
    h[v] = true

    return false if ans.size > 2
    ans << i if v != goal[i]
  end
  return duplicates if ans.empty?
  return false if ans.size != 2
  i, j = ans
  return s[i] == goal[j] && s[j] == goal[i]
end
# @lc code=end

