#
# @lc app=leetcode id=14 lang=ruby
#
# [14] Longest Common Prefix
#

# @lc code=start
# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
  return "" if strs.length < 1

  result = ""
  num = 0
  strs[0].length.times do
    break if strs.map {|str| str.slice(num)}.uniq.length != 1
    result += strs[0].slice(num)
    num += 1
  end
  result
end
# @lc code=end

