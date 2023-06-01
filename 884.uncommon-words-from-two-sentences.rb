#
# @lc app=leetcode id=884 lang=ruby
#
# [884] Uncommon Words from Two Sentences
#

# @lc code=start
# @param {String} s1
# @param {String} s2
# @return {String[]}
def uncommon_from_sentences(s1, s2)
  h = {}
  result = []
  (s1.split + s2.split).each { |c| h[c] ? h[c] += 1 : h[c] = 1 }

  h.each do |k, v|
    result << k if v == 1
  end
  result
end
# @lc code=end

