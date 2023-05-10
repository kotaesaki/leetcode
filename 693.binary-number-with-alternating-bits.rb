#
# @lc app=leetcode id=693 lang=ruby
#
# [693] Binary Number with Alternating Bits
#

# @lc code=start
# @param {Integer} n
# @return {Boolean}
def has_alternating_bits(n)
  memo = 0
  n.to_s(2).each_char do |bit|
    return false if bit == memo 

    memo = bit
  end
  return true
end
# @lc code=end

