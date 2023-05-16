#
# @lc app=leetcode id=744 lang=ruby
#
# [744] Find Smallest Letter Greater Than Target
#

# @lc code=start
# @param {Character[]} letters
# @param {Character} target
# @return {Character}
def next_greatest_letter(letters, target)
  letters.each { |letter| return letter if target < letter }

  return letters[0]
end
# @lc code=end

