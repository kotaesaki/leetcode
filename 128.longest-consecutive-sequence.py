#
# @lc app=leetcode id=128 lang=python3
#
# [128] Longest Consecutive Sequence
#

# @lc code=start
class Solution:
    def longestConsecutive(self, nums: List[int]) -> int:
      res = 0
      current = []
      for n in sorted(set(nums)):
        if (len(current) != 0 
            and n != current[-1] + 1 
            and res < len(current)):
          print(n)
          res = len(current)
          current = []
        current.append(n)
      if res < len(current):
        res = len(current)
      return res
# @lc code=end

