#
# @lc app=leetcode id=821 lang=ruby
#
# [821] Shortest Distance to a Character
#

# @lc code=start
# @param {String} s
# @param {Character} c
# @return {Integer[]}
def shortest_to_char(s, c)
  arr = s.chars
  targets = arr.map.each_with_index { |char, index| index if char == c }
  targets.compact!
  arr.map.each_with_index do |char, i| 
    diff = []
    targets.each { |target| diff << (i < target ? target - i : i - target) }
    diff.min
  end
end
# @lc code=end

