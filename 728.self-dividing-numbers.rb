#
# @lc app=leetcode id=728 lang=ruby
#
# [728] Self Dividing Numbers
#

# @lc code=start
# @param {Integer} left
# @param {Integer} right
# @return {Integer[]}
def self_dividing_numbers(left, right)
  result = (left..right).to_a
  for num in left..right
    next if num < 10
    next result.delete(num)  if num % 10 == 0
    
    divs = num.to_s.chars
    divs.each do |div|
      break result.delete(num) if div == "0" || num % div.to_i != 0 
    end
  end
  result
end
# @lc code=end

