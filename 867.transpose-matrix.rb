#
# @lc app=leetcode id=867 lang=ruby
#
# [867] Transpose Matrix
#

# @lc code=start
# @param {Integer[][]} matrix
# @return {Integer[][]}
def transpose(matrix)
  result = []
  matrix[0].length.times { result << [] }
  matrix.each do |row|
    row.each_with_index {|m, j| result[j] << m}
  end
  result
end
# @lc code=end

