#
# @lc app=leetcode id=674 lang=ruby
#
# [674] Longest Continuous Increasing Subsequence
#

# @lc code=start
# @param {Integer[]} nums
# @return {Integer}
def find_length_of_lcis(nums)
    # 初期化
  max_len = 1
  curr_len = 1
  
  # 配列をループ
  (1...nums.length).each do |i|
      # 現在の要素が前の要素よりも大きい場合
      if nums[i] > nums[i-1]
          # 現在の長さをインクリメント
          curr_len += 1
      else
          # 最大の長さを更新し、現在の長さをリセット
          max_len = [max_len, curr_len].max
          curr_len = 1
      end
  end
  
  # 最後に最大の長さを更新
  max_len = [max_len, curr_len].max
  
  # 結果を返す
  return max_len
end
# @lc code=end

