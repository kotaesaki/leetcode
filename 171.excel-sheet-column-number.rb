#
# @lc app=leetcode id=171 lang=ruby
#
# [171] Excel Sheet Column Number
#

# @lc code=start
# @param {String} column_title
# @return {Integer}
def title_to_number(column_title)
  result = []
  column_title.chars.reverse.each_with_index do |char, index|
    arf_to_num = ('A'..'Z').to_a.find_index(char) + 1
    arf_to_num = arf_to_num * (26 ** index) if index > 0 
    result << arf_to_num 
  end
  result.sum
end
# @lc code=end

