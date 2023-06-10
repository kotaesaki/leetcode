#
# @lc app=leetcode id=925 lang=ruby
#
# [925] Long Pressed Name
#

# @lc code=start
# @param {String} name
# @param {String} typed
# @return {Boolean}
def is_long_pressed_name(name, typed)
  return false if name.length > typed.length

  index = 0
  prev, curernt = nil, name[index]
  typed.chars.each do |c|
    if curernt != c
      return false if prev == nil || prev != c 
      next
    end
    prev = name[index]
    index += 1
    curernt = name[index]
  end
  name[index..].empty?
end
# @lc code=end

