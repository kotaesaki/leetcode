#
# @lc app=leetcode id=74 lang=python
#
# [74] Search a 2D Matrix
#

# @lc code=start
class Solution(object):
    def searchMatrix(self, matrix, target):
        """
        :type matrix: List[List[int]]
        :type target: int
        :rtype: bool
        """
        for row in matrix:
          if row[-1] >= target:
            left, right = 0, len(row) - 1
            while left <= right:
              mid = (left + right) // 2
              if row[mid] > target:
                right -= 1
              elif row[mid] < target:
                left += 1
              else:
                return True
        return False
        
# @lc code=end

