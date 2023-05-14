#
# @lc app=leetcode id=706 lang=ruby
#
# [706] Design HashMap
#

# @lc code=start
class MyHashMap
    def initialize()
      @hash_map = {}
    end


=begin
    :type key: Integer
    :type value: Integer
    :rtype: Void
=end
    def put(key, value)
      @hash_map[key] = value
    end


=begin
    :type key: Integer
    :rtype: Integer
=end
    def get(key)
      @hash_map[key] || -1
    end


=begin
    :type key: Integer
    :rtype: Void
=end
    def remove(key)
      @hash_map.delete(key)
    end
end

# Your MyHashMap object will be instantiated and called as such:
# obj = MyHashMap.new()
# obj.put(key, value)
# param_2 = obj.get(key)
# obj.remove(key)
# @lc code=end

