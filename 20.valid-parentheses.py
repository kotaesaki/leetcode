#
# @lc app=leetcode id=20 lang=python3
#
# [20] Valid Parentheses
#

# @lc code=start
class Solution:
    def isValid(self, s: str) -> bool:
      closes = []
      for c in list(s):
        if c == '(':
          closes.append(')')
        elif c == '{':
          closes.append('}')
        elif c == '[':
          closes.append("]")
        elif c in [')', '}', ']']:
          if len(closes) > 0 and closes[-1] == c:
            closes.pop()
          else:
            return False
      return len(closes) == 0
          
# @lc code=end

