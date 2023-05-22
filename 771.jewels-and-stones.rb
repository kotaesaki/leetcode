#
# @lc app=leetcode id=771 lang=ruby
#
# [771] Jewels and Stones
#

# @lc code=start
# @param {String} jewels
# @param {String} stones
# @return {Integer}
def num_jewels_in_stones(jewels, stones)
  result = 0
  stones.each_char do |stone|
    result += 1 if jewels.include?(stone)
  end
  result
end
# @lc code=end

