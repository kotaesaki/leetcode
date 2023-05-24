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
  # puts "[rec2[0]..rec2[2]]: #{rec2[0]..rec2[2]}"

  # (rec2[0]..rec2[2]).each do |x|
  #   puts "x: #{x}"
  #   puts "rec1[0]+1..rec1[2]-1: #{rec1[0]+1..rec1[2]-1}"
  #   puts (rec1[0]+1..rec1[2]-1).include?(x)
  # end
  (rec2[0]..rec2[2]).find { |x| (rec1[0]+1..rec1[2]-1).include?(x) } == 1 && (rec2[1]..rec2[3]).find { |y| (rec1[1]+1..rec1[3]-1).include?(y) } == 1
end
# @lc code=end

