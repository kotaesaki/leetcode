#
# @lc app=leetcode id=796 lang=ruby
#
# [796] Rotate String
#

# @lc code=start
# @param {String} s
# @param {String} goal
# @return {Boolean}
def rotate_string(s, goal)
  return false if s.length != goal.length 

  targets = goal.chars.map.each_with_index { |g, i| i if g == s[0] }.compact!
  targets.each { |index| return true if s == (goal[index..] + goal[...index]) }
  false
end
# @lc code=end

