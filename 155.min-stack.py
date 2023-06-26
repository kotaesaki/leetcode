#
# @lc app=leetcode id=155 lang=python3
#
# [155] Min Stack
#

# @lc code=start
class MinStack:

    def __init__(self):
        self.list = []
        self.minList = []

    def push(self, val: int) -> None:
        self.list.append(val)
        val = min(val, self.minList[-1] if self.minList else val)
        self.minList.append(val)

    def pop(self) -> None:
        self.list.pop()
        self.minList.pop()

    def top(self) -> int:
        return self.list[-1]

    def getMin(self) -> int:
        return self.minList[-1]


# Your MinStack object will be instantiated and called as such:
# obj = MinStack()
# obj.push(val)
# obj.pop()
# param_3 = obj.top()
# param_4 = obj.getMin()
# @lc code=end

