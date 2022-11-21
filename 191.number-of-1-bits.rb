#
# @lc app=leetcode id=191 lang=ruby
#
# [191] Number of 1 Bits
#

# @lc code=start
# @param {Integer} n, a positive integer
# @return {Integer}
def hamming_weight(n)
  hash = n.to_s(2).chars.group_by { |char| char }
  return 0 unless hash["1"]
  hash["1"].count
end
# @lc code=end

