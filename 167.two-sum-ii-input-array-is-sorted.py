#
# @lc app=leetcode id=167 lang=python3
#
# [167] Two Sum II - Input Array Is Sorted
#

# @lc code=start
class Solution:
    def twoSum(self, numbers: List[int], target: int) -> List[int]:
        memo = defaultdict(int)
        for i, n in enumerate(numbers):
          diff = target - n
          if memo[diff] != 0:
            return [memo[diff], i + 1]
          memo[n] = i + 1
# @lc code=end

