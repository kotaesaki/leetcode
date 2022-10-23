#
# @lc app=leetcode id=13 lang=ruby
#
# [13] Roman to Integer
#

# @lc code=start
# @param {String} s
# @return {Integer}
def roman_to_int(s)
  result = []
  s.chars.each do |str|
    case str
    when "M" then
      result.last == 100 ? result[-1] = 900 : result.push(1000)
    when "D" then
      result.last == 100 ? result[-1] = 400 : result.push(500)
    when "C" then
      result.last == 10 ? result[-1] = 90 : result.push(100)
    when "L" then
      result.last == 10 ?  result[-1] = 40 : result.push(50)
    when "X" then
      result.last == 1 ? result[-1] = 9 : result.push(10)
    when "V" then
      result.last == 1 ? result[-1] = 4 : result.push(5)
    when "I" then
      result.push(1)
    end
  end
  result.sum
end
# @lc code=end

