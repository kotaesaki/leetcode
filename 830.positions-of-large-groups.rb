#
# @lc app=leetcode id=830 lang=ruby
#
# [830] Positions of Large Groups
#

# @lc code=start
# @param {String} s
# @return {Integer[][]}
def large_group_positions(s)
  arr = []
  count = {}
  s.chars.each_with_index do |char, index|
    if !count[char]
      if count.values[0] && count.values[0] >= 3
        arr << [index - count.values[0], index - 1]
      end
      count = {} 
    end
    count[char] ? count[char] += 1 : count[char] = 1
  end
  if count.values[0] >= 3
    arr << [s.length - count.values[0], s.length - 1]
  end
  arr 
end
# @lc code=end

