#
# @lc app=leetcode id=36 lang=python
#
# [36] Valid Sudoku
#

# @lc code=start
class Solution(object):
    def isValidSudoku(self, board):
        """
        :type board: List[List[str]]
        :rtype: bool
        """
        cols = defaultdict(set)
        rows = defaultdict(set)
        squares = defaultdict(set)

        for r in range(9):
          for c in range(9):
            if board[r][c] == '.':
              continue
            if (board[r][c] in rows[r] or board[r][c] in cols[c] or board[r][c] in squares[(r // 3, c // 3)]):
              return False
            cols[c].add(board[r][c])
            rows[r].add(board[r][c])
            squares[r // 3, c // 3].add(board[r][c])
        return True

# @lc code=end

