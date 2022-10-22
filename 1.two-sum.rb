#
# @lc app=leetcode id=1 lang=ruby
#
# [1] Two Sum
#

# @lc code=start
# @param {Integer[]} nums = [2,7,11,15]
# @param {Integer} target = 9
# @return {Integer[]}
def two_sum(nums, target)
    return if !nums[0] || !target

    memo = {}
    nums.each_with_index do |num, i|
        reminder = target - num 
        return [memo[reminder], i] if memo[reminder]
        memo[num] = i
    end
end
# @lc code=end

