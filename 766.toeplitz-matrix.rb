#
# @lc app=leetcode id=766 lang=ruby
#
# [766] Toeplitz Matrix
#

# @lc code=start
# @param {Integer[][]} matrix
# @return {Boolean}
def is_toeplitz_matrix(matrix)
  matrix.length.times do |i|
    next if i == 0

    matrix[i].length.times do |j|
      next if j == 0
      return false if matrix[i][j] != matrix[i-1][j-1]
    end
  end
  return true
end
# @lc code=end

