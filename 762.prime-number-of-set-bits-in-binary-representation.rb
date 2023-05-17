#
# @lc app=leetcode id=762 lang=ruby
#
# [762] Prime Number of Set Bits in Binary Representation
#

# @lc code=start
# @param {Integer} left
# @param {Integer} right
# @return {Integer}
def count_prime_set_bits(left, right)
  require 'prime'
  result = 0
  for n in left..right
    result += 1 if n.to_s(2).count("1").to_i.prime?
  end

  result
end
# @lc code=end

