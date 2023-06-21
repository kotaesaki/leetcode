#
# @lc app=leetcode id=128 lang=python3
#
# [128] Longest Consecutive Sequence
#

# @lc code=start
class Solution:
    def longestConsecutive(self, nums: List[int]) -> int:
      numSet =  set(nums)
      longest = 0

      for n in nums:
        if n - 1 not in numSet:
          length = 0
          while (n + length) in numSet:
            length += 1
          longest = max(length, longest)
      return

# @lc code=end

