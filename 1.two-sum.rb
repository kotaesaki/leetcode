#
# @lc app=leetcode id=1 lang=ruby
#
# [1] Two Sum
#

# @lc code=start
# @param {Integer[]} nums = [3,3]
# @param {Integer} target = 6
# @return {Integer[]}
def two_sum(nums, target)
    arr = nums.map.with_index do |num, i|
        excepted_array = nums.select.with_index{|_, i2| i2 != i}
        excepted_array.map.with_index do |num2, i2|
            [num, num2] if (num + num2) == target
        end
    end.flatten!.compact.uniq

    if arr.length == 1
        nums.map.with_index {|n, i| i if n == arr[0]}.compact
    else
        [nums.index(arr[0]), nums.index(arr[1])]
    end
end
# @lc code=end

