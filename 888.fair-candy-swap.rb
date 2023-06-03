#
# @lc app=leetcode id=888 lang=ruby
#
# [888] Fair Candy Swap
#

# @lc code=start
# @param {Integer[]} alice_sizes
# @param {Integer[]} bob_sizes
# @return {Integer[]}
def fair_candy_swap(alice_sizes, bob_sizes)
  a_total = alice_sizes.sum
  average = (a_total + bob_sizes.sum) / 2
  hash_b = {}
  bob_sizes.each { |b| hash_b[b] = true }

  alice_sizes.each do |a|
    target = average - a_total + a
    next if target < 1

    return [a, target] if hash_b[target]
  end
end
# @lc code=end

