#
# @lc app=leetcode id=347 lang=python3
#
# [347] Top K Frequent Elements
#

# @lc code=start
class Solution:
    def topKFrequent(self, nums: List[int], k: int) -> List[int]:
      result = defaultdict(int) # initialize dict
      # { 1: 3, 2: 2... }
      for n in nums:
        result[n] += 1
      sortedDict = sorted(result.items(), key=lambda result: result[1], reverse=True)
      return [t[0] for t in sortedDict[:k]]
        
# @lc code=end

