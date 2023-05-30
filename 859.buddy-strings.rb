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
  return false if s.length != goal.length
  
  # Find the indices of the characters that are different in s and goal
  diff_indices = []
  s.chars.each_with_index do |char, i|
    diff_indices << i if char != goal[i]
  end
  
  # If there are more than two different characters, we can't swap them to get the goal string
  return false if diff_indices.length != 2
  
  # Check if swapping the characters at the two different indices in s results in the goal string
  s[diff_indices[0]], s[diff_indices[1]] = s[diff_indices[1]], s[diff_indices[0]]
  s == goal
end
# @lc code=end

