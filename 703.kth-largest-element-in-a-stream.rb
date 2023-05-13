#
# @lc app=leetcode id=703 lang=ruby
#
# [703] Kth Largest Element in a Stream
#

# @lc code=start
class KthLargest

=begin
    :type k: Integer
    :type nums: Integer[]
=end
    def initialize(k, nums)
      @max_size = k
      @data = nums.sort.reverse[0...k]
    end

=begin
    :type val: Integer
    :rtype: Integer
=end
    def add(val)
      if (i = @data.bsearch_index {|x| x < val})
          @data.insert(i, val)
      else
          @data.push(val)
      end
      @data.pop if @data.length > @max_size
      @data.last
    end
end

# Your KthLargest object will be instantiated and called as such:
# obj = KthLargest.new(k, nums)
# param_1 = obj.add(val)
# @lc code=end

