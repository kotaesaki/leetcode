#
# @lc app=leetcode id=150 lang=python3
#
# [150] Evaluate Reverse Polish Notation
#

# @lc code=start
class Solution:
    def evalRPN(self, tokens: List[str]) -> int:
      stack = []
      for token in tokens:
        if token == '+':
          newToken = int(stack[-2]) + int(stack[-1])
          self.pushToken(newToken, stack)
        elif token == '-':
          newToken = int(stack[-2]) - int(stack[-1])
          self.pushToken(newToken, stack)
        elif token == '*':
          newToken = int(stack[-2]) * int(stack[-1])
          self.pushToken(newToken, stack)
        elif token == '/':
          newToken = int(stack[-2]) / int(stack[-1])
          if type(newToken) is float:
            if newToken > 0:
              newToken = math.floor(newToken)
            else:
              newToken = math.ceil(newToken)
          self.pushToken(newToken, stack)
        else:
          stack.append(int(token))

      return stack[0]

    def pushToken(self, token, stack):
      stack.pop()
      stack.pop()
      stack.append(token)
        
# @lc code=end

