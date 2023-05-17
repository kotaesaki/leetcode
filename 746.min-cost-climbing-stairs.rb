#
# @lc app=leetcode id=746 lang=ruby
#
# [746] Min Cost Climbing Stairs
#

# @lc code=start
# @param {Integer[]} cost
# @return {Integer}
def min_cost_climbing_stairs(cost)
  dp = []
  cost.each_with_index do |c, index|
    next dp << c if [0, 1].include?(index)

    if dp[index-1] > dp[index-2]
      dp << (c + dp[index-2])
    else
      dp << (c + dp[index-1])
    end
  end

  dp[-1] < dp[-2] ? dp[-1] : dp[-2]
end
# @lc code=end

