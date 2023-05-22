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
  stones.chars.count { |stone| jewels.include?(stone) }
end
# @lc code=end

