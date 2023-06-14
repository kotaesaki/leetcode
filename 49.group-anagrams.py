#
# @lc app=leetcode id=49 lang=python3
#
# [49] Group Anagrams
#

# @lc code=start
class Solution:
    def groupAnagrams(self, strs: List[str]) -> List[List[str]]:
      result = {}
      for str in strs:
        s = ''.join(sorted(str))
        if s in result.keys():
          result[s].append(str)
        else:
          result[s] = [str]
      return result.values()
        
# @lc code=end

