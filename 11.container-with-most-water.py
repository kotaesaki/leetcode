#
# @lc app=leetcode id=11 lang=python3
#
# [11] Container With Most Water
#

# @lc code=start
class Solution:
    def maxArea(self, height: List[int]) -> int:
      left, right = 0, len(height) - 1
      res = 0

      while left < right:
        w = right - left
        h = height[right] if height[left] > height[right] else height[left]
      
        if res < (w * h) : res = w * h 
        if height[left] > height[right]:
          right -= 1
        else:
          left += 1
      return res
# @lc code=end

