#
# @lc app=leetcode id=696 lang=ruby
#
# [696] Count Binary Substrings
#

# @lc code=start
# @param {String} s
# @return {Integer}
def count_binary_substrings(s)
  count = 0
  s.each_char.each_with_index do |bit, index|
    next if s.length - 1 == index
    right_index = index + 1
    memo = 1

    puts s[index..right_index]
    puts s[index..right_index].reverse
    puts s[index..right_index] 
    # for s.length - 1 < right_index 
    #   if s[index..right_index] & s[index..right_index].reverse == 0
        
    #   end
    #   count += 1
    # end
  end
end
# @lc code=end

