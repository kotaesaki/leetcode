#
# @lc app=leetcode id=733 lang=ruby
#
# [733] Flood Fill
#

# @lc code=start
# @param {Integer[][]} image
# @param {Integer} sr
# @param {Integer} sc
# @param {Integer} color
# @return {Integer[][]}
def flood_fill(image, sr, sc, new_color)
  rows = image.length
  cols = image[0].length
  color = image[sr][sc]
  return image if color == new_color
  
  fill(image, sr, sc, rows, cols, color, new_color)
  return image
end

def fill(image, r, c, rows, cols, color, new_color)
  if r < 0 || r >= rows || c < 0 || c >= cols || image[r][c] != color
      return
  end
  
  image[r][c] = new_color
  fill(image, r+1, c, rows, cols, color, new_color)
  fill(image, r-1, c, rows, cols, color, new_color)
  fill(image, r, c+1, rows, cols, color, new_color)
  fill(image, r, c-1, rows, cols, color, new_color)
end
# @lc code=end

