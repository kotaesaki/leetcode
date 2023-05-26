#
# @lc app=leetcode id=844 lang=ruby
#
# [844] Backspace String Compare
#

# @lc code=start
# @param {String} s
# @param {String} t
# @return {Boolean}
def backspace_compare(s, t)
  arr1 = []
  arr2 = []

  for n in s.chars
    next arr1 << n if n != '#'

    arr1.pop
  end

  for n in t.chars
    next arr2 << n if n != '#'

    arr2.pop
  end
  arr1 == arr2
end
# @lc code=end

