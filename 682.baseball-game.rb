#
# @lc app=leetcode id=682 lang=ruby
#
# [682] Baseball Game
#

# @lc code=start
# @param {String[]} operations
# @return {Integer}
def cal_points(operations)
  result = []
  operations.each do |ops|
    if ops.to_i != 0
      result << ops.to_i
      next
    end

    case ops
    when '+'
      result << result[-1] + result[-2]
    when 'C'
      result.delete_at(-1)
    when 'D'
      result << result[-1] * 2
    end
  end
  result.sum
end
# @lc code=end

