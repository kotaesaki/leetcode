#
# @lc app=leetcode id=832 lang=ruby
#
# [832] Flipping an Image
#

# @lc code=start
# @param {Integer[][]} image
# @return {Integer[][]}
def flip_and_invert_image(image)
  half = image.length / 2
  image.each do |ima|
    half.times do |num|
      ima[num], ima[0-num-1] = reverse(ima[0-num-1]), reverse(ima[num])
    end
    next if image.length.even?

    ima[half] = reverse(ima[half])
  end
  image
end

def reverse(num)
  num == 1 ? 0 : 1
end
# @lc code=end

