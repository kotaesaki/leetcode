#
# @lc app=leetcode id=225 lang=ruby
#
# [225] Implement Stack using Queues
#

# @lc code=start
class MyStack
    def initialize
      @stack = []
    end


=begin
    :type x: Integer
    :rtype: Void
=end
    def push(x)
      @stack << x
      return nil
    end


=begin
    :rtype: Integer
=end
    def pop()
      last = @stack.last
      @stack.pop
      last
    end


=begin
    :rtype: Integer
=end
    def top()
      @stack.last 
    end


=begin
    :rtype: Boolean
=end
    def empty()
      @stack.length == 0
    end


end

# Your MyStack object will be instantiated and called as such:
# obj = MyStack.new()
# obj.push(x)
# param_2 = obj.pop()
# param_3 = obj.top()
# param_4 = obj.empty()
# @lc code=end

