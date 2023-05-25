#
# @lc app=leetcode id=836 lang=ruby
#
# [836] Rectangle Overlap
#

# @lc code=start
# @param {Integer[]} rec1
# @param {Integer[]} rec2
# @return {Boolean}
def is_rectangle_overlap(rec1, rec2)
  # Check if the rectangles do not overlap
  if rec1[2] <= rec2[0] || # left edge of rec1 is to the left of right edge of rec2
      rec1[0] >= rec2[2] || # right edge of rec1 is to the right of left edge of rec2
      rec1[3] <= rec2[1] || # bottom edge of rec1 is below top edge of rec2
      rec1[1] >= rec2[3]    # top edge of rec1 is above bottom edge of rec2
      return false
  end
  return true
end
# @lc code=end

# "[7,8,13,15]\n[10,8,12,20]"