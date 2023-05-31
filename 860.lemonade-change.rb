#
# @lc app=leetcode id=860 lang=ruby
#
# [860] Lemonade Change
#

# @lc code=start
# @param {Integer[]} bills
# @return {Boolean}
def lemonade_change(bills)
  h = {5 => 0, 10 => 0}
  bills.each do |bill|
    case bill
    when 5
      h[5] += 1
    when 10
      return false if h[5] <= 0
      h[5] -= 1
      h[10] += 1
    when 20
      if h[10] >= 1 && h[5] >= 1 
        h[5] -= 1
        h[10] -= 1
      elsif h[5] >= 3
        h[5] -= 3
      else
        return false
      end
    else
      StandardError
    end
  end
  true
end
# @lc code=end

